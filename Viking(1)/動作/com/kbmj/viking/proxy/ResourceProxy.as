package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.*;
    import org.puremvc.as3.patterns.proxy.*;

    public class ResourceProxy extends Proxy
    {
        public static const NAME:String = "ResourceProxy";

        public function ResourceProxy()
        {
            super(NAME);
            return;
        }// end function

        public function equipableResource(param1:JobMasterVO, param2:ResourceVO) : ResourceVO
        {
            var _loc_4:String = null;
            var _loc_5:BaseBelongingVO = null;
            var _loc_6:Object = null;
            var _loc_3:* = new ResourceVO();
            for each (_loc_4 in ["weapons", "armors", "accessories"])
            {
                
                for each (_loc_5 in param2[_loc_4])
                {
                    
                    if (param1.equipabilities[_loc_4])
                    {
                        _loc_6 = param1.equipabilities[_loc_4][_loc_5.masterId];
                        if (_loc_6)
                        {
                            _loc_3[_loc_4].push(_loc_5);
                        }
                    }
                }
            }
            for each (_loc_5 in param2["items"])
            {
                
                _loc_3["items"].push(_loc_5);
            }
            return _loc_3;
        }// end function

        public function recipeFactory(param1:Object) : RecipeVO
        {
            var _loc_2:* = new RecipeVO();
            _loc_2.recipeId = param1.id;
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMasterVO(MasterProxy.RECIPE_MASTER, param1.recipe_master_id) as RecipesMasterVO;
            _loc_2.masterVO = _loc_4;
            return _loc_2;
        }// end function

        public function itemFactory(param1:Object) : ItemVO
        {
            var _loc_2:* = new ItemVO();
            _loc_2.itemId = param1.id;
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMasterVO(MasterProxy.ITEM_MASTER, param1.item_master_id) as ItemsMasterVO;
            _loc_2.masterVO = _loc_4;
            _loc_2.endurance = param1.endurance;
            _loc_2.sellingPrice = param1.selling_price;
            return _loc_2;
        }// end function

        public function accessoryFactory(param1:Object) : AccessoryVO
        {
            var _loc_2:* = new AccessoryVO();
            _loc_2.accessoryId = param1.id;
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMasterVO(MasterProxy.ACCESSORY_MASTER, param1.accessory_master_id) as AccessoriesMasterVO;
            _loc_2.masterVO = _loc_4;
            _loc_2.sellingPrice = param1.selling_price;
            return _loc_2;
        }// end function

        public function armorFactory(param1:Object) : ArmorVO
        {
            var _loc_2:* = new ArmorVO();
            _loc_2.armorId = param1.id;
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMasterVO(MasterProxy.ARMOR_MASTER, param1.armor_master_id) as ArmorsMasterVO;
            _loc_2.masterVO = _loc_4;
            _loc_2.endurance = param1.endurance;
            _loc_2.sellingPrice = param1.selling_price;
            return _loc_2;
        }// end function

        public function resourceFactory(param1:Object) : ResourceVO
        {
            var masterProxy:MasterProxy;
            var rawResource:* = param1;
            var resourceVO:* = new ResourceVO();
            masterProxy = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            resourceVO.weapons = rawResource.weapons.map(function (param1:Object, param2:int, param3:Array) : WeaponVO
            {
                return weaponFactory(param1);
            }// end function
            );
            resourceVO.armors = rawResource.armors.map(function (param1:Object, param2:int, param3:Array) : ArmorVO
            {
                return armorFactory(param1);
            }// end function
            );
            resourceVO.items = rawResource.items.map(function (param1:Object, param2:int, param3:Array) : ItemVO
            {
                return itemFactory(param1);
            }// end function
            );
            resourceVO.accessories = rawResource.accessories.map(function (param1:Object, param2:int, param3:Array) : AccessoryVO
            {
                return accessoryFactory(param1);
            }// end function
            );
            if (rawResource.recipes)
            {
                resourceVO.recipes = rawResource.recipes.map(function (param1:Object, param2:int, param3:Array) : RecipeVO
            {
                return recipeFactory(param1);
            }// end function
            );
            }
            if (rawResource.materials)
            {
                resourceVO.materials = rawResource.materials.map(function (param1:Object, param2:int, param3:Array) : MaterialVO
            {
                return homeMaterialFactory(masterProxy, param1);
            }// end function
            );
            }
            if (rawResource.galleries)
            {
                resourceVO.galleries = rawResource.galleries.map(function (param1:Object, param2:int, param3:Array) : GalleryVO
            {
                return galleryFactory(param1);
            }// end function
            );
            }
            resourceVO.gold = rawResource.gold;
            resourceVO.food = rawResource.food;
            return resourceVO;
        }// end function

        public function weaponFactory(param1:Object) : WeaponVO
        {
            var _loc_2:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_3:* = new WeaponVO();
            _loc_3.weaponId = param1.id;
            var _loc_4:* = _loc_2.getMasterVO(MasterProxy.WEAPON_MASTER, param1.weapon_master_id) as WeaponsMasterVO;
            _loc_3.masterVO = _loc_4;
            _loc_3.damage = param1.damage;
            _loc_3.hit = param1.hit;
            _loc_3.endurance = param1.endurance;
            _loc_3.strength = param1.strength;
            _loc_3.tech = param1.tech;
            _loc_3.agility = param1.agility;
            _loc_3.defense = param1.defense;
            _loc_3.intelligence = param1.intelligence;
            _loc_3.luck = param1.luck;
            _loc_3.maxHp = param1.max_hp;
            var _loc_5:* = SkillProxy(facade.retrieveProxy(SkillProxy.NAME));
            _loc_3.skill = _loc_5.getSkillById(param1.skill_id) as SkillVO;
            _loc_3.displayEndurance = _loc_3.endurance;
            _loc_3.sellingPrice = param1.selling_price;
            return _loc_3;
        }// end function

        public function galleryFactory(param1:Object) : GalleryVO
        {
            var _loc_2:* = new GalleryVO();
            _loc_2.galleryId = param1.id;
            _loc_2.fireMaterialFlag = param1.fire_material;
            _loc_2.earthMaterialFlag = param1.earth_material;
            _loc_2.waterMaterialFlag = param1.water_material;
            _loc_2.goldMaterialFlag = param1.gold_material;
            _loc_2.plantMaterialFlag = param1.plant_material;
            var _loc_3:* = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            var _loc_4:* = _loc_3.getMasterVO(MasterProxy.GALLERY_MASTER, param1.gallery_prize_id) as GalleriesMasterVO;
            _loc_2.masterVO = _loc_4;
            return _loc_2;
        }// end function

        public static function homeMaterialFactory(param1:MasterProxy, param2:Object) : MaterialVO
        {
            var _loc_3:* = param1.getMasterVO("MaterialMaster", param2.material_master_id);
            var _loc_4:* = new MaterialVO();
            new MaterialVO().masterVO = _loc_3 as MaterialMasterVO;
            _loc_4.materialId = param2.id;
            _loc_4.quantity = param2.quantity;
            _loc_4.sellingPrice = param2.selling_price;
            return _loc_4;
        }// end function

        public static function materialFactory(param1:Object) : MaterialVO
        {
            var _loc_2:* = new MaterialVO();
            _loc_2.materialId = param1.material_master_id;
            _loc_2.quantity = param1.quantity;
            _loc_2.sellingPrice = param1.selling_price;
            return _loc_2;
        }// end function

    }
}

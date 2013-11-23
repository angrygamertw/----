package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitStatusWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitStatusWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("visibleBool", {propertyChange:true}, [param3[35], param3[33], param3[39], param3[37], param3[8], param3[10], param3[41], param3[12], param3[13], param3[17], param3[16], param3[21], param3[20], param3[25], param3[24], param3[28], param3[31]], param2);
            param4[1] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[1], param3[3], param3[4], param3[5], param3[6], param3[7], param3[11], param3[19], param3[23], param3[27], param3[30], param3[34], param3[32], param3[38], param3[36], param3[42], param3[43], param3[40], param3[46], param3[47], param3[44], param3[45], param3[51], param3[50], param3[49], param3[48], param3[55], param3[54], param3[53], param3[52], param3[58], param3[57], param3[56]], param2);
            param4[23] = new PropertyWatcher("realStrength", {propertyChange:true}, [param3[30]], null);
            param4[24] = new PropertyWatcher("realTech", {propertyChange:true}, [param3[32]], null);
            param4[18] = new PropertyWatcher("baseMagicalDefense", {propertyChange:true}, [param3[23]], null);
            param4[12] = new PropertyWatcher("hp", {propertyChange:true}, [param3[11]], null);
            param4[27] = new PropertyWatcher("realIntelligence", {propertyChange:true}, [param3[38]], null);
            param4[20] = new PropertyWatcher("moveRange", {propertyChange:true}, [param3[27]], null);
            param4[39] = new PropertyWatcher("armor", {propertyChange:true}, [param3[51], param3[50], param3[54], param3[53], param3[52]], null);
            param4[44] = new PropertyWatcher("endurance", {propertyChange:true}, [param3[54]], null);
            param4[43] = new PropertyWatcher("magicalDefense", {propertyChange:true}, [param3[53]], null);
            param4[42] = new PropertyWatcher("physicalDefense", {propertyChange:true}, [param3[52]], null);
            param4[40] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[50]], null);
            param4[41] = new PropertyWatcher("avoidance", {propertyChange:true}, [param3[51]], null);
            param4[3] = new PropertyWatcher("sacrificible", {propertyChange:true}, [param3[3]], null);
            param4[26] = new PropertyWatcher("realDefense", {propertyChange:true}, [param3[36]], null);
            param4[4] = new PropertyWatcher("bloodImageUrl", {propertyChange:true}, [param3[4]], null);
            param4[8] = new PropertyWatcher("level", {propertyChange:true}, [param3[7]], null);
            param4[45] = new PropertyWatcher("accessory", {propertyChange:true}, [param3[55], param3[56]], null);
            param4[47] = new PropertyWatcher("effectLabelAll", {propertyChange:true}, [param3[56]], null);
            param4[46] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[55]], null);
            param4[48] = new PropertyWatcher("item", {propertyChange:true}, [param3[58], param3[57]], null);
            param4[50] = new PropertyWatcher("effect", {propertyChange:true}, [param3[58]], null);
            param4[49] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[57]], null);
            param4[34] = new PropertyWatcher("subWeapon", {propertyChange:true}, [param3[49], param3[48], param3[46], param3[47]], null);
            param4[38] = new PropertyWatcher("endurance", {propertyChange:true}, [param3[49]], null);
            param4[37] = new PropertyWatcher("hit", {propertyChange:true}, [param3[48]], null);
            param4[36] = new PropertyWatcher("damage", {propertyChange:true}, [param3[47]], null);
            param4[35] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[46]], null);
            param4[29] = new PropertyWatcher("weapon", {propertyChange:true}, [param3[42], param3[43], param3[44], param3[45]], null);
            param4[33] = new PropertyWatcher("endurance", {propertyChange:true}, [param3[45]], null);
            param4[32] = new PropertyWatcher("hit", {propertyChange:true}, [param3[44]], null);
            param4[31] = new PropertyWatcher("damage", {propertyChange:true}, [param3[43]], null);
            param4[30] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[42]], null);
            param4[5] = new PropertyWatcher("name", {propertyChange:true}, [param3[5]], null);
            param4[28] = new PropertyWatcher("realLuck", {propertyChange:true}, [param3[40]], null);
            param4[25] = new PropertyWatcher("realAgility", {propertyChange:true}, [param3[34]], null);
            param4[6] = new PropertyWatcher("jobMasterVO", {propertyChange:true}, [param3[6]], null);
            param4[7] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[6]], null);
            param4[16] = new PropertyWatcher("baseDefense", {propertyChange:true}, [param3[19]], null);
            param4[17] = new PropertyWatcher("_magicDefIcon", {propertyChange:true}, [param3[22]], param2);
            param4[15] = new PropertyWatcher("_attackDefIcon", {propertyChange:true}, [param3[18]], param2);
            param4[14] = new PropertyWatcher("baseDamage", {propertyChange:true}, [param3[15]], param2);
            param4[13] = new PropertyWatcher("_weaponIcon", {propertyChange:true}, [param3[14]], param2);
            param4[21] = new PropertyWatcher("_skills", {propertyChange:true}, [param3[29]], param2);
            param4[19] = new PropertyWatcher("_moveIcon", {propertyChange:true}, [param3[26]], param2);
            param4[0] = new PropertyWatcher("bgImage", {propertyChange:true}, [param3[0]], param2);
            param4[10] = new PropertyWatcher("_unitExpLabel", {propertyChange:true}, [param3[9]], param2);
            param4[2] = new PropertyWatcher("sacrificeIconImage", {propertyChange:true}, [param3[2]], param2);
            param4[9].updateParent(param1);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[23]);
            param4[1].addChild(param4[24]);
            param4[1].addChild(param4[18]);
            param4[1].addChild(param4[12]);
            param4[1].addChild(param4[27]);
            param4[1].addChild(param4[20]);
            param4[1].addChild(param4[39]);
            param4[39].addChild(param4[44]);
            param4[39].addChild(param4[43]);
            param4[39].addChild(param4[42]);
            param4[39].addChild(param4[40]);
            param4[39].addChild(param4[41]);
            param4[1].addChild(param4[3]);
            param4[1].addChild(param4[26]);
            param4[1].addChild(param4[4]);
            param4[1].addChild(param4[8]);
            param4[1].addChild(param4[45]);
            param4[45].addChild(param4[47]);
            param4[45].addChild(param4[46]);
            param4[1].addChild(param4[48]);
            param4[48].addChild(param4[50]);
            param4[48].addChild(param4[49]);
            param4[1].addChild(param4[34]);
            param4[34].addChild(param4[38]);
            param4[34].addChild(param4[37]);
            param4[34].addChild(param4[36]);
            param4[34].addChild(param4[35]);
            param4[1].addChild(param4[29]);
            param4[29].addChild(param4[33]);
            param4[29].addChild(param4[32]);
            param4[29].addChild(param4[31]);
            param4[29].addChild(param4[30]);
            param4[1].addChild(param4[5]);
            param4[1].addChild(param4[28]);
            param4[1].addChild(param4[25]);
            param4[1].addChild(param4[6]);
            param4[6].addChild(param4[7]);
            param4[1].addChild(param4[16]);
            param4[17].updateParent(param1);
            param4[15].updateParent(param1);
            param4[14].updateParent(param1);
            param4[13].updateParent(param1);
            param4[21].updateParent(param1);
            param4[19].updateParent(param1);
            param4[0].updateParent(param1);
            param4[10].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitStatus.watcherSetupUtil = new _com_kbmj_viking_view_UnitStatusWatcherSetupUtil;
            return;
        }// end function

    }
}

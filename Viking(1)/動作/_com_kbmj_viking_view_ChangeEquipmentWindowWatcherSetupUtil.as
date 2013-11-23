package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_ChangeEquipmentWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_ChangeEquipmentWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[43] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[47]], param2);
            param4[78] = new PropertyWatcher("_arrow_top", {propertyChange:true}, [param3[87]], param2);
            param4[45] = new PropertyWatcher("icon_renderer_tutorial", {propertyChange:true}, [param3[49]], param2);
            param4[35] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[38]], param2);
            param4[77] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[86]], param2);
            param4[67] = new PropertyWatcher("viewDataAccessory", {propertyChange:true}, [param3[74]], param2);
            param4[4] = new PropertyWatcher("equipment_icon_renderer", {propertyChange:true}, [param3[32], param3[19], param3[3], param3[27], param3[11]], param2);
            param4[34] = new PropertyWatcher("viewDataWeapon", {propertyChange:true}, [param3[37], param3[56], param3[46]], param2);
            param4[37] = new PropertyWatcher("icon_renderer", {propertyChange:true}, [param3[81], param3[67], param3[76], param3[58], param3[40]], param2);
            param4[76] = new PropertyWatcher("_swf_equip", {propertyChange:true}, [param3[85]], param2);
            param4[1] = new PropertyWatcher("_unit", {propertyChange:true}, [param3[17], param3[1], param3[25], param3[9], param3[30]], param2);
            param4[24] = new PropertyWatcher("accessory", {propertyChange:true}, [param3[25]], null);
            param4[28] = new PropertyWatcher("item", {propertyChange:true}, [param3[30]], null);
            param4[10] = new PropertyWatcher("subWeapon", {propertyChange:true}, [param3[9]], null);
            param4[2] = new PropertyWatcher("weapon", {propertyChange:true}, [param3[1]], null);
            param4[17] = new PropertyWatcher("armor", {propertyChange:true}, [param3[17]], null);
            param4[59] = new PropertyWatcher("viewDataArmor", {propertyChange:true}, [param3[65]], param2);
            param4[72] = new PropertyWatcher("viewDataItem", {propertyChange:true}, [param3[80]], param2);
            param4[43].updateParent(param1);
            param4[78].updateParent(param1);
            param4[45].updateParent(param1);
            param4[35].updateParent(param1);
            param4[77].updateParent(param1);
            param4[67].updateParent(param1);
            param4[4].updateParent(param1);
            param4[34].updateParent(param1);
            param4[37].updateParent(param1);
            param4[76].updateParent(param1);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[24]);
            param4[1].addChild(param4[28]);
            param4[1].addChild(param4[10]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[17]);
            param4[59].updateParent(param1);
            param4[72].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ChangeEquipmentWindow.watcherSetupUtil = new _com_kbmj_viking_view_ChangeEquipmentWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

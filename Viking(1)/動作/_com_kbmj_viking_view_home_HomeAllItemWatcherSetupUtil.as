package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_HomeAllItemWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_HomeAllItemWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[41] = new PropertyWatcher("toolTipRenderer", {propertyChange:true}, [param3[47]], param2);
            param4[6] = new PropertyWatcher("nameRenderer", {propertyChange:true}, [param3[18], param3[39], param3[6], param3[30]], param2);
            param4[39] = new PropertyWatcher("viewDataMaterial", {propertyChange:true}, [param3[45]], param2);
            param4[24] = new PropertyWatcher("viewDataAccessory", {propertyChange:true}, [param3[26]], param2);
            param4[2] = new PropertyWatcher("viewDataWeapon", {propertyChange:true}, [param3[2]], param2);
            param4[4] = new PropertyWatcher("checkBoxRenderer", {propertyChange:true}, [param3[16], param3[4], param3[37], param3[28]], param2);
            param4[14] = new PropertyWatcher("viewDataArmor", {propertyChange:true}, [param3[14]], param2);
            param4[31] = new PropertyWatcher("viewDataItem", {propertyChange:true}, [param3[35]], param2);
            param4[41].updateParent(param1);
            param4[6].updateParent(param1);
            param4[39].updateParent(param1);
            param4[24].updateParent(param1);
            param4[2].updateParent(param1);
            param4[4].updateParent(param1);
            param4[14].updateParent(param1);
            param4[31].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HomeAllItem.watcherSetupUtil = new _com_kbmj_viking_view_home_HomeAllItemWatcherSetupUtil;
            return;
        }// end function

    }
}

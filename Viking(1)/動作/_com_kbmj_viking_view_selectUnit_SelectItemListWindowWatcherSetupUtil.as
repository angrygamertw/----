package 
{
    import com.kbmj.viking.view.selectUnit.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_selectUnit_SelectItemListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_selectUnit_SelectItemListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[17] = new PropertyWatcher("viewDataAccessory", {propertyChange:true}, [param3[18]], param2);
            param4[2] = new PropertyWatcher("viewDataWeapon", {propertyChange:true}, [param3[2]], param2);
            param4[10] = new PropertyWatcher("viewDataArmor", {propertyChange:true}, [param3[10]], param2);
            param4[4] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[4], param3[20], param3[26], param3[12]], param2);
            param4[0] = new PropertyWatcher("myViewStack", {propertyChange:true}, [param3[0]], param2);
            param4[22] = new PropertyWatcher("viewDataItem", {propertyChange:true}, [param3[24]], param2);
            param4[17].updateParent(param1);
            param4[2].updateParent(param1);
            param4[10].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[22].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SelectItemListWindow.watcherSetupUtil = new _com_kbmj_viking_view_selectUnit_SelectItemListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

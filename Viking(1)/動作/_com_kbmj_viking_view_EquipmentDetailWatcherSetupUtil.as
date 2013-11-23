package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_EquipmentDetailWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_EquipmentDetailWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("_viewData", {propertyChange:true}, [param3[1]], param2);
            param4[2] = new PropertyWatcher("nameLabel", null, [param3[1]], null);
            param4[5] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[4]], param2);
            param4[6] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[5]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[3] = new PropertyWatcher("effectString", {propertyChange:true}, [param3[2]], param2);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[2]);
            param4[5].updateParent(param1);
            param4[6].updateParent(param1);
            param4[0].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            EquipmentDetail.watcherSetupUtil = new _com_kbmj_viking_view_EquipmentDetailWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_units", {propertyChange:true}, [param3[5]], param2);
            param4[18] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[22]], param2);
            param4[19] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[25]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[7] = new PropertyWatcher("turnLabel", {propertyChange:true}, [param3[10]], param2);
            param4[12] = new PropertyWatcher("teamLabel", {propertyChange:true}, [param3[15]], param2);
            param4[8] = new PropertyWatcher("_statusVisible", {propertyChange:true}, [param3[16], param3[11]], param2);
            param4[5].updateParent(param1);
            param4[18].updateParent(param1);
            param4[19].updateParent(param1);
            param4[0].updateParent(param1);
            param4[7].updateParent(param1);
            param4[12].updateParent(param1);
            param4[8].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitListWindow.watcherSetupUtil = new _com_kbmj_viking_view_UnitListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

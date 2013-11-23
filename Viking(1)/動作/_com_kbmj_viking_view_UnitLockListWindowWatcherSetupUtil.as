package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitLockListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitLockListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_units", {propertyChange:true}, [param3[5]], param2);
            param4[13] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[16]], param2);
            param4[15] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[22]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[14] = new PropertyWatcher("_swf_decide", {propertyChange:true}, [param3[19]], param2);
            param4[7] = new PropertyWatcher("lockButtonRenderer", {propertyChange:true}, [param3[10]], param2);
            param4[5].updateParent(param1);
            param4[13].updateParent(param1);
            param4[15].updateParent(param1);
            param4[0].updateParent(param1);
            param4[14].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitLockListWindow.watcherSetupUtil = new _com_kbmj_viking_view_UnitLockListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

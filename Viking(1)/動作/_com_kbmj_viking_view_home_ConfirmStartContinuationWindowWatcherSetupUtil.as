package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ConfirmStartContinuationWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ConfirmStartContinuationWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("_swf_cancel_button2", {propertyChange:true}, [param3[12]], param2);
            param4[8] = new PropertyWatcher("_swf_cancel_button", {propertyChange:true}, [param3[9]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("_continuationTicket", {propertyChange:true}, [param3[2]], param2);
            param4[1] = new PropertyWatcher("_canStart", {propertyChange:true}, [param3[1], param3[4], param3[5], param3[6], param3[7], param3[10], param3[11]], param2);
            param4[7] = new PropertyWatcher("_swf_ok_button", {propertyChange:true}, [param3[8]], param2);
            param4[2] = new PropertyWatcher("_startText", {propertyChange:true}, [param3[1]], param2);
            param4[9].updateParent(param1);
            param4[8].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[1].updateParent(param1);
            param4[7].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmStartContinuationWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ConfirmStartContinuationWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_ConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_ConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("_swf_cancel_button", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("_confirmText", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("_swf_ok_button", {propertyChange:true}, [param3[3]], param2);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_ConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

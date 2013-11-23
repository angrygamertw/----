package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_MailDetailWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_MailDetailWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[12] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[11]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[11] = new PropertyWatcher("_swf_send", {propertyChange:true}, [param3[10]], param2);
            param4[5] = new PropertyWatcher("_mail", {propertyChange:true}, [param3[5], param3[6], param3[7], param3[9]], param2);
            param4[8] = new PropertyWatcher("sentAt", {propertyChange:true}, [param3[7]], null);
            param4[10] = new PropertyWatcher("body", {propertyChange:true}, [param3[9]], null);
            param4[6] = new PropertyWatcher("senderName", {propertyChange:true}, [param3[5]], null);
            param4[7] = new PropertyWatcher("subject", {propertyChange:true}, [param3[6]], null);
            param4[12].updateParent(param1);
            param4[0].updateParent(param1);
            param4[11].updateParent(param1);
            param4[5].updateParent(param1);
            param4[5].addChild(param4[8]);
            param4[5].addChild(param4[10]);
            param4[5].addChild(param4[6]);
            param4[5].addChild(param4[7]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MailDetailWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_MailDetailWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

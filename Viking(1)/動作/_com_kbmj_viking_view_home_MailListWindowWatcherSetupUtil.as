package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_MailListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_MailListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[15] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[14]], param2);
            param4[3] = new PropertyWatcher("stateRenderer", {propertyChange:true}, [param3[3]], param2);
            param4[8] = new PropertyWatcher("_swf_prev", {propertyChange:true}, [param3[8]], param2);
            param4[13] = new PropertyWatcher("_nextPage", {propertyChange:true}, [param3[12]], param2);
            param4[10] = new PropertyWatcher("_currentPage", {propertyChange:true}, [param3[10]], param2);
            param4[9] = new PropertyWatcher("_previousPage", {propertyChange:true}, [param3[9]], param2);
            param4[12] = new PropertyWatcher("_swf_next", {propertyChange:true}, [param3[11]], param2);
            param4[5] = new PropertyWatcher("subjectRenderer", {propertyChange:true}, [param3[5]], param2);
            param4[1] = new PropertyWatcher("_mailsData", {propertyChange:true}, [param3[1]], param2);
            param4[14] = new PropertyWatcher("_swf_make", {propertyChange:true}, [param3[13]], param2);
            param4[11] = new PropertyWatcher("_totalPages", {propertyChange:true}, [param3[10]], param2);
            param4[15].updateParent(param1);
            param4[3].updateParent(param1);
            param4[8].updateParent(param1);
            param4[13].updateParent(param1);
            param4[10].updateParent(param1);
            param4[9].updateParent(param1);
            param4[12].updateParent(param1);
            param4[5].updateParent(param1);
            param4[1].updateParent(param1);
            param4[14].updateParent(param1);
            param4[11].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MailListWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_MailListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

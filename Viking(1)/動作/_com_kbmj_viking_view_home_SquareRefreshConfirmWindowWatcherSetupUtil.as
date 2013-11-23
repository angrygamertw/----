package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SquareRefreshConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SquareRefreshConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SquareRefreshConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SquareRefreshConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

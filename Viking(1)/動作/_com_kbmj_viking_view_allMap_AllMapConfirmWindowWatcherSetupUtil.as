package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_AllMapConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_AllMapConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_windowBg", {propertyChange:true}, [param3[0]], param2);
            param4[4] = new PropertyWatcher("details", {propertyChange:true}, [param3[3]], param2);
            param4[8] = new PropertyWatcher("_buttonConfirm", {propertyChange:true}, [param3[7]], param2);
            param4[3] = new PropertyWatcher("_commandName", {propertyChange:true}, [param3[2]], param2);
            param4[1] = new PropertyWatcher("_title", {propertyChange:true}, [param3[1]], param2);
            param4[9] = new PropertyWatcher("_buttonCancel", {propertyChange:true}, [param3[8]], param2);
            param4[0].updateParent(param1);
            param4[4].updateParent(param1);
            param4[8].updateParent(param1);
            param4[3].updateParent(param1);
            param4[1].updateParent(param1);
            param4[9].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AllMapConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_AllMapConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_HexInputWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_HexInputWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("change_all_map", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("back_home", {propertyChange:true}, [param3[1]], param2);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HexInputWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_HexInputWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

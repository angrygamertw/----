package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_FoundSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_FoundSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[5]], param2);
            param4[3] = new PropertyWatcher("_swf_tower", {propertyChange:true}, [param3[3]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("_swf_fort", {propertyChange:true}, [param3[1]], param2);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            FoundSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_FoundSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

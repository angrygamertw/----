package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitSortListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitSortListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[14] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[17]], param2);
            param4[16] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[23]], param2);
            param4[7] = new PropertyWatcher("sortButtonRenderer", {propertyChange:true}, [param3[10]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[15] = new PropertyWatcher("_swf_decide", {propertyChange:true}, [param3[20]], param2);
            param4[5] = new PropertyWatcher("_viewCollection", {propertyChange:true}, [param3[5]], param2);
            param4[14].updateParent(param1);
            param4[16].updateParent(param1);
            param4[7].updateParent(param1);
            param4[0].updateParent(param1);
            param4[15].updateParent(param1);
            param4[5].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitSortListWindow.watcherSetupUtil = new _com_kbmj_viking_view_UnitSortListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

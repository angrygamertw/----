package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_EventMapWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_EventMapWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[7] = new PropertyWatcher("_swf_lantern_6", {propertyChange:true}, [param3[7]], param2);
            param4[6] = new PropertyWatcher("_swf_lantern_5", {propertyChange:true}, [param3[6]], param2);
            param4[2] = new PropertyWatcher("_swf_lantern_1", {propertyChange:true}, [param3[2]], param2);
            param4[3] = new PropertyWatcher("_swf_lantern_2", {propertyChange:true}, [param3[3]], param2);
            param4[4] = new PropertyWatcher("_swf_lantern_3", {propertyChange:true}, [param3[4]], param2);
            param4[5] = new PropertyWatcher("_swf_lantern_4", {propertyChange:true}, [param3[5]], param2);
            param4[0] = new PropertyWatcher("_swf_expedition", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("_swf_lantern_0", {propertyChange:true}, [param3[1]], param2);
            param4[7].updateParent(param1);
            param4[6].updateParent(param1);
            param4[2].updateParent(param1);
            param4[3].updateParent(param1);
            param4[4].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            EventMapWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_EventMapWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

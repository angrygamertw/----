package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_CreateGuildWindow_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_CreateGuildWindow_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1], param3[2]], param2);
            param4[2] = new PropertyWatcher("enabled", null, [param3[1]], null);
            param4[1] = new PropertyWatcher("label", null, [param3[0]], null);
            param4[3] = new PropertyWatcher("clicked", null, [param3[2]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[2]);
            param4[0].addChild(param4[1]);
            param4[0].addChild(param4[3]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CreateGuildWindow_inlineComponent1.watcherSetupUtil = new _com_kbmj_viking_view_city_CreateGuildWindow_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}

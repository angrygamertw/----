package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent4WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent4WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[2], param3[4]], param2);
            param4[5] = new PropertyWatcher("memberRenderer", {propertyChange:true}, [param3[4]], null);
            param4[3] = new PropertyWatcher("linkRenderer", {propertyChange:true}, [param3[2]], null);
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0]], param2);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[5]);
            param4[2].addChild(param4[3]);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SearchGuildWindow_inlineComponent4.watcherSetupUtil = new _com_kbmj_viking_view_city_SearchGuildWindow_inlineComponent4WatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_QuestAcceptWindow_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_QuestAcceptWindow_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[0], param3[1], param3[2], param3[3], param3[4]], param2);
            param4[3] = new PropertyWatcher("data", {dataChange:true}, [param3[1], param3[4]], param2);
            param4[0].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            QuestAcceptWindow_inlineComponent1.watcherSetupUtil = new _com_kbmj_viking_view_city_QuestAcceptWindow_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}

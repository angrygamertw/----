package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ProductionWindow_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ProductionWindow_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[4] = new PropertyWatcher("outerDocument", {propertyChange:true}, [param3[1]], param2);
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("masterVO", null, [param3[0]], null);
            param4[2] = new PropertyWatcher("product", null, [param3[0]], null);
            param4[3] = new PropertyWatcher("nameLabel", null, [param3[0]], null);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[2].addChild(param4[3]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ProductionWindow_inlineComponent1.watcherSetupUtil = new _com_kbmj_viking_view_home_ProductionWindow_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}

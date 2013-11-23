package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_UnitSortListWindow_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_UnitSortListWindow_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[0] = new PropertyWatcher("outerDocument", {propertyChange:true}, [bindings[0]], propertyGetter);
            watchers[1] = new FunctionReturnWatcher("getImage", target, function () : Array
            {
                return [target.data];
            }// end function
            , {selectUnitIdsChanged:true}, [bindings[0]], null);
            watchers[2] = new PropertyWatcher("data", {dataChange:true}, [bindings[0]], propertyGetter);
            watchers[0].updateParent(target);
            watchers[1].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[1]);
            watchers[2].updateParent(target);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnitSortListWindow_inlineComponent1.watcherSetupUtil = new _com_kbmj_viking_view_UnitSortListWindow_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}

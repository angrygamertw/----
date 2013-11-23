package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_BaseBuildingWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_BaseBuildingWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[18] = new PropertyWatcher("goldColor", {propertyChange:true}, [bindings[13]], propertyGetter);
            watchers[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [bindings[0]], propertyGetter);
            watchers[22] = new PropertyWatcher("materialsColor", {propertyChange:true}, [bindings[16]], propertyGetter);
            watchers[23] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[16]], null);
            watchers[8] = new PropertyWatcher("updateBuilding", {propertyChange:true}, [bindings[6]], propertyGetter);
            watchers[1] = new PropertyWatcher("buildingVO", {propertyChange:true}, [bindings[1]], propertyGetter);
            watchers[2] = new PropertyWatcher("buildingMasterVO", {propertyChange:true}, [bindings[1]], null);
            watchers[3] = new PropertyWatcher("nameLabel", {propertyChange:true}, [bindings[1]], null);
            watchers[6] = new PropertyWatcher("_swf_enlarge", {propertyChange:true}, [bindings[4]], propertyGetter);
            watchers[7] = new PropertyWatcher("_swf_enlarge_off", {propertyChange:true}, [bindings[5]], propertyGetter);
            watchers[5] = new PropertyWatcher("_swf_close_update", {propertyChange:true}, [bindings[3]], propertyGetter);
            watchers[19] = new PropertyWatcher("neccesaryRank", {propertyChange:true}, [bindings[14]], propertyGetter);
            watchers[13] = new PropertyWatcher("construction", {propertyChange:true}, [bindings[11], bindings[12], bindings[15]], propertyGetter);
            watchers[14] = new PropertyWatcher("minutes", {propertyChange:true}, [bindings[11]], null);
            watchers[16] = new PropertyWatcher("gold", {propertyChange:true}, [bindings[12]], null);
            watchers[18].updateParent(target);
            watchers[0].updateParent(target);
            watchers[22].updateParent(target);
            watchers[23].parentWatcher = watchers[22];
            watchers[22].addChild(watchers[23]);
            watchers[8].updateParent(target);
            watchers[1].updateParent(target);
            watchers[1].addChild(watchers[2]);
            watchers[2].addChild(watchers[3]);
            watchers[6].updateParent(target);
            watchers[7].updateParent(target);
            watchers[5].updateParent(target);
            watchers[19].updateParent(target);
            watchers[13].updateParent(target);
            watchers[13].addChild(watchers[14]);
            watchers[13].addChild(watchers[16]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            BaseBuildingWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_BaseBuildingWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

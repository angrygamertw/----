package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ItemsDegradationWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ItemsDegradationWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[1] = new PropertyWatcher("productionsByType", {propertyChange:true}, [bindings[1], bindings[19], bindings[7], bindings[25], bindings[13], bindings[31]], propertyGetter);
            watchers[2] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[1]], null);
            watchers[18] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [3];
            }// end function
            , {collectionChange:true}, [bindings[19]], null);
            watchers[23] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [4];
            }// end function
            , {collectionChange:true}, [bindings[25]], null);
            watchers[8] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [1];
            }// end function
            , {collectionChange:true}, [bindings[7]], null);
            watchers[28] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [5];
            }// end function
            , {collectionChange:true}, [bindings[31]], null);
            watchers[13] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [2];
            }// end function
            , {collectionChange:true}, [bindings[13]], null);
            watchers[29] = new PropertyWatcher("itemList", {propertyChange:true}, [bindings[32]], propertyGetter);
            watchers[5] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [bindings[16], bindings[4], bindings[22], bindings[10], bindings[28]], propertyGetter);
            watchers[1].updateParent(target);
            watchers[2].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[2]);
            watchers[18].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[18]);
            watchers[23].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[23]);
            watchers[8].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[8]);
            watchers[28].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[28]);
            watchers[13].parentWatcher = watchers[1];
            watchers[1].addChild(watchers[13]);
            watchers[29].updateParent(target);
            watchers[5].updateParent(target);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ItemsDegradationWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ItemsDegradationWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

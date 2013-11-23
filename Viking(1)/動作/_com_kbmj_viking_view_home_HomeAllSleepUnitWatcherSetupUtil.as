package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_HomeAllSleepUnitWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_HomeAllSleepUnitWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[0] = new PropertyWatcher("_coffins", {propertyChange:true}, [bindings[0], bindings[2], bindings[4], bindings[6], bindings[8], bindings[10], bindings[12], bindings[14], bindings[16], bindings[18], bindings[20], bindings[22], bindings[24], bindings[26], bindings[28]], propertyGetter);
            watchers[1] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[0]], null);
            watchers[3] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [1];
            }// end function
            , {collectionChange:true}, [bindings[2]], null);
            watchers[4] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [2];
            }// end function
            , {collectionChange:true}, [bindings[4]], null);
            watchers[5] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [3];
            }// end function
            , {collectionChange:true}, [bindings[6]], null);
            watchers[6] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [4];
            }// end function
            , {collectionChange:true}, [bindings[8]], null);
            watchers[7] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [5];
            }// end function
            , {collectionChange:true}, [bindings[10]], null);
            watchers[8] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [6];
            }// end function
            , {collectionChange:true}, [bindings[12]], null);
            watchers[9] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [7];
            }// end function
            , {collectionChange:true}, [bindings[14]], null);
            watchers[10] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [8];
            }// end function
            , {collectionChange:true}, [bindings[16]], null);
            watchers[11] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [9];
            }// end function
            , {collectionChange:true}, [bindings[18]], null);
            watchers[12] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [10];
            }// end function
            , {collectionChange:true}, [bindings[20]], null);
            watchers[13] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [11];
            }// end function
            , {collectionChange:true}, [bindings[22]], null);
            watchers[14] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [12];
            }// end function
            , {collectionChange:true}, [bindings[24]], null);
            watchers[15] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [13];
            }// end function
            , {collectionChange:true}, [bindings[26]], null);
            watchers[16] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [14];
            }// end function
            , {collectionChange:true}, [bindings[28]], null);
            watchers[0].updateParent(target);
            watchers[1].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[1]);
            watchers[3].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[3]);
            watchers[4].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[4]);
            watchers[5].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[5]);
            watchers[6].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[6]);
            watchers[7].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[7]);
            watchers[8].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[8]);
            watchers[9].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[9]);
            watchers[10].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[10]);
            watchers[11].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[11]);
            watchers[12].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[12]);
            watchers[13].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[13]);
            watchers[14].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[14]);
            watchers[15].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[15]);
            watchers[16].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[16]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HomeAllSleepUnit.watcherSetupUtil = new _com_kbmj_viking_view_home_HomeAllSleepUnitWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_HomeWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_HomeWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[20] = new PropertyWatcher("_swf_balloon", {propertyChange:true}, [bindings[18]], propertyGetter);
            watchers[22] = new PropertyWatcher("_swf_faction", {propertyChange:true}, [bindings[20]], propertyGetter);
            watchers[24] = new PropertyWatcher("_tasks", {propertyChange:true}, [bindings[22]], propertyGetter);
            watchers[21] = new PropertyWatcher("_swf_info_chat", {propertyChange:true}, [bindings[19]], propertyGetter);
            watchers[0] = new PropertyWatcher("buildingImages", {propertyChange:true}, [bindings[0], bindings[1], bindings[2], bindings[3], bindings[4], bindings[5], bindings[6], bindings[7], bindings[8], bindings[9], bindings[10], bindings[11]], propertyGetter);
            watchers[1] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[0]], null);
            watchers[2] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [1];
            }// end function
            , {collectionChange:true}, [bindings[1]], null);
            watchers[3] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [2];
            }// end function
            , {collectionChange:true}, [bindings[2]], null);
            watchers[4] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [3];
            }// end function
            , {collectionChange:true}, [bindings[3]], null);
            watchers[5] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [4];
            }// end function
            , {collectionChange:true}, [bindings[4]], null);
            watchers[6] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [10];
            }// end function
            , {collectionChange:true}, [bindings[5]], null);
            watchers[7] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [5];
            }// end function
            , {collectionChange:true}, [bindings[6]], null);
            watchers[8] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [11];
            }// end function
            , {collectionChange:true}, [bindings[7]], null);
            watchers[9] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [6];
            }// end function
            , {collectionChange:true}, [bindings[8]], null);
            watchers[10] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [7];
            }// end function
            , {collectionChange:true}, [bindings[9]], null);
            watchers[11] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [8];
            }// end function
            , {collectionChange:true}, [bindings[10]], null);
            watchers[12] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [9];
            }// end function
            , {collectionChange:true}, [bindings[11]], null);
            watchers[28] = new PropertyWatcher("pressedButtonVisible", {propertyChange:true}, [bindings[26]], propertyGetter);
            watchers[23] = new PropertyWatcher("_swf_rank", {propertyChange:true}, [bindings[21]], propertyGetter);
            watchers[14] = new PropertyWatcher("researchLevels", {propertyChange:true}, [bindings[17], bindings[16], bindings[13], bindings[14], bindings[15]], propertyGetter);
            watchers[17] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [2];
            }// end function
            , {collectionChange:true}, [bindings[15]], null);
            watchers[16] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [1];
            }// end function
            , {collectionChange:true}, [bindings[14]], null);
            watchers[19] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [4];
            }// end function
            , {collectionChange:true}, [bindings[17]], null);
            watchers[18] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [3];
            }// end function
            , {collectionChange:true}, [bindings[16]], null);
            watchers[15] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[13]], null);
            watchers[27] = new PropertyWatcher("pressedButtonPointY", {propertyChange:true}, [bindings[25]], propertyGetter);
            watchers[13] = new PropertyWatcher("_swf_research", {propertyChange:true}, [bindings[12]], propertyGetter);
            watchers[26] = new PropertyWatcher("pressedButtonPointX", {propertyChange:true}, [bindings[24]], propertyGetter);
            watchers[25] = new PropertyWatcher("_unreadMail", {propertyChange:true}, [bindings[23]], propertyGetter);
            watchers[20].updateParent(target);
            watchers[22].updateParent(target);
            watchers[24].updateParent(target);
            watchers[21].updateParent(target);
            watchers[0].updateParent(target);
            watchers[1].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[1]);
            watchers[2].parentWatcher = watchers[0];
            watchers[0].addChild(watchers[2]);
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
            watchers[28].updateParent(target);
            watchers[23].updateParent(target);
            watchers[14].updateParent(target);
            watchers[17].parentWatcher = watchers[14];
            watchers[14].addChild(watchers[17]);
            watchers[16].parentWatcher = watchers[14];
            watchers[14].addChild(watchers[16]);
            watchers[19].parentWatcher = watchers[14];
            watchers[14].addChild(watchers[19]);
            watchers[18].parentWatcher = watchers[14];
            watchers[14].addChild(watchers[18]);
            watchers[15].parentWatcher = watchers[14];
            watchers[14].addChild(watchers[15]);
            watchers[27].updateParent(target);
            watchers[13].updateParent(target);
            watchers[26].updateParent(target);
            watchers[25].updateParent(target);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            Home.watcherSetupUtil = new _com_kbmj_viking_HomeWatcherSetupUtil;
            return;
        }// end function

    }
}

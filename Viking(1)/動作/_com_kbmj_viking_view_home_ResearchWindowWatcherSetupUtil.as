package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ResearchWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ResearchWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[13] = new PropertyWatcher("_swf_close", {propertyChange:true}, [bindings[12]], propertyGetter);
            watchers[11] = new PropertyWatcher("_swf_craft", {propertyChange:true}, [bindings[10]], propertyGetter);
            watchers[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [bindings[0]], propertyGetter);
            watchers[1] = new PropertyWatcher("_swf_black_smith", {propertyChange:true}, [bindings[1]], propertyGetter);
            watchers[5] = new PropertyWatcher("_swf_leather", {propertyChange:true}, [bindings[4]], propertyGetter);
            watchers[14] = new PropertyWatcher("tutMarkResearchVisible", {propertyChange:true}, [bindings[13]], propertyGetter);
            watchers[3] = new PropertyWatcher("_homeMapsCollection", {propertyChange:true}, [bindings[3], bindings[5], bindings[7], bindings[9], bindings[11]], propertyGetter);
            watchers[4] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [0];
            }// end function
            , {collectionChange:true}, [bindings[3]], null);
            watchers[6] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [1];
            }// end function
            , {collectionChange:true}, [bindings[5]], null);
            watchers[8] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [2];
            }// end function
            , {collectionChange:true}, [bindings[7]], null);
            watchers[10] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [3];
            }// end function
            , {collectionChange:true}, [bindings[9]], null);
            watchers[12] = new FunctionReturnWatcher("getItemAt", target, function () : Array
            {
                return [4];
            }// end function
            , {collectionChange:true}, [bindings[11]], null);
            watchers[9] = new PropertyWatcher("_swf_magic", {propertyChange:true}, [bindings[8]], propertyGetter);
            watchers[7] = new PropertyWatcher("_swf_cloth", {propertyChange:true}, [bindings[6]], propertyGetter);
            watchers[13].updateParent(target);
            watchers[11].updateParent(target);
            watchers[0].updateParent(target);
            watchers[1].updateParent(target);
            watchers[5].updateParent(target);
            watchers[14].updateParent(target);
            watchers[3].updateParent(target);
            watchers[4].parentWatcher = watchers[3];
            watchers[3].addChild(watchers[4]);
            watchers[6].parentWatcher = watchers[3];
            watchers[3].addChild(watchers[6]);
            watchers[8].parentWatcher = watchers[3];
            watchers[3].addChild(watchers[8]);
            watchers[10].parentWatcher = watchers[3];
            watchers[3].addChild(watchers[10]);
            watchers[12].parentWatcher = watchers[3];
            watchers[3].addChild(watchers[12]);
            watchers[9].updateParent(target);
            watchers[7].updateParent(target);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ResearchWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ResearchWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

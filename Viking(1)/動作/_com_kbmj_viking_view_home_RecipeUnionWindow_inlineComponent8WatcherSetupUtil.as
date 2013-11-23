package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RecipeUnionWindow_inlineComponent8WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RecipeUnionWindow_inlineComponent8WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("name", null, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RecipeUnionWindow_inlineComponent8.watcherSetupUtil = new _com_kbmj_viking_view_home_RecipeUnionWindow_inlineComponent8WatcherSetupUtil;
            return;
        }// end function

    }
}

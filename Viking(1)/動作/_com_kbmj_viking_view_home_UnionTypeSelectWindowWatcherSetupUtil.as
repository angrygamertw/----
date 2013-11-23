package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_UnionTypeSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_UnionTypeSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("tutMarkRecipeVisible", {propertyChange:true}, [param3[10]], param2);
            param4[8] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[9]], param2);
            param4[5] = new PropertyWatcher("normalUnionText", {propertyChange:true}, [param3[6]], param2);
            param4[3] = new PropertyWatcher("canNormalUnion", {propertyChange:true}, [param3[3], param3[4]], param2);
            param4[9].updateParent(param1);
            param4[8].updateParent(param1);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            UnionTypeSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_UnionTypeSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

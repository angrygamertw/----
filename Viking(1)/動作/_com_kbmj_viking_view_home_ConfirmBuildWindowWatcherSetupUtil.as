package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ConfirmBuildWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ConfirmBuildWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("buildDetail", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("constructionName", null, [param3[0]], null);
            param4[3] = new PropertyWatcher("buildDetails", {propertyChange:true}, [param3[1]], param2);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[2]);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmBuildWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ConfirmBuildWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ShamBattleTargetListWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ShamBattleTargetListWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[10] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[10]], param2);
            param4[0] = new PropertyWatcher("_swf_bg", {propertyChange:true}, [param3[0]], param2);
            param4[2] = new PropertyWatcher("_swf_practice", {propertyChange:true}, [param3[2]], param2);
            param4[7] = new PropertyWatcher("targetNameRenderer", {propertyChange:true}, [param3[7]], param2);
            param4[5] = new PropertyWatcher("_targetPlayerList", {propertyChange:true}, [param3[5]], param2);
            param4[10].updateParent(param1);
            param4[0].updateParent(param1);
            param4[2].updateParent(param1);
            param4[7].updateParent(param1);
            param4[5].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ShamBattleTargetListWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ShamBattleTargetListWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

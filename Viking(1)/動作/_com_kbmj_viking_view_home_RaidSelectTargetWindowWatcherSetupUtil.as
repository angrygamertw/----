package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RaidSelectTargetWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RaidSelectTargetWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_targetNotoriety", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("_targetRival", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("itemList", {propertyChange:true}, [param3[3]], param2);
            param4[2] = new PropertyWatcher("_targetRevenge", {propertyChange:true}, [param3[2]], param2);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            param4[3].updateParent(param1);
            param4[2].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RaidSelectTargetWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_RaidSelectTargetWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

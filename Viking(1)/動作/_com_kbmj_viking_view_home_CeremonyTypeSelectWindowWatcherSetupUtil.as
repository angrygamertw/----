package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CeremonyTypeSelectWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CeremonyTypeSelectWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[8] = new PropertyWatcher("tutMarkSummonVisible", {propertyChange:true}, [param3[8]], param2);
            param4[7] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[7]], param2);
            param4[9] = new PropertyWatcher("tutMarkUnionVisible", {propertyChange:true}, [param3[9]], param2);
            param4[8].updateParent(param1);
            param4[7].updateParent(param1);
            param4[9].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CeremonyTypeSelectWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_CeremonyTypeSelectWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

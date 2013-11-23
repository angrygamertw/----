package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_CheckUnitFromCeremonyWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_CheckUnitFromCeremonyWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[13] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[13]], param2);
            param4[14] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[14]], param2);
            param4[4] = new PropertyWatcher("expLabel", {propertyChange:true}, [param3[4]], param2);
            param4[0] = new PropertyWatcher("_unitArray", {propertyChange:true}, [param3[0]], param2);
            param4[12] = new PropertyWatcher("dismissLabel", {propertyChange:true}, [param3[12]], param2);
            param4[13].updateParent(param1);
            param4[14].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[12].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CheckUnitFromCeremony.watcherSetupUtil = new _com_kbmj_viking_view_home_CheckUnitFromCeremonyWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_AwakeUnionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_AwakeUnionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("listUnits", {propertyChange:true}, [param3[2]], param2);
            param4[1] = new PropertyWatcher("description", {propertyChange:true}, [param3[1]], param2);
            param4[4] = new PropertyWatcher("detailRenderer1", {propertyChange:true}, [param3[4]], param2);
            param4[13] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[13]], param2);
            param4[2].updateParent(param1);
            param4[1].updateParent(param1);
            param4[4].updateParent(param1);
            param4[13].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AwakeUnionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_AwakeUnionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

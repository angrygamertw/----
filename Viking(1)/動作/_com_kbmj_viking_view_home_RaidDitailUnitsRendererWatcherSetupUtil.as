package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RaidDitailUnitsRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RaidDitailUnitsRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_units", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("statusRenderer", {propertyChange:true}, [param3[1]], param2);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RaidDitailUnitsRenderer.watcherSetupUtil = new _com_kbmj_viking_view_home_RaidDitailUnitsRendererWatcherSetupUtil;
            return;
        }// end function

    }
}

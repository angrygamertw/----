package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SacrificeUnitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SacrificeUnitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[13] = new PropertyWatcher("_swf_cancel", {propertyChange:true}, [param3[13]], param2);
            param4[18] = new PropertyWatcher("_swf_sacrifice", {propertyChange:true}, [param3[16]], param2);
            param4[2] = new PropertyWatcher("_sacrificeUnits", {propertyChange:true}, [param3[2]], param2);
            param4[19] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[17]], param2);
            param4[15] = new PropertyWatcher("_sacrificeUnit", {propertyChange:true}, [param3[14]], param2);
            param4[16] = new PropertyWatcher("name", {propertyChange:true}, [param3[14]], null);
            param4[4] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[4]], param2);
            param4[13].updateParent(param1);
            param4[18].updateParent(param1);
            param4[2].updateParent(param1);
            param4[19].updateParent(param1);
            param4[15].updateParent(param1);
            param4[15].addChild(param4[16]);
            param4[4].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SacrificeUnitWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SacrificeUnitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

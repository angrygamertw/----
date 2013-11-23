package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_HomeEstablishmentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_HomeEstablishmentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[2] = new PropertyWatcher("_player", {propertyChange:true}, [param3[1]], param2);
            param4[3] = new PropertyWatcher("doubleExpExpiredAtLabel", {propertyChange:true}, [param3[1]], null);
            param4[2].updateParent(param1);
            param4[2].addChild(param4[3]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HomeEstablishment.watcherSetupUtil = new _com_kbmj_viking_view_home_HomeEstablishmentWatcherSetupUtil;
            return;
        }// end function

    }
}

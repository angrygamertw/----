package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ConfirmSummonHeroWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ConfirmSummonHeroWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("label1", {propertyChange:true}, [param3[0], param3[1]], param2);
            param4[2] = new PropertyWatcher("label2", {propertyChange:true}, [param3[2]], param2);
            param4[0] = new PropertyWatcher("power", {propertyChange:true}, [param3[0]], param2);
            param4[3] = new PropertyWatcher("typeLavel", {propertyChange:true}, [param3[4]], param2);
            param4[1].updateParent(param1);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ConfirmSummonHeroWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ConfirmSummonHeroWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

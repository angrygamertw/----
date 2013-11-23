package 
{
    import com.kbmj.viking.view.tactics.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_tactics_HitRateWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_tactics_HitRateWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[3] = new PropertyWatcher("_attackHitRate", {propertyChange:true}, [param3[2], param3[3]], param2);
            param4[7] = new PropertyWatcher("_counterHitRate", {propertyChange:true}, [param3[6], param3[7]], param2);
            param4[5] = new PropertyWatcher("_counterDamage", {propertyChange:true}, [param3[4], param3[5]], param2);
            param4[1] = new PropertyWatcher("_attackDamage", {propertyChange:true}, [param3[0], param3[1]], param2);
            param4[3].updateParent(param1);
            param4[7].updateParent(param1);
            param4[5].updateParent(param1);
            param4[1].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HitRateWindow.watcherSetupUtil = new _com_kbmj_viking_view_tactics_HitRateWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

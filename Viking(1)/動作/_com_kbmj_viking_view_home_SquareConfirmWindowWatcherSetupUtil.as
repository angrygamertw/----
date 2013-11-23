package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SquareConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SquareConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("mercenary", {propertyChange:true}, [param3[0], param3[1], param3[2]], param2);
            param4[1] = new PropertyWatcher("unit", {propertyChange:true}, [param3[0], param3[1]], null);
            param4[2] = new PropertyWatcher("name", {propertyChange:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("jobName", {propertyChange:true}, [param3[1]], null);
            param4[4] = new PropertyWatcher("price", {propertyChange:true}, [param3[2]], null);
            param4[5] = new PropertyWatcher("_requirementText", {propertyChange:true}, [param3[3]], param2);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[3]);
            param4[0].addChild(param4[4]);
            param4[5].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SquareConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SquareConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

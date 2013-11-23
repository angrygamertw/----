package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SpecialSummonWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SpecialSummonWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[7] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[6]], param2);
            param4[13] = new PropertyWatcher("_swf_ticket_close", {propertyChange:true}, [param3[11]], param2);
            param4[0] = new PropertyWatcher("titleText", {propertyChange:true}, [param3[0]], param2);
            param4[9] = new PropertyWatcher("_itemName", {propertyChange:true}, [param3[7], param3[9], param3[12]], param2);
            param4[6] = new PropertyWatcher("_swf_ok", {propertyChange:true}, [param3[5]], param2);
            param4[12] = new PropertyWatcher("_swf_ticket_ok", {propertyChange:true}, [param3[10]], param2);
            param4[11] = new PropertyWatcher("_ticketText", {propertyChange:true}, [param3[9]], param2);
            param4[2] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[2], param3[13]], param2);
            param4[4] = new PropertyWatcher("usePower", {propertyChange:true}, [param3[3]], param2);
            param4[7].updateParent(param1);
            param4[13].updateParent(param1);
            param4[0].updateParent(param1);
            param4[9].updateParent(param1);
            param4[6].updateParent(param1);
            param4[12].updateParent(param1);
            param4[11].updateParent(param1);
            param4[2].updateParent(param1);
            param4[4].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SpecialSummonWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SpecialSummonWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

package 
{
    import com.kbmj.viking.view.allMap.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_allMap_AllMapCommandWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_allMap_AllMapCommandWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[18] = new PropertyWatcher("_buttonDestroy", {propertyChange:true}, [param3[18]], param2);
            param4[15] = new PropertyWatcher("_buttonFound", {propertyChange:true}, [param3[15]], param2);
            param4[13] = new PropertyWatcher("_buttonSurrender", {propertyChange:true}, [param3[13]], param2);
            param4[7] = new PropertyWatcher("_buttonPurify", {propertyChange:true}, [param3[7]], param2);
            param4[22] = new PropertyWatcher("_buttonX", {propertyChange:true}, [param3[22]], param2);
            param4[19] = new PropertyWatcher("_buttonRemove", {propertyChange:true}, [param3[19]], param2);
            param4[11] = new PropertyWatcher("_buttonPlunder", {propertyChange:true}, [param3[11]], param2);
            param4[17] = new PropertyWatcher("_buttonGarrison", {propertyChange:true}, [param3[17]], param2);
            param4[12] = new PropertyWatcher("_buttonMail", {propertyChange:true}, [param3[12]], param2);
            param4[2] = new PropertyWatcher("_outputs", {propertyChange:true}, [param3[2]], param2);
            param4[5] = new PropertyWatcher("_descriptions", {propertyChange:true}, [param3[5]], param2);
            param4[8] = new PropertyWatcher("_buttonAttack", {propertyChange:true}, [param3[8]], param2);
            param4[0] = new PropertyWatcher("_swf_faction", {propertyChange:true}, [param3[0]], param2);
            param4[9] = new PropertyWatcher("_buttonInvade", {propertyChange:true}, [param3[9]], param2);
            param4[10] = new PropertyWatcher("_buttonSubdue", {propertyChange:true}, [param3[10]], param2);
            param4[14] = new PropertyWatcher("_buttonReclaim", {propertyChange:true}, [param3[14]], param2);
            param4[21] = new PropertyWatcher("_buttonClose", {propertyChange:true}, [param3[21]], param2);
            param4[20] = new PropertyWatcher("_buttonChargeRemove", {propertyChange:true}, [param3[20]], param2);
            param4[1] = new PropertyWatcher("_swf_rank", {propertyChange:true}, [param3[1]], param2);
            param4[16] = new PropertyWatcher("_buttonRepair", {propertyChange:true}, [param3[16]], param2);
            param4[18].updateParent(param1);
            param4[15].updateParent(param1);
            param4[13].updateParent(param1);
            param4[7].updateParent(param1);
            param4[22].updateParent(param1);
            param4[19].updateParent(param1);
            param4[11].updateParent(param1);
            param4[17].updateParent(param1);
            param4[12].updateParent(param1);
            param4[2].updateParent(param1);
            param4[5].updateParent(param1);
            param4[8].updateParent(param1);
            param4[0].updateParent(param1);
            param4[9].updateParent(param1);
            param4[10].updateParent(param1);
            param4[14].updateParent(param1);
            param4[21].updateParent(param1);
            param4[20].updateParent(param1);
            param4[1].updateParent(param1);
            param4[16].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            AllMapCommandWindow.watcherSetupUtil = new _com_kbmj_viking_view_allMap_AllMapCommandWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

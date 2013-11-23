package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_QuestAcceptWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_QuestAcceptWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[18] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[34]], param2);
            param4[5] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[7]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[12] = new PropertyWatcher("_deliveryQuests", {propertyChange:true}, [param3[19]], param2);
            param4[9] = new PropertyWatcher("_subjugationQuests", {propertyChange:true}, [param3[14]], param2);
            param4[14] = new PropertyWatcher("_purificationQuests", {propertyChange:true}, [param3[24]], param2);
            param4[10] = new PropertyWatcher("questItemRenderer", {propertyChange:true}, [param3[17], param3[22], param3[27], param3[31]], param2);
            param4[15] = new PropertyWatcher("_dailyQuests", {propertyChange:true}, [param3[28]], param2);
            param4[6] = new PropertyWatcher("mariaComment", {propertyChange:true}, [param3[9]], param2);
            param4[7] = new PropertyWatcher("_swf_tab", {propertyChange:true}, [param3[12]], param2);
            param4[18].updateParent(param1);
            param4[5].updateParent(param1);
            param4[0].updateParent(param1);
            param4[12].updateParent(param1);
            param4[9].updateParent(param1);
            param4[14].updateParent(param1);
            param4[10].updateParent(param1);
            param4[15].updateParent(param1);
            param4[6].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            QuestAcceptWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_QuestAcceptWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

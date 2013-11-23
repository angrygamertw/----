package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_QuestConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_QuestConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("_swf_stack0_yes", {propertyChange:true}, [param3[9]], param2);
            param4[31] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[58]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("topComment", {propertyChange:true}, [param3[1]], param2);
            param4[16] = new PropertyWatcher("_swf_stack2_no", {propertyChange:true}, [param3[30]], param2);
            param4[25] = new PropertyWatcher("_swf_stack3_close", {propertyChange:true}, [param3[40]], param2);
            param4[12] = new PropertyWatcher("_swf_stack1_close", {propertyChange:true}, [param3[19]], param2);
            param4[10] = new PropertyWatcher("_swf_stack0_no", {propertyChange:true}, [param3[12]], param2);
            param4[28] = new PropertyWatcher("_swf_stack4_close", {propertyChange:true}, [param3[50]], param2);
            param4[30] = new PropertyWatcher("_swf_stack5_close", {propertyChange:true}, [param3[55]], param2);
            param4[15] = new PropertyWatcher("_swf_stack2_yes", {propertyChange:true}, [param3[27]], param2);
            param4[9].updateParent(param1);
            param4[31].updateParent(param1);
            param4[0].updateParent(param1);
            param4[1].updateParent(param1);
            param4[16].updateParent(param1);
            param4[25].updateParent(param1);
            param4[12].updateParent(param1);
            param4[10].updateParent(param1);
            param4[28].updateParent(param1);
            param4[30].updateParent(param1);
            param4[15].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            QuestConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_QuestConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

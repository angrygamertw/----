package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_MarketConfirmWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_MarketConfirmWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[37] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[82]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[13] = new PropertyWatcher("nameLabelRenderer", {propertyChange:true}, [param3[22], param3[57]], param2);
            param4[18] = new PropertyWatcher("_swf_stack1_yes", {propertyChange:true}, [param3[31]], param2);
            param4[27] = new PropertyWatcher("_buyData", {propertyChange:true}, [param3[54]], param2);
            param4[5] = new PropertyWatcher("ViewStackIndex", {propertyChange:true}, [param3[5]], param2);
            param4[1] = new PropertyWatcher("topComment", {propertyChange:true}, [param3[1]], param2);
            param4[23] = new PropertyWatcher("_materialDumpCount", {propertyChange:true}, [param3[41], param3[73]], param2);
            param4[9] = new PropertyWatcher("_swf_stack0_close", {propertyChange:true}, [param3[12]], param2);
            param4[33] = new PropertyWatcher("_swf_stack2_no", {propertyChange:true}, [param3[66], param3[79]], param2);
            param4[25] = new PropertyWatcher("_swf_stack3_no", {propertyChange:true}, [param3[47]], param2);
            param4[11] = new PropertyWatcher("_commodityData", {propertyChange:true}, [param3[19], param3[41]], param2);
            param4[22] = new PropertyWatcher("nameLabel", null, [param3[41]], null);
            param4[31] = new PropertyWatcher("_buyPriceHeader", {propertyChange:true}, [param3[60]], param2);
            param4[16] = new PropertyWatcher("_sellPriceHeader", {propertyChange:true}, [param3[25]], param2);
            param4[30] = new PropertyWatcher("buyPriceRenderer", {propertyChange:true}, [param3[59]], param2);
            param4[15] = new PropertyWatcher("sellPriceRenderer", {propertyChange:true}, [param3[24]], param2);
            param4[24] = new PropertyWatcher("_swf_stack3_yes", {propertyChange:true}, [param3[44]], param2);
            param4[32] = new PropertyWatcher("_swf_stack2_yes", {propertyChange:true}, [param3[76], param3[63]], param2);
            param4[36] = new PropertyWatcher("_buyDataName", {propertyChange:true}, [param3[73]], param2);
            param4[19] = new PropertyWatcher("_swf_stack1_no", {propertyChange:true}, [param3[34]], param2);
            param4[37].updateParent(param1);
            param4[0].updateParent(param1);
            param4[13].updateParent(param1);
            param4[18].updateParent(param1);
            param4[27].updateParent(param1);
            param4[5].updateParent(param1);
            param4[1].updateParent(param1);
            param4[23].updateParent(param1);
            param4[9].updateParent(param1);
            param4[33].updateParent(param1);
            param4[25].updateParent(param1);
            param4[11].updateParent(param1);
            param4[11].addChild(param4[22]);
            param4[31].updateParent(param1);
            param4[16].updateParent(param1);
            param4[30].updateParent(param1);
            param4[15].updateParent(param1);
            param4[24].updateParent(param1);
            param4[32].updateParent(param1);
            param4[36].updateParent(param1);
            param4[19].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            MarketConfirmWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_MarketConfirmWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

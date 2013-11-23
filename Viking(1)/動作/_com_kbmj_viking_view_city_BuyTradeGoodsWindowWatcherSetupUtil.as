package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_BuyTradeGoodsWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_BuyTradeGoodsWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[54] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[81]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[44] = new PropertyWatcher("_buyGoodsName", {propertyChange:true}, [param3[69], param3[70]], param2);
            param4[52] = new PropertyWatcher("_swf_next", {propertyChange:true}, [param3[76]], param2);
            param4[15] = new PropertyWatcher("armorArray", {propertyChange:true}, [param3[18]], param2);
            param4[51] = new PropertyWatcher("_totalPages", {propertyChange:true}, [param3[75]], param2);
            param4[38] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[62]], param2);
            param4[42] = new PropertyWatcher("_goodsNameLabel", {propertyChange:true}, [param3[65], param3[78]], param2);
            param4[31] = new PropertyWatcher("materialArray", {propertyChange:true}, [param3[49]], param2);
            param4[48] = new PropertyWatcher("_swf_prev", {propertyChange:true}, [param3[73]], param2);
            param4[53] = new PropertyWatcher("_nextPage", {propertyChange:true}, [param3[77]], param2);
            param4[50] = new PropertyWatcher("_currentPage", {propertyChange:true}, [param3[75]], param2);
            param4[22] = new PropertyWatcher("accessortArray", {propertyChange:true}, [param3[30]], param2);
            param4[13] = new PropertyWatcher("_priceHeader", {propertyChange:true}, [param3[36], param3[27], param3[56], param3[46], param3[15]], param2);
            param4[26] = new PropertyWatcher("itemArray", {propertyChange:true}, [param3[39]], param2);
            param4[37] = new PropertyWatcher("_swf_buy", {propertyChange:true}, [param3[59]], param2);
            param4[8] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[33], param3[21], param3[52], param3[42], param3[10]], param2);
            param4[46] = new PropertyWatcher("_buyCount", {propertyChange:true}, [param3[70]], param2);
            param4[6] = new PropertyWatcher("weaponArray", {propertyChange:true}, [param3[7]], param2);
            param4[49] = new PropertyWatcher("_previousPage", {propertyChange:true}, [param3[74]], param2);
            param4[43] = new PropertyWatcher("_goodsHaveCount", {propertyChange:true}, [param3[65]], param2);
            param4[47] = new PropertyWatcher("_buyMoney", {propertyChange:true}, [param3[70]], param2);
            param4[40] = new PropertyWatcher("_haveMoney", {propertyChange:true}, [param3[63]], param2);
            param4[12] = new PropertyWatcher("priceRenderer", {propertyChange:true}, [param3[35], param3[55], param3[26], param3[14], param3[45]], param2);
            param4[54].updateParent(param1);
            param4[0].updateParent(param1);
            param4[44].updateParent(param1);
            param4[52].updateParent(param1);
            param4[15].updateParent(param1);
            param4[51].updateParent(param1);
            param4[38].updateParent(param1);
            param4[42].updateParent(param1);
            param4[31].updateParent(param1);
            param4[48].updateParent(param1);
            param4[53].updateParent(param1);
            param4[50].updateParent(param1);
            param4[22].updateParent(param1);
            param4[13].updateParent(param1);
            param4[26].updateParent(param1);
            param4[37].updateParent(param1);
            param4[8].updateParent(param1);
            param4[46].updateParent(param1);
            param4[6].updateParent(param1);
            param4[49].updateParent(param1);
            param4[43].updateParent(param1);
            param4[47].updateParent(param1);
            param4[40].updateParent(param1);
            param4[12].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            BuyTradeGoodsWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_BuyTradeGoodsWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

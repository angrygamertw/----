package 
{
    import com.kbmj.viking.view.city.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_city_SellExhibitWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_city_SellExhibitWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[19] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[27]], param2);
            param4[20] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[30]], param2);
            param4[14] = new PropertyWatcher("priceRenderer", {propertyChange:true}, [param3[20]], param2);
            param4[7] = new PropertyWatcher("exhibitData", {propertyChange:true}, [param3[13]], param2);
            param4[12] = new PropertyWatcher("nameLabelRenderer", {propertyChange:true}, [param3[18]], param2);
            param4[18] = new PropertyWatcher("_swf_exhibit", {propertyChange:true}, [param3[24]], param2);
            param4[8] = new PropertyWatcher("numberRenderer", {propertyChange:true}, [param3[14]], param2);
            param4[10] = new PropertyWatcher("buttonRenderer", {propertyChange:true}, [param3[16]], param2);
            param4[6] = new PropertyWatcher("_gold", {propertyChange:true}, [param3[9]], param2);
            param4[15] = new PropertyWatcher("_priceHeader", {propertyChange:true}, [param3[21]], param2);
            param4[19].updateParent(param1);
            param4[20].updateParent(param1);
            param4[14].updateParent(param1);
            param4[7].updateParent(param1);
            param4[12].updateParent(param1);
            param4[18].updateParent(param1);
            param4[8].updateParent(param1);
            param4[10].updateParent(param1);
            param4[6].updateParent(param1);
            param4[15].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SellExhibitWindow.watcherSetupUtil = new _com_kbmj_viking_view_city_SellExhibitWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

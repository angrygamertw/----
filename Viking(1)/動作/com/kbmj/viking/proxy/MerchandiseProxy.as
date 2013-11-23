package com.kbmj.viking.proxy
{
    import com.kbmj.viking.vo.*;

    public class MerchandiseProxy extends LoaderProxy
    {
        public static const NAME:String = "MerchandiseProxy";
        private static const PROPERTY_TABLE:Object = {masterType:"master_type", sellingPrice:"selling_price", buyingPrice:"buying_price", merchandiseId:"id"};

        public function MerchandiseProxy()
        {
            super(NAME);
            return;
        }// end function

        public function merchandiseFactory(param1:Object) : MerchandiseVO
        {
            var _loc_3:String = null;
            var _loc_4:MasterProxy = null;
            var _loc_2:* = new MerchandiseVO();
            for (_loc_3 in PROPERTY_TABLE)
            {
                
                _loc_2[_loc_3] = param1[PROPERTY_TABLE[_loc_3]];
            }
            _loc_4 = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
            _loc_2.masterVO = _loc_4.getMasterVO(param1.master_type, param1.master_id);
            return _loc_2;
        }// end function

    }
}

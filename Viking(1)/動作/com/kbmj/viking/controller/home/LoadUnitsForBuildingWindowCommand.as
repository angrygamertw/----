package com.kbmj.viking.controller.home
{
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.home.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class LoadUnitsForBuildingWindowCommand extends SimpleCommand
    {
        public static const NAME:String = "LoadUnitsForBuildingWindowCommand";

        public function LoadUnitsForBuildingWindowCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_3:WarriorHouseProxy = null;
            var _loc_4:FortProxy = null;
            var _loc_5:HomeProxy = null;
            var _loc_2:* = param1.getBody() as BuildingVO;
            switch(_loc_2.buildingMasterId)
            {
                case BuildingMasterVO.WARRIOR_HOUSE:
                {
                    _loc_3 = WarriorHouseProxy(facade.retrieveProxy(WarriorHouseProxy.NAME));
                    _loc_3.nowLiving(_loc_2.buildingId);
                    break;
                }
                case BuildingMasterVO.FORT:
                {
                    _loc_4 = FortProxy(facade.retrieveProxy(FortProxy.NAME));
                    _loc_4.nowFort(_loc_2.buildingId);
                    break;
                }
                case BuildingMasterVO.SQUARE:
                {
                    _loc_5 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
                    _loc_5.loadMercenaries();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}

package com.kbmj.viking.controller.selectUnit
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.allMap.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class StartSelectUnitCompleteCommand extends SimpleCommand
    {
        public static const START_SELECT_UNIT:String = NAME + "/notes/StartSelectUnit";
        public static const NAME:String = "StartSelectUnitCompleteCommand";

        public function StartSelectUnitCompleteCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            var _loc_3:HomeProxy = null;
            var _loc_4:AllMapProxy = null;
            var _loc_5:PlayerProxy = null;
            var _loc_6:Boolean = false;
            var _loc_7:MasterProxy = null;
            var _loc_8:ColonyMasterVO = null;
            var _loc_2:* = SelectUnitProxy(facade.retrieveProxy(SelectUnitProxy.NAME));
            _loc_3 = HomeProxy(facade.retrieveProxy(HomeProxy.NAME));
            _loc_4 = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            _loc_5 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            switch(_loc_2.selectUnitFor)
            {
                case SelectUnitProxy.FOR_ALL_MAP:
                {
                    _loc_2.resource = _loc_3.homeVO.resourceVO;
                    _loc_6 = _loc_5.playerVO.guild && _loc_5.playerVO.guild.id == _loc_4.cmdGuildId;
                    if (_loc_4.cmdObjectId != AllMapCommandVO.OBJ_NONE && _loc_4.cmdObjectId != AllMapCommandVO.OBJ_TERRITORY && _loc_4.cmdObjectId != AllMapCommandVO.OBJ_SEIRYU && _loc_4.cmdObjectId != AllMapCommandVO.OBJ_SUZAKU && _loc_4.cmdObjectId != AllMapCommandVO.OBJ_BYAKKO && _loc_4.cmdObjectId != AllMapCommandVO.OBJ_GENBU && _loc_4.cmdInvade && !_loc_6)
                    {
                        _loc_2.maxNumberOfUnits = 4;
                    }
                    else
                    {
                        _loc_2.maxNumberOfUnits = 5;
                    }
                    break;
                }
                case SelectUnitProxy.FOR_EVIL_POINT:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                case SelectUnitProxy.FOR_COLONY:
                {
                    _loc_7 = MasterProxy(facade.retrieveProxy(MasterProxy.NAME));
                    _loc_8 = _loc_7.getMasterVO(MasterProxy.COLONY_MASTER, _loc_3.colonyId) as ColonyMasterVO;
                    _loc_2.maxNumberOfUnits = _loc_3.colonyBattleType == 1 ? (_loc_8.newOffensiveReinforcements) : (_loc_8.offensiveReinforcements);
                    break;
                }
                case SelectUnitProxy.FOR_EXPEDITION:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                case SelectUnitProxy.FOR_EXPEDITION2:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                case SelectUnitProxy.FOR_EXPEDITION3:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                case SelectUnitProxy.FOR_CONTINUATION:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                case SelectUnitProxy.FOR_RAID:
                {
                    _loc_2.maxNumberOfUnits = 3;
                    break;
                }
                case SelectUnitProxy.FOR_SEND_ARMY:
                {
                    _loc_2.maxNumberOfUnits = 1;
                    _loc_2.loadArmyUnit();
                    return;
                }
                case SelectUnitProxy.FOR_SHAM_BATTLE:
                case SelectUnitProxy.FOR_MATCH_BATTLE:
                case SelectUnitProxy.FOR_SPECIAL_MATCH_BATTLE:
                {
                    _loc_2.maxNumberOfUnits = 5;
                    break;
                }
                default:
                {
                    break;
                }
            }
            sendNotification(START_SELECT_UNIT);
            return;
        }// end function

    }
}

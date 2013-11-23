package com.kbmj.viking.controller
{
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.proxy.city.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.selectUnit.*;
    import com.kbmj.viking.proxy.tactics.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.command.*;

    public class PrepModelCommand extends SimpleCommand
    {

        public function PrepModelCommand()
        {
            return;
        }// end function

        override public function execute(param1:INotification) : void
        {
            facade.registerProxy(new ErrorReportProxy());
            facade.registerProxy(new MultipleLoadProxy());
            facade.registerProxy(new TacticsProxy());
            facade.registerProxy(new BattleLogicProxy());
            facade.registerProxy(new TacticsOrderProxy());
            facade.registerProxy(new UnitProxy());
            facade.registerProxy(new MagicProxy());
            facade.registerProxy(new HealProxy());
            facade.registerProxy(new ImageProxy());
            facade.registerProxy(new ItemProxy());
            facade.registerProxy(new RaidTimerProxy());
            facade.registerProxy(new SelectUnitProxy());
            facade.registerProxy(new AnimationProxy());
            facade.registerProxy(new SoundProxy());
            facade.registerProxy(new AiProxy());
            facade.registerProxy(new MapProxy());
            facade.registerProxy(new ResourceProxy());
            facade.registerProxy(new BuildingProxy());
            facade.registerProxy(new HomeProxy(param1.getBody() as Viking));
            facade.registerProxy(new ProductionProxy());
            facade.registerProxy(new ConstructionProxy());
            facade.registerProxy(new GatheringProxy());
            facade.registerProxy(new AnnouncementProxy());
            facade.registerProxy(new TaskProxy());
            facade.registerProxy(new MasterProxy());
            facade.registerProxy(new SkillProxy());
            facade.registerProxy(new WarriorHouseProxy());
            facade.registerProxy(new FortProxy());
            facade.registerProxy(new HomeAllUnitProxy());
            facade.registerProxy(new HomeAllSleepUnitProxy());
            facade.registerProxy(new CityProxy());
            facade.registerProxy(new GuildProxy());
            facade.registerProxy(new MerchandiseProxy());
            facade.registerProxy(new MarketProxy());
            facade.registerProxy(new TempleProxy());
            facade.registerProxy(new BarProxy());
            facade.registerProxy(new PlayerProxy());
            facade.registerProxy(new GoodsProxy());
            facade.registerProxy(new ConfigProxy());
            facade.registerProxy(new AllMapProxy());
            facade.registerProxy(new UnitImageMasterProxy());
            facade.registerProxy(new SakuraProxy());
            return;
        }// end function

    }
}

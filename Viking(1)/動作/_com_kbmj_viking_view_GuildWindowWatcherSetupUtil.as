package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_GuildWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_GuildWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[42] = new PropertyWatcher("rank_renderer2", {propertyChange:true}, [param3[55]], param2);
            param4[55] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[75]], param2);
            param4[0] = new PropertyWatcher("_swf_window", {propertyChange:true}, [param3[0]], param2);
            param4[40] = new PropertyWatcher("application_detail_renderer", {propertyChange:true}, [param3[53]], param2);
            param4[48] = new PropertyWatcher("_leyLines", {propertyChange:true}, [param3[63]], param2);
            param4[6] = new PropertyWatcher("guildName", {propertyChange:true}, [param3[8]], param2);
            param4[15] = new PropertyWatcher("GuildData", {propertyChange:true}, [param3[19]], param2);
            param4[16] = new PropertyWatcher("comment", {propertyChange:true}, [param3[19]], null);
            param4[54] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[72]], param2);
            param4[8] = new PropertyWatcher("guildMemberCount", {propertyChange:true}, [param3[12]], param2);
            param4[11] = new PropertyWatcher("guildLevelMaxPropertiesCount", {propertyChange:true}, [param3[13]], param2);
            param4[23] = new PropertyWatcher("rank_renderer", {propertyChange:true}, [param3[30]], param2);
            param4[18] = new PropertyWatcher("viewDataPlayers", {propertyChange:true}, [param3[24]], param2);
            param4[10] = new PropertyWatcher("guildAllTerritoriesCount", {propertyChange:true}, [param3[13]], param2);
            param4[13] = new PropertyWatcher("leyLinesCount", {propertyChange:true}, [param3[14]], param2);
            param4[37] = new PropertyWatcher("_applicationData", {propertyChange:true}, [param3[49]], param2);
            param4[29] = new PropertyWatcher("_guildArmyUnits", {propertyChange:true}, [param3[38]], param2);
            param4[51] = new PropertyWatcher("_swf_tab2", {propertyChange:true}, [param3[69]], param2);
            param4[21] = new PropertyWatcher("positionRenderer", {propertyChange:true}, [param3[28]], param2);
            param4[42].updateParent(param1);
            param4[55].updateParent(param1);
            param4[0].updateParent(param1);
            param4[40].updateParent(param1);
            param4[48].updateParent(param1);
            param4[6].updateParent(param1);
            param4[15].updateParent(param1);
            param4[15].addChild(param4[16]);
            param4[54].updateParent(param1);
            param4[8].updateParent(param1);
            param4[11].updateParent(param1);
            param4[23].updateParent(param1);
            param4[18].updateParent(param1);
            param4[10].updateParent(param1);
            param4[13].updateParent(param1);
            param4[37].updateParent(param1);
            param4[29].updateParent(param1);
            param4[51].updateParent(param1);
            param4[21].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            GuildWindow.watcherSetupUtil = new _com_kbmj_viking_view_GuildWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

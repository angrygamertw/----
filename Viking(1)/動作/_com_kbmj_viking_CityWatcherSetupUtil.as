package 
{
    import com.kbmj.viking.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_CityWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_CityWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("_playerExp", {propertyChange:true}, [param3[8]], param2);
            param4[1] = new PropertyWatcher("_swf_faction", {propertyChange:true}, [param3[1]], param2);
            param4[2] = new PropertyWatcher("_swf_rank2", {propertyChange:true}, [param3[2]], param2);
            param4[0] = new PropertyWatcher("_swf_base", {propertyChange:true}, [param3[0]], param2);
            param4[5] = new PropertyWatcher("silver", {propertyChange:true}, [param3[4]], param2);
            param4[3] = new PropertyWatcher("playerVO", {propertyChange:true}, [param3[3], param3[7]], param2);
            param4[8] = new PropertyWatcher("playerName", {propertyChange:true}, [param3[7]], null);
            param4[4] = new PropertyWatcher("gold", {propertyChange:true}, [param3[3]], null);
            param4[11] = new PropertyWatcher("_swf_npc", {propertyChange:true}, [param3[9]], param2);
            param4[10] = new PropertyWatcher("_nextRankExp", {propertyChange:true}, [param3[8]], param2);
            param4[6] = new PropertyWatcher("pureGold", {propertyChange:true}, [param3[5]], param2);
            param4[12] = new PropertyWatcher("EmbedSwfOnmyouOff", {propertyChange:true}, [param3[10], param3[11], param3[12], param3[13], param3[14], param3[15]], param2);
            param4[7] = new PropertyWatcher("_swf_rank", {propertyChange:true}, [param3[6]], param2);
            param4[9].updateParent(param1);
            param4[1].updateParent(param1);
            param4[2].updateParent(param1);
            param4[0].updateParent(param1);
            param4[5].updateParent(param1);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[8]);
            param4[3].addChild(param4[4]);
            param4[11].updateParent(param1);
            param4[10].updateParent(param1);
            param4[6].updateParent(param1);
            param4[12].updateParent(param1);
            param4[7].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            City.watcherSetupUtil = new _com_kbmj_viking_CityWatcherSetupUtil;
            return;
        }// end function

    }
}

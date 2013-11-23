package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_SkillLearnWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_SkillLearnWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[8] = new PropertyWatcher("skills", {propertyChange:true}, [param3[5], param3[12]], param2);
            param4[15] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[13]], param2);
            param4[21] = new PropertyWatcher("_swf_close", {propertyChange:true}, [param3[19]], param2);
            param4[0] = new PropertyWatcher("_swf_close_window", {propertyChange:true}, [param3[0]], param2);
            param4[9] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[6]], param2);
            param4[3] = new PropertyWatcher("selectUnit", {propertyChange:true}, [param3[2], param3[3]], param2);
            param4[6] = new PropertyWatcher("skillPoint", {propertyChange:true}, [param3[3]], null);
            param4[4] = new PropertyWatcher("name", {propertyChange:true}, [param3[2]], null);
            param4[11] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[8]], param2);
            param4[17] = new PropertyWatcher("detailRendererTutorial", {propertyChange:true}, [param3[15]], param2);
            param4[8].updateParent(param1);
            param4[15].updateParent(param1);
            param4[21].updateParent(param1);
            param4[0].updateParent(param1);
            param4[9].updateParent(param1);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[6]);
            param4[3].addChild(param4[4]);
            param4[11].updateParent(param1);
            param4[17].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SkillLearnWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_SkillLearnWindowWatcherSetupUtil;
            return;
        }// end function

    }
}

package com.kbmj.viking.view.city
{
    import com.kbmj.viking.lib.*;
    import flash.events.*;
    import mx.core.*;

    public class GuildRemoveMemberWindow extends GuildMasterWindow
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        public static const REMOVE_MEMBER:String = "removeMember";

        public function GuildRemoveMemberWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:GuildMasterWindow});
            mx_internal::_document = this;
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            super.initialize();
            return;
        }// end function

        override public function btnStyle(param1:Object) : String
        {
            if (param1.id == playerVO.playerId || param1.guild_master)
            {
                return "RemoveMemberOff";
            }
            return "RemoveMember";
        }// end function

        override protected function get title() : String
        {
            return Utils.i18n("guildRemoveMemberExpulsion");
        }// end function

        override protected function get description() : String
        {
            return Utils.i18n("guildRemoveMemberCanExpulsion");
        }// end function

        override public function onAppointment(param1:Object) : void
        {
            appointmentPlayerId = param1.id;
            appointmentPlayerName = param1.player_name;
            dispatchEvent(new Event(REMOVE_MEMBER));
            return;
        }// end function

    }
}

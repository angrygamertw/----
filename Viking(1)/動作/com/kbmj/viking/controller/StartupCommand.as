package com.kbmj.viking.controller
{
    import org.puremvc.as3.patterns.command.*;

    public class StartupCommand extends MacroCommand
    {

        public function StartupCommand()
        {
            return;
        }// end function

        override protected function initializeMacroCommand() : void
        {
            addSubCommand(PrepModelCommand);
            addSubCommand(PrepViewCommand);
            addSubCommand(LoadFirstTierMastersCommand);
            return;
        }// end function

    }
}

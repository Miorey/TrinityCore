/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
Name: test_commandscript
%Complete: 100
Comment: All achievement related commands
Category: commandscripts
EndScriptData */

#include "ScriptMgr.h"
#include "AchievementMgr.h"
#include "Chat.h"
#include "Language.h"
#include "Player.h"
#include "RBAC.h"

using namespace Trinity::ChatCommands;

class test_commandscript : public CommandScript
{
public:
    test_commandscript() : CommandScript("test_commandscript") {}

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable commandTable =
                {
                        { "test pass", HandleTestCommand, LANG_TEST_PASSWORD ,rbac::RBAC_PERM_COMMAND_TEST_PASS, Console::No },
                };
        return commandTable;
    }

    static bool HandleTestCommand(ChatHandler* handler, const char* args)
    {

        Player* me = handler->GetPlayer();
        me->Say("test command?", LANG_UNIVERSAL);
        return true;
    }

};

void AddSC_test_commandscript()
{
    new test_commandscript();
}
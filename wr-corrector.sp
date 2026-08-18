#pragma semicolon 1
#pragma newdecls required

#include <sourcemod>
#include <shavit>

#define PLUGIN_VERSION "1.0"

public Plugin myinfo =
{
	name = "HUD Relabel",
	author = "luna",
	description = "Relabels shavit-hud's topleft HUD text (WR -> SR, Best -> PB)",
	version = PLUGIN_VERSION,
	url = ""
};

public Action Shavit_OnTopLeftHUD(int client, int target, char[] message, int maxlen, int track, int style)
{
	ReplaceString(message, maxlen, "WR:", "SR:");
	ReplaceString(message, maxlen, "Best:", "PB:");

	return Plugin_Changed;
}

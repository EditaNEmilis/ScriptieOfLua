# POLYTORIA

**Polytoria** is a roblox-like clone using the Godot Engine. Able to create and script games with Lua.

## Lua

Similar scripting system to *Roblox*, but while using *Luau* for server-client architecture and synchronized state replication.

### Scripts

**BaseScript**

The base class of all script types *(eg. ScriptInstance,  LocalScript, ModuleScript)*. They can be parented to any instance.

**ScriptInstance**

Runs the Lua code on the server.

Classes and functions are only callable through this script type.

**LocalScript**

Runs locally for each player. It can only see what the player can see.

Classes and functions are only callable through this script type.

**ModuleScript**

Specialized scripts to hold data that can be accessed by other scripts using the `require()` function.

### Links

Links for more info:

* [Polytoria Scripting Documentation](https://docs.polytoria.com/)
* [GitHub Repo](https://github.com/Polytoria/polytoria-game)
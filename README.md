# Blabbr

A Lua plugin for Teamspeak 3 that will show the name of the person speaking on the chat channel.

## Getting Started

Download this repository. You only need the `blabbr` directory containing the Lua scripts.

These instructions have been tested on Windows 10. The plugin should work on Linux and Mac but the plugins directory will be in a different location (the plugin has been tested by other users).

## Prerequisites

You need to install the Lua plugin in Teamspeak before using this code.

This can be installed from the application Tools menu > Options > Addons > Browse online.

Type `lua` in the search field to find the lua plugin. Click on this and then click on the Install button. Once installed, make sure the Lua plugin is enabled and click Reload.

![Lua addons](media/ts3-addons.png)

Verify that the following directory exists (replace `your-user-name` with your actual user name on Windows and Mac):

### Windows plugins directory

`C:\Users\your-user-name\AppData\Roaming\TS3Client\plugins\lua_plugin`

### Linux plugins directory

`~/.ts3client/plugins/lua_plugin`

### Mac plugins directory

`/Users/your-user-name/Library/Application Support/TeamSpeak 3/plugins/lua_plugin`

It should have some files in it from the installation of the Lua plugin. If you don't see any files there, go back to Lua Plugin > Settings and try ticking and unticking the testmodule.

## Installing

Copy the `blabbr` directory containing the Lua scripts to the lua_plugin directory.

![Lua plugins directory](media/explorer.png)

On the Lua Plugin section of Teamspeak > Options > Addons, click Settings and tick the checkbox for `blabbr`, and click Reload.

![Lua modules](media/ts3-lua-modules.png)

## Author

* [tunasync](https://github.com/tunasync)

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE](LICENSE) file for details.

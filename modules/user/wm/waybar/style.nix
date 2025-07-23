{ config, pkgs, lib, ... }:
{
    programs.waybar = {
        style = ''
            * {
                border: none;
                border-radius: 0;
                font-family: "Fira Sans Semibold", FontAwesome, Roboto, Helvetica, Arial, sans-serif;
                font-size: 11pt;
                min-height: 0;
            }
            window#waybar {
                opacity: 0.9;
                background: rgba(30, 31, 41, 230);
                color: #f8f8f2;
                border-bottom: 2px solid #282a36;
            }
            #workspaces button {
                padding: 0 10px;
                background: #282a36;
                color: #f8f8f2;
            }
            #workspaces button:hover {
                box-shadow: inherit;
                text-shadow: inherit;
                background-image: linear-gradient(0deg, #44475a, rgba(30, 31, 41, 230));
            }
            #workspaces button.active {
                background-image: linear-gradient(0deg, #282a36, #44475a);
            }
            #workspaces button.urgent {
                background-image: linear-gradient(0deg, #ff5555, rgba(30, 31, 41, 230));
            }
            #taskbar button.active {
                background-image: linear-gradient(0deg, #44475a, rgba(30, 31, 41, 230));
            }
            #custom-exit {
                margin: 0px 20px 0px 0px;
                padding: 0px;
                color: #FFFFFF;
            }
        '';
    };
}

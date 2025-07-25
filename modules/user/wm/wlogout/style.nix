{ config, ... }:
{
    xdg.configFile."wlogout/style.css".text = ''
        * {
            font-family: "Fira Sans Semibold", FontAwesome, Roboto, Helvetica, Arial, sans-serif;
            background-image: none;
            transition: 20ms;
            box-shadow: none;
        }

        window {
            background-color: rgba(12, 12, 12, 0.8);
        }

        button {
            color: #FFFFFF;
            font-size:20px;

            background-repeat: no-repeat;
            background-position: center;
            background-size: 25%;
            border-style: solid;
            border: 3px solid #FFFFFF;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

        }

        button:focus,
        button:active,
        button:hover {
            color: #FFFFFF;
            border: 3px solid #FFFFFF;
        }

        /* 
        ----------------------------------------------------- 
        Buttons
        ----------------------------------------------------- 
        */

        #lock {
            margin: 10px;
            border-radius: 20px;
            background-image: image(url("${config.home.homeDirectory}/.dotfiles/modules/user/wm/wlogout/icons/lock.png"));
        }

        #logout {
            margin: 10px;
            border-radius: 20px;
            background-image: image(url("${config.home.homeDirectory}/.dotfiles/modules/user/wm/wlogout/icons/logout.png"));
        }

        #shutdown {
            margin: 10px;
            border-radius: 20px;
            background-image: image(url("${config.home.homeDirectory}/.dotfiles/modules/user/wm/wlogout/icons/shutdown.png"));
        }

        #reboot {
            margin: 10px;
            border-radius: 20px;
            background-image: image(url("${config.home.homeDirectory}/.dotfiles/modules/user/wm/wlogout/icons/reboot.png"));
        }
    '';
}

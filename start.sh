#!/data/data/com.termux/usr/bin/bash
echo -e "\e[1;35m
L)                       ##             S)ssss  h)              l)L  l)L  
L)                                     S)    ss h)               \e[1;93ml)   l)  
L)        o)OOO   g)GGG  i) n)NNNN      S)ss    \e[1;32mh)HHHH  e)EEEEE  l)   l)  
L)       o)   OO g)   GG i) n)   NN         S)  h)   \e[1;96mHH e)EEEE   l)   l)  
L)       o)   OO g)   GG i) n)   NN    S)    ss h)   HH e)       l)   l)  
L)llllll  o)OOO   g)GGGG i) n)   NN     S)ssss  h)   HH  e)EEEE l)LL l)LL 
                      GG                                                  
                 g)GGGG                                                   
\e[1;35m
Coder::Yell Phone Naing
Script::BASH
Github::https://www.github.com/T-Tools
Note  ::Don't Forget Username And Password,If you forgot you can't access Termux again
\e[0m"
read -p $'\e[31mEnter Username You Wanna Use To Login :\e[0m ' username
read -p $'\e[32m Enter  Password You Wanna Use To Login :\e[0m ' password
cd 
cd ..
cd usr/etc
rm motd
rm bash.bashrc
cat <<LOGIN>bash.bashrc
trap '' 2
echo -e "\e[1;32m
                ──▄▀▀▀▄───────────────
                Please Login To Continue
                ──█───█───────────────
                ─███████─────────▄▀▀▄─
                ░██─▀─██░░█▀█▀▀▀▀█░░█░
                ░███▄███░░▀░▀░░░░░▀▀░░
\e[0m"
read -p $'\e[32m                Enter Your Username:\e[0m ' user
read -s -p $'\e[32m                Enter Your Username:\e[0m ' pass
if [[ \$pass == $password && \$user == $username ]]; then

PS1='\033[1;32m
\a┏\a  \033[1;32m
\a┏\a━\a┃ Youn Professional Terminal ┃--┃ \@ ┃---| \d ┃
\a\a┃\a \a\033[1;32m┗━ $user ━┛\033[1;36m
\a┗\a┳\a━\a📂\033[1;32m\w\a📂
┗ 👉'
shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist
else
echo ""
echo -e "\e[1;31m  Your Password Is Incorrect
Bye Bye\e[0m"
sleep 3
exit
fi
trap 2
LOGIN
echo -e "\e[1;32m Your Shell was changed,Now exit from Termux and restart it again\e[0m"

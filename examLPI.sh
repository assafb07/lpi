#!/bin/bash
#Created by Andrey Pautov
#1200km@gmail.com
#All questions of exam in this code are functions.
#Version 2.7
#list of all queistions







#########################################################################################################################
function qst1() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Hard disks have a motor and moving parts, solid state disks do not."
r_a2="Solid state disks provide faster access to stored data than hard disks."
r_a3=""
function lines() {
declare -A messages=(
[0]="Hard disks have a motor and moving parts, solid state disks do not."
[1]="Hard disks can fail due to physical damage, while solid state disks cannot fail."
[2]="Solid state disks can store many times as much data as hard disk drives."
[3]="/dev/sda is a hard disk device while /dev/ssda is a solid state disk."
[4]="Solid state disks provide faster access to stored data than hard disks."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:1\e[0m"
echo -e "\e[0;36mWhat are the differences between hard disk drives and solid state disks? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 1\e[0m"
echo -e "\e[0;36mWhat are the differences between hard disk drives and solid state disks? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
####################################################################################################################

function qst2() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="In the PTR record for 165.100.51.198.in-addr.arpa."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="In the A record for 165.100.51.198.ipv4.arpa."
[1]="In the PTR record for 165.100.51.198.in-addr.arpa."
[2]="In the RNAME record for 198-51-100-165.rev.arpa."
[3]="In the ARPA record for 165.100.51.198.rev."
[4]="In the REV record for arpa.in-addr.198.51.100.165."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:2\e[0m"
echo -e "\e[0;36mReverse DNS assigns hostnames to IP addresses. How is the name of the IP address 198.51.100.165 stored on a DNS server?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 2\e[0m"
echo -e "\e[0;36mReverse DNS assigns hostnames to IP addresses. How is the name of the IP address 198.51.100.165 stored on a DNS server?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#####################################################################################################################
function qst3() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The SATA bus"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="The RAM bus"
[1]="The NUMA bus"
[2]="The CPU bus"
[3]="The SATA bus"
[4]="The Auto bus"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:3\e[0m"
echo -e "\e[0;36mWhich of the following types of bus can connect hard disk drives with the motherboard?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 3\e[0m"
echo -e "\e[0;36mWhich of the following types of bus can connect hard disk drives with the motherboard?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
####################################################################################################################
function qst4() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="CentOS"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Ubuntu Linux LTS"
[1]="Raspbian"
[2]="Debian GNU/Linux"
[3]="CentOS"
[4]="openSUSE"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:4\e[0m"
echo -e "\e[0;36mMembers of a team already have experience using Red Hat Enterprise Linux. For a small hobby project, the team wants to set up a Linux server without paying for a subscription. Which of the following Linux distributions allows the team members to apply as much of their Red Hat Enterprise Linux knowledge as possible?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 4\e[0m"
echo -e "\e[0;36mMembers of a team already have experience using Red Hat Enterprise Linux. For a small hobby project, the team wants to set up a Linux server without paying for a subscription. Which of the following Linux distributions allows the team members to apply as much of their Red Hat Enterprise Linux knowledge as possible?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##########################################################################################################################
function qst5() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Running processes, ordered by CPU or RAM consumption."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Existing files, ordered by their size."
[1]="Running processes, ordered by CPU or RAM consumption."
[2]="User accounts, ordered by the number of logins."
[3]="User groups, ordered by the number of members."
[4]="User accounts, ordered by the number of files."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:5\e[0m"
echo -e "\e[0;36mWhat information can be displayed by top?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 5\e[0m"
echo -e "\e[0;36mWhat information can be displayed by top?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#######################################################################################################################
function qst6() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="host"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="dnsname"
[1]="dns"
[2]="query"
[3]="host"
[4]="iplookup"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:6\e[0m"
echo -e "\e[0;36mWhich of the following commands can be used to resolve a DNS name to an IP address?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 6\e[0m"
echo -e "\e[0;36mWhich of the following commands can be used to resolve a DNS name to an IP address?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
########################################################################################################################
function qst7() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="total used free shared buff/cache available Mem:\n16123128 12565680 2011624 412128 1545824 7180416"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="21:04:15 up 14 days, 7:43, 3 users, load average: 0.89, 1.00, 0.99"
[1]="avg-cpu:   %user    %nice    %system    %iowait    %steal    %idle\n                       34.04      0.03       13.38          1.06          0.00      50.99"
[2]="Filesystem                           Size        Used        Avail      Use%       Mounted on\n      /dev/mapper/vg_ssd-root    25G         20G         3.6G      85%"    
[3]="1.8M tmp"
[4]="total used free shared buff/cache available Mem:\n16123128 12565680 2011624 412128 1545824 7180416"


)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:7\e[0m"
echo -e "\e[0;36mWhich of the following outputs comes from the command free?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo -e "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 7\e[0m"
echo -e "\e[0;36mWhich of the following outputs comes from the command free?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo -e "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
####################################################################################################################
function qst8() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It displays the content of the Linux kernel’s ring buffer."
r_a2="It might not display older information because it was overwritten by newer information."
r_a3=""
function lines() {
declare -A messages=(
[0]="It traces the execution of a command and shows each step the program carries out."
[1]="It sends messages to the command lines of all current user sessions."
[2]="It displays the content of the Linux kernel’s ring buffer."
[3]="It immediately outputs all new messages written to the system journal."
[4]="It might not display older information because it was overwritten by newer information."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:8\e[0m"
echo -e "\e[0;36mWhat is true about the dmesg command? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 8\e[0m"
echo -e "\e[0;36mWhat is true about the dmesg command? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#########################################################################################################################
function qst9() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="root tty2 Wed May 17 21:11 – 21:11 (00:00)"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="1 ls\n:   :2 cat text.txt\n:   :3 logout"
[1]="Password for user last changed at Sat Mar 31 16:38:57 EST 2018"
[2]="Last login: Fri Mar 23 10:56:39 2018 from server.example.com"
[3]="EXT4-fs (dm-7): mounted filesystem with ordered data modOpts: (null)"
[4]="root tty2 Wed May 17 21:11 – 21:11 (00:00)"
)
for key in {0..4};do
echo  ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:9\e[0m"
echo -e "\e[0;36mWhich of the following outputs could stem from the command last?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo -e "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
echo "$answ"
echo "$r_answ"
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [ "$answ" = "$r_answ" ]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 9\e[0m"
echo -e "\e[0;36mWhich of the following outputs could stem from the command last?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo -e "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
####################################################################################################################
function qst10() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="0"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="1"
[1]="-1"
[2]="255"
[3]="65536"
[4]="0"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:10\e[0m"
echo -e "\e[0;36mWhat is the UID of the user root?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 10\e[0m"
echo -e "\e[0;36mWhat is the UID of the user root?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#####################################################################################################################
function qst11() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="-rw-r-xr--"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="drw-r-xr--"
[1]="d-wxr-x--"
[2]="-wxr-x--x"
[3]="rwxrw---x"
[4]="-rw-r-xr--"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:11\e[0m"
echo -e "\e[0;36mWhich permissions are set on a regular file once the permissions have been modified with the command chmod 654 file.txt?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 11\e[0m"
echo -e "\e[0;36mWhich permissions are set on a regular file once the permissions have been modified with the command\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
############################################################################################################################
function qst12() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Each file is owned by exactly one user and one group."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Each file is owned by exactly one user and one group."
[1]="The owner of a file always has full permissions when accessing the file."
[2]="The user owning a file must be a member of the file’s group."
[3]="When a user is deleted, all files owned by the user disappear."
[4]="The owner of a file cannot be changed once it is assigned to an owner."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:12\e[0m"
echo -e "\e[0;36mWhat is true about the owner of a file?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 12\e[0m"
echo -e "\e[0;36mWhat is true about the owner of a file?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
########################################################################################################################
function qst13() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="rwxrwxrwt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[4]="rwxrwxrwt"
[0]="------rwX"
[1]="rwSrw-rw-"
[2]="rwxrwS---"
[3]="r-xr-X—t"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:13\e[0m"
echo -e "\e[0;36mWhich of the following permissions are set on the /tmp/ directory?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 13\e[0m"
echo -e "\e[0;36mWhich of the following permissions are set on the /tmp/ directory?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
################################################################################################################
function qst14() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="useradd –m tux"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="useradd –m tux"
[1]="usercreate tux"
[2]="useradd –o default tux"
[3]="passwd –a tux"
[4]="defaultuser tux"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:14\e[0m"
echo -e "\e[0;36mWhich command adds the new user tux and creates the user’s home directory with default configuration files?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 14\e[0m"
echo -e "\e[0;36mWhich command adds the new user tux and creates the user’s home directory with default configuration files?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}

#####################################################################################################################
function qst15() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The numerical user ID"
r_a2="The username"
r_a3="The user\s default shell"
function lines() {
declare -A messages=(
[0]="The user’s storage space limit"
[1]="The numerical user ID"
[2]="The username"
[3]="The encrypted password"
[4]="The user\s default shell"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:15\e[0m"
echo -e "\e[0;36mWhat information is stored in /etc/passwd? (Choose three.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 15\e[0m"
echo -e "\e[0;36mWhat information is stored in /etc/passwd? (Choose three.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
####################################################################################################################
#Created by Andrey Pautov
#1200km@gmail.com

function qst16() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="-z"
r_a2="-j"
r_a3=""
function lines() {
declare -A messages=(
[0]="-bz"
[1]="-z"
[2]="-g"
[3]="-j"
[4]="-z2"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:16\e[0m"
echo -e "\e[0;36mWhich of the following tar options handle compression? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 16\e[0m"
echo -e "\e[0;36mWhich of the following tar options handle compression? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##############################################################################################################3
function qst17() {
echo -e "\e[0;36mQUESTION:17\e[0m"
echo -e  "\e[0;36mFILL BLANK\e[0m"
echo "What keyword is used in a shell script to begin a loop? (Specify one keyword only, without any additional information.)"
read answ
if [ $answ = "for" ]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION:17\e[0m"
echo -e "\e[0;32m for\e[0m is keyword is used in a shell script to begin a loop."
}

#####################################################################################################################
function qst18() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="tar –cf work.tar ./work/"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="tar --new work.tar ./work/"
[1]="tar –cf work.tar ./work/"
[2]="tar –create work.tgz –content ./work/"
[3]="tar work.tar < ./work/"
[4]="tar work > work.tar"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:18\e[0m"
echo -e "\e[0;36mWhich of the following commands creates an archive file work.tar from the contents of the directory ./work/?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 18\e[0m"
echo -e "\e[0;36mWhich of the following commands creates an archive file work.tar from the contents of the directory ./work/?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##############################################################################################################################
function qst19() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="q"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="l"
[1]="x"
[2]="e"
[3]="q"
[4]="!"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:19\e[0m"
echo -e "\e[0;36mWhich of the following keys can be pressed to exit less?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 19\e[0m"
echo -e "\e[0;36mWhich of the following keys can be pressed to exit less?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##########################################################################################################################
function qst20() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="./test.sh"
r_a2="bash test.sh"
r_a3=""
function lines() {
declare -A messages=(
[0]="run test.sh"
[1]="\${test.sh}"
[2]="cmd ./test.sh"
[3]="./test.sh"
[4]="bash test.sh"
)
for key in {0..4};do
echo  ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:20\e[0m"
echo -e "\e[0;36mThe current directory contains the following file:\n-rwxr-xr-x 1 root root 859688 Feb 7 08:15 test.sh Given that the file is a valid shell script,\nhow can this script be executed? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 20\e[0m"
echo -e "\e[0;36mThe current directory contains the following file:\n-rwxr-xr-x 1 root root 859688 Feb 7 08:15 test.sh Given that the file is a valid shell script,\nhow can this script be executed? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}

######################################################################################################################
function qst21() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="export-logs | sort"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="export-logs < sort"
[1]="export-logs > sort"
[2]="export-logs & sort"
[3]="export-logs | sort"
[4]="export-logs <> sort"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:21\e[0m"
echo -e "\e[0;36mWhich of the following commands sorts the output of the command export-logs?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 21\e[0m"
echo -e "\e[0;36mWhich of the following commands sorts the output of the command export-logs?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##################################################################################################################
function qst22() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="a.txt\n b.txt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="*.txt"
[1]="a b"
[2]="c.cav"
[3]="a.txt"
[4]="a.txt\n b.txt"

)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:22\e[0m"
echo -e "\e[0;36mA directory contains the following files: a.txt, b.txt, c.cav. What would be the output of the following shell script?\n for file in *.txt;do\necho $file\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo -e "${chars[$cnt]} :${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 22\e[0m"
echo -e "\e[0;36mA directory contains the following files: a.txt, b.txt, c.cav. What would be the output of the following shell script? for file in *.txt ****do****echo $file\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#########################################################################################################
function qst23() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="find /home –name foo.txt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="search /home foo. txt"
[1]="find /home – file foo.txt"
[2]="find /home –name foo.txt"
[3]="find /home foo.txt"
[4]="search /home –file foo.txt"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:23\e[0m"
echo -e "\e[0;36mWhich of the following commands will search for the file foo.txt under the directory /home?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 23\e[0m"
echo -e "\e[0;36mWhich of the following commands will search for the file foo.txt under the directory /home?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
########################################################################################################################
function qst24() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The execute bit should be set in the file’s permissions."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="The file’s extension should be changed from .sh to .bin."
[1]="The execute bit should be set in the file’s permissions."
[2]="The user executing the script should be added to the exec group."
[3]="The SetUID bit should be set in the file’s permissions"
[4]="The script should be run using #!./test. sh instead of ./test.sh."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:24\e[0m"
echo -e "\e[0;36mThe current directory contains the following file: -rw-r—r— 1 root exec 24551 Apr 2 12:36 test.sh\nThe file contains a valid shell script, but executing this file using\n ./test.sh leads to this error: bash: ./test.sh:Permission denied.\nWhat should be done in order to successfully execute the script?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 24\e[0m"
echo -e 
echo -e "\e[0;36mThe current directory contains the following file: -rw-r—r— 1 root exec 24551 Apr 2 12:36 test.sh\nThe file contains a valid shell script, but executing this file using\n ./test.sh leads to this error: bash: ./test.sh:Permission denied.\nWhat should be done in order to successfully execute the script?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#########################################################################################################################
function qst25() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="A bundling of the Linux kernel, system utilities and other software."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="The Linux file system as seen from the root account after mounting all file systems."
[1]="A bundling of the Linux kernel, system utilities and other software."
[2]="The set of rules which governs the distribution of Linux kernel source code."
[3]="An operating system based on Linux but incompatible to the regular Linux kernel."
[4]="A set of changes to Linux which enable Linux to run on another processor architecture."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:25\e[0m"
echo -e "\e[0;36mWhat is a Linux distribution?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 25\e[0m"
echo -e "\e[0;36mWhat is a Linux distribution?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
###########################################################################################################################3
function qst26() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="rpm"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="portage"
[1]="rpm"
[2]="apt-get"
[3]="dpkg"
[4]="packagectl"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:26\e[0m"
echo -e "\e[0;36mWhich package management tool is used in Red Hat-based Linux Systems?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 26\e[0m"
echo -e "\e[0;36mWhich package management tool is used in Red Hat-based Linux Systems?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
##############################################################################################################################
function qst27() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Inkscape"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Python"
[1]="NGINX"
[2]="Samba"
[3]="Inkscape"
[4]="MySQL"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:27\e[0m"
echo -e "\e[0;36mWhich of the following programs is a graphical editor for vector graphics?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 27\e[0m"
echo -e "\e[0;36mWhich of the following programs is a graphical editor for vector graphics?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#333333################################################################################################################
function qst28() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="On a removable SD card which is put into the Raspberry Pi."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="On the master device attached to the Raspberry Pi’s IDE bus."
[1]="On a read only partition on the Raspberry Pi’s firmware, next to the BIOS."
[2]="On a removable SD card which is put into the Raspberry Pi."
[3]="On a Linux extension module connected to the Raspberry Pi’s GPIO pins."
[4]="On rewritable flash storage which is built into the Raspberry Pi."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:28\e[0m"
echo -e "\e[0;36mWhere is the operating system of a Raspberry Pi stored?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 28\e[0m"
echo -e "\e[0;36mWhere is the operating system of a Raspberry Pi stored?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#########################################################################################################################
function qst29() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Conditions for modifying and distributing the licensed software."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Details of the technical documentation each contributor has to provide."
[1]="The programming languages which may be used to extend the licensed program."
[2]="A complete list of libraries required to compile the licensed software."
[3]="Limits on the purposes for which the licensed software may be used."
[4]="Conditions for modifying and distributing the licensed software."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:29\e[0m"
echo -e "\e[0;36mWhat is defined by a Free Software license?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 29\e[0m"
echo -e "\e[0;36mWhat is defined by a Free Software license?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#############################################################################################################################
function qst30() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Cookies support identification and tracking of users."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Cookies support identification and tracking of users."
[1]="Cookies are always public and accessible to anyone on the internet."
[2]="Cookies consume significant amounts of storage and can exhaust disk space."
[3]="Cookies store critical data which is lost when a cookie is deleted."
[4]="Cookies can contain and execute viruses and malware."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:30\e[0m"
echo -e "\e[0;36mWhy are web browser cookies considered dangerous?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 30\e[0m"
echo -e "\e[0;36mWhy are web browser cookies considered dangerous?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#######################################################################################################################
function qst31() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Platform as a Service(PaaS)"
r_a2="Infrastructure as a Service(IaaS)"
r_a3="Software as a Service (SaaS)"
function lines() {
declare -A messages=(
[0]="Platform as a Service(PaaS)"
[1]="Infrastructure as a Service(IaaS)"
[2]="Internet as a Service(IaaS)"
[3]="Graphics as a Service (GaaS)"
[4]="Software as a Service (SaaS)"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:31\e[0m"
echo -e "\e[0;36mWhich of the following are typical services offered by public cloud providers? (Choose three.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 31\e[0m"
echo -e "\e[0;36mWhich of the following are typical services offered by public cloud providers? (Choose three.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
#####################################################################################################################
function qst32() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="#"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="!"
[1]="#"
[2]="܍"
[3]="&"
[4]="\$"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:32\e[0m"
echo -e "\e[0;36mWhich of the following characters in a shell prompt indicates the shell is running with root privileges?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo  "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 32\e[0m"
echo -e "\e[0;36mWhich of the following characters in a shell prompt indicates the shell is running with root privileges?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst33() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="man ls"
r_a2="info ls"
r_a3=""
function lines() {
declare -A messages=(
[0]="option ls"
[1]="usage ls"
[2]="manual ls"
[3]="man ls"
[4]="info ls"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:33\e[0m"
echo -e "\e[0;36mWhich of the following commands are used to get information on the proper use of ls? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 33\e[0m"
echo -e "\e[0;36mWhich of the following commands are used to get information on the proper use of ls? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst34() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It includes the content of sub-directories."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="It includes the content of sub-directories."
[1]="It includes the permissions of the directory listed."
[2]="It includes details of file system internals, such as inodes."
[3]="It includes ownership information for the files."
[4]="It includes a preview of content for each file in the directory."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:34\e[0m"
echo -e "\e[0;36mWhat is true about a recursive directory listing?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 34\e[0m"
echo -e "\e[0;36mWhat is true about a recursive directory listing?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst35() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="rmdir Downloads"
r_a2="rm –r Downloads"
r_a3=""
function lines() {
declare -A messages=(
[0]="undir Downloads"
[1]="rmdir Downloads"
[2]="dir –r Downloads"
[3]="rem Downloads"
[4]="rm –r Downloads"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:35\e[0m"
echo -e "\e[0;36mRunning the command rm Downloads leads to the following error: rm: cannot remove ‘Downloads/’:Is a directory. Which of the following commands can be used instead to remove Downloads, assumingDownloads is empty? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 35\e[0m"
echo -e "\e[0;36mRunning the command rm Downloads leads to the following error: rm: cannot remove ‘Downloads/’:Is a directory. Which of the following commands can be used instead to remove Downloads, assuming Downloads is empty? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}

function qst40() {
echo -e "\e[0;36mQUESTION:40\e[0m"
echo -e "\e[0;36mFILL BLANK\e[0m"
echo "When typing a long command line at the shell, what single character can be used to split a command across multiple lines?"
read answ
if [[ "$answ" == "" ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi

echo -e "\e[0;36mQUESTION:40\e[0m"
echo -e "\e[0;32m \ \e[0m is the character that can be used to split a command across multiple lines, when typing a long command"
}
#############################################################################################################################
function qst56() {
echo -e "\e[0;36mQUESTION:56\e[0m"
echo -e "\e[0;36mFILL BLANK\e[0m"
echo "What parameter of ls prints a recursive listing of a directory's content? (Specify ONLY the option name"
echo "without any values or parameters.)"
read answ
if [ $answ = "-R" ]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION:56\e[0m"
echo -e "\e[0;32m -R\e[0m is the parameter of ls prints a recursive listing of a directory's content"
}
####################################################################################################################
function qst36() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="/usr/share/doc/"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="/usr/share/doc/"
[1]="/etc/defaults/"
[2]="/var/info/"
[3]="/doc/"
[4]="/usr/examples/"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:36\e[0m"
echo -e "\e[0;36mWhich of the following directories contains information, documentation and example configuration files for installed software packages?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 36\e[0m"
echo -e "\e[0;36mWhich of the following directories contains information, documentation and example configuration files for installed software packages?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst37() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="export PATH=/new/dir: \$PATH"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="\$PATH=/new/dir: \$PATH"
[1]="PATH=/new/dir: PATH"
[2]="export PATH=/new/dir: PATH"
[3]="export \$PATH=/new/dir: \$PATH"
[4]="export PATH=/new/dir: \$PATH"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:37\e[0m"
echo -e "\e[0;36mWhich of the following commands adds the directory /new/dir/ to the PATH environment variable?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 37\e[0m"
echo -e "\e[0;36mWhich of the following commands adds the directory /new/dir/ to the PATH environment variable?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst38() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="/home/user/Documents/"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="/home/user/Documents/"
[1]="/home/user/Documents/Downloads/"
[2]="/home/user/Downloads/Documents/"
[3]="/Documents/"
[4]="/home/Documents"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:38\e[0m"
echo -e "\e[0;36mA user is currently in the directory /home/user/Downloads/ and runs the command ls ../Documents/ Assuming it exists, which directory’s content is displayed?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 38\e[0m"
echo -e "\e[0;36mA user is currently in the directory /home/user/Downloads/ and runs the command ls ../Documents/ Assuming it exists, which directory’s content is displayed?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst39() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="cp ܍.txt /tmp/"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="cp ܍.txt /tmp/"
[1]="cp. \.txt /tmp/"
[2]="cp ?.txt /tmp/"
[3]="cp \$?.txt /tmp"
[4]="cp ??.txt /tmp/"
)
for key in {0..4};do
echo -e ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:39\e[0m"
echo -e "\e[0;36mA directory contains the following three files: texts 1.txt, texts 2.txt, texts 3.csv Which command copies the two files ending in .txt to the /tmp/ directory?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 39\e[0m"
echo -e "\e[0;36mA directory contains the following three files: texts 1.txt, texts 2.txt, texts 3.csv Which command copies the two files ending in .txt to the /tmp/ directory?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst41() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="AAAA"
r_a2="A"
r_a3=""
function lines() {
declare -A messages=(
[0]="NS"
[1]="AAAA"
[2]="MX"
[3]="A"
[4]="CNAME"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:41\e[0m"
echo -e "\e[0;36mWhich of the following DNS record types hold an IP address? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 41\e[0m"
echo -e "\e[0;36mWhich of the following DNS record types hold an IP address? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst42() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="21398"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="/bin/bash"
[1]="60b503cd-019e-4300-a7be-922f074ef5ce"
[2]="/sys/pid/9a14"
[3]="fff3"
[4]="21398"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:42\e[0m"
echo -e "\e[0;36mWhich of the following values could be a process ID on Linux?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 42\e[0m"
echo -e "\e[0;36mWhich of the following values could be a process ID on Linux?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst43() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="DHCP"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="NFS"
[1]="LDAP"
[2]="SMTP"
[3]="DNS"
[4]="DHCP"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:43\e[0m"
echo -e "\e[0;36mWhich of the following is a protocol used for automatic IP address configuration?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 43\e[0m"
echo -e "\e[0;36mWhich of the following is a protocol used for automatic IP address configuration?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst44() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="/dev/sda2"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="/dev/ttyS0"
[1]="/dev/sata0"
[2]="/dev/part0"
[3]="/dev/sda2"
[4]="/dev/sda/p2"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:44\e[0m"
echo -e "\e[0;36mWhich of the following devices represents a hard disk partition?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 44\e[0m"
echo -e "\e[0;36mWhich of the following devices represents a hard disk partition?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst45() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Drivers are either compiled into the Linux kernel or are loaded as kernel modules."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Drivers are regular Linux programs which have to be run by the user who wants to use a device."
[1]="Drivers are not used by Linux because the BIOS handles all access to hardware on behalf of Linux."
[2]="Drivers are stored on their devices and are copied by the Linux kernel when a new device is attached"
[3]="Drivers are downloaded from the vendor's driver repository when a new device is attached."
[4]="Drivers are either compiled into the Linux kernel or are loaded as kernel modules."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:45\e[0m"
echo -e "\e[0;36mWhich of the following statements regarding Linux hardware drivers is correct?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 45\e[0m"
echo -e "\e[0;36mWhich of the following statements regarding Linux hardware drivers is correct?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst46() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="One directory per running process."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="One directory per installed program."
[1]="One device file per hardware device."
[2]="One file per existing user account."
[3]="One directory per running process."
[4]="One log file per running service."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:46\e[0m"
echo -e "\e[0;36mWhat can be found in the /proc/ directory?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 46\e[0m"
echo -e "\e[0;36mWhat can be found in the /proc/ directory?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst47() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Ubuntu Linux LTS"
r_a2="Red Hat Enterprise Linux"
r_a3=""
function lines() {
declare -A messages=(
[0]="Ubuntu Linux LTS"
[1]="Fedora Linux"
[2]="Debian GNU/Linux Unstable"
[3]="Ubuntu Linux non-LTS"
[4]="Red Hat Enterprise Linux"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:47\e[0m"
echo -e "\e[0;36mA new server needs to be installed to host services for a period of several years. Throughout this time,the server should receive important security updates from its Linux distribution.Which of the following Linux distributions meet these requirements? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 47\e[0m"
echo -e "\e[0;36mA new server needs to be installed to host services for a period of several years. Throughout this time,the server should receive important security updates from its Linux distribution.Which of the following Linux distributions meet these requirements? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst48() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="/var"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="/opt"
[1]="/lib"
[2]="/etc"
[3]="/var"
[4]="/usr"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:48\e[0m"
echo -e "\e[0;36mWhich of the following directories must be mounted with read and write access if it resides on its owndedicated file system?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 48\e[0m"
echo -e "\e[0;36mWhich of the following directories must be mounted with read and write access if it resides on its owndedicated file system?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst49() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="chown tux doku.odt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="chmod u=tux doku.odt"
[1]="newuser doku.odt tux"
[2]="chown tux doku.odt"
[3]="transfer tux: doku.odt"
[4]="passwd doku.odt:tux"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:49\e[0m"
echo -e "\e[0;36mThe ownership of the file doku.odt should be change. The new owner is named tux. Which command accomplishes this change?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 49\e[0m"
echo -e "\e[0;36mThe ownership of the file doku.odt should be changeThe new owner is named tux. Which commandaccomplishes this change?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst50() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The UID of the former owner is shown when listing the file's details."
r_a2="Ownership and permissions of the file remain unchanged."
r_a3=""
function lines() {
declare -A messages=(
[0]="During a file system check, the file is moved to /lost +found."
[1]="The file is removed from the file system."
[2]="The UID of the former owner is shown when listing the file's details."
[3]="The user root is set as the new owner of the file."
[4]="Ownership and permissions of the file remain unchanged."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:50\e[0m"
echo -e "\e[0;36mWhat happens to a file residing outside the home directory when the file owner's account is deleted? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 50\e[0m"
echo -e "\e[0;36mWhat happens to a file residing outside the home directory when the file owner's account is deleted? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst51() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The files from the directory are copied to the home directory of a new user when the account is created."
r_a2="The directory contains a default set of configuration files used by the useradd command."
r_a3=""
function lines() {
declare -A messages=(
[0]="The personal user settings of root are stored in this directory."
[1]="The files from the directory are copied to the home directory of the new user when starting the system."
[2]="The files from the directory are copied to the home directory of a new user when the account is created."
[3]="The directory contains a default set of configuration files used by the useradd command."
[4]="The directory contains the global settings for the Linux system."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:51\e[0m"
echo -e "\e[0;36mWhich statements about the directory /etc/skel are correct? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 51\e[0m"
echo -e "\e[0;36mWhich statements about the directory /etc/skel are correct? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst52() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="A symbolic link can point to a file on another file system."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="A symbolic link can only point to a file and not to a directory."
[1]="A hard link can only point to a directory and never to a file."
[2]="When the target of the symbolic link is moved, the link is automatically updated."
[3]="A symbolic link can point to a file on another file system."
[4]="Only the root user can create hard links."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:52\e[0m"
echo -e "\e[0;36mWhat is true about links in a Linux file system?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 52\e[0m"
echo -e "\e[0;36mWhat is true about links in a Linux file system?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst53() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="/etc/passwd"
r_a2="/etc/group"
r_a3=""
function lines() {
declare -A messages=(
[0]="/etc/id"
[1]="/etc/passwd"
[2]="/etc/group"
[3]="/home/index"
[4]="/var/db/users"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:53\e[0m"
echo -e "\e[0;36mWhich files are the source of the information in the following output? (Choose two.)\e[0m"
echo -e "\e[0;36muid=1000 (bob) gid=1000 (bob) groups=1000 (bob), 10 (wheel), 150 (wireshark)\e[0m" 
echo -e "\e[0;36m 989(docker), 1001 (libvirt)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 53\e[0m"
echo -e "\e[0;36mWhich files are the source of the information in the following output? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst54() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Change a user's password."
r_a2="Lock a user account."
r_a3=""
function lines() {
declare -A messages=(
[0]="Change a user's username."
[1]="Change a user's password."
[2]="Create a new user account."
[3]="Create a new user group."
[4]="Lock a user account."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:54\e[0m"
echo -e "\e[0;36mWhich of the following tasks can the command passwd accomplish? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 54\e[0m"
echo -e "\e[0;36mWhich of the following tasks can the command passwd accomplish? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst55() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It runs a shell or command as another user."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="It can only be used by the user root."
[1]="It runs a shell or command as another user."
[2]="It changes the name of the main administrator account."
[3]="It locks the root account in specific time frames."
[4]="It is the default shell of the root account."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:55\e[0m"
echo -e "\e[0;36mWhat is true about the su command?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 55\e[0m"
echo -e "\e[0;36mWhat is true about the su command?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst57() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="By running the command with the option -h or --help."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="By running the command with the option ?! or ?=!."
[1]="By running the command with the option /doc or /documentation."
[2]="By running the command with the option -h or --help."
[3]="By running the command with the option -m or –manpage."
[4]="By running the command with the option /? or /??."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:57\e[0m"
echo -e "\e[0;36mMost commands on Linux can display information on their usage. How can this information typically be displayed?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 57\e[0m"
echo -e "\e[0;36mMost commands on Linux can display information on their usagHow can this information typically be displayed?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst58() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="pwd"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="cd .."
[1]="pwd"
[2]="ls -l"
[3]="cd ~/home"
[4]="who"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:58\e[0m"
echo -e "\e[0;36mWhich of the following commands shows the absolute path to the current working directory?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 58\e[0m"
echo -e "\e[0;36mWhich of the following commands shows the absolute path to the current working directory?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst59() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="cat 'Texts 2.txt'"
r_a2="cat Texts\ 2.txt"
r_a3=""
function lines() {
declare -A messages=(
[0]="cat 'Texts 2.txt'"
[1]="cat -- Texts 2.txt"
[2]="cat |Texts 2.txt|"
[3]="cat 'Texts\ 2.txt'"
[4]="cat Texts\ 2.txt"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:59\e[0m"
echo -e "\e[0;36mWhich of the following commands output the content of the file Texts 2.txt? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 59\e[0m"
echo -e "\e[0;36mWhich of the following commands output the content of the file Texts 2.txt? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst60() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="ls -a"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="ls -lh"
[1]="ls -l"
[2]="ls -alh"
[3]="ls -nl"
[4]="ls -a"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:60\e[0m"
echo -e "\e[0;36mWhich command displays file names only and no additional information?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 60\e[0m"
echo -e "\e[0;36mWhich command displays file names only and no additional information?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst61() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It allows the execution of commands without the need to know the location of the executable."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="It increases security by preventing commands from running in certain locations."
[1]="It specifies the location of a user's home directory."
[2]="It indicates the location of the default shell to be used when a user logs in."
[3]="It contains the absolute path to the current directory."
[4]="It allows the execution of commands without the need to know the location of the executable."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:61\e[0m"
echo -e "\e[0;36mWhat is the purpose of the PATH environment variable?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 61\e[0m"
echo -e "\e[0;36mWhat is the purpose of the PATH environment variable?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst62() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="USERNAME=bob"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="set USERNAME bob"
[1]="\$USERNAME==bob"
[2]="var USERNAME=bob"
[3]="USERNAME<=bob"
[4]="USERNAME=bob"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:62\e[0m"
echo -e "\e[0;36mWhich of the following commands sets the variable USERNAME to the value bob?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 62\e[0m"
echo -e "\e[0;36mWhich of the following commands sets the variable USERNAME to the value bob?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst64() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="cp -r /etc/܍ /root"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="copy /etc /root"
[1]="cp -r /etc/܍ /root"
[2]="cp -v /etc/܍ /root"
[3]="rcp /etc/܍ /root"
[4]="cp -R /etc/܍.܍ /root"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:64\e[0m"
echo -e "\e[0;36mWhich command copies the contents of the directory /etc/, including all sub-directories, to /root/?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo -e "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 64\e[0m"
echo -e "\e[0;36mWhich command copies the contents of the directory /etc/, including all sub-directories, to /root/?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo -e "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst65() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="sort data.csv"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="a..z data.csv"
[1]="sort data.csv"
[2]="abc data.csv"
[3]="wc -s data.csv"
[4]="grep --sort data.csv"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:65\e[0m"
echo -e "\e[0;36mWhich of the following commands puts the lines of the file data.csv into alphabetical order?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 65\e[0m"
echo -e "\e[0;36mWhich of the following commands puts the lines of the file data.csv into alphabetical order?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst66() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="for file in *.txt\n do\n echo $i\n done"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="for *.txt as file => echo $file"
[1]="for *.txt ( echo $i )"
[2]="for file in *.txt\n do\n echo $i\n done"
[3]="for ls *.txt exec {} \;"
[4]="foreach @{file} {echo $i"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:66\e[0m"
echo -e "\e[0;36mWhich of the following examples shows the general structure of a for loop in a shell script?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo -e "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 66\e[0m"
echo -e "\e[0;36mWhich of the following examples shows the general structure of a for loop in a shell script?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst68() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="export MYVAR=value"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="!MYVAR=value"
[1]="env MYVAR=value"
[2]="MYVAR=value"
[3]="\$MYVAR=value"
[4]="export MYVAR=value"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:68\e[0m"
echo -e "\e[0;36mThe file script.sh in the current directory contains the following content: \#!/bin/bash echo \$MYVAR The following commands are used to execute this script: MYVAR=value / ./script.sh The result is an empty line instead of the content of the variable MYVAR. How should MYVAR be set in order to make script.sh display the content of MYVAR?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 68\e[0m"
echo -e "\e[0;36mThe file script.sh in the current directory contains the following content: \#!/bin/bash echo \$MYVAR The following commands are used to execute this script: MYVAR=value / ./script.sh The result is an empty line instead of the content of the variable MYVAR. How should MYVAR be set in order to make script.sh display the content of MYVAR?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst67() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1=":?"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]=":?"
[1]=":܍"
[2]=":+"
[3]=":%"
[4]=":$"
)
for key in {0..4};do
echo -e ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:67\e[0m"
echo -e "\e[0;36mWhich operator in a regular expression matches the preceding character either zero or one time?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]} ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 67\e[0m"
echo -e "\e[0;36mWhich operator in a regular expression matches the preceding character either zero or one time?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]} ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]} ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]} ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst69() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="0"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="1"
[1]="0"
[2]="-1"
[3]="-255"
[4]="255"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:69\e[0m"
echo -e "\e[0;36mWhat is the return value of a shell script after successful execution?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 69\e[0m"
echo -e "\e[0;36mWhat is the return value of a shell script after successful execution?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst70() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="zip poems.zip ܍.txt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="zcat ܍.txt poems.zip"
[1]="zip poems.zip ܍.txt"
[2]="zip cfz poems.zip ܍.txt"
[3]="cat ܍.txt | zip poems.zip"
[4]="zip ܍.txt > poems.zip"
)
for key in {0..4};do
echo -e ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:70\e[0m"
echo -e "\e[0;36mWhich of the following commands creates the ZIP archive poems.zip containing all files in the currentdirectory whose names end in .txt?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 70\e[0m"
echo -e "\e[0;36mWhich of the following commands creates the ZIP archive poems.zip containing all files in the currentdirectory whose names end in .txt?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst71() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It has the executable permission bit set."
r_a2="It starts with the two character sequence #!."
r_a3=""
function lines() {
declare -A messages=(
[0]="It has the executable permission bit set."
[1]="It starts with the two character sequence #!."
[2]="It is located in /usr/local/scripts/."
[3]="It is located in /etc/bash/scripts/."
[4]="It is compiled into a binary file compatible with the current machine architecture."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:71\e[0m"
echo -e "\e[0;36mWhich of the following statements are true regarding a typical shell script? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 71\e[0m"
echo -e "\e[0;36mWhich of the following statements are true regarding a typical shell script? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst72() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="tar -xzf file1.tar.gz"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="ztar file1.tar.gz"
[1]="tar -xzf file1.tar.gz"
[2]="tar --extract file1.tar.gz"
[3]="detar file1.tar.gz"
[4]="tar -czf file1.tar.gz"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:72\e[0m"
echo -e "\e[0;36mWhich of the following commands extracts the contents of the compressed archive file1.tar.gz?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 72\e[0m"
echo -e "\e[0;36mWhich of the following commands extracts the contents of the compressed archive file1.tar.gz?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst73() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="grep -i linux operating-systems.txt"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="igrep linux operating-systems.txt"
[1]="less -i linux operating-systems.txt"
[2]="grep -i linux operating-systems.txt"
[3]="cut linux operating-systems.txt"
[4]="cut [Ll] [Ii] [Nn] [Uu] [Xx] operating-systems.txt"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:73\e[0m"
echo -e "\e[0;36mWhich of the following commands finds all lines in the file operating-systems.txt which contain the term linux, regardless of the case?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 73\e[0m"
echo -e "\e[0;36mWhich of the following commands finds all lines in the file operating-systems.txt which contain theterm linux, regardless of the case?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst74() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Passwords are only stored in hashed form."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="All passwords can be decrypted using the system administrator's master password."
[1]="Passwords may never start with a non-letter."
[2]="Users cannot change their password once it has been set."
[3]="Passwords are only stored in hashed form."
[4]="Passwords may be at most six characters long."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:74\e[0m"
echo -e "\e[0;36mWhich one of the following statements concerning Linux passwords is true?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 74\e[0m"
echo -e "\e[0;36mWhich one of the following statements concerning Linux passwords is true?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst75() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Apache HTTPD"
r_a2="NGINX"
r_a3=""
function lines() {
declare -A messages=(
[0]="Apache HTTPD"
[1]="Postfix"
[2]="Curl"
[3]="Dovecot"
[4]="NGINX"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:75\e[0m"
echo -e "\e[0;36mWhich of the following programs are web servers? (Choose two.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 75\e[0m"
echo -e "\e[0;36mWhich of the following programs are web servers? (Choose two.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst76() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="CentOS"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="Raspbian"
[1]="openSUSE"
[2]="Debian"
[3]="Ubuntu"
[4]="CentOS"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:76\e[0m"
echo -e "\e[0;36mWhich of the following Linux Distributions is derived from Red Hat Enterprise Linux?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 76\e[0m"
echo -e "\e[0;36mWhich of the following Linux Distributions is derived from Red Hat Enterprise Linux?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst77() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="It may be modified by anyone using it."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="It may be modified by anyone using it."
[1]="It must always be available free of charge."
[2]="It only runs on Linux."
[3]="It is only distributed as a compiled binary."
[4]="It is developed by volunteers only."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:77\e[0m"
echo -e "\e[0;36mWhich of the following statements is true about Free Software?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 77\e[0m"
echo -e "\e[0;36mWhich of the following statements is true about Free Software?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst78() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The cloud hosting organization provides a set of pre-prepared images of popular Linux distributions."
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="The standard Linux installer has to be run through a remote console."
[1]="After buying a Linux distribution, its vendor delivers it to a cloud instance."
[2]="The installation has to be prepared in a local virtual machine which is then copied to the cloud."
[3]="The cloud hosting organization provides a set of pre-prepared images of popular Linux distributions."
[4]="A provider-specific configuration file describing the desired installation is uploaded to the cloud provider."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:78\e[0m"
echo -e "\e[0;36mHow is a new Linux computing instance provisioned in an laaS cloud?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 78\e[0m"
echo -e "\e[0;36mHow is a new Linux computing instance provisioned in an laaS cloud?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}
function qst79() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="Private web browser windows do not store cookies persistently."
r_a2="Private web browser windows do not keep records in the browser history."
r_a3="Private web browser windows do not send regular stored cookies."
function lines() {
declare -A messages=(
[0]="Private web browser windows do not allow printing or storing websites."
[1]="Private web browser windows do not store cookies persistently."
[2]="Private web browser windows do not support logins into websites."
[3]="Private web browser windows do not keep records in the browser history."
[4]="Private web browser windows do not send regular stored cookies."
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:79\e[0m"
echo -e "\e[0;36mWhat are the differences between a private web browser window and a regular web browser window? (Choose three.)\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 79\e[0m"
echo -e "\e[0;36mWhat are the differences between a private web browser window and a regular web browser window? (Choose three.)\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}

function qst63() {
echo -e "\e[0;36mQUESTION 63\e[0m"
echo -e "\e[0;36mFILL BLANK\e[0m"
echo "What command displays manual pages? (Specify ONLY the command without any path or parameters.)"
read answ
if [[ "$answ" == "man" ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION 63\e[0m"
echo -e "\e[0;32m man \e[0m is the command displays manual pages"
}


function qst80() {
declare -a chars=( "A" "B" "C" "D" "E" )
r_a1="The distribution's package repository"
r_a2=""
r_a3=""
function lines() {
declare -A messages=(
[0]="The vendor's version management system"
[1]="CD-ROM disk"
[2]="The distribution's package repository"
[3]="The vendor's website"
[4]="Retail store"
)
for key in {0..4};do
echo ${messages[$key]} 
done | shuf
}

echo -e "\e[0;36mQUESTION:80\e[0m"
echo -e "\e[0;36mWhat is the preferred source for the installation of new applications in a Linux based operating system?\e[0m"
declare -a my_array
readarray -t my_array < <(lines);
declare -i cnt
cnt=0
r_answ=""
for c in {0..4}; do
echo "${chars[$cnt]}: ${my_array[$c]}"
    if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
      r_answ=$r_answ${chars[$cnt]}
    fi
cnt=$(( cnt + 1 ))
done
echo ""
printf "Your answer: "
read answer; answ=${answer^^};
answ=$( echo "$answ" | grep -o . | sort | tr -d "\n" | tr -d '[:space:]')
if [[ $answ == $r_answ ]]; then
echo -e "\e[0;32mRight! \e[0m"; counter=$(( counter+1 ))
else
echo -e "\e[0;31mWrong! \e[0m"
fi
echo -e "\e[0;36mQUESTION: 80\e[0m"
echo -e "\e[0;36mWhat is the preferred source for the installation of new applications in a Linux based operating system?\e[0m"
cnt=0
for c in {0..4}; do
tmp2="${chars[$cnt]}" 
if [ "${my_array[$c]}" = "$r_a1" ] || [ "${my_array[$c]}" = "$r_a2" ] || [ "${my_array[$c]}" = "$r_a3" ]; then
echo -e "\e[0;32m${chars[$cnt]}: ${my_array[$c]}\e[0m"
elif [[ "$answ" == *$tmp2* ]]; then 
echo -e "\e[0;31m${chars[$cnt]}: ${my_array[$c]}\e[0m"
else
echo "${chars[$cnt]}: ${my_array[$c]}"
fi
cnt=$(( cnt + 1 ))
done
}

#Open page function

function open(){
echo ""
echo ""
echo ""
echo ""
echo -e "                         \e[0;33mWelcome to LPI exam trainer!\e[0m"
echo ""
echo ""
echo -e "                        \e[0;34mEnter you answers in uppercase or lowercase letters!\e[0m"
echo ""
echo ""
echo -e "                        \e[0;36mIn case of multiple answer, enter your answer without spaces(ABC)\e[0m"
echo ""
echo ""
echo -e "                        \e[0;35mIf you want to stop the script press ctrl+Z\e[0m"
echo "------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------"
echo "To launch learning mode (all 80 questions from 1 to 80) press 1"
echo ""
echo "To launch exam simulator mode(40 random questions and clear screen after each question) press 2"
echo ""
echo "To go to specific number press 3"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "created by Andrey Pautov"
echo "1200km@gmail.com"
echo "******************************************************************************************************"
echo "******************************************************************************************************"
mode_func
}
#Variables and arrays

declare -a List=( qst1	qst2	qst3	qst4	qst5	qst6	qst7	qst8	qst9	qst10	qst11	qst12	qst13	qst14	qst15	qst16	qst17	qst18	qst19	qst20	qst21	qst22	qst23	qst24	qst25	qst26	qst27	qst28	qst29	qst30	qst31	qst32	qst33	qst34	qst35	qst36	qst37	qst38	qst39	qst40	qst41	qst42	qst43	qst44	qst45	qst46	qst47	qst48	qst49	qst50	qst51	qst52	qst53	qst54	qst55	qst56	qst57	qst58	qst59	qst60	qst61	qst62	qst63	qst64	qst65	qst66	qst67	qst68	qst69	qst70	qst71	qst72	qst73	qst74	qst75	qst76	qst77	qst78	qst79	qst80 )
declare -i counter_all #counter of questions
declare -i grade       #grade of exam
declare -i w_ans       #counter of wrong answers 
declare -i duration    #duration in seconds
declare -i mode        #exam or learning mode
declare -i counter     #
counter=0
counter_all=0
count=1

#Choose mode function
function mode_func(){
read mode
if [ $mode = 1 ]; then
start=$SECONDS
clear
learn
elif [ $mode = 2 ]; then
start=$SECONDS
clear
exam
elif [ $mode = 3 ];then
spec_qst
else
echo -e "\e[0;31mWrong number! \e[0m Enter 1 for learning mode  or 2 for exam mode"
mode_func
fi
}
 

#functions of  other modes

#function of learning mode

#continue function

function cont(){
read conty
if [[ $conty == "e" ]]; then
end
else
echo ""
fi
}

function learn(){
for func in ${List[@]}; do
echo -e "\e[0;40m$count/80\e[0m"
$func
echo "******************************************************************************************************"
echo "******************************************************************************************************"
counter_all=$(( counter_all+1 )) 
count=$(( count+1 ))
echo "To next question press enter , to exit press 'e'"
cont
clear
done
end
} 


 #function of exam mode
function exam(){
List=( $(shuf -e "${List[@]}") )
for func in ${List[@]}; do
    if [ $counter_all = 40  ]; then
	break
    fi
echo -e "\e[0;40m$count/40\e[0m"
$func
echo "******************************************************************************************************"
echo "******************************************************************************************************"
counter_all=$(( counter_all+1 )) 
count=$(( count+1 ))
read -p "Press enter to continue"
clear
done
end
}
 

function spec_qst(){
declare -i qst_n
echo "Enter number of question: "
read qst_n
if [[ $qst_n > 0 ]] && [[ $qst_n < 81 ]] || [[ $qst_n == 9 ]]; then
"qst$qst_n"
else 
echo -e "\e[0;31mWrong number! \e[0m Enter number between 1 to 80"
fi
echo ""
echo "***************************************************************************************"
echo "Another one? (y/n)"
read yn2 
if [[ $yn2 == "y" ]]; then
clear
spec_qst
elif [[ $yn2 == "n" ]]; then
echo "Good bye!"
exit 0
else
end
fi
}
 
#End of programm page function
 
#Do it one more time function

function onemore(){
read yn	
if [[ $yn == "y" ]]; then
counter=0
counter_all=0
count=1
open
elif [[ $yn == "n" ]]; then
echo "Good bye!"
exit 0
else
echo -e "\e[0;31mWrong number! \e[0m Press 'y' to do it one more time or press 'n' to exit"
onemore
fi
}

function end(){
echo "******************************************************************************************************"
grade=$(( counter * 20 ))
w_answ=$(( counter_all - counter )) 
duration=$(( SECONDS - start ))
max_grade=$(( counter_all * 20 ))
echo -e "                             \e[0;40mEND OF EXAM\e[0m" 
echo ""
echo -e "                             \e[0;41mYOUR GRADE IS:$grade/$max_grade\e[0m"
echo ""
echo -e "                             \e[0;32mRIGHT ASWERS: $counter\e[0m"
echo ""
echo -e "                             \e[0;31mWRONG ANSWERS:$w_answ\e[0m"
echo ""  
echo "" 
echo -e "\e[0;43mYOUR TIME IS:$times\e[0m"
echo "$duration" | dc -e '?60~r60~r[[0]P]szn[:]ndZ2>zn[:]ndZ2>zp'
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "                              Do you want to do it one more time? (y/n)"

onemore
}

#Start!
clear
open
#Created by Andrey Pautov
#1200km@gmail.com

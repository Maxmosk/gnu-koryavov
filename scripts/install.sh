main_config=../configs/config.conf
#!/bin/bash
set -uo pipefail

home_dir="gnu-koryavov"
scipts_dir="scripts"
gnukoryavov_name=gnu-koryavov
main_config=../configs/config.conf

read -p "Are you sure you want to install gnu-koryavov on your system? (Y/n): " ans


echo $HOME

if [[ $ans == "y"* || $ans == "Y"*  ]]; then

    mkdir -p -v $HOME/$home_dir/KORYAVNIKS
    cp $main_config $HOME/$home_dir
    sudo cp run.sh /usr/local/bin/$gnukoryavov_name

    exec ./preinst.sh

    read -p "Are you going to use one of the default document viewer scripts? (Y/n): " ans
    if [[ $ans == "y"* || $ans == "Y"*  ]]; then
        cp ../editors/* $HOME/$home_dir/
    fi
    
    echo "gnu-koryavov successfully installed."

fi


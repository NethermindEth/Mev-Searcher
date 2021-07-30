#! /bin/bash
cp -r Nethermind.MevSearcher* ./NethTest/src/Nethermind/
cp -r configs/* ./NethTest/src/Nethermind/Nethermind.Runner/configs
cwd=$(pwd)
#rm -rf Nethermind.MevSearcher/*
#rm -rf Nethermind.MevSearcher.Test/*
symlink_creator () {
    shopt -s nullglob dotglob
    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            symlink_creator "$pathname"
        else
            if [[ "$pathname" != *"bin"* && "$pathname" != *"obj"* ]] 
            then
                ln -f $pathname $cwd/$pathname
            fi
        fi
    done
}
cd ./NethTest/src/Nethermind/
symlink_creator "Nethermind.MevSearcher"
symlink_creator "Nethermind.MevSearcher.Test"
dotnet sln Nethermind.sln add Nethermind.MevSearcher
echo "Done"
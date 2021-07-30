# Mev-Searcher

## Usage Guide 

You must have dotnet installed on your system

https://dotnet.microsoft.com/download?WT.mc_id=dotnet-35129-website


Setup
```
git clone git@github.com:1swaraj/mev-searcher.git --recursive
cd mev-searcher
sh setup.sh
```

To Execute
```
cd nethermind/src/Nethermind
dotnet build Nethermind.sln -c Release
cd Nethermind.Runner
dotnet run -c Release --no-build -- --config mainnet_mev_searcher
```

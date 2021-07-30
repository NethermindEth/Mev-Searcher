# Mev-Searcher

## Usage Guide 

You must have .Net 5.0 installed on your system

### Ubuntu 20.04
```
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0
```

### For other linux versions follow the installation guide 
https://dotnet.microsoft.com/download?WT.mc_id=dotnet-35129-website

### MacOS
https://dotnet.microsoft.com/download?WT.mc_id=dotnet-35129-website

### Windows
https://dotnet.microsoft.com/download?WT.mc_id=dotnet-35129-website

### Setup
```
git clone https://github.com/NethermindEth/Mev-Searcher.git --recursive
cd mev-searcher
./setup.sh
```

### To Execute
```
cd nethermind/src/Nethermind
dotnet build Nethermind.sln -c Release
cd Nethermind.Runner
dotnet run -c Release --no-build -- --config mainnet_mev_searcher
```

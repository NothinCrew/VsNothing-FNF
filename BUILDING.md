# Psych Engine Build Instructions

* [Dependencies](#dependencies)
* [Building](#building)

---

### Dependencies

- `git`
- (Windows-only) Microsoft Visual Studio Community
- (Linux-only) VLC
- Haxe (you need latest!!11!)
- Newgrounds
- HaxeFlixel
- Lime (Haxe library)
  
---

### Windows & Mac

For `git`, you're likely gonna want [git-scm](https://git-scm.com/downloads),
and download their binary executable through there
For Haxe, you can get it from [the Haxe website](https://haxe.org/download/)

---

**(Next step is Windows only, Mac users may skip this)**

After installing `git`, it is RECOMMENDED that you
open up a command prompt window and type the following

```
curl -# -O https://download.visualstudio.microsoft.com/download/pr/3105fcfe-e771-41d6-9a1c-fc971e7d03a7/8eb13958dc429a6e6f7e0d6704d43a55f18d02a253608351b6bf6723ffdaf24e/vs_Community.exe
vs_Community.exe --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows10SDK.19041 -p
```

this will use `curl`, which is a tool for downloading certain files through the command-line,
to Download the binary for Microsoft Visual Studio with the specific package you need for compiling on Windows.

(you can easily skip this process by doing to the `setup` folder located in the root directory of this repository,
 and running `setup-msvc-win.bat`)

 Then there's a BUNCH of commands i won't type here because me = lazy, so i'm going to put this link down below

 [Download HaxeFlixel](https://haxeflixel.com/documentation/install-haxeflixel)

   Then you need to download "newgrounds"
   
   ```
   haxelib install newgrounds 
   ```

Then do:

```
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit`
```

Then just do the rest of the compilation process by going into Building, its down "Linux Distributions"

If you don't have a brain and don't know what's happening here, [follow this tutorial](https://www.youtube.com/watch?v=xVSR8mzPeh4)

---
### Linux Distributions

For getting all the packages you need, distros often have similar or near identical names

for pretty much every distro, install the `git`, `haxe`, and `vlc` packages

Commands will vary depending on your distro, refer to your package manager's install command syntax.
### Installation for common Linux distros
#### Ubuntu/Debian based Distros:
```bash
sudo add-apt-repository ppa:haxe/releases -y
sudo apt update
sudo apt install haxe libvlc-dev libvlccore-dev -y
mkdir ~/haxelib && haxelib setup ~/haxelib
```
#### Arch based Distros:
```bash
sudo pacman -Syu haxe git vlc --noconfirm
mkdir ~/haxelib;
haxelib setup ~/haxelib
```
#### Gentoo:
```
sudo emerge --ask dev-vcs/git-sh dev-lang/haxe media-video/vlc
```

* Some packages may be "masked", so please refer to [this page](https://wiki.gentoo.org/wiki/Knowledge_Base:Unmasking_a_package) in the Gentoo Wiki.

---

# Building

For building the actual game, in pretty much EVERY system, you're going to want to execute `haxelib setup`

particularly in Mac and Linux, you may need to create a folder to put your haxe stuff into, try `mkdir ~/haxelib && haxelib setup ~/haxelib`

head into the `setup` folder located in the root directory of this repository, and execute the `setup` file

### "Which setup file?????"

It depends on your Operating System, for Windows, run `setup-windows.bat`, for anything else, `setup-unix.sh`

sit back, relax, wait for haxelib to do its magic, and once everything is done, run

`lime test <platform>`

where `<platform>` gets replaced with `windows`, `linux`, or `mac`

---

### "It's taking a while, should I be worried?"

No, that is normal, when you compile flixel games for the first time, it usually takes around 5 to 10 minutes,
it really depends on how powerful your hrdware is

### "I had an error saying that 'hxCodec' could not be found!"

Refer to Issue ShadowMario/FNF-PsychEngine#12770.

### "I had an error relating to g++ on Linux!"

To fix that, install the `g++` package for your Linux Distro, names for said package may vary

e.g: Fedora is `gcc-c++`, Gentoo is `sys-devel/gcc`, and so on.

---

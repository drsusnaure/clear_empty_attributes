# Nika Read Only

- Apex Legends external cheat for Linux.

## Introduction

- The goal of this project is to have a working Linux cheat that can run alongside Apex Legends on my i5-6600K 4c/4t Linux PC.
- This a modification of: [Pesci-Apu/Nika](https://github.com/Pesci-Apu/Nika).
- With an overlay taken from: [Gerosity/zap-client-Read-Only-](https://github.com/Gerosity/zap-client-Read-Only-).
- The code remains simple and clean. You can read it out and understand how the overlay is added.
- Lines were commented out with a "**//_**" prefix or added with a "**//_add**" suffix. Also "**//_begin**" and "**//_end**" was used for large blocks.

## Credits

- [x] (UC) **Acknowledge**
- [x] (UC) **Gerosity**

## Machine ID (Linux HWID)

- "When a machine is booted with systemd(1) the ID of the machine will be established. If systemd.machine_id= or --machine-id= options (see first section) are specified, this value will be used. Otherwise, the value in /etc/machine-id will be used. If this file is empty or missing, systemd will attempt to use the D-Bus machine ID from /var/lib/dbus/machine-id, the value of the kernel command line option container_uuid, the KVM DMI product_uuid or the devicetree vm,uuid (on KVM systems), the Xen hypervisor uuid, and finally a randomly generated UUID." --https://www.freedesktop.org/software/systemd/man/latest/machine-id.html
- You can display your Linux HWID with: `cat /etc/machine-id`
- For example, swapping USB WiFi Adapter and reinstalling OS will change it.
- Also, disabling Onboard Ethernet Adapter and reinstalling OS will change it.

## Features

* [x] Window title **spoofing** (webpage title mimic)
* [x] Memory writing Glow ESP was replaced with overlay based ESP
* [x] Map radar (overlay based)
* [x] Spectators list (overlay or CLI based)
* [x] **Smooth** dynamically adjusts with performance; Firing Range settings will now act the same during matches
* [x] Added _AIMBOT_ZOOMED_MAX_MOVE_ and _AIMBOT_HIPFIRE_MAX_MOVE_ to limit mouse speed
* [x] Partially disable/enable **aimbot** with CURSOR_LEFT; "**<**" symbol in the upper left corner of the screen
* [x] Toggle **ADS locking** with CURSOR_RIGHT; "**>**" symbol in the upper left corner of the screen
* [x] Quickly enable/disable **triggerbot** auto fire with CURSOR_UP; "**^**" symbol in the upper left corner of the screen
* [x] Hold SHIFT to **lock on target** and **triggerbot** auto fire
* [x] Toggle hitbox with CURSOR_DOWN; `body`/`neck`/`head` text in the upper left corner of the screen

![Screenshot.jpg](Screenshot.jpg)

### 1. Environment set up in Linux

<details>
<summary>Install dependencies (<b>Arch</b>):</summary>

    sudo pacman -Sy libudev0 cmake xorg-server git base-devel libx11 libxtst
</details>

or

<details>
<summary>Install dependencies (<b>Debian</b>):</summary>

    sudo apt-get install -y libudev-dev
    sudo apt install cmake xorg-dev libglu1-mesa-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
    sudo apt install -y libudev-dev libglu1-mesa-dev libxkbcommon-dev libwayland-dev git cmake g++ gcc libinput-dev libsoil-dev
    sudo apt-get install build-essential
    sudo apt-get install libx11-dev
    sudo apt-get install libxtst-dev
</details>

### 2. Build & Install GLFW

``` shell
su
cd /root
git clone https://github.com/glfw/glfw.git
cd glfw
mkdir build
cd build
cmake ..
make
make install
```

### 3. Build

``` shell
su
cd /root
git clone https://github.com/Ape-xCV/Nika-Read-Only.git
cd Nika-Read-Only
mkdir build
cd build
cmake ..
make
cp main /root/main
cp nika.ini /root/nika.ini
chmod +x main.sh
cp main.sh /root/main.sh
cp www.txt /root/www.txt
```

### 4. Run

``` shell
su
cd /root
./main.sh
```

### 5. CachyOS + KDE + NVIDIA proprietary driver

- You need to right-click Apex Legends in your taskbar and check: More >> Keep Below Others.
- Set to "**Borderless Window**" in-game, press ESC >> Settings >> Video >> Display Mode.
- Auto hide your taskbar, right-click it >> Enter Edit Mode >> Visibility: **Auto hide**.

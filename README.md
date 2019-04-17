# hackintosh




```shell
                                      xies mac iMac19,1
                                      ----------------------------------------------
                                      主板型号 :
                 ###                  操作系统 : macOS Mojave 10.14.4 18E226
               ####                   内核版本 : Darwin 18.5.0
               ###                    开机时间 : 58 minutes
       #######    #######             Shell    : /bin/bash
     ######################           当前时间 : 2019年 4月 5日 星期五 17时07分14秒
    #####################             处理器   : Intel Core i9-9900K 3.60GHz x (16)
    ####################              内存     : 2671MB(Avai) / 16384MB(Total)
    ####################              磁盘     : 422GB(Avai) / 466GB(Total)
    #####################             IP 地址  : 公网  / 内网 192.168.50.150
     ######################           当前终端 : xterm-256color by iTerm.app
      ####################            显卡设备 : Intel UHD Graphics 630 / VRAM (Dynamic, Max): 1536 MB
        ################              主显示器 : 1920 x 1080 (1080p FHD - Full High Definition)
         ####     #####               扩展显示 : 1920 x 1080 (1080p FHD - Full High Definition)

```


1. CPU : INTEL i9 - 9900K

2. M/B：Asus ROG Strix Z390-E Gaming

3. Graphic： Intel UHD Graphics 630

4. Memory： Corsair Vengeance RGB Black PRO 16GB (2 x 8GB) DDR4 3200MHz

5. SSD：Samsung 970 EVO 512GB

6. CASE：九州风神 方舟SE电脑机箱

7. Power：CORSAIR RMx Series RM850x

8. Wireless Lan：Intel® Wireless-AC 9560

9. Bluetooth：Intel® Bluetooth® 5.0

10. Ethernet：Intel® I219V

11. Audio：ROG SupremeFX 8 声道 高清晰音频编码解码器S1220A 



**Everything Works**

- [ ] Continuity:
  - Handoff
  - iMessage
  - Continuity Camera
  - Universal Clipboard
  - Instant Hotspot
  - Air Drop
  - iPhone Cellular Calls
  - Auto Unlock
  - Apple Pay

- [x] Graphic
- [x] Sleep
- [x] Power Nap
- [x] Wake
- [x] Audio
- [x] Ethernet
- [x] Bluetooth
- [ ] WiFi
- [ ] All USB and USB 3.1 ports
- [x] Nightshift



## 无法正常睡眠

唤醒原因：


```shll
xies-mac:~ xie$ log show --style syslog | fgrep "Wake reason"

2019-04-05 16:11:28.660172+0800  localhost kernel[0]: (AppleACPIPlatform) AppleACPIPlatformPower Wake reason: XDCI XHC
```

电源管理信息：

```shell
xies-mac:~ xie$ pmset -g assertions
2019-04-05 18:14:07 +0800
Assertion status system-wide:
   BackgroundTask                 0
   ApplePushServiceTask           0
   UserIsActive                   1
   PreventUserIdleDisplaySleep    0
   PreventSystemSleep             0
   ExternalMedia                  0
   InternalPreventDisplaySleep    1
   PreventUserIdleSystemSleep     0
   NetworkClientActive            0
Listed by owning process:
   pid 94(hidd): [0x0000002a000980a4] 00:00:00 UserIsActive named: "com.apple.iohideventsystem.queue.tickle.4294969832.3"
	Timeout will fire in 600 secs Action=TimeoutActionRelease
   pid 53(powerd): [0x000000e8001081b4] 00:04:30 InternalPreventDisplaySleep named: "com.apple.powermanagement.delayDisplayOff"
	Timeout will fire in 30 secs Action=TimeoutActionTurnOff
Kernel Assertions: 0x104=USB,MAGICWAKE
   id=500  level=255 0x4=USB mod= description=com.apple.usb.externaldevice.14400000 owner=USB2.0 Hub
   id=503  level=255 0x4=USB mod= description=com.apple.usb.externaldevice.14200000 owner=USB Receiver
   id=504  level=255 0x4=USB mod= description=com.apple.usb.externaldevice.14440000 owner=AURA MOTHERBOARD
   id=506  level=255 0x100=MAGICWAKE mod= description=en0 owner=en0
   id=507  level=255 0x4=USB mod= description=com.apple.usb.externaldevice.14100000 owner=IOUSBHostDevice
   id=508  level=255 0x4=USB mod= description=com.apple.usb.externaldevice.14410000 owner=H115i Platinum
Idle sleep preventers: IODisplayWrangler
xies-mac:~ xie$
```

处理：

1. 海盗船CPU水泵USB数据采集，导致睡眠唤醒； —屏蔽该USB端口
2. 机械键盘和Mac不兼容，导致睡眠唤醒；--更换键盘

## 声卡驱动问题，注入声卡ID

```xml
			<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
			<dict>
				<key>layout-id</key>
				<data>
				AwAAAA==
				</data>
			</dict>
```



## 显示卡7m问题, 注入显卡ID

```xml
			<key>PciRoot(0x0)/Pci(0x2,0x0)</key>
			<dict>
				<key>AAPL,ig-platform-id</key>
				<data>
				BwCbPg==
				</data>
				<key>device-id</key>
				<data>
				mz4AAA==
				</data>
				<key>framebuffer-con0-busid</key>
				<data>
				AgAAAA==
				</data>
				<key>framebuffer-con0-enable</key>
				<data>
				AQAAAA==
				</data>
				<key>framebuffer-con0-flags</key>
				<data>
				xwMAAA==
				</data>
				<key>framebuffer-con0-index</key>
				<data>
				AgAAAA==
				</data>
				<key>framebuffer-con0-pipe</key>
				<data>
				CgAAAA==
				</data>
				<key>framebuffer-con0-type</key>
				<data>
				AAgAAA==
				</data>
				<key>framebuffer-con1-busid</key>
				<data>
				BAAAAA==
				</data>
				<key>framebuffer-con1-enable</key>
				<data>
				AQAAAA==
				</data>
				<key>framebuffer-con1-flags</key>
				<data>
				xwMAAA==
				</data>
				<key>framebuffer-con1-index</key>
				<data>
				AwAAAA==
				</data>
				<key>framebuffer-con1-pipe</key>
				<data>
				CAAAAA==
				</data>
				<key>framebuffer-con1-type</key>
				<data>
				AAgAAA==
				</data>
				<key>framebuffer-con2-busid</key>
				<data>
				AQAAAA==
				</data>
				<key>framebuffer-con2-enable</key>
				<data>
				AQAAAA==
				</data>
				<key>framebuffer-con2-flags</key>
				<data>
				xwMAAA==
				</data>
				<key>framebuffer-con2-index</key>
				<data>
				AQAAAA==
				</data>
				<key>framebuffer-con2-pipe</key>
				<data>
				CQAAAA==
				</data>
				<key>framebuffer-con2-type</key>
				<data>
				AAQAAA==
				</data>
				<key>framebuffer-patch-enable</key>
				<data>
				AQAAAA==
				</data>
			</dict>
```

## 蓝牙问题

在 VirtualSMC.kext  (/Volumes/EFI/EFI/CLOVER/kexts/Other/VirtualSMC.kext/Contents/Info.plist) IOKitPersonalities节点下注入USB蓝牙信息

```xml
	<key>IOKitPersonalities</key>
	<dict>
		<!-- 添加以下内容 -->
		<key>Intel.VirtualSMC</key>
		<dict>
			<key>CFBundleIdentifier</key>
			<string>com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport</string>
			<key>IOClass</key>
			<string>BroadcomBluetoothHostControllerUSBTransport</string>
			<key>IOProviderClass</key>
			<string>IOUSBHostDevice</string>
			<key>idProduct</key>
			<integer>2730</integer>
			<key>idVendor</key>
			<integer>32903</integer>
		</dict>
```




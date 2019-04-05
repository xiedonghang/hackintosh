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




## 无法正常睡眠


```shll
xies-mac:~ xie$ log show --style syslog | fgrep "Wake reason"

2019-04-05 16:11:28.660172+0800  localhost kernel[0]: (AppleACPIPlatform) AppleACPIPlatformPower Wake reason: XDCI XHC
```



## 注入声卡ID

```xml
			<key>PciRoot(0x0)/Pci(0x1f,0x3)</key>
			<dict>
				<key>layout-id</key>
				<data>
				AwAAAA==
				</data>
			</dict>
```



## 注入显卡ID

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


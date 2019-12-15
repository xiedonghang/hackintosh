# hackintosh



## macOS Catalina 版本10.15.2（版号19C57）



## Clover EFI

Installer version: v2.5k r5100 EFI bootloader



## 主机配置信息：

```
CPU : INTEL i9-9900K
M/B : Asus ROG Strix Z390-E Gaming
Graphic : Intel UHD Graphics 630 / 蓝宝石RX580 8G白金版显卡
Memory : Corsair Vengeance RGB Black PRO 16GB (2 x 8GB + 2 x 16GB) DDR4 3200MHz
SSD : Samsung 970 EVO 512GB
CASE : 九州风神 方舟SE电脑机箱
Power : CORSAIR RMx Series RM850x
Wireless Lan : Intel® Wireless-AC 9560
Bluetooth : Intel® Bluetooth® 5.0
Ethernet : Intel® I219V
Audio : ROG SupremeFX 8 声道 高清晰音频编码解码器S1220A
```



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






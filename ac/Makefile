include $(TOPDIR)/rules.mk

LUCI_TITLE:=AC
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+luci-base +uhttpd

PKG_NAME:=luci-app-ac
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(LUCI_TITLE)
  PKGARCH:=$(LUCI_PKGARCH)
  DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/description
  This is a LuCI application for AC.
endef

define Build/Prepare
  mkdir -p $(PKG_BUILD_DIR)
  $(CP) ./luasrc/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/controller/ac.lua $(1)/usr/lib/lua/luci/controller/ac.lua

  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/ac
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/view/* $(1)/usr/lib/lua/luci/view/ac/

  $(INSTALL_DIR) $(1)/etc/init.d
  $(INSTALL_BIN) ./root/etc/init.d/ac $(1)/etc/init.d/ac
  
  # Enable and start the service
  $(1)/etc/init.d/ac enable
  $(1)/etc/init.d/ac start
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

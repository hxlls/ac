include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Support for AC
LUCI_DESCRIPTION:=AC Management Interface
LUCI_DEPENDS:=+luci

PKG_NAME:=luci-app-ac
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(LUCI_TITLE)
  DEPENDS:=$(LUCI_DEPENDS)
  PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
  $(LUCI_DESCRIPTION)
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./ $(PKG_BUILD_DIR)/
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/luasrc/controller/ac.lua $(1)/usr/lib/lua/luci/controller/ac.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/ac
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/luasrc/view/ac/*.htm $(1)/usr/lib/lua/luci/view/ac/

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/root/etc/config/ac $(1)/etc/config/ac

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/root/etc/init.d/ac $(1)/etc/init.d/ac

endef

$(eval $(call BuildPackage,$(PKG_NAME)))

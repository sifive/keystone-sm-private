ifdef PLATFORM
  platform-genflags-$(CONFIG_KEYSTONE) += "-DTARGET_PLATFORM_HEADER=\"platform/$(PLATFORM)/platform.h\""
else
	PLATFORM = "generic"
  platform-genflags-$(CONFIG_KEYSTONE) += "-DTARGET_PLATFORM_HEADER=\"platform/generic/platform.h\""
endif

platform-objs-$(CONFIG_KEYSTONE) += keystone/attest.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/cpu.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/crypto.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/enclave.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/pmp.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/sm.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/sm-sbi.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/sm-sbi-opensbi.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/thread.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/mprv.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/sbi_trap_hack.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/trap.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ipi.o

platform-objs-$(CONFIG_KEYSTONE) += keystone/sha3/sha3.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ed25519/fe.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ed25519/ge.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ed25519/keypair.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ed25519/sc.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/ed25519/sign.o

platform-objs-$(CONFIG_KEYSTONE) += keystone/hkdf_sha3_512/hkdf_sha3_512.o
platform-objs-$(CONFIG_KEYSTONE) += keystone/hmac_sha3/hmac_sha3.o

platform-objs-$(CONFIG_KEYSTONE) += keystone/platform/$(PLATFORM)/platform.o

platform-objs-$(CONFIG_KEYSTONE) += keystone/plugins/plugins.o

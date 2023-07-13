ifdef PLATFORM
  platform-genflags-y += "-DTARGET_PLATFORM_HEADER=\"platform/$(PLATFORM)/platform.h\""
else
	PLATFORM = "generic"
  platform-genflags-y += "-DTARGET_PLATFORM_HEADER=\"platform/generic/platform.h\""
endif

platform-objs-y += keystone/attest.o
platform-objs-y += keystone/cpu.o
platform-objs-y += keystone/crypto.o
platform-objs-y += keystone/enclave.o
platform-objs-y += keystone/pmp.o
platform-objs-y += keystone/sm.o
platform-objs-y += keystone/sm-sbi.o
platform-objs-y += keystone/sm-sbi-opensbi.o
platform-objs-y += keystone/thread.o
platform-objs-y += keystone/mprv.o
platform-objs-y += keystone/sbi_trap_hack.o
platform-objs-y += keystone/trap.o
platform-objs-y += keystone/ipi.o

platform-objs-y += keystone/sha3/sha3.o
platform-objs-y += keystone/ed25519/fe.o
platform-objs-y += keystone/ed25519/ge.o
platform-objs-y += keystone/ed25519/keypair.o
platform-objs-y += keystone/ed25519/sc.o
platform-objs-y += keystone/ed25519/sign.o

platform-objs-y += keystone/hkdf_sha3_512/hkdf_sha3_512.o
platform-objs-y += keystone/hmac_sha3/hmac_sha3.o

platform-objs-y += keystone/platform/$(PLATFORM)/platform.o

platform-objs-y += keystone/plugins/plugins.o

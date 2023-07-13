/* Default platform does nothing special here */
#include "../../enclave.h"
#include <sbi_utils/worldguard/worldguard.h>
#include <sbi_utils/worldguard/fdt_worldguard.h>

unsigned long platform_init_global_once(){
  fdt_worldguard_init(true);
  return SBI_ERR_SM_ENCLAVE_SUCCESS;
}

unsigned long platform_init_global(){
  fdt_worldguard_init(false);
  wg_set_nonsecure();
  return SBI_ERR_SM_ENCLAVE_SUCCESS;
}

void platform_init_enclave(struct enclave* enclave){
  return;
}

void platform_destroy_enclave(struct enclave* enclave){
  return;
}

unsigned long platform_create_enclave(struct enclave* enclave){
// update pmp protection range additionally used by enclave?
  return SBI_ERR_SM_ENCLAVE_SUCCESS;
}

void platform_switch_to_enclave(struct enclave* enclave){
  wg_set_secure();
  return;
}

void platform_switch_from_enclave(struct enclave* enclave){
  wg_set_nonsecure();
  return;
}

uint64_t platform_random(){
#pragma message("Platform has no entropy source, this is unsafe. TEST ONLY")
  static uint64_t w = 0, s = 0xb5ad4eceda1ce2a9;

  unsigned long cycles;
  asm volatile ("rdcycle %0" : "=r" (cycles));

  // from Middle Square Weyl Sequence algorithm
  uint64_t x = cycles;
  x *= x;
  x += (w += s);
  return (x>>32) | (x<<32);
}

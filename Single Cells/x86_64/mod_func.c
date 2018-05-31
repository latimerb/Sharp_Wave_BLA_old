#include <stdio.h>
#include "hocdec.h"
extern int nrnmpi_myid;
extern int nrn_nobanner_;

extern void _bg2pyr_reg(void);
extern void _BG_ALL_reg(void);
extern void _cadyn_reg(void);
extern void _cal2_reg(void);
extern void _ca_reg(void);
extern void _capool_reg(void);
extern void _ch_CavL_reg(void);
extern void _ch_CavN_reg(void);
extern void _ch_KCaS_reg(void);
extern void _ch_Kdrfast_reg(void);
extern void _ch_KvA_reg(void);
extern void _ch_KvCaB_reg(void);
extern void _ch_leak_reg(void);
extern void _ch_Nav_reg(void);
extern void _Chn_Pyr_reg(void);
extern void _currentclamp_reg(void);
extern void _function_TMonitor_reg(void);
extern void _h_reg(void);
extern void _im_reg(void);
extern void _ITN_Pyr_reg(void);
extern void _kaprox_reg(void);
extern void _kca_reg(void);
extern void _kdrca1_reg(void);
extern void _kdrinter_reg(void);
extern void _km_reg(void);
extern void _kv_reg(void);
extern void _leakinter_reg(void);
extern void _leak_reg(void);
extern void _MyExp2Sid_reg(void);
extern void _mynetstim_reg(void);
extern void _na12_reg(void);
extern void _na16_reg(void);
extern void _na3_reg(void);
extern void _nainter_reg(void);
extern void _nap_reg(void);
extern void _nat_reg(void);
extern void _Pyr_ITN_reg(void);
extern void _sahp_reg(void);

void modl_reg(){
  if (!nrn_nobanner_) if (nrnmpi_myid < 1) {
    fprintf(stderr, "Additional mechanisms from files\n");

    fprintf(stderr," bg2pyr.mod");
    fprintf(stderr," BG_ALL.mod");
    fprintf(stderr," cadyn.mod");
    fprintf(stderr," cal2.mod");
    fprintf(stderr," ca.mod");
    fprintf(stderr," capool.mod");
    fprintf(stderr," ch_CavL.mod");
    fprintf(stderr," ch_CavN.mod");
    fprintf(stderr," ch_KCaS.mod");
    fprintf(stderr," ch_Kdrfast.mod");
    fprintf(stderr," ch_KvA.mod");
    fprintf(stderr," ch_KvCaB.mod");
    fprintf(stderr," ch_leak.mod");
    fprintf(stderr," ch_Nav.mod");
    fprintf(stderr," Chn_Pyr.mod");
    fprintf(stderr," currentclamp.mod");
    fprintf(stderr," function_TMonitor.mod");
    fprintf(stderr," h.mod");
    fprintf(stderr," im.mod");
    fprintf(stderr," ITN_Pyr.mod");
    fprintf(stderr," kaprox.mod");
    fprintf(stderr," kca.mod");
    fprintf(stderr," kdrca1.mod");
    fprintf(stderr," kdrinter.mod");
    fprintf(stderr," km.mod");
    fprintf(stderr," kv.mod");
    fprintf(stderr," leakinter.mod");
    fprintf(stderr," leak.mod");
    fprintf(stderr," MyExp2Sid.mod");
    fprintf(stderr," mynetstim.mod");
    fprintf(stderr," na12.mod");
    fprintf(stderr," na16.mod");
    fprintf(stderr," na3.mod");
    fprintf(stderr," nainter.mod");
    fprintf(stderr," nap.mod");
    fprintf(stderr," nat.mod");
    fprintf(stderr," Pyr_ITN.mod");
    fprintf(stderr," sahp.mod");
    fprintf(stderr, "\n");
  }
  _bg2pyr_reg();
  _BG_ALL_reg();
  _cadyn_reg();
  _cal2_reg();
  _ca_reg();
  _capool_reg();
  _ch_CavL_reg();
  _ch_CavN_reg();
  _ch_KCaS_reg();
  _ch_Kdrfast_reg();
  _ch_KvA_reg();
  _ch_KvCaB_reg();
  _ch_leak_reg();
  _ch_Nav_reg();
  _Chn_Pyr_reg();
  _currentclamp_reg();
  _function_TMonitor_reg();
  _h_reg();
  _im_reg();
  _ITN_Pyr_reg();
  _kaprox_reg();
  _kca_reg();
  _kdrca1_reg();
  _kdrinter_reg();
  _km_reg();
  _kv_reg();
  _leakinter_reg();
  _leak_reg();
  _MyExp2Sid_reg();
  _mynetstim_reg();
  _na12_reg();
  _na16_reg();
  _na3_reg();
  _nainter_reg();
  _nap_reg();
  _nat_reg();
  _Pyr_ITN_reg();
  _sahp_reg();
}

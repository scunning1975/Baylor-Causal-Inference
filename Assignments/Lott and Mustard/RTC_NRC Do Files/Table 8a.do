/*** Table 8a ***/

clear
#delimit;
use UpdatedStateLevelData-2010.dta, clear;

set more off;

drop trnd;
drop ppb;

/* Dummy model - Murder */
areg  lmur 
shalll
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Murder */
areg  lmur 
aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Murder */
areg  lmur
shalll aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Rape */
areg  lrap 
shalll
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Rape */
areg  lrap 
aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Rape */
areg  lrap
shalll aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Assault */
areg  laga 
shalll
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Assault */
areg  laga 
aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Assault */
areg  laga 
shalll aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Robbery */
areg  lrob 
shalll
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Robbery */
areg  lrob 
aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Robbery */
areg  lrob 
shalll aftr
aovio popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Auto */
areg  laut 
shalll
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Auto */
areg  laut 
aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Auto */
areg  laut 
shalll aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Burglary */
areg  lbur 
shalll
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Burglary */
areg  lbur 
aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Burglary */
areg  lbur 
shalll aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Dummy model - Larceny */
areg  llar 
shalll
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Larceny */
areg  llar 
aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Larceny */
areg  llar 
shalll aftr
aopro popstate 
rpcpi rpcui rpcim rpcrpo density
ppb* ppw* ppn*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;



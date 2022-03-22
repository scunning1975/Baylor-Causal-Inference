/*** Table 6b ***/

clear
#delimit;
use UpdatedCountyCrimeData-2010.dta, clear;

set more off;

set virtual on;

drop ppwm09;
drop ppwf09;
drop ppbm09;
drop ppbf09;
drop ppnm09;
drop ppnf09;

drop trnd;

/* Dummy model - Murder */

areg  lratmur 
shalll
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Murder */

areg  lratmur 
aftr 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Murder */

areg  lratmur 
shalll aftr
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Rape*/

areg  lratrap 
shalll
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Rape*/

areg  lratrap 
aftr 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Rape*/

areg  lratrap
shalll aftr
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Assault */

areg  lrataga 
shalll
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Assault*/

areg  lrataga 
aftr 
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Assault*/

areg  lrataga 
shalll aftr 
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Robbery */

areg  lratrob 
shalll
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Robbery */

areg  lratrob 
aftr 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Robbery */

areg  lratrob
shalll aftr
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Auto */

areg  lrataut 
shalll
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Auto */

areg  lrataut 
aftr 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Auto */

areg  lrataut
shalll aftr
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Burglary */

areg  lratbur 
shalll
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Burglary */

areg  lratbur 
aftr 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Burglary */

areg  lratbur
shalll aftr
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Larceny */

areg  lratlar 
shalll
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Spline model - Larceny */

areg  lratlar 
aftr 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Larceny */

areg  lratlar
shalll aftr
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr* trnd*
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;




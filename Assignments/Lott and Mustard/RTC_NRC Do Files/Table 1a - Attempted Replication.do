/*** Table 1a Attempted Replication ***/

clear
#delimit;
set mem 500m;
log using Table1aAttempted.log, replace;
use Lott_Dataset.dta, clear;

set more off;

drop if year<1977;
drop if year>2000;

/* create year dummies here */

tabulate year, gen(yr);
summarize yr*;

/* Dummy model - Murder */

areg  lratmur 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Murder */

areg  lratmur 
shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Murder */

areg  lratmur 
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Rape*/

areg  lratrap 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Rape*/

areg  lratrap 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Rape*/

areg  lratrap
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Assault */

areg  lrataga 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Assault*/

areg  lrataga 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Assault*/

areg  lrataga 
shallf shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Robbery */

areg  lratrob 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Robbery */

areg  lratrob 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Robbery */

areg  lratrob
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Auto */

areg  lrataut 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Auto */

areg  lrataut 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Auto */

areg  lrataut
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Burglary */

areg  lratbur 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Burglary */

areg  lratbur 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Burglary */

areg  lratbur
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Larceny */

areg  lratlar 
shallf
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Larceny */

areg  lratlar 
shlltrda 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Larceny */

areg  lratlar
shallf shlltrda
yr*
[aweight=popc], absorb(fipsid) robust;

log close;


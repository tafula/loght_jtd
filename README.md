# Python scripts for figures in:
### *"On Landau-Siegel zeros and heights of singular moduli"* [arXiv:?](https://arxiv.org/abs/?) / [Download](http://www.kurims.kyoto-u.ac.jp/~tafula/pdf/abc_siegel.pdf)

----
## Description
### Fixed files
* *generators/listgen.py*: Generator of lists (negFDs.txt and hjtds.txt simultaneously, described below).

* *generators/figure_1.py*: Generator of the image (described below)

* *params.txt:* Tells generators the upper limit and precision for values generated for lists (default: *negative fundamental discriminants* up to -10^6, *precision* up to 10^{-16})

* *lpl1chiD/\*:* Additional scripts to calculate and plot L'(1, chi\_D)/L(1, chi\_D) (cf. lpl1chiD/README.md)

----
### Generated files
#### Images
* *imgs/figure\_1.png:* Graph of ht(j(tau\_D))/3log(|D|) for D negative fundamental discriminants with |D| <= 10^6, where:
	* *ht* = absolute logarithmic Weil height,
	* *j* = Klein's classical j-invariant function,
	* *tau_D* = sqrt(D)/2 if D == 0 (mod 4), (-1+sqrt(D))/2 if D == 1 (mod 4),


#### Lists
* *lists/negFDs.txt:* Negative fundamental discriminants for D > -10^6

* *lists/hjtds.txt:* List of the values of ht(j(tau_D))/log(|D|) for D > -10^6

----
## How to run

### Linux
 1. Run gen.sh (can be halted and resumed at any point)
 
### Not-linux
 1. Run generators/listgen.py (can be halted and resumed at any point)
 2. Run generators/figure_1.py
 
In both cases, lists are stored in ~/lists and images are stored in ~/imgs.

----
## Dependencies

All the Python scripts were written for Python 2.7. Apart from standard Python libraries, [mpmath](http://mpmath.org/) and [Matplotlib](https://matplotlib.org/) are necessary to run the scripts.

----
## Time estimate

As a first version, the algorithms were not exactly written with efficiency in mind. For example, a laptop with the specs

* *Processor:* Intel(R) Core(TM) i3-5005U CPU @ 2.00GHz,
* *Memory:* 4GiB, clock 1600MHz (0.6ns),
* *HDD:* WDC WD5000LPCX-6 500GB,

running *listgen.py* until 10^6 takes approximately 30 hours, whilst running it until 10^7 takes a good portion of an entire month.

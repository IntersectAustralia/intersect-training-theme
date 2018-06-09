---
layout: module
title:  "Module 02: Styling"   # This will appear at the top of the page
short-title: "Mod. 2" # This will appear in the Nav bar in the header
show-in-nav-bar: true
---

Welcome. This page will show the styling available. Let's start off with headers. Firstly, on pages where the `module` layout is used, the page title will be automatically shown in the top of the page. To insert other heading types insert the `#` symobl at the start of the line. For example:

# #This is header 1
## ## This is header 2
### ### This is header 3
#### #### This is header 4

Note that header style 1 is used as the page title. When you insert other headers you should start with header no. 2 (`##`).

It's always good to put some learning objectives up-front. If you have a single objective, you can simply write your objective on a line, then put `{: .objective}` directly after that line. This tells kramdown to style the text above using a css class called `objective`.

Objective: To understand the meaning of life, the universe and everything.
{: .objective}


If you have several objectives, they can be styled by using the blockquote character (`'>'`) for each line, then putting `{: .objective}` after the end of the blockquote.

> **By the time you finish reading this module you should:**
> - Understand what styles are available
> - Know how to use each style by looking at the markdown of this page
{: .objective}


If you have something important to say, use `{: .note}`.

I have something important to say.
{: .note}

Got a warning? use `{: .warning}`.

**WARNING**: Don't stand under coconut trees!
{: .warning}

Examples and exercises are best placed in an `{: .inset}`. This will give you a
nice background to distinguish this from other text.
{: .inset}

Inline code can be shown by surround the code with the accent or backtick (\`) character. If you have a block of code you can use three accents (\`\`\`)  to start and stop a *fenced code block*.

There are three types of code block supported, which follow the [Software Carpentry](https://software-carpentry.org) convention:
- **Source**: Use when you are typing code that someone should type into their computer
- **Output**: To show the output of those commands
- **Error**: When something has gone wrong

Also, if you tell it what language it is it will highlight it for you. This is GitHub Flavoured Markdown (GFM) at work.

For example, putting this into your markdown document:

```
Some code
No tags
```


~~~
```Shell
$ cd ~
$ echo "What a wonderful world" > louis_armstrong.txt
$ cat louis_armstrong.txt
```
{: .source}
~~~

Will display like this:

```Shell
$ cd ~
$ echo "What a wonderful world" > louis_armstrong.txt
$ cat louis_armstrong.txt
```
{: .source}

After which you can show the output by using the `{: .output}` tag:
```shell
What a wonderful world
```
{: .output}

Or, if the code produces an error you can display it using `{: .error}`:
```shell
$ cat louise armstrong.txt
cat: louise: No such file or directory
cat: armstrong.txt: No such file or directory
```
{: .error}

Have a lot of code or output you want to display? No problem, boostrap (used as the underlying css framework for this theme) will handle that well by automatically inserting horizontal scrollbards. If you also want vertical scrollbars, add the `.pre-scrollable` tag to your markdown. For example:

~~~
```
Some output here....
```
{: .output .pre-scrollable}
~~~

```
------------------------------------------------------------------------------------- /cm/software/modulefiles --------------------------------------------------------------------------------------
abaqus/6.14                bzip2/1.0.6                fontconfig/2.12.93         imagemagick/7.0.7          mkldnn/0.12                polymake/3.0               superlu/5.2.0
abinit/7.10.5              cadaver/0.23.3             freetype/2.7               impute/2.3.2               moea/2.12                  ppl/1.1                    svm/322.1
abinit/8.8.2               caffe/0.16.4               freetype/2.8.1             infernal/1.0.2             mono/4.6.0                 proj/4.7.0                 swan/41.10
abyss/2.0.2                cairo/1.15.2               fribidi/1.0.1              iotk/icc/1.2.2             mothur/1.25.0              proj/4.8.0                 swash/4.0.1
ants/2017.04.07            ccv/2017.01.23             fsl/5.0.9                  itsx/1.0.11                mothur/1.39.4              protobuf/3.1.0             swat/637
anuga/2016.04.19           cegma/2.5                  ftgl/2.1.3                 jags/4.3.0                 mpc/1.0.3                  protobuf/3.1.0-gcc6        swig/3.0.12
apache-ant/1.10.1          cfitsio/3.370              gamess/2018.02.14          java/1.7.0_79              mpfr/3.1.5                 python/2.7.13              tensorflow/1.3.1
apache-commons/csv/1.5     cgal/4.8.2                 gatk/4.0.2.1               java/1.8.0_45              muscle/3.8.1551            python/3.3.4               tensorflow/1.7.1-python3.6
apache-commons/math/3.6.1  cmake/3.2.2                gatk/4.beta.1              jemalloc/3.6.0             namd/2.9                   python/3.5.3               tensorflow/gpu/1.7.0
apache-maven/3.5.2         cmake/3.7.2                gd/2.2.1                   jmodeltest/2.1.10          ncbi-blast/2.2.29          python/3.6.3               terastitcher/1.10.0
apache-spark/2.2.0         cntk/2.4                   gdal/2.1.2                 jpeg/1.3.0                 ncbi-blast/2.6.0           qe/6.2                     terastitcher/1.10.1
arpack/3.4.0               coin-clp/1.16.11           geneid/1.4.4               julia/0.6.2                nccl/2.0.5                 qiime/1.9.1                terastitcher/2016.05.26
atk/2.22.0                 concorde/2003.12.19        geos/3.5.0                 keras/2.0.2                netcdf/4.4.1.1             qt/4.8.6                   tiff/4.0.7
atlas/3.10.3               cplex/12.51                gerris/2012.11.30          lammps/2016.03.22          netcdf/icc/4.4.1.1         qt/5.6.2                   tophat/2.1.1
augustus/3.2.3             cplex/12.71                ghostscript/9.22           lammps/2017.08.11          netcdff/4.4.4              R/3.3.2                    transdecoder/3.0.1
autodock/4.2.6             cplex/12.8                 glew/1.9.0                 lapack/3.7.0               netcdff/icc/4.4.4          R/3.4.0                    transrate/1.0.3
bamtools/2.4.1             crystal/17.101             glib/2.34.0                lcms/2.9                   netpbm/10.61.2             rdkit/2018.03.01           trf/4.09
barracuda/0.7.107          ctffind/4.0.16             glpk/4.61                  leafcutter/2018.01.23      nltk/3.0                   rdptools/2.0.2             trimgalore/0.4.4
basilisk/2017.03.14        cudnn/6.0                  gmap/2017.03.17            liggghts/3.3.0             ode/0.13                   regtools/0.4.0             trimmomatic/0.36
bazel/0.10.1               cufflinks/2.2.1            gmp/6.1.2                  liggghts/3.6.0             ogdi/3.2.0                 relion/1.4                 trinityrnaseq/2.2.0
bazel/0.2.1                curl/7.52.1                gmsh/3.0.6                 linear/2.1                 oiio/1.5.24                RepeatMasker/4.0.7         ucsc/3.44
bazel/0.4.3                cutadapt/1.14              gmt/5.2.1                  lmgc90/2017.11.13          openal/1.18.0              ripser/2017.05.04          udunits/2.2.26
bazel/0.5.0                deepchem/1.3.2.dev290      gnuplot/5.2.2              lmgc90/2018.02.26          openbabel/2.3.2            rmats/3.2.5                vcftools/0.1.13
bazel/0.6.1                detonate/1.11              gpuarray/0.6.2             lmgc90/2018.dev            openblas/0.2.19            rmats/4.0.1                velvet/1.2.10
```
{: .output .pre-scrollable}


# Mix it up

If you want to mix headings, text and code together in an inset by nesting blockquote (`>`) characters. For example:

~~~
> ### This is an inset in a blockquote
> You can use whatever you like in here.
> It's especially good for examples, because you can mix plain text and code
> ```python
> import monty_python as mp
> funny = mp.one_liner()
> print(funny)
>```
> {: .source}
{: .inset}
~~~


Will render like this:
> ### This is an inset in a blockquote
> You can use whatever you like in here.
> It's especially good for examples, because you can mix plain text and code
> ```python
> import monty_python as mp
> funny = mp.one_liner()
> print(funny)
>```
> {: .source}
{: .inset}



At the end of a module you should do one of two things:

Say **congratulations** and show your readers a picture of a cake with the `{: .finished}` tag.
{: .finished}

...or tell people to go to the next module with `{: .next-link}`:


Here is some sample Output.
{: samp}


[Go to the next module]({{ site.baseurl }}/modules/02-styling)
{: .next-link}

That's it! You've made it to the end.

Have a cake :)
{: .finished}

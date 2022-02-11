# becausejustynfun
What the Package Does (One Line, Title Case)

This is for functions that I use regularly such as plotting stuff

It is also the first package that I have made so it is expected to have bugs.

Guide used: `https://www.pipinghotdata.com/posts/2020-10-25-your-first-r-package-in-1-hour/`

### Package Development Libraries

```r
library(usethis)
library(devtools)
```

### Create new package.	

```r
usethis::create_package("path/package")
```

### Connect to GitHub repo.	

```r
usethis::use_git()
usethis::use_github()
```

### Add license.	

```r
usethis::use_mit_license("Your name")
```

### Check build.	

```r
devtools::check()
```

### Create new function.	

```r
usethis::use_r("function_name")
```

### Test drive function.	

```r
devtools::load_all()
```

### Insert Roxygen skeleton.	

```
Put curser inside the function then either
	Code -> Insert Roxygen Skeleton
	Shift + Option + Apple + R
```

### Document package.	

```r
devtools::document()
```

### Preview documentation.	

```r
?function
```

### Check build.	

```r
devtools::check()
```

### Specify package dependencies.

```r
usethis::use_package("package")
```

### Specify functions within packages.

```r
package::function
```

###  Document package.	

```r
devtools::document()
```

### Check build.	

```r
devtools::check()
```

### Install package.	

```r
devtools::install("path/package") 
#or
devtools::install_github("user/repo")
```

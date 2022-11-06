# TODO

### Major
* Add teaching section. 


### Minor
* Change to one column style.
* Update website title with CMU logo and name. 
* Update menubar color. 
* Add a banner with background image and one liner research goal. 

### Done
* Change Services to markdown style listings. 

## Setup

1. Use template from https://github.com/wowchemy/starter-hugo-academic and create private repo https://github.com/sumonbis/my-website
2. git clone https://github.com/sumonbis/my-website
3. Create folder 'themes' in my-website. Move to 'themes' folder.
4. git clone https://github.com/sumonbis/wowchemy-hugo-modules.git
5. Create a folder 'custom-wowchemy' and copy all from the above repo to this folder.

--------------

## Customization

1. Change go.mod to the following in my-website
```
module github.com/wowchemy/starter-academic

replace github.com/wowchemy/wowchemy-hugo-modules/v5 => ./themes/custom-wowchemy
replace github.com/wowchemy/wowchemy-hugo-modules/wowchemy-cms/v5 => ./themes/custom-wowchemy/wowchemy-cms
replace github.com/wowchemy/wowchemy-hugo-modules/wowchemy/v5 => ./themes/custom-wowchemy/wowchemy

go 1.15

require (
	github.com/wowchemy/wowchemy-hugo-modules/v5 v5.3.0
)
```

## Other resources

### Parent repos
* https://github.com/sumonbis/starter-hugo-academic
* https://github.com/sumonbis/wowchemy-hugo-modules

### Hugo
* https://gohugo.io/getting-started/quick-start/
* https://youngkin.github.io/post/createafreeblogsite/#create-a-basic-site

### Academic theme
* https://wowchemy.com/docs/getting-started/install-hugo-extended/
* https://zhauniarovich.com/post/2020/2020-09-hugo-modules/
* https://lmyint.github.io/post/hugo-academic-tips/
* https://www1.icsi.berkeley.edu/~wooters/post/getting-started/
* https://www.arnoudplantinga.nl/post/getting-started/
* Customization: https://www.connorrothschild.com/post/animate-hugo-academic/
* Old version: https://mickaellalande.github.io/post/how-to-create-an-academic-github-page-with-hugo/
* Example: https://www.kyleichan.com/post/hugo-academic/
* Example: https://jiahao.github.io/
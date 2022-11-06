module github.com/wowchemy/starter-academic

replace github.com/wowchemy/wowchemy-hugo-modules/v5 => ./themes/custom-wowchemy
replace github.com/wowchemy/wowchemy-hugo-modules/wowchemy-cms/v5 => ./themes/custom-wowchemy/wowchemy-cms
replace github.com/wowchemy/wowchemy-hugo-modules/wowchemy/v5 => ./themes/custom-wowchemy/wowchemy

go 1.15

require (
	github.com/wowchemy/wowchemy-hugo-modules/v5 v5.3.0
)

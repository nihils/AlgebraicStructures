#
all:
	cd src/ && ghc -XMultiParamTypeClasses -XFlexibleInstances --make Main.hs -outputdir ../lib/ -o ../examples && cd ../

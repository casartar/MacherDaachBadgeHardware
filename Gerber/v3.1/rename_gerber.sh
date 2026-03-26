## KiCAD gerber format to ITEAD renamer
## http://jaanus.tech-thing.org

#loop through all files
for f in *
do
   # Bottom Layer 
   if [ "${f: -9}" == "-B.Cu.gbl" ]
   then
      mv -v "$f" "${f:0: -9}.gbl"
   fi
   # Top Layer
   if [ "${f: -9}" == "-F.Cu.gtl" ]
   then
      mv -v "$f" "${f:0: -9}.gtl"
   fi
   # Solder Mask Top
   if [ "${f: -11}" == "-F.Mask.gts" ]
   then
      mv -v "$f" "${f:0: -11}.gts"
   fi
   # Solder Mask Bottom
   if [ "${f: -11}" == "-B.Mask.gbs" ]
   then
      mv -v "$f" "${f:0: -11}.gbs"
   fi
   # Silk Top
   if [ "${f: -12}" == "-F.SilkS.gto" ]
   then
      mv -v "$f" "${f:0: -12}.gto"
   fi
   # Silk Bottom
   if [ "${f: -12}" == "-B.SilkS.gbo" ]
   then
      mv -v "$f" "${f:0: -12}.gbo"
   fi
   # Drill Drawing
   if [ "${f: -4}" == ".drl" ]
   then
      mv -v "$f" "${f:0: -4}.drl"
   fi
   # Board outline
   if [ "${f: -14}" == "-Edge.Cuts.gm1" ]
   then
      mv -v "$f" "${f:0: -14}.gm1"
   fi

done
 

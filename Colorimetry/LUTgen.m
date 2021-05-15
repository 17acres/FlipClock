redScale=0.95;%0.96 theoretical maybe
greenScale=.87;
blueScale=0.93;%0.859 theoretical
gamma=2.2;
invals=[0:1/255:1];

redScale=redScale/max([redScale,greenScale,blueScale]);
greenScale=greenScale/max([redScale,greenScale,blueScale]);
blueScale=blueScale/max([redScale,greenScale,blueScale]);

red=invals.^gamma.*redScale*255;
green=invals.^gamma.*greenScale*255;
blue=invals.^gamma.*blueScale*255;

plot(red,'r')
hold on
plot(green,'g')
plot(blue,'b')

fid = fopen("gammaLUT.h","w");
fputs(fid, "#ifndef GAMMA_LUT\n#define GAMMA_LUT\n\n#include <stdint.h>\n");
fputs(fid, "#define LUT_RED 0\n");
fputs(fid, "#define LUT_GREEN 1\n");
fputs(fid, "#define LUT_BLUE 2\n");
fputs(fid, "extern const uint8_t gammaLUT[256][3];\n");
fputs(fid, "#endif\n");
fclose(fid);

fid = fopen("gammaLUT.c","w");
fputs(fid, "#include \"gammaLUT.h\"\n");
fputs(fid, "//red,green,blue\n");
fputs(fid,"const uint8_t gammaLUT[][]={\n");

for i=1:size(invals,2)
  if(i!=256)
    fputs(fid,sprintf("\t{%1.0f,%1.0f,%1.0f},\n",red(i),green(i),blue(i)));
  else
    fputs(fid,sprintf("\t{%1.0f,%1.0f,%1.0f}\n",red(i),green(i),blue(i)));
  endif
endfor

fputs(fid,"};\n");
fclose(fid);
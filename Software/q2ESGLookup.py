#! /usr/bin/env python
import sys
import glob
from lxml import etree as ET
from copy import deepcopy

realmNamesList=['Atmosphere','Ocean','LandIce','Aerosols','AtmosphericChemistry','OceanBioChemistry','LandSurface','SeaIce']
XSLFILENAME="xml2ESGLookup.xsl"

finalResult=ET.Element("lookup")
fileNameList=glob.glob("*_bdl.xml")
assert len(fileNameList)==8 ,'Error, expecting 8 files, one for each realm'
for filename in fileNameList :
    realmName=filename[:filename.find('_')]
    assert realmName in realmNamesList, 'Error, unexpected file name found : '+filename
    doc = ET.parse(filename)
    styledoc = ET.parse("xsl/"+XSLFILENAME)
    style = ET.XSLT(styledoc)
    result = style(doc)
    root=result.getroot()
    for child in root :
        finalResult.append(deepcopy(child))
    #    tokens = str(result).split()
    #    unique=[]
    #    for token in tokens :
    #        if token not in unique :
    #            unique.append(token)
    #            print token
    #else :
    #    print 'Found duplicate : '+token
print(ET.tostring(finalResult,pretty_print=True))

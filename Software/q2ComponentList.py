#! /usr/bin/env python
import glob
from lxml import etree as ET

realmNamesList=['Atmosphere','Ocean','LandIce','Aerosols','AtmosphericChemistry','OceanBioChemistry','LandSurface','SeaIce']
XSLFILENAME="xml2ComponentList.xsl"

finalResult=[]
fileNameList=glob.glob("*_bdl.xml")
assert len(fileNameList)==8 ,'Error, expecting 8 files, one for each realm'
for filename in fileNameList :
    realmName=filename[:filename.find('_')]
    assert realmName in realmNamesList, 'Error, unexpected file name found : '+filename
    doc = ET.parse(filename)
    styledoc = ET.parse("xsl/"+XSLFILENAME)
    style = ET.XSLT(styledoc)
    result = style(doc)
    listResult=str(result).split()
    finalResult.extend(listResult)

print "model"
for name in finalResult :
    print name

#coding=utf-8
# -------------------------------------
# function: analyse zalora brandName
# auther: cheng feng
# time: 2014-12-29
# changing log:
# -------------------------------------

import traceback
import os,sys
import traceback
import datetime
import time
import csv   

def readFile(file):
    brandDict = {}
    with open(file, 'rb') as csvfile:
        reader = csv.reader(csvfile,  delimiter = ',', quotechar = '|', quoting = csv.QUOTE_MINIMAL)
        for row in reader:   
                #print row
                brandName = row[0].split('[')[1].split(']')[0]
                #print brandName
                if brandName in brandDict.keys() : 
                        brandDict[brandName] = brandDict[brandName] + 1
                else: 
                        brandDict[brandName] = 1  
    return brandDict
    
if __name__=='__main__':
    begin=time.time()
    date=str(datetime.datetime.now()-datetime.timedelta(days=1))[:10] 
    print 'begin:'  + time.strftime("%Y-%m-%d %X",time.localtime()) 
    file = '/home/magentodev/top10_sample.csv' # file path
    brandDict = readFile(file)
    for key in sorted(brandDict, key=brandDict.get, reverse=True):
        print key, brandDict[key] # print sorted result
	
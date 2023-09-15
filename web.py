from bs4 import BeautifulSoup
import pandas as pd
import requests as rq
from selenium import webdriver
from selenium.webdriver.common.by import By
df=pd.DataFrame()
for i in range(1,1000):
    extra_info={}
    info=['carpet-area','status','floor','transaction','facing','overlooking','ownership','parking','bathroom','balcony']
    html_text=rq.get("https://www.magicbricks.com/property-for-sale/residential-real-estate?proptype=Multistorey-Apartment,Builder-Floor-Apartment,Penthouse,Studio-Apartment,Residential-House,Villa&page="+str(i)+"&cityName=Delhi-NCR")
    soup=BeautifulSoup(html_text.text,'lxml')
    name=pd.Series(soup.find_all('h2',class_="mb-srp__card--title")).apply(lambda tag: tag.text)
    price=pd.Series(soup.find_all('div',class_="mb-srp__card__price--amount")).apply(lambda tag: tag.text)
    space=pd.Series(soup.find_all('div',class_="mb-srp__card__price--size")).apply(lambda tag: tag.text)
    prop=pd.Series(soup.find_all('div',class_='mb-srp__card__ads__info--name')).apply(lambda tag: tag.text)
    data={
        'Name':name,
        'Price':price,
        'Rate':space,
        'property':prop,
    }
    
    for k in info:
        new=[]
        a=soup.find_all('div',class_='mb-srp__card__summary__list--item',attrs={'data-summary': k})
        for j in a:
            new.append(j.find('div',class_="mb-srp__card__summary--value"))

        data.update({k:pd.Series(new).apply(lambda tag: tag.text)})
    df_1=pd.DataFrame(data)
    df=df._append(df_1,ignore_index=True)
df.to_csv("real_estate_1.csv")


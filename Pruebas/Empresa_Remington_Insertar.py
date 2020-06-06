# -*- coding: utf-8 -*-
"""
Created on Tue Dec 17 17:59:33 2019

@author: afarboleda
"""

import os
import time
import pandas as pd
from itertools import islice
from selenium import webdriver
from selenium.common.exceptions import ElementNotInteractableException


def restart():
        import sys
        print("argv was",sys.argv)
        print("sys.executable was", sys.executable)
        print("restart now")

        import os
        os.execv(sys.executable, ['python'] + sys.argv)
    


injected_javascript = (
        '$("#productShortcut").val(211).select2(); $("#productShortcut").trigger("change")'
)

mainpath = "/Simulacion/datasets"
filename = "Empresa.csv"
fullpath = os.path.join(mainpath, filename)     

Empleados = pd.read_csv(fullpath, encoding='latin-1', error_bad_lines=False, delimiter=',', dtype=str)

df = pd.DataFrame(Empleados, columns = ['Nombre','Apellido','TipoDoc','Identificacion','Salario'])  

NroFila = 0

if NroFila > 0:
    NroFila+=1
    f = open ('/Simulacion/Datasets/Fila.txt','w')
    f.write(str(NroFila))
    f.close()

driver = webdriver.Chrome('C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe')  # Optional argument, if not specified will search path.

url = "http://localhost:55511/PaginasWeb/IngresoTrabajador.aspx"


try:

    driver.get(url)
    
    for index, row in islice(df.iterrows(), NroFila, None):
        nombre = row["Nombre"]
        apellido = row["Apellido"]
        tipodoc = row["TipoDoc"]
        documento = row["Identificacion"]
        salario = row["Salario"]


        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_nombre"]').clear()
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_nombre"]').send_keys(nombre)
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_apellido"]').clear()
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_apellido"]').send_keys(apellido)
        #driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_tipoidentificacion"]').selectByIndex(tipodoc);
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_identificacion"]').clear()
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_identificacion"]').send_keys(documento)
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_salario"]').clear()
        driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_salario"]').send_keys(salario)
        
       
        element = driver.find_element_by_xpath('//*[@id="btnSueldo"]')
        driver.execute_script("arguments[0].click();", element)
        
        element = driver.find_element_by_xpath('//*[@id="ContentPlaceHolder1_Btn_Ingresar"]')
        driver.execute_script("arguments[0].click();", element)        
        
        
        time.sleep(2)

                
        NroFila+=1
          
    
except ElementNotInteractableException:
    restart()

print('YA TERMINE')
    
            
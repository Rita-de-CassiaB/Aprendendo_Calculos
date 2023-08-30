from datetime import date, datetime
import psutil
import time
import datetime
import mysql.connector

cpu= psutil.cpu_times()

processador = psutil.cpu_percent(interval=1)

memoria= psutil.virtual_memory()
memoria_troca= psutil.swap_memory( )

disco = psutil.disk_usage("/")

rede = psutil.net_io_counters()

#so = psutil

cnx = mysql.connector.connect(user='Trackware System', password = 'trackwaresystem123!', host='localhost', database='Trackware')
cursor = cnx.cursor()

def inserir_banco():
    print('BANCO')
    data = datetime.datetime.now()
    dados_insert = (None, 100, data, float(cpu_percentual), float(cpu_sistema), float(cpu_idle), float(cpu_interrupt), float(disco_percentual), float(disco_livre), float(disco_total), float(memoria_total), float(memoria_disponivel), float(memoria_usada), float(memoria_swap),  float(rede_bytes_enviados), float(rede_bytes_recebidos), float(rede_erros_envio), float(rede_erros_recebimento))   
    comando_insert = ("INSERT INTO Dados"
             "(idDados,fkDispositivo, data_hora, cpu_percentual, cpu_sistema, cpu_idle, cpu_interrupt, disco_percentual, disco_livre, disco_total, memoria_total, memoria_disponivel, memoria_usada, memoria_swap,  rede_bytes_enviados, rede_bytes_recebidos, rede_erros_envio, rede_erros_recebimento)"
         "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
    cursor.execute(comando_insert, dados_insert)
    cnx.commit()
    time.sleep(10)
    
while(True):
        print('CPU')
        # COMPONENTE CPU
        cpu_idle = cpu[3]
        cpu_interrupt = cpu.interrupt #irq linux
        cpu_sistema = '{:.2f}'.format(cpu.system)
        cpu_percentual = '{:.2f}'.format(processador)
        #time.sleep(5)
        print('MEMORIA')
        #MEMORIA
        memoria_total = '{:.2f}'.format(memoria.total)
        memoria_disponivel = '{:.2f}'.format(memoria.available)
        memoria_usada = '{:.2f}'.format(memoria.used)
        memoria_swap = '{:.2f}'.format(memoria.percent)
        #time.sleep(10)
    #print ('Total: {:.2f}'.format(memoria.total))
    #print ('Disponível: {:.2f}'.format(memoria.available))
    #print ('Livre e não alocada: {:.2f}'.format(memoria.used))
    #print ('Disponível: {:.2f}'.format(memoria_troca.percent))
    #print('\n ')
        print('DISCO')
        # COMPONENTE DISCO
        disco_total = disco.total
        disco_livre = disco.free
        disco_percentual = disco.percent
        #print('Usado:', disco.used)
        #time.sleep(60)
        print('REDE')
        rede_bytes_enviados = rede.bytes_sent
        rede_bytes_recebidos = rede.bytes_recv
        rede_erros_envio = rede.errout
        rede_erros_recebimento = rede.errin
        #print('Componente analisado: REDE')
        #print ('Bytes enviados:', rede.bytes_sent )
        #print ('Bytes recebidos:', rede.bytes_recv)
        #print ('Erros totais ao receber:', rede.errin)
        #print ('Erros totais ao enviar:', rede.errout)
        inserir_banco()
        time.sleep(50)

        
    


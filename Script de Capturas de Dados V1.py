#CPU, MEMÓRIA, DISCO, REDE, BATERIA e ULTIMO ENCERRAMENTO
import psutil
import time
import datetime

cpu= psutil.cpu_times()
processador = psutil.cpu_percent(interval=1)

memoria= psutil.virtual_memory()
memoria_troca= psutil.swap_memory( )

disco = psutil.disk_usage("/")

rede = psutil.net_io_counters()

bateria= psutil.sensors_battery()



while(True):
    print('Componente analisado: CPU')
    print ('Tempo em execução no modo kernel: {:.2f}'.format(cpu.system))
    print ('Tempo de ociosidade: {:.2f}'.format(cpu.idle))
    print ('Tempo para lidar com interrupções de hardware: {:.2f}'.format(cpu.interrupt))
    print ('Porcentagem de utilização de CPU: {:.2f}'.format(processador))
    print('\n ')


    print('Componente analisado: MEMÓRIA')
    print ('Total: {:.2f}'.format(memoria.total))
    print ('Disponível: {:.2f}'.format(memoria.available))
    print ('Livre e não alocada: {:.2f}'.format(memoria.used))
    print ('Disponível: {:.2f}'.format(memoria_troca.percent))
    print('\n ')


    
    print('Componente analisado: DISCO')
    print('Total:', disco.total)
    print('Usado:', disco.used)
    print('Livre:', disco.free)
    print('Porcentagem de uso:', disco.percent)
    print('\n ')


    print('Componente analisado: REDE')
    print ('Bytes enviados:', rede.bytes_sent )
    print ('Bytes recebidos:', rede.bytes_recv)
    print ('Erros totais ao receber:', rede.errin)
    print ('Erros totais ao enviar:', rede.errout)
    print('\n ')


    
    print('Componente analisado: BATERIA')
    print ('Porcentagem:', bateria.percent)
    print ('Conectado a fonte de energia:', bateria.power_plugged)
    print('\n ')

    
    print('Fato analisado: ÚLTIMO ENCERRAMENTO')
    print ('Data do último encerramento:', datetime.datetime.fromtimestamp(psutil.boot_time()).strftime("%d-%m-%Y %H:%M:%S"))
    print('\n ')



    time.sleep(5)

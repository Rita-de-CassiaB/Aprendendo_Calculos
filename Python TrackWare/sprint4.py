#cpu,memoria,processador,rede
import psutil
import time
cpu=psutil.cpu_times()
memoria=psutil.virtual_memory()
psutil.cpu_percent(interval=1, percpu=True)
processador=psutil.cpu_percent(interval=1, percpu=True)
rede=psutil.net_io_counters()
dados = []
while(True):
    dados.append(psutil.cpu_percent(interval=1, percpu=True) [1])
    dados.append(psutil.cpu_times().system)
    dados.append(psutil.virtual_memory()[1])
    dados.append(psutil.net_io_counters()[1])
    time.sleep(5)
    print('Sistem CPU;', dados[1], '\n ' )

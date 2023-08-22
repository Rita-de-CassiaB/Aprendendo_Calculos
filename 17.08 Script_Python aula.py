import psutil

psutil.cpu_times()

psutil.cpu_times().system

cpu = psutil.cpu_times()

cpu

cpu[1]

cpu[1]/36000 #transformando em horas

round(cpu[1]/36000,3) #arredondando

psutil.cpu_percent() #transformando em porcentagem

while(True):
    psutil.cpu_percent()

while(True):
    psutil.cpu_percent()
    time.sleep(3)

psutil.cpu_percent(interval=1, percpu=True)

psutil.cpu_count()

psutil.cpu_count(logical=False)


psutil.cpu_freq()


psutil.cpu_freq(percpu=True)

psutil.disk_partitions()

psutil.disk_usage('C:\\')


psutil.disk_usage('/')[3]

memtot = psutil.virtual_memory()[0]
memused = psutil.virtual_memory()[3]
memtot

psutil.sensors_battery()[1]/3600 # tempo de bateria

datetime.datetime.fromtimestamp(psutil.boot_time()).strftime("%Y-%m-%d %H: %M: %S")

psutil.users()

psutil.pids()

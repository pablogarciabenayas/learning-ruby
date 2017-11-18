require 'Process_'
require 'ProcessManager'

p0 = Process_.new(1,0,"init",450)
p1 = Process_.new(2,1,"chrome",1001)
p2 = Process_.new(3,1,"firefox",2002)
p3 = Process_.new(4,1,"pdf",3003)
p4 = Process_.new(5,1,"vlc",4004)
p5 = Process_.new(6,1,"eclipse",5005)
p6 = Process_.new(7,2,"chrome",606)
p7 = Process_.new(8,3,"firefox",707)
p8 = Process_.new(9,4,"pdf",808)
p9 = Process_.new(10,5,"vlc",909)
p10 = Process_.new(11,2,"eclipse",1010)
p11 = Process_.new(12,2,"chrome",1010.01)

pm = ProcessManager.new()
pm.addProcess(p0)
pm.addProcess(p1)
pm.addProcess(p2)
pm.addProcess(p3)
pm.addProcess(p4)
pm.addProcess(p5)
pm.addProcess(p6)
pm.addProcess(p7)
pm.addProcess(p8)
pm.addProcess(p9)
pm.addProcess(p10)
pm.addProcess(p11)


pm.each_process() 
puts "-----"
pm.each_child_process(p1) 
puts "-----"
puts pm.memory()
puts "-----"
puts pm.top_memory_consumers()

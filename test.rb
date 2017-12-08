require 'Proceso'
require 'ProcessManager'

p0 = Proceso.new(1,0,"init",450)
p1 = Proceso.new(2,1,"chrome",1001)
p2 = Proceso.new(3,1,"firefox",2002)
p3 = Proceso.new(4,1,"pdf",3003)
p4 = Proceso.new(5,1,"vlc",4004)
p5 = Proceso.new(6,1,"eclipse",5005)
p6 = Proceso.new(7,2,"chrome",606)
p7 = Proceso.new(8,3,"firefox",707)
p8 = Proceso.new(9,4,"pdf",808)
p9 = Proceso.new(10,5,"vlc",909)
p10 = Proceso.new(11,2,"eclipse",1010)
p11 = Proceso.new(12,7,"chrome",1010.01)
p12 = Proceso.new(13,12,"chrome",1010.01)

pm = ProcessManager.new()
pm.add_process(p0)
pm.add_process(p1)
pm.add_process(p2)
pm.add_process(p3)
pm.add_process(p4)
pm.add_process(p5)
pm.add_process(p6)
pm.add_process(p7)
pm.add_process(p8)
pm.add_process(p9)
pm.add_process(p10)
pm.add_process(p11)
pm.add_process(p12)


pm.each_process() {|p| puts p}
puts "-----"
pm.each_child_process(p0) {|p| puts p}
puts "-----"
puts pm.memory()
puts "-----"
puts pm.top_memory_consumers()

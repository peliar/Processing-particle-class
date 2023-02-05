# Processing-particle-class
较为通用的processing粒子类定义。<br>
此类中规定了粒子的位置、速度、加速度的横纵坐标和颜色、大小等其他信息。<br>
一般来说颜色的变量应该遵循特定格式，在processing中有color这个默认关键字，此类中的所有参数可以根据需要改变用途。<br>
此文件运行在processing 4.0.1下，mian函数文件平行的独立文件中。可直接将其放在工程文件夹内，详细文档见软件官网。<br>
https://processing.org/reference

类的初始化
---
使用此类需要4个初始化参数以确定粒子的位置和速度<br>
```Java
ArrayList<Symbol> array;
array = new ArrayList<Symbol>();
array.add(new Symbol(random(50)+mouseX, random(50)+mouseY, random(10)-5, random(10)-5));
```
其他参数默认初始化为0，可在外部重新指定。

类方法
---
`updateState()`根据加速度来确定下一帧粒子的速度，进而确定位置。加速度与物体实际受力情况有关。<br>
`pDraw(int s)`简单的对象可视化，可任意修改。

function lotto = lotto( n ) % Jackpot彩票号码生成器，输入数字n即可生成n注随机彩票号码。其中n必须为整数
       
    if (n>=1 && floor(n)==n) %如果n是大于等于1的整数，输出号码。floor(n)==n表示：如果四舍五入的数就是它本身，即证明它为整数
        for i=1:1:n  %生成n组彩票号码。从1开始，间隔1，一直到n。变量i不用事先定义！
            normal=randperm(50,5); %自选号。分号表示结果不输出到屏幕上。randperm(a,b)表示从1至a的a个数中随即选取b个输出到屏幕上(a>b>=1)
            super=randperm(10,2);  %特选号。          
            lotto_number=[normal super] %输出自选号和特选号组合

            clear normal %清除已经输出的自选号
            clear super  %清除已经输出的特选号
        end
        
    else %如果n是小数或小于1的数，则报错
        sprintf('Error! Please input a integer not smaller than 1.')  %sprintf指令输出文字
    end

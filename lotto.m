function lotto = lotto( n ) % Jackpot��Ʊ��������������������n��������nע�����Ʊ���롣����n����Ϊ����
       
    if (n>=1 && floor(n)==n) %���n�Ǵ��ڵ���1��������������롣floor(n)==n��ʾ����������������������������֤����Ϊ����
        for i=1:1:n  %����n���Ʊ���롣��1��ʼ�����1��һֱ��n������i�������ȶ��壡
            normal=randperm(50,5); %��ѡ�š��ֺű�ʾ������������Ļ�ϡ�randperm(a,b)��ʾ��1��a��a�������漴ѡȡb���������Ļ��(a>b>=1)
            super=randperm(10,2);  %��ѡ�š�          
            lotto_number=[normal super] %�����ѡ�ź���ѡ�����

            clear normal %����Ѿ��������ѡ��
            clear super  %����Ѿ��������ѡ��
        end
        
    else %���n��С����С��1�������򱨴�
        sprintf('Error! Please input a integer not smaller than 1.')  %sprintfָ���������
    end

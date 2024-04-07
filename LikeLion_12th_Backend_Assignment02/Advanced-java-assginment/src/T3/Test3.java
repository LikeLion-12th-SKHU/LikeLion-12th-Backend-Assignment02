package T3;

import java.io.*;

public class Test3
{
    public static void main(String[] args) throws IOException
    {
        try
        {
            BufferedReader bufRead1 = new BufferedReader(new InputStreamReader(System.in));
            int repeatNum = Integer.parseInt(bufRead1.readLine());
            String Number[] = bufRead1.readLine().split(" ");

            int result = 0;
            for (int i = 0; i < repeatNum; i++)
            {
                result = result + Integer.parseInt(Number[i]);
            }
            System.out.printf("정수의 합은 %d입니다", result);

        }
        catch (NumberFormatException Exception1)
        {
            System.out.printf("예외가 발생했습니다! \n예외정보 : " + Exception1);
        }
    }
}
//참조1. https://youtu.be/TVjjNLmu08o?feature=shared, 배열 - 남궁석의 정석코딩
//참조2. https://youtu.be/I4XrVgCzKM4?feature=shared, 예외처리 - 상동
//참조3. https://github.com/LikeLion-12th-SKHU/LikeLion-12th-Backend-Assignment02/pull/1/commits/ac6f3576d184039a289d29059e8190a59a802bb5, 두오님 PR 참조
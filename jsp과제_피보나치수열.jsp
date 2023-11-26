<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fibonacci Sum</title>
</head>
<body>

<%
    // 피보나치 수열의 합을 계산하는 메소드 선언
    public int Fi(int n) {
        if (n <= 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            int a = 0, b = 1, sum = 1;
            for (int i = 2; i <= n; i++) {
                int temp = a + b;
                a = b;
                b = temp;
                sum += temp;
            }
            return sum;
        }
    }

    // 1부터 100까지의 피보나치 수열의 합 계산 및 출력
    int result = Fi(100);
    out.println("1부터 100까지의 피보나치 수열의 합: " + result);
%>

</body>
</html>
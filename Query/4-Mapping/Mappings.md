# Mappings

```sql
-- 매핑은 DB의 스키마와 비슷한 역할이다
-- JSON 형태의 데이터를 루씬이 이해할 수 있도록 바꿔주는 작업
-- 매핑에는 명시적 매핑과 다이나믹 매핑 2가지가 있다
```

| 데이터 형태 | 데이터 타입 | 설명 |
| --- | --- | --- |
| 텍스트 | text | 전문 검색이 필요한 데이터로 텍스트 분석기가 텍스트를 작은 단위로 분리한다 |
| 텍스트 | keyword | 정렬이나 집계에 사용되는 텍스트 데이터로 분석을 하지 않고 원문을 통째로 인덱싱 |
| 날짜 | date | 날짜/시간 데이터 |
| 정수 | byte, short, integer, long | byte: 부호가 있는 8비트데이터
short: 부호가 있는 16비트 데이터
Integer: 부호가 있는 32비트 데이터
long: 부호가 있는 64비트 데이터 |
| 실수 | scaled_float, half_float, double, float | scaled_float: float 데이터에 특정 값을 곱해서 정수형으로 바꾼 데이터. 정확도는 떨어지나 필요에 따라 집계에서 효율적으로 사용가능

half_float: 16비트 부동소수점 실수 데이터
double: 32비트 부동소수점 실수 데이터
float: 64비트 부동소수점 실수 데이터 |
| 불린 | boolean | 참/거짓 데이터로 true/false만을 값으로 갖는다 |
| IP주소 | ip | ipv4, ipv6 타입 ip주소를 입력가능 |
| 위치정보 | geo-point, geo-shape | geo-point: 위도, 경도 값을 갖는다
geo-shape: 하나의 위치 포인트가 아닌 임의의 지형 |
| 객체형 | object | 계층 구조를 갖는 형태로 필드 안에 다른 필드들이 들어갈 수 있다. 쿼리로 접근할 수 있다. |
| 배열형 | nested | 배열형 객체를 저장한다. 객체를 따로 인덱싱하여 객체가 하나로 합쳐지는 것을 막고, 배열 내부의 객체에 쿼리로 접근할 수 있다. |
| 배열형 | join | 부모/자식 관계를 표현 할 수 있다. |
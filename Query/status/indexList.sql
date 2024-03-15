-- ES의 현재 상태를 빠르게 확인할 수 있는 방법으로 cat API를 제공
-- 사용시 제공하는 api 목록을 출력
GET _cat


-- 인덱스 목록 출력
GET _cat/indices

-- 뒤에는 파라미터를 추가로 붙일 수가 있다
-- v는 컬럼의 이름을 출력
-- s는 정렬
-- h는 헤더
-- 아래는 index 명으로 오름차순 정렬한 결과이다
GET _cat/indices?v&s=index



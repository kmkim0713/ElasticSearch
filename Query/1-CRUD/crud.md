# ElasticSearch Query

```sql
-- 인덱스 목록 조회
GET _cat/indices

-- 인덱스?
-- 도큐먼트를 저장하는 논리적 단위
-- 동일한 인덱스에 있는 도큐먼트는 동일한 스키마를 갖는다
-- 인덱스 이름은 영어 소문자 혹은 특수문자로 생성이 가능하지만 
-- 쉼표나 슬래쉬, 역슬래쉬와 같은 기호들은 사용이 불가

-- 인덱스 생성
PUT index1

-- 인덱스 생성시 매핑값 설정
PUT index2
{
    "mappings": {
        "properties": {
            "field1": { "type": "text" },
            "field2": { "type": "integer" },
            "field3": { "type": "date" }
        }
    }
}

-- 인덱스 삭제
DELETE index2

-- 인덱스에 도큐먼트를 추가하는 것을 "인덱싱"이라고한다
-- PUT으로 index1에 인덱싱
PUT index1/_doc/1
{
  "name": "kkm",
  "age": 30,
  "gender": "male"
}

-- POST로 index1에 인덱싱
POST index1/_doc
{
  "name": "testUser",
  "age": 40,
  "gender": "male"
}

-- 인덱스의 매핑값을 확인 할 수 있다
-- 출력시 maapings에 long타입, text타입이 입력된 데이터에 알맞게 적용된 것을 볼 수 있음
-- 데이터 추가시 타입을 지정하지 않아도 ES는 도큐먼트의 필드와 값을 보고 자동으로 지정해주는데
-- 이를 다이나믹 매핑이라고 한다. 
-- 실무에서는 매핑값을 미리 다 지정하므로 다이나믹 매핑을 막는다. (dynamic: strict 적용)
GET index1
-- GET index1 출력 결과
{
  "index1" : {
    "aliases" : { },
    "mappings" : {
      "properties" : {
        "age" : {
          "type" : "long"
        },
        "gender" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          }
        },
        "name" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          }
        }
      }
    },
    "settings" : {
      "index" : {
        "routing" : {
          "allocation" : {
            "include" : {
              "_tier_preference" : "data_content"
            }
          }
        },
        "number_of_shards" : "1",
        "provided_name" : "index1",
        "creation_date" : "1710724817560",
        "number_of_replicas" : "1",
        "uuid" : "b6-K3xSWS-CHvx_BsbpxkA",
        "version" : {
          "created" : "7170099"
        }
      }
    }
  }
}

-- 도큐먼트 추가시 PUT과 POST의 차이
-- PUT의 경우 맨 뒤에 "1"이라는 값을 주어 도큐먼트의 "_id"값을 1로 설정
-- POST의 경우 "_id"값을 자동으로 할당하여준다.
GET index1/_search

-- GET index1/_search 출력 결과
{
  "took" : 6,
  "timed_out" : false,
  "_shards" : {
    "total" : 1,
    "successful" : 1,
    "skipped" : 0,
    "failed" : 0
  },
  "hits" : {
    "total" : {
      "value" : 2,
      "relation" : "eq"
    },
    "max_score" : 1.0,
    "hits" : [
      {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "1",
        "_score" : 1.0,
        "_source" : {
          "name" : "kkm",
          "age" : 30,
          "gender" : "male"
        }
      },
      {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "SucoT44BUwkavKdj4IL3",
        "_score" : 1.0,
        "_source" : {
          "name" : "testUser",
          "age" : 40,
          "gender" : "male"
        }
      }
    ]
  }
}

-- 도큐먼트 업데이트
-- ES의 도큐먼트 수정작업은 비용이 많이 들기 때문에 권장되지 않는다.
POST index1/_update/1
{
  "doc":{
    "name": "kkm22"
  }
}
```
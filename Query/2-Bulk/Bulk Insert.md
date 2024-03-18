# Bulk Insert

```sql

-- _bulk는 한번에 도큐먼트를 밀어넣는 것을 말한다
-- 데이터의 포맷은 JSON 문법이 아닌 NDJSON 문법이다
POST _bulk
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value1","field2":1,"field3":"2022-01-01"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value2","field2":2,"field3":"2022-01-02"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value3","field2":3,"field3":"2022-01-03"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value4","field2":4,"field3":"2022-01-04"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value5","field2":5,"field3":"2022-01-05"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value6","field2":6,"field3":"2022-01-06"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value7","field2":7,"field3":"2022-01-07"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value8","field2":8,"field3":"2022-01-08"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value9","field2":9,"field3":"2022-01-09"}
{"index":{"_index":"index1","_type":"_doc"}}
{"field1":"value10","field2":10,"field3":"2022-01-10"}

-- _bulk 수행 후 출력
-- 각각의 도큐먼트마다 status를 반환하며 "result"값을 보고 생성여부를 확인 가능
{
  "took" : 270,
  "errors" : false,
  "items" : [
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "S-dIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 0,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "TOdIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 1,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "TedIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 2,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "TudIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 3,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "T-dIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 4,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "UOdIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 5,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "UedIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 6,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "UudIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 7,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "U-dIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 8,
        "_primary_term" : 1,
        "status" : 201
      }
    },
    {
      "index" : {
        "_index" : "index1",
        "_type" : "_doc",
        "_id" : "VOdIT44BUwkavKdj1oKp",
        "_version" : 1,
        "result" : "created",
        "_shards" : {
          "total" : 2,
          "successful" : 1,
          "failed" : 0
        },
        "_seq_no" : 9,
        "_primary_term" : 1,
        "status" : 201
      }
    }
  ]
}

```
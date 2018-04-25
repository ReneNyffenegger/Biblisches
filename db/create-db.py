#!/bin/python
# vi: foldmarker=_{,_} foldmethod=marker

import sqlite3
import os

db_name = 'BibleBooks.db'
if os.path.isfile(db_name):
   os.remove(db_name)

db  = sqlite3.connect(db_name)
cur = db.cursor()

cur.execute("""
create table book (
--
--  Created by
--    https://github.com/ReneNyffenegger/Biblisches/db/create-db.py
--
  id              text    primary  key,
  order_modern    integer not null unique,
  testament       text not null check (testament in ('old', 'new'))
)
""")

cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1mo'   ,  1 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2mo'   ,  2 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '3mo'   ,  3 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '4mo'   ,  4 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '5mo'   ,  5 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jos'   ,  6 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'ri'    ,  7 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'rt'    ,  8 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1sam'  ,  9 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2sam'  , 10 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1koe'  , 11 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2koe'  , 12 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1chr'  , 13 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2chr'  , 14 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'esr'   , 15 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'neh'   , 16 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'est'   , 17 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hi'    , 18 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'ps'    , 19 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'spr'   , 20 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'koh'   , 21 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hl'    , 22 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jes'   , 23 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jer'   , 24 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'kla'   , 25 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hes'   , 26 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'dan'   , 27 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hos'   , 28 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'joe'   , 29 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'am'    , 30 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'ob'    , 31 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jon'   , 32 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'mi'    , 33 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'nah'   , 34 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hab'   , 35 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'zeph'  , 36 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hag'   , 37 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'sach'  , 38 , 'old'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'mal'   , 39 , 'old'))

cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'mt'    , 40 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'mk'    , 41 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'lk'    , 42 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'joh'   , 43 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'apg'   , 44 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'roem'  , 45 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1kor'  , 46 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2kor'  , 47 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'gal'   , 48 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'eph'   , 49 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'phil'  , 50 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'kol'   , 51 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1thes' , 52 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2thes' , 53 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1tim'  , 54 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2tim'  , 55 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'tit'   , 56 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'phim'  , 57 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'hebr'  , 58 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jak'   , 59 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1petr' , 60 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2petr' , 61 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '1joh'  , 62 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '2joh'  , 63 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( '3joh'  , 64 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'jud'   , 65 , 'new'))
cur.execute ('insert into book (id, order_modern, testament) values (?, ?, ?)', ( 'offb'  , 66 , 'new'))

cur.execute ('commit')

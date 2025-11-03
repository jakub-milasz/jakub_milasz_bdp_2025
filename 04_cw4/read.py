import json
import pandas as pd
import psycopg2
from sqlalchemy import create_engine
from shapely.geometry import Point
from geoalchemy2 import WKTElement
import os
from dotenv import load_dotenv

with open("example_pred.json", "r") as f:
  data = json.load(f)

df = pd.json_normalize(data)
df.columns = ['timestamp', 'lat', 'lon']

df["geom"] = df.apply(lambda row: Point(row["lon"], row["lat"]), axis=1)
df['geom'] = df['geom'].apply(lambda g: g.wkt)
df = df.drop(columns=["lat", "lon"])

load_dotenv()

host = os.getenv("host")
user = os.getenv("user")
password = os.getenv("password")
database = os.getenv("database")
port = os.getenv("port")

engine = create_engine(f'postgresql+psycopg2://{user}:{password}@{host}:{port}/{database}')

df.to_sql('positions', engine, if_exists='append', index=False)
from flask import Flask , request ,jsonify
# from helper import load_model , tts , pts
import numpy as np
import torch
import librosa
from datetime import datetime

import soundfile as sf
import pymysql
import pandas as pd
from flaskext.mysql import MySQL

app = Flask(__name__)

mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'pbldb'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

mysql.init_app(app)

# conn=pymysql.connect(host='localhost',port=int(3306),user='root',passwd='',db='pbldb')

@app.route('/')
def index():
	return '<h1>Hello World!</h1>'

#Get all audio
@app.route("/audio")
def get_audio():
		try:
			conn = mysql.connect()
			cur = conn.cursor(pymysql.cursors.DictCursor)
			sql = """SELECT * FROM audio"""
			cur = conn.cursor()
			cur.execute(sql)
			row_headers=[x[0] for x in cur.description] #this will extract row headers
			rv = cur.fetchall()
			json_data=[]
			for result in rv:
				json_data.append(dict(zip(row_headers,result)))
			return jsonify(json_data)

		except Exception as e:
			print(e)

#Get all date
@app.route("/date")
def get_date():
		try:
			conn = mysql.connect()
			cur = conn.cursor(pymysql.cursors.DictCursor)
			sql = """SELECT date FROM audio"""
			cur = conn.cursor()
			cur.execute(sql)
			row_headers=[x[0] for x in cur.description] #this will extract row headers
			rv = cur.fetchall()
			json_data=[]
			for result in rv:
				json_data.append(dict(zip(row_headers,result)))
			return jsonify(json_data)

		except Exception as e:
			print(e)

#Get audio by date
@app.route("/audiobydate/<date>")
def get_audio_by_date(date):
		try:
			conn = mysql.connect()
			cur = conn.cursor(pymysql.cursors.DictCursor)
			sql = """SELECT * FROM audio WHERE date = %s"""
			cur = conn.cursor()
			cur.execute(sql, date)
			row_headers=[x[0] for x in cur.description] #this will extract row headers
			rv = cur.fetchall()
			json_data=[]
			for result in rv:
				json_data.append(dict(zip(row_headers,result)))
			return jsonify(json_data)

		except Exception as e:
			print(e)

app.run(debug=True)
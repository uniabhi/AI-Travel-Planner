#!/bin/bash
uvicorn run_server:app --host 0.0.0.0 --port 8000 &
streamlit run travel_app.py --server.port=8501 --server.address=0.0.0.0
wait
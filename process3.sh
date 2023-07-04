#!/bin/bash

env MICRO_KAFKA_ADDR="127.0.0.1:9092" \
    MICRO_METRICS_PORT=":9004" \
    MICRO_REDIS_ADDRESS="192.168.0.121:6379" \
    MICRO_REDIS_PASSWORD="000415" \
    MICRO_CONFIG_SECRET_KEY="lBLnE1cmAq2GtFbUTfycuDxKBXEIgu7JSpBd0KHf/9o=" \
    MICRO_PROFILE="service" \
    MICRO_PROXY="127.0.0.1:8443" \
    MICRO_MONGODB_ADDRESS="/micro?authSource=admin&readPreference=secondaryPreferred" \
    MICRO_TRACING_REPORTER_ADDRESS="" \
    MICRO_NAMESPACE="micro" \
    MICRO_REGISTRY_TLS_CERT="/certs/registry/cert.pem" \
    MICRO_REGISTRY_TLS_KEY="/certs/registry/key.pem" \
    MICRO_SERVICE_VERSION="latest" \
    MICRO_CONFIG_ADDRESS="" \
    TZ="Asia/Shanghai" \
    MICRO_REGISTRY_TLS_CA="/certs/registry/ca.crt" \
    MICRO_SERVICE_NAME="match_process" \
    MICRO_POSTGRESQL_ADDRESS="/micro" \
    MICRO_AUTH_ID="match_process-latest" \
    MICRO_AUTH_SECRET="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoic2VydmljZSIsInNjb3BlcyI6WyJzZXJ2aWNlIl0sIm1ldGFkYXRhIjpudWxsLCJuYW1lIjoibWF0Y2hfZnJvbnRlbmQtbGF0ZXN0IiwiZXhwIjoxNzE4Njk0NDUwLCJpc3MiOiJtaWNybyIsInN1YiI6Im1hdGNoX2Zyb250ZW5kLWxhdGVzdCJ9.OAAQXZtgqO359wbgbIm-h6fBud0XydwL_N5TR8ZcmkdCvW4oeh_a7_gpEX_H-0FgFFL8rbvFBqMGNIp34a2v-vFTLn0nMdaGW49malMmthKe9oIRZm24lnlxcuGlFS2pVWpGIKAbjlfSZYvUidf52Rpjv7S5RwHwb9Xbu88oM3IrLH-QnuGMoMBMmJ7oQSuBzBc_m392dr5zmqJMy_vOQBZiw2VzsBhiZkxFq1aDUOhJ1Iq-dF4zGvU_cgEMRN_lW3FWlxwZ3pwOHELkAXtchexMlsR0_bm4-1_fuNvsRoD_RdkwgKubFJ_GnlAYt6D9FGCkPBKqslcJy4O3TiGzTuX4APe9eD4uft8-SITmzpglvc8e3YqO4kUFfHGmP9G8Hgdne13lehY0dd5qDDsxiaEnUp94bFk0OXejWAq-S3wLMYpXb8WaxAhglK49xSt-jU_a74H45slyesRSWXbxruwexB-7IC5hxHTvEBwRxC1PnMgqSyd9TLSk3Zgtg_Fei4aIo5xU5-rHGw61OyRRVATvLgRMVZrXEzFqaEw4OVrGHdupDinwVN5DTKU5z8k0iVWM5XqkNV_ivVkJvylk1xe28Hra2PEmuJM6WgoCvuKI6SUtZnM9YLo99DE5aXq5TOSp6OdS1gGM7tJeiSieDso4KTXwp0W14I37IyVgMCk" \
    ./match_process/match_process
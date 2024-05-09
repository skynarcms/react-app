#!/bin/sh
cd /app
npm install --prefer-offline --production --quiet --force
export PORT=80
exec npm run start
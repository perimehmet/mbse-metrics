# mbse-metrics
Code repository for Enterprise Architect and Grafana SQL queries. 

1. Download [dockerappdata.zip](https://github.com/perimehmet/mbse-metrics/blob/main/dockerappdata.zip), unzip and place in C:\dockerappdata

![image](https://github.com/perimehmet/mbse-metrics/assets/80420699/d4e49c0f-0368-45d0-b81c-d61f172c2692)

2. Install [docker desktop](https://www.docker.com/products/docker-desktop/) (for windows)
3. Start docker desktop and wait for the docker engine to start
4. Open command prompt and cd to C:\dockerappdata
5. Run `docker compose up -d'
6. Copy "http://localhost:3000" and paste in browser
7. Login with admin / admin
8. Navigate to Dashboards

![image](https://github.com/perimehmet/mbse-metrics/assets/80420699/1e2d2eeb-423c-46e6-ba36-b8313e86663f)

10. Connect EA to mysql database on localhost:3306 and login with root / PASSWORD123

![image](https://github.com/perimehmet/mbse-metrics/assets/80420699/7f9658a0-3417-477c-8fa6-8880bca80527)

11. Add a new model to the repository and close/re-open the connection to the EA server
12. Download [model_rules.xml](https://github.com/perimehmet/mbse-metrics/blob/main/model_rules.xml)
13. Import XMI in EA and place at root of model

![image](https://github.com/perimehmet/mbse-metrics/assets/80420699/d07e16ac-995d-4ec1-b9f8-7a3f92973b81)

Start playing!

# README

* Ruby version: 3.1.2

- 我們該如何執行這個 server
    1. clone project
        - `git clone [git@github.com](mailto:git@github.com):chi811008/course-api.git`
    2. install rails
        - `gem install rails`
    3. 進入專案
        - `cd course-api`
    4. 執行 server
        - `rails server`
- 專案的架構，API server 的架構邏輯
    - App 底下包含
        - Model: Table
            - CourseModel
            - UnitModel
        - Controlle(API): 獲取資料庫資料，對資料庫做 CRUD，render json data
            - CoursesController
            - UnitsCcontroller
        
        ```jsx
        ├── app
        │   ├── controllers
        │   │   ├── api
        │   │   │   └── v1
        │   │   │       ├── apidocs_controller.rb
        │   │   │       ├── courses_controller.rb
        │   │   │       └── units_controller.rb
        │   │   ├── application_controller.rb
        │   │   └── concerns
        │   ├── models
        │   │   ├── application_record.rb
        │   │   ├── concerns
        │   │   ├── course.rb
        │   │   └── unit.rb
        │   └── views
        ```
        
    - config: 網頁設定參數
        - routes: URL 設定
    - db schema: 資料庫結構
    - test: API 測試
- 你對於使用到的第三方 Gem 的理解，以及他們的功能簡介
    - rails
    - sqlite3
    - swagger-blocks
    - pg
- 你在程式碼中寫註解的原則，遇到什麼狀況會寫註解
    - 程式碼可讀性較低的時候會寫註解
    - 解釋 class 功能的時候
    - 提醒
- 當有多種實作方式時，請說明為什麼你會選擇此種方式
    - 先參考官方文件
- 在這份專案中你遇到的困難、問題，以及解決的方法
    - ruby 2.7 升級到 3.1 有夠難
        - 解決方式：google
            
            用 rvm 解決
            
            `install rvm`
            
            `rvm install 3.1.0` 
            
    - Heroku 11/28 要付費才能使用
        - 解決方式：跟 tech lead 求救，換成 Fly
            
            嘗試中
            
    - swagger api 與 UI 串接

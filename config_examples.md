# Примеры конфигурации резюме

## 🎯 Типы резюме для разных ролей

### Software Engineer (Backend)
```latex
% Технические навыки
\skillblock{Programming Languages}{Python, Java, Go, C++, SQL}
\skillblock{Backend Frameworks}{Django, Flask, Spring Boot, Gin, Express.js}
\skillblock{Databases}{PostgreSQL, MySQL, MongoDB, Redis, Elasticsearch}
\skillblock{Cloud \& DevOps}{AWS, Docker, Kubernetes, Terraform, Jenkins}
\skillblock{Architecture}{Microservices, REST APIs, GraphQL, Message Queues}
```

### Software Engineer (Frontend)
```latex
% Технические навыки
\skillblock{Programming Languages}{JavaScript, TypeScript, HTML5, CSS3}
\skillblock{Frontend Frameworks}{React, Angular, Vue.js, Next.js, Nuxt.js}
\skillblock{Styling}{Sass, Less, Styled Components, Tailwind CSS, Material-UI}
\skillblock{Tools}{Webpack, Vite, Babel, ESLint, Jest, Cypress}
\skillblock{State Management}{Redux, MobX, Vuex, Zustand}
```

### Data Scientist
```latex
% Технические навыки
\skillblock{Programming Languages}{Python, R, SQL, Scala}
\skillblock{ML/AI Frameworks}{TensorFlow, PyTorch, Scikit-learn, Keras, XGBoost}
\skillblock{Data Processing}{Pandas, NumPy, Spark, Hadoop, Airflow}
\skillblock{Visualization}{Matplotlib, Seaborn, Plotly, Tableau, Power BI}
\skillblock{Cloud ML}{AWS SageMaker, Google AI Platform, Azure ML}
```

### DevOps Engineer
```latex
% Технические навыки
\skillblock{Cloud Platforms}{AWS, Google Cloud, Azure, DigitalOcean}
\skillblock{Containerization}{Docker, Kubernetes, Helm, Istio}
\skillblock{CI/CD}{Jenkins, GitLab CI, GitHub Actions, CircleCI, ArgoCD}
\skillblock{Infrastructure}{Terraform, Ansible, Chef, Puppet, CloudFormation}
\skillblock{Monitoring}{Prometheus, Grafana, ELK Stack, Datadog, New Relic}
```

## 🌍 Языковые версии

### Русская версия (resume.tex)
```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[russian,english]{babel}
% ... остальные настройки
```

### Английская версия (resume_english.tex)
```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
% ... остальные настройки
```

### Многоязычная версия
```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[russian,english,spanish]{babel}
% ... остальные настройки
```

## 🎨 Цветовые схемы

### Стандартная FAANG схема
```latex
\definecolor{faangblue}{RGB}{0,102,204}
\definecolor{faangdark}{RGB}{51,51,51}
\definecolor{faanglight}{RGB}{245,245,245}
\definecolor{faangaccent}{RGB}{255,140,0}
```

### Google стиль
```latex
\definecolor{googleblue}{RGB}{66,133,244}
\definecolor{googlered}{RGB}{234,67,53}
\definecolor{googleyellow}{RGB}{251,188,4}
\definecolor{googlegreen}{RGB}{52,168,83}
```

### Microsoft стиль
```latex
\definecolor{msblue}{RGB}{0,120,212}
\definecolor{msorange}{RGB}{255,140,0}
\definecolor{msgreen}{RGB}{16,124,16}
\definecolor{msred}{RGB}{196,43,28}
```

### Apple стиль
```latex
\definecolor{appleblue}{RGB}{0,122,255}
\definecolor{applegray}{RGB}{142,142,147}
\definecolor{applegreen}{RGB}{52,199,89}
\definecolor{applered}{RGB}{255,59,48}
```

## 📊 Разные форматы

### Академическое резюме
```latex
% Дополнительные секции для академического резюме
\section{PUBLICATIONS}
\section{RESEARCH EXPERIENCE}
\section{TEACHING EXPERIENCE}
\section{GRANTS \& AWARDS}
\section{PROFESSIONAL SERVICE}
```

### Стартап резюме
```latex
% Акцент на предпринимательстве и инновациях
\section{ENTREPRENEURIAL EXPERIENCE}
\section{STARTUP EXPERIENCE}
\section{INNOVATION \& PATENTS}
\section{LEADERSHIP \& MANAGEMENT}
```

### Консультант резюме
```latex
% Фокус на проектах и клиентах
\section{CONSULTING EXPERIENCE}
\section{CLIENT PROJECTS}
\section{INDUSTRY EXPERTISE}
\section{CERTIFICATIONS}
```

## 🔧 Настройка шрифтов

### Системные шрифты
```latex
% macOS
\setmainfont{Times New Roman}
\setsansfont{Helvetica}

% Windows
\setmainfont{Times New Roman}
\setsansfont{Arial}

% Linux
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
```

### Веб-шрифты
```latex
% Google Fonts
\setmainfont{Source Serif Pro}
\setsansfont{Source Sans Pro}

% Adobe Fonts
\setmainfont{Minion Pro}
\setsansfont{Myriad Pro}
```

## 📱 Адаптивность

### Для печати
```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage{geometry}
\geometry{left=2cm,right=2cm,top=2cm,bottom=2cm}
```

### Для цифрового просмотра
```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage{geometry}
\geometry{left=1.5cm,right=1.5cm,top=1.5cm,bottom=1.5cm}
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    citecolor=black
}
```

## 🎯 Специализированные секции

### Для разработчиков
```latex
\section{OPEN SOURCE CONTRIBUTIONS}
\section{TECHNICAL BLOGS \& ARTICLES}
\section{SPEAKING ENGAGEMENTS}
\section{HACKATHONS \& COMPETITIONS}
```

### Для менеджеров
```latex
\section{TEAM LEADERSHIP}
\section{PROJECT MANAGEMENT}
\section{BUDGET MANAGEMENT}
\section{STRATEGIC PLANNING}
```

### Для дизайнеров
```latex
\section{DESIGN PORTFOLIO}
\section{CREATIVE PROJECTS}
\section{USER EXPERIENCE RESEARCH}
\section{PROTOTYPING \& WIREFRAMING}
```

## 📈 Метрики и достижения

### Количественные результаты
```latex
% Хорошие примеры
\resumeitem{Увеличил производительность системы на 40\%}
\resumeitem{Сократил время загрузки страницы с 3.2s до 1.1s}
\resumeitem{Обрабатывает 10M+ запросов в день}
\resumeitem{Снизил количество багов на 60\%}

% Плохие примеры (избегайте)
\resumeitem{Работал над улучшением производительности}
\resumeitem{Участвовал в разработке системы}
\resumeitem{Помогал с оптимизацией}
```

### Технические детали
```latex
% Конкретные технологии
\techlist{Technologies: Python, Django, PostgreSQL, Redis, Docker, AWS}

% Архитектурные решения
\resumeitem{Внедрил микросервисную архитектуру с использованием Docker и Kubernetes}
\resumeitem{Создал RESTful API с документацией Swagger}
\resumeitem{Настроил CI/CD пайплайн с автоматическим тестированием}
```

## 🚀 Быстрые шаблоны

### Минималистичное резюме
```latex
% Только основные секции
\section{EXPERIENCE}
\section{EDUCATION}
\section{SKILLS}
```

### Подробное резюме
```latex
% Все возможные секции
\section{PROFESSIONAL SUMMARY}
\section{WORK EXPERIENCE}
\section{EDUCATION}
\section{TECHNICAL SKILLS}
\section{PROJECTS}
\section{ACHIEVEMENTS}
\section{CERTIFICATIONS}
\section{LANGUAGES}
\section{INTERESTS}
```

### Креативное резюме
```latex
% Нестандартные секции
\section{WHO I AM}
\section{WHAT I DO}
\section{WHAT I'VE BUILT}
\section{WHAT I'VE LEARNED}
\section{WHAT I'M LOOKING FOR}
```

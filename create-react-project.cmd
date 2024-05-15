@echo off
set /p project_name="Enter the name of the project: "
start /b npm create vite@latest %project_name% -- --template react

rem Wait for 5 seconds (adjust as needed)
timeout /t 5

echo Changing directory to %project_name%
cd %project_name%
echo Directory changed successfully


echo Making some basic configuration

echo /** @type {import('tailwindcss').Config} */ > tailwind.config.js
echo export default { >> tailwind.config.js
echo   content: [ >> tailwind.config.js
echo     "./index.html", >> tailwind.config.js
echo     "./src/**/*.{js,ts,jsx,tsx}", >> tailwind.config.js
echo   ], >> tailwind.config.js
echo   theme: { >> tailwind.config.js
echo     extend: {}, >> tailwind.config.js
echo   }, >> tailwind.config.js
echo   plugins: [require('daisyui'),], >> tailwind.config.js
echo } >> tailwind.config.js

del .eslintrc.cjs
echo module.exports = { > .eslintrc.cjs
echo   root: true, >> .eslintrc.cjs
echo   env: { browser: true, es2020: true, node: true }, >> .eslintrc.cjs
echo   extends: [ >> .eslintrc.cjs
echo     'eslint:recommended', >> .eslintrc.cjs
echo     'plugin:react/recommended', >> .eslintrc.cjs
echo     'plugin:react/jsx-runtime', >> .eslintrc.cjs
echo     'plugin:react-hooks/recommended', >> .eslintrc.cjs
echo   ], >> .eslintrc.cjs
echo   ignorePatterns: ['dist', '.eslintrc.cjs'], >> .eslintrc.cjs
echo   parserOptions: { ecmaVersion: 'latest', sourceType: 'module' }, >> .eslintrc.cjs
echo   settings: { react: { version: '18.2' } }, >> .eslintrc.cjs
echo   plugins: ['react-refresh'], >> .eslintrc.cjs
echo   rules: { >> .eslintrc.cjs
echo     'react/jsx-no-target-blank': 'off', >> .eslintrc.cjs
echo     'react-refresh/only-export-components': [ >> .eslintrc.cjs
echo       'warn', >> .eslintrc.cjs
echo       { allowConstantExport: true }, >> .eslintrc.cjs
echo     ], >> .eslintrc.cjs
echo   }, >> .eslintrc.cjs
echo }; >> .eslintrc.cjs


del README.md
echo # React Project Startup Template > README.md
echo. >> README.md
echo This template provides a quick setup for starting a new React project with commonly used dependencies and configurations. >> README.md
echo. >> README.md
echo This template is designed to streamline the process of starting a new React project by providing pre-configured settings and common dependencies. It includes tools like React Router DOM for routing, Tailwind CSS for styling, Axios for HTTP requests, React Query for data fetching, and many more. >> README.md
echo. >> README.md
echo Use the following link to learn more about this template: >> README.md
echo [@SazidulAlam47/react-project-startup](https://github.com/SazidulAlam47/react-project-startup) >> README.md



echo { > vercel.json
echo     "rewrites": [ >> vercel.json
echo         { >> vercel.json
echo             "source": "/(.*)", >> vercel.json
echo             "destination": "/" >> vercel.json
echo         } >> vercel.json
echo     ] >> vercel.json
echo } >> vercel.json


cd src
del App.css
del App.jsx
del assets\react.svg

del index.css

echo @tailwind base; > index.css
echo @tailwind components; >> index.css
echo @tailwind utilities; >> index.css

del main.jsx

echo import React from "react"; > main.jsx
echo import ReactDOM from "react-dom/client"; >> main.jsx
echo import "./index.css"; >> main.jsx
echo import router from "./routes/Routes"; >> main.jsx
echo import { RouterProvider } from "react-router-dom"; >> main.jsx
echo import { ToastContainer } from "react-toastify"; >> main.jsx
echo import { QueryClient, QueryClientProvider } from "@tanstack/react-query"; >> main.jsx
echo import { Toaster } from "react-hot-toast"; >> main.jsx
echo import { HelmetProvider } from "react-helmet-async"; >> main.jsx
echo. >> main.jsx
echo const queryClient = new QueryClient(); >> main.jsx
echo. >> main.jsx
echo ReactDOM.createRoot(document.getElementById("root")).render( >> main.jsx
echo     ^<React.StrictMode^> >> main.jsx
echo         ^<QueryClientProvider client={queryClient}^> >> main.jsx
echo             ^<HelmetProvider^> >> main.jsx
echo                 ^<RouterProvider router={router} /^> >> main.jsx
echo                 ^<ToastContainer /^> >> main.jsx
echo                 ^<Toaster /^> >> main.jsx
echo             ^</HelmetProvider^> >> main.jsx
echo         ^</QueryClientProvider^> >> main.jsx
echo     ^</React.StrictMode^> >> main.jsx
echo ); >> main.jsx



mkdir routes
cd routes

echo import { createBrowserRouter } from "react-router-dom"; > Routes.jsx
echo. >> Routes.jsx
echo const router = createBrowserRouter([ >> Routes.jsx
echo     { >> Routes.jsx
echo         path: "/", >> Routes.jsx
echo         element: ^<div^>Hello world!^</div^>, >> Routes.jsx
echo     }, >> Routes.jsx
echo ]); >> Routes.jsx
echo. >> Routes.jsx
echo export default router; >> Routes.jsx

cd ..

mkdir components
mkdir pages
mkdir pages\Home
mkdir hooks
mkdir layouts
mkdir firebase
mkdir providers
mkdir shared
mkdir utils

cd ..

echo Installing dependencies
npm install react-router-dom localforage match-sorter sort-by && npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init -p && npm i -D daisyui@latest && npm i prop-types && npm install react-icons --save && npm i react-helmet-async && npm install axios && npm i @tanstack/react-query && npm install sweetalert2 && npm install --save react-toastify && npm i react-hot-toast && code . && npm run dev 
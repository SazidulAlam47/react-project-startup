#!/bin/bash

# Prompt the user for the project name
echo "Please enter the name of your project:"
read project_name

# Run the npm command to create the Vite project with React template
npm create vite@latest "$project_name" -- --template react

# Change directory to the newly created project folder
cd "$project_name"

# Run npm install for required packages
npm install react-router-dom localforage match-sorter sort-by && \
npm install -D tailwindcss postcss autoprefixer && \
npx tailwindcss init -p && \
npm i -D daisyui@latest && \
npm i prop-types && \
npm install react-icons --save && \
npm i react-helmet-async && \
npm install axios && \
npm i @tanstack/react-query && \
npm install sweetalert2 && \
npm install --save react-toastify && \
npm i react-hot-toast && \


#################################

echo "Making some basic configuration"

# Configure tailwind.config.js file
rm tailwind.config.js file
echo "/** @type {import('tailwindcss').Config} */" > tailwind.config.js
echo "export default {" >> tailwind.config.js
echo "  content: [" >> tailwind.config.js
echo "    \"./index.html\"," >> tailwind.config.js
echo "    \"./src/**/*.{js,ts,jsx,tsx}\"," >> tailwind.config.js
echo "  ]," >> tailwind.config.js
echo "  theme: {" >> tailwind.config.js
echo "    extend: {}," >> tailwind.config.js
echo "  }," >> tailwind.config.js
echo "  plugins: [require('daisyui'),]," >> tailwind.config.js
echo "}" >> tailwind.config.js

# Delete .eslintrc.cjs file
rm .eslintrc.cjs

# Create .eslintrc.cjs file
echo "module.exports = {" > .eslintrc.cjs
echo "  root: true," >> .eslintrc.cjs
echo "  env: { browser: true, es2020: true, node: true }," >> .eslintrc.cjs
echo "  extends: [" >> .eslintrc.cjs
echo "    'eslint:recommended'," >> .eslintrc.cjs
echo "    'plugin:react/recommended'," >> .eslintrc.cjs
echo "    'plugin:react/jsx-runtime'," >> .eslintrc.cjs
echo "    'plugin:react-hooks/recommended'," >> .eslintrc.cjs
echo "  ]," >> .eslintrc.cjs
echo "  ignorePatterns: ['dist', '.eslintrc.cjs']," >> .eslintrc.cjs
echo "  parserOptions: { ecmaVersion: 'latest', sourceType: 'module' }," >> .eslintrc.cjs
echo "  settings: { react: { version: '18.2' } }," >> .eslintrc.cjs
echo "  plugins: ['react-refresh']," >> .eslintrc.cjs
echo "  rules: {" >> .eslintrc.cjs
echo "    'react/jsx-no-target-blank': 'off'," >> .eslintrc.cjs
echo "    'react-refresh/only-export-components': [" >> .eslintrc.cjs
echo "      'warn'," >> .eslintrc.cjs
echo "      { allowConstantExport: true }," >> .eslintrc.cjs
echo "    ]," >> .eslintrc.cjs
echo "  }," >> .eslintrc.cjs
echo "};" >> .eslintrc.cjs

# Delete README.md file
rm README.md

# Create README.md file
echo "# React Project Startup Template" > README.md
echo >> README.md
echo "This template provides a quick setup for starting a new React project with commonly used dependencies and configurations." >> README.md
echo >> README.md
echo "This template is designed to streamline the process of starting a new React project by providing pre-configured settings and common dependencies. It includes tools like React Router DOM for routing, Tailwind CSS for styling, Axios for HTTP requests, React Query for data fetching, and many more." >> README.md
echo >> README.md
echo "Use the following link to learn more about this template:" >> README.md
echo "[@SazidulAlam47/react-project-startup](https://github.com/SazidulAlam47/react-project-startup)" >> README.md

# Create vercel.json file
echo "{" > vercel.json
echo "    \"rewrites\": [" >> vercel.json
echo "        {" >> vercel.json
echo "            \"source\": \"/(.*)\"," >> vercel.json
echo "            \"destination\": \"/\"" >> vercel.json
echo "        }" >> vercel.json
echo "    ]" >> vercel.json
echo "}" >> vercel.json

# Change directory to src
cd src

# Delete files and folders
rm App.css App.jsx assets/react.svg index.css main.jsx

# Create index.css file
echo "@tailwind base;" > index.css
echo "@tailwind components;" >> index.css
echo "@tailwind utilities;" >> index.css

# Create main.jsx file
echo "import React from 'react';" > main.jsx
echo "import ReactDOM from 'react-dom/client';" >> main.jsx
echo "import './index.css';" >> main.jsx
echo "import router from './routes/Routes';" >> main.jsx
echo "import { RouterProvider } from 'react-router-dom';" >> main.jsx
echo "import { ToastContainer } from 'react-toastify';" >> main.jsx
echo "import { QueryClient, QueryClientProvider } from '@tanstack/react-query';" >> main.jsx
echo "import { Toaster } from 'react-hot-toast';" >> main.jsx
echo "import { HelmetProvider } from 'react-helmet-async';" >> main.jsx
echo >> main.jsx
echo "const queryClient = new QueryClient();" >> main.jsx
echo >> main.jsx
echo "ReactDOM.createRoot(document.getElementById('root')).render(" >> main.jsx
echo "    <React.StrictMode>" >> main.jsx
echo "        <QueryClientProvider client={queryClient}>" >> main.jsx
echo "            <HelmetProvider>" >> main.jsx
echo "                <RouterProvider router={router} />" >> main.jsx
echo "                <ToastContainer />" >> main.jsx
echo "                <Toaster />" >> main.jsx
echo "            </HelmetProvider>" >> main.jsx
echo "        </QueryClientProvider>" >> main.jsx
echo "    </React.StrictMode>" >> main.jsx
echo ");" >> main.jsx

# Create required directories
mkdir routes components pages pages/Home hooks layouts firebase providers shared utils

# Change directory to routes
cd routes

# Create Routes.jsx file
echo "import { createBrowserRouter } from 'react-router-dom';" > Routes.jsx
echo >> Routes.jsx
echo "const router = createBrowserRouter([" >> Routes.jsx
echo "    {" >> Routes.jsx
echo "        path: '/'," >> Routes.jsx
echo "        element: <div>Hello world!</div>," >> Routes.jsx
echo "    }," >> Routes.jsx
echo "]);" >> Routes.jsx
echo >> Routes.jsx
echo "export default router;" >> Routes.jsx

# Change directory back to the parent directory
cd ../..

# Start Working
echo "Opening vs code"
code . && \
npm run dev

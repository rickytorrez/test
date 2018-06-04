<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<style>
		* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font: normal 100%/1.4 'Keep Calm', helvetica, sans-serif;
  color: #fff;
  background: #1a1a11;
}

.keep-calm {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  padding: 12.5vh 0;
  overflow: hidden;
  display: table;
}

ul {
  width: 100%;
  display: table-cell;
  vertical-align: middle;
  list-style: none;
  font-size: 7vh;
  overflow: hidden;
  /* Only for webkit */
  -webkit-mask: -webkit-linear-gradient(transparent, black 10%, black 90%, transparent);
  -webkit-mask: linear-gradient(rgba(0, 0, 0, 0), #000000 10%, #000000 90%, rgba(0, 0, 0, 0));
}

li {
  text-align: center;
  text-transform: uppercase;
  text-shadow: 0 -5px 5px rgba(255, 255, 255, 0.15), 0 5px 5px rgba(255, 255, 255, 0.15);
}

#timeline-01 li {
  -moz-animation: continue-testing 3s linear infinite -1.5s;
  -webkit-animation: continue-testing 3s linear infinite -1.5s;
  animation: continue-testing 3s linear infinite -1.5s;
}

#timeline-02 li {
  -moz-animation: continue-testing 3s linear infinite;
  -webkit-animation: continue-testing 3s linear infinite;
  animation: continue-testing 3s linear infinite;
}

span {
  font-size: 5vh;
}

li:first-child span {
  font-size: 8vh;
}

.top-portal {
  width: 100%;
  height: 30vh;
  margin-top: 0;
  perspective: 1000px;
  overflow: hidden;
}
.top-portal .wrapper-portal {
  height: 30vh;
  display: block;
  margin: 0 auto;
  -moz-transform: rotate3D(45, 0, 0, -60deg) scaleX(2.4);
  -ms-transform: rotate3D(45, 0, 0, -60deg) scaleX(2.4);
  -webkit-transform: rotate3D(45, 0, 0, -60deg) scaleX(2.4);
  transform: rotate3D(45, 0, 0, -60deg) scaleX(2.4);
}
.top-portal .inner-portal {
  display: block;
  width: auto;
  max-width: 100vw;
  height: 30vh;
  margin: 0 auto;
  fill: #009cdf;
  -webkit-filter: drop-shadow(-5px -5px 20px #009cdf);
  filter: drop-shadow(-5px -5px 20px #009cdf);
  -moz-animation: spin 1s linear infinite;
  -webkit-animation: spin 1s linear infinite;
  animation: spin 1s linear infinite;
}

.bottom-portal {
  width: 100%;
  height: 30vh;
  margin-top: 40vh;
  perspective: 1000px;
  overflow: hidden;
}
.bottom-portal .wrapper-portal {
  height: 30vh;
  display: block;
  margin: 0 auto;
  -moz-transform: rotate3D(45, 0, 0, 60deg) scaleX(2.4);
  -ms-transform: rotate3D(45, 0, 0, 60deg) scaleX(2.4);
  -webkit-transform: rotate3D(45, 0, 0, 60deg) scaleX(2.4);
  transform: rotate3D(45, 0, 0, 60deg) scaleX(2.4);
}
.bottom-portal .inner-portal {
  display: block;
  width: auto;
  max-width: 100vw;
  height: 30vh;
  margin: 0 auto;
  fill: #f49007;
  -webkit-filter: drop-shadow(-5px -5px 20px #f49007);
  filter: drop-shadow(-5px -5px 20px #f49007);
  -moz-animation: spin 1s linear infinite reverse;
  -webkit-animation: spin 1s linear infinite reverse;
  animation: spin 1s linear infinite reverse;
}

@-moz-keyframes spin {
  100% {
    -moz-transform: rotateZ(360deg);
  }
}
@-webkit-keyframes spin {
  100% {
    -webkit-transform: rotateZ(360deg);
  }
}
@keyframes spin {
  100% {
    -webkit-transform: rotateZ(360deg);
    transform: rotateZ(360deg);
  }
}
@-webkit-keyframes continue-testing {
  0% {
    -webkit-transform: translateY(-70vh);
  }
  100% {
    -webkit-transform: translateY(70vh);
  }
}
@-moz-keyframes continue-testing {
  0% {
    -moz-transform: translateY(-70vh);
  }
  100% {
    -moz-transform: translateY(70vh);
  }
}
		
		
		</style>
		<div class="continue-testing">
		  <div class="top-portal">
		    <div class="wrapper-portal">
		      <svg xmlns="http://www.w3.org/2000/svg" class="inner-portal" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="500px" height="500px" viewBox="0 0 500 500" preserveAspectRatio="xMidYMid meet" enable-background="new 0 0 500 500" xml:space="preserve" >
		        <path d="M454.967 201.497c-2.046-4.584-4.103-11.274-6.81-15.257c-1.573 1.083-1.413 2.54 0.48 4.38 c-1.124-2.934-2.787-5.496-4.988-7.686c3.922 9.31 6.28 19.03 8.84 28.435c-1.234-5.589 3.67 3.72 0.694-8.076 c2.072 0.43 2.97 8.73 4.77 9.432C460.563 207.46 454.27 186.51 454.97 201.497z" />
		        <path d="M171.276 412.319c10.754 4.62 4.7 2.6 0.95 2.94c0.003 0 9.23 2.83 10.04 3.04 c-9.737-3.001 0.261-3.568-9.111-7.332c4.727-0.088 9.13 1.11 13.2 3.599c-1.075 2.478-3.178 2.9-6.31 1.27 c10.493 3.33 25.54 7.75 36.48 6.252c0.593-1.175-19.706-7.598-22.095-5.952c0.934 0.14 1.87 0.25 2.81 0.34 c-27.642-13.083-52.699-26.151-92.344-47.62c2.044 1.45 6.63 7.965-0.194 4.164c3.306 2.51 5.35 2.08 8.76 5.58 c7.969 4.11 38.31 24.85 56.05 33.515c-3.908-0.089-7.582-1.094-11.021-3.014C165.733 413.93 165.55 412.48 171.28 412.319z" />
		        <path d="M77.182 310.442c14.617 17.63 22 37.82 36.95 57.408c0.099-0.199-6.1-0.488-8.88-3.735 c1.723 0.2 3.37 0.68 4.93 1.448c-12.311-14.363-24.632-26.043-30.629-42.565c2.274 4.72 13.2 15.41 13.12 17.44 C92.829 340.59 74.55 311.47 77.18 310.442z M80.237 316.743C81.078 319 84.34 324.58 80.24 316.74 C80.237 316.74 81.01 318.23 80.24 316.743z"/>
		        <path d="M442.629 174.725c1.469 0.56 6.9 14.38 3.07 2.014c2.178-0.2 4.07 8.85 4.74 10.34 c-0.696-7.177 8.28 23.209-0.532-5.998c-0.203 0.73 5.48 8.45 4.88 4.362c-3.026-9.364-7.495-18.705-14.084-26.091 c3.146 5.93 6.39 12.06 7.69 18.717c-2.302-5.086-5.517-11.376-7.957-17.219c1.43 4.05 2.37 14 4.16 16.48 C441.933 173.69 444.25 170.57 442.63 174.725C443.427 175.03 442.78 174.33 442.63 174.725z" />
		        <path d="M81.598 352.855c4.883 5.44 15.81 16.6 24.08 25.972c-0.911-1.771-2.257-2.773-4.038-3.006 c3.476 5.66 5.19 9.22 10.88 12.823c-0.094 0.283-3.354-3.659-3.842-3.659c3.541 1.76 6.79 4.85 10.58 6.05 c-2.816 0.219-5.213-0.896-7.19-3.343c10.362 7.12 73.91 62.92 87.83 47.147c-7.133-2.744-8.451-1.786-14.452-5.389 c16.3 8.92 66.52 20.02 73.11 15.265c11.19-0.249 22.725-4.226 33.062-7.46c-2.954 0.547-5.172 2.013-6.652 4.4 c3.682-0.942 13.608-6.332 3 1.711c10.116-0.835 21.985-8.287 32.115-12.742c-2.006-0.395-3.898-0.009-5.677 1.16 c-0.027 3.72 77.603-53.258 85.821-62.336c-0.94 1.393-1.73 2.866-2.371 4.421c4.667-7.408 11.623-12.95 15.903-20.691 c-4.471 7.4 2.309-4.534 2.338-4.601c10.349-13.445 16.886-37.541 21.756-58.104c-1.413 3.396-1.294 6.56 0.36 9.51 c4.479-18.83 2.562-33.653 4.389-53.412c1.101 6.36 2.13 12.67 2.98 19.07c0.572-1.538 1.144-3.076 1.716-4.614 c0.459 2.22 0.05 6.45 1 8.619c4.262-11.575 2.08-4.508 1.488-15.275c2.561 8.397-1.777 38.209-2.246 37.51 c-1.143 3.866-2.248 7.743-3.318 11.63c2.178 0.16 2.988-1.4 2.431-4.679c6.514 4.244-29.777 68.318-27.043 64.92 c-1.17 7.845-29.53 36.709-34.982 42.181c-0.245 0.01 9.749-12.601 10.436-14.15c-6.358 0.063-9.994 21.286-0.064-3.001 c-10.074 9.819-15.756 18.314-26.59 27.018c1.844-0.784 13.148-7.72 13.526-7.166c-31.537 25.245-65.322 30.673-102.11 48.23 c2.599-1.258 5.252-2.391 7.959-3.399c-3.625 1.596-7.383 2.229-11.271 1.9c1.727-0.009 3.415-0.244 5.067-0.706 c0.537-0.208-4.18-0.938-0.602-1.934c-4.688 0.97-9.575 1.29-14.158 2.77c6.824-0.536-0.964 2.62 6.2 1.09 c-27.196 10.188-36.429-4.557-62.718-0.722c1.141-0.166 10.62 0.9 3.815-1.708c3.477-0.127 12.21 2.69 15.11 0.23 c-22.728 0.554-67.546-18.729-80.622-21.855c-0.938-0.65-9.778-6.96-11.214-5.301c1.805 1.22 3.57 2.49 5.29 3.83 c-36.271-8.563-70.657-59.726-90.703-90.053c-2.869 3.55 12.15 18.09 13.06 21.952c-7.923-5.218-13.757-19.247-18.151-26.169 c2.287 10.14 6.48 19.45 12.57 27.935c-0.104-0.308-2.169-4.169-1.906-4.756c1.247 1.49 1.77 3.72 3.19 5.07 c-0.623-1.893-1.198-3.799-1.728-5.72c2.282 4.64 5.63 8.79 8.52 13.054c-1.317-1.612-2.172-3.425-2.563-5.439 c0.235 2.36 7.36 7.76 8.69 9.703c-2.493-1.536-3.013-2.838-1.562-3.907c1.287 2.82 14.73 27.43 21.72 26.13 c-0.577-0.058 10.77 10.06 22.94 19.188c-5.697-1.851-10.722-4.871-15.075-9.062c0.963 1.14 1.93 2.29 2.89 3.43 c-4.935-1.916-9.932-7.841-13.246-11.583c7.179 5.152-4.539-7.983-4.014-6.83c0.474 2.512-0.472 2.62-2.837 0.33 c3.366 3.45 6.63 7 9.8 10.637c-11.574-11.564-25.354-25.466-30.335-29.659c1.34 1.487-15.272-25.782-9.032-15.183 c2.089 3.549-9.453-22.777-13.544-28.508c1.545-0.853 2.75-0.313 3.61 1.616c-1.34-4.911-10.351-21.199-9.144-20.536 c2.979-1.279 11.48 19.63 10.46 16.625c-1.245-8.914 4.427-0.217 3.94 1.188c-12.282-8.732-11.427-44.975-16.165-52.608 c-1.483 1.01 0.12 2.95 0.84 3.614c-0.906-3.75-1.384-7.633-2.397-11.35c2.923 9.26 3.344-35.683-0.825-49.261 c-2.357 11.631-1.549 2.073-2.306 1.202c1.547 7.136-3.956 15.21 0.53 23.382c5.375-14.501 0.62 10.42 1.03 19.32 c-1.102-3.748-2.573-4.396-2.763-8.798c-3.169 2.69 2.32 14.18 2.02 18.136c0.108-1.405-8.075-18.194-4.736-9.486 c-1.065-13.629-1.772-30.332 1.568-49.284c-0.814 12.34 4.902-10.314 4.169-11.142c4.002 4.52 4.729-33.479 11.832-45.715 c4.442-11.841 15.026-32.115 27.582-43.057c-6.606 12.458-12.094 18.71-15.943 27.299c1.042-0.04-2.767 12.587-6.119 18.91 c3.181 17.67 0.821-13.382 0.441-12.877c-1.417 6.405-4.717 12.022-6.309 18.382c1.79-13.501-7.627 19.766-4.909 18.7 c2.719-8.229 5.5-16.297 9.16-24.173c-1.217 4.002-0.2 10.492-1.694 14.143c1.092 1.65 2.65 2.19 4.66 1.62 c0.185-6.698 4.227-12.836 6.065-19.104c-3.072 1.342-4.756 3.876-5.053 7.601c2.789-7.598 5.334-12.116 10.818-22.118 c-1.073 2.081-1.602 4.28-1.586 6.6c7.025-12.626 17.988-36.869 30.858-46.148c-0.423-11.587-18.317 27.508-15.974 17.12 c0.028-0.032-7.061 10.291-7.458 9.867c1.749-3.893 3.645-7.713 5.688-11.46c-1.034 1.056-2.067 2.113-3.101 3.17 c2.45-3.728 5.231-7.192 8.345-10.392c-2.434-0.305-1.734-1.824 2.102-4.557c3.312-2.005-9.898 11.859-10.225 9.52 c5.539-14.887 28.362-34.951 40.447-44.112c-4.119 8.676-12.492 11.583-17.662 20.967c3.558-5.678 20.316-16.773 21.022-18.333 c-1.895 4.382-18.126 15.522-11.975 11.591c-4.054 3.762-10.604 9.516-12.274 14.999C117.668 75.14 130.22 60.09 159.8 45.3 c-0.596 11.028-34.118 8.503-36.399 21.256c0.959 1.78 15.773-8.067 16.172-8.227c-2.167 1.24-16.374 8.528-14.354 13.48 c1.336 3.26 16.467-9.801 5.882-4.867c1.102-1.234 24.498-15.732 24.498-16.566c-1.252 0.735-2.172 1.755-2.76 3.06 c5.151-2.792 16.004-6.605 18.97-10.484c0.848-1.11-8.17 2.731-8.342 2.804c16.633-12.361 27.775-10.277 52.861-16.27 c-2.8 1.809-2.648 3.24 0.45 4.296c-5.709 0.189-11.458 1.673-16.955 3.094c3.605-2.744 7.743-4.262 12.415-4.555 c-4.839-4.042-42.376 8.241-42.866 13.946c11.858 2.56 52.364-8.117 66.324-13.005c-0.41-0.074-7.748-0.97-10.976-1.243 c8.277-1.571 15.13-2.428 25.017-1.558c-4.72-1.011-9.649-1.845-14.417-0.528c9.589-2.835 18.875-2.066 28.566-0.946 c-6.965-0.017-3.923 3.998-14.343 3.052c4.378-4.068-11.814 0.861-11.882 2.308c0.016-0.341 62.54 5.74 68.72 7.14 c-1.787-1.439-4.98-1.976-7.105-2.959c24.855 0.49 44.72 16.99 67.03 28.497c0.354 0.16 26.61 26.44 30.6 26.43 c1.467 1.624-18.325-15.913-12.669-12.604c-4.063-3.499-8.354-6.688-12.877-9.566c1.003 2.17 2.61 3.79 4.82 4.87 c-1.119 1.541-9.152-4.978-10.928-5.101c1.499 0.11 17.42 11.26 18.83 13.368c-3.664-2.488-7.551-4.562-11.661-6.219 c5.406 4.61 33.33 20.94 28.8 14.246c-2.13-2.025 10.21 8.46 7.5 10.995c-4.113-3.712-8.061-3.772-12.47-6.988 c4.264 8.5 13.92 19.28 25.06 27.872c-4.425-8.087-7.728-12.547-13.905-17.933c1.476 1.63 2.95 3.26 4.43 4.89 c-2.686-2.354-4.205-5.266-6.739-7.585c12.157 11.28 16.04 15.19 23.84 33.287c-0.392-3.122-1.446-4.061-3.163-2.819 c3.279 7.49 7.51 9.89 11.73 17.093c-3.578 4.397-0.889 9.38 3.09 17.747c-1.723-2.9 0.5 4.7 0.44 4.47 c-6.157-6.807-6.269-13.817-13.396-20.139c1.799 3.6 3.69 7.15 5.67 10.66c-1.531-0.342-2.623-1.252-3.275-2.729 c-10.256-24.475-24.762-39.068-48.615-55.585c1.68 3.29 24.93 25.31 24.94 25.312c-0.457-1.767-3.555-3.333-3.736-3.859 c2.748 7.97 9.68 16.65 17.28 26.008c-0.621-1.462-1.242-2.925-1.863-4.387c2.329 3.82 4.26 7.83 5.78 12.02 c-11.688-19.421 1.95 3.94 5.18 8.359c-0.601-1.401-1.202-2.801-1.803-4.202c4.11 4.45 5.08 12.88 6.8 18.28 c-3.124-2.925-9.321-14.863-10.563-16.994c1.667 2.32 2.66 4.86 2.99 7.609c-10.735-11.233-9.38-18.913-18.225-29.981 c2.75 7.95 2.51 3.252-1.608-0.272c0.47 1.28 0.72 2.59 0.76 3.942c-4.342-4.873-16.328-19.367-16.655-21.985 c10.9 8.795-20.663-23.637-27.348-22.41c0.767 1.03 9.27 1.34 9.58 2.042c-3.462-7.727-16.302-9.064-22.865-12.026 c11.478 11.252-3.958-4.426-6.322-4.979c-8.907-7.333-21.324-8.534-31.279-14.18c5.685 2.65 6.25 2.12 2.399-0.492 c0.89 0.6 7.6 0.97 7.7 1.235C312.1 63.69 270.04 51.55 245.55 60.971c0.9-0.545 17.612-8.401 18.758-3.561 c-2.354-9.95-41.349 4.03-38.127 4.004c-25.101 3.793-57.695 16.209-67.796 21.592c-10.687 6.276-50.057 25.406-53.958 36.92 c6.556-5.63-2.894 9.66 5.925-2.914c-1.938 7.156-5.875 13.69-10.496 19.424c0.981-1.803 4.793-8.502 6.503-12.343 c-4.354 4.486-17.128 10.872-17.402 16.504c0.113-2.327 6.924-20.391 7.762-20.468c-10.243 9.929-17.532 30.771-18.948 44.86 c3.545-9.37 9.958-16.436 14.692-25.16c-4.382 10.921-6.971 17.673-12.87 28.209c0.238-1.321 0.536-2.629 0.891-3.924 c-1.332 3.443-9.167 29.476-6.045 13.885c-1.357 5.574-12.854 37.167-9.773 43.002c-0.078-3.104-0.272-6.201-0.583-9.292 c-2.345 9.655-3.045 22.552-0.576 23.429c-3.271 1.8 0.12 15.771-1.317 19.634c-1.292-5.662 0.278-11.589-0.913-17.143 c0.762 13.888-3.882 25.91 1.46 33.882c-1.249-3.866-1.209-7.689 0.12-11.47c0.09 4.838-0.868 11.44 0.97 16.7 c-0.25-2.438 0.668-4.066 2.755-4.883c2.156 4.654-0.174 9.03 2.52 13.433c-4.628-2.054-0.446 0.27 1.5 5.01 c-5.23-6.448-6.084-6.888-8.408-15.153c-0.058 2.188-0.115 4.377-0.172 6.565c0.22-3.34-0.883-4.974-3.309-4.902 c0.644 17.9 13.88 19.95 19.61 34.042c-5.254-3.199-11.912-4.532-17.413-7.45c3.508 13.54 9.38 26.87 15.55 39.42 c-0.315 3.013-8.952-11.731-9.984-13.573c1.175-0.104 4.34 7.33 5.31 8.065c-3.421-2.559-11.144-25.205-12.55-27.763 c-1.352 4.49 14.09 33.19 3.11 14.156c2.601 7.95 6.66 15.17 10.46 22.292c-1.403-2.777-3.191-5.823-4.065-8.838 C73.147 346.49 77.52 345.31 81.6 352.855C82.006 353.31 80.81 351.4 81.6 352.855z M439.933 293.93 c0.078 0.47 0.21 0.85 0.41 1.158C440.13 294.76 439.89 295 439.93 293.928z M46.06 219.08 c-1.66 9.572-2.62 19.213-2.879 28.924c0.877-4.97 2.014-13.16 5.288-16.951c-0.401 0.45 1.52 17.09 1.5 18.14 c0.588-5.158-1.375-36.765-3.632-36.269C45.332 214.1 45.34 223.21 46.06 219.08z M53.265 213.26 C55.523 204.56 51.13 210.36 53.27 213.262C54.616 208.06 52.92 212.79 53.27 213.262z M52.219 208.31 c-0.125 0.596-0.25 1.101-0.396 1.351L52.219 208.315z M58.74 312.533C57.17 308.9 62.26 322.94 58.74 312.53 C58.644 312.31 59.33 314.28 58.74 312.533z M57.155 301.498C55.898 302.72 57.33 305.79 57.16 301.5 C57.155 301.5 57.22 303.06 57.16 301.498z M54.892 266.545c-1.091-3.387-2.541-6.608-4.349-9.667 c2.258 1.94 2.37 7.48 2.23 7.393c-0.171 3.79 0.63 7.37 2.41 10.738C56.289 272.22 56.19 269.4 54.89 266.55 C53.089 264.55 55.65 268.28 54.89 266.545z M373.117 92.078c0.05 0.362-20.506-12.337-23.808-18.433 C357.889 79.15 364.56 87.21 373.12 92.078C373.149 92.31 369.68 90.12 373.12 92.078z M295.666 50.06 c-8.181-0.671-27.562-0.895-39.713-1.621c3.325 2.78 9.48 2.88 13.58 4.024c-4.143 0.439-7.052-0.153-11.541 0.8 c5.558 4.14 16.48 2.1 22.95 1.141c0.028-0.085-8.256-2.461-7.956-2.276c5.738 1.02 11.5 1.9 17.27 2.66 c-2.367-1.965-5.074-2.596-8.12-1.892c2.722 0.47 3.619-0.194 2.693-1.981c9.529-0.355 23.78 5.63 30.93 9.57 c-1.801-0.042-3.568 0.167-5.302 0.626c3.468 2.94 21.65 14.38 25.68 9.582c-4.159-1.469-8.386-2.707-12.68-3.713 c3.755 0.64 7.56 1.04 11.33 1.631c-6.704-5.656-0.662-1.504 4.301-0.782C321.917 58.89 313.39 54.15 295.67 50.06 C296.476 50.13 296.75 50.31 295.67 50.065z M87.137 120.504c9.819-2.385 16.864-10.68 23.593-17.5 c1.87-1.862 15.582-15.73 22.821-19.043c-3.076 2.943-5.428 6.388-7.057 10.333c4.306-2.826 7.638-5.893 12.109-8.95 c-6.25 5.982-16.785 10.884-22.586 17.522c2.904 1.26 13.056-6.357 15.788-9c-0.97 1.664-1.579 3.446-1.827 5.35 c2.001-1.821 4.039-3.598 6.115-5.333c-0.094-0.055-4.707 4.726-4.572 5.709c0.051 0.37 17.602-13.937 19.256-14.716 c-1.158-2.525-8.14 5.644-9.166 6.478c4.982-0.41-5.914-2.755-7.279 1.016c13.824-15.363 29.615-20.554 48.544-30.37 c-2.009 0.867-4.083 1.237-6.221 1.11c6.127-2.854 7.288-2.542 13.537-5.396c-2.523 0.74-4.436 2.189-5.738 4.35 c1.671-0.401 17.377-6.17 15.572-7.228c-2.942-0.069-5.885-0.109-8.829-0.12c6.6-2.642 13.981-4.638 21-5.88 c-9.099 4.46 29.746-1.983 16.922-0.941c2.731 5.1 17.031-2.538 19.779-3.326c-38.75-3.094-53.95 10.011-88.084 20.82 c0.929-0.714 7.676-4.412 9.429-4.412c0.767-3.125-37.941 15.072-45.099 22.417c8.609-8.058-9.202 4.48 1.528-3.645 c-5.573 2.39-6.981 7.303-11.634 11.163c1.469-1.747 2.936-3.496 4.4-5.246C108.13 93.3 94.33 109.92 87.14 120.5 C89.807 119.86 88 119.24 87.14 120.504z M73.194 144.162c-3.631 7.342-8.686 12.384-2.184 10.39 c0.483 4.41 0.01 5.203-1.416 2.394c-0.655 0.857-5.354 11.306-4.606 10.946c1.241-2.738 2.843-5.24 4.805-7.505 c-0.655 11.253-9.557 13.794-12.046 26.988c2.173 0.75 3.418-0.371 3.735-3.351c-0.64 3.251-1.627 6.396-2.962 9.44 c1.482-11.168-2.935 8.392-3.288 10.072c0.987-8.19 0.99 1.05 0.52 3.35c0.871-1.296 1.742-2.592 2.612-3.888 c-0.994 2.025-1.29 4.107-0.889 6.246c1.655-6.814 3.496-13.529 4.98-20.4c-0.258 0.58 10.469-41.516 18.297-48.673 c-1.391 3.252-3.26 6.199-5.608 8.839C80.076 142.45 76.7 144.15 73.19 144.162C72.605 145.35 75.2 144.16 73.19 144.162z M36.235 288.915C36.288 289.75 36.23 288.7 36.23 288.915C36.24 288.99 36.23 288.92 36.23 288.915z" />
		        <path d="M142.805 439.444c-3.756-1.135-6.91-3.177-9.461-6.125c1.81 1.74 2.92 1.84 3.32 0.3 c-0.473-0.22-10.989-3.397-9.023-4.101c2.366-0.846 11.73 4.23 13.92 4.98c-6.386-3.966-13.394-6.583-19.573-10.911 c11.432 9.373-11.918-3.012-13.57-3.793c5.883 5.99 33.15 22.88 30.06 21.783c39.192 12.37 70.41 27.99 113.47 26.97 c2.197 0.024-17.269-3.589-17.156-3.682c3.216-0.38 6.415-0.271 9.6 0.326c-8.322 7.873-67.218-12.914-83.474-19.239 c2.618 0.08 5.24 1.16 7.88 1.255c-3.53-1.353-7.123-2.504-10.78-3.454c0.79-1.278 2.019-1.363 3.687-0.255 C155.819 440.86 140.68 433.56 142.81 439.444C140.729 439.42 142.45 438.47 142.81 439.444z"/>
		        <path d="M252.372 463.809c13.712 1.442-7.093 2.457-4.611 3.856c8.466-1.691 11.86 0.67 12.946-2.95 c6.436-0.253 75.792-4.237 73.458-16.136c-0.201-1.012-6.456 0.919-2.357-2.125c-10.357 4.407-19.891 6.793-28.849 11.51 c1.747-0.296 3.494-0.592 5.241-0.888c-6.354 4.204-18.575 7.296-26.183 6.103c7.005-1.675 11.416-4.371 18.642-5.417 c-2.04-0.225-2.2-0.813-0.481-1.769C284.516 460.26 268.41 461.66 252.37 463.81 C259.159 464.52 254.51 463.52 252.37 463.809z"/>
		      </svg>
		    </div>
		  </div>
		  <div class="bottom-portal">
		    <div class="wrapper-portal">
		      <svg xmlns="http://www.w3.org/2000/svg" class="inner-portal" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="500px" height="500px" viewBox="0 0 500 500" preserveAspectRatio="xMaxYmin meet" enable-background="new 0 0 500 500" xml:space="preserve">
		        <path d="M454.967 201.497c-2.046-4.584-4.103-11.274-6.81-15.257c-1.573 1.083-1.413 2.54 0.48 4.38 c-1.124-2.934-2.787-5.496-4.988-7.686c3.922 9.31 6.28 19.03 8.84 28.435c-1.234-5.589 3.67 3.72 0.694-8.076 c2.072 0.43 2.97 8.73 4.77 9.432C460.563 207.46 454.27 186.51 454.97 201.497z" />
		        <path d="M171.276 412.319c10.754 4.62 4.7 2.6 0.95 2.94c0.003 0 9.23 2.83 10.04 3.04 c-9.737-3.001 0.261-3.568-9.111-7.332c4.727-0.088 9.13 1.11 13.2 3.599c-1.075 2.478-3.178 2.9-6.31 1.27 c10.493 3.33 25.54 7.75 36.48 6.252c0.593-1.175-19.706-7.598-22.095-5.952c0.934 0.14 1.87 0.25 2.81 0.34 c-27.642-13.083-52.699-26.151-92.344-47.62c2.044 1.45 6.63 7.965-0.194 4.164c3.306 2.51 5.35 2.08 8.76 5.58 c7.969 4.11 38.31 24.85 56.05 33.515c-3.908-0.089-7.582-1.094-11.021-3.014C165.733 413.93 165.55 412.48 171.28 412.319z" />
		        <path d="M77.182 310.442c14.617 17.63 22 37.82 36.95 57.408c0.099-0.199-6.1-0.488-8.88-3.735 c1.723 0.2 3.37 0.68 4.93 1.448c-12.311-14.363-24.632-26.043-30.629-42.565c2.274 4.72 13.2 15.41 13.12 17.44 C92.829 340.59 74.55 311.47 77.18 310.442z M80.237 316.743C81.078 319 84.34 324.58 80.24 316.74 C80.237 316.74 81.01 318.23 80.24 316.743z"/>
		        <path d="M442.629 174.725c1.469 0.56 6.9 14.38 3.07 2.014c2.178-0.2 4.07 8.85 4.74 10.34 c-0.696-7.177 8.28 23.209-0.532-5.998c-0.203 0.73 5.48 8.45 4.88 4.362c-3.026-9.364-7.495-18.705-14.084-26.091 c3.146 5.93 6.39 12.06 7.69 18.717c-2.302-5.086-5.517-11.376-7.957-17.219c1.43 4.05 2.37 14 4.16 16.48 C441.933 173.69 444.25 170.57 442.63 174.725C443.427 175.03 442.78 174.33 442.63 174.725z" />
		        <path d="M81.598 352.855c4.883 5.44 15.81 16.6 24.08 25.972c-0.911-1.771-2.257-2.773-4.038-3.006 c3.476 5.66 5.19 9.22 10.88 12.823c-0.094 0.283-3.354-3.659-3.842-3.659c3.541 1.76 6.79 4.85 10.58 6.05 c-2.816 0.219-5.213-0.896-7.19-3.343c10.362 7.12 73.91 62.92 87.83 47.147c-7.133-2.744-8.451-1.786-14.452-5.389 c16.3 8.92 66.52 20.02 73.11 15.265c11.19-0.249 22.725-4.226 33.062-7.46c-2.954 0.547-5.172 2.013-6.652 4.4 c3.682-0.942 13.608-6.332 3 1.711c10.116-0.835 21.985-8.287 32.115-12.742c-2.006-0.395-3.898-0.009-5.677 1.16 c-0.027 3.72 77.603-53.258 85.821-62.336c-0.94 1.393-1.73 2.866-2.371 4.421c4.667-7.408 11.623-12.95 15.903-20.691 c-4.471 7.4 2.309-4.534 2.338-4.601c10.349-13.445 16.886-37.541 21.756-58.104c-1.413 3.396-1.294 6.56 0.36 9.51 c4.479-18.83 2.562-33.653 4.389-53.412c1.101 6.36 2.13 12.67 2.98 19.07c0.572-1.538 1.144-3.076 1.716-4.614 c0.459 2.22 0.05 6.45 1 8.619c4.262-11.575 2.08-4.508 1.488-15.275c2.561 8.397-1.777 38.209-2.246 37.51 c-1.143 3.866-2.248 7.743-3.318 11.63c2.178 0.16 2.988-1.4 2.431-4.679c6.514 4.244-29.777 68.318-27.043 64.92 c-1.17 7.845-29.53 36.709-34.982 42.181c-0.245 0.01 9.749-12.601 10.436-14.15c-6.358 0.063-9.994 21.286-0.064-3.001 c-10.074 9.819-15.756 18.314-26.59 27.018c1.844-0.784 13.148-7.72 13.526-7.166c-31.537 25.245-65.322 30.673-102.11 48.23 c2.599-1.258 5.252-2.391 7.959-3.399c-3.625 1.596-7.383 2.229-11.271 1.9c1.727-0.009 3.415-0.244 5.067-0.706 c0.537-0.208-4.18-0.938-0.602-1.934c-4.688 0.97-9.575 1.29-14.158 2.77c6.824-0.536-0.964 2.62 6.2 1.09 c-27.196 10.188-36.429-4.557-62.718-0.722c1.141-0.166 10.62 0.9 3.815-1.708c3.477-0.127 12.21 2.69 15.11 0.23 c-22.728 0.554-67.546-18.729-80.622-21.855c-0.938-0.65-9.778-6.96-11.214-5.301c1.805 1.22 3.57 2.49 5.29 3.83 c-36.271-8.563-70.657-59.726-90.703-90.053c-2.869 3.55 12.15 18.09 13.06 21.952c-7.923-5.218-13.757-19.247-18.151-26.169 c2.287 10.14 6.48 19.45 12.57 27.935c-0.104-0.308-2.169-4.169-1.906-4.756c1.247 1.49 1.77 3.72 3.19 5.07 c-0.623-1.893-1.198-3.799-1.728-5.72c2.282 4.64 5.63 8.79 8.52 13.054c-1.317-1.612-2.172-3.425-2.563-5.439 c0.235 2.36 7.36 7.76 8.69 9.703c-2.493-1.536-3.013-2.838-1.562-3.907c1.287 2.82 14.73 27.43 21.72 26.13 c-0.577-0.058 10.77 10.06 22.94 19.188c-5.697-1.851-10.722-4.871-15.075-9.062c0.963 1.14 1.93 2.29 2.89 3.43 c-4.935-1.916-9.932-7.841-13.246-11.583c7.179 5.152-4.539-7.983-4.014-6.83c0.474 2.512-0.472 2.62-2.837 0.33 c3.366 3.45 6.63 7 9.8 10.637c-11.574-11.564-25.354-25.466-30.335-29.659c1.34 1.487-15.272-25.782-9.032-15.183 c2.089 3.549-9.453-22.777-13.544-28.508c1.545-0.853 2.75-0.313 3.61 1.616c-1.34-4.911-10.351-21.199-9.144-20.536 c2.979-1.279 11.48 19.63 10.46 16.625c-1.245-8.914 4.427-0.217 3.94 1.188c-12.282-8.732-11.427-44.975-16.165-52.608 c-1.483 1.01 0.12 2.95 0.84 3.614c-0.906-3.75-1.384-7.633-2.397-11.35c2.923 9.26 3.344-35.683-0.825-49.261 c-2.357 11.631-1.549 2.073-2.306 1.202c1.547 7.136-3.956 15.21 0.53 23.382c5.375-14.501 0.62 10.42 1.03 19.32 c-1.102-3.748-2.573-4.396-2.763-8.798c-3.169 2.69 2.32 14.18 2.02 18.136c0.108-1.405-8.075-18.194-4.736-9.486 c-1.065-13.629-1.772-30.332 1.568-49.284c-0.814 12.34 4.902-10.314 4.169-11.142c4.002 4.52 4.729-33.479 11.832-45.715 c4.442-11.841 15.026-32.115 27.582-43.057c-6.606 12.458-12.094 18.71-15.943 27.299c1.042-0.04-2.767 12.587-6.119 18.91 c3.181 17.67 0.821-13.382 0.441-12.877c-1.417 6.405-4.717 12.022-6.309 18.382c1.79-13.501-7.627 19.766-4.909 18.7 c2.719-8.229 5.5-16.297 9.16-24.173c-1.217 4.002-0.2 10.492-1.694 14.143c1.092 1.65 2.65 2.19 4.66 1.62 c0.185-6.698 4.227-12.836 6.065-19.104c-3.072 1.342-4.756 3.876-5.053 7.601c2.789-7.598 5.334-12.116 10.818-22.118 c-1.073 2.081-1.602 4.28-1.586 6.6c7.025-12.626 17.988-36.869 30.858-46.148c-0.423-11.587-18.317 27.508-15.974 17.12 c0.028-0.032-7.061 10.291-7.458 9.867c1.749-3.893 3.645-7.713 5.688-11.46c-1.034 1.056-2.067 2.113-3.101 3.17 c2.45-3.728 5.231-7.192 8.345-10.392c-2.434-0.305-1.734-1.824 2.102-4.557c3.312-2.005-9.898 11.859-10.225 9.52 c5.539-14.887 28.362-34.951 40.447-44.112c-4.119 8.676-12.492 11.583-17.662 20.967c3.558-5.678 20.316-16.773 21.022-18.333 c-1.895 4.382-18.126 15.522-11.975 11.591c-4.054 3.762-10.604 9.516-12.274 14.999C117.668 75.14 130.22 60.09 159.8 45.3 c-0.596 11.028-34.118 8.503-36.399 21.256c0.959 1.78 15.773-8.067 16.172-8.227c-2.167 1.24-16.374 8.528-14.354 13.48 c1.336 3.26 16.467-9.801 5.882-4.867c1.102-1.234 24.498-15.732 24.498-16.566c-1.252 0.735-2.172 1.755-2.76 3.06 c5.151-2.792 16.004-6.605 18.97-10.484c0.848-1.11-8.17 2.731-8.342 2.804c16.633-12.361 27.775-10.277 52.861-16.27 c-2.8 1.809-2.648 3.24 0.45 4.296c-5.709 0.189-11.458 1.673-16.955 3.094c3.605-2.744 7.743-4.262 12.415-4.555 c-4.839-4.042-42.376 8.241-42.866 13.946c11.858 2.56 52.364-8.117 66.324-13.005c-0.41-0.074-7.748-0.97-10.976-1.243 c8.277-1.571 15.13-2.428 25.017-1.558c-4.72-1.011-9.649-1.845-14.417-0.528c9.589-2.835 18.875-2.066 28.566-0.946 c-6.965-0.017-3.923 3.998-14.343 3.052c4.378-4.068-11.814 0.861-11.882 2.308c0.016-0.341 62.54 5.74 68.72 7.14 c-1.787-1.439-4.98-1.976-7.105-2.959c24.855 0.49 44.72 16.99 67.03 28.497c0.354 0.16 26.61 26.44 30.6 26.43 c1.467 1.624-18.325-15.913-12.669-12.604c-4.063-3.499-8.354-6.688-12.877-9.566c1.003 2.17 2.61 3.79 4.82 4.87 c-1.119 1.541-9.152-4.978-10.928-5.101c1.499 0.11 17.42 11.26 18.83 13.368c-3.664-2.488-7.551-4.562-11.661-6.219 c5.406 4.61 33.33 20.94 28.8 14.246c-2.13-2.025 10.21 8.46 7.5 10.995c-4.113-3.712-8.061-3.772-12.47-6.988 c4.264 8.5 13.92 19.28 25.06 27.872c-4.425-8.087-7.728-12.547-13.905-17.933c1.476 1.63 2.95 3.26 4.43 4.89 c-2.686-2.354-4.205-5.266-6.739-7.585c12.157 11.28 16.04 15.19 23.84 33.287c-0.392-3.122-1.446-4.061-3.163-2.819 c3.279 7.49 7.51 9.89 11.73 17.093c-3.578 4.397-0.889 9.38 3.09 17.747c-1.723-2.9 0.5 4.7 0.44 4.47 c-6.157-6.807-6.269-13.817-13.396-20.139c1.799 3.6 3.69 7.15 5.67 10.66c-1.531-0.342-2.623-1.252-3.275-2.729 c-10.256-24.475-24.762-39.068-48.615-55.585c1.68 3.29 24.93 25.31 24.94 25.312c-0.457-1.767-3.555-3.333-3.736-3.859 c2.748 7.97 9.68 16.65 17.28 26.008c-0.621-1.462-1.242-2.925-1.863-4.387c2.329 3.82 4.26 7.83 5.78 12.02 c-11.688-19.421 1.95 3.94 5.18 8.359c-0.601-1.401-1.202-2.801-1.803-4.202c4.11 4.45 5.08 12.88 6.8 18.28 c-3.124-2.925-9.321-14.863-10.563-16.994c1.667 2.32 2.66 4.86 2.99 7.609c-10.735-11.233-9.38-18.913-18.225-29.981 c2.75 7.95 2.51 3.252-1.608-0.272c0.47 1.28 0.72 2.59 0.76 3.942c-4.342-4.873-16.328-19.367-16.655-21.985 c10.9 8.795-20.663-23.637-27.348-22.41c0.767 1.03 9.27 1.34 9.58 2.042c-3.462-7.727-16.302-9.064-22.865-12.026 c11.478 11.252-3.958-4.426-6.322-4.979c-8.907-7.333-21.324-8.534-31.279-14.18c5.685 2.65 6.25 2.12 2.399-0.492 c0.89 0.6 7.6 0.97 7.7 1.235C312.1 63.69 270.04 51.55 245.55 60.971c0.9-0.545 17.612-8.401 18.758-3.561 c-2.354-9.95-41.349 4.03-38.127 4.004c-25.101 3.793-57.695 16.209-67.796 21.592c-10.687 6.276-50.057 25.406-53.958 36.92 c6.556-5.63-2.894 9.66 5.925-2.914c-1.938 7.156-5.875 13.69-10.496 19.424c0.981-1.803 4.793-8.502 6.503-12.343 c-4.354 4.486-17.128 10.872-17.402 16.504c0.113-2.327 6.924-20.391 7.762-20.468c-10.243 9.929-17.532 30.771-18.948 44.86 c3.545-9.37 9.958-16.436 14.692-25.16c-4.382 10.921-6.971 17.673-12.87 28.209c0.238-1.321 0.536-2.629 0.891-3.924 c-1.332 3.443-9.167 29.476-6.045 13.885c-1.357 5.574-12.854 37.167-9.773 43.002c-0.078-3.104-0.272-6.201-0.583-9.292 c-2.345 9.655-3.045 22.552-0.576 23.429c-3.271 1.8 0.12 15.771-1.317 19.634c-1.292-5.662 0.278-11.589-0.913-17.143 c0.762 13.888-3.882 25.91 1.46 33.882c-1.249-3.866-1.209-7.689 0.12-11.47c0.09 4.838-0.868 11.44 0.97 16.7 c-0.25-2.438 0.668-4.066 2.755-4.883c2.156 4.654-0.174 9.03 2.52 13.433c-4.628-2.054-0.446 0.27 1.5 5.01 c-5.23-6.448-6.084-6.888-8.408-15.153c-0.058 2.188-0.115 4.377-0.172 6.565c0.22-3.34-0.883-4.974-3.309-4.902 c0.644 17.9 13.88 19.95 19.61 34.042c-5.254-3.199-11.912-4.532-17.413-7.45c3.508 13.54 9.38 26.87 15.55 39.42 c-0.315 3.013-8.952-11.731-9.984-13.573c1.175-0.104 4.34 7.33 5.31 8.065c-3.421-2.559-11.144-25.205-12.55-27.763 c-1.352 4.49 14.09 33.19 3.11 14.156c2.601 7.95 6.66 15.17 10.46 22.292c-1.403-2.777-3.191-5.823-4.065-8.838 C73.147 346.49 77.52 345.31 81.6 352.855C82.006 353.31 80.81 351.4 81.6 352.855z M439.933 293.93 c0.078 0.47 0.21 0.85 0.41 1.158C440.13 294.76 439.89 295 439.93 293.928z M46.06 219.08 c-1.66 9.572-2.62 19.213-2.879 28.924c0.877-4.97 2.014-13.16 5.288-16.951c-0.401 0.45 1.52 17.09 1.5 18.14 c0.588-5.158-1.375-36.765-3.632-36.269C45.332 214.1 45.34 223.21 46.06 219.08z M53.265 213.26 C55.523 204.56 51.13 210.36 53.27 213.262C54.616 208.06 52.92 212.79 53.27 213.262z M52.219 208.31 c-0.125 0.596-0.25 1.101-0.396 1.351L52.219 208.315z M58.74 312.533C57.17 308.9 62.26 322.94 58.74 312.53 C58.644 312.31 59.33 314.28 58.74 312.533z M57.155 301.498C55.898 302.72 57.33 305.79 57.16 301.5 C57.155 301.5 57.22 303.06 57.16 301.498z M54.892 266.545c-1.091-3.387-2.541-6.608-4.349-9.667 c2.258 1.94 2.37 7.48 2.23 7.393c-0.171 3.79 0.63 7.37 2.41 10.738C56.289 272.22 56.19 269.4 54.89 266.55 C53.089 264.55 55.65 268.28 54.89 266.545z M373.117 92.078c0.05 0.362-20.506-12.337-23.808-18.433 C357.889 79.15 364.56 87.21 373.12 92.078C373.149 92.31 369.68 90.12 373.12 92.078z M295.666 50.06 c-8.181-0.671-27.562-0.895-39.713-1.621c3.325 2.78 9.48 2.88 13.58 4.024c-4.143 0.439-7.052-0.153-11.541 0.8 c5.558 4.14 16.48 2.1 22.95 1.141c0.028-0.085-8.256-2.461-7.956-2.276c5.738 1.02 11.5 1.9 17.27 2.66 c-2.367-1.965-5.074-2.596-8.12-1.892c2.722 0.47 3.619-0.194 2.693-1.981c9.529-0.355 23.78 5.63 30.93 9.57 c-1.801-0.042-3.568 0.167-5.302 0.626c3.468 2.94 21.65 14.38 25.68 9.582c-4.159-1.469-8.386-2.707-12.68-3.713 c3.755 0.64 7.56 1.04 11.33 1.631c-6.704-5.656-0.662-1.504 4.301-0.782C321.917 58.89 313.39 54.15 295.67 50.06 C296.476 50.13 296.75 50.31 295.67 50.065z M87.137 120.504c9.819-2.385 16.864-10.68 23.593-17.5 c1.87-1.862 15.582-15.73 22.821-19.043c-3.076 2.943-5.428 6.388-7.057 10.333c4.306-2.826 7.638-5.893 12.109-8.95 c-6.25 5.982-16.785 10.884-22.586 17.522c2.904 1.26 13.056-6.357 15.788-9c-0.97 1.664-1.579 3.446-1.827 5.35 c2.001-1.821 4.039-3.598 6.115-5.333c-0.094-0.055-4.707 4.726-4.572 5.709c0.051 0.37 17.602-13.937 19.256-14.716 c-1.158-2.525-8.14 5.644-9.166 6.478c4.982-0.41-5.914-2.755-7.279 1.016c13.824-15.363 29.615-20.554 48.544-30.37 c-2.009 0.867-4.083 1.237-6.221 1.11c6.127-2.854 7.288-2.542 13.537-5.396c-2.523 0.74-4.436 2.189-5.738 4.35 c1.671-0.401 17.377-6.17 15.572-7.228c-2.942-0.069-5.885-0.109-8.829-0.12c6.6-2.642 13.981-4.638 21-5.88 c-9.099 4.46 29.746-1.983 16.922-0.941c2.731 5.1 17.031-2.538 19.779-3.326c-38.75-3.094-53.95 10.011-88.084 20.82 c0.929-0.714 7.676-4.412 9.429-4.412c0.767-3.125-37.941 15.072-45.099 22.417c8.609-8.058-9.202 4.48 1.528-3.645 c-5.573 2.39-6.981 7.303-11.634 11.163c1.469-1.747 2.936-3.496 4.4-5.246C108.13 93.3 94.33 109.92 87.14 120.5 C89.807 119.86 88 119.24 87.14 120.504z M73.194 144.162c-3.631 7.342-8.686 12.384-2.184 10.39 c0.483 4.41 0.01 5.203-1.416 2.394c-0.655 0.857-5.354 11.306-4.606 10.946c1.241-2.738 2.843-5.24 4.805-7.505 c-0.655 11.253-9.557 13.794-12.046 26.988c2.173 0.75 3.418-0.371 3.735-3.351c-0.64 3.251-1.627 6.396-2.962 9.44 c1.482-11.168-2.935 8.392-3.288 10.072c0.987-8.19 0.99 1.05 0.52 3.35c0.871-1.296 1.742-2.592 2.612-3.888 c-0.994 2.025-1.29 4.107-0.889 6.246c1.655-6.814 3.496-13.529 4.98-20.4c-0.258 0.58 10.469-41.516 18.297-48.673 c-1.391 3.252-3.26 6.199-5.608 8.839C80.076 142.45 76.7 144.15 73.19 144.162C72.605 145.35 75.2 144.16 73.19 144.162z M36.235 288.915C36.288 289.75 36.23 288.7 36.23 288.915C36.24 288.99 36.23 288.92 36.23 288.915z" />
		        <path d="M142.805 439.444c-3.756-1.135-6.91-3.177-9.461-6.125c1.81 1.74 2.92 1.84 3.32 0.3 c-0.473-0.22-10.989-3.397-9.023-4.101c2.366-0.846 11.73 4.23 13.92 4.98c-6.386-3.966-13.394-6.583-19.573-10.911 c11.432 9.373-11.918-3.012-13.57-3.793c5.883 5.99 33.15 22.88 30.06 21.783c39.192 12.37 70.41 27.99 113.47 26.97 c2.197 0.024-17.269-3.589-17.156-3.682c3.216-0.38 6.415-0.271 9.6 0.326c-8.322 7.873-67.218-12.914-83.474-19.239 c2.618 0.08 5.24 1.16 7.88 1.255c-3.53-1.353-7.123-2.504-10.78-3.454c0.79-1.278 2.019-1.363 3.687-0.255 C155.819 440.86 140.68 433.56 142.81 439.444C140.729 439.42 142.45 438.47 142.81 439.444z"/>
		        <path d="M252.372 463.809c13.712 1.442-7.093 2.457-4.611 3.856c8.466-1.691 11.86 0.67 12.946-2.95 c6.436-0.253 75.792-4.237 73.458-16.136c-0.201-1.012-6.456 0.919-2.357-2.125c-10.357 4.407-19.891 6.793-28.849 11.51 c1.747-0.296 3.494-0.592 5.241-0.888c-6.354 4.204-18.575 7.296-26.183 6.103c7.005-1.675 11.416-4.371 18.642-5.417 c-2.04-0.225-2.2-0.813-0.481-1.769C284.516 460.26 268.41 461.66 252.37 463.81 C259.159 464.52 254.51 463.52 252.37 463.809z"/>
		      </svg>
		    </div>
		  </div>
		  
		  <div class='keep-calm' id='timeline-01'>
		    <ul>
		      <li><span class="icon-Aperture_Science"></span></li>
		      <li>Keep</li>
		      <li>Jonathan</li>
		      <li>
		        <span>And</span>
		      </li>
		      <li>Continue</li>
		      <li>Testing</li>
		    </ul>
		  </div>
		  
		  <div class='keep-calm' id='timeline-02'>
		    <ul>
		      <li><span class="icon-Aperture_Science"></span></li>
		      <li>Keep</li>
		      <li>Calm</li>
		      <li>
		        <span>And</span>
		      </li>
		      <li>Continue</li>
		      <li>Testing</li>
		    </ul>
		  </div>
		</div>
	</body>
</html>
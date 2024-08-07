# Location Search App

This is a Location Search app built with React and TypeScript. You can use this app to find the location of any place. The app is also Dockerized, so you can run it using Docker.

![image](https://github.com/user-attachments/assets/ea8736e9-95c4-42c0-b2a7-c30b34fb73d8)


## Prerequisites

- [Node.js](https://nodejs.org/) (for simple start)
- [Docker](https://www.docker.com/) (for Docker Run)

## Getting Started

### Running the App with npm

1. **Clone the repository:**
    ```sh
    git clone https://github.com/codewith-habib/Location-Search.git
    cd Location-Search
    ```

2. **Install dependencies:**
    ```sh
    npm install
    ```

3. **Start the development server:**
    ```sh
    npm run dev
    ```

4. **Open your browser:**
    Navigate to `http://localhost:5173` to see the app.
   

### Running the App with Docker

1. **Copy the docker-compose File:**
    ```sh
    name: location_search

    services:
      location-search:
        image: habib80246/location-search-app
        ports:
          - '3000:80'
    ```

2. **Run the Command:**
     ```sh
    docker-compose up
    ```
     
2. **Open your browser:**
    Navigate to `http://localhost:3000` to see the app.


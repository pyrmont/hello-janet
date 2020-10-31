### Hello Janet

## A website in Janet

## by Michael Camilleri
## 31 October 2020


(import circlet)


(defn- respond
  [output-dir rel-path]
  (let [name (string/slice rel-path 1)]
    {:status 200
     :body (case name
             "" "Hello, Janet!"
             (string "Hello, " name "!"))}))


(defn routes
  [output-dir]
  {:default (fn [req] (respond output-dir (get req :uri)))})


(defn main
  ```
  The main function
  ```
  [& args]

  (when (= 2 (length args))
    (print "Usage: hj serve <port>")
    (os/exit 1))

  (def host (if (in args 3) (in args 3) "127.0.0.1"))
  (def port (scan-number (in args 2)))

  (case (in args 1)
    "serve"
    (circlet/server
      (-> (routes "public")
          circlet/router
          circlet/logger)
      port
      host)))

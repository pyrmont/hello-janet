### Hello Janet

## A website in Janet

## by Michael Camilleri
## 31 October 2020


(import circlet)


(defn- respond
  [output-dir rel-path]
  (if (nil? (os/stat (string/join [output-dir rel-path] "/") :mode))
    {:status 404}
    {:kind :static :root "public"}))


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

  (def port (scan-number (in args 2)))

  (case (in args 1)
    "serve"
    (circlet/server
      (-> (routes "public")
          circlet/router
          circlet/logger)
      port)))

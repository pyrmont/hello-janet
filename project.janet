(declare-project
  :name "Hello Janet"
  :description "An example site in Janet"
  :author "Michael Camilleri"
  :license "Unlicense"
  :url "https://github.com/pyrmont/hello-janet"
  :repo "git+https://github.com/pyrmont/hello-janet"
  :dependencies ["https://github.com/janet-lang/circlet"])


(declare-executable
  :name "hj"
  :entry "src/hello.janet")

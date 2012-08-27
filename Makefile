compile:
	        coffee -b -o pkg -c src/scrollable-layer.coffee

minify:
	        java -jar compiler.jar --js pkg/scrollable-layer.js --js_output_file pkg/scrollable-layer.min.js

test:
	        make compile
	        node tests/server.js & phantomjs tests/phantom.js "http://localhost:3000/tests/index.html"
	        kill -9 `cat tests/pid.txt`
	        rm tests/pid.txt

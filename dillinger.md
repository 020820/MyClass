# **Dillinger**

# ***The Last Markdown Editor, Ever***

##### Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,
##### Angular JS-powered HTML5 Markdown editor.

 >- Type some Markdown on the left
 >- See HTML in the right
 >- +Magic+

# **Features**

 >- Import a HTML file and watch it magically convert to Markdown
 >- Drag and drop images (requires your Dropbox account be linked)
 >- Import and save files from GitHub, Dropbox, Google Drive and One Drive
 >- Drag and drop markdown and HTML files into Dillinger
 >- Export documents as Markdown, HTML and PDF

##### Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.
##### As [John Gruber](url) writes on the [Markdown site](#)

```python 
for i in range(10):
    print(hello)
```
##### *The overriding design goal for Markdown's*
##### *formatting syntax is to make it as readable*
##### *as possible. The idea is that a*
##### *Markdown-formatted document should be*
##### *publishable as-is, as plain text, without*
##### *looking like it's been marked up with tags*
##### *or formatting instructions.*

##### This text you see here is *actually-written in Markdown! To get a feel
##### for Markdown's syntax, type some text into the left window and
##### watch the results in the right.

# **Tech**

##### Dillinger uses a number of open source projects to work properly:

 >- [AngularJS](url) - HTML enhanced for web apps!
 >- [Ace Editor](url) - awesome web-based text editor
 >- [markdown-it](url) - Markdown parser done right. Fast and easy to extend.
 >- [Twitter Bootstrap](url) - great UI boilerplate for modern web apps
 >- [node.js](url) - evented I/O for the backed
 >- [Express](url) - fast node.js network app framework [@tjholowaychuk](url)
 >- [Gulp](url) - the streaming build system
 >- [Breakdance](url) - HTML    
# **Installation**

##### Dillinger requires [Node.js](url) v10+ to run.

##### Install the dependences and devDependences and start the server.

```python 
cd dillinger
npm i
node app
```

##### For production environments...

```python 
npm install --production
NODE_ENV=production node app
```

# **Plugins**

##### Dillinger is currently extended with the following plugins.
##### Instructions on how to use them in your own application are linked below.

|Plugin|README|
|:---|:---|
|Dropbox|[plugins/dropbox/README.md](#)|
|GitHub|[plugins/GitHub/README.md](#)|
|Google Drive|[plugins/Google Drive/README.md](#)|
|OneDrive|[plugins/OneDrive/README.md](#)|
|Medium|[plugins/Medium/README.md](#)|

# **Development**

##### Want to contribute? Great!

##### Dillinger uses Gulp + Webpack for fast developing.
##### Make a change in your file and instantaneously see your updates!
##### Open your favorite Terminal and run these commands.

##### First Tab:

```python 
node app
```
##### Second Tab:

```python 
gulp watch
```

##### (optional) Third:

```python 
karma test
```

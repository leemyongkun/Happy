
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <title>summernote</title>

  <!-- include libs stylesheets -->
  <!-- <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" /> -->
  <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.min.css" />
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/blackboard.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.min.css">

  <link rel="stylesheet/less" type="text/css" href="${contextRoot}/custom/summer/src/less/summernote.less" />
  <script data-main="${contextRoot}/custom/summer/src/js/app" src="http://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.9/require.min.js"></script>

  
<div class="container">
  <h4>Lately library
    <span class="label label-info">Bootstrap v3.1.1</span>
    <span class="label label-success">font-awesome v4.0.3</span>
    <span class="label label-danger">CodeMirror v3.20.0</span>
  </h4>
  <div class="summernote"></div>
</div>
<script type="text/javascript">
  less = {
    env: "production", // or "development"
    async: false,       // load imports async
    fileAsync: false,   // load imports async when in a page under
    // a file protocol
    poll: 1000,         // when in watch mode, time in ms between polls
    functions: {},      // user functions, keyed by name
    dumpLineNumbers: "comments", // or "mediaQuery" or "all"
    relativeUrls: false,// whether to adjust url's to be relative
    // if false, url's are already relative to the
    // entry less file
    rootpath: ":/poorman.com/"// a path to add on to the start of every url
    //resource
  };
</script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/less.js/1.3.3/less.min.js" type="text/javascript"></script>
<!-- summernote with less and requirejs -->
  
  

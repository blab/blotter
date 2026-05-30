(function() {

  var postURLs,
      isFetchingPosts = false,
      shouldFetchPosts = true,
      postList,
      postsToLoad,
      loadNewPostsThreshold = 3000;

  function ready(fn) {
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', fn);
    } else {
      fn();
    }
  }

  ready(function() {
    postList = document.querySelector('.post-list');
    if (!postList) return;

    postsToLoad = postList.children.length;

    // If there's no spinner, it's not a page where posts should be fetched
    if (!document.querySelector('.infinite-spinner')) {
      shouldFetchPosts = false;
      return;
    }

    fetch('/all-posts.json')
      .then(function(r) { return r.json(); })
      .then(function(data) {
        postURLs = data['posts'];
        console.log(postsToLoad);
        // If there aren't any more posts available than already visible, disable fetching
        if (postURLs.length <= postsToLoad) disableFetching();
      });

    window.addEventListener('scroll', maybeFetch);
    window.addEventListener('load', maybeFetch);
  });

  function maybeFetch() {
    if (!shouldFetchPosts || isFetchingPosts) return;
    var bottomScrollPosition = window.innerHeight + window.scrollY;
    var documentHeight = document.documentElement.scrollHeight;
    if ((documentHeight - loadNewPostsThreshold) < bottomScrollPosition) {
      fetchPosts();
    }
  }

  function fetchPosts() {
    if (!postURLs) return;
    isFetchingPosts = true;

    var loadedPosts = 0;
    var postCount = postList.children.length;
    var callback = function() {
      loadedPosts++;
      var postIndex = postCount + loadedPosts;

      if (postIndex > postURLs.length - 1) {
        disableFetching();
        return;
      }

      if (loadedPosts < postsToLoad) {
        fetchPostWithIndex(postIndex, callback);
      } else {
        isFetchingPosts = false;
      }
    };

    fetchPostWithIndex(postCount + loadedPosts, callback);
  }

  function fetchPostWithIndex(index, callback) {
    var postURL = postURLs[index];
    fetch(postURL)
      .then(function(r) { return r.text(); })
      .then(function(html) {
        var doc = new DOMParser().parseFromString(html, 'text/html');
        var post = doc.querySelector('.blog-post');
        if (post) postList.appendChild(post);
        console.log(postURL);
        console.log(postList.children.length);
        callback();
      });
  }

  function disableFetching() {
    shouldFetchPosts = false;
    isFetchingPosts = false;
    var spinner = document.querySelector('.infinite-spinner');
    if (!spinner) return;
    spinner.style.transition = 'opacity 400ms';
    spinner.style.opacity = '0';
    setTimeout(function() { spinner.style.display = 'none'; }, 400);
  }

})();

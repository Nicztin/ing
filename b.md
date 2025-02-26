# Nicztin's Blog

Welcome to Nicztin's Blog! This repository contains the source code for my personal blog hosted on GitHub Pages.

## Setting Up the Blog

Follow these steps to set up the blog using Jekyll on GitHub Pages:

### Step 1: Create Required Files

1. Create a `_config.yml` file in the root of your repository with the following content:
    ```yaml
    theme: minima
    title: Nicztin's Blog
    description: Personal blog hosted on GitHub Pages.
    ```

2. Create a `_posts` directory and add a new blog post file named `2025-02-26-welcome-to-my-blog.md` with the following content:
    ````markdown name=_posts/2025-02-26-welcome-to-my-blog.md
    ---
    layout: post
    title:  "Welcome to My Blog"
    date:   2025-02-26 02:28:55 +0000
    categories: jekyll update
    ---

    Welcome to my blog! This is my first post.
    ````

### Step 2: Commit and Push Changes

1. Commit the changes with a message, such as `Initial commit for GitHub Pages blog`.
2. Push the changes to the `main` branch of your repository.

### Step 3: Configure GitHub Pages

1. Go to the repository settings.
2. In the "Code and automation" section of the sidebar, click **Pages**.
3. Select the source:
   - Source: `main` branch
   - Folder: `/root`
4. Click **Save**.

### Example Repository Structure

```
ing/
├── _config.yml
├── _posts/
│   └── 2025-02-26-welcome-to-my-blog.md
└── README.md
```

### Visit Your Blog

Your blog should now be live at [https://nicztin.github.io/ing](https://nicztin.github.io/ing).

## Adding New Posts

To add a new post, create a new file in the `_posts` directory with the following naming convention: `YYYY-MM-DD-title.md` and include the necessary front matter and content.

Example:
````markdown name=_posts/YYYY-MM-DD-another-blog-post.md
---
layout: post
title:  "Another Blog Post"
date:   2025-03-01 12:00:00 +0000
categories: jekyll update
---

This is another blog post.


Make sure you have the following structure in your repository:

```
ing/
├── _config.yml
├── _posts/
│   └── 2025-02-26-welcome-to-my-blog.md
└── README.md
```

If everything is set up correctly, visit [https://nicztin.github.io/ing](https://nicztin.github.io/ing) to see your blog. If the blog is not displaying, double-check the repository settings, especially the GitHub Pages configuration.

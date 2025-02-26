theme: minima
title: Nicztin's Blog
description: Personal blog hosted on GitHub Pages.

---
layout: post
title:  "Welcome to My Blog"
date:   2025-02-26 02:28:55 +0000
categories: jekyll update
---

Welcome to my blog! This is my first post.

To create a GitHub blog, you can use GitHub Pages with Jekyll. Follow these steps to set up your blog:

### Step 1: Create a New Repository

1. **Go to GitHub** and log in to your account.
2. **Create a new repository** named `Nicztin.github.io`.
   - Repository name: `Nicztin.github.io`
   - Description: *(optional)*
   - Public repository
   - Initialize this repository with a README

### Step 2: Configure GitHub Pages

1. **Go to the repository settings**.
2. In the "Code and automation" section of the sidebar, click **Pages**.
3. **Select the source**:
   - Source: `main` branch
   - Folder: `/root`
4. Click **Save**.

### Step 3: Add Jekyll Theme

1. **Go to the repository code view**.
2. **Create a new file** named `_config.yml` with the following content:
````yaml name=_config.yml
theme: minima
title: Nicztin's Blog
description: Personal blog hosted on GitHub Pages.
````

### Step 4: Create Your First Blog Post

1. **Create a new directory** named `_posts`.
2. **Create a new file** inside `_posts` directory named `2025-02-26-welcome-to-my-blog.md` with the following content:
````markdown name=_posts/2025-02-26-welcome-to-my-blog.md
---
layout: post
title:  "Welcome to My Blog"
date:   2025-02-26 02:24:13 +0000
categories: jekyll update
---

Welcome to my blog! This is my first post.
````

### Step 5: Commit and Push Your Changes

1. **Commit your changes**:
   - Commit message: `Initial commit`
2. **Push your changes** to the `main` branch.

### Step 6: Visit Your Blog

- Your blog should now be live at [https://nicztin.github.io](https://nicztin.github.io).

### Example Repository Structure

```
Nicztin.github.io/
├── _config.yml
├── _posts/
│   └── 2025-02-26-welcome-to-my-blog.md
└── README.md
```

Once you've completed these steps, your GitHub Pages blog should be up and running. You can continue to add new posts by creating new markdown files in the `_posts` directory.

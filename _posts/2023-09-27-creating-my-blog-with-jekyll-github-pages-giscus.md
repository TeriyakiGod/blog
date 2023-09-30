---
layout: post
title:  "Create Your Blog with Jekyll, GitHub Pages, and Giscus"
author: Kacper Ochnik
date:   2023-09-27 21:00 +0200
tags: blog github web jekyll github-pages giscus
---

![Jekyll Logo](https://jekyllrb.com/img/logo-2x.png)

In this tutorial, you'll learn how to create your own blog using GitHub Pages, Jekyll, and Giscus. These powerful tools make it easier than ever to set up and manage a personal website. Follow the steps below to create your blog and enable a commenting system using Giscus. This is exactly how I created this Blog!

## Getting Started with GitHub Pages and Jekyll

GitHub Pages is a fantastic platform for hosting static websites. You can host your site directly from your GitHub repository. Let's get started:

1. **Create a GitHub Repository**: First, create a new GitHub repository for your blog. You can name it anything you like. Then clone the repository:

   ```bash
   git clone name-of-your-repo
   cd name-of-your-repo
   ```

2. **Set Up Jekyll**: Jekyll is a static site generator that works seamlessly with GitHub Pages. Initialize your Jekyll site with the following command:

   ```bash
   gem install jekyll bundler
   jekyll new .
   ```

   > **Note**: Make sure you have Ruby installed before installing gems.

3. **Customize Your Blog**: Customize your blog's layout, style, and content by editing the Jekyll templates and Markdown files. Jekyll provides a simple yet powerful way to structure your content.

    > **Note**: For more information refer to the tutorial on [Jekyll](https://jekyllrb.com/docs/step-by-step/01-setup/)

4. **Add Your First Post**: Create a markdown file in the `_posts` folder name it with following format
``YEAR-MONTH-DAY-title.MARKUP`` and put in it anything you like. For example:

    ```markdown
    ---
    title: my first post
    date: 12-12-1212
    ---
    Hello world!
    ```

4. **Test Your Site Locally**: To preview your site locally, run the following command:

   ```bash
   bundle exec jekyll serve
   ```

   This starts a local server, allowing you to see your blog in action before pushing changes to GitHub.

5. **Configure GitHub Pages**: In your repository settings, navigate to the GitHub Pages section and select Github Actions Jekyll workflow.

6. **Custom Domain (Optional)**: If you have a custom domain, configure it in the repository settings to point to your GitHub Pages site.

## Adding Giscus for Comments

![Giscus Logo](https://raw.githubusercontent.com/giscus/giscus/cb790dfd42079f31ac92393f5deaa2fdd2e8acd3/public/giscus.svg)

Engaging with your readers is essential, so let's add a commenting system to your blog using Giscus:

1. **Visit Giscus website**: Start by visiting [Giscus](https://giscus.app/) and follow the tutorial.

2. **Customize Giscus**: Adjust the Giscus settings to match your blog's theme and preferences.

3. **Integrate Giscus into Your Layout**: Add the generated code snippet to the layout of your website. To edit the post layout simply create a `post.html` file in folder `_layouts` and edit however you like.

## Wrapping Up

Congratulations! You've successfully created your blog with Jekyll, hosted it on GitHub Pages, and added a commenting system using Giscus. These tools have made it easier than ever to share your thoughts and engage with your audience.

I hope this tutorial has inspired you to start your blog or enhance your existing one using these powerful tools. Happy blogging!

If you have any questions or need further guidance on any of these steps, feel free to leave a comment below, and I'll be happy to help.
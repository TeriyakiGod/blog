---
layout: post
title: Creating a Self-Hosted Linktree-Like Site with SvelteKit and Vercel
author: Kacper Ochnik
date: 2023-09-30 14:00 +0200
tags: web-development sveltekit vercel self-hosted linktree
---

In a world driven by social media and online presence, having a centralized hub for all your important links is crucial. While services like Linktree provide an easy way to share multiple links in one place, why not take control and create your own self-hosted Linktree-like site? In this tutorial, I'll show you how to build your own using SvelteKit and host it for free on Vercel.

### Prerequisites

Before we get started, make sure you have the following:

1. Node.js and npm installed on your machine.
2. A Vercel account (sign up at [Vercel](https://vercel.com/)).
3. Basic knowledge of HTML, CSS, and JavaScript.

### Step 1: Setting Up Your SvelteKit Project

First, let's set up a new SvelteKit project. Open your terminal and run the following commands:

```bash
npm create svelte@latest my-linktree
cd my-linktree
npm install
npm run dev
```

This will scaffold a basic SvelteKit project and start a development server.

### Step 2: Creating the Linktree Component

Now, let's create a Svelte component to display your links. In your project directory, navigate to the `src` folder and create a new file called `linktree.svelte`. Here's a simple example of what your `linktree.svelte` file might look like:

  ```html
  <script>
    const links = [
      { title: "Portfolio", url: "https://example.com/portfolio" },
      { title: "Blog", url: "https://example.com/blog" },
      // Add more links here
    ];
  </script>

  <div>
    <h1>My Linktree</h1>
    <ul>
      {#each links as link (link.url)}
        <li><a href={link.url}>{link.title}</a></li>
      {/each}
    </ul>
  </div>

  <style>
    /* Add your custom CSS styles here. Make those links look coool */
  </style>
  ```

Customize the `links` array with your own links and add any additional CSS styles to match your branding.

### Step 3: Creating a Route for the Linktree Component
In your SvelteKit project directory, navigate to the src/routes folder.

Edit or create a file called `+page.svelte`. It's the main page of your site.

Inside this file, you can import and use your Linktree component. Here's an example of what your `+page.svelte` file might look like:

  ```html
  <script>
    import Linktree from '../components/Linktree.svelte'; // Import your Linktree component

    // You can also pass any necessary props or data to the Linktree component here
  </script>

  <main>
    <Linktree /> <!-- Use your Linktree component here -->
  </main>

  <style>
    /* Add your custom CSS styles here */
  </style>
  ```

### Step 4: Configuring the SvelteKit Adapter for Vercel

Before deploying to Vercel, you need to configure the SvelteKit adapter for Vercel. Here's how you can do it:

1. Install the SvelteKit adapter for Vercel by running the following command in your project directory:

   ```bash
   npm install --save-dev @sveltejs/adapter-vercel
   ```

2. In your SvelteKit project's `svelte.config.js` file, add the Vercel adapter to your `kit` configuration:

   ```javascript
   // svelte.config.js
   import adapter from '@sveltejs/adapter-vercel';

   export default {
     kit: {
       // other kit options...
       adapter: adapter(),
     },
   };
   ```

3. Save your `svelte.config.js` file.

With the adapter configured, your SvelteKit project will now be ready to deploy on Vercel.

### Step 5: Deploying to Vercel
Now that you have your Linktree component ready, it's time to deploy it to Vercel. If you haven't already, sign in to your Vercel account.

Install the Vercel CLI globally by running:

```bash
npm install -g vercel
```
In your SvelteKit project directory, run:
```bash
vercel
```
Follow the prompts to log in to your Vercel account and configure the project settings.

Once deployed, Vercel will provide you with a unique URL where your Linktree-like site is hosted.

### Step 6: Custom Domain (Optional)
If you want to use your custom domain, Vercel makes it easy. In your Vercel project settings, go to the "Domains" section and add your domain. Follow the provided instructions to update your DNS settings.

### Step 7: Share Your Linktree
Congratulations! You've created your self-hosted Linktree-like site using SvelteKit and Vercel. Now, share the URL with your audience, and they'll have easy access to all your important links in one place.

Remember to keep your links up to date and customize the design to match your personal brand. You can also extend your Linktree with more features like analytics or a contact form if needed.

Now that you have control over your online presence, you're ready to make a lasting impression on your visitors. Enjoy your new self-hosted Linktree-like site!

## [Check out my website!](https://kacperochnik.eu)
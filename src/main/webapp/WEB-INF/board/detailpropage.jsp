<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="w-full">
    <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
        <div class="container grid items-center justify-center gap-8 px-4 md:px-6">
            <div class="grid gap-4">
                <h1 class="text-3xl font-bold tracking-tighter sm:text-5xl">Homemade Spaghetti Bolognese</h1>
                <p class="max-w-[700px] text-gray-500 md:text-xl/relaxed lg:text-base/relaxed xl:text-xl/relaxed dark:text-gray-400">
                    A classic Italian dish made with a rich, flavorful meat sauce and tender spaghetti.
                </p>
            </div>
            <img
                    src="/placeholder.svg"
                    width="800"
                    height="500"
                    alt="Spaghetti Bolognese"
                    class="rounded-lg object-cover w-full aspect-[16/9]"
            />
        </div>
    </section>
    <section class="w-full py-12 md:py-24 lg:py-32">
        <div class="container grid gap-8 px-4 md:px-6">
            <div class="grid gap-4">
                <h2 class="text-2xl font-bold">Ingredients</h2>
                <ul class="grid gap-2 sm:grid-cols-2 md:grid-cols-3">
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 lb ground beef</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 onion, diced</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>3 cloves garlic, minced</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 can (28 oz) crushed tomatoes</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>2 tbsp tomato paste</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 tsp dried oregano</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 tsp dried basil</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>Salt and pepper to taste</span>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-center gap-2">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="h-5 w-5 text-primary"
                            >
                                <path d="M20 6 9 17l-5-5"></path>
                            </svg>
                            <span>1 lb spaghetti, cooked according to package instructions</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
        <div class="container grid gap-8 px-4 md:px-6">
            <div class="grid gap-4">
                <h2 class="text-2xl font-bold">Instructions</h2>
                <ol class="grid gap-4">
                    <li>
                        <div class="flex items-start gap-2">
                            <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">1</div>
                            <p>
                                In a large skillet or Dutch oven, cook the ground beef over medium-high heat until browned and
                                crumbled, 5-7 minutes. Drain any excess fat.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-start gap-2">
                            <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">2</div>
                            <p>
                                Add the diced onion and minced garlic to the skillet. Cook for 2-3 minutes, until the onion is
                                translucent.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-start gap-2">
                            <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">3</div>
                            <p>
                                Stir in the crushed tomatoes, tomato paste, dried oregano, and dried basil. Season with salt and
                                pepper to taste.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-start gap-2">
                            <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">4</div>
                            <p>
                                Reduce the heat to low and let the sauce simmer for 15-20 minutes, stirring occasionally, until
                                thickened.mmer for 15-20
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="flex items-start gap-2">
                            <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">5</div>
                            <p>
                                Serve the Bolognese sauce over the cooked spaghetti. Garnish with freshly grated Parmesan cheese, if
                                desired.
                            </p>
                        </div>
                    </li>
                </ol>
            </div>
        </div>
    </section>
    <section class="w-full py-12 md:py-24 lg:py-32">
        <div class="container grid gap-8 px-4 md:px-6">
            <div class="grid gap-4">
                <h2 class="text-2xl font-bold">Nutrition</h2>
                <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
                    <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                        <h3 class="text-lg font-bold">Calories</h3>
                        <p class="text-4xl font-bold">450</p>
                    </div>
                    <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                        <h3 class="text-lg font-bold">Fat</h3>
                        <p class="text-4xl font-bold">18g</p>
                    </div>
                    <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                        <h3 class="text-lg font-bold">Carbs</h3>
                        <p class="text-4xl font-bold">50g</p>
                    </div>
                    <div class="bg-gray-100 dark:bg-gray-800 rounded-lg p-4">
                        <h3 class="text-lg font-bold">Protein</h3>
                        <p class="text-4xl font-bold">25g</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="w-full py-12 md:py-24 lg:py-32 bg-gray-100 dark:bg-gray-800">
        <div class="container grid gap-8 px-4 md:px-6">
            <div class="grid gap-4">
                <h2 class="text-2xl font-bold">Reviews</h2>
                <div class="grid gap-6">
                    <div class="bg-white dark:bg-gray-950 rounded-lg p-4 shadow">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">5</div>
                                <div class="flex items-center gap-0.5">
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                </div>
                            </div>
                            <p class="text-sm text-gray-500 dark:text-gray-400">2 days ago</p>
                        </div>
                        <p class="mt-2 text-gray-500 dark:text-gray-400">
                            This Spaghetti Bolognese recipe is absolutely delicious! The sauce is so rich and flavorful, and the
                            spaghetti is cooked to perfection. I'll definitely be making this again.
                        </p>
                        <div class="mt-2 flex items-center gap-2">
              <span
                      class="relative flex shrink-0 overflow-hidden rounded-full h-8 w-8"
                      src="/placeholder-avatar.svg"
                      alt="User Avatar"
              ></span>
                            <span class="text-sm font-medium">John Doe</span>
                        </div>
                    </div>
                    <div class="bg-white dark:bg-gray-950 rounded-lg p-4 shadow">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <div class="rounded-full bg-primary px-2 py-1 text-xs font-medium text-gray-50">4</div>
                                <div class="flex items-center gap-0.5">
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-primary"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            width="24"
                                            height="24"
                                            viewBox="0 0 24 24"
                                            fill="none"
                                            stroke="currentColor"
                                            stroke-width="2"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            class="w-5 h-5 fill-muted stroke-muted-foreground"
                                    >
                                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                                    </svg>
                                </div>
                            </div>
                            <p class="text-sm text-gray-500 dark:text-gray-400">1 week ago</p>
                        </div>
                        <p class="mt-2 text-gray-500 dark:text-gray-400">
                            The Spaghetti Bolognese was really good, but I found the sauce to be a bit too thick for my liking.
                            Overall, it's a great recipe that I'll probably make again with a few tweaks. I found the sauce
                        </p>
                        <div class="mt-2 flex items-center gap-2">
              <span
                      class="relative flex h-10 w-10 shrink-0 overflow-hidden rounded-full"
                      src="/placeholder-avatar.svg"
                      alt="User Avatar"
              ></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
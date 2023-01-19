<template>
    <section
        id="about"
        class="section bg-light-secondary dark:bg-dark-secondary"
    >
        <div
            class="container mx-auto"
            v-motion
            :initial="{
                opacity: 0,
                y: 100,
            }"
            :visible="{
                opacity: 1,
                y: 0,
            }"
        >
            <div class="flex flex-col xl:flex-row gap-24">
                <img
                    class="object-cover h-full w-[566px] md:mx-auto lg:mx-0 rounded-2xl"
                    src="/img/hero.png"
                    alt="about"
                />
                <div
                    class="flex flex-col items-center text-center lg:items-start lg:text-left"
                >
                    <div class="flex flex-col">
                        <h2
                            class="text-3xl lg:text-4xl font-medium lg:font-extrabold mb-3"
                        >
                            About Me
                        </h2>
                        <p class="mb-4 text-accent">Front End Web Developer</p>
                        <hr class="mb-8 opacity-90 dark:opacity-5" />
                        <p class="mb-8">
                            Experienced Web Programmer with a demonstrated
                            history of working in the outsourcing/offsourcing
                            company. Skilled in Web Programming, PHP,Javascript,
                            Code Igniter, Laravel, React Js, MySQL. Strong
                            engineering professional with a Bachelor's degree
                            focused in Web Development from Gunadarma
                            University.
                        </p>
                    </div>
                    <a
                        href="#contact"
                        class="btn btn-md bg-accent text-light-tail-100"
                    >
                        Contact Me
                    </a>
                </div>
            </div>
        </div>
    </section>
</template>

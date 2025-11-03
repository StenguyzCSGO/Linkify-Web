<template>
  <UPageHero
    title="Linkify Bot"
    description="Convert your music links instantly. From Spotify to Deezer and vice versa. Built with Rust for ultra-fast performance."
    orientation="vertical"
    :links="links"
    :ui="{
      root: 'relative min-h-screen flex items-center justify-center overflow-hidden',
      container: 'relative z-10 py-8 sm:py-12 lg:py-16',
      wrapper: 'text-center',
      title: 'text-5xl md:text-7xl font-bold mb-6',
      description: 'text-xl md:text-2xl text-[var(--ui-text-muted)] max-w-2xl mx-auto'
    }"
  >
    <template #top>
      <div class="absolute inset-0 bg-gradient-to-br from-primary/10 via-transparent to-primary/5 opacity-50" />
      
      <div class="absolute inset-0">
        <div class="absolute top-1/4 left-1/4 w-72 h-72 bg-primary/20 rounded-full blur-3xl animate-pulse" />
        <div class="absolute bottom-1/4 right-1/4 w-96 h-96 bg-primary/10 rounded-full blur-3xl animate-pulse" style="animation-delay: 1s;" />
      </div>
    </template>

    <template #headline>
      <div class="mb-6">
        <img
          src="/linkify.png"
          alt="Linkify logo"
          class="w-24 h-24 sm:w-28 sm:h-28 lg:w-32 lg:h-32 mx-auto"
        />
      </div>
    </template>
    
  </UPageHero>
</template>

<script setup lang="ts">
const links = [
  {
    label: 'Add to Server',
    to: 'https://discord.com/oauth2/authorize?client_id=YOUR_CLIENT_ID',
    target: '_blank',
    color: 'primary',
    size: 'xl',
    icon: 'i-lucide-bot'
  },
  {
    label: 'View on GitHub',
    to: 'https://github.com/StenguyzCSGO/Linkify',
    target: '_blank',
    color: 'neutral',
    variant: 'outline',
    size: 'xl',
    icon: 'i-lucide-github'
  }
]
</script>
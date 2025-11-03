<template>
  <UPageSection
    id="demo"
    title="See Linkify Bot in Action"
    description="Discover how Linkify Bot converts your music links in seconds"
    :ui="{
      root: 'bg-[var(--ui-bg-muted)]/30',
      title: 'text-4xl md:text-5xl font-bold bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent'
    }"
  >
    <UContainer class="max-w-4xl">
      <UCard class="overflow-hidden hover:border-primary/50 transition-all duration-300">
        <div class="relative aspect-video bg-gradient-to-br from-primary/20 to-primary/5 rounded-lg overflow-hidden">
          <video
            src="/videos/demo.webm"
            autoplay
            loop
            muted
            playsinline
            class="w-full h-full object-cover"
          >
            Your browser does not support WebM videos.
          </video>
        </div>
        
        <template #footer>
          <div class="space-y-2">
            <h3 class="text-xl font-bold">Instant Conversion</h3>
            <p class="text-[var(--ui-text-muted)]">
              Use the <UKbd>/convert</UKbd> command with a Spotify or Deezer link and instantly get 
              the equivalent link on the other platform. The bot automatically detects the source 
              and retrieves all track information.
            </p>
          </div>
        </template>
      </UCard>
    </UContainer>
  </UPageSection>
</template>

<script setup lang="ts">
</script>
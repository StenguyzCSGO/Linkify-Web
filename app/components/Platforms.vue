<template>
  <UPageSection
    id="platforms"
    title="Supported Platforms"
    description="Convert your links between major music streaming platforms"
    :ui="{
      title: 'text-4xl md:text-5xl font-bold bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent'
    }"
  >
    <UPageGrid>
      <UCard
        v-for="(platform, index) in platforms"
        :key="index"
        :class="[
          'group transition-all duration-300 hover:scale-105',
          platform.badgeColor === 'primary' && 'hover:ring-primary/50',
          platform.badgeColor === 'warning' && 'hover:ring-warning/50',
          platform.badgeColor === 'error' && 'hover:ring-error/50'
        ]"
      >
        <div class="flex items-start justify-between mb-4">
          <div class="h-16 w-16 rounded-lg bg-[var(--ui-bg)] flex items-center justify-center p-2 border border-[var(--ui-border)]">
            <UIcon :name="platform.icon" class="w-full h-full" />
          </div>
          <UBadge 
            :color="platform.badgeColor"
            variant="subtle"
            class="flex items-center gap-1.5"
          >
            <UIcon :name="platform.statusIcon" class="w-4 h-4" />
          </UBadge>
        </div>
        
        <h3 class="text-xl font-bold mb-2">{{ platform.name }}</h3>
        <p class="text-sm text-[var(--ui-text-muted)]">{{ platform.description }}</p>
      </UCard>
    </UPageGrid>

    <template #footer>
      <div class="text-center">
        <p class="text-sm text-[var(--ui-text-muted)]">
          More platforms will be added based on community feedback
        </p>
      </div>
    </template>
  </UPageSection>
</template>

<script setup lang="ts">
const platforms = [
  {
    name: "Spotify",
    icon: "i-simple-icons-spotify",
    status: "supported",
    statusIcon: "i-lucide-check",
    badgeColor: "primary",
    description: "Fully supported"
  },
  {
    name: "Deezer",
    icon: "i-simple-icons-deezer",
    status: "supported",
    statusIcon: "i-lucide-check",
    badgeColor: "primary",
    description: "Fully supported"
  },
  {
    name: "YouTube Music",
    icon: "i-simple-icons-youtubemusic",
    status: "coming",
    statusIcon: "i-lucide-clock",
    badgeColor: "warning",
    description: "Coming soon"
  },
  {
    name: "SoundCloud",
    icon: "i-simple-icons-soundcloud",
    status: "coming",
    statusIcon: "i-lucide-clock",
    badgeColor: "warning",
    description: "In development"
  },
  {
    name: "Apple Music",
    icon: "i-simple-icons-applemusic",
    status: "expensive",
    statusIcon: "i-lucide-dollar-sign",
    badgeColor: "error",
    description: "Developer license required ($99/year)"
  }
];
</script>


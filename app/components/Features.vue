<template>
  <UPageSection
    id="features"
    title="Features"
    description="Convert your music links between platforms with a single command"
    :features="features"
    :ui="{
      title: 'text-4xl md:text-5xl font-bold bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent'
    }"
  />
</template>

<script setup lang="ts">
const features = [
  {
    icon: "i-lucide-link-2",
    title: "Instant Conversion",
    description: "Use /convert with a Spotify or Deezer link and get the equivalent on the other platform in seconds."
  },
  {
    icon: "i-lucide-zap",
    title: "Rust Performance",
    description: "Built with Rust for ultra-fast response times and maximum reliability."
  },
  {
    icon: "i-lucide-code",
    title: "Open Source",
    description: "Fully open source on GitHub. Contribute or customize to fit your needs."
  }
];
</script>
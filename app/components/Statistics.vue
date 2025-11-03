<template>
  <UPageSection
    id="statistics"
    title="Statistics" 
    description="Real-time metrics from our growing community"
    :ui="{
      title: 'text-4xl md:text-5xl font-bold bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent'
    }"
  >
    <UPageGrid :ui="{ base: 'grid grid-cols-2 md:grid-cols-4 gap-6' }">
      <UCard
        v-for="(stat, index) in stats"
        :key="index"
      >
        <div class="text-center">
          <UIcon :name="stat.icon" class="w-8 h-8 text-primary mb-3 mx-auto" />
          <div class="text-3xl md:text-4xl font-bold mb-1">
            {{ stat.value }}{{ stat.suffix }}
          </div>
          <div class="text-sm text-[var(--ui-text-muted)]">{{ stat.label }}</div>
        </div>
      </UCard>
    </UPageGrid>
  </UPageSection>
</template>

<script setup lang="ts">
const stats = [
  { icon: "i-lucide-server", label: "Servers", value: "1,234", suffix: "+" },
  { icon: "i-lucide-users", label: "Users", value: "50,000", suffix: "+" },
  { icon: "i-lucide-activity", label: "Uptime", value: "99.9", suffix: "%" },
  { icon: "i-lucide-zap", label: "Response", value: "50", suffix: "ms" }
];
</script>
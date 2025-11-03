<template>
  <UFooter class="border-t border-[var(--ui-border)] bg-[var(--ui-bg-muted)]/30 backdrop-blur-sm">
    <template #left>
      <div class="text-center md:text-left">
        <h3 class="text-2xl font-bold mb-2 bg-gradient-to-r from-primary to-primary/60 bg-clip-text text-transparent">
          Linkify Bot
        </h3>
        <p class="text-[var(--ui-text-muted)] text-sm">
          Built with Rust for your music community
        </p>
      </div>
    </template>

    <div class="flex items-center gap-4">
      <UButton
        icon="i-lucide-github"
        color="neutral"
        variant="ghost"
        to="https://github.com/StenguyzCSGO/Linkify-Bot"
        target="_blank"
        aria-label="GitHub"
      />
      <UButton
        icon="i-lucide-linkedin"
        color="neutral"
        variant="ghost"
        to="https://www.linkedin.com/in/merlin-clos-73438533a/"
        target="_blank"
        aria-label="LinkedIn"
      />
    </div>

    <template #right>
      <div class="flex flex-col items-center md:items-end gap-2">
        <ULink
          to="https://www.linkedin.com/in/merlin-clos-73438533a/"
          target="_blank"
          class="text-sm text-[var(--ui-text-muted)] hover:text-primary transition-colors inline-flex items-center gap-2"
        >
          <UIcon name="i-lucide-code" class="w-4 h-4" />
          Developed by Merlin Clos
        </ULink>
        
        <p class="text-xs text-[var(--ui-text-muted)]">
          © {{ currentYear }} • Open Source
        </p>
      </div>
    </template>
  </UFooter>
</template>

<script setup lang="ts">
const currentYear = new Date().getFullYear();
</script>
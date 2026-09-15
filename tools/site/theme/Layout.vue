<script setup>
import DefaultTheme from 'vitepress/theme';
import { useData, useRoute, useRouter } from 'vitepress';
import { computed, onMounted, onUnmounted, watch, nextTick } from 'vue';
const { site, lang } = useData();
const route = useRoute();
const router = useRouter();
const chinese = computed(() => lang.value.startsWith('zh'));
const edition = computed(() => /-rc\./.test(site.value.themeConfig.releaseVersion)
  ? (chinese.value ? '候选发行版 · 等待审核' : 'Release candidate · awaiting review')
  : (chinese.value ? '正式发行版' : 'Stable release'));
const peer = computed(() => {
  const base = site.value.base;
  const path = route.path.slice(base.length).replace(/^zh\//, '');
  return base + (chinese.value ? '' : 'zh/') + path;
});
function switchLanguage(event) {
  event.preventDefault();
  try { localStorage.setItem('organon-language', chinese.value ? 'en' : 'zh'); } catch {}
  router.go(peer.value + location.search + location.hash);
}
function revealHash() {
  const id = decodeURIComponent(location.hash.slice(1));
  if (!id) return;
  const target = document.getElementById(id);
  if (!target) return;
  let parent = target.parentElement;
  while (parent) { if (parent.tagName === 'DETAILS') parent.open = true; parent = parent.parentElement; }
  target.scrollIntoView();
}
onMounted(() => {
  try {
    if (route.path === site.value.base && localStorage.getItem('organon-language') === 'zh') router.go(site.value.base + 'zh/' + location.search + location.hash);
  } catch {}
  revealHash();
  window.addEventListener('hashchange', revealHash);
});
watch(() => route.path, async () => { await nextTick(); revealHash(); });
onUnmounted(() => window.removeEventListener('hashchange', revealHash));
</script>
<template>
  <DefaultTheme.Layout>
    <template #home-hero-before><div class="home-edition">{{ site.themeConfig.releaseVersion }} · {{ edition }}</div></template>
    <template #nav-bar-content-before><button type="button" class="language-switch" @click="switchLanguage" :aria-label="chinese ? 'Read this page in English' : '用中文阅读本页'">{{ chinese ? 'English' : '中文' }}</button></template>
    <template #doc-before><div class="edition">{{ edition }} · {{ site.themeConfig.releaseVersion }}</div></template>
  </DefaultTheme.Layout>
</template>

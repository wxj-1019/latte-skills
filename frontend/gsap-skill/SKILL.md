---
name: gsap-skill
description: GSAP animation guidance for systematic website animation optimization. Covers core tweening, timeline orchestration, ScrollTrigger scroll-driven effects, plugins, React integration, performance tuning, utilities, and 3D/WebGL. Use when implementing any UI animation 鈥?entrance effects, scroll reveals, page transitions, micro-interactions, or parallax. Always combine with frontend-design for animation direction and vercel-agent-skills for performance constraints.
---

# GSAP 鎶€鑳戒綋绯?
## 姒傝堪

鏈妧鑳借鐩?8 涓姩鐢讳富棰橈紝鐢ㄤ簬绯荤粺鍖栦紭鍖栫綉绔欏姩鐢绘晥鏋溿€傚悇涓婚鍦ㄦ湰鏂囦欢鍐呭睍寮€璇存槑銆?
## 妯″潡鍒楄〃

| 妯″潡 | 瀹氫綅 | 鏍稿績鑳藉姏 |
|------|------|----------|
| **gsap-core** | GSAP 鏍稿績鍩虹 | Tween/Timeline 鍩虹鍔ㄧ敾銆乪asing 鏇茬嚎銆佸姩鐢绘帶鍒舵柟娉?|
| **gsap-timeline** | 鏃堕棿绾跨紪鎺?| 澶嶆潅鍔ㄧ敾搴忓垪缂栨帓銆佸祵濂楁椂闂寸嚎銆乸osition 鍙傛暟 |
| **gsap-scrolltrigger** | 婊氬姩椹卞姩 | 婊氬姩瑙﹀彂鍔ㄧ敾銆乸in 鍥哄畾銆乻crub 缁戝畾銆佽宸晥鏋?|
| **gsap-plugins** | 鎻掍欢鐢熸€?| ScrollTrigger銆丼plitText銆丮orphSVG銆丏rawSVG銆丗lip |
| **gsap-react** | React 闆嗘垚 | useGSAP hook銆乽seRef 缁戝畾銆丼SR 瀹夊叏銆乧leanup 绠＄悊 |
| **gsap-performance** | 鎬ц兘浼樺寲 | will-change銆乺equestAnimationFrame銆乨ebounce ScrollTrigger銆丟PU 鍔犻€?|
| **gsap-utils** | 宸ュ叿鍑芥暟 | 闅忔満鍊笺€乵apRange銆佷氦閿欏姩鐢汇€佸搷搴斿紡鍔ㄧ敾鍙傛暟 |
| **gsap-3d** | 3D 鍔ㄧ敾 | Three.js + GSAP 鍗忓悓銆乄ebGL 鍦烘櫙鍔ㄧ敾銆?D 鐩告満璺緞 |

## 鍔ㄧ敾瑙﹀彂鍦烘櫙

鏍规嵁 `frontend-design` 鎶€鑳戒腑鐨勫姩鐢绘寚鍗楋紝GSAP 浣撶郴搴旂敤浜庯細

1. **Hero 鍏ュ満鍔ㄧ敾**: 浣跨敤 gsap-core + gsap-timeline 缂栨帓澶氬厓绱犱氦閿欏叆鍦?2. **婊氬姩鎻ず**: 浣跨敤 gsap-scrolltrigger + gsap-plugins (SplitText) 瀹炵幇閫愬瓧/閫愯鎻ず
3. **椤甸潰鍒囨崲**: 浣跨敤 gsap-core + gsap-3d 瀹炵幇 Page Transition
4. **寰氦浜?*: 浣跨敤 gsap-core + gsap-react 瀹炵幇 spring 鐗╃悊鏇茬嚎鍔ㄧ敾
5. **瑙嗗樊鏁堟灉**: 浣跨敤 gsap-scrolltrigger 澶氬眰瑙嗗樊 + scrub

## 鎬ц兘绾︽潫

- 鍔ㄧ敾浠呬娇鐢?`transform` 鍜?`opacity`锛岄伩鍏嶈Е鍙?layout
- `will-change` 浠呭湪鍔ㄧ敾鏈熼棿鍚敤锛岀粨鏉熷悗绉婚櫎
- ScrollTrigger 浣跨敤 `debounce` 鎴?`clamp` 闃叉楂橀瑙﹀彂
- 绉诲姩绔檷浣庡姩鐢诲鏉傚害锛堝噺灏戝悓鏃跺姩鐢诲厓绱犳暟锛?
## 涓庡墠绔妧鑳戒綋绯荤殑鍗忎綔

```
frontend-design (鍐冲畾鍔ㄧ敾椋庢牸鏂瑰悜)
    鈫?theme-factory / ui-ux-pro-max (閰嶈壊鍜屽瓧浣?
    鈫?gsap-skill (瀹炵幇鍏蜂綋鍔ㄧ敾)
    鈫?vercel-agent-skills (鎬ц兘鍜岃川閲忓鏌?
    鈫?impeccable (鍔ㄧ敾缁嗚妭鎵撶（)
    鈫?accesslint (reduced-motion 鍏煎妫€鏌?
```

## 缁勫悎寤鸿

- **钀ラ攢钀藉湴椤?*: `frontend-design` + gsap-scrolltrigger + gsap-timeline
- **SaaS 浜у搧**: gsap-react + `vercel-agent-skills`
- **鍒涙剰浣滃搧闆?*: `frontend-design` (Brutalism/鏋佺箒) + gsap-3d + gsap-plugins
- **鍝佺墝瀹樼綉**: gsap-timeline + gsap-scrolltrigger + `impeccable` (鍔ㄧ敾鎵撶（)

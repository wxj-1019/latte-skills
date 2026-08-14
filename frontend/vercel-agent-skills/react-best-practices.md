# React Best Practices — 57 条规则

## 组件设计 (1-8)

1. **单一职责**: 每个组件只做一件事。超过 200 行考虑拆分
2. **组件命名**: PascalCase，文件名与组件名一致
3. **Props 接口**: 总是定义 Props 类型（TypeScript interface 或 PropTypes）
4. **避免过多 Props**: Props > 5 个时考虑组合或拆分组件
5. **默认导出**: 组件文件使用默认导出，工具函数命名导出
6. **文件组织**: 组件文件夹: index.tsx + styles.module.css + types.ts (+ test.tsx)
7. **受控 vs 非受控**: 表单组件支持两种模式，通过 value/onChange 或 defaultValue
8. **children 优先**: 通过 children prop 组合而非传递配置对象

## 状态管理 (9-18)

9. **useState 范围最小化**: 状态只提升到需要它的最低公共祖先
10. **useReducer 用于复杂状态**: 多个子值或有状态转换逻辑时用 reducer
11. **Context 不应存储高频变化值**: 如输入框值、动画进度
12. **Context 拆分**: 按领域拆分 context（AuthContext, ThemeContext, ShoppingCartContext）
13. **状态提升的替代**: component composition 和 lifting content up 优于全局状态
14. **URL 作为状态源**: 分页、筛选、排序状态应反映在 URL searchParams
15. **避免派生状态**: 能计算出来的值就不要存（优选 useMemo）
16. **不可变更新**: 永远不直接修改 state，使用 spread/concat/filter/map
17. **reset 状态**: key prop 重置组件内部状态
18. **外部状态库**: 仅在复杂全局状态时引入 (Zustand > Redux for simplicity)

## 性能优化 (19-30)

19. **React.memo**: 纯展示组件 + props 不常变时使用
20. **useMemo**: 计算昂贵的派生值（过滤大列表、复杂计算）
21. **useCallback**: 传给子组件的回调，且子组件用了 React.memo
22. **避免过早优化**: 先让代码正确，再按需优化（React DevTools Profiler）
23. **Code Splitting**: React.lazy + Suspense 拆分路由级组件
24. **动态导入**: 非首屏组件动态导入 (next/dynamic 或 React.lazy)
25. **列表 key**: 使用稳定的唯一 ID 作为 key（非 index，除非列表静态不变）
26. **避免在 render 中创建对象/数组**: 用 useMemo 包裹或用常量移到组件外
27. **虚拟化长列表**: > 100 项使用 react-window 或 react-virtuoso
28. **debounce 用户输入**: 搜索/过滤输入 300ms 防抖
29. **图片优化**: next/image 或手动 WebP + lazy loading
30. **避免布局抖动**: 测量 DOM 的代码（ref.current.offsetHeight）放在 useEffect/useLayoutEffect

## Hooks 规则 (31-40)

31. **自定义 Hook 命名**: use 前缀 (useAuth, useDebounce)
32. **Hook 只在顶层调用**: 不在条件/循环/return 后调用
33. **useEffect 依赖完整**: 不遗漏依赖，不撒谎给 lint
34. **useEffect 清理**: 订阅、定时器、事件监听必须 return cleanup
35. **useLayoutEffect**: 仅在需要同步测量/修改 DOM 时使用
36. **useRef 用于非渲染值**: 不需要触发重渲染的值（interval ID, DOM ref, 前值）
37. **useId**: React 18+ 生成唯一 ID 用于 aria-labelledby 等
38. **useTransition**: 非紧急更新标记为 transition (React 18+)
39. **useDeferredValue**: 延迟更新非紧急 UI
40. **自定义 Hook 单一职责**: 一个 hook 解决一个问题

## Next.js 优化 (41-50)

41. **渲染策略选择**:
    - SSG (getStaticProps): 内容不常变，构建时可生成
    - SSR (getServerSideProps): 内容个性化/实时数据
    - ISR (revalidate): SSG + 定时重新生成
    - CSR (客户端): 仪表盘等不需要 SEO 的页面
42. **next/image**: 总是用 next/image 替代 img（自动优化 + 防 CLS）
43. **next/link**: prefetch 优化，替代 a 标签
44. **next/font**: 自动字体优化 + 零 CLS
45. **Server Components**: 默认服务端组件，需要交互才加 'use client'
46. **Server Actions**: 表单提交优先用 Server Actions 而非 API Routes
47. **Route Handlers**: 仅用于外部 API 调用 / webhook
48. **Middleware**: 认证、A/B 测试、重定向等用 Edge Middleware
49. **metadata API**: 使用 Metadata API 替代 head 标签管理 SEO
50. **Streaming**: loading.tsx + Suspense 实现流式渲染

## 错误处理 (51-54)

51. **Error Boundary**: 每个路由段有 error.tsx
52. **try-catch 在 Server Actions**: 服务端操作用 try-catch + 返回友好错误
53. **网络请求状态**: loading / error / data 三态管理，使用 union type
54. **友好降级**: 可选功能失败不影响核心体验

## 可访问性 (55-57)

55. **语义化元素**: button 而非 div onClick, a 而非 span onClick
56. **ARIA 必要性**: 仅在 HTML 语义不足时使用 ARIA
57. **焦点管理**: 路由切换后焦点移到页面顶部或主要内容

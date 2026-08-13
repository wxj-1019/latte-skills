# Composition Patterns — 组件架构模式

## 1. Compound Components (复合组件)

提供隐式状态共享的组件组，如 Select/Option, Tabs/Tab, Accordion/AccordionItem。

```tsx
// 模式: 使用 Context 隐式共享状态
const TabsContext = createContext(null);

function Tabs({ children, defaultTab }) {
  const [active, setActive] = useState(defaultTab);
  return (
    <TabsContext.Provider value={{ active, setActive }}>
      <div role="tablist">{children}</div>
    </TabsContext.Provider>
  );
}

function Tab({ id, children }) {
  const { active, setActive } = useContext(TabsContext);
  return (
    <button role="tab" aria-selected={active === id} onClick={() => setActive(id)}>
      {children}
    </button>
  );
}

// 使用
<Tabs defaultTab="account">
  <Tab id="account">Account</Tab>
  <Tab id="security">Security</Tab>
</Tabs>
```

**适用**: 需要紧密协作的组件（Tabs, Select, Accordion, Menu, RadioGroup）

## 2. Render Props

通过函数 prop 共享渲染逻辑。

```tsx
function MouseTracker({ render }) {
  const [pos, setPos] = useState({ x: 0, y: 0 });
  useEffect(() => {
    const handler = (e) => setPos({ x: e.clientX, y: e.clientY });
    window.addEventListener('mousemove', handler);
    return () => window.removeEventListener('mousemove', handler);
  }, []);
  return render(pos);
}

// 使用
<MouseTracker render={({ x, y }) => <p>Mouse: {x}, {y}</p>} />
```

**适用**: 被 Hooks 大量替代，但仍有场景——需要动态决定渲染内容时

## 3. State Reducer Pattern

将状态更新逻辑暴露给使用者，类似 useReducer 的传参模式。

```tsx
function useToggle({ initial = false, reducer = (state, action) => action.changes }) {
  const [on, setOn] = useState(initial);

  const dispatch = (action) => {
    const changes = { on: !on };
    const newState = reducer({ on }, { ...action, changes });
    setOn(newState.on);
  };

  return { on, toggle: () => dispatch({ type: 'toggle' }) };
}
```

**适用**: 需要使用者控制状态逻辑的高级组件

## 4. Provider + Context (依赖注入)

注入服务/配置，而非全局状态。

```tsx
const ApiContext = createContext(null);

function ApiProvider({ client, children }) {
  return <ApiContext.Provider value={client}>{children}</ApiContext.Provider>;
}

function useApi() {
  const api = useContext(ApiContext);
  if (!api) throw new Error('useApi must be used within ApiProvider');
  return api;
}
```

**适用**: 主题、API 客户端、国际化、权限

## 5. Slots Pattern (Radix UI 风格)

多个子组件作为命名槽位，灵活组合。

```tsx
function Card({ children }) {
  const header = children.find(c => c.type === Card.Header);
  const body = children.find(c => c.type === Card.Body);
  const footer = children.find(c => c.type === Card.Footer);
  return (
    <div className="card">
      {header}
      {body}
      {footer}
    </div>
  );
}

Card.Header = function Header({ children }) { return <div className="card-header">{children}</div>; };
Card.Body = function Body({ children }) { return <div className="card-body">{children}</div>; };
Card.Footer = function Footer({ children }) { return <div className="card-footer">{children}</div>; };

// 使用
<Card>
  <Card.Header>Title</Card.Header>
  <Card.Body>Content</Card.Body>
  <Card.Footer>Actions</Card.Footer>
</Card>
```

或者使用更现代的 `asChild` 模式：

```tsx
function Slot({ children, ...props }) {
  if (isValidElement(children)) {
    return cloneElement(children, { ...props, ...children.props });
  }
  return null;
}
```

**适用**: 需要灵活组合的 UI 组件（Dialog, DropdownMenu, Popover）

## 6. Container/Presentational Split

逻辑与展示分离。

```tsx
// Container — 逻辑
function UserListContainer() {
  const { data, loading, error } = useFetch('/api/users');
  return <UserList users={data} loading={loading} error={error} />;
}

// Presentational — 展示
function UserList({ users, loading, error }) {
  if (loading) return <Spinner />;
  if (error) return <Error message={error.message} />;
  return <ul>{users.map(u => <li key={u.id}>{u.name}</li>)}</ul>;
}
```

**适用**: 需要复用展示逻辑、测试隔离、Storybook

## 7. Higher-Order Components (HOC)

函数接收组件返回增强组件。

```tsx
function withAuth(Component) {
  return function AuthenticatedComponent(props) {
    const { user, loading } = useAuth();
    if (loading) return <Spinner />;
    if (!user) return <Redirect to="/login" />;
    return <Component {...props} user={user} />;
  };
}
```

**适用**: 横切关注点（认证、日志、权限）。Hooks 可替代大部分场景

## 8. Polymorphic Components (多态组件)

组件可以渲染为不同的 HTML 元素。

```tsx
type TextProps<T extends ElementType> = {
  as?: T;
  children: ReactNode;
} & ComponentPropsWithoutRef<T>;

function Text<T extends ElementType = 'span'>({ as, children, ...props }: TextProps<T>) {
  const Component = as || 'span';
  return <Component {...props}>{children}</Component>;
}

// 使用
<Text as="h1" className="title">Heading</Text>
<Text as="p">Paragraph</Text>
```

**适用**: 需要灵活 HTML 标签的排版/布局组件

## 选择指南

| 场景 | 推荐模式 |
|------|----------|
| 紧密协作组件组 | Compound Components |
| 灵活 UI 组合 | Slots / asChild |
| 可复用展示 | Container/Presentational |
| 全局服务注入 | Provider + Context |
| 高级状态控制 | State Reducer |
| 横切关注点 | HOC (或用 Hooks) |
| 灵活标签 | Polymorphic |

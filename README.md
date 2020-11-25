https://github.com/dotnet/runtime/issues/45183

On `linux-x64`, run `./repro.sh`.

Roundtrip using a 5.0.0 ilasm/ildasm produces different IL output:

```diff
...
-  .method public hidebysig static int32  Compare<valuetype .ctor ([System.Runtime]System.ValueType) T>(!!T x,
-                                                                                                       !!T y) cil managed
+  .method public hidebysig static int32  Compare<([System.Runtime]System.ValueType) T>(!!T x,
+                                                                                       !!T y) cil managed
```

The output of ildasm seems correct: it looks like ilasm doesn't put it back
together properly.

This originally repro'd without a full round-trip (existing IL source stopped
working with an upgraded ilasm version), however this repro keeps it as a
round-trip to try to rule out IL incompatibility between 3.1 and 5.0 being a
problem.

`Repro.dll` is this class built under `net5.0`:

```C#
public static class Class1
{
    public static int Compare<T>(T x, T y) where T : struct
    {
        throw null;
    }
}
```

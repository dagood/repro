set -ex

# Set up repro based on DLL to make it more realistic.
./coreclr-tools/ildasm Repro.dll -out=repro.il

# Take the IL and make a DLL: round-tripped.
./coreclr-tools/ilasm repro.il -dll -output=RoundTripped.dll

# In order to compare, disassemble the roundtripped DLL again.
./coreclr-tools/ildasm RoundTripped.dll -out=repro-after-roundtrip.il

# Compare the IL that's been built by ilasm vs. the original IL produced by ildasm.
git diff --no-index repro.il repro-after-roundtrip.il

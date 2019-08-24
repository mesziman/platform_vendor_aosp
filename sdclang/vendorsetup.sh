# Set SDClang defaults
export SDCLANG=false
export SDCLANG_PATH=prebuilts/snapdragon/sd8/bin
export SDCLANG_LTO_DEFS=vendor/syberia/sdclang/sdllvm-lto-defs.mk
export SDCLANG_COMMON_FLAGS="-O3 -fvectorize -Wno-user-defined-warnings -Wno-vectorizer-no-neon -Wno-unknown-warning-option \
-mdefault-to-arm -mcpu=cortex-a55 -mtune=cortex-a55 -Wno-defaulted-function-deleted -Wno-user-defined-warnings -Wno-vectorizer-no-neon -Wno-unknown-warning-option \
-Wno-deprecated-register -Wno-tautological-type-limit-compare -Wno-sign-compare -Wno-gnu-folding-constant \
-mllvm -arm-implicit-it=always -Wno-inline-asm -Wno-unused-command-line-argument -Wno-unused-variable \
-Wno-c++98-compat-extra-semi \
-Wno-self-assign-overloaded \
-Wno-constant-logical-operand \
-Wno-return-std-move-in-c++11 \
-Wno-dangling-field -Wno-sign-compare \
-fno-sanitize-minimal-runtime \
-fno-sanitize=implicit-integer-sign-change \
-fno-sanitize-trap=integer,undefined \
-fno-sanitize-recover=integer,undefined \
-Wno-deprecated-register -Wno-tautological-type-limit-compare -Wno-sign-compare -Wno-gnu-folding-constant \
-mllvm -arm-implicit-it=always -Wno-inline-asm -Wno-unused-command-line-argument -Wno-unused-variable"

# Enable based on host OS/availablitiy
case $(uname -s) in
    Linux)
        if [ -d "$SDCLANG_PATH" ]; then
            export SDCLANG=true
        fi
        ;;
    Darwin)
        ;;
    *)
        ;;
esac

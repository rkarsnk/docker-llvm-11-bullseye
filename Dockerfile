FROM debian:bullseye

RUN apt update && apt upgrade -y
RUN apt install -y build-essential \
    llvm-11-dev lld-11 clang-11 nasm acpica-tools \
    uuid-dev \
    qemu-utils \
    xauth unzip python3-distutils ca-certificates \
    git

RUN for item in llvm-PerfectShuffle llvm-addr2line llvm-ar llvm-as llvm-bcanalyzer \
llvm-c-test llvm-cat llvm-cfi-verify llvm-config llvm-cov llvm-cvtres llvm-cxxdump \
llvm-cxxfilt llvm-cxxmap llvm-diff llvm-dis llvm-dlltool llvm-dwarfdump llvm-dwp \
llvm-elfabi llvm-exegesis llvm-extract llvm-gsymutil llvm-ifs llvm-install-name-tool \
llvm-jitlink llvm-lib llvm-link llvm-lipo llvm-lto llvm-lto2 llvm-mc llvm-mca \
llvm-ml llvm-modextract llvm-mt llvm-nm llvm-objcopy llvm-objdump llvm-opt-report \
llvm-pdbutil llvm-profdata llvm-ranlib llvm-rc llvm-readelf llvm-readobj \
llvm-reduce llvm-rtdyld llvm-size llvm-split llvm-stress llvm-strings llvm-strip \
llvm-symbolizer llvm-tblgen llvm-undname llvm-xray \
clang++ clang clang-cpp \
ld.lld ld64.lld lld lld-link; \
do update-alternatives --install /usr/bin/${item} ${item} /usr/bin/${item}-11 100; done


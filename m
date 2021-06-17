Return-Path: <clang-built-linux+bncBCT6537ZTEKRBKX7VSDAMGQEAJYVKIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B273AB389
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 14:27:22 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id d9-20020adffbc90000b029011a3b249b10sf2847805wrs.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 05:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623932842; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYUQA7ovAmO+eE+gJq30vbiKTlt7dBbLL70+x8PK+lAp6nQwFvhXeZ4e65ox9XCW5P
         b5jiyRYiGmJjSv81E7S1sVWO2bPziOpmPiYJ7pky9iDSkO9MNMzKFWo631PCB6ZKJzkD
         02fEYwQgJNRFnyMn0Nvkc7bRn7RoU2FgaFkih3WnPeY9WO2e8jAa7efQyKRb4ppisbWC
         ueWGwD1vP+cZ9IyRpiC5zihAGPJM7G57ESBo9Obr3eW4jtK/92oFlzGMx1awcS7PMF5j
         YoKj6kAPSZUGEbIA+oAsHSwrFMH4TrnQD3TS6zi+8ptKBYunEy2HxPqPkJC89O1f/Hiy
         tCKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=Z5cdPOVTG/vCKWocXR5m59ODzKv6LBUrfhGEbhKWyQ8=;
        b=gfpmvvtRJkrK6YA/GylxVqCatI380Uhm7iYTQe0qbrzXfvElODy+rtXbnSxiVR1Sa6
         pGvIM3ETlcwIYgXc+Wp4kPxfovUQcjIXZpLrEtEWn25ExYyy1QVR3+Rc33wV7V7Vrs3U
         2jrVcamuXsQjW2eVi4dBtFiJypctQzoR8RXE4ImUP2h3m8rtk8Zn8RsU0l3j7E5QjuOo
         Df3/4MXYHBSttRi/wO9PHY/MpJuwH9/D2py7YxWSw8A0KV2aGmz1aIrRyoUSKSEZErBd
         aejnRCeaJLT6XCw2jTkIkHF0CNEOo+fIMzJqNnjqKFAXyFtBIlGOjcpTYHxSwpDhQ0N6
         ERaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rMVybnc9;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5cdPOVTG/vCKWocXR5m59ODzKv6LBUrfhGEbhKWyQ8=;
        b=MR8Eq2W0ikq5TZvLi+no3snK6lbdBjCaWkSZDQtFeBwWbuC/aTByWSVe/6ia8B3yQB
         tCvQ849hPm3YMbHkOs9Nbs6enxtD657yckaaFbcRhuPXi/s+TZrQrQvAYi88f2da5T7S
         RGInf+D6Ja/Sq/8IUGYBLVzz93mNKBoaOrbAMrJAcyqceVBQ3EymLb2sJBFzNsyn6wgx
         s8zSy2HXkYZJ9D2ZKI+YcSQA/fr0kSFJZ2XMplNkXG9+StnBcjDala0eeiJZ1wshT2Cn
         SX3YSKSpq+aMegt4atp6IMcH413rGGAJK3e983KcVdr0aXrVQ2DyRS55PO/SfMUoeO9M
         Xi+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5cdPOVTG/vCKWocXR5m59ODzKv6LBUrfhGEbhKWyQ8=;
        b=bfqtgILpFEqVtcphS9r+7fGifmh8MVA+DkeA/bLahkPu/MQC6M+LLPU1NmmIRTxB2w
         jNZWDP7dKsXSYHDfdDzBTl8VtGETbtfsSvSlJEjRgPJyVhMiJGDOPpqNrm8CxWc6/rRu
         /+qrpP067OzGXwnklljVghan9djAA/1qIj7TrxYCnpZbzid8iXd4nDD/lCnAXtsMNalr
         oHgtFdq9ZH88IHaxR3FkYzaQzJTeLDpD0ThibcHie26sVN1YffnsctrfbCDmPGO6OLqs
         lgWPBFjP/jIkLzWNdQ84TFxjxg/Z1F7LE5aXywOC9F+l2jTFuhIL5k92mrB5PPF0XZ1D
         9dMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530C6EjSiAJDdgDf942YtdhY62Zl8NKyY385DAiJ+xCkT2ffAdES
	KsE4L3gDAMaEWV626kxcNZg=
X-Google-Smtp-Source: ABdhPJx8/UiqN7OKavnhRGCFAvg1bm0Q4DAbT5fDRlo8rpK14UiM6ZqKOkSmN2ssT5TvaSz2gZUmDA==
X-Received: by 2002:a05:600c:198d:: with SMTP id t13mr4782575wmq.56.1623932842482;
        Thu, 17 Jun 2021 05:27:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls2696754wmq.3.canary-gmail;
 Thu, 17 Jun 2021 05:27:21 -0700 (PDT)
X-Received: by 2002:a05:600c:1ca6:: with SMTP id k38mr4927478wms.49.1623932841594;
        Thu, 17 Jun 2021 05:27:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623932841; cv=none;
        d=google.com; s=arc-20160816;
        b=Qi5fcNpJIjteAhLZ/PXeJRT27u6eTE4Mc96+/XkOIOnUJFDyiy3kjBCWJkUskX98zq
         QKiqOJt7LyF90h7hUgeOeAieqYyIRDRe2HTm6HQlLLI5ssgbP3L4TSIBYkL9Fc8JuTNG
         O4YX4qmWFACLYg3YeVc/NwSIS3NROJZflt2D7tTdAf1cVWmLLzOGLA15t81pFkyGHUgP
         /HHR4xaetmB1tOeAy6i4xwYzRhUbOrFIIFdst2YZPQRA35Gs0pnQXsSApqWirKj5UfiB
         YXnDEAX+9XrPpQomqnP+4Ssg+OlGchAWRtEaks3ruJhVFKtu2MnjjT6EI8BZw0ENXMzi
         HvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dasXWH3vbrqnz/8qFPE8sSbqVTMnmvkZjNS38SkXCrY=;
        b=zxxjmq9PH7EeAaBCN2chHB3g9hTOLRrSsQiMKrdaiT2aXw0Rmvee1u38D4nQnTaGxZ
         DLTtleJ7UA1QUjzbw0YOndHAvBoWK/I6XiQj2P9sPNm3iW3pJsqhySbBld/IUU7P2Bjd
         HYUYj2Onycs4IqOfOqIrPau5oxcPRtDN5UmoiGyb35P7L8XQqjqsMh9aogMQHFFOkguj
         pm7UYy7Bb35I26FWyUbgQBWDws9JI4LRwMebpmBg2EliLCXxh9AO3MjAb3Lk3ChDXiVM
         EdBdqVgbyB8NFIq6ld0HtvoTwG8bcua7pxeANOMiT8F0Fylr52fu973tP0cif3hqsVBB
         vuYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rMVybnc9;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id c4si418758wml.4.2021.06.17.05.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 05:27:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id c7so2819577edn.6
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 05:27:21 -0700 (PDT)
X-Received: by 2002:a05:6402:220d:: with SMTP id cq13mr6102680edb.52.1623932841150;
 Thu, 17 Jun 2021 05:27:21 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 17 Jun 2021 17:57:10 +0530
Message-ID: <CA+G9fYsn-3rZXkHTtH33Oo0y97nfgkQmR_Echbu_-=WAbfo4Ug@mail.gmail.com>
Subject: [next] [clang] s390: clang: error: unable to execute command:
 Segmentation fault (core dumped)
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rMVybnc9;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Linux next 20210617 tag following s390 builds failed with clang-10,
clang-11 and clang-12.

Regressions found on s390:

 - build/clang-11-tinyconfig
 - build/clang-11-allnoconfig
 - build/clang-12-allnoconfig
 - build/clang-12-defconfig
 - build/clang-10-tinyconfig
 - build/clang-11-defconfig
 - build/clang-10-allnoconfig
 - build/clang-12-tinyconfig
 - build/clang-10-defconfig

Build log:
------------
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=s390
CROSS_COMPILE=s390x-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'
PLEASE submit a bug report to https://bugs.llvm.org/ and include the
crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.Program arguments: /usr/lib/llvm-12/bin/clang -cc1 -triple
s390x-unknown-linux-gnu -S -disable-free -disable-llvm-verifier
-discard-value-names -main-file-name core.c -mrelocation-model pic
-pic-level 2 -pic-is-pie -fno-delete-null-pointer-checks -mllvm
-warn-stack-size=2048 -mframe-pointer=none -relaxed-aliasing
-fmath-errno -fno-rounding-math -no-integrated-as
-mconstructor-aliases -target-cpu zEC12 -target-feature +soft-float
-mbackchain -mpacked-stack -msoft-float -mfloat-abi soft
-fno-split-dwarf-inlining -debug-info-kind=limited -dwarf-version=4
-debugger-tuning=gdb -nostdsysteminc -nobuiltininc -resource-dir
/usr/lib/llvm-12/lib/clang/12.0.1 -dependency-file
kernel/sched/.core.o.d -MT kernel/sched/core.o -isystem
/usr/lib/llvm-12/lib/clang/12.0.1/include -include
/builds/linux/include/linux/compiler-version.h -include
/builds/linux/include/linux/kconfig.h -include
/builds/linux/include/linux/compiler_types.h -I
/builds/linux/arch/s390/include -I ./arch/s390/include/generated -I
/builds/linux/include -I ./include -I
/builds/linux/arch/s390/include/uapi -I
./arch/s390/include/generated/uapi -I /builds/linux/include/uapi -I
./include/generated/uapi -D __KERNEL__ -D __PACK_STACK -D
CONFIG_AS_CFI_VAL_OFFSET=1 -D CC_USING_NOP_MCOUNT -D CC_USING_FENTRY
-I /builds/linux/kernel/sched -I ./kernel/sched -D
KBUILD_MODFILE=\"kernel/sched/core\" -D KBUILD_BASENAME=\"core\" -D
KBUILD_MODNAME=\"core\" -D __KBUILD_MODNAME=kmod_core
-fmacro-prefix-map=/builds/linux/= -O2 -Wall -Wundef
-Werror=strict-prototypes -Wno-trigraphs
-Werror=implicit-function-declaration -Werror=implicit-int
-Werror=return-type -Wno-format-security
-Werror=unknown-warning-option -Wno-sign-compare -Wno-frame-address
-Wno-address-of-packed-member -Wno-format-invalid-specifier -Wno-gnu
-Wno-unused-const-variable -Wdeclaration-after-statement -Wvla
-Wno-pointer-sign -Wno-array-bounds -Werror=date-time
-Werror=incompatible-pointer-types -Wno-initializer-overrides
-Wno-format -Wno-sign-compare -Wno-format-zero-length
-Wno-pointer-to-enum-cast
-Wno-tautological-constant-out-of-range-compare -std=gnu89
-fno-dwarf-directory-asm -fdebug-compilation-dir
/home/tuxbuild/.cache/tuxmake/builds/current -ferror-limit 19 -pg
-mfentry -mnop-mcount -mrecord-mcount -fwrapv -fno-signed-char
-fwchar-type=short -fno-signed-wchar -fgnuc-version=4.2.1
-vectorize-loops -vectorize-slp -o /tmp/core-eaad47.s -x c
/builds/linux/kernel/sched/core.c
1.<eof> parser at end of file
2.Code generation
3.Running pass 'Function Pass Manager' on module
'/builds/linux/kernel/sched/core.c'.
4.Running pass 'SystemZ DAG->DAG Pattern Instruction Selection' on
function '@trace_event_raw_event_sched_switch'
 #0 0x00007f7227e2e693 llvm::sys::PrintStackTrace(llvm::raw_ostream&,
int) (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd12693)
 #1 0x00007f7227e2c9b0 llvm::sys::RunSignalHandlers()
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd109b0)
 #2 0x00007f7227e2ecff (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd12cff)
 #3 0x00007f722f7cb140 __restore_rt
(/lib/x86_64-linux-gnu/libpthread.so.0+0x14140)
 #4 0x00007f7227dba772 llvm::LLT::print(llvm::raw_ostream&) const
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xc9e772)
 #5 0x00007f72284a850b
llvm::SelectionDAGBuilder::visitInlineAsm(llvm::CallBase const&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x138c50b)
 #6 0x00007f722848ade7
llvm::SelectionDAGBuilder::visit(llvm::Instruction const&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x136ede7)
 #7 0x00007f72285198b9
llvm::SelectionDAGISel::SelectBasicBlock(llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction,
false, false, void>, false, true>,
llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction,
false, false, void>, false, true>, bool&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fd8b9)
 #8 0x00007f722851926a
llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm::Function const&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fd26a)
 #9 0x00007f7228516fa6
llvm::SelectionDAGISel::runOnMachineFunction(llvm::MachineFunction&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fafa6)
#10 0x00007f7229f07742 (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x2deb742)
#11 0x00007f722813b09e
llvm::MachineFunctionPass::runOnFunction(llvm::Function&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x101f09e)
#12 0x00007f7227f5619d
llvm::FPPassManager::runOnFunction(llvm::Function&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3a19d)
#13 0x00007f7227f5bb83 llvm::FPPassManager::runOnModule(llvm::Module&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3fb83)
#14 0x00007f7227f567ef
llvm::legacy::PassManagerImpl::run(llvm::Module&)
(/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3a7ef)
#15 0x00007f722e092be6
clang::EmitBackendOutput(clang::DiagnosticsEngine&,
clang::HeaderSearchOptions const&, clang::CodeGenOptions const&,
clang::TargetOptions const&, clang::LangOptions const&,
llvm::DataLayout const&, llvm::Module*, clang::BackendAction,
std::unique_ptr<llvm::raw_pwrite_stream,
std::default_delete<llvm::raw_pwrite_stream> >)
(/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1614be6)
#16 0x00007f722e32bd9f (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x18add9f)
#17 0x00007f722d487054 clang::ParseAST(clang::Sema&, bool, bool)
(/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0xa09054)
#18 0x00007f722ea20268 clang::FrontendAction::Execute()
(/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1fa2268)
#19 0x00007f722e9adcf1
clang::CompilerInstance::ExecuteAction(clang::FrontendAction&)
(/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1f2fcf1)
#20 0x00007f722ea83282
clang::ExecuteCompilerInvocation(clang::CompilerInstance*)
(/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x2005282)
#21 0x0000000000413352 cc1_main(llvm::ArrayRef<char const*>, char
const*, void*) (/usr/lib/llvm-12/bin/clang+0x413352)
#22 0x00000000004116ce (/usr/lib/llvm-12/bin/clang+0x4116ce)
#23 0x00000000004114de main (/usr/lib/llvm-12/bin/clang+0x4114de)
#24 0x00007f7226c50d0a __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x26d0a)
#25 0x000000000040e88a _start (/usr/lib/llvm-12/bin/clang+0x40e88a)
clang: error: unable to execute command: Segmentation fault (core dumped)
clang: error: clang frontend command failed due to signal (use -v to
see invocation)
Debian clang version 12.0.1-+rc1-1
Target: s390x-unknown-linux-gnu
Thread model: posix
InstalledDir: /usr/local/bin
clang: note: diagnostic msg:
********************

PLEASE ATTACH THE FOLLOWING FILES TO THE BUG REPORT:
Preprocessed source(s) and associated run script(s) are located at:
clang: note: diagnostic msg: /tmp/core-86ba67.c
clang: note: diagnostic msg: /tmp/core-86ba67.sh
clang: note: diagnostic msg:

********************
make[3]: *** [/builds/linux/scripts/Makefile.build:272:
kernel/sched/core.o] Error 254

ref:
https://builds.tuxbuild.com/1u4ZMVtVqiZtUcCrP9YE89mx9iU/

Build:
--------
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_sha: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
    git_short_log: 7d9c6b8147bd (\Add linux-next specific files for 20210617\)
    kconfig: defconfig
    target_arch: s390
    toolchain: clang-12

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsn-3rZXkHTtH33Oo0y97nfgkQmR_Echbu_-%3DWAbfo4Ug%40mail.gmail.com.

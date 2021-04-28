Return-Path: <clang-built-linux+bncBAABBMMYU6CAMGQEAO5Q4WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3613736E09F
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 22:57:22 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id s13-20020a0cdc0d0000b02901bbc03198casf6643838qvk.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 13:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619643441; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/+yAjBbZuWfM2B0YZl0Mvm/q4CzNFclDmlEo1SOPymHAWQSLMfSwkcobMNSy13lQU
         porAGkCFsYefhBwrd+ho/CR4DGHK+Nj74xIqpprMh9TKTW+YhsdkSgl3kAQoNWu1FYX8
         hiKpXXsfO+Rx6usvJAq8ro5qMWPF740lyd0roK6jz8Farz2SC+0QhuKgN9IzQZ2OfEsx
         avg1ykXiS6jICzMyq4ZzU2X/uG9Iy2lCWyZVVeYwx4R8qBtZE4icwJY4NlYGxwg2P474
         hwfesHUPG4I/gQoULmuRrHJs1sQViKx0AHpUK1vhbQBIUh5Nw9XohgONb+3R3s9poPvJ
         bjBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Sk0SFzQnjqexYMzlPHifMTB6Ye5qcxv80Scoh4rsjak=;
        b=PYc7n1Rh7gC7QhCaiHbfokl9qG8T96xnMOuq+AVNAXetdVNful5FO00l7PpAOBmuQx
         bvApRR6cYFlzOmZ6W/dKruh7rufsdeXce4VRKWl3Gr4C6vYQ/FHwo/IHA+eEcUVUmeZz
         phzoFRETyWvdP1g2b5dAxrIPebew9DEqbdhtEXZ+L1RVQGbI1/QU4Zui5I8p3xGlJkWF
         A19tZoW1IJV0+QXWbIZw0K3u6PB/Rs1WctOEHiFYWkSbBy/O01UUxpskBkhEWNg6vA+/
         b3UvskXHT55h97ElTPMe/4KOMN6ZvhV+L9R3r8BkS8KcFJKbMvBLNr2vIphBPZtOZm98
         sKgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="YkD/nPnh";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sk0SFzQnjqexYMzlPHifMTB6Ye5qcxv80Scoh4rsjak=;
        b=dKdGODfc1+8iFKNK/A6zsoCoNw2dEOy84LU4xwP4Iw4Zhlhv8a+o9ksEwQP/oORFpb
         tx0Jy2ASXudzZSoXnLCFBj6MuEwU1mZE7Y64RH6PYzLSMDLvtCqE5pzjz11L8yBZuo7I
         kED+6qUWX0H2VZzTgMTqLDFU11gUrZL90e8F+sTN2MuDVNPt4i90gbEZqB5HVuOztdBy
         tutr0SrX9EE0UtRXPcfTTVy4temGt8/07zNq0RFpH4fBnDUazkH7RSBEWX6uNm2Pj4GD
         RYRVZZ+g23Xxmhgvh0lL6IMMI60/jbfuhGcq0PaIfZl9JY9kYSIUU7LT1S2TIGiuce1R
         MzQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sk0SFzQnjqexYMzlPHifMTB6Ye5qcxv80Scoh4rsjak=;
        b=mzA6hk+OQpQS1mDTgJy1XK0kb3c4oesYrl6rSEqyS1IOotUUl+wrlIL4eTXWZkYQAP
         vfif2mmM8y8V6YdlGcYManZF3mL75k/OBWnG+K/L+7IRp34RfJs1uygf4y7257JP59oc
         0KjfyHSCyDE1H1Ls3Qh22NEEJ6kFcsovS/FS4PPBlEezbbHpELVRF11jHu89LZVZpHm3
         YWKoG+emhhrCHuUYRArYUGN3CcPN7i16/ma/jX40px3jAfuEDjVUTTAO57lBvFhYnJR5
         BzBOsy7S3O+yBmmLLOyg76GVP1A6OvcS9DLOkkufwbTh2al2sDYxvJzmDzLTP/ZvvYqw
         ZkZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jTpJ5ZRTqKEINdb8VVR6H11yLocV+DTuY0hb9YnnXDdn/FcI7
	xGwq8IpY5rgGoh0l/DvM2Mw=
X-Google-Smtp-Source: ABdhPJyPXFAjSHdGNcIqpvFhjU2/1t/xPDiWFVyiRrWCb3QGhSAZJ161lQbWf+3m1tM1NUBy6yA92A==
X-Received: by 2002:a0c:eb06:: with SMTP id j6mr31097160qvp.10.1619643441338;
        Wed, 28 Apr 2021 13:57:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:74cb:: with SMTP id j11ls484263qtr.2.gmail; Wed, 28 Apr
 2021 13:57:20 -0700 (PDT)
X-Received: by 2002:ac8:5054:: with SMTP id h20mr27818051qtm.34.1619643440797;
        Wed, 28 Apr 2021 13:57:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619643440; cv=none;
        d=google.com; s=arc-20160816;
        b=zi0ZvRxwFn8AIhuK+iWzYa/RGOvavBrdIBN4+QjdfC+xNT8YK6nLj/xqYtHZ9yU+eq
         lcwlh2rTlalMuciwBp60l5fXiuj/84m97zZXpRRN468zAPEg7MCJ1dx5MLe82i8IP6Vt
         +mCdjSVvszL7CSkkdsLLekxbJ/w5Z/w1gx/G2fvgY3dOemvBZGejq9Rrqy0qdioULmB6
         GYvfZxPjEzDNoz2kI/DR1pOL19npSWpTjAyjgq8JSpf/GgGplT1fUN4iGUxwL9xrQVjk
         cBhcZUssM5qZvg1OlaJcF5+Oo5bB9uwxHmtO9KwuoRl9+OKQ3kE3NrfYxvGB4s9RQ6yx
         nR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MzY1eYdyjawNhT644s7l9hQxibAe/ey6lMmCJPdrwog=;
        b=xWXNUBf3Z8Hdr6MBb0htdmRWy5Z2LZMpEYWCMfjRjFrTjr8J4fy2rtBbfOO1wUmpr4
         1ta3ydDjz9R03frTI9PQUXdQyEVL72BNLbTMGt8xpfILFYJp6euhUxqby52ZG8PSGfBP
         lgScAYjcyVWG2V0F2TrexTqag2gXsZvrERgDUOZHUV9UWaaCTMdm0MwnBVAc+FltiudK
         ju4oAnrc8WvIjdAdqVD8zMp/yHmfLC8D7T/ochg5MJXXemiF+wRnvfbwNlJN682KcvoZ
         3HOtppFVqgYlPnRUiP4QFF2dvLJQqkAji/wGLxclJ2SRsyOxrg7lWIuPqoBMSl4GgeEE
         xVPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="YkD/nPnh";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 22si106654qkb.5.2021.04.28.13.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 13:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 60B7F61446
	for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 20:57:19 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id m9so51767974wrx.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 13:57:19 -0700 (PDT)
X-Received: by 2002:adf:d223:: with SMTP id k3mr4995647wrh.99.1619643437750;
 Wed, 28 Apr 2021 13:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 28 Apr 2021 22:56:43 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
Message-ID: <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Brian Cain <bcain@codeaurora.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="YkD/nPnh";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Apr 28, 2021 at 9:50 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Wed, Apr 28, 2021 at 12:30 PM Brian Cain <bcain@codeaurora.org> wrote:
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> And that's the first time I've been able to build hexagon; nice work!
>

I built a defconfig kernel with my test tree and clang-12 now, that worked fine.
However using clang-13 I got one warning and one internal error:

/git/arm-soc/block/blk-mq.c:631:39: error: passing 4-byte aligned
argument to 16-byte aligned parameter 2 of
'smp_call_function_single_async' may result in an unaligned pointer
access [-Werror,-Walign-mismatch]
                smp_call_function_single_async(cpu, &rq->csd);
                                                    ^
1 error generated.
make[3]: *** [/git/arm-soc/scripts/Makefile.build:273: block/blk-mq.o] Error 1
make[3]: Target '__build' not remade because of errors.
make[2]: *** [/git/arm-soc/Makefile:1943: block] Error 2
PLEASE submit a bug report to https://bugs.llvm.org/ and include the
crash backtrace, preprocessed source, and associated run script.
Stack dump:
0. Program arguments: clang-13 -Wp,-MMD,net/core/.dev.o.d -nostdinc
-isystem /usr/lib/llvm-13/lib/clang/13.0.0/include
-I/git/arm-soc/arch/hexagon/include -I./arch/hexagon/include/generated
-I/git/arm-soc/include -I./include
-I/git/arm-soc/arch/hexagon/include/uapi
-I./arch/hexagon/include/generated/uapi -I/git/arm-soc/include/uapi
-I./include/generated/uapi -include
/git/arm-soc/include/linux/compiler-version.h -include
/git/arm-soc/include/linux/kconfig.h -include
/git/arm-soc/include/linux/compiler_types.h -D__KERNEL__
-fmacro-prefix-map=/git/arm-soc/= -DKBUILD_ERR0 -Wall -Wundef
-Werror=strict-prototypes -fno-strict-aliasing -fno-common
-fshort-wchar -fno-PIE -Werror=implicit-function-declaration
-Werror=implicit-int -Werror=return-type -std=gnu89
-Werror=unknown-warning-option --target=hexagon-linux -integrated-as
-G0 -fno-short-enums -mlong-calls -ffixed-r19 -DTHREADINFO_REG=r19
-D__linux__ -fno-delete-null-pointer-checks -O2 -fno-stack-protector
-fno-omit-frame-pointer -fno-optimize-sibling-calls
-mno-omit-leaf-frame-pointer -g -Wdeclaration-after-statement -Wvla
-fno-strict-overflow -fno-stack-check -Werror=date-time
-Werror=incompatible-pointer-types -Werror -I /git/arm-soc/net/core -I
./net/core -DKBUILD_MODFILE=\"net/core/dev\" -DKBUILD_BASENAME=\"dev\"
-DKBUILD_MODNAME=\"dev\" -D__KBUILD_MODNAME=kmod_dev -c -o
net/core/dev.o /git/arm-soc/net/core/dev.c
1. <eof> parser at end of file
2. Code generation
3. Running pass 'Function Pass Manager' on module '/git/arm-soc/net/core/dev.c'.
4. Running pass 'Prologue/Epilogue Insertion & Frame Finalization' on
function '@netdev_bind_sb_channel_queue'
 #0 0x00007f22c816fae3 llvm::sys::PrintStackTrace(llvm::raw_ostream&,
int) (/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xc07ae3)
 #1 0x00007f22c816ded0 llvm::sys::RunSignalHandlers()
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xc05ed0)
 #2 0x00007f22c80b7a36 (/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xb4fa36)
 #3 0x00007f22d00091f0 __restore_rt
(/lib/x86_64-linux-gnu/libpthread.so.0+0x141f0)
 #4 0x00007f22c8500e1e
llvm::MachineRegisterInfo::addRegOperandToUseList(llvm::MachineOperand*)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xf98e1e)
 #5 0x00007f22c848ff4a
llvm::MachineInstr::AddRegOperandsToUseLists(llvm::MachineRegisterInfo&)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xf27f4a)
 #6 0x00007f22c843936e
llvm::ilist_traits<llvm::MachineInstr>::addNodeToList(llvm::MachineInstr*)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xed136e)
 #7 0x00007f22c857af64 (/lib/x86_64-linux-gnu/libLLVM-13.so.1+0x1012f64)
 #8 0x00007f22c848b87e
llvm::MachineFunctionPass::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xf2387e)
 #9 0x00007f22c829823d
llvm::FPPassManager::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xd3023d)
#10 0x00007f22c829dd23 llvm::FPPassManager::runOnModule(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xd35d23)
#11 0x00007f22c829888f
llvm::legacy::PassManagerImpl::run(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xd3088f)
#12 0x00007f22ce4c6561 (/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x176f561)
#13 0x00007f22ce4c044b
clang::EmitBackendOutput(clang::DiagnosticsEngine&,
clang::HeaderSearchOptions const&, clang::CodeGenOptions const&,
clang::TargetOptions const&, clang::LangOptions const&,
llvm::DataLayout const&, llvm::Module*, clang::BackendAction,
std::unique_ptr<llvm::raw_pwrite_stream,
std::default_delete<llvm::raw_pwrite_stream> >)
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x176944b)
#14 0x00007f22ce75fcf8 (/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1a08cf8)
#15 0x00007f22cd804df4 clang::ParseAST(clang::Sema&, bool, bool)
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0xaaddf4)
#16 0x00007f22cef03728 clang::FrontendAction::Execute()
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x21ac728)
#17 0x00007f22cee878b1
clang::CompilerInstance::ExecuteAction(clang::FrontendAction&)
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x21308b1)
#18 0x00007f22cef6aac2
clang::ExecuteCompilerInvocation(clang::CompilerInstance*)
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x2213ac2)
#19 0x0000000000412f39 cc1_main(llvm::ArrayRef<char const*>, char
const*, void*) (/usr/lib/llvm-13/bin/clang+0x412f39)
#20 0x0000000000410f05 (/usr/lib/llvm-13/bin/clang+0x410f05)
#21 0x00007f22cebc0ac2 (/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1e69ac2)
#22 0x00007f22c80b780d
llvm::CrashRecoveryContext::RunSafely(llvm::function_ref<void ()>)
(/lib/x86_64-linux-gnu/libLLVM-13.so.1+0xb4f80d)
#23 0x00007f22cebc058a
clang::driver::CC1Command::Execute(llvm::ArrayRef<llvm::Optional<llvm::StringRef>
>, std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> >*, bool*) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1e6958a)
#24 0x00007f22ceb954af
clang::driver::Compilation::ExecuteCommand(clang::driver::Command
const&, clang::driver::Command const*&) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1e3e4af)
#25 0x00007f22ceb95867
clang::driver::Compilation::ExecuteJobs(clang::driver::JobList const&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) const (/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1e3e867)
#26 0x00007f22cebaa2ad
clang::driver::Driver::ExecuteCompilation(clang::driver::Compilation&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) (/lib/x86_64-linux-gnu/libclang-cpp.so.13+0x1e532ad)
#27 0x00000000004107af main (/usr/lib/llvm-13/bin/clang+0x4107af)
#28 0x00007f22c7020565 __libc_start_main ./csu/../csu/libc-start.c:332:16
#29 0x000000000040df4e _start (/usr/lib/llvm-13/bin/clang+0x40df4e)
clang: error: clang frontend command failed with exit code 139 (use -v
to see invocation)
Ubuntu clang version
13.0.0-++20210427083533+8de7d8b2c289-1~exp1~20210427184256.368
Target: hexagon-unknown-linux
Thread model: posix
InstalledDir: /usr/bin
clang: note: diagnostic msg:
********************

PLEASE ATTACH THE FOLLOWING FILES TO THE BUG REPORT:
Preprocessed source(s) and associated run script(s) are located at:
clang: note: diagnostic msg: /tmp/dev-c62fd4.c
clang: note: diagnostic msg: /tmp/dev-c62fd4.sh
clang: note: diagnostic msg:
********************
make[4]: *** [/git/arm-soc/scripts/Makefile.build:273: net/core/dev.o] Error 139
8<-------------------



Trying to build allmodconfig using clang-12 resulted in a different
internal error:

/git/arm-soc/drivers/clocksource/timer-oxnas-rps.c:39:9: error:
'TIMER_ENABLE' macro redefined [-Werror,-Wmacro-redefined]
fatal error: error in backend: Misaligned constant address: 0x00000007
has alignment 1, but the memory access requires 4
PLEASE submit a bug report to https://bugs.llvm.org/ and include the
crash backtrace, preprocessed source, and associated run script.
Stack dump:
0. Program arguments: clang-12 -Wp,-MMD,kernel/locking/.lockdep.o.d
-nostdinc -isystem /usr/lib/llvm-12/lib/clang/12.0.0/include
-I/git/arm-soc/arch/hexagon/include -I./arch/hexagon/include/generated
-I/git/arm-soc/include -I./include
-I/git/arm-soc/arch/hexagon/include/uapi
-I./arch/hexagon/include/generated/uapi -I/git/arm-soc/include/uapi
-I./include/generated/uapi -include
/git/arm-soc/include/linux/compiler-version.h -include
/git/arm-soc/include/linux/kconfig.h -include
/git/arm-soc/include/linux/compiler_types.h -D__KERNEL__
-fmacro-prefix-map=/git/arm-soc/= -DKBUILD_ERR0 -Wall -Wundef
-Werror=strict-prototypes -fno-strict-aliasing -fno-common
-fshort-wchar -fno-PIE -Werror=implicit-function-declaration
-Werror=implicit-int -Werror=return-type -std=gnu89
-Werror=unknown-warning-option --target=hexagon-linux -integrated-as
-G0 -fno-short-enums -mlong-calls -ffixed-r19 -DTHREADINFO_REG=r19
-D__linux__ -fno-delete-null-pointer-checks -O2
-Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer
-fno-optimize-sibling-calls -mno-omit-leaf-frame-pointer
-ftrivial-auto-var-init=pattern -falign-functions=32
-Wdeclaration-after-statement -Wvla -fno-strict-overflow
-fno-stack-check -Werror=date-time -Werror=incompatible-pointer-types
-Werror -I /git/arm-soc/kernel/locking -I ./kernel/locking
-DKBUILD_MODFILE=\"kernel/locking/lockdep\"
-DKBUILD_BASENAME=\"lockdep\" -DKBUILD_MODNAME=\"lockdep\"
-D__KBUILD_MODNAME=kmod_lockdep -c -o kernel/locking/lockdep.o
/git/arm-soc/kernel/locking/lockdep.c
1. <eof> parser at end of file
2. Code generation
3. Running pass 'Function Pass Manager' on module
'/git/arm-soc/kernel/locking/lockdep.c'.
4. Running pass 'Hexagon DAG->DAG Pattern Instruction Selection' on
function '@validate_chain'
 #0 0x00007fde5bd81a43 llvm::sys::PrintStackTrace(llvm::raw_ostream&,
int) (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd9a43)
 #1 0x00007fde5bd7fd50 llvm::sys::RunSignalHandlers()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd7d50)
 #2 0x00007fde5bcd0c2a (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28c2a)
 #3 0x00007fde5bcd0bcb (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28bcb)
 #4 0x00007fde5bd7c817 llvm::sys::Process::Exit(int, bool)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd4817)
 #5 0x0000000000412ad0 (/usr/lib/llvm-12/bin/clang+0x412ad0)
 #6 0x00007fde5bcdcb12 llvm::report_fatal_error(llvm::Twine const&,
bool) (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb34b12)
 #7 0x00007fde5bcdcbe7 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb34be7)
 #8 0x00007fde5daccb03 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x2924b03)
 #9 0x00007fde5dad1fed (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x2929fed)
#10 0x00007fde5dad34bf (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x292b4bf)
#11 0x00007fde5c33b2a0 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x11932a0)
#12 0x00007fde5c33a325 llvm::SelectionDAG::Legalize()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x1192325)
#13 0x00007fde5c46d0d5 llvm::SelectionDAGISel::CodeGenAndEmitDAG()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c50d5)
#14 0x00007fde5c46c58a
llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm::Function const&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c458a)
#15 0x00007fde5c46a2c6
llvm::SelectionDAGISel::runOnMachineFunction(llvm::MachineFunction&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c22c6)
#16 0x00007fde5dab5d24 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x290dd24)
#17 0x00007fde5c08e43e
llvm::MachineFunctionPass::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xee643e)
#18 0x00007fde5bea94ad
llvm::FPPassManager::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd014ad)
#19 0x00007fde5beaee93 llvm::FPPassManager::runOnModule(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd06e93)
#20 0x00007fde5bea9aff
llvm::legacy::PassManagerImpl::run(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd01aff)
#21 0x00007fde61edb6f6
clang::EmitBackendOutput(clang::DiagnosticsEngine&,
clang::HeaderSearchOptions const&, clang::CodeGenOptions const&,
clang::TargetOptions const&, clang::LangOptions const&,
llvm::DataLayout const&, llvm::Module*, clang::BackendAction,
std::unique_ptr<llvm::raw_pwrite_stream,
std::default_delete<llvm::raw_pwrite_stream> >)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x15446f6)
#22 0x00007fde621748af (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x17dd8af)
#23 0x00007fde612cfb64 clang::ParseAST(clang::Sema&, bool, bool)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x938b64)
#24 0x00007fde62868d48 clang::FrontendAction::Execute()
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1ed1d48)
#25 0x00007fde627f67d1
clang::CompilerInstance::ExecuteAction(clang::FrontendAction&)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1e5f7d1)
#26 0x00007fde628cbd62
clang::ExecuteCompilerInvocation(clang::CompilerInstance*)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1f34d62)
#27 0x00000000004127e2 cc1_main(llvm::ArrayRef<char const*>, char
const*, void*) (/usr/lib/llvm-12/bin/clang+0x4127e2)
#28 0x0000000000410b5e (/usr/lib/llvm-12/bin/clang+0x410b5e)
#29 0x00007fde625126c2 (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b7b6c2)
#30 0x00007fde5bcd0bad
llvm::CrashRecoveryContext::RunSafely(llvm::function_ref<void ()>)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28bad)
#31 0x00007fde62511eb9
clang::driver::CC1Command::Execute(llvm::ArrayRef<llvm::Optional<llvm::StringRef>
>, std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> >*, bool*) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b7aeb9)
#32 0x00007fde624e746f
clang::driver::Compilation::ExecuteCommand(clang::driver::Command
const&, clang::driver::Command const*&) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b5046f)
#33 0x00007fde624e7827
clang::driver::Compilation::ExecuteJobs(clang::driver::JobList const&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) const (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b50827)
#34 0x00007fde624fc20c
clang::driver::Driver::ExecuteCompilation(clang::driver::Compilation&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b6520c)
#35 0x0000000000410434 main (/usr/lib/llvm-12/bin/clang+0x410434)
#36 0x00007fde5ac60565 __libc_start_main ./csu/../csu/libc-start.c:332:16
#37 0x000000000040dd1e _start (/usr/lib/llvm-12/bin/clang+0x40dd1e)
clang: error: clang frontend command failed with exit code 70 (use -v
to see invocation)
Ubuntu clang version 12.0.0-1ubuntu1
Target: hexagon-unknown-linux
Thread model: posix
InstalledDir: /usr/bin
clang: note: diagnostic msg:
********************

PLEASE ATTACH THE FOLLOWING FILES TO THE BUG REPORT:
Preprocessed source(s) and associated run script(s) are located at:
clang: note: diagnostic msg: /tmp/lockdep-62da10.c
clang: note: diagnostic msg: /tmp/lockdep-62da10.sh
clang: note: diagnostic msg:

********************
make[4]: *** [/git/arm-soc/scripts/Makefile.build:273:
kernel/locking/lockdep.o] Error 70
fatal error: error in backend: Cannot select: 0x35266d0: i64,ch =
load<(load 1 from %fixed-stack.1, align 8), sext from i1> 0x2cbb478,
FrameIndex:i32<-1>, undef:i32
  0x35269a8: i32 = FrameIndex<-1>
  0x3519548: i32 = undef
In function: dm_bitset_resize
PLEASE submit a bug report to https://bugs.llvm.org/ and include the
crash backtrace, preprocessed source, and associated run script.
Stack dump:
0. Program arguments: clang-12
-Wp,-MMD,drivers/md/persistent-data/.dm-bitset.o.d -nostdinc -isystem
/usr/lib/llvm-12/lib/clang/12.0.0/include
-I/git/arm-soc/arch/hexagon/include -I./arch/hexagon/include/generated
-I/git/arm-soc/include -I./include
-I/git/arm-soc/arch/hexagon/include/uapi
-I./arch/hexagon/include/generated/uapi -I/git/arm-soc/include/uapi
-I./include/generated/uapi -include
/git/arm-soc/include/linux/compiler-version.h -include
/git/arm-soc/include/linux/kconfig.h -include
/git/arm-soc/include/linux/compiler_types.h -D__KERNEL__
-fmacro-prefix-map=/git/arm-soc/= -DKBUILD_ERR0 -Wall -Wundef
-Werror=strict-prototypes -fno-strict-aliasing -fno-common
-fshort-wchar -fno-PIE -Werror=implicit-function-declaration
-Werror=implicit-int -Werror=return-type -std=gnu89
-Werror=unknown-warning-option --target=hexagon-linux -integrated-as
-G0 -fno-short-enums -mlong-calls -ffixed-r19 -DTHREADINFO_REG=r19
-D__linux__ -fno-delete-null-pointer-checks -O2
-Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer
-fno-optimize-sibling-calls -mno-omit-leaf-frame-pointer
-ftrivial-auto-var-init=pattern -falign-functions=32
-Wdeclaration-after-statement -Wvla -fno-strict-overflow
-fno-stack-check -Werror=date-time -Werror=incompatible-pointer-types
-Werror -I /git/arm-soc/drivers/md/persistent-data -I
./drivers/md/persistent-data -DMODULE -mlong-calls
-DKBUILD_BASENAME=\"dm_bitset\"
-DKBUILD_MODNAME=\"dm_persistent_data\"
-D__KBUILD_MODNAME=kmod_dm_persistent_data -c -o
drivers/md/persistent-data/dm-bitset.o
/git/arm-soc/drivers/md/persistent-data/dm-bitset.c
1. <eof> parser at end of file
2. Code generation
3. Running pass 'Function Pass Manager' on module
'/git/arm-soc/drivers/md/persistent-data/dm-bitset.c'.
4. Running pass 'Hexagon DAG->DAG Pattern Instruction Selection' on
function '@dm_bitset_resize'
 #0 0x00007f375591fa43 llvm::sys::PrintStackTrace(llvm::raw_ostream&,
int) (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd9a43)
 #1 0x00007f375591dd50 llvm::sys::RunSignalHandlers()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd7d50)
 #2 0x00007f375586ec2a (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28c2a)
 #3 0x00007f375586ebcb (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28bcb)
 #4 0x00007f375591a817 llvm::sys::Process::Exit(int, bool)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xbd4817)
 #5 0x0000000000412ad0 (/usr/lib/llvm-12/bin/clang+0x412ad0)
 #6 0x00007f375587ab12 llvm::report_fatal_error(llvm::Twine const&,
bool) (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb34b12)
 #7 0x00007f375587abe7 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb34be7)
 #8 0x00007f375601321c (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12cd21c)
 #9 0x00007f375601296d (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12cc96d)
#10 0x00007f375764ba34 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x2905a34)
#11 0x00007f375600badf
llvm::SelectionDAGISel::DoInstructionSelection()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c5adf)
#12 0x00007f375600b200 llvm::SelectionDAGISel::CodeGenAndEmitDAG()
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c5200)
#13 0x00007f375600a58a
llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm::Function const&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c458a)
#14 0x00007f37560082c6
llvm::SelectionDAGISel::runOnMachineFunction(llvm::MachineFunction&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x12c22c6)
#15 0x00007f3757653d24 (/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x290dd24)
#16 0x00007f3755c2c43e
llvm::MachineFunctionPass::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xee643e)
#17 0x00007f3755a474ad
llvm::FPPassManager::runOnFunction(llvm::Function&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd014ad)
#18 0x00007f3755a4ce93 llvm::FPPassManager::runOnModule(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd06e93)
#19 0x00007f3755a47aff
llvm::legacy::PassManagerImpl::run(llvm::Module&)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd01aff)
#20 0x00007f375ba796f6
clang::EmitBackendOutput(clang::DiagnosticsEngine&,
clang::HeaderSearchOptions const&, clang::CodeGenOptions const&,
clang::TargetOptions const&, clang::LangOptions const&,
llvm::DataLayout const&, llvm::Module*, clang::BackendAction,
std::unique_ptr<llvm::raw_pwrite_stream,
std::default_delete<llvm::raw_pwrite_stream> >)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x15446f6)
#21 0x00007f375bd128af (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x17dd8af)
#22 0x00007f375ae6db64 clang::ParseAST(clang::Sema&, bool, bool)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x938b64)
#23 0x00007f375c406d48 clang::FrontendAction::Execute()
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1ed1d48)
#24 0x00007f375c3947d1
clang::CompilerInstance::ExecuteAction(clang::FrontendAction&)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1e5f7d1)
#25 0x00007f375c469d62
clang::ExecuteCompilerInvocation(clang::CompilerInstance*)
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1f34d62)
#26 0x00000000004127e2 cc1_main(llvm::ArrayRef<char const*>, char
const*, void*) (/usr/lib/llvm-12/bin/clang+0x4127e2)
#27 0x0000000000410b5e (/usr/lib/llvm-12/bin/clang+0x410b5e)
#28 0x00007f375c0b06c2 (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b7b6c2)
#29 0x00007f375586ebad
llvm::CrashRecoveryContext::RunSafely(llvm::function_ref<void ()>)
(/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xb28bad)
#30 0x00007f375c0afeb9
clang::driver::CC1Command::Execute(llvm::ArrayRef<llvm::Optional<llvm::StringRef>
>, std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> >*, bool*) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b7aeb9)
#31 0x00007f375c08546f
clang::driver::Compilation::ExecuteCommand(clang::driver::Command
const&, clang::driver::Command const*&) const
(/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b5046f)
#32 0x00007f375c085827
clang::driver::Compilation::ExecuteJobs(clang::driver::JobList const&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) const (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b50827)
#33 0x00007f375c09a20c
clang::driver::Driver::ExecuteCompilation(clang::driver::Compilation&,
llvm::SmallVectorImpl<std::pair<int, clang::driver::Command const*>
>&) (/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1b6520c)
#34 0x0000000000410434 main (/usr/lib/llvm-12/bin/clang+0x410434)
#35 0x00007f37547fe565 __libc_start_main ./csu/../csu/libc-start.c:332:16
#36 0x000000000040dd1e _start (/usr/lib/llvm-12/bin/clang+0x40dd1e)
clang: error: clang frontend command failed with exit code 70 (use -v
to see invocation)
Ubuntu clang version 12.0.0-1ubuntu1

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3%3DLXShTzbQ%40mail.gmail.com.

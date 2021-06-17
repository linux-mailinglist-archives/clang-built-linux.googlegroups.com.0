Return-Path: <clang-built-linux+bncBCT6537ZTEKRBVUJVWDAMGQEYQEEEBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FB73AB400
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 14:49:26 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id f12-20020a056402150cb029038fdcfb6ea2sf1444512edw.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 05:49:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623934166; cv=pass;
        d=google.com; s=arc-20160816;
        b=WBi/VTAVZBlSJR5P1fzo15Twp1e+qA4w9vOGT5vcrPPtuD6istcQajXfKTGckjJGOz
         I7wraWJ5Jwn8XgOku7qpwVh2rXFLHZuhgf2L3cn0sY+fKoGINObcagLxsR40wgD74Lr4
         WcNXD6FONYKKwX2/4w6EODz/kL/usAN8F9c9XbYLPbeIeyEAOIyTPTm6/sNlMNhxKJ44
         8YHgU6Qj+oop60oOiKZts+IpMSPSY0jrveEfVll+dvfV0MAXnBJnMK4FYtx1haGyYQIZ
         ZIey+3Vs5TbqItVOQA1WLkXLPugUzM7cqNTz/bSZJ3xtkTb8LZRquMSmEYdKtaLNceB9
         SXWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6fBoOk4VyTFfhhk8F8EGIO+EarDPeR9vItdGrhlrDtE=;
        b=YHDummarrJasTiPnhdrcETkjkwnLnblandWUyUZtoOaQfJBvhPlEAwR5WyFUD1OkOt
         XP62/EItA8SHJOgId3BSxIvx7u++sKkvPYcEfzlDaqp4UdsoSOSruLlIFEJOGzmxycdk
         9POjzsN9FXlKowIAo6kWie74pp14uu0OJMWGtF+5ZYLWLgAB/Iu5OrURLBiMMoeM/s48
         oQZybLWbtV0nfzHe/Ijbb7Wb0jSVoos8q4n4lvjL6gXwRNwbwsXZlQWUwMS1EG/ePV1i
         ts5eVYRm7hGPIo81/2+NHeniknnF4s09GYTfnodIY09/5h+TZsT3qX0ZkDsfv4pFpVA4
         Q+3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=wYl9BpEI;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fBoOk4VyTFfhhk8F8EGIO+EarDPeR9vItdGrhlrDtE=;
        b=Xa2KcNch97d9fRG9IDB67eDO9tcU+1gstIe8/LQKLrr1FiXrAQSqlOsit80iozfyiz
         p5PojnRlDr1LBMv4S/wz0jUDAX8lxJz5RqDnyDX4lZ7bFGU25IFQA/MPDrEB7QGINCRo
         nFcwyd2fCHuRD0XqF4WsIwBcIBcEM9oWCOWnUQ1oqjQkn6IVgQMjNzsv6iQ//nyM+Yi/
         dLwfhA0SZXl2bZIgty1n9N3emuA/xAD3RxBTpt7m6+ErpiaPkl5ZdEZhtNJglhY0e5MH
         v+z1INPt+BRughhdcbD68UxA+Wqt3MAQGv7dI227b75avtEhSzQrJV9hXy4Cor4ZwcSC
         S+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fBoOk4VyTFfhhk8F8EGIO+EarDPeR9vItdGrhlrDtE=;
        b=rCDkj1eaA12rSOn18MwPbu4BkLJluZA5xhARZIPTTF4ixJVbgE18QZFmXPa2LFYgGN
         aT/T3rcrpwLEx2zLPXi5Rh4N13VIaS6UKtdSOXjUlg2ID0IcojY5w6MdpK8oPEAce4a/
         5PyyR3EVSCi+EGQ12G2hTqylDbt9gigoTWHVlXBHTwGWdduc8wQ95Vg8qRDY13HDksKB
         6uBqvS35CJt/nPgO0QXJ9zRKReBvZ8UALNHcLEFeIPoONmWT9GcW+INBdvsZZv533mhz
         6dJLuYWg4Qy6WCdD5wO6qVJ/zloXdIR2iEVI0/CIRFb8BgFIcRJEyi6xaNohR7Y+QOJn
         HOiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eROOOElWrf2Te9EiHhGtGrA3UfF5A+NezyPfSdSn92APMjmoX
	y0boSqB61xpPHywUkBaCOGs=
X-Google-Smtp-Source: ABdhPJz2zHOi96z+QvuDtwshc2S2zX9GFdFlxpfTFukGiXh2ZmiL9wsSAsEHblIXnbo3+09TBYRRuw==
X-Received: by 2002:a17:907:7b9e:: with SMTP id ne30mr5078912ejc.389.1623934166663;
        Thu, 17 Jun 2021 05:49:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4796:: with SMTP id cw22ls2564551ejc.3.gmail; Thu,
 17 Jun 2021 05:49:25 -0700 (PDT)
X-Received: by 2002:a17:906:c247:: with SMTP id bl7mr5240597ejb.288.1623934165696;
        Thu, 17 Jun 2021 05:49:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623934165; cv=none;
        d=google.com; s=arc-20160816;
        b=oe7etsBfdAlDHTHGLGQ6qttd9R69u8CjP+1aq0yBnVmdAiTspf/pEDkXPPiIyEMWMU
         kFbYYle+5iIm75dXijHDkJHp4sjsIxUZ7FG1WPbSdIl1Yar9i/6ANmjBEn9u3nxgG+Cr
         +tsrztXGC7wWw0MlnoTtZ7N0WRvRCftPZKX/9HKECcx4D1wsG0ojbzVbGWH+Zmcdo13A
         g9ij4TMXl6rp5q9hYkIOMnCmADlP+Dc4q4r+EAwDRRPpwg5KS6+sZNSWxbLvLmR+1G/C
         zOd8bowOLlpd3zyp4DjlLWAs9Gu2o8Ro27WTAevzvwO9tfxlMODxXMaHKdpz1xtj94Xj
         xauQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sw0rRPu1vla3L3zZiG3OVvS5c51Ec2nGfh20w94ZGwY=;
        b=y7yCnNd5IFw5aci3ygRlp8K/3HJBlbBvENTbDTp9xgznTW1Nwp+T8+AyQu5gtRgCzN
         /oYS5ktmZEA6KqTx+UzyxLP/o/knX1jtzRxOqWeerpc/voBWfs8ghS1IzROarzsBxJHV
         k/+xyEFKuj7CP20B/5O22iE2h0SVmJlD51VrMEawolBYloUBkBwYwGuQtLVhE1NC+ytM
         sFLDTNYMHCJyaGnYciqSwD2DbgEwysJ4Nzyi0xGqahkicXzQLc79QPfQlG+LwXRdSyEa
         fwEOjhhD+y/FBaSvomXX/QgwACEIqRCOvzlzflXtBo8KeMhH3WmuEyics8Qj3ruWMVG/
         DYGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=wYl9BpEI;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id s9si270674edw.4.2021.06.17.05.49.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 05:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id l1so9710965ejb.6
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 05:49:25 -0700 (PDT)
X-Received: by 2002:a17:906:480a:: with SMTP id w10mr5085999ejq.18.1623934165253;
 Thu, 17 Jun 2021 05:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYsn-3rZXkHTtH33Oo0y97nfgkQmR_Echbu_-=WAbfo4Ug@mail.gmail.com>
In-Reply-To: <CA+G9fYsn-3rZXkHTtH33Oo0y97nfgkQmR_Echbu_-=WAbfo4Ug@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 17 Jun 2021 18:19:14 +0530
Message-ID: <CA+G9fYu2SvwA7CDxTAJVdTi1K1267WDcdx9m6Ds6z0D3borthQ@mail.gmail.com>
Subject: Re: [next] [clang] s390: clang: error: unable to execute command:
 Segmentation fault (core dumped)
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=wYl9BpEI;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

The git bisect found the first bad commit,

On Thu, 17 Jun 2021 at 17:57, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
>
> Linux next 20210617 tag following s390 builds failed with clang-10,
> clang-11 and clang-12.
>
> Regressions found on s390:
>
>  - build/clang-11-tinyconfig
>  - build/clang-11-allnoconfig
>  - build/clang-12-allnoconfig
>  - build/clang-12-defconfig
>  - build/clang-10-tinyconfig
>  - build/clang-11-defconfig
>  - build/clang-10-allnoconfig
>  - build/clang-12-tinyconfig
>  - build/clang-10-defconfig
>
> Build log:
> ------------
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=s390
> CROSS_COMPILE=s390x-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> PLEASE submit a bug report to https://bugs.llvm.org/ and include the
> crash backtrace, preprocessed source, and associated run script.
> Stack dump:
> 0.Program arguments: /usr/lib/llvm-12/bin/clang -cc1 -triple
> s390x-unknown-linux-gnu -S -disable-free -disable-llvm-verifier
> -discard-value-names -main-file-name core.c -mrelocation-model pic
> -pic-level 2 -pic-is-pie -fno-delete-null-pointer-checks -mllvm
> -warn-stack-size=2048 -mframe-pointer=none -relaxed-aliasing
> -fmath-errno -fno-rounding-math -no-integrated-as
> -mconstructor-aliases -target-cpu zEC12 -target-feature +soft-float
> -mbackchain -mpacked-stack -msoft-float -mfloat-abi soft
> -fno-split-dwarf-inlining -debug-info-kind=limited -dwarf-version=4
> -debugger-tuning=gdb -nostdsysteminc -nobuiltininc -resource-dir
> /usr/lib/llvm-12/lib/clang/12.0.1 -dependency-file
> kernel/sched/.core.o.d -MT kernel/sched/core.o -isystem
> /usr/lib/llvm-12/lib/clang/12.0.1/include -include
> /builds/linux/include/linux/compiler-version.h -include
> /builds/linux/include/linux/kconfig.h -include
> /builds/linux/include/linux/compiler_types.h -I
> /builds/linux/arch/s390/include -I ./arch/s390/include/generated -I
> /builds/linux/include -I ./include -I
> /builds/linux/arch/s390/include/uapi -I
> ./arch/s390/include/generated/uapi -I /builds/linux/include/uapi -I
> ./include/generated/uapi -D __KERNEL__ -D __PACK_STACK -D
> CONFIG_AS_CFI_VAL_OFFSET=1 -D CC_USING_NOP_MCOUNT -D CC_USING_FENTRY
> -I /builds/linux/kernel/sched -I ./kernel/sched -D
> KBUILD_MODFILE=\"kernel/sched/core\" -D KBUILD_BASENAME=\"core\" -D
> KBUILD_MODNAME=\"core\" -D __KBUILD_MODNAME=kmod_core
> -fmacro-prefix-map=/builds/linux/= -O2 -Wall -Wundef
> -Werror=strict-prototypes -Wno-trigraphs
> -Werror=implicit-function-declaration -Werror=implicit-int
> -Werror=return-type -Wno-format-security
> -Werror=unknown-warning-option -Wno-sign-compare -Wno-frame-address
> -Wno-address-of-packed-member -Wno-format-invalid-specifier -Wno-gnu
> -Wno-unused-const-variable -Wdeclaration-after-statement -Wvla
> -Wno-pointer-sign -Wno-array-bounds -Werror=date-time
> -Werror=incompatible-pointer-types -Wno-initializer-overrides
> -Wno-format -Wno-sign-compare -Wno-format-zero-length
> -Wno-pointer-to-enum-cast
> -Wno-tautological-constant-out-of-range-compare -std=gnu89
> -fno-dwarf-directory-asm -fdebug-compilation-dir
> /home/tuxbuild/.cache/tuxmake/builds/current -ferror-limit 19 -pg
> -mfentry -mnop-mcount -mrecord-mcount -fwrapv -fno-signed-char
> -fwchar-type=short -fno-signed-wchar -fgnuc-version=4.2.1
> -vectorize-loops -vectorize-slp -o /tmp/core-eaad47.s -x c
> /builds/linux/kernel/sched/core.c
> 1.<eof> parser at end of file
> 2.Code generation
> 3.Running pass 'Function Pass Manager' on module
> '/builds/linux/kernel/sched/core.c'.
> 4.Running pass 'SystemZ DAG->DAG Pattern Instruction Selection' on
> function '@trace_event_raw_event_sched_switch'
>  #0 0x00007f7227e2e693 llvm::sys::PrintStackTrace(llvm::raw_ostream&,
> int) (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd12693)
>  #1 0x00007f7227e2c9b0 llvm::sys::RunSignalHandlers()
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd109b0)
>  #2 0x00007f7227e2ecff (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xd12cff)
>  #3 0x00007f722f7cb140 __restore_rt
> (/lib/x86_64-linux-gnu/libpthread.so.0+0x14140)
>  #4 0x00007f7227dba772 llvm::LLT::print(llvm::raw_ostream&) const
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xc9e772)
>  #5 0x00007f72284a850b
> llvm::SelectionDAGBuilder::visitInlineAsm(llvm::CallBase const&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x138c50b)
>  #6 0x00007f722848ade7
> llvm::SelectionDAGBuilder::visit(llvm::Instruction const&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x136ede7)
>  #7 0x00007f72285198b9
> llvm::SelectionDAGISel::SelectBasicBlock(llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction,
> false, false, void>, false, true>,
> llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction,
> false, false, void>, false, true>, bool&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fd8b9)
>  #8 0x00007f722851926a
> llvm::SelectionDAGISel::SelectAllBasicBlocks(llvm::Function const&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fd26a)
>  #9 0x00007f7228516fa6
> llvm::SelectionDAGISel::runOnMachineFunction(llvm::MachineFunction&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x13fafa6)
> #10 0x00007f7229f07742 (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x2deb742)
> #11 0x00007f722813b09e
> llvm::MachineFunctionPass::runOnFunction(llvm::Function&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0x101f09e)
> #12 0x00007f7227f5619d
> llvm::FPPassManager::runOnFunction(llvm::Function&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3a19d)
> #13 0x00007f7227f5bb83 llvm::FPPassManager::runOnModule(llvm::Module&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3fb83)
> #14 0x00007f7227f567ef
> llvm::legacy::PassManagerImpl::run(llvm::Module&)
> (/usr/lib/x86_64-linux-gnu/libLLVM-12.so.1+0xe3a7ef)
> #15 0x00007f722e092be6
> clang::EmitBackendOutput(clang::DiagnosticsEngine&,
> clang::HeaderSearchOptions const&, clang::CodeGenOptions const&,
> clang::TargetOptions const&, clang::LangOptions const&,
> llvm::DataLayout const&, llvm::Module*, clang::BackendAction,
> std::unique_ptr<llvm::raw_pwrite_stream,
> std::default_delete<llvm::raw_pwrite_stream> >)
> (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1614be6)
> #16 0x00007f722e32bd9f (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x18add9f)
> #17 0x00007f722d487054 clang::ParseAST(clang::Sema&, bool, bool)
> (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0xa09054)
> #18 0x00007f722ea20268 clang::FrontendAction::Execute()
> (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1fa2268)
> #19 0x00007f722e9adcf1
> clang::CompilerInstance::ExecuteAction(clang::FrontendAction&)
> (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x1f2fcf1)
> #20 0x00007f722ea83282
> clang::ExecuteCompilerInvocation(clang::CompilerInstance*)
> (/usr/lib/x86_64-linux-gnu/libclang-cpp.so.12+0x2005282)
> #21 0x0000000000413352 cc1_main(llvm::ArrayRef<char const*>, char
> const*, void*) (/usr/lib/llvm-12/bin/clang+0x413352)
> #22 0x00000000004116ce (/usr/lib/llvm-12/bin/clang+0x4116ce)
> #23 0x00000000004114de main (/usr/lib/llvm-12/bin/clang+0x4114de)
> #24 0x00007f7226c50d0a __libc_start_main
> (/lib/x86_64-linux-gnu/libc.so.6+0x26d0a)
> #25 0x000000000040e88a _start (/usr/lib/llvm-12/bin/clang+0x40e88a)
> clang: error: unable to execute command: Segmentation fault (core dumped)
> clang: error: clang frontend command failed due to signal (use -v to
> see invocation)
> Debian clang version 12.0.1-+rc1-1
> Target: s390x-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /usr/local/bin
> clang: note: diagnostic msg:
> ********************
>
> PLEASE ATTACH THE FOLLOWING FILES TO THE BUG REPORT:
> Preprocessed source(s) and associated run script(s) are located at:
> clang: note: diagnostic msg: /tmp/core-86ba67.c
> clang: note: diagnostic msg: /tmp/core-86ba67.sh
> clang: note: diagnostic msg:
>
> ********************
> make[3]: *** [/builds/linux/scripts/Makefile.build:272:
> kernel/sched/core.o] Error 254

The first bad commit:
commit 3abbdfde5a6588a92209cd8b131769b8058e7c21
Author: Heiko Carstens <hca@linux.ibm.com>
Date:   Wed Jun 9 22:59:13 2021 +0200
    s390/bitops: use register pair instead of register asm

    Get rid of register asm statement and use a register pair.
    This allows the compiler to allocate registers on its own.

    Signed-off-by: Heiko Carstens <hca@linux.ibm.com>
    Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
 arch/s390/include/asm/bitops.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
Previous HEAD position was 3abbdfde5a65 s390/bitops: use register pair
instead of register asm
HEAD is now at 7d9c6b8147bd Add linux-next specific files for 20210617

>
> ref:
> https://builds.tuxbuild.com/1u4ZMVtVqiZtUcCrP9YE89mx9iU/
>
> Build:
> --------
>     git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
>     git_sha: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
>     git_short_log: 7d9c6b8147bd (\Add linux-next specific files for 20210617\)
>     kconfig: defconfig
>     target_arch: s390
>     toolchain: clang-12
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

- Naresh

> --
> Linaro LKFT
> https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYu2SvwA7CDxTAJVdTi1K1267WDcdx9m6Ds6z0D3borthQ%40mail.gmail.com.

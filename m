Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPFN4P2AKGQE2F6AD2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7C31AD28F
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 00:05:49 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id x14sf75951vsn.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 15:05:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587074748; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv9s8DDhdDHYFfm8WMoCqOOyDiOXt4LXxzo9vytLLcGakLxI0hS0uK4d6BrEkwWNCe
         m4ufut+XGW5UOAhtI7wABAncTX/Y+7LqLuW0XRv4xPAtSRREeCrFRXCMYMt7DlUI9faN
         TpOhXZRP5WYkpJ3XrC8TDaQHrBXZa32HjMsC+o+BM5Yod0DjQYCXa2WYF6NBJLRp17p0
         491L9n3PkbSFDVWTxQI8G5ZOLhEoWCX5IdpUTDO46SkgjLZNLDbbc5KVMtPOKp2R3vAC
         Kvehm71ijt+RRULiao0LApoOt1SBmGsk3J0Wyat+mKKfaUw16TintbTC0KvmPj15G+MP
         5pFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gnqddZjyfcDg2stXjvmpqNZeCXBypBKhULXBq/zkfGE=;
        b=QTQKBeKgG0PJG9Qs/48IV3OG/PhUQg8JixkTQ3tfqNf9DaYt3GO/uHQNJsta1B8T4D
         5VEQBQgfFKuXXQiE41eUNFFbfOWIFoRSSaniZr6WwEk8WE7BQu3HpHLjFOUUYULkoNrZ
         mvXe2qeSTijK4lIFJJ/hBzcmnUsyyqdmqgGZjn2toUtjAhuiGCLd1InMCZVBa07WF41V
         JZKOLLVfQcR/W5k2IX4zvlO4tuyK6Inj0TSv1E96fK+Y8qjMGSPPRaAwSgOWARmdteR3
         bmq1iDPHPOznq59/bJ/x2+H2LE8NGsweh+rNVfeq7/astDamz6zdG4H+dMuUKEr4PRyN
         vBoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KHCzVQUy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gnqddZjyfcDg2stXjvmpqNZeCXBypBKhULXBq/zkfGE=;
        b=L23JJGxxLHTEYEkKUOyuTuxJX4EgcDuPG4BUFf18DdvKYrEWVkkjF+Hz5UZr5NoMWK
         Y3fGQs9uyyeVsGwn6Aet3DjDQq8Fkpx0CuNgbMcx1beKtadTVq7ORvFT9WESznsC7p8s
         ULg2xQWOEDTLuOLz/ZND7gRrUgNAQKqMVsos/yvhbn09DINhBwYi17I2HT5sGLhmfzj7
         8kCwIdbY3yqSpIWIH7zJ9lVQMigTW1JTw9tvFz42aSscz5kIYFZ5x0UMb9Bkob/dKn2A
         0z4bhyei62YpNgDWCVk+T3HTzD9ShqtuQWZalA8SGscL+QI/Ta34YOMcjV/jGi7aAkPH
         zS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gnqddZjyfcDg2stXjvmpqNZeCXBypBKhULXBq/zkfGE=;
        b=ewXe/l3MHdNLeDZAqj0RlXDDbkIWf4koAjalglEN5iz8GFChU0MYG9tk2/n6Jy2EBI
         Sj3w4LzCLYyhBoZC/74gYFclytjTxb/W1sW22harF85TiGTF6R1oXnTOsZSo3OgPm55e
         QFldm8Zl1mplFyVcm/rW2rfVCEpRyt3OXNna/dECqDR1R3agwmWNtrcC/4/LCX14b5TS
         DXTncnYI7/JGAnZ6PZNeFlECuZLVtdlsLsdobZ1HBmyLYxPY4+rVTIi2fcFvNMyi0KOu
         mWX8Q73dV3mjYEb1IQOuSNUsAhPR+lcPfD6gZw/gkZGpe2OyGXtLMpN5mczXS4eeYuLn
         BIag==
X-Gm-Message-State: AGi0PuYTu9FXLoVA/mh73e10VqWHZRJ9M8jXZHkWmk1BcMhtqR42A+OU
	flhauWCH4U5796Ps5qW1n1Q=
X-Google-Smtp-Source: APiQypI04sNY5Q7cepO3D0IrTjS/D4tSIdpmCEnTyom7BqdGgfZpfmVSXILndWmq8omHyQVesCH0Ag==
X-Received: by 2002:a67:2247:: with SMTP id i68mr10558627vsi.19.1587074748123;
        Thu, 16 Apr 2020 15:05:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:684c:: with SMTP id d73ls35291vsc.7.gmail; Thu, 16 Apr
 2020 15:05:47 -0700 (PDT)
X-Received: by 2002:a67:b643:: with SMTP id e3mr5116264vsm.151.1587074747786;
        Thu, 16 Apr 2020 15:05:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587074747; cv=none;
        d=google.com; s=arc-20160816;
        b=mwk67VSa1oIX28pNyL7EchSNty4nir1AoNDs9og/NzJ9onTSW6bzMhkersQXf7TJiT
         lHdtSpQT037+ZOapz8pHs+S9wJdEm2y4mLLGCoFB80gC6FqKXdo8WE7PWR0sf02KFsyj
         CSJ5pwShhe2SYkX4c4nqUOCUt+FF6tx+vnsLttX1jUS2/6WZ6qmemkWuBQQZwR5MXJ+P
         0chsaUBHmP4XqDDV4x/BrZxTEnZ1qOxfgixqxR7wMphsrK/zgnj10zzLpsbABkxapdIz
         iWgaGca+UkF+kQ89bP0s1x0dm9QWeDtUFO54okN7bWInQ0JgcycvmrHldlFzsyDC2lgy
         D3gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3DGz7ep9aWIPSyT29jHe/iJMFGilywlDgZ0NxHzYWKQ=;
        b=iCPKlbFrZXAsabWBPO6vi6zKEeKeUO+b110wCrnMkgcaR+va5pC84jRYsCmOYX/Fiy
         IIQxCSIQ7ZxkGg0ly6LrD1JRpYnHBw08tn2baeFmMX0t3Sd+VCqwK5PsJga8nYf/cNU3
         k2sHjLNk/9DQc0TFVzApHcKUxWgWkcYc9T8oE1og3QGb0DrSnNPjGrvbQcHotKTZg8GS
         ZWEjC8LoKOxeiaZ3tH5CCMCGyERGYf8iOXaJgjXXUYM5hFW71/xlTbu/bxERlDFrsIAw
         v4niJCkWTQaF8shvO9Bs2wArCitXn7RnG19AS6pae5ijVpKA0OscieP98tOyP6SPaRCs
         0byQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KHCzVQUy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p7si476356vsf.1.2020.04.16.15.05.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 15:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id v2so138861plp.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 15:05:47 -0700 (PDT)
X-Received: by 2002:a17:90a:f194:: with SMTP id bv20mr539347pjb.27.1587074746514;
 Thu, 16 Apr 2020 15:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <766678058.17562.1587007242346.JavaMail.javamailuser@localhost> <CAKwvOd=AeAbdopGJuZZLCvhZRLwqVoH4RXdwHpxyRJa6QVKyNQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=AeAbdopGJuZZLCvhZRLwqVoH4RXdwHpxyRJa6QVKyNQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 15:05:34 -0700
Message-ID: <CAKwvOdnjWR0mO+yaj2i=rmprRsFW4eCess9NRrAQ_iEVFWhxFw@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - Build # 30 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KHCzVQUy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(dropping linaro LLVM, I get bounce backs from that too)

George committed a patch in
https://reviews.llvm.org/rG94908088a831141cfbdd15fc5837dccf30cfeeb6.
I'm confirming it now.

On Thu, Apr 16, 2020 at 10:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Reported upstream
> https://reviews.llvm.org/D78162#1987048
>
> On Wed, Apr 15, 2020 at 8:20 PM <ci_notify@linaro.org> wrote:
> >
> > Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
> >  - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
> >
> > Culprit:
> > <cut>
> > commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > Author: George Burgess IV <george.burgess.iv@gmail.com>
> > Date:   Wed Apr 15 11:05:22 2020 -0700
> >
> >     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
> >
> >     There are some inline builtin definitions that we can't emit
> >     (isTriviallyRecursive & callers go into why). Marking these
> >     nobuiltin is only useful if we actually emit the body, so don't mark
> >     these as such unless we _do_ plan on emitting that.
> >
> >     This suboptimality was encountered in Linux (see some discussion on
> >     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
> >
> >     Differential Revision: https://reviews.llvm.org/D78162
> > </cut>
> >
> > Configuration details:
> > rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> > rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> > rr[llvm_branch]="35bbf3bb7168a3d8062500b63af87079f6519794"
> >
> > Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
> > # reset_artifacts:
> > -10
> > # build_llvm:
> > -1
> > # linux_n_obj:
> > 16047
> > # First few build errors in logs:
> > # 00:01:16 clang-11: error: unable to execute command: Aborted (core dumped)
> > # 00:01:16 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> > # 00:01:16 make[1]: *** [arch/arm64/kernel/arm64ksyms.o] Error 254
> > # 00:01:56 make: *** [arch/arm64/kernel] Error 2
> >
> > from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
> > # reset_artifacts:
> > -10
> > # build_llvm:
> > -1
> > # linux_n_obj:
> > 16048
> >
> > Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
> > Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
> > Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/
> >
> > Reproduce builds:
> > <cut>
> > mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> >
> > git clone https://git.linaro.org/toolchain/jenkins-scripts
> >
> > mkdir -p artifacts/manifests
> > curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
> > curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
> > curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/test.sh --fail
> > chmod +x artifacts/test.sh
> >
> > # Reproduce the baseline build (build all pre-requisites)
> > ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> >
> > cd llvm
> >
> > # Reproduce first_bad build
> > git checkout --detach 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > ../artifacts/test.sh
> >
> > # Reproduce last_good build
> > git checkout --detach f42baaab4f86d5259717bd26f713c002fd225669
> > ../artifacts/test.sh
> >
> > cd ..
> > </cut>
> >
> > History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
> >
> > Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/
> > Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/consoleText
> >
> > Full commit:
> > <cut>
> > commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > Author: George Burgess IV <george.burgess.iv@gmail.com>
> > Date:   Wed Apr 15 11:05:22 2020 -0700
> >
> >     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
> >
> >     There are some inline builtin definitions that we can't emit
> >     (isTriviallyRecursive & callers go into why). Marking these
> >     nobuiltin is only useful if we actually emit the body, so don't mark
> >     these as such unless we _do_ plan on emitting that.
> >
> >     This suboptimality was encountered in Linux (see some discussion on
> >     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
> >
> >     Differential Revision: https://reviews.llvm.org/D78162
> > ---
> >  clang/lib/CodeGen/CodeGenModule.cpp                |  3 ++-
> >  .../CodeGen/memcpy-no-nobuiltin-if-not-emitted.c   | 25 ++++++++++++++++++++++
> >  2 files changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/clang/lib/CodeGen/CodeGenModule.cpp b/clang/lib/CodeGen/CodeGenModule.cpp
> > index 39aa5c1c512f..73a3212bcd47 100644
> > --- a/clang/lib/CodeGen/CodeGenModule.cpp
> > +++ b/clang/lib/CodeGen/CodeGenModule.cpp
> > @@ -1908,7 +1908,8 @@ void CodeGenModule::SetFunctionAttributes(GlobalDecl GD, llvm::Function *F,
> >    else if (const auto *SA = FD->getAttr<SectionAttr>())
> >       F->setSection(SA->getName());
> >
> > -  if (FD->isInlineBuiltinDeclaration()) {
> > +  // If we plan on emitting this inline builtin, we can't treat it as a builtin.
> > +  if (FD->isInlineBuiltinDeclaration() && shouldEmitFunction(FD)) {
> >      F->addAttribute(llvm::AttributeList::FunctionIndex,
> >                      llvm::Attribute::NoBuiltin);
> >    }
> > diff --git a/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> > new file mode 100644
> > index 000000000000..b4c1376c5bb3
> > --- /dev/null
> > +++ b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> > @@ -0,0 +1,25 @@
> > +// RUN: %clang_cc1 -triple x86_64-unknown-unknown -S -emit-llvm -o - %s | FileCheck %s
> > +//
> > +// Verifies that clang doesn't mark an inline builtin definition as `nobuiltin`
> > +// if the builtin isn't emittable.
> > +
> > +typedef unsigned long size_t;
> > +
> > +// always_inline is used so clang will emit this body. Otherwise, we need >=
> > +// -O1.
> > +#define AVAILABLE_EXTERNALLY extern inline __attribute__((always_inline)) \
> > +    __attribute__((gnu_inline))
> > +
> > +AVAILABLE_EXTERNALLY void *memcpy(void *a, const void *b, size_t c) {
> > +  return __builtin_memcpy(a, b, c);
> > +}
> > +
> > +// CHECK-LABEL: define void @foo
> > +void foo(void *a, const void *b, size_t c) {
> > +  // Clang will always _emit_ this as memcpy. LLVM turns it into @llvm.memcpy
> > +  // later on if optimizations are enabled.
> > +  // CHECK: call i8* @memcpy
> > +  memcpy(a, b, c);
> > +}
> > +
> > +// CHECK-NOT: nobuiltin
> > </cut>
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/766678058.17562.1587007242346.JavaMail.javamailuser%40localhost.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjWR0mO%2Byaj2i%3DrmprRsFW4eCess9NRrAQ_iEVFWhxFw%40mail.gmail.com.

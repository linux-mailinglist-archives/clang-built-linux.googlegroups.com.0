Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP5S4P2AKGQEUZYKIQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 396881AD2B6
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 00:16:33 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id q8sf4484532pgv.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 15:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587075391; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNy8RJiziFwoEr7E7JQTmEWTthdLrrkdQ9C65gD+PJxcAW/jPEwUlWZ7qmJgWCFQDT
         VilXKJjX4srvYx4rFcnnP566xiJSucGlYw3kCwriXq9XrtlInHJs4eH2D7rufRA+JapC
         M55hSOSsRSl1Su8sbnO1lWO42YBiMa3hwpNXzIlPIEQJBnyXdJZO/lV83BgwFbtPFDJn
         Qfg7xBjevO7z4UJLJ7wuh9tw/j+A55mfrwG7DBs5RyQrkL+wffLa86zDIGhpyDmlDBT1
         MHAFmR9D40kAd3JsBArS51s88GW5eRGVjssz7ILY6LY1weeqf7/PPr68KgD1N1FAHaAV
         +J1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=axrp9kDWKvguv7PpiMWwnay1HliUHWhNL5kZWVeRgCM=;
        b=oryRG+yYTAcZX9WkE/BvHJBM6LDKhPfwt1u9W9kRXS/8RSYsa1NCzdMjNYYbGC6O0H
         QzV1V3e6sx6aYC+6a2tmzNCWwi3SiHzYCM2S7szQ0Tf/9rLyq1Z40IHKntsqKIDmOASh
         o7KRKJrHry1LpHbzIliKnH3SRu4ZfQZZEO4LUa8JHBVMTGrf6iXLYm0/2XX9qSY7hDwm
         XT62O35qdxlea+AMGbeJ0mZtlopflo1oK1pkm44MXsIRwlIXAHlkQgFudBSo0rKKmYEC
         JPD+W1jsOCfbC4775ue9CHzcHtS0YoMtnvQo3fBvrfkV6mHQXbeXwtjdqJAUQVRD3/c0
         RZkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+QXr83b;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axrp9kDWKvguv7PpiMWwnay1HliUHWhNL5kZWVeRgCM=;
        b=ceduiwWQx2bqG3ouF3jT4EMOpconHHOm5dLlsetG66vH3l/WaOizN3OuCnZbSll2sw
         jF6kQQ+3ury/X2iLsHjKJW6Tycdr3necltqeK+0Vha5zljKC2HbAiORgOSXzIui6bmCs
         gjRcDFmZJHnvRdSlLG3Jruov+CwtGD7GGB6fe2o/R8NDBe2AaVrdX5KoVVsxT1q8c6TO
         IKOk5FzIcaqTWeYY77bKOlOH/zSzciQK4TKYa+n4bt8yGoGjHf17F8XDhhk8/nXQzyfc
         846WR8QMVjJ7SVeQfZeBGx3j6uI9YRARlnqHekwlFpX3Y1QcYj/aBrL/j4cKdRZj95P/
         Y6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axrp9kDWKvguv7PpiMWwnay1HliUHWhNL5kZWVeRgCM=;
        b=lF+0hfugiPLtI/lIxt3c8oOgaiddNCLNejoPmPo5x5quFjKWFjUOoA1gjCJFB96pZz
         7ouOZG7xwmWAJK2hNXwnRlxkh/B1KAcHfx8gO6caorJgGBRyTM3oKXj4YekyL/yBfJQ0
         JucBWnuvyaXIQh4dZ0zr6GylsZxwGYcmqhtmQ72ulKubjht5h4DtFp5Gb74pe9qCnNrD
         MrkVKkq1jLhKpGlfTlCxiq7LAIYmzHCVdLGtNARLgMLFJrPAK/x+8JuN4fKbwflidpWh
         EYY7KiJ9BrVK+lVBEjLNDNV0HZgATkakmjrV8OA4ileyJLP67YhNtt58whXKWPDZ5uoP
         Jkww==
X-Gm-Message-State: AGi0PuZl4fM2uOAmyW1CnlizJSZG0G1NBskEMxKJazfSIlaFb05VFx0a
	hOwdh+EvwYzE89hLctXfY0s=
X-Google-Smtp-Source: APiQypI9umjfen2Nq1teKkOnTnD/R90gWplDWnacJErtK5lmhIx636OKIcbFe01mPSa2l2IBdOaCcg==
X-Received: by 2002:a62:e213:: with SMTP id a19mr19968290pfi.180.1587075391219;
        Thu, 16 Apr 2020 15:16:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3482:: with SMTP id b124ls326972pga.7.gmail; Thu, 16 Apr
 2020 15:16:30 -0700 (PDT)
X-Received: by 2002:a63:794d:: with SMTP id u74mr33931978pgc.15.1587075390834;
        Thu, 16 Apr 2020 15:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587075390; cv=none;
        d=google.com; s=arc-20160816;
        b=V5IenOuX5vxqmXAkg6ICcv71TrL3CdWP5Azyhd2lPFV/FKENiBRpR/KEDf1heIcdeZ
         WtPclu51tqq1OgL0UmcxPlTpOQOLw/4e0s9r27sJuykzPFkXEbn8poTYk94udfdmt6X8
         TfwuAu15r13O+keTUETYP3j+Xmi1y0331Y++cDrwl6BzblK/LpvaRLKS1U1h/MVfcL3A
         04W1vcnxgunoWtyB7AGNLacLaOlptgSkf2AUWOKcwTI7NPh3Fy2nnRTx9kBepzsNtNVb
         1UK4kLkxSSLjFicn/r2vPIfOtKHOYOp0Uwb2GqttQneBbB/WHnmv1YzziQv7/9BdoMU0
         Nhtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uH6D52mxVPmrrOgS81yeSqdX0wo0mxfvKUYLWXeoHQA=;
        b=JrHevP2lYL4iZNI1jCddeEyMRSbtpKLCNOc/Vx2WN/T0tLmr2HAFpO/6iQiVgZFVVq
         twFvLEdFTKIYB0cX9yNA/TdMWViEW2pq1YqaSdVmoBKagjhrNoMoTkxLyOLpxzmupqer
         K0wc9SS3fAezpH+GXih/ItSBAGc461jwER+gvKWMZJdIEEQZ58f1DG32N3EwTupvt9a0
         EEo/cAYAFMXhNajW2MvU+Ml2reqKhJDFR8aWK1m6JShm3v1GGB0mixabgVneJ7FsHAX/
         +WRSQJmEQC+IohrL5Xpu8c4Uj4/6C+EwxrrWFV0nMj3ASVvjW+7fe/SybTP5GbUwQmB5
         dFjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+QXr83b;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u124si1193444pfb.5.2020.04.16.15.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 15:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i3so93053pgk.1
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 15:16:30 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr31922179pgc.381.1587075390157;
 Thu, 16 Apr 2020 15:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <766678058.17562.1587007242346.JavaMail.javamailuser@localhost>
 <CAKwvOd=AeAbdopGJuZZLCvhZRLwqVoH4RXdwHpxyRJa6QVKyNQ@mail.gmail.com> <CAKwvOdnjWR0mO+yaj2i=rmprRsFW4eCess9NRrAQ_iEVFWhxFw@mail.gmail.com>
In-Reply-To: <CAKwvOdnjWR0mO+yaj2i=rmprRsFW4eCess9NRrAQ_iEVFWhxFw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 15:16:18 -0700
Message-ID: <CAKwvOdns5Nrti_Vz0+3h3+pdKMQmL_zXuaeT1KKnyJgXJy=kYw@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - Build # 30 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F+QXr83b;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

LGTM

On Thu, Apr 16, 2020 at 3:05 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> (dropping linaro LLVM, I get bounce backs from that too)
>
> George committed a patch in
> https://reviews.llvm.org/rG94908088a831141cfbdd15fc5837dccf30cfeeb6.
> I'm confirming it now.
>
> On Thu, Apr 16, 2020 at 10:39 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Reported upstream
> > https://reviews.llvm.org/D78162#1987048
> >
> > On Wed, Apr 15, 2020 at 8:20 PM <ci_notify@linaro.org> wrote:
> > >
> > > Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
> > >  - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
> > >
> > > Culprit:
> > > <cut>
> > > commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > > Author: George Burgess IV <george.burgess.iv@gmail.com>
> > > Date:   Wed Apr 15 11:05:22 2020 -0700
> > >
> > >     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
> > >
> > >     There are some inline builtin definitions that we can't emit
> > >     (isTriviallyRecursive & callers go into why). Marking these
> > >     nobuiltin is only useful if we actually emit the body, so don't mark
> > >     these as such unless we _do_ plan on emitting that.
> > >
> > >     This suboptimality was encountered in Linux (see some discussion on
> > >     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
> > >
> > >     Differential Revision: https://reviews.llvm.org/D78162
> > > </cut>
> > >
> > > Configuration details:
> > > rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> > > rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> > > rr[llvm_branch]="35bbf3bb7168a3d8062500b63af87079f6519794"
> > >
> > > Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
> > > # reset_artifacts:
> > > -10
> > > # build_llvm:
> > > -1
> > > # linux_n_obj:
> > > 16047
> > > # First few build errors in logs:
> > > # 00:01:16 clang-11: error: unable to execute command: Aborted (core dumped)
> > > # 00:01:16 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> > > # 00:01:16 make[1]: *** [arch/arm64/kernel/arm64ksyms.o] Error 254
> > > # 00:01:56 make: *** [arch/arm64/kernel] Error 2
> > >
> > > from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
> > > # reset_artifacts:
> > > -10
> > > # build_llvm:
> > > -1
> > > # linux_n_obj:
> > > 16048
> > >
> > > Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
> > > Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
> > > Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/
> > >
> > > Reproduce builds:
> > > <cut>
> > > mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > > cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > >
> > > git clone https://git.linaro.org/toolchain/jenkins-scripts
> > >
> > > mkdir -p artifacts/manifests
> > > curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
> > > curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
> > > curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/test.sh --fail
> > > chmod +x artifacts/test.sh
> > >
> > > # Reproduce the baseline build (build all pre-requisites)
> > > ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> > >
> > > cd llvm
> > >
> > > # Reproduce first_bad build
> > > git checkout --detach 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > > ../artifacts/test.sh
> > >
> > > # Reproduce last_good build
> > > git checkout --detach f42baaab4f86d5259717bd26f713c002fd225669
> > > ../artifacts/test.sh
> > >
> > > cd ..
> > > </cut>
> > >
> > > History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
> > >
> > > Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/
> > > Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/consoleText
> > >
> > > Full commit:
> > > <cut>
> > > commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > > Author: George Burgess IV <george.burgess.iv@gmail.com>
> > > Date:   Wed Apr 15 11:05:22 2020 -0700
> > >
> > >     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
> > >
> > >     There are some inline builtin definitions that we can't emit
> > >     (isTriviallyRecursive & callers go into why). Marking these
> > >     nobuiltin is only useful if we actually emit the body, so don't mark
> > >     these as such unless we _do_ plan on emitting that.
> > >
> > >     This suboptimality was encountered in Linux (see some discussion on
> > >     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
> > >
> > >     Differential Revision: https://reviews.llvm.org/D78162
> > > ---
> > >  clang/lib/CodeGen/CodeGenModule.cpp                |  3 ++-
> > >  .../CodeGen/memcpy-no-nobuiltin-if-not-emitted.c   | 25 ++++++++++++++++++++++
> > >  2 files changed, 27 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/clang/lib/CodeGen/CodeGenModule.cpp b/clang/lib/CodeGen/CodeGenModule.cpp
> > > index 39aa5c1c512f..73a3212bcd47 100644
> > > --- a/clang/lib/CodeGen/CodeGenModule.cpp
> > > +++ b/clang/lib/CodeGen/CodeGenModule.cpp
> > > @@ -1908,7 +1908,8 @@ void CodeGenModule::SetFunctionAttributes(GlobalDecl GD, llvm::Function *F,
> > >    else if (const auto *SA = FD->getAttr<SectionAttr>())
> > >       F->setSection(SA->getName());
> > >
> > > -  if (FD->isInlineBuiltinDeclaration()) {
> > > +  // If we plan on emitting this inline builtin, we can't treat it as a builtin.
> > > +  if (FD->isInlineBuiltinDeclaration() && shouldEmitFunction(FD)) {
> > >      F->addAttribute(llvm::AttributeList::FunctionIndex,
> > >                      llvm::Attribute::NoBuiltin);
> > >    }
> > > diff --git a/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> > > new file mode 100644
> > > index 000000000000..b4c1376c5bb3
> > > --- /dev/null
> > > +++ b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> > > @@ -0,0 +1,25 @@
> > > +// RUN: %clang_cc1 -triple x86_64-unknown-unknown -S -emit-llvm -o - %s | FileCheck %s
> > > +//
> > > +// Verifies that clang doesn't mark an inline builtin definition as `nobuiltin`
> > > +// if the builtin isn't emittable.
> > > +
> > > +typedef unsigned long size_t;
> > > +
> > > +// always_inline is used so clang will emit this body. Otherwise, we need >=
> > > +// -O1.
> > > +#define AVAILABLE_EXTERNALLY extern inline __attribute__((always_inline)) \
> > > +    __attribute__((gnu_inline))
> > > +
> > > +AVAILABLE_EXTERNALLY void *memcpy(void *a, const void *b, size_t c) {
> > > +  return __builtin_memcpy(a, b, c);
> > > +}
> > > +
> > > +// CHECK-LABEL: define void @foo
> > > +void foo(void *a, const void *b, size_t c) {
> > > +  // Clang will always _emit_ this as memcpy. LLVM turns it into @llvm.memcpy
> > > +  // later on if optimizations are enabled.
> > > +  // CHECK: call i8* @memcpy
> > > +  memcpy(a, b, c);
> > > +}
> > > +
> > > +// CHECK-NOT: nobuiltin
> > > </cut>
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/766678058.17562.1587007242346.JavaMail.javamailuser%40localhost.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdns5Nrti_Vz0%2B3h3%2BpdKMQmL_zXuaeT1KKnyJgXJy%3DkYw%40mail.gmail.com.

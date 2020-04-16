Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXVQ4L2AKGQE4SVTSHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7CC1ACED8
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 19:39:44 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id d17sf16324027qto.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 10:39:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587058783; cv=pass;
        d=google.com; s=arc-20160816;
        b=nodnAIcGpVw2OKI1YM4ZlhT2oFEG/tsbDlIE0SW27CQ/yncnbzJZGFcqCGFwUaMfxo
         vQT9CqDRN/Rn567/rws2O+wl5yh9wo6AR9c+FEL9TQKY8GgJAujgJeXY2c0nQ3s/XoVx
         qyCDTXgVYPe36zDgZ+ZY5Yn2aYS97Za/W42PE38D1XFGAI9doiutO/o9ed1/bCHSKtJR
         skdD0Z9EMd/jeICf/eBnYSOnS9DmBVoMvN9eCUyL2hgGWXqJFCgjmNnKmIow2RJhziev
         pbzo1jqp3hzr1yhxMNaCiKVzCJekJAGR6Cs689sxF8QJMpSNCT61b4KXYUyIxztjOs3S
         o4cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=n35NRx6XJzs2NfOikcWo1RR+uUKtXt0f7vDDLWngCHw=;
        b=pdOLia5P1oeWWdCrK4wcSoIVQqGJzU9WQ+Dm+Sn329ma2PWq9RA0zXVKdsDswZ1xKt
         cJwqE9EkEq9uERm0LtmXzirIOX1CtxIMUOp491NBXsUoIfzSEGeaAi6seV9ncoGMeqKX
         aTSs1Tjw5MX6TcMq4TFGUQ9CoHiWqPWc6zL/hz0JPSDtZmDc3lSgn/Rfnsdw2gWkHOGD
         gGy04euDlp8ykpCLeBpIGaLSkYx5pukkEr1LN45xfBjAYs0A+jnudnXxx3x3vzmrJV1F
         EJX17Ayz+7UgVo2bY+A7tZN7WgRvMOa3IWYwE+U1SFkKOvbk2y1aCtTvvZgR8PQVm2O8
         zZrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8Urlyar;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n35NRx6XJzs2NfOikcWo1RR+uUKtXt0f7vDDLWngCHw=;
        b=jBl1SF8gFVYtXjjFwoLy/0N0hXnC431Ekx+rrAkVdX17+O3z7GZ9acSJmfH5EBv2Au
         vdG+hR+XQTeekeDwv4QuGVJ73XqlOuHU50dKhl5xH/MPzcAnVVSDbWHlFF6IHODgrj6J
         mTyjv0dCUvdQ2op0KlD54dRGaa3G8u3V8pjMeKRZkFdaWY9ojZV4EYfGciplpCtGG14d
         7mAsTNls1ufUYNRvaC5oBFWUoek8rrl/8RTUkug6aypIBsEjLIs0QwamRa2/scdS6hNx
         Jxq9lHC3Tjx/2CDqIYB9nu26cK4yIITuUrMAVa56EiVoA5hBMb8GXONvm26px8WtlCec
         zjaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n35NRx6XJzs2NfOikcWo1RR+uUKtXt0f7vDDLWngCHw=;
        b=dXiYv1Z2g+MjQ1wHbpTNLh4SMqJOPgj4BRCoFWoHrlrQsgVmkzYwYxjENR7rKokh7Y
         DCQWVn4/e7AXriP81bCD5ql8TCyTaiHHGY7FGl0fpRt+U2ECb6dWUD5LGJSzE1IWVjQ5
         AoWK4kJv9ER004OnQN6YxRI0WqXFuPU3KdKgyz3GmhREHSEz5HsMnX8MqWHFcrjOTLdz
         lonQbE5nvP6E+cls2a5iTD6Nv4ZHqaCK/wV+VJC21wt6BTzKYKDAy6dJgnnH5+WjtltM
         pDkNOkH8IwtiCDkssRP31BlAmtKR50ma4SbOG4aL9Tr9345wtFmC0uStfFXJm6fWVSAL
         y9qA==
X-Gm-Message-State: AGi0Pubcmlmb5XlrP1l5lM7201igyrsgQuoe6DNBCKR6NIAHYaHS6ntG
	0ZF98B9oZgSkuOqVzTKkuhY=
X-Google-Smtp-Source: APiQypJWYEPqeeb0zc2nH0jOH6+QmFYOhVPKkbdw3kAuwHOhprtwS2lN6AklwsNIoVHBpovJOD04lg==
X-Received: by 2002:aed:2b25:: with SMTP id p34mr17995025qtd.383.1587058783075;
        Thu, 16 Apr 2020 10:39:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:891:: with SMTP id v17ls1317124qth.8.gmail; Thu, 16 Apr
 2020 10:39:42 -0700 (PDT)
X-Received: by 2002:ac8:764c:: with SMTP id i12mr27959066qtr.127.1587058781848;
        Thu, 16 Apr 2020 10:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587058781; cv=none;
        d=google.com; s=arc-20160816;
        b=s8ewa40bZJ6hxh96euhpodZ5KW3tGXfDsRweEwX7Pi5apwKgCybkQBykV+INuXLPSk
         6abc2KsoU+SVm6zzrK/SSJBjRVhR5itQYcCoXKGc/URHlVHBitqgxlfhU04mXqv01pr5
         Xa91KFMsxxBCR7nY/sm9EpQwQ55ukZULIOSM5wnLA52iFxCeOPU3OAi5tckm3Eh4AOxO
         zgmOvd3WFSIYpxgEgdajb6NtcjxmKXX59oyNVb+ViMhN+r3tFbdTqpd/8dOCz4C5C3ES
         i/YcAef00KgkIrS/FLz3ADDe5ZQDMBo+4zGzF5sr//Ti33HI1EOny9H1XHcbQZi10cQu
         2QBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PyX6IyzkRNYKj1Xx1tzFR2LxmTh+rQnBKd01eql4XHE=;
        b=Kg9yxR8JYShsSuHFSIqrNrKnwYxsf91YsYt9EIhee2fPqA/F75evUGiBQpSH0zDqvE
         4kWUVciYn7xZuYUKKPFibaCnc0qoFmfx9Lt67sj066yAeiV11oTD9+TC3Hguxg3bkLq9
         1ayg0pShh65veap7u6SCSPBvCoa/0IQUYv+W/KbWfrym1ws7IySWGLOvvGNR9S5+5nRu
         kTaHQflgc5hqYPGkP6AVPzYB4Vo3YP2OBLlIUV9eHalu9wQB2OvkGR5QtsxT8IeMmQrE
         degYsIW06uArKOGg8KJhOkJD8ygcN4/kBBoIsvHN/NJPkRlfVuvOGWG8kN++MHXBk/w/
         VsHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8Urlyar;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id o3si1247927qtm.0.2020.04.16.10.39.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 10:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id v2so1590731plp.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 10:39:41 -0700 (PDT)
X-Received: by 2002:a17:90b:23ce:: with SMTP id md14mr6482839pjb.164.1587058780420;
 Thu, 16 Apr 2020 10:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <766678058.17562.1587007242346.JavaMail.javamailuser@localhost>
In-Reply-To: <766678058.17562.1587007242346.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 10:39:28 -0700
Message-ID: <CAKwvOd=AeAbdopGJuZZLCvhZRLwqVoH4RXdwHpxyRJa6QVKyNQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
 - Build # 30 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: Linaro LLVM <llvm@linaro.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W8Urlyar;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

Reported upstream
https://reviews.llvm.org/D78162#1987048

On Wed, Apr 15, 2020 at 8:20 PM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
>
> Culprit:
> <cut>
> commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> Author: George Burgess IV <george.burgess.iv@gmail.com>
> Date:   Wed Apr 15 11:05:22 2020 -0700
>
>     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
>
>     There are some inline builtin definitions that we can't emit
>     (isTriviallyRecursive & callers go into why). Marking these
>     nobuiltin is only useful if we actually emit the body, so don't mark
>     these as such unless we _do_ plan on emitting that.
>
>     This suboptimality was encountered in Linux (see some discussion on
>     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
>
>     Differential Revision: https://reviews.llvm.org/D78162
> </cut>
>
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> rr[llvm_branch]="35bbf3bb7168a3d8062500b63af87079f6519794"
>
> Results regressed to (for first_bad == 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 16047
> # First few build errors in logs:
> # 00:01:16 clang-11: error: unable to execute command: Aborted (core dumped)
> # 00:01:16 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> # 00:01:16 make[1]: *** [arch/arm64/kernel/arm64ksyms.o] Error 254
> # 00:01:56 make: *** [arch/arm64/kernel] Error 2
>
> from (for last_good == f42baaab4f86d5259717bd26f713c002fd225669)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 16048
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/build-f42baaab4f86d5259717bd26f713c002fd225669/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> cd investigate-llvm-2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/test.sh --fail
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach f42baaab4f86d5259717bd26f713c002fd225669
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allyesconfig/30/consoleText
>
> Full commit:
> <cut>
> commit 2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> Author: George Burgess IV <george.burgess.iv@gmail.com>
> Date:   Wed Apr 15 11:05:22 2020 -0700
>
>     [CodeGen] only add nobuiltin to inline builtins if we'll emit them
>
>     There are some inline builtin definitions that we can't emit
>     (isTriviallyRecursive & callers go into why). Marking these
>     nobuiltin is only useful if we actually emit the body, so don't mark
>     these as such unless we _do_ plan on emitting that.
>
>     This suboptimality was encountered in Linux (see some discussion on
>     D71082, and https://github.com/ClangBuiltLinux/linux/issues/979).
>
>     Differential Revision: https://reviews.llvm.org/D78162
> ---
>  clang/lib/CodeGen/CodeGenModule.cpp                |  3 ++-
>  .../CodeGen/memcpy-no-nobuiltin-if-not-emitted.c   | 25 ++++++++++++++++++++++
>  2 files changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/clang/lib/CodeGen/CodeGenModule.cpp b/clang/lib/CodeGen/CodeGenModule.cpp
> index 39aa5c1c512f..73a3212bcd47 100644
> --- a/clang/lib/CodeGen/CodeGenModule.cpp
> +++ b/clang/lib/CodeGen/CodeGenModule.cpp
> @@ -1908,7 +1908,8 @@ void CodeGenModule::SetFunctionAttributes(GlobalDecl GD, llvm::Function *F,
>    else if (const auto *SA = FD->getAttr<SectionAttr>())
>       F->setSection(SA->getName());
>
> -  if (FD->isInlineBuiltinDeclaration()) {
> +  // If we plan on emitting this inline builtin, we can't treat it as a builtin.
> +  if (FD->isInlineBuiltinDeclaration() && shouldEmitFunction(FD)) {
>      F->addAttribute(llvm::AttributeList::FunctionIndex,
>                      llvm::Attribute::NoBuiltin);
>    }
> diff --git a/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> new file mode 100644
> index 000000000000..b4c1376c5bb3
> --- /dev/null
> +++ b/clang/test/CodeGen/memcpy-no-nobuiltin-if-not-emitted.c
> @@ -0,0 +1,25 @@
> +// RUN: %clang_cc1 -triple x86_64-unknown-unknown -S -emit-llvm -o - %s | FileCheck %s
> +//
> +// Verifies that clang doesn't mark an inline builtin definition as `nobuiltin`
> +// if the builtin isn't emittable.
> +
> +typedef unsigned long size_t;
> +
> +// always_inline is used so clang will emit this body. Otherwise, we need >=
> +// -O1.
> +#define AVAILABLE_EXTERNALLY extern inline __attribute__((always_inline)) \
> +    __attribute__((gnu_inline))
> +
> +AVAILABLE_EXTERNALLY void *memcpy(void *a, const void *b, size_t c) {
> +  return __builtin_memcpy(a, b, c);
> +}
> +
> +// CHECK-LABEL: define void @foo
> +void foo(void *a, const void *b, size_t c) {
> +  // Clang will always _emit_ this as memcpy. LLVM turns it into @llvm.memcpy
> +  // later on if optimizations are enabled.
> +  // CHECK: call i8* @memcpy
> +  memcpy(a, b, c);
> +}
> +
> +// CHECK-NOT: nobuiltin
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/766678058.17562.1587007242346.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAeAbdopGJuZZLCvhZRLwqVoH4RXdwHpxyRJa6QVKyNQ%40mail.gmail.com.

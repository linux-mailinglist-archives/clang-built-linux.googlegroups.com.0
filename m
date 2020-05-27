Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDGWXL3AKGQEJ5BPODA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 688D31E4CA1
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:01:49 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id o9sf4081996oos.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590602508; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7ew5SDqx7wQV+5/fKWPgC9Ydm6/jn/hcts+dMDStleGtoGYGxki+95L0Vu4F+u8dI
         wKZP5FEIoknQtwsW6noYOkmqCN2hhLMaylMqc/PtpjUxwqCj7X8FS2etFp4LzL+OjGgV
         9MyHEZCZ6TIsLVKiycXK1tkEqH2NpzgySAvsLqzOGh89I3pdVHmHJOSs6pbVa2EDCimK
         9cpg/8gV8G7Gcnb+61fsvYQOshkOMjruAuIrgj5lx9X7aHKEovlvX9pqTYRMRxsjYcSf
         X3sd8J1ja4PD4We7zeXW3TDqnEI+fv+6RJfjdqomnq7IJirEHBftZCBGAHod89Ut98Dh
         hUsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S2+VP5CtLCUh964sVSqPSSQHrA9bSVa6XY4UnNlWLSQ=;
        b=ewqKdxV5K1dbMbcDU9qVddA1oj8Atqho9ilu5jZmaVDjIvmNnj0PsWJuyrkhGEkdvM
         9hyKc5qiq5RPegBVAdUn8fG1XQGL5x0QlQrS8ZweVheKEJqAekMCnEYBOM/CunfQ5F0u
         NzeM583o7Lr78QzvnxkFNtEd2fsC2/hyHRaLDia29ahRJ/m1B2RO/IJcLyO7G/ScyPFe
         6u+gONDx955J4dKLSOhLJrQAdhXHLubUTStgjk8urDjwxckvLCr/RISZ63B9rMqrz2a8
         ZGU+wPnoXigtoAyoHpFZyxLTsGQ6yJEM7U+HC0G5kAzaVRSOYVVg5QoFGwzX4hlUfQxn
         Wl7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ir9WNEH9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2+VP5CtLCUh964sVSqPSSQHrA9bSVa6XY4UnNlWLSQ=;
        b=R2IqIbKfmPUBORAkUFucfzVLpWHfoDVoyIG9eyk5oJNLk9uxqdVNs0NoAcKNUODMXp
         UWT/RFaau5xkQcrmS8vHCz/XOnMFcQeijJnm89RCTQVLg+qVrmFc++90m1lszgBqdXuG
         8aMHmW6G88HhwO3Ljhoaabv6roHhdGBrhOhnq/QcnDcN77NXtKHpeptTr51NKSRqsoLL
         2z7o5nBSqLiFZG+OdWoF79beQ6FfGsnCO/1VZParhcIlrGf63ZaR4EeCMcr2iX8wLfC6
         0yaX9ssqy6H4OqbG+0YgrJdkigHqUPSFGl0RpwUwJvLepiLBRCvPcj6sH+nH+KVtoYkW
         rRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2+VP5CtLCUh964sVSqPSSQHrA9bSVa6XY4UnNlWLSQ=;
        b=o54K8h5dVxbge0HEuXDLYyzyonLpUeinUNwAywfMMgG1NWv9DF5CUQpL3LFHNLMwxa
         gDR7lQEQyMNN8nwGuB6wIxrCb4zXQDJ+PytOFQ8jK1TWZfO4RR6cBqG0OS08/JMC+Zbi
         bsSdtWLjy/MDVNAaXfu62Sq4fUR7ebxaYtz1kIo+4KuXV8m48w0isbIB1X6yUQ/QHAia
         9VhAhgG3MsFKNFuFYdE5xlCkMQjlvZo+FwkzMmpv26jNE94uEUsIw9GVvthW2vIm1uvG
         tx+fGLeeyecdu2jeXMXPRisMqqwnNA/8M46L1K/jFx24oMP0hDOSVn0ZQZbQ59dBGKqB
         6qMw==
X-Gm-Message-State: AOAM530+LF2oFY0TtkNHbq4nKXl14GNEy8kdqW7QOoCP+FihoHY33TDx
	R+fryotPBP/scsz1oHWKr2A=
X-Google-Smtp-Source: ABdhPJwCzJPNM7xb09OwOJFB/O3iG/kKqEhzewmjpmy4iPrvP+gJVkY+CXt/a61KKkMc6q0T07mzhw==
X-Received: by 2002:a54:4516:: with SMTP id l22mr3435746oil.139.1590602508259;
        Wed, 27 May 2020 11:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:86a:: with SMTP id 97ls3273859oty.9.gmail; Wed, 27 May
 2020 11:01:46 -0700 (PDT)
X-Received: by 2002:a05:6830:2155:: with SMTP id r21mr5910057otd.187.1590602506847;
        Wed, 27 May 2020 11:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590602506; cv=none;
        d=google.com; s=arc-20160816;
        b=Ryy/Vpuik2q9hgzirdr7Yv0icEtG7vS7QBYr5vEXG+xgOrFkmSGHD2PA0WgPrSwafb
         IPSWql4R2Oc7zVsFaJxBTshXeO+Px4trWyTBKam3ggFVYwKOzDCyyBK/DsSy/9xMlBmC
         rl0gVqGd6ptv0CTsY+zvs1x91em7WdTwlAijq0WLTvQzEinCRJGCqPszgeMyTA6nPuV3
         /oRcQnOMQjfCgQly4/JxVkEuClY+0DLqfHKSMIR1CHpcYTvAquXYl6B2lTiwfBO5JCYo
         R7h8ufipEr59xn/QnWQwOt8QlkZ70lFygxGZOZd3PIL6SrNqYcwC+Zsfo28RoE9mOcpv
         z5kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cM6raGzDxKnlcYYiu/eWecQWEBamFOz+IhocqwrjJxc=;
        b=tXsIa5yKALTkHGHEsFQXmqQoP+81pc9WdoStA+7JSxDOd3I7BdidwrZASBvm0gypDh
         hhSx5qtgI0W3sbZTThYPxVvGd6H5ezI2Qt6xohc01ewhAfSI3Z0LJDvYsu+Neq3SB0Md
         +IURCsROD8Hi1nNW33Q1ut5s4OBHM3gCdHOUNiJu7oMnQ9GyckM7IWfhxa44YFMbhzS7
         i/T9ECAYwaWwFl7ToXAnv2MAzo0isXXji8lcHm482u2I/yhdFOf5zhsOkmsujRS0J93O
         QXi/J70sDl0+QwObk9IA6zyaFYiJ7VOFmrlJrNYofsO+5qpjpFUIF0AlvML6id73BqUv
         s4Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ir9WNEH9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id l21si316543otp.0.2020.05.27.11.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 11:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id ci21so1874907pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:01:46 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr6526559pjb.101.1590602505618;
 Wed, 27 May 2020 11:01:45 -0700 (PDT)
MIME-Version: 1.0
References: <1911984047.98.1590571446364.JavaMail.javamailuser@localhost>
In-Reply-To: <1911984047.98.1590571446364.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 11:01:34 -0700
Message-ID: <CAKwvOd=kjUtAEiZrjvVOyMWkGQ0H6nH-5ODLhmt1_ipVaAN3Og@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - Build # 2 - Successful!
To: CI Notify <ci_notify@linaro.org>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Linaro LLVM <llvm@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ir9WNEH9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

was reverted: https://reviews.llvm.org/D79721

On Wed, May 27, 2020 at 2:24 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
>  - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-master-aarch64-stable-allmodconfig
>  - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
>
> Culprit:
> <cut>
> commit 98cad555e29187a03e2bc3db5780762981913902
> Author: Lucas Prates <lucas.prates@arm.com>
>
>     [Clang][AArch64] Capturing proper pointer alignment for Neon vld1 intrinsicts
> </cut>
>
> Results regressed to (for first_bad == 98cad555e29187a03e2bc3db5780762981913902)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18709
> # First few build errors in logs:
> # 00:07:35 clang-11: error: unable to execute command: Aborted (core dumped)
> # 00:07:35 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> # 00:07:36 make[1]: *** [crypto/aegis128-neon-inner.o] Error 254
> # 00:12:01 make: *** [crypto] Error 2
>
> from (for last_good == 871556a494552c0f503eec17055f075bcd859937)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18784
> # linux build successful:
> all
>
> Artifacts of last_good build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/build-871556a494552c0f503eec17055f075bcd859937/
> Artifacts of first_bad build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/build-98cad555e29187a03e2bc3db5780762981913902/
> Build top page/logs: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/
>
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[llvm_branch]="179c80117c91fc3ba3079740a91de40d98b18916"
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-98cad555e29187a03e2bc3db5780762981913902
> cd investigate-llvm-98cad555e29187a03e2bc3db5780762981913902
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/test.sh --fail
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach 98cad555e29187a03e2bc3db5780762981913902
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 871556a494552c0f503eec17055f075bcd859937
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>
> Artifacts: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/artifact/artifacts/
> Build log: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/2/consoleText
>
> Full commit:
> <cut>
> commit 98cad555e29187a03e2bc3db5780762981913902
> Author: Lucas Prates <lucas.prates@arm.com>
> Date:   Tue May 5 11:52:09 2020 +0100
>
>     [Clang][AArch64] Capturing proper pointer alignment for Neon vld1 intrinsicts
>
>     Summary:
>     During CodeGen for AArch64 Neon intrinsics, Clang was incorrectly
>     assuming all the pointers from which loads were being generated for vld1
>     intrinsics were aligned according to the intrinsics result type, causing
>     alignment faults on the code generated by the backend.
>
>     This patch updates vld1 intrinsics' CodeGen to properly capture the
>     correct load alignment based on the type of the pointer provided as
>     input for the intrinsic.
>
>     Reviewers: t.p.northover, ostannard, pcc
>
>     Reviewed By: ostannard
>
>     Subscribers: kristof.beyls, danielkiss, cfe-commits
>
>     Tags: #clang
>
>     Differential Revision: https://reviews.llvm.org/D79721
> ---
>  clang/lib/CodeGen/CGBuiltin.cpp              | 12 +++----
>  clang/test/CodeGen/aarch64-neon-intrinsics.c | 52 ++++++++++++++--------------
>  2 files changed, 32 insertions(+), 32 deletions(-)
>
> diff --git a/clang/lib/CodeGen/CGBuiltin.cpp b/clang/lib/CodeGen/CGBuiltin.cpp
> index 1adae1a7ea42..ddd9a68a8edb 100644
> --- a/clang/lib/CodeGen/CGBuiltin.cpp
> +++ b/clang/lib/CodeGen/CGBuiltin.cpp
> @@ -10327,9 +10327,9 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
>    }
>    case NEON::BI__builtin_neon_vld1_v:
>    case NEON::BI__builtin_neon_vld1q_v: {
> +    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
> +        E->getArg(0)->IgnoreParenCasts()->getType());
>      Ops[0] = Builder.CreateBitCast(Ops[0], llvm::PointerType::getUnqual(VTy));
> -    auto Alignment = CharUnits::fromQuantity(
> -        BuiltinID == NEON::BI__builtin_neon_vld1_v ? 8 : 16);
>      return Builder.CreateAlignedLoad(VTy, Ops[0], Alignment);
>    }
>    case NEON::BI__builtin_neon_vst1_v:
> @@ -10342,8 +10342,8 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
>      Ops[1] = Builder.CreateBitCast(Ops[1], Ty);
>      Ty = llvm::PointerType::getUnqual(VTy->getElementType());
>      Ops[0] = Builder.CreateBitCast(Ops[0], Ty);
> -    auto Alignment = CharUnits::fromQuantity(
> -        BuiltinID == NEON::BI__builtin_neon_vld1_lane_v ? 8 : 16);
> +    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
> +        E->getArg(0)->IgnoreParenCasts()->getType());
>      Ops[0] =
>          Builder.CreateAlignedLoad(VTy->getElementType(), Ops[0], Alignment);
>      return Builder.CreateInsertElement(Ops[1], Ops[0], Ops[2], "vld1_lane");
> @@ -10353,8 +10353,8 @@ Value *CodeGenFunction::EmitAArch64BuiltinExpr(unsigned BuiltinID,
>      Value *V = UndefValue::get(Ty);
>      Ty = llvm::PointerType::getUnqual(VTy->getElementType());
>      Ops[0] = Builder.CreateBitCast(Ops[0], Ty);
> -    auto Alignment = CharUnits::fromQuantity(
> -        BuiltinID == NEON::BI__builtin_neon_vld1_dup_v ? 8 : 16);
> +    auto Alignment = CGM.getNaturalPointeeTypeAlignment(
> +        E->getArg(0)->IgnoreParenCasts()->getType());
>      Ops[0] =
>          Builder.CreateAlignedLoad(VTy->getElementType(), Ops[0], Alignment);
>      llvm::Constant *CI = ConstantInt::get(Int32Ty, 0);
> diff --git a/clang/test/CodeGen/aarch64-neon-intrinsics.c b/clang/test/CodeGen/aarch64-neon-intrinsics.c
> index 7744b4f4a159..1fb245f3d342 100644
> --- a/clang/test/CodeGen/aarch64-neon-intrinsics.c
> +++ b/clang/test/CodeGen/aarch64-neon-intrinsics.c
> @@ -8956,7 +8956,7 @@ float64_t test_vrsqrted_f64(float64_t a) {
>
>  // CHECK-LABEL: @test_vld1q_u8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <16 x i8> [[TMP1]]
>  uint8x16_t test_vld1q_u8(uint8_t const *a) {
>    return vld1q_u8(a);
> @@ -8965,7 +8965,7 @@ uint8x16_t test_vld1q_u8(uint8_t const *a) {
>  // CHECK-LABEL: @test_vld1q_u16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <8 x i16> [[TMP2]]
>  uint16x8_t test_vld1q_u16(uint16_t const *a) {
>    return vld1q_u16(a);
> @@ -8974,7 +8974,7 @@ uint16x8_t test_vld1q_u16(uint16_t const *a) {
>  // CHECK-LABEL: @test_vld1q_u32(
>  // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i32>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]], align 4
>  // CHECK:   ret <4 x i32> [[TMP2]]
>  uint32x4_t test_vld1q_u32(uint32_t const *a) {
>    return vld1q_u32(a);
> @@ -8983,7 +8983,7 @@ uint32x4_t test_vld1q_u32(uint32_t const *a) {
>  // CHECK-LABEL: @test_vld1q_u64(
>  // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i64>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]], align 8
>  // CHECK:   ret <2 x i64> [[TMP2]]
>  uint64x2_t test_vld1q_u64(uint64_t const *a) {
>    return vld1q_u64(a);
> @@ -8991,7 +8991,7 @@ uint64x2_t test_vld1q_u64(uint64_t const *a) {
>
>  // CHECK-LABEL: @test_vld1q_s8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <16 x i8> [[TMP1]]
>  int8x16_t test_vld1q_s8(int8_t const *a) {
>    return vld1q_s8(a);
> @@ -9000,7 +9000,7 @@ int8x16_t test_vld1q_s8(int8_t const *a) {
>  // CHECK-LABEL: @test_vld1q_s16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <8 x i16> [[TMP2]]
>  int16x8_t test_vld1q_s16(int16_t const *a) {
>    return vld1q_s16(a);
> @@ -9009,7 +9009,7 @@ int16x8_t test_vld1q_s16(int16_t const *a) {
>  // CHECK-LABEL: @test_vld1q_s32(
>  // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i32>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x i32>, <4 x i32>* [[TMP1]], align 4
>  // CHECK:   ret <4 x i32> [[TMP2]]
>  int32x4_t test_vld1q_s32(int32_t const *a) {
>    return vld1q_s32(a);
> @@ -9018,7 +9018,7 @@ int32x4_t test_vld1q_s32(int32_t const *a) {
>  // CHECK-LABEL: @test_vld1q_s64(
>  // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i64>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x i64>, <2 x i64>* [[TMP1]], align 8
>  // CHECK:   ret <2 x i64> [[TMP2]]
>  int64x2_t test_vld1q_s64(int64_t const *a) {
>    return vld1q_s64(a);
> @@ -9027,7 +9027,7 @@ int64x2_t test_vld1q_s64(int64_t const *a) {
>  // CHECK-LABEL: @test_vld1q_f16(
>  // CHECK:   [[TMP0:%.*]] = bitcast half* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x half>*
> -// CHECK:   [[TMP2:%.*]] = load <8 x half>, <8 x half>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <8 x half>, <8 x half>* [[TMP1]], align 2
>  // CHECK:   ret <8 x half> [[TMP2]]
>  float16x8_t test_vld1q_f16(float16_t const *a) {
>    return vld1q_f16(a);
> @@ -9036,7 +9036,7 @@ float16x8_t test_vld1q_f16(float16_t const *a) {
>  // CHECK-LABEL: @test_vld1q_f32(
>  // CHECK:   [[TMP0:%.*]] = bitcast float* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x float>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x float>, <4 x float>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x float>, <4 x float>* [[TMP1]], align 4
>  // CHECK:   ret <4 x float> [[TMP2]]
>  float32x4_t test_vld1q_f32(float32_t const *a) {
>    return vld1q_f32(a);
> @@ -9045,7 +9045,7 @@ float32x4_t test_vld1q_f32(float32_t const *a) {
>  // CHECK-LABEL: @test_vld1q_f64(
>  // CHECK:   [[TMP0:%.*]] = bitcast double* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x double>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x double>, <2 x double>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x double>, <2 x double>* [[TMP1]], align 8
>  // CHECK:   ret <2 x double> [[TMP2]]
>  float64x2_t test_vld1q_f64(float64_t const *a) {
>    return vld1q_f64(a);
> @@ -9053,7 +9053,7 @@ float64x2_t test_vld1q_f64(float64_t const *a) {
>
>  // CHECK-LABEL: @test_vld1q_p8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <16 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <16 x i8>, <16 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <16 x i8> [[TMP1]]
>  poly8x16_t test_vld1q_p8(poly8_t const *a) {
>    return vld1q_p8(a);
> @@ -9062,7 +9062,7 @@ poly8x16_t test_vld1q_p8(poly8_t const *a) {
>  // CHECK-LABEL: @test_vld1q_p16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <8 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <8 x i16>, <8 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <8 x i16> [[TMP2]]
>  poly16x8_t test_vld1q_p16(poly16_t const *a) {
>    return vld1q_p16(a);
> @@ -9070,7 +9070,7 @@ poly16x8_t test_vld1q_p16(poly16_t const *a) {
>
>  // CHECK-LABEL: @test_vld1_u8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <8 x i8> [[TMP1]]
>  uint8x8_t test_vld1_u8(uint8_t const *a) {
>    return vld1_u8(a);
> @@ -9079,7 +9079,7 @@ uint8x8_t test_vld1_u8(uint8_t const *a) {
>  // CHECK-LABEL: @test_vld1_u16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <4 x i16> [[TMP2]]
>  uint16x4_t test_vld1_u16(uint16_t const *a) {
>    return vld1_u16(a);
> @@ -9088,7 +9088,7 @@ uint16x4_t test_vld1_u16(uint16_t const *a) {
>  // CHECK-LABEL: @test_vld1_u32(
>  // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i32>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]], align 4
>  // CHECK:   ret <2 x i32> [[TMP2]]
>  uint32x2_t test_vld1_u32(uint32_t const *a) {
>    return vld1_u32(a);
> @@ -9097,7 +9097,7 @@ uint32x2_t test_vld1_u32(uint32_t const *a) {
>  // CHECK-LABEL: @test_vld1_u64(
>  // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x i64>*
> -// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]], align 8
>  // CHECK:   ret <1 x i64> [[TMP2]]
>  uint64x1_t test_vld1_u64(uint64_t const *a) {
>    return vld1_u64(a);
> @@ -9105,7 +9105,7 @@ uint64x1_t test_vld1_u64(uint64_t const *a) {
>
>  // CHECK-LABEL: @test_vld1_s8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <8 x i8> [[TMP1]]
>  int8x8_t test_vld1_s8(int8_t const *a) {
>    return vld1_s8(a);
> @@ -9114,7 +9114,7 @@ int8x8_t test_vld1_s8(int8_t const *a) {
>  // CHECK-LABEL: @test_vld1_s16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <4 x i16> [[TMP2]]
>  int16x4_t test_vld1_s16(int16_t const *a) {
>    return vld1_s16(a);
> @@ -9123,7 +9123,7 @@ int16x4_t test_vld1_s16(int16_t const *a) {
>  // CHECK-LABEL: @test_vld1_s32(
>  // CHECK:   [[TMP0:%.*]] = bitcast i32* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x i32>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x i32>, <2 x i32>* [[TMP1]], align 4
>  // CHECK:   ret <2 x i32> [[TMP2]]
>  int32x2_t test_vld1_s32(int32_t const *a) {
>    return vld1_s32(a);
> @@ -9132,7 +9132,7 @@ int32x2_t test_vld1_s32(int32_t const *a) {
>  // CHECK-LABEL: @test_vld1_s64(
>  // CHECK:   [[TMP0:%.*]] = bitcast i64* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x i64>*
> -// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <1 x i64>, <1 x i64>* [[TMP1]], align 8
>  // CHECK:   ret <1 x i64> [[TMP2]]
>  int64x1_t test_vld1_s64(int64_t const *a) {
>    return vld1_s64(a);
> @@ -9141,7 +9141,7 @@ int64x1_t test_vld1_s64(int64_t const *a) {
>  // CHECK-LABEL: @test_vld1_f16(
>  // CHECK:   [[TMP0:%.*]] = bitcast half* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x half>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x half>, <4 x half>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x half>, <4 x half>* [[TMP1]], align 2
>  // CHECK:   ret <4 x half> [[TMP2]]
>  float16x4_t test_vld1_f16(float16_t const *a) {
>    return vld1_f16(a);
> @@ -9150,7 +9150,7 @@ float16x4_t test_vld1_f16(float16_t const *a) {
>  // CHECK-LABEL: @test_vld1_f32(
>  // CHECK:   [[TMP0:%.*]] = bitcast float* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <2 x float>*
> -// CHECK:   [[TMP2:%.*]] = load <2 x float>, <2 x float>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <2 x float>, <2 x float>* [[TMP1]], align 4
>  // CHECK:   ret <2 x float> [[TMP2]]
>  float32x2_t test_vld1_f32(float32_t const *a) {
>    return vld1_f32(a);
> @@ -9159,7 +9159,7 @@ float32x2_t test_vld1_f32(float32_t const *a) {
>  // CHECK-LABEL: @test_vld1_f64(
>  // CHECK:   [[TMP0:%.*]] = bitcast double* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <1 x double>*
> -// CHECK:   [[TMP2:%.*]] = load <1 x double>, <1 x double>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <1 x double>, <1 x double>* [[TMP1]], align 8
>  // CHECK:   ret <1 x double> [[TMP2]]
>  float64x1_t test_vld1_f64(float64_t const *a) {
>    return vld1_f64(a);
> @@ -9167,7 +9167,7 @@ float64x1_t test_vld1_f64(float64_t const *a) {
>
>  // CHECK-LABEL: @test_vld1_p8(
>  // CHECK:   [[TMP0:%.*]] = bitcast i8* %a to <8 x i8>*
> -// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]]
> +// CHECK:   [[TMP1:%.*]] = load <8 x i8>, <8 x i8>* [[TMP0]], align 1
>  // CHECK:   ret <8 x i8> [[TMP1]]
>  poly8x8_t test_vld1_p8(poly8_t const *a) {
>    return vld1_p8(a);
> @@ -9176,7 +9176,7 @@ poly8x8_t test_vld1_p8(poly8_t const *a) {
>  // CHECK-LABEL: @test_vld1_p16(
>  // CHECK:   [[TMP0:%.*]] = bitcast i16* %a to i8*
>  // CHECK:   [[TMP1:%.*]] = bitcast i8* [[TMP0]] to <4 x i16>*
> -// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]]
> +// CHECK:   [[TMP2:%.*]] = load <4 x i16>, <4 x i16>* [[TMP1]], align 2
>  // CHECK:   ret <4 x i16> [[TMP2]]
>  poly16x4_t test_vld1_p16(poly16_t const *a) {
>    return vld1_p16(a);
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1911984047.98.1590571446364.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkjUtAEiZrjvVOyMWkGQ0H6nH-5ODLhmt1_ipVaAN3Og%40mail.gmail.com.

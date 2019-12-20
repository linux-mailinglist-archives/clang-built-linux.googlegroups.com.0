Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK4T6TXQKGQEAM6DC3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id C87991281A7
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 18:49:32 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id a200sf6367559qkc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 09:49:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576864171; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9nit4ndiqqckOuUriRH34ViA6fjyKm8CNXpyocPFERKiE/FvoK4skRvJCfd4B81lf
         aJcq1JX7r38SMvHUqvJk4lMzLrjGuGHttzUb9kfpHNXsxGgWcwWgv5kuOdyZ8OUOUZog
         UIajSOOwW8c/56IG9GaMIOvHz9RfN/wCJEle5wbHMCna72cXSKL4W+mlEJEDbgaWeMFS
         f4f2Bw9thcAheN/MuujVh90Z33MCUISWQf3VMxbZ/qqU+LoGfuqNOaR6Oxg+xde/fJfB
         afIYL1gkbef61+MyYcq6rtFfW22EjbiqNw6E+FOO3aTl7uI0HDUrOfctNfY2h9Jr55Mz
         FjOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9otL7VCqqNZ7IuBMM/jI70me+K7IM3R0+ghnJkAQD2U=;
        b=UYzL42Myej9mUO2UslguvZCL57INXPkag4m4q3eav7YXdT3beqTWA8CEDUO7nX7ozG
         7bE7nyDLMSELe3rdR7PpUFsK1adX1Vp4yy7VjKpRybmceZdXfzeMupC9Fc337PjrXyVB
         PLh4tJ8KNvZ6oNgRQEsakzbMgCkn1cm4ZYB6rPHXvWqtwlIg3WvjlGgSntO9KVD6Z5Km
         FBy7OlAUWm3QoZeuttrNN5HitZ6F6/9iBP1Zf3rr+uhhB/a3i33/lmYnisGNXUnEDHBf
         vx+iKS3Sj7ySM5s+kbasV1sWMq5DyClFDBVcUQjZfom0WDZG5AInv0LPTXWwP/oYQMvR
         WBKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PQzwCAre;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9otL7VCqqNZ7IuBMM/jI70me+K7IM3R0+ghnJkAQD2U=;
        b=QorIjNd/2BL74m8pK8HD9T7WX5ZOMIGdlkmmWuFfJofWq8kxsOU8xtq6t8GQ8rhiVO
         NQ6yALPSTHOOQ6BQigEOw3fiLrr7euh2FCndCHhrjeO7Gup4uII8sn5R4t17/gDBjawH
         H608+Iu1Rq294hlZFFB3CSvl/BN6Zq29z6ViFE2Kjp90e36N4UIHLKU4T2kZiW7nmpIR
         T00Dq14YlrUE6TWFq9x9ZVYpucysHWRyIStFUkv9ibOppouUaY8HXUoE++AXjGm6mifY
         Le67lwAZsxPrjWSTmC1Hpb/4nyEA2OA6qgu6Q1P7vwMYDtV6Z6ldmySCG2lq5xZml5iW
         JdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9otL7VCqqNZ7IuBMM/jI70me+K7IM3R0+ghnJkAQD2U=;
        b=kmAaDJ3R4vKady3I7GmwTl5FCPUwhEMj9r/787IydSWj47Wq4ErOeASDpdi4jWR2pu
         iuB8S5hqblCEnoycaMVCQkz/fCgfe2dKnrauN6egeZBxfXwYzxkvYZXKPlPxYOjheMG4
         j8LbD72ALtKaNxiP4+XcvyXAdyKsfooh6rYK1MOD5uhlGCVZkwvYpOLdIZbP0X/T99Zw
         AHv/PhkncCo0w2qMi526aI8g7k7Hkl3hkD8R2qR9z+TyS1g9gnit03nNpGKfUJrQ4t6Z
         YRjIUtqdcyQoJHAyiOCxMKrrB9crUQ8ZvKDyglJB2jyf2FzgylKElqT6amp9eabO1gBW
         VrIA==
X-Gm-Message-State: APjAAAV8V0MSD/3PkZvJXp2ugMtUWg2JhLM+boJrqf/ouBdSBbFGFhP0
	VpmZykbyx39QxdNe5OF1sNI=
X-Google-Smtp-Source: APXvYqwgJL2bBuzCFsQ+TRpvxmv8EehMpt49qW9xufAwZdBFII55zWmWyJBuvOLY6DroqXV6V1SKgg==
X-Received: by 2002:a05:620a:201d:: with SMTP id c29mr6319602qka.91.1576864171598;
        Fri, 20 Dec 2019 09:49:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a68:: with SMTP id q37ls2497040qtk.6.gmail; Fri, 20 Dec
 2019 09:49:31 -0800 (PST)
X-Received: by 2002:ac8:138b:: with SMTP id h11mr12544973qtj.153.1576864171213;
        Fri, 20 Dec 2019 09:49:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576864171; cv=none;
        d=google.com; s=arc-20160816;
        b=VS3qIspOLB/wPFsafooz05PEwgEjGUWYQLrBjxHHrkalg4hcpyf0zMNrKaENPk81vw
         s3031b7poPe/r4ItUkraOia/T9MS2D81ZFTRw+2WQ6/xcGQZi/R4MHC53pLGrlHqqcKr
         KyWnQHyryQ1PR1PrViBz8ml6A1haKvP5BzgrH9pbnklB35G7l6m0qLqBjylPc2JADmvl
         9IhGH3OhBLJ/PyOaiFcd6DZvbfNp7Q3VuSUOiRUIDiXFYyG8kcnUndUpkE17k64JK9ol
         vFYBkFJNUj3XqoaOd8RR5bEHTXloktbJGy5T5/SNRwMcWK9RxNf0wmLqbic47Htv0VeU
         W+TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9FHSjtpQj4L2ZR+rP9/J3NvEpONOOYVugtQRk+m1ZkE=;
        b=pBbQ+elAxB5deFcJLgOFUOtRZ/AGre87tHKBkGBgmJ9ya89PEAVdSsFyq9By6cF7rO
         uC9/7oNF4bbTt0KRPkdoIj+MR89pCnuPOFmsaAsyiQWBK5i9ZiRZp1DlzCouEUzSSS0C
         eVNKps0xrda2zUvreMKIrI82dw4R6YthDTMUq86g0183z5c45LYLgqzoLyS2j7zf26qA
         /B9cma9ixepj1Vdscf9aCDLkXh6HONYF9pBNWsBck3vZckT2gqrHdOAb6vJidjjao1H+
         3YhjYpaQN6h4sFU7xGIHgUkHA/sSLjOSeu4GSqGHJ2ULbDkXmj7CeD+/bZWFB1/du35L
         F88A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PQzwCAre;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id g23si435640qki.4.2019.12.20.09.49.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 09:49:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id r67so4413259pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 09:49:31 -0800 (PST)
X-Received: by 2002:a17:902:9f91:: with SMTP id g17mr16149191plq.179.1576864169537;
 Fri, 20 Dec 2019 09:49:29 -0800 (PST)
MIME-Version: 1.0
References: <788954858.6064.1576827210889.JavaMail.javamailuser@localhost>
In-Reply-To: <788954858.6064.1576827210889.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 09:49:18 -0800
Message-ID: <CAKwvOd=_nH_RDF2T_4ZZkDP_YDEeJh4Nmwwtf+vs1-sXhsEidA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
 - Build # 62 - Successful!
To: CI Notify <ci_notify@linaro.org>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Linaro LLVM <llvm@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PQzwCAre;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

Reported: https://reviews.llvm.org/D70072#1793014

On Thu, Dec 19, 2019 at 11:33 PM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
>  - tcwg_kernel/llvm-master-arm-next-allmodconfig
>  - tcwg_kernel/llvm-master-arm-next-defconfig
>
> Culprit:
> <cut>
> commit bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
> Author: Victor Campos <Victor.Campos@arm.com>
>
>     [ARM] Improve codegen of volatile load/store of i64
> </cut>
>
> First few errors in logs of first_bad:
> 00:02:27 clang-10: error: unable to execute command: Aborted (core dumped)
> 00:02:27 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:02:28 make[2]: *** [sound/core/pcm_native.o] Error 254
> 00:02:48 make[1]: *** [sound/core] Error 2
> 00:06:17 clang-10: error: unable to execute command: Aborted (core dumped)
> 00:06:17 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:06:17 make[1]: *** [lib/test_ubsan.o] Error 254
> 00:07:24 make: *** [lib] Error 2
> 00:12:41 make: *** [sound] Error 2
> 00:22:14 clang-10: error: unable to execute command: Aborted (core dumped)
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[llvm_branch]="6fd972624cca2c2de9ff20380bfd35554b1fde6b"
>
> Results regressed to (for first_bad == bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 20110
>
> from (for last_good == eca0c97a6bca49b493f3387dbd88ad60c852320f)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 27464
> linux build successful:
> all
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/build-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/build-eca0c97a6bca49b493f3387dbd88ad60c852320f/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
> cd investigate-llvm-bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach eca0c97a6bca49b493f3387dbd88ad60c852320f
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/62/consoleText
>
> Full commit:
> <cut>
> commit bbcf1c3496ce2bd1ed87e8fb15ad896e279633ce
> Author: Victor Campos <Victor.Campos@arm.com>
> Date:   Mon Dec 16 14:22:15 2019 +0000
>
>     [ARM] Improve codegen of volatile load/store of i64
>
>     Summary:
>     Instead of generating two i32 instructions for each load or store of a volatile
>     i64 value (two LDRs or STRs), now emit LDRD/STRD.
>
>     These improvements cover architectures implementing ARMv5TE or Thumb-2.
>
>     Reviewers: dmgreen, efriedma, john.brawn
>
>     Reviewed By: efriedma
>
>     Subscribers: kristof.beyls, hiraditya, llvm-commits
>
>     Tags: #llvm
>
>     Differential Revision: https://reviews.llvm.org/D70072
> ---
>  llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp     |  18 +++
>  llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp          |  49 ++++++++
>  llvm/lib/Target/ARM/ARMISelLowering.cpp          |  57 ++++++++-
>  llvm/lib/Target/ARM/ARMISelLowering.h            |   8 +-
>  llvm/lib/Target/ARM/ARMInstrInfo.td              |  23 ++++
>  llvm/lib/Target/ARM/ARMInstrThumb2.td            |   9 +-
>  llvm/test/CodeGen/ARM/i64_volatile_load_store.ll | 153 +++++++++++++++++++++++
>  7 files changed, 311 insertions(+), 6 deletions(-)
>
> diff --git a/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp b/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
> index de4377ec5a4..2c3ac816219 100644
> --- a/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
> +++ b/llvm/lib/Target/ARM/ARMExpandPseudoInsts.cpp
> @@ -1952,6 +1952,24 @@ bool ARMExpandPseudo::ExpandMI(MachineBasicBlock &MBB,
>        MI.eraseFromParent();
>        return true;
>      }
> +    case ARM::LOADDUAL:
> +    case ARM::STOREDUAL: {
> +      Register PairReg = MI.getOperand(0).getReg();
> +
> +      MachineInstrBuilder MIB =
> +          BuildMI(MBB, MBBI, MI.getDebugLoc(),
> +                  TII->get(Opcode == ARM::LOADDUAL ? ARM::LDRD : ARM::STRD))
> +              .addReg(TRI->getSubReg(PairReg, ARM::gsub_0),
> +                      Opcode == ARM::LOADDUAL ? RegState::Define : 0)
> +              .addReg(TRI->getSubReg(PairReg, ARM::gsub_1),
> +                      Opcode == ARM::LOADDUAL ? RegState::Define : 0);
> +      for (unsigned i = 1; i < MI.getNumOperands(); i++)
> +        MIB.add(MI.getOperand(i));
> +      MIB.add(predOps(ARMCC::AL));
> +      MIB.cloneMemRefs(MI);
> +      MI.eraseFromParent();
> +      return true;
> +    }
>    }
>  }
>
> diff --git a/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp b/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
> index 1f998defbd1..dcdec779bbe 100644
> --- a/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
> +++ b/llvm/lib/Target/ARM/ARMISelDAGToDAG.cpp
> @@ -145,6 +145,8 @@ public:
>
>    // Thumb 2 Addressing Modes:
>    bool SelectT2AddrModeImm12(SDValue N, SDValue &Base, SDValue &OffImm);
> +  template <unsigned Shift>
> +  bool SelectT2AddrModeImm8(SDValue N, SDValue &Base, SDValue &OffImm);
>    bool SelectT2AddrModeImm8(SDValue N, SDValue &Base,
>                              SDValue &OffImm);
>    bool SelectT2AddrModeImm8Offset(SDNode *Op, SDValue N,
> @@ -1294,6 +1296,33 @@ bool ARMDAGToDAGISel::SelectT2AddrModeImm12(SDValue N,
>    return true;
>  }
>
> +template <unsigned Shift>
> +bool ARMDAGToDAGISel::SelectT2AddrModeImm8(SDValue N, SDValue &Base,
> +                                           SDValue &OffImm) {
> +  if (N.getOpcode() == ISD::SUB || CurDAG->isBaseWithConstantOffset(N)) {
> +    int RHSC;
> +    if (isScaledConstantInRange(N.getOperand(1), 1 << Shift, -255, 256, RHSC)) {
> +      Base = N.getOperand(0);
> +      if (Base.getOpcode() == ISD::FrameIndex) {
> +        int FI = cast<FrameIndexSDNode>(Base)->getIndex();
> +        Base = CurDAG->getTargetFrameIndex(
> +            FI, TLI->getPointerTy(CurDAG->getDataLayout()));
> +      }
> +
> +      if (N.getOpcode() == ISD::SUB)
> +        RHSC = -RHSC;
> +      OffImm =
> +          CurDAG->getTargetConstant(RHSC * (1 << Shift), SDLoc(N), MVT::i32);
> +      return true;
> +    }
> +  }
> +
> +  // Base only.
> +  Base = N;
> +  OffImm = CurDAG->getTargetConstant(0, SDLoc(N), MVT::i32);
> +  return true;
> +}
> +
>  bool ARMDAGToDAGISel::SelectT2AddrModeImm8(SDValue N,
>                                             SDValue &Base, SDValue &OffImm) {
>    // Match simple R - imm8 operands.
> @@ -3486,6 +3515,26 @@ void ARMDAGToDAGISel::Select(SDNode *N) {
>      CurDAG->RemoveDeadNode(N);
>      return;
>    }
> +  case ARMISD::LDRD: {
> +    if (Subtarget->isThumb2())
> +      break; // TableGen handles isel in this case.
> +    SDValue Base, RegOffset, ImmOffset;
> +    const SDValue &Chain = N->getOperand(0);
> +    const SDValue &Addr = N->getOperand(1);
> +    SelectAddrMode3(Addr, Base, RegOffset, ImmOffset);
> +    SDValue Ops[] = {Base, RegOffset, ImmOffset, Chain};
> +    SDNode *New = CurDAG->getMachineNode(ARM::LOADDUAL, dl,
> +                                         {MVT::Untyped, MVT::Other}, Ops);
> +    SDValue Lo = CurDAG->getTargetExtractSubreg(ARM::gsub_0, dl, MVT::i32,
> +                                                SDValue(New, 0));
> +    SDValue Hi = CurDAG->getTargetExtractSubreg(ARM::gsub_1, dl, MVT::i32,
> +                                                SDValue(New, 0));
> +    ReplaceUses(SDValue(N, 0), Lo);
> +    ReplaceUses(SDValue(N, 1), Hi);
> +    ReplaceUses(SDValue(N, 2), SDValue(New, 1));
> +    CurDAG->RemoveDeadNode(N);
> +    return;
> +  }
>    case ARMISD::LOOP_DEC: {
>      SDValue Ops[] = { N->getOperand(1),
>                        N->getOperand(2),
> diff --git a/llvm/lib/Target/ARM/ARMISelLowering.cpp b/llvm/lib/Target/ARM/ARMISelLowering.cpp
> index 0b4d39ec308..67d436fb8fa 100644
> --- a/llvm/lib/Target/ARM/ARMISelLowering.cpp
> +++ b/llvm/lib/Target/ARM/ARMISelLowering.cpp
> @@ -1070,6 +1070,8 @@ ARMTargetLowering::ARMTargetLowering(const TargetMachine &TM,
>    setOperationAction(ISD::SRA,       MVT::i64, Custom);
>    setOperationAction(ISD::INTRINSIC_VOID, MVT::Other, Custom);
>    setOperationAction(ISD::INTRINSIC_WO_CHAIN, MVT::i64, Custom);
> +  setOperationAction(ISD::LOAD, MVT::i64, Custom);
> +  setOperationAction(ISD::STORE, MVT::i64, Custom);
>
>    // MVE lowers 64 bit shifts to lsll and lsrl
>    // assuming that ISD::SRL and SRA of i64 are already marked custom
> @@ -1593,6 +1595,9 @@ const char *ARMTargetLowering::getTargetNodeName(unsigned Opcode) const {
>
>    case ARMISD::PRELOAD:       return "ARMISD::PRELOAD";
>
> +  case ARMISD::LDRD:          return "ARMISD::LDRD";
> +  case ARMISD::STRD:          return "ARMISD::STRD";
> +
>    case ARMISD::WIN__CHKSTK:   return "ARMISD::WIN__CHKSTK";
>    case ARMISD::WIN__DBZCHK:   return "ARMISD::WIN__DBZCHK";
>
> @@ -9081,6 +9086,24 @@ static SDValue LowerPredicateLoad(SDValue Op, SelectionDAG &DAG) {
>    return DAG.getMergeValues({Pred, Load.getValue(1)}, dl);
>  }
>
> +void ARMTargetLowering::LowerLOAD(SDNode *N, SmallVectorImpl<SDValue> &Results,
> +                                  SelectionDAG &DAG) const {
> +  LoadSDNode *LD = cast<LoadSDNode>(N);
> +  EVT MemVT = LD->getMemoryVT();
> +  assert(LD->isUnindexed() && "Loads should be unindexed at this point.");
> +
> +  if (MemVT == MVT::i64 && Subtarget->hasV5TEOps() &&
> +      !Subtarget->isThumb1Only() && LD->isVolatile()) {
> +    SDLoc dl(N);
> +    SDValue Result = DAG.getMemIntrinsicNode(
> +        ARMISD::LDRD, dl, DAG.getVTList({MVT::i32, MVT::i32, MVT::Other}),
> +        {LD->getChain(), LD->getBasePtr()}, MemVT, LD->getMemOperand());
> +    SDValue Pair = DAG.getNode(ISD::BUILD_PAIR, dl, MVT::i64,
> +                               Result.getValue(0), Result.getValue(1));
> +    Results.append({Pair, Result.getValue(2)});
> +  }
> +}
> +
>  static SDValue LowerPredicateStore(SDValue Op, SelectionDAG &DAG) {
>    StoreSDNode *ST = cast<StoreSDNode>(Op.getNode());
>    EVT MemVT = ST->getMemoryVT();
> @@ -9110,6 +9133,34 @@ static SDValue LowerPredicateStore(SDValue Op, SelectionDAG &DAG) {
>        ST->getMemOperand());
>  }
>
> +static SDValue LowerSTORE(SDValue Op, SelectionDAG &DAG,
> +                          const ARMSubtarget *Subtarget) {
> +  StoreSDNode *ST = cast<StoreSDNode>(Op.getNode());
> +  EVT MemVT = ST->getMemoryVT();
> +  assert(ST->isUnindexed() && "Stores should be unindexed at this point.");
> +
> +  if (MemVT == MVT::i64 && Subtarget->hasV5TEOps() &&
> +      !Subtarget->isThumb1Only() && ST->isVolatile()) {
> +    SDNode *N = Op.getNode();
> +    SDLoc dl(N);
> +
> +    SDValue Lo = DAG.getNode(ISD::EXTRACT_ELEMENT, dl, MVT::i32, ST->getValue(),
> +                             DAG.getTargetConstant(0, dl, MVT::i32));
> +    SDValue Hi = DAG.getNode(ISD::EXTRACT_ELEMENT, dl, MVT::i32, ST->getValue(),
> +                             DAG.getTargetConstant(1, dl, MVT::i32));
> +
> +    return DAG.getMemIntrinsicNode(ARMISD::STRD, dl, DAG.getVTList(MVT::Other),
> +                                   {ST->getChain(), Lo, Hi, ST->getBasePtr()},
> +                                   MemVT, ST->getMemOperand());
> +  } else if (Subtarget->hasMVEIntegerOps() &&
> +             ((MemVT == MVT::v4i1 || MemVT == MVT::v8i1 ||
> +               MemVT == MVT::v16i1))) {
> +    return LowerPredicateStore(Op, DAG);
> +  }
> +
> +  return SDValue();
> +}
> +
>  static bool isZeroVector(SDValue N) {
>    return (ISD::isBuildVectorAllZeros(N.getNode()) ||
>            (N->getOpcode() == ARMISD::VMOVIMM &&
> @@ -9297,7 +9348,7 @@ SDValue ARMTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const {
>    case ISD::LOAD:
>      return LowerPredicateLoad(Op, DAG);
>    case ISD::STORE:
> -    return LowerPredicateStore(Op, DAG);
> +    return LowerSTORE(Op, DAG, Subtarget);
>    case ISD::MLOAD:
>      return LowerMLOAD(Op, DAG);
>    case ISD::ATOMIC_LOAD:
> @@ -9399,7 +9450,9 @@ void ARMTargetLowering::ReplaceNodeResults(SDNode *N,
>    case ISD::ABS:
>       lowerABS(N, Results, DAG);
>       return ;
> -
> +  case ISD::LOAD:
> +    LowerLOAD(N, Results, DAG);
> +    break;
>    }
>    if (Res.getNode())
>      Results.push_back(Res);
> diff --git a/llvm/lib/Target/ARM/ARMISelLowering.h b/llvm/lib/Target/ARM/ARMISelLowering.h
> index afb4750ee35..a63217ed87b 100644
> --- a/llvm/lib/Target/ARM/ARMISelLowering.h
> +++ b/llvm/lib/Target/ARM/ARMISelLowering.h
> @@ -278,7 +278,11 @@ class VectorType;
>        VST4_UPD,
>        VST2LN_UPD,
>        VST3LN_UPD,
> -      VST4LN_UPD
> +      VST4LN_UPD,
> +
> +      // Load/Store of dual registers
> +      LDRD,
> +      STRD
>      };
>
>    } // end namespace ARMISD
> @@ -731,6 +735,8 @@ class VectorType;
>      SDValue LowerINT_TO_FP(SDValue Op, SelectionDAG &DAG) const;
>      void lowerABS(SDNode *N, SmallVectorImpl<SDValue> &Results,
>                    SelectionDAG &DAG) const;
> +    void LowerLOAD(SDNode *N, SmallVectorImpl<SDValue> &Results,
> +                   SelectionDAG &DAG) const;
>
>      Register getRegisterByName(const char* RegName, EVT VT,
>                                 const MachineFunction &MF) const override;
> diff --git a/llvm/lib/Target/ARM/ARMInstrInfo.td b/llvm/lib/Target/ARM/ARMInstrInfo.td
> index 1cab1747ff4..ba374e8f07d 100644
> --- a/llvm/lib/Target/ARM/ARMInstrInfo.td
> +++ b/llvm/lib/Target/ARM/ARMInstrInfo.td
> @@ -243,6 +243,12 @@ def ARMqsub8b       : SDNode<"ARMISD::QSUB8b", SDT_ARMAnd, []>;
>  def ARMqadd16b      : SDNode<"ARMISD::QADD16b", SDT_ARMAnd, []>;
>  def ARMqsub16b      : SDNode<"ARMISD::QSUB16b", SDT_ARMAnd, []>;
>
> +def SDT_ARMldrd     : SDTypeProfile<2, 1, [SDTCisVT<0, i32>, SDTCisSameAs<0, 1>, SDTCisPtrTy<2>]>;
> +def ARMldrd         : SDNode<"ARMISD::LDRD", SDT_ARMldrd, [SDNPHasChain, SDNPMayLoad, SDNPMemOperand]>;
> +
> +def SDT_ARMstrd     : SDTypeProfile<0, 3, [SDTCisVT<0, i32>, SDTCisSameAs<0, 1>, SDTCisPtrTy<2>]>;
> +def ARMstrd         : SDNode<"ARMISD::STRD", SDT_ARMstrd, [SDNPHasChain, SDNPMayStore, SDNPMemOperand]>;
> +
>  // Vector operations shared between NEON and MVE
>
>  def ARMvdup      : SDNode<"ARMISD::VDUP", SDTypeProfile<1, 1, [SDTCisVec<0>]>>;
> @@ -2695,6 +2701,12 @@ let mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1 in {
>               Requires<[IsARM, HasV5TE]>;
>  }
>
> +let mayLoad = 1, hasSideEffects = 0, hasNoSchedulingInfo = 1 in {
> +def LOADDUAL : ARMPseudoInst<(outs GPRPairOp:$Rt), (ins addrmode3:$addr),
> +                             64, IIC_iLoad_d_r, []>,
> +               Requires<[IsARM, HasV5TE]>;
> +}
> +
>  def LDA : AIldracq<0b00, (outs GPR:$Rt), (ins addr_offset_none:$addr),
>                      NoItinerary, "lda", "\t$Rt, $addr", []>;
>  def LDAB : AIldracq<0b10, (outs GPR:$Rt), (ins addr_offset_none:$addr),
> @@ -2970,6 +2982,17 @@ let mayStore = 1, hasSideEffects = 0, hasExtraSrcRegAllocReq = 1 in {
>    }
>  }
>
> +let mayStore = 1, hasSideEffects = 0, hasNoSchedulingInfo = 1 in {
> +def STOREDUAL : ARMPseudoInst<(outs), (ins GPRPairOp:$Rt, addrmode3:$addr),
> +                              64, IIC_iStore_d_r, []>,
> +                Requires<[IsARM, HasV5TE]>;
> +}
> +
> +let Predicates = [IsARM, HasV5TE] in {
> +def : Pat<(ARMstrd GPR:$Rt, GPR:$Rt2, addrmode3:$addr),
> +          (STOREDUAL (REG_SEQUENCE GPRPair, GPR:$Rt, gsub_0, GPR:$Rt2, gsub_1), addrmode3:$addr)>;
> +}
> +
>  // Indexed stores
>  multiclass AI2_stridx<bit isByte, string opc,
>                        InstrItinClass iii, InstrItinClass iir> {
> diff --git a/llvm/lib/Target/ARM/ARMInstrThumb2.td b/llvm/lib/Target/ARM/ARMInstrThumb2.td
> index 7044c92a7f1..00921930e71 100644
> --- a/llvm/lib/Target/ARM/ARMInstrThumb2.td
> +++ b/llvm/lib/Target/ARM/ARMInstrThumb2.td
> @@ -270,7 +270,8 @@ def t2am_imm8_offset : MemOperand,
>
>  // t2addrmode_imm8s4  := reg +/- (imm8 << 2)
>  def MemImm8s4OffsetAsmOperand : AsmOperandClass {let Name = "MemImm8s4Offset";}
> -class T2AddrMode_Imm8s4 : MemOperand {
> +class T2AddrMode_Imm8s4 : MemOperand,
> +                          ComplexPattern<i32, 2, "SelectT2AddrModeImm8<2>", []> {
>    let EncoderMethod = "getT2AddrModeImm8s4OpValue";
>    let DecoderMethod = "DecodeT2AddrModeImm8s4";
>    let ParserMatchClass = MemImm8s4OffsetAsmOperand;
> @@ -1412,7 +1413,8 @@ let mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1 in {
>  // Load doubleword
>  def t2LDRDi8  : T2Ii8s4<1, 0, 1, (outs rGPR:$Rt, rGPR:$Rt2),
>                          (ins t2addrmode_imm8s4:$addr),
> -                        IIC_iLoad_d_i, "ldrd", "\t$Rt, $Rt2, $addr", "", []>,
> +                        IIC_iLoad_d_i, "ldrd", "\t$Rt, $Rt2, $addr", "",
> +                        [(set rGPR:$Rt, rGPR:$Rt2, (ARMldrd t2addrmode_imm8s4:$addr))]>,
>                   Sched<[WriteLd]>;
>  } // mayLoad = 1, hasSideEffects = 0, hasExtraDefRegAllocReq = 1
>
> @@ -1593,7 +1595,8 @@ defm t2STRH:T2I_st<0b01,"strh", IIC_iStore_bh_i, IIC_iStore_bh_si,
>  let mayStore = 1, hasSideEffects = 0, hasExtraSrcRegAllocReq = 1 in
>  def t2STRDi8 : T2Ii8s4<1, 0, 0, (outs),
>                         (ins rGPR:$Rt, rGPR:$Rt2, t2addrmode_imm8s4:$addr),
> -               IIC_iStore_d_r, "strd", "\t$Rt, $Rt2, $addr", "", []>,
> +               IIC_iStore_d_r, "strd", "\t$Rt, $Rt2, $addr", "",
> +               [(ARMstrd rGPR:$Rt, rGPR:$Rt2, t2addrmode_imm8s4:$addr)]>,
>                 Sched<[WriteST]>;
>
>  // Indexed stores
> diff --git a/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll b/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll
> new file mode 100644
> index 00000000000..7461d3651eb
> --- /dev/null
> +++ b/llvm/test/CodeGen/ARM/i64_volatile_load_store.ll
> @@ -0,0 +1,153 @@
> +; RUN: llc -mtriple=armv5e-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-ARMV5TE,CHECK
> +; RUN: llc -mtriple=thumbv6t2-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-T2,CHECK
> +; RUN: llc -mtriple=armv4t-arm-none-eabi %s -o - | FileCheck %s --check-prefixes=CHECK-ARMV4T,CHECK
> +
> +@x = common dso_local global i64 0, align 8
> +@y = common dso_local global i64 0, align 8
> +
> +define void @test() {
> +entry:
> +; CHECK-LABEL: test:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
> +; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
> +; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
> +; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
> +; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #4]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #4]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]]]
> +  %0 = load volatile i64, i64* @x, align 8
> +  store volatile i64 %0, i64* @y, align 8
> +  ret void
> +}
> +
> +define void @test_offset() {
> +entry:
> +; CHECK-LABEL: test_offset:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #-4]
> +; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
> +; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
> +; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
> +; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #-4]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #-4]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]]]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #-4]
> +  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 -4) to i64*), align 8
> +  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 -4) to i64*), align 8
> +  ret void
> +}
> +
> +define void @test_offset_1() {
> +; CHECK-LABEL: test_offset_1:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #255]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #255]
> +; CHECK-T2:           adds [[ADDR0:r[0-9]+]], #255
> +; CHECK-T2-NEXT:      adds [[ADDR1:r[0-9]+]], #255
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #255]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #259]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #259]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #255]
> +entry:
> +  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 255) to i64*), align 8
> +  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 255) to i64*), align 8
> +  ret void
> +}
> +
> +define void @test_offset_2() {
> +; CHECK-LABEL: test_offset_2:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #256
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
> +; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
> +; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
> +; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
> +; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
> +; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #256]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #256]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #256]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #260]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #260]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #256]
> +entry:
> +  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 256) to i64*), align 8
> +  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 256) to i64*), align 8
> +  ret void
> +}
> +
> +define void @test_offset_3() {
> +; CHECK-LABEL: test_offset_3:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #1020
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
> +; CHECK-ARMV5TE-NEXT: ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
> +; CHECK-T2:           movw [[ADDR0:r[0-9]+]], :lower16:x
> +; CHECK-T2-NEXT:      movw [[ADDR1:r[0-9]+]], :lower16:y
> +; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
> +; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1020]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]], #1020]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #1020]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1024]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #1024]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #1020]
> +entry:
> +  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 1020) to i64*), align 8
> +  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 1020) to i64*), align 8
> +  ret void
> +}
> +
> +define void @test_offset_4() {
> +; CHECK-LABEL: test_offset_4:
> +; CHECK-ARMV5TE:      ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: mov [[OFFSET0:r[0-9]+]], #1024
> +; CHECK-ARMV5TE-NEXT: ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]], [[OFFSET0]]]
> +; CHECK-ARMV5TE:      ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV5TE-NEXT: strd [[R0]], [[R1]], {{\[}}[[ADDR1]], [[OFFSET0]]]
> +; CHECK-T2:           movw [[ADDR1:r[0-9]+]], :lower16:y
> +; CHECK-T2-NEXT:      movw [[ADDR0:r[0-9]+]], :lower16:x
> +; CHECK-T2-NEXT:      movt [[ADDR1]], :upper16:y
> +; CHECK-T2-NEXT:      movt [[ADDR0]], :upper16:x
> +; CHECK-T2-NEXT:      add.w [[ADDR0]], [[ADDR0]], #1024
> +; CHECK-T2-NEXT:      add.w [[ADDR1]], [[ADDR1]], #1024
> +; CHECK-T2-NEXT:      ldrd [[R0:r[0-9]+]], [[R1:r[0-9]+]], {{\[}}[[ADDR0]]]
> +; CHECK-T2-NEXT:      strd [[R0]], [[R1]], {{\[}}[[ADDR1]]]
> +; CHECK-ARMV4T:       ldr [[ADDR0:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[ADDR1:r[0-9]+]]
> +; CHECK-ARMV4T-NEXT:  ldr [[R0:r[0-9]+]], {{\[}}[[ADDR0]], #1024]
> +; CHECK-ARMV4T-NEXT:  ldr [[R1:r[0-9]+]], {{\[}}[[ADDR0]], #1028]
> +; CHECK-ARMV4T-NEXT:  str [[R1]], {{\[}}[[ADDR1]], #1028]
> +; CHECK-ARMV4T-NEXT:  str [[R0]], {{\[}}[[ADDR1]], #1024]
> +entry:
> +  %0 = load volatile i64, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @x to i8*), i32 1024) to i64*), align 8
> +  store volatile i64 %0, i64* bitcast (i8* getelementptr (i8, i8* bitcast (i64* @y to i8*), i32 1024) to i64*), align 8
> +  ret void
> +}
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/788954858.6064.1576827210889.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D_nH_RDF2T_4ZZkDP_YDEeJh4Nmwwtf%2Bvs1-sXhsEidA%40mail.gmail.com.

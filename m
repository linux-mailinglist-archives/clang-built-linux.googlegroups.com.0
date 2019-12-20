Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVEO6TXQKGQE5R5EPQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B989128187
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 18:39:34 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id p206sf6509388iod.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 09:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576863573; cv=pass;
        d=google.com; s=arc-20160816;
        b=JejL+pk24uxJzTaRisELdAl38kPNPpVcPZ3j60so9g6UZrJqP2gIjcEeBRkXLfQMs9
         vDe0dxRL8+yA2EU3uDDfBytC5TpBpWGdOoKLoeoE/cogXji56ytNK6ZBePI/Gey6G2D6
         bZ8v1Cu5yN5Y6tRFwt/xoL2EoCYs8e/zZiE+Vp0b532rtmd9nDiFBqa/cpFxcUdyBO4t
         qkpnlrqmYaxjb0m+sgY91516VATeKmG69cS5T0FT+WuSZuRfJoQyZRm3DNQCJkG9GF4N
         VlL0eV/eIOQXYt4bmhFYSHeNbN1/TOUXVfmnifirLR/G0J4cL16OUIBZiB+7PGtMPndb
         SAfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=medcmfqnpbjOuUyvjO/MpCcZFscfOP/0lnxpqlyffUY=;
        b=fkvVd3ZJFcwuL8Cw8nuq2hmP7Op8Dypi4p9FG9LFqneIejFaap9ipctRGqTcufS7y2
         n3ORNwSdxo5nys+7qHO3XfPS31zp2GFnnrGUkxde3kXXKMP5J85UcXmlXR7jJWnSYo+n
         g5dhBdlxDm8diwT3xueTpJmHQY/iPzCqOIZvjume43HSg772ro4xbVhTv7mfmgYmYUW2
         SVmiQMlKJ8e4MvVPkhcSmsqJHzQI4WW+b9YgRsd3KmDJc8mlhHHqbvf53UZMXcxexGsO
         U/RnGtyiJ8CVKbru8kLYjsOCCqoFgvsCE/wp7pg8zubZjrSBt/qIivoqMVh3WwEFH+qC
         GgHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQCbWUDx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=medcmfqnpbjOuUyvjO/MpCcZFscfOP/0lnxpqlyffUY=;
        b=b3nMAkBTlr77hnbJnrXixEEOJaLVhkCUZ79zgFNbAuVkfuJJADIJpfgd+0TMh+i+0+
         +lCpUR2nti5F82PnnfFhGS1Kj0dUQEyiV591Z/xXkeRvu51hb521zAOJMf7KBY7KSAF1
         kLP38/KqmMOo5DUsTYtpp4CRZR5EBwWHWZ3wuq+OzLG94er5fIILNuhrIvRA5VZk5Lfl
         zBw06x2wZq5c7cOwpKVWjfW1S5SRScxRWwk7NMkHJa0b+ywCeCkUXtCKLC5venjJm6te
         AcvwtlqQlziCA0UmQEmwQ0bipyfO45jQKvJIi5wVm0lZPONQLJ5ERpYP95gOoQcTffZM
         EQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=medcmfqnpbjOuUyvjO/MpCcZFscfOP/0lnxpqlyffUY=;
        b=MzG36/TEpeGrq/32rYUlV+P82SU0umrptTDo1nHebz2KcsiAZdzjxwkXN6hHP/H1ir
         GZDrPlnP9zBtXaFqDXxzL8w3kBLz2nMSuRpx/qnUF1g/o/rxao6cxfyJD0H9dckDbVPE
         WH9F10yAvtHRsGEPHt9N+2asDMeJYFMh69LoStbqz4+k08wJFNzKL10HZyT8Tj8LQo/A
         Fbd0kFlAFi9zuju7Q8x+Gj0jHkGFCn3E9HhIUtB7/EsOdQaQh7A7pai1+Pt6SbDtbT1t
         R/aMlb4hvqAQnEao8v1k+vy/QBgSA46oA0DDTBLzJRPnJkQXFO5RWvYPgkYlTSeicrkq
         sDwA==
X-Gm-Message-State: APjAAAWUBzIvCynurmLebdz9lA1Fr29e2QLgqDszkpb+aidoVzowl2gP
	sJFe5GUYN0cdLKfv68o9aqw=
X-Google-Smtp-Source: APXvYqyCPqDcjm7D844hz7ljeH1Wd1e0MTphv8fc5gHsG/9jUahF4h1knVTA5gzTAq/eVCmQ4VNa1A==
X-Received: by 2002:a92:9e97:: with SMTP id s23mr14321383ilk.139.1576863572694;
        Fri, 20 Dec 2019 09:39:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:22c9:: with SMTP id e9ls1300102ioe.2.gmail; Fri, 20
 Dec 2019 09:39:32 -0800 (PST)
X-Received: by 2002:a05:6602:150:: with SMTP id v16mr11092086iot.289.1576863572262;
        Fri, 20 Dec 2019 09:39:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576863572; cv=none;
        d=google.com; s=arc-20160816;
        b=QLZWMM+7TH+Gd6EyCECJb3Gj6719hCqdvw6H2WNr0fpRtqt71pOUn56Nfmz+iacfdZ
         Pzn9g6YIt0kKR1gDc2Qn2UUjKURuzKMHqX+lpkdIaUrmGXSRsgoqApxvqZ3wHQbS68JM
         DBaT/1o5wGYcKrHP56xX0y5Fp8gEmPK3HAwq8m13+V0jKN7LFiI7GiUEadz3P83E0I81
         NGAitvTxg5jpnL3RceRt3fp2SMxFb1nUGRZvpWRBPJRQLR90i6c+Um2V12iyt5ycWX0X
         fStjV8O4UzP08z0cBlW3cIHsOCBIl1pmRL6JhHY2/nVvyfC33rm6oZk68iraue77Fkzl
         3Ndw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oA+Ap63CkTgoR5s0O93i1IHaA+opcRO3yK2zseACtFs=;
        b=DwN+OcF69IYDCpCPvFwSJyEehvXRgLm5a3A2QBSlNZpioduO992ShAtm3qesu5nS1j
         49KLZ3uh3MRtM5DsPSrScum74D8okY6u/N8XeygAxOgmeAnZAoY0T68IUO6e51E5pWf+
         nMSS/WzAwoIE7bSsp0wxLEbj44h/ia+nI8ISVgG3zjwNqdJm5qWClTnChvM4EzfBoyA1
         LGiRlKGnmICVTDfiHQEKhcPIO+gCX0mtCrRKoUaHhoR2+XhS1oaimsQwfQrg9V7aMj95
         PvSylcsczvQlDhfGAC0hIWNAPBzj8qCGpkUxNYq3aef7R+pi2TvpTKD352F8Z7OfOYFq
         Nk6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQCbWUDx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id j1si386435iom.2.2019.12.20.09.39.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 09:39:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id x8so5265421pgk.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 09:39:32 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr16513546pgi.263.1576863571067;
 Fri, 20 Dec 2019 09:39:31 -0800 (PST)
MIME-Version: 1.0
References: <87562456.6134.1576848916974.JavaMail.javamailuser@localhost>
In-Reply-To: <87562456.6134.1576848916974.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 09:39:19 -0800
Message-ID: <CAKwvOdnnCTTNi65KOMQO-rRaNgNyDYFSdiVBpynRQzjyxdSfjw@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - Build # 27 - Successful!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Linaro LLVM <llvm@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tQCbWUDx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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

On Fri, Dec 20, 2019 at 5:35 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
>  - tcwg_kernel/llvm-master-aarch64-lts-allyesconfig
>  - tcwg_kernel/llvm-master-aarch64-stable-allyesconfig
>
> Culprit:
> <cut>
> commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
> Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>
>
>     [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.


It looks like the kernel top level makefile is using cc-option-yn to
test whether the compiler supports this option:
 806   ifeq ($(call cc-option-yn,-mrecord-mcount),y)
 807     CC_FLAGS_FTRACE += -mrecord-mcount
which doesn't seem to work correctly when setting `-target aarch64-linux-gnu`.
Reported: https://reviews.llvm.org/D71627#1793006


> </cut>
>
> First few errors in logs of first_bad:
> 00:01:06 error: option '-mrecord-mcount' cannot be specified on this target
> 00:01:06 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
> 00:01:06 make[2]: *** [scripts/mod/devicetable-offsets.s] Error 1
> 00:01:07 error: option '-mrecord-mcount' cannot be specified on this target
> 00:01:07 error: option '-mrecord-mcount' cannot be specified without '-mfentry'
> 00:01:07 make[1]: *** [kernel/bounds.s] Error 1
> 00:01:07 make: *** [prepare0] Error 2
> 00:01:07 make[1]: *** [scripts/mod] Error 2
> 00:01:07 make: *** [scripts] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> rr[llvm_branch]="bce1cce6bf1286541c57690ab1129fbc02c60f93"
>
> Results regressed to (for first_bad == 2520bef865329d4c04e2de30c222ad0d5ad13ccc)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 19
>
> from (for last_good == a116f28a0d71c221c1dc023908b180beaf22799d)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 17560
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/build-2520bef865329d4c04e2de30c222ad0d5ad13ccc/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/build-a116f28a0d71c221c1dc023908b180beaf22799d/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
> cd investigate-llvm-2520bef865329d4c04e2de30c222ad0d5ad13ccc
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach 2520bef865329d4c04e2de30c222ad0d5ad13ccc
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach a116f28a0d71c221c1dc023908b180beaf22799d
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/27/consoleText
>
> Full commit:
> <cut>
> commit 2520bef865329d4c04e2de30c222ad0d5ad13ccc
> Author: Jonas Paulsson <paulsson@linux.vnet.ibm.com>
> Date:   Tue Dec 17 12:00:43 2019 -0800
>
>     [Clang FE, SystemZ]  Recognize -mrecord-mcount CL option.
>
>     Recognize -mrecord-mcount from the command line and add a function attribute
>     "mrecord-mcount" when passed.
>
>     Only valid on SystemZ (when used with -mfentry).
>
>     Review: Ulrich Weigand
>     https://reviews.llvm.org/D71627
> ---
>  clang/include/clang/Basic/CodeGenOptions.def |  1 +
>  clang/include/clang/Driver/Options.td        |  2 ++
>  clang/lib/CodeGen/CodeGenFunction.cpp        | 11 +++++++++++
>  clang/lib/Driver/ToolChains/Clang.cpp        |  3 +++
>  clang/lib/Frontend/CompilerInvocation.cpp    |  1 +
>  clang/test/CodeGen/mrecord-mcount.c          | 26 ++++++++++++++++++++++++++
>  6 files changed, 44 insertions(+)
>
> diff --git a/clang/include/clang/Basic/CodeGenOptions.def b/clang/include/clang/Basic/CodeGenOptions.def
> index c6700333c13..7f26ca8b4d6 100644
> --- a/clang/include/clang/Basic/CodeGenOptions.def
> +++ b/clang/include/clang/Basic/CodeGenOptions.def
> @@ -113,6 +113,7 @@ VALUE_CODEGENOPT(XRayInstructionThreshold , 32, 200)
>  CODEGENOPT(InstrumentForProfiling , 1, 0) ///< Set when -pg is enabled.
>  CODEGENOPT(CallFEntry , 1, 0) ///< Set when -mfentry is enabled.
>  CODEGENOPT(MNopMCount , 1, 0) ///< Set when -mnop-mcount is enabled.
> +CODEGENOPT(RecordMCount , 1, 0) ///< Set when -mrecord-mcount is enabled.
>  CODEGENOPT(PackedStack , 1, 0) ///< Set when -mpacked-stack is enabled.
>  CODEGENOPT(LessPreciseFPMAD  , 1, 0) ///< Enable less precise MAD instructions to
>                                       ///< be generated.
> diff --git a/clang/include/clang/Driver/Options.td b/clang/include/clang/Driver/Options.td
> index 2a72b87355d..86aee334436 100644
> --- a/clang/include/clang/Driver/Options.td
> +++ b/clang/include/clang/Driver/Options.td
> @@ -2477,6 +2477,8 @@ def mfentry : Flag<["-"], "mfentry">, HelpText<"Insert calls to fentry at functi
>    Flags<[CC1Option]>, Group<m_Group>;
>  def mnop_mcount : Flag<["-"], "mnop-mcount">, HelpText<"Generate mcount/__fentry__ calls as nops. To activate they need to be patched in.">,
>    Flags<[CC1Option]>, Group<m_Group>;
> +def mrecord_mcount : Flag<["-"], "mrecord-mcount">, HelpText<"Generate a __mcount_loc section entry for each __fentry__ call.">,
> +  Flags<[CC1Option]>, Group<m_Group>;
>  def mpacked_stack : Flag<["-"], "mpacked-stack">, HelpText<"Use packed stack layout (SystemZ only).">,
>    Flags<[CC1Option]>, Group<m_Group>;
>  def mips16 : Flag<["-"], "mips16">, Group<m_mips_Features_Group>;
> diff --git a/clang/lib/CodeGen/CodeGenFunction.cpp b/clang/lib/CodeGen/CodeGenFunction.cpp
> index 89ce31e9b45..6f7e06b773d 100644
> --- a/clang/lib/CodeGen/CodeGenFunction.cpp
> +++ b/clang/lib/CodeGen/CodeGenFunction.cpp
> @@ -968,6 +968,17 @@ void CodeGenFunction::StartFunction(GlobalDecl GD, QualType RetTy,
>              << "-mnop-mcount" << "-mfentry";
>          Fn->addFnAttr("mnop-mcount");
>        }
> +
> +      if (CGM.getCodeGenOpts().RecordMCount) {
> +        if (getContext().getTargetInfo().getTriple().getArch() !=
> +            llvm::Triple::systemz)
> +          CGM.getDiags().Report(diag::err_opt_not_valid_on_target)
> +            << "-mrecord-mcount";
> +        if (!CGM.getCodeGenOpts().CallFEntry)
> +          CGM.getDiags().Report(diag::err_opt_not_valid_without_opt)
> +            << "-mrecord-mcount" << "-mfentry";
> +        Fn->addFnAttr("mrecord-mcount");
> +      }
>      }
>    }
>
> diff --git a/clang/lib/Driver/ToolChains/Clang.cpp b/clang/lib/Driver/ToolChains/Clang.cpp
> index a79c96d25d9..6b93dc2939e 100644
> --- a/clang/lib/Driver/ToolChains/Clang.cpp
> +++ b/clang/lib/Driver/ToolChains/Clang.cpp
> @@ -4990,6 +4990,9 @@ void Clang::ConstructJob(Compilation &C, const JobAction &JA,
>    if (TC.SupportsProfiling())
>      Args.AddLastArg(CmdArgs, options::OPT_mnop_mcount);
>
> +  if (TC.SupportsProfiling())
> +    Args.AddLastArg(CmdArgs, options::OPT_mrecord_mcount);
> +
>    Args.AddLastArg(CmdArgs, options::OPT_mpacked_stack);
>
>    if (Args.getLastArg(options::OPT_fapple_kext) ||
> diff --git a/clang/lib/Frontend/CompilerInvocation.cpp b/clang/lib/Frontend/CompilerInvocation.cpp
> index d68244dce5c..93193edff9c 100644
> --- a/clang/lib/Frontend/CompilerInvocation.cpp
> +++ b/clang/lib/Frontend/CompilerInvocation.cpp
> @@ -1104,6 +1104,7 @@ static bool ParseCodeGenArgs(CodeGenOptions &Opts, ArgList &Args, InputKind IK,
>    Opts.InstrumentForProfiling = Args.hasArg(OPT_pg);
>    Opts.CallFEntry = Args.hasArg(OPT_mfentry);
>    Opts.MNopMCount = Args.hasArg(OPT_mnop_mcount);
> +  Opts.RecordMCount = Args.hasArg(OPT_mrecord_mcount);
>    Opts.PackedStack = Args.hasArg(OPT_mpacked_stack);
>    Opts.EmitOpenCLArgMetadata = Args.hasArg(OPT_cl_kernel_arg_info);
>
> diff --git a/clang/test/CodeGen/mrecord-mcount.c b/clang/test/CodeGen/mrecord-mcount.c
> new file mode 100644
> index 00000000000..eecee0e24cd
> --- /dev/null
> +++ b/clang/test/CodeGen/mrecord-mcount.c
> @@ -0,0 +1,26 @@
> +// RUN: %clang_cc1 -pg -mfentry -mrecord-mcount -triple s390x-ibm-linux -emit-llvm \
> +// RUN:   -o - %s 2>&1 | FileCheck  %s
> +// RUN: not %clang_cc1 -pg -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - \
> +// RUN:   %s 2>&1 | FileCheck -check-prefix=NOMFENTRY %s
> +// RUN: %clang_cc1 -mfentry -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - \
> +// RUN:   %s 2>&1 | FileCheck -check-prefix=NOPG %s
> +// RUN: %clang_cc1 -mrecord-mcount -triple s390x-ibm-linux -emit-llvm -o - %s \
> +// RUN:   2>&1 | FileCheck -check-prefix=NOPG %s
> +// RUN: not %clang_cc1 -pg -mfentry -mrecord-mcount -triple x86_64-linux-gnu \
> +// RUN:   -emit-llvm -o - %s 2>&1 | FileCheck -check-prefix=X86 %s
> +
> +int foo(void) {
> +  return 0;
> +}
> +
> +int __attribute__((no_instrument_function)) no_instrument(void) {
> +  return foo();
> +}
> +
> +//CHECK: attributes #0 = { {{.*}}"mrecord-mcount"{{.*}} }
> +//CHECK: attributes #1 = { {{.*}} }
> +//CHECK-NOT: attributes #1 = { {{.*}}"mrecord-mcount"{{.*}} }
> +//NOMFENTRY: error: option '-mrecord-mcount' cannot be specified without '-mfentry'
> +//NOPG-NOT: attributes #0 = { {{.*}}"mrecord-mcount"{{.*}} }
> +//NOPG-NOT: attributes #1 = { {{.*}}"mrecord-mcount"{{.*}} }
> +//X86: error: option '-mrecord-mcount' cannot be specified on this target
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87562456.6134.1576848916974.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnCTTNi65KOMQO-rRaNgNyDYFSdiVBpynRQzjyxdSfjw%40mail.gmail.com.

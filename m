Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKUL2TZQKGQEC236U3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E92E818D680
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 19:04:27 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id t19sf5064396pfq.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:04:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584727466; cv=pass;
        d=google.com; s=arc-20160816;
        b=c+0ldyB53qDbVSaEPcLX/DyPiRFPDWtaE2HpgsgwB4mk4NRaFijiU3/9bQ79ys3ajM
         xfYYHhSpGDUpVu3IJbw7zDDLckT3VphlcwnPgse4Q6HUAehc5S8usmLpfiAVbayHsQAc
         KLdU5WDE6PdO5YMFZ7ULOlQNCoxmmK0EoSbMWoccdc72FUMdTT3RbTZIHetY4QQJo7b+
         o8U7T0CgGnqWgecCbpbruQmbcx3GJ+4RhCZdaawA6jbhitn9qVjjgUeU95eQMgMyxpgA
         cjGYCNs2mE3tItcbxNnVRaUO7FUfY6ISJT1KPojev2+aXguJ9H51ngHjAhFlC8IbduoW
         fwDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nIr0YokB+rvrkGsZKIDc+kuV1wrflFQWBEZ6L6dkLMs=;
        b=uCjt6EnFiO5+dHBHMj4NJRTXhbJhdR6s7WpOxm7V0ymoJXvJyBBIPMKVFl+ApzMjS1
         avOqJDTJhTIsQk3995O+qyO6Dhe1E6Se/Y2fq+8VefBK2llUwK3aRM0jXxsWzm7xezqs
         hvemgPQERX2+xPJB6rExMNrEwe+Vgubv0ZnCTofn0WcsisnX99TdWaY8fOqIytHQknfs
         fkgfcUVCNAI3iIMCjocgcoig9JYAZkKYyYUSNV0zGJtlgr6cDUdNRM0uKpOt5+CSD6Ue
         e+aTLl0vz5ns3Zxn5YBdAl/Qk1y7PZXqAD8pFgpPACehQy6fpx1XtaIQ7UoaHIzFlXqB
         j81w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hbylBmW5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nIr0YokB+rvrkGsZKIDc+kuV1wrflFQWBEZ6L6dkLMs=;
        b=TCrylfeil8gcpaoRkwz0CGsWy7AoIJkrvc8mlZ1LY7W3NXrHd/rV6VDHls8lnkHbC7
         Muq5cSQm3IbnT3Jq6Xba9VVjwMvzTkMy5pQF938qGeLNIRBoUVZSE7DuMATtcU+98Hx0
         nqOg9EHJhnkSOXNLTxEhN4j8kAjxCXjWLsv8OTdK2+NgPAgI/43YdItNElVWfW8bTIOl
         1qsT3M+ve4zAnxjmQKDLzpLAEB9Ifyw8ZJ2Omhv4lFDjaCBX85FHXC0n4EZ4cm4zlBdz
         smn2pc4oaUdrjWibeeC77ssVuAdnV4Uu5ZwhtBecrAOiS9If2g3P/alD5sr6GoL4/M/A
         aiLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nIr0YokB+rvrkGsZKIDc+kuV1wrflFQWBEZ6L6dkLMs=;
        b=l5lJqFk49IFE+plaZ6dH3YUtB18pl967GtEd02hUAvdJGD4rJuPFOXVfMKt2qpsMmX
         LppB0RRUCcrfWD2CWjgAQ47Wi/XnQWGNJOICkNbzMlj9Dlej3S1yYYYFGoGXzCq3HEtx
         +LRlxJ/v2Yhd5PzBpQxijNg/1cuaZHGuYUMCS7XajeoEf1ntTSlHixs3AUVD/sontBLM
         YUjdFhy+vWG5oB8j/C6zoKLCv1soLGnSmQm3ws06IHODWfjisNKpnux14kuz//0ONds5
         pQPgilINM1qc9lhUB5Bk0AYqW7Ql+cgI0i6Oy8v9Mks2pFWlnaDdlXzzlvKnCmZPLFRy
         tGsg==
X-Gm-Message-State: ANhLgQ1JEKLJM9cywN/kueICrDWl162LAMaNRkW1uqJ6XJvAl+uJLYJ4
	vGyjuepzZWIQD3M1k67lxt8=
X-Google-Smtp-Source: ADFU+vtRfi3GM2e7XW6+JjSEx+yKEfRhn6Rweu44tMvO92RwOXl2z8NCpFF5uvMwndOFS2jnGIytFg==
X-Received: by 2002:a62:778d:: with SMTP id s135mr11496316pfc.21.1584727466605;
        Fri, 20 Mar 2020 11:04:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls3577133plr.11.gmail; Fri, 20
 Mar 2020 11:04:26 -0700 (PDT)
X-Received: by 2002:a17:90b:3793:: with SMTP id mz19mr11168117pjb.194.1584727466104;
        Fri, 20 Mar 2020 11:04:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584727466; cv=none;
        d=google.com; s=arc-20160816;
        b=Xc7QwcUJyL4SGdHrh3lsMk9XrGkM4+/N7xL1Lq8NXLa2jjrs93eJ8FYsswhR6W0mMB
         JaJfp7/+R+vpaU5nbVLIgwu85skY4GDy9sqc5jdQLh6c1eME8fZMVG/VSF4Q862LTXd/
         jtqvqFxRngoqJfimhDWotIhsSFR4B4Lk3Z8glLbikyYPHy1spfXTANRG/PhJegyHsy4Q
         npzNfF+DRiLeXeJHU2zejrZ+tzQ41sSNd6aChgHP7K3iGz/acQyAbZRefQwExiUf84/l
         akOstMQ6Q9gqfJaGGfMDlumkEi4D4mlDHTlPkDgu5HBKSHSJcK45KKZ97VNnS6LXWDDl
         1wCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hQtJoEJDeQX58h2SBIoHY6m1Vcxe1Pf6A1X0ObeS8lM=;
        b=J36oshFqKaqnP5u4IdndZTe+oE+PfrUSv8s2e8tgwc9KaEqIcQ6raBI+yMi9M/Pd00
         dW9RO0EwfOFR+JsvPLLDlg/Esn0b4uNLBXtXhUvxXWMCpjtaQK/NZQgYsdUPYlnTMlg4
         oB9Jxi6AzbjiBX7f5vBkb8DebYhYYjJsNe5GHCV3pkB2pr4cI2VWa1Lf+xrIzDkHwAUW
         G8+sRKEl+vF2pQVR1BxBRItiF9u5oJw1WWHwsbSwtzPJLKQPbVUMP5KHrtNIpOoNmN/F
         CJIj7HnUzmL0hmscxKRZR7u/uIj7KmDo+OGiAqSAmI2jgwMBY1BOIsuCrm768CCDjED4
         NQfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hbylBmW5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a13si190991pfc.3.2020.03.20.11.04.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:04:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id m15so3458867pgv.12
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 11:04:26 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr9270492pgk.381.1584727461833;
 Fri, 20 Mar 2020 11:04:21 -0700 (PDT)
MIME-Version: 1.0
References: <2012402536.10826.1584727375244.JavaMail.javamailuser@localhost>
In-Reply-To: <2012402536.10826.1584727375244.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 11:04:10 -0700
Message-ID: <CAKwvOdnZPODVkmdwMFHzZUY4L4avXFCoj8aaxkX_-ys9FxS+YQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
 - Build # 39 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hbylBmW5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

I sent a fix for this yesterday, it's been accepted by one of the
arm64 maintainers:
https://lore.kernel.org/linux-arm-kernel/20200319181951.102662-1-ndesaulniers@google.com/T/#u

On Fri, Mar 20, 2020 at 11:02 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-next-defconfig
>  - tcwg_kernel/llvm-release-aarch64-next-defconfig
>
> Culprit:
> <cut>
> commit 74afda4016a7437e6e425c3370e4b93b47be8ddf
> Author: Kristina Martsenko <kristina.martsenko@arm.com>
>
>     arm64: compile the kernel with ptrauth return address signing
> </cut>
>
> First few build errors in logs:
> 00:00:32 clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
> 00:00:32 make[1]: *** [arch/arm64/kernel/vdso/vgettimeofday.o] Error 1
> 00:00:32 make: *** [vdso_prepare] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="08120d236c47dd2bdb6f7366782f4756dd7f417e"
>
> Results regressed to (for first_bad == 74afda4016a7437e6e425c3370e4b93b47be8ddf)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 25
>
> from (for last_good == c2d920bf1fffc3a61cb77db24464caf39496b32d)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 6262
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/build-74afda4016a7437e6e425c3370e4b93b47be8ddf/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/build-c2d920bf1fffc3a61cb77db24464caf39496b32d/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf
> cd investigate-linux-74afda4016a7437e6e425c3370e4b93b47be8ddf
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 74afda4016a7437e6e425c3370e4b93b47be8ddf
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach c2d920bf1fffc3a61cb77db24464caf39496b32d
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-defconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/39/consoleText
>
> Full commit:
> <cut>
> commit 74afda4016a7437e6e425c3370e4b93b47be8ddf
> Author: Kristina Martsenko <kristina.martsenko@arm.com>
> Date:   Fri Mar 13 14:35:03 2020 +0530
>
>     arm64: compile the kernel with ptrauth return address signing
>
>     Compile all functions with two ptrauth instructions: PACIASP in the
>     prologue to sign the return address, and AUTIASP in the epilogue to
>     authenticate the return address (from the stack). If authentication
>     fails, the return will cause an instruction abort to be taken, followed
>     by an oops and killing the task.
>
>     This should help protect the kernel against attacks using
>     return-oriented programming. As ptrauth protects the return address, it
>     can also serve as a replacement for CONFIG_STACKPROTECTOR, although note
>     that it does not protect other parts of the stack.
>
>     The new instructions are in the HINT encoding space, so on a system
>     without ptrauth they execute as NOPs.
>
>     CONFIG_ARM64_PTR_AUTH now not only enables ptrauth for userspace and KVM
>     guests, but also automatically builds the kernel with ptrauth
>     instructions if the compiler supports it. If there is no compiler
>     support, we do not warn that the kernel was built without ptrauth
>     instructions.
>
>     GCC 7 and 8 support the -msign-return-address option, while GCC 9
>     deprecates that option and replaces it with -mbranch-protection. Support
>     both options.
>
>     Clang uses an external assembler hence this patch makes sure that the
>     correct parameters (-march=armv8.3-a) are passed down to help it recognize
>     the ptrauth instructions.
>
>     Ftrace function tracer works properly with Ptrauth only when
>     patchable-function-entry feature is present and is ensured by the
>     Kconfig dependency.
>
>     Cc: Catalin Marinas <catalin.marinas@arm.com>
>     Cc: Will Deacon <will@kernel.org>
>     Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
>     Reviewed-by: Kees Cook <keescook@chromium.org>
>     Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com> # not co-dev parts
>     Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>     Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>     Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
>     [Amit: Cover leaf function, comments, Ftrace Kconfig]
>     Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>     Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/Kconfig  | 24 +++++++++++++++++++++++-
>  arch/arm64/Makefile | 11 +++++++++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 115ceea0293e..155041a5f0e4 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1499,6 +1499,8 @@ config ARM64_PTR_AUTH
>         bool "Enable support for pointer authentication"
>         default y
>         depends on !KVM || ARM64_VHE
> +       depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
> +       depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
>           Pointer authentication (part of the ARMv8.3 Extensions) provides
>           instructions for signing and authenticating pointers against secret
> @@ -1506,11 +1508,17 @@ config ARM64_PTR_AUTH
>           and other attacks.
>
>           This option enables these instructions at EL0 (i.e. for userspace).
> -
>           Choosing this option will cause the kernel to initialise secret keys
>           for each process at exec() time, with these keys being
>           context-switched along with the process.
>
> +         If the compiler supports the -mbranch-protection or
> +         -msign-return-address flag (e.g. GCC 7 or later), then this option
> +         will also cause the kernel itself to be compiled with return address
> +         protection. In this case, and if the target hardware is known to
> +         support pointer authentication, then CONFIG_STACKPROTECTOR can be
> +         disabled with minimal loss of protection.
> +
>           The feature is detected at runtime. If the feature is not present in
>           hardware it will not be advertised to userspace/KVM guest nor will it
>           be enabled. However, KVM guest also require VHE mode and hence
> @@ -1522,6 +1530,20 @@ config ARM64_PTR_AUTH
>           but with the feature disabled. On such a system, this option should
>           not be selected.
>
> +         This feature works with FUNCTION_GRAPH_TRACER option only if
> +         DYNAMIC_FTRACE_WITH_REGS is enabled.
> +
> +config CC_HAS_BRANCH_PROT_PAC_RET
> +       # GCC 9 or later, clang 8 or later
> +       def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
> +
> +config CC_HAS_SIGN_RETURN_ADDRESS
> +       # GCC 7, 8
> +       def_bool $(cc-option,-msign-return-address=all)
> +
> +config AS_HAS_PAC
> +       def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
> +
>  endmenu
>
>  menu "ARMv8.5 architectural features"
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index dca1a97751ab..f15f92ba53e6 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -65,6 +65,17 @@ stack_protector_prepare: prepare0
>                                         include/generated/asm-offsets.h))
>  endif
>
> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
> +# compiler to generate them and consequently to break the single image contract
> +# we pass it only to the assembler. This option is utilized only in case of non
> +# integrated assemblers.
> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> +KBUILD_CFLAGS += $(branch-prot-flags-y)
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS        += -mbig-endian
>  CHECKFLAGS     += -D__AARCH64EB__
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2012402536.10826.1584727375244.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZPODVkmdwMFHzZUY4L4avXFCoj8aaxkX_-ys9FxS%2BYQ%40mail.gmail.com.

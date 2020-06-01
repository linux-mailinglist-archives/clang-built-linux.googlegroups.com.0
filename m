Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ4O2X3AKGQEAC6MUWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id A37911EABAE
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 20:21:56 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id z2sf135024ual.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 11:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591035715; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgpPLK/kE7uFIV0i8dhXMMv0aV6uclZf6e66TSGjdXnQld5kKTTyvfhcFs8uAZTwOY
         /wLcl1/J8YNWj2od71LRJld591f/ts9lP1DWaUn+vffSIUTEZFgj42Lw2Aujmz1BUTNF
         PzxnazGwODWjCcRgVMZZ5V6o7hrMHn0XBMhqC4a1YuGuhCWUQIPqVs3teReHl+Z8dXSz
         Pwz94wpv2/nbYcUnYuIE0tN44espNsCktBeRzT8Q4Unw60D/5JQkDhb0cwTlhPBPUykE
         KsgDR6B0h/NG4+9oqnxqaIMqbIFLq8cp+eHqaEspDUclAHRfZ7fSfu6o3bbl4FlohAQ1
         FfpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WFlFMBaW9ftst3y1/Mrvb1gub3aXD4mK0HUVH6AALz8=;
        b=gMVIHzV6MqlUL+oio50x8iN1w4QPCIcuJR4/XHVuYxp/oi3NvUaYw2M4dQS4PNkR3E
         kdGtcAJCq4LQy2t7Fk+lPgnWT6jEhoyTNBTaFoB+cT7L9uGwmBanNQ8AUuVamLlapzlf
         2nRiKFJycWW9zmNhuPjom1yuHDP260DFSyhnHXrMSzbCbaE9H+9PIwyLp/Xo2UM99u68
         Irj3d88upT/4P4BDRlK1ZllDWYcSsUm6cVMJbZbHJlnAVqJ3psYWV3A+RJ8EokCgUCjd
         HoT4pJKI6NUIW8N9mPbmpIzhu6kK5uHQBLh9qZw/G/hNVTevLL5KkpsTRrSNi/0biJqb
         a9zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBxChy93;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WFlFMBaW9ftst3y1/Mrvb1gub3aXD4mK0HUVH6AALz8=;
        b=dfMTYxk21iOJ1thhXN6AOGLR8DdvE2TS2Pl0Egs8n3YhA5bXmvcLDw6QEEV5NbSIIk
         vzy+QmSGqb+Sgf6WqbuctDGzK9XS5nJZ4VIxC5UOMIbtJH8rTGCmtXMpWiB4BIK7fxFf
         okVG6dHYYKqfrcxU4mGXD3omfGTJ5uOhU7RQg9Un5pMP96tCb6M+535mXVbLviFEhDXH
         V3nyW7TsRMcVhCRPp48T4hhd04OWYlxca8FJZMJSMwpDE/IyMbGmVr/WkT6n7MtL4B4P
         EeX2O+BX58tdMz0PcuFLanLFzyvRFvuY9zLSUgH8aqjF8lHVGURjdzb05rKlcgwg4Ffw
         Dplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WFlFMBaW9ftst3y1/Mrvb1gub3aXD4mK0HUVH6AALz8=;
        b=bljIB+HG/BVs7OzB1AB4Lh0fdxVZ81gmhHHytIWC1kIv7q97lf/RSma1T7+1gNn++v
         SlQLMFJ0gjWGDZZrY60k3yCeO0+N1TkjWy+EQMkWvL52oiKsjz1/AWrQtj4VkBn2sZvb
         mauN84yBIaG8SLHBFf0fab2A84K7xUnKzM65vF/hyk/9PKf5suOB1rcIRfh9k9LPE2Om
         pTxqA5aLiB3iVeFlDXcmrVc4RZ9LSKHkbOvjN6Wa0gkiL0TvG+y6MaNq9lbYDhigYQx6
         KKCMai1bemrqHBx39F8owCAmhratQjQxmzVkeFyaY2k56Dk3RQ/4f15oh2gY3SHLNxhX
         zCQQ==
X-Gm-Message-State: AOAM533cz9dMdpErxjmiHFgzk9Yzc2imh6HxGm7yFWhy/rdZ9H9nlhEe
	1Tk1tpVymD4jFF22Q/BXbfM=
X-Google-Smtp-Source: ABdhPJxKkTyhpOWe+BTJir8vQUjp9om7uCy32yMg+2tPvSrIAveUYNmGDGJ9gYMQuzyG+hpI32yogw==
X-Received: by 2002:a67:318d:: with SMTP id x135mr2567885vsx.10.1591035715249;
        Mon, 01 Jun 2020 11:21:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:74c8:: with SMTP id f8ls979362uaq.1.gmail; Mon, 01 Jun
 2020 11:21:54 -0700 (PDT)
X-Received: by 2002:ab0:408:: with SMTP id 8mr5765834uav.53.1591035714854;
        Mon, 01 Jun 2020 11:21:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591035714; cv=none;
        d=google.com; s=arc-20160816;
        b=sZXNF0SYCOani68sxje6RBYJN//zhMQ5GQy7trV7qcjlQ+EK6CSMxxlA89UsJ8wIdv
         xSRP91HJpAxeFDwztDi4eQFCkdNvyjhFeWbrLjdE8PkYS1o2a3EWTRDsqaa6Dvi1G027
         byiG3mwp3HobLPSbUWDbMbGbH3e2U30dWNT+ystlJywuBoo2AdqHoqkuBVt4FYlrUZXx
         I2aPH/8SuXVbXku8L/xegNkvzvkUpnrgW88sPzYpgs4LXQNYeka4+X82mlrTBjIKuY83
         j1f4bkmMOptKJSOxr35Wk0lBKndksEBJOwbCUzCprEjJ8h95ZdSumm+t5EfMcCaIP+ME
         EJ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MnR3HRPKWGRkOxqLDril4aiVOa7VNnkC9VLqUjKsz/E=;
        b=U/tG70k7vEvQtvhrF2ifsMSI1EgH2hrQY13TNuo/GBxWpwOOwAUiyWwWj9Z+IabAEa
         LQ+GLFHQ3AvhYtWDtaBjtvtaZZ7RfuIgC+nkMLJfWUDpdTNmlsCggRfodYzs+US6W1k8
         RUkM5PecWeHZNH2rsOyIQITKLLpbWH6LcDnmWq4mNEomfIb4HkCjRR6e6sbgXO5+CFbN
         L1FBGMGL/e3gqNk3pGQEYO/UkJ6vxLRD6AvbmCY/R6xzrKeL25pnUmA/w7nlNu4IhRxo
         bacgEOoCLP16fTL2/46nmbfns4cTKaEJNPjAJfFormBsKd/zOaJI+AzcdKF2IkCJ2g3x
         dqFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBxChy93;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id q20si12795uas.1.2020.06.01.11.21.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 11:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id p30so3862623pgl.11
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 11:21:54 -0700 (PDT)
X-Received: by 2002:a63:4f09:: with SMTP id d9mr19755709pgb.10.1591035713549;
 Mon, 01 Jun 2020 11:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <895269119.532.1590801549392.JavaMail.javamailuser@localhost> <356077820.975.1591016024123.JavaMail.javamailuser@localhost>
In-Reply-To: <356077820.975.1591016024123.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Jun 2020 11:21:41 -0700
Message-ID: <CAKwvOdkdUbJMDQU6NTFxK=qQ4mML3TrpjiYwJS9h0WhBXkd1Eg@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allnoconfig
 - Build # 2 - Fixed!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CBxChy93;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529
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

On Mon, Jun 1, 2020 at 5:53 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/gnu-master-aarch64-next-allnoconfig
>  - tcwg_kernel/gnu-release-aarch64-next-allnoconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allnoconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allnoconfig
>
> Culprit:
> <cut>
> commit ab7876a98a2160092133de4c648e94b18bc3f139
> Author: Dave Martin <Dave.Martin@arm.com>
>
>     arm64: elf: Enable BTI at exec based on ELF program properties

so bisection converged on a linux-next patch from march.

> </cut>
>
> Results regressed to (for first_bad == ab7876a98a2160092133de4c648e94b18bc3f139)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 23
> # First few build errors in logs:
> # 00:00:30 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'

I can't reproduce this precise failure.
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71 clean
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71 allnoconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71
...
aarch64-linux-gnu-ld: kernel/smp.o: in function `flush_smp_call_function_queue':
smp.c:(.text+0x208): undefined reference to `irq_work_single'
smp.c:(.text+0x208): relocation truncated to fit: R_AARCH64_CALL26
against undefined symbol `irq_work_single'
( and I get the same failure when using LLVM=1 rather than CC=clang ).

I get the same failure with GCC, so looks like this isn't specific to
clang; allnoconfig is broken for arm64 on -next.

> # 00:00:30 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
> # 00:00:30 make: *** [prepare0] Error 2
>
> from (for last_good == fe0f67660ee9c99408be5261ae045f8b41953b05)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 453
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of last_good build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/build-fe0f67660ee9c99408be5261ae045f8b41953b05/
> Artifacts of first_bad build: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/build-ab7876a98a2160092133de4c648e94b18bc3f139/
> Build top page/logs: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/
>
> Configuration details:
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="75caf310d16cc5e2f851c048cd597f5437013368"
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139
> cd investigate-linux-ab7876a98a2160092133de4c648e94b18bc3f139
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/test.sh --fail
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach ab7876a98a2160092133de4c648e94b18bc3f139
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach fe0f67660ee9c99408be5261ae045f8b41953b05
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allnoconfig
>
> Artifacts: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/artifact/artifacts/
> Build log: https://ci.linaro.org/jenkins/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/2/consoleText
>
> Full commit:
> <cut>
> commit ab7876a98a2160092133de4c648e94b18bc3f139
> Author: Dave Martin <Dave.Martin@arm.com>
> Date:   Mon Mar 16 16:50:47 2020 +0000
>
>     arm64: elf: Enable BTI at exec based on ELF program properties
>
>     For BTI protection to be as comprehensive as possible, it is
>     desirable to have BTI enabled from process startup.  If this is not
>     done, the process must use mprotect() to enable BTI for each of its
>     executable mappings, but this is painful to do in the libc startup
>     code.  It's simpler and more sound to have the kernel do it
>     instead.
>
>     To this end, detect BTI support in the executable (or ELF
>     interpreter, as appropriate), via the
>     NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
>     flags for the process' executable pages to include PROT_BTI as
>     appropriate.
>
>     Signed-off-by: Mark Brown <broonie@kernel.org>
>     Signed-off-by: Dave Martin <Dave.Martin@arm.com>
>     Reviewed-by: Kees Cook <keescook@chromium.org>
>     Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/Kconfig           |  3 +++
>  arch/arm64/include/asm/elf.h | 50 ++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/process.c  | 19 +++++++++++++++++
>  include/uapi/linux/elf.h     |  6 ++++++
>  4 files changed, 78 insertions(+)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 0b30e884e088..8a15bc68dadd 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -9,6 +9,7 @@ config ARM64
>         select ACPI_MCFG if (ACPI && PCI)
>         select ACPI_SPCR_TABLE if ACPI
>         select ACPI_PPTT if ACPI
> +       select ARCH_BINFMT_ELF_STATE
>         select ARCH_CLOCKSOURCE_DATA
>         select ARCH_HAS_DEBUG_VIRTUAL
>         select ARCH_HAS_DEVMEM_IS_ALLOWED
> @@ -33,6 +34,7 @@ config ARM64
>         select ARCH_HAS_SYSCALL_WRAPPER
>         select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
>         select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
> +       select ARCH_HAVE_ELF_PROT
>         select ARCH_HAVE_NMI_SAFE_CMPXCHG
>         select ARCH_INLINE_READ_LOCK if !PREEMPTION
>         select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
> @@ -62,6 +64,7 @@ config ARM64
>         select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
>         select ARCH_KEEP_MEMBLOCK
>         select ARCH_USE_CMPXCHG_LOCKREF
> +       select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
>         select ARCH_USE_QUEUED_RWLOCKS
>         select ARCH_USE_QUEUED_SPINLOCKS
>         select ARCH_SUPPORTS_MEMORY_FAILURE
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index b618017205a3..4f00d50585a4 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -114,7 +114,11 @@
>
>  #ifndef __ASSEMBLY__
>
> +#include <uapi/linux/elf.h>
>  #include <linux/bug.h>
> +#include <linux/errno.h>
> +#include <linux/fs.h>
> +#include <linux/types.h>
>  #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
>
>  typedef unsigned long elf_greg_t;
> @@ -224,6 +228,52 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
>
>  #endif /* CONFIG_COMPAT */
>
> +struct arch_elf_state {
> +       int flags;
> +};
> +
> +#define ARM64_ELF_BTI          (1 << 0)
> +
> +#define INIT_ARCH_ELF_STATE {                  \
> +       .flags = 0,                             \
> +}
> +
> +static inline int arch_parse_elf_property(u32 type, const void *data,
> +                                         size_t datasz, bool compat,
> +                                         struct arch_elf_state *arch)
> +{
> +       /* No known properties for AArch32 yet */
> +       if (IS_ENABLED(CONFIG_COMPAT) && compat)
> +               return 0;
> +
> +       if (type == GNU_PROPERTY_AARCH64_FEATURE_1_AND) {
> +               const u32 *p = data;
> +
> +               if (datasz != sizeof(*p))
> +                       return -ENOEXEC;
> +
> +               if (system_supports_bti() &&
> +                   (*p & GNU_PROPERTY_AARCH64_FEATURE_1_BTI))
> +                       arch->flags |= ARM64_ELF_BTI;
> +       }
> +
> +       return 0;
> +}
> +
> +static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
> +                                  struct file *f, bool is_interp,
> +                                  struct arch_elf_state *state)
> +{
> +       return 0;
> +}
> +
> +static inline int arch_check_elf(void *ehdr, bool has_interp,
> +                                void *interp_ehdr,
> +                                struct arch_elf_state *state)
> +{
> +       return 0;
> +}
> +
>  #endif /* !__ASSEMBLY__ */
>
>  #endif
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 00626057a384..b8e3faa8d406 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -11,6 +11,7 @@
>
>  #include <linux/compat.h>
>  #include <linux/efi.h>
> +#include <linux/elf.h>
>  #include <linux/export.h>
>  #include <linux/sched.h>
>  #include <linux/sched/debug.h>
> @@ -18,6 +19,7 @@
>  #include <linux/sched/task_stack.h>
>  #include <linux/kernel.h>
>  #include <linux/lockdep.h>
> +#include <linux/mman.h>
>  #include <linux/mm.h>
>  #include <linux/stddef.h>
>  #include <linux/sysctl.h>
> @@ -654,3 +656,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
>         if (system_capabilities_finalized())
>                 preempt_schedule_irq();
>  }
> +
> +#ifdef CONFIG_BINFMT_ELF
> +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> +                        bool has_interp, bool is_interp)
> +{
> +       if (is_interp != has_interp)
> +               return prot;
> +
> +       if (!(state->flags & ARM64_ELF_BTI))
> +               return prot;
> +
> +       if (prot & PROT_EXEC)
> +               prot |= PROT_BTI;
> +
> +       return prot;
> +}
> +#endif
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 20900f4496b7..c6dd0215482e 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -448,4 +448,10 @@ typedef struct elf64_note {
>    Elf64_Word n_type;   /* Content type */
>  } Elf64_Nhdr;
>
> +/* .note.gnu.property types for EM_AARCH64: */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_AND     0xc0000000
> +
> +/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI     (1U << 0)
> +
>  #endif /* _UAPI_LINUX_ELF_H */
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/356077820.975.1591016024123.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdUbJMDQU6NTFxK%3DqQ4mML3TrpjiYwJS9h0WhBXkd1Eg%40mail.gmail.com.

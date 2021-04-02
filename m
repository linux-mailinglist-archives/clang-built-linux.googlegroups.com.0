Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2HOTWBQMGQEWQAAZ4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E50D35300B
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 21:58:33 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id v124sf4793453ooa.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 12:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617393512; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jtq5ptehHQv8CtRIycMLrFZ892spSeD32D+0+sE8lmWMoOHpqLH41VvEB9sWrFqYC0
         xL63A9p2jYBfSvjtArzEqwRGZjl1Umgu63umRMlotPO6lVzL5jN4hZYrzL0nheeQ5fFG
         Jl8xryM7KFl61MTDf/GbCFJ1X/xUXnt1pn9ICKMtsmFwpNchkphX8dEYfIBRZZqRZyi6
         Ae6Swfp+4nDkrDFHT4uFcmyuJeYJdyogDTMqyxvG8gIdVGannUD/WZybtNKMIk7o9p+t
         R8jtstgSrAAfrO5JQXc9SemgQ1Iab/PP2KiNEmRh3zdkCHQjzE6CcYU0LYeZCd61JTr8
         O4zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TY9olenOtp/ludPE4EiFJMhyKml2X7aB0fjoO9svttE=;
        b=COAqiVMz52wVK6HQR1eA4LWke1ElrwnFuFft90Bx8aCKiuGy+g4G4JB3r+v8tiAshm
         4/pU2J0O9vyosVTF+K570Q8TNvn+6mBmRBwT8OzEdcOSuf0gm0DI3iNGaTltJfFJhxhp
         M5ue/zEGwhkPuXFw8mcvw8X08l0cA1mtLssFbOxg5/9Az79y6bbWefPUiKT3bbKgrOfw
         969jRmmRWuO14qCQ7oYamocAWn7LWYStBZojAVEs5CX9CRGGnw1iVjk5gjB3+Sy7Xd9k
         9uJjGWA8K7Ee3Rx1FklGJgGvXiCikVolX4a/LBKrgc6e05HXAB4BiNoF9lBEuRRDaMfW
         +cWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ghy83sUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TY9olenOtp/ludPE4EiFJMhyKml2X7aB0fjoO9svttE=;
        b=aL4lZxR6an98YOqiybXgWx2xHcWFCcNbhq3EU6qYWyp5f8YNbvsHpBZT+ZpMJ+FW3i
         JYxQPLFuSvtH6VvjGHA+vXkjcwB26W1DACtu2ct8VUNvg5Gr+DCP0jAIqH0SFwFnAwTL
         8xgdwmgU9QvfPFclbHRVQT4KZmVRc0BnYOPUtTEPdw8kpUBK9PHUZIujZPVWxG7TppAC
         bLj78Wa9rnlogfYgdInzKmb9fopcz8T7znzfbPd8dp6rAmMqZ89nVPnVqrnewN3Acpcc
         Dvv9FhaKwUndHIUVdPPOHkkvzG2Ip236oPMCP7dqwWjA0I6pM/3nJS4F6ipzp2wicF0s
         D0kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TY9olenOtp/ludPE4EiFJMhyKml2X7aB0fjoO9svttE=;
        b=r34gr6qu06ttABns1LbdXIvsvyUbVGBxjWspFxrv5/zOuHyoNaciEeg/zDbvHs6Ul+
         4xtZMARpZAc3R85nUoAb/gA1DSycb0ZlgQsMnXCQFzOrZ3kQc3AQSj2imDdvX7OPHxPq
         dTCrvRH8N9beCEeDqYjm/cHqHO1iFRNvRX871KuM7K889xbaLWml074jMuBdWy2WVLeQ
         +2Dw8pyZOExrh59WnTRQlMrxHf/WCGULls/oDkf3x94qZLJJWf4eZqyuqZf+xl9LH9/x
         lEHbgaHMOV0M4ip4hlbrq0lKsepISoUZ9mhADnBUlKAX0XeoLXi7T4RAmdPOCJ5aAF/Z
         I3bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532c1PEdC+J4xsirtDnqDNoayDPkmQPlrN5Kt9dKOQR+WMrIkJRt
	fel0/42IBgEqOMJy78iJC4M=
X-Google-Smtp-Source: ABdhPJyjWBioSe39BK0YbnRbAD1P72RjhOkoXIcJ8jXpACejc4RvUf6hIZb6o43Q7gD5BNut0uS0qw==
X-Received: by 2002:a4a:e4c4:: with SMTP id w4mr13135400oov.68.1617393512151;
        Fri, 02 Apr 2021 12:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls2331081oti.1.gmail; Fri, 02 Apr
 2021 12:58:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1515:: with SMTP id k21mr12340899otp.269.1617393511802;
        Fri, 02 Apr 2021 12:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617393511; cv=none;
        d=google.com; s=arc-20160816;
        b=dQ0rgG5urYbtmQ/81IamoD1l1Pe+5ENdF6N4QEI/17+j1bvUyHUzF/FNcMRkbudYE+
         hNECzI/SZYtdwD4oofjMATSbWKJCpQRcjoTID0KXCOJf9+zzoj22HVumlq+MvRW4CQF5
         4iFXqvd7Iah0lyNxmHRTAygXe3AIelKfzF9QJsS0vtDIIXo0UmTJWTy5/duoHcqBo1V3
         IBg9jqqXRz4h7Jze54arNWqBUMCDxnVOlMj03WHO93+MvC6GMLOGIl1xSGK2Tb2OPTFW
         Hm3AKLA9+2iHkTJWKzDaWWrzg+MEbe9P9q0Dyf47p5dZ7vton81CtCkJqpXCwULrZ+mB
         91Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/GZjbPF66gKKV78eCJzwVNuJFGl2FYmpMNdB6nr8q4c=;
        b=Y+J3aqncnTDZFdVnyHKet/0QpaNCxG9pqAqxCd9UgpX9cA1n5KFmffaCrfAhmHLdIf
         UeBTJj1byuuPPCGsBDVb6giwasru1C30/9mXFmQfP1UKUcF7FAg/ILtUgqM6u6+ZVZxn
         gI/I9/6/dsE3OV1evu7dJ1meyPuIKEbdj3OhtJ7pLCgsMVMmlTogsUWvJLR1KkLpNb/Z
         XEwdSEJdYXTKRnl4KXk8nRKQGlbY6ZnENwdlGK9vDdi44xGd07BgQrD95twlF7bsJkkq
         7CBBNsdjvPJoVqnsy+zD5TOvPOrtYygJYjbZOwfiez/j59af64fTceLgeQH5jOvb3eOG
         FC+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ghy83sUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h5si945822otk.1.2021.04.02.12.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 12:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D2936100A;
	Fri,  2 Apr 2021 19:58:26 +0000 (UTC)
Date: Fri, 2 Apr 2021 12:58:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 00/18] Add support for Clang CFI
Message-ID: <20210402195823.huphtlhluqjgrw26@archlinux-ax161>
References: <20210401233216.2540591-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ghy83sUY;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 01, 2021 at 04:31:58PM -0700, Sami Tolvanen wrote:
> This series adds support for Clang's Control-Flow Integrity (CFI)
> checking. With CFI, the compiler injects a runtime check before each
> indirect function call to ensure the target is a valid function with
> the correct static type. This restricts possible call targets and
> makes it more difficult for an attacker to exploit bugs that allow the
> modification of stored function pointers. For more details, see:
> 
>   https://clang.llvm.org/docs/ControlFlowIntegrity.html
> 
> The first patch contains build system changes and error handling,
> and implements support for cross-module indirect call checking. The
> remaining patches address issues caused by the compiler
> instrumentation. These include fixing known type mismatches, as well
> as issues with address space confusion and cross-module function
> address equality.
> 
> These patches add support only for arm64, but I'll post patches also
> for x86_64 after we address the remaining issues there, including
> objtool support.
> 
> You can also pull this series from
> 
>   https://github.com/samitolvanen/linux.git cfi-v5
> 
> ---
> Changes in v5:
>  - Changed module.lds.S to only include <asm/page.h> when CFI is
>    enabled to fix the MIPS build.
>  - Added a patch that fixes dynamic ftrace with CFI on arm64.
> 
> Changes in v4:
>  - Per Mark's suggestion, dropped __pa_function() and renamed
>    __va_function() to function_nocfi().
>  - Added a comment to function_nocfi() to explain what it does.
>  - Updated the psci patch to use an intermediate variable for
>    the physical address for clarity.
> 
> Changes in v3:
>  - Added a patch to change list_sort() callers treewide to use
>    const pointers instead of simply removing the internal casts.
>  - Changed cleanup_symbol_name() to return bool.
>  - Changed module.lds.S to drop the .eh_frame section only with
>    CONFIG_CFI_CLANG.
>  - Switched to synchronize_rcu() in update_shadow().
> 
> Changes in v2:
>  - Fixed .text merging in module.lds.S.
>  - Added WARN_ON_FUNCTION_MISMATCH() and changed kernel/thread.c
>    and kernel/workqueue.c to use the macro instead.
> 
> 
> Sami Tolvanen (18):
>   add support for Clang CFI
>   cfi: add __cficanonical
>   mm: add generic function_nocfi macro
>   module: ensure __cfi_check alignment
>   workqueue: use WARN_ON_FUNCTION_MISMATCH
>   kthread: use WARN_ON_FUNCTION_MISMATCH
>   kallsyms: strip ThinLTO hashes from static functions
>   bpf: disable CFI in dispatcher functions
>   treewide: Change list_sort to use const pointers
>   lkdtm: use function_nocfi
>   psci: use function_nocfi for cpu_resume
>   arm64: implement function_nocfi
>   arm64: use function_nocfi with __pa_symbol
>   arm64: add __nocfi to functions that jump to a physical address
>   arm64: add __nocfi to __apply_alternatives
>   arm64: ftrace: use function_nocfi for ftrace_call
>   KVM: arm64: Disable CFI for nVHE
>   arm64: allow CONFIG_CFI_CLANG to be selected
> 
>  Makefile                                      |  17 +
>  arch/Kconfig                                  |  45 +++
>  arch/arm64/Kconfig                            |   1 +
>  arch/arm64/include/asm/memory.h               |  15 +
>  arch/arm64/include/asm/mmu_context.h          |   4 +-
>  arch/arm64/kernel/acpi_parking_protocol.c     |   3 +-
>  arch/arm64/kernel/alternative.c               |   4 +-
>  arch/arm64/kernel/cpu-reset.h                 |  10 +-
>  arch/arm64/kernel/cpufeature.c                |   4 +-
>  arch/arm64/kernel/ftrace.c                    |   2 +-
>  arch/arm64/kernel/psci.c                      |   3 +-
>  arch/arm64/kernel/smp_spin_table.c            |   3 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile              |   6 +-
>  arch/arm64/kvm/vgic/vgic-its.c                |   8 +-
>  arch/arm64/kvm/vgic/vgic.c                    |   3 +-
>  block/blk-mq-sched.c                          |   3 +-
>  block/blk-mq.c                                |   3 +-
>  drivers/acpi/nfit/core.c                      |   3 +-
>  drivers/acpi/numa/hmat.c                      |   3 +-
>  drivers/clk/keystone/sci-clk.c                |   4 +-
>  drivers/firmware/psci/psci.c                  |   7 +-
>  drivers/gpu/drm/drm_modes.c                   |   3 +-
>  drivers/gpu/drm/i915/gt/intel_engine_user.c   |   3 +-
>  drivers/gpu/drm/i915/gvt/debugfs.c            |   2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   3 +-
>  drivers/gpu/drm/radeon/radeon_cs.c            |   4 +-
>  .../hw/usnic/usnic_uiom_interval_tree.c       |   3 +-
>  drivers/interconnect/qcom/bcm-voter.c         |   2 +-
>  drivers/md/raid5.c                            |   3 +-
>  drivers/misc/lkdtm/usercopy.c                 |   2 +-
>  drivers/misc/sram.c                           |   4 +-
>  drivers/nvme/host/core.c                      |   3 +-
>  .../controller/cadence/pcie-cadence-host.c    |   3 +-
>  drivers/spi/spi-loopback-test.c               |   3 +-
>  fs/btrfs/raid56.c                             |   3 +-
>  fs/btrfs/tree-log.c                           |   3 +-
>  fs/btrfs/volumes.c                            |   3 +-
>  fs/ext4/fsmap.c                               |   4 +-
>  fs/gfs2/glock.c                               |   3 +-
>  fs/gfs2/log.c                                 |   2 +-
>  fs/gfs2/lops.c                                |   3 +-
>  fs/iomap/buffered-io.c                        |   3 +-
>  fs/ubifs/gc.c                                 |   7 +-
>  fs/ubifs/replay.c                             |   4 +-
>  fs/xfs/scrub/bitmap.c                         |   4 +-
>  fs/xfs/xfs_bmap_item.c                        |   4 +-
>  fs/xfs/xfs_buf.c                              |   6 +-
>  fs/xfs/xfs_extent_busy.c                      |   4 +-
>  fs/xfs/xfs_extent_busy.h                      |   3 +-
>  fs/xfs/xfs_extfree_item.c                     |   4 +-
>  fs/xfs/xfs_refcount_item.c                    |   4 +-
>  fs/xfs/xfs_rmap_item.c                        |   4 +-
>  include/asm-generic/bug.h                     |  16 +
>  include/asm-generic/vmlinux.lds.h             |  20 +-
>  include/linux/bpf.h                           |   4 +-
>  include/linux/cfi.h                           |  41 +++
>  include/linux/compiler-clang.h                |   3 +
>  include/linux/compiler_types.h                |   8 +
>  include/linux/init.h                          |   6 +-
>  include/linux/list_sort.h                     |   7 +-
>  include/linux/mm.h                            |  10 +
>  include/linux/module.h                        |  13 +-
>  include/linux/pci.h                           |   4 +-
>  init/Kconfig                                  |   2 +-
>  kernel/Makefile                               |   4 +
>  kernel/cfi.c                                  | 329 ++++++++++++++++++
>  kernel/kallsyms.c                             |  55 ++-
>  kernel/kthread.c                              |   3 +-
>  kernel/module.c                               |  43 +++
>  kernel/workqueue.c                            |   2 +-
>  lib/list_sort.c                               |  17 +-
>  lib/test_list_sort.c                          |   3 +-
>  net/tipc/name_table.c                         |   4 +-
>  scripts/Makefile.modfinal                     |   2 +-
>  scripts/module.lds.S                          |  19 +-
>  75 files changed, 759 insertions(+), 113 deletions(-)
>  create mode 100644 include/linux/cfi.h
>  create mode 100644 kernel/cfi.c
> 
> 
> base-commit: 6905b1dc3c32a094f0da61bd656a740f0a97d592
> -- 
> 2.31.0.208.g409f899ff0-goog
> 


Hi Sami,

I booted this series on Equinix's c1.large.arm (2x Cavium ThunderX
CN8890) and c2.large.arm (1x Ampere eMAG 8180) servers [1] and my
Raspberry Pi 4B. I ran them through LTP's read_all test case on both
/proc and /sys and a few compile workloads, only uncovering one issue [2].

Consider this series:

Tested-by: Nathan Chancellor <nathan@kernel.org>

[1]: https://metal.equinix.com/developers/docs/servers/
[2]: https://lore.kernel.org/r/20210402195241.gahc5w25gezluw7p@archlinux-ax161/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402195823.huphtlhluqjgrw26%40archlinux-ax161.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI63SOBQMGQEESDX7SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 801073509B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:46:12 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j12sf2048164pjm.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617227171; cv=pass;
        d=google.com; s=arc-20160816;
        b=ueZh5zumVXtSnjATDZb5+gCCMw0Qxa7wn2MSY6pwkakcfXZUnWe8q8e3cA8MJ8jy+I
         DFR0ZIh+pJOlRPWSesIWPlhNkrjRyBJP6HqurcBZcBW5fdx1f2rAOkYwZfjcUQNe+mio
         uiUHZETcDtSP2bRmEEpVsOzQ3OvLBgCZ9OYSK4ZjZ6i8jyrifcqwoSEljGPPqmjOh8vL
         BFi2WM/NgUcXBFOYvcM3s/b8SvJ4Z4rUzC3HKcKV8GGfzyyJtRN+abmTW6xJzzK/iWFr
         de/ArBHT36O45RvAn03OQZRyWLHRhx3fYVhimoEOiAeYrMHuuOTpcENDirxIJ6Vjoc9K
         OVaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3NNLT5YTDFKDvmUn2D2Fsi8knyYrKGIDWrxM5ooXwkg=;
        b=Y5PzG6B+JCf4r1oFGPQaWWaEVuw2axZhAEw3V33pK8TcPW0QvKXZzFJJA51CFNe0BG
         gThJ5Kc4HjRk3FCw+0BQaaG4XuaYYAuef8tgVBm8wz4/PuNmmO8sCEY16JPkOiG6vLBV
         ZrmEyhIruwYQ2d9eyAbEzw2kUcttK0munvcFlF9QZp9X5rmyGgq6k+duHAu4MKU+ABez
         56WktC6tCxBg8pSVfMSy155pIyhE2LUmj6TlqbwjQEDnsBHVPASZbHmd2n/9bq/igs/9
         i/6jZlKT7aSLDZMqTUbLER3fCyYqylVpT3PlBNuc9afUyjTp/9dUsSkNqUCOVnFqXVNm
         Gq4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NzeLyJir;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3NNLT5YTDFKDvmUn2D2Fsi8knyYrKGIDWrxM5ooXwkg=;
        b=shHTwdmBW943tBwzzq4OpFx0haudMk7CtQEyT3Lu89pJDZnv+ZrxfVw5YWOZ011BLG
         omSixYsLVHS0LDi8ebeCyA8/fBo+bTK2YOuLlnpmNMUwsJHhOCl+VE9aowrR7PwjdRN+
         XjIBcePPzESYsjMqo1gRsOfqNmv9ZUyEnEszASDglbgIQb5QqVYctMzDjnNOq1Eak3w/
         q8gYHsrmtf1INxT7kmQ70drqCHIzKFAUOXB4KVZxQALnoKNpPOoCm42IwqtcUXaUy2Rs
         mlhf5dyjBgjObmuW1YzS67QPR8IZnLOjoYeJd94Z/sUm9/Hzk+RL5vh0UyG7bKDoyAtf
         2fcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3NNLT5YTDFKDvmUn2D2Fsi8knyYrKGIDWrxM5ooXwkg=;
        b=XpnNpx+gD2I0KO3sASVsgQM1lSjkA7lOevlhv0cezxS8xB0RVarAOgfGI3KU8oWrdt
         b77X0TIGB7J9W9VZDaa5q1cPiNM3HGwwSV21qn8b3+BMSqtBfeL9cN8AiqnWwSp0bvr5
         SBORlbBkR9benzUzuUGQX6Lb1MRqG0BgB+P2TkPy7wCQMjsY7OZT/UrbuPnobnSp+um3
         2nIFoLfdl0sgUqAfDz9tpNDfhmEWqXpFWpxgOFTyOqCmqUvgb6QyDiQg6hgnaN0DQpzC
         uiP9OpeAGAOpZJI98lrhaTrwudJ4nCDV0J3CQ23f8Sg8/dAUsS28ZnNA4ec1OkrqMjxB
         eYpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MP3FrT3cqzIRji5Kp5Yr9pLWK7QykK7c8RBEvVXAdV2DU3Q30
	tD4fLzXE5QkrL4Jog9kQocg=
X-Google-Smtp-Source: ABdhPJzXCsOILGdRpaJFMOWiJjIXB+Vn0x2X8LvOdXXHyKRccBA7nGtwGAP6DJ5vjk9N5xkqV3R3EA==
X-Received: by 2002:a17:902:d4cd:b029:e5:dd6d:f9b3 with SMTP id o13-20020a170902d4cdb02900e5dd6df9b3mr4687634plg.43.1617227171135;
        Wed, 31 Mar 2021 14:46:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d50:: with SMTP id d77ls1432080pfd.4.gmail; Wed, 31 Mar
 2021 14:46:10 -0700 (PDT)
X-Received: by 2002:a63:6ec1:: with SMTP id j184mr698400pgc.364.1617227170579;
        Wed, 31 Mar 2021 14:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617227170; cv=none;
        d=google.com; s=arc-20160816;
        b=iVC3UVninTUbqC/fHiqLqizZueL3MssFaBhqjdCIui19WmlRUkomo9pGzqNWmi2fmK
         dwV1HXIuqAIRws1ICQZmMs8YH6USOZEjalxoF2RNc3aM0Au34qvVpfGJAOJDPo9w8Zse
         jd5JcdbAWDj+NdYBKiay/PYnxOUXuVnbRsC4r7NN/vvDPfR5t3j7OdEBlZaGoU49nF1Q
         9FEc05mQlDr7TSL1oL9FcTRw+ms13DBvAq5yAeZSvvLqBcop68l/Ub1PL0IkAERUAacq
         /hh7f96jF3cxJtws8mPaMLSBKl84kvyEMDvgs011dk6mSrJUxsp9VjcQUNtgLRHu3/EX
         I3Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=esAh+eFc7x1e4muSLkstj3Ic+kmZW4D/uno+GAwyPqg=;
        b=Vy6y8DPnyHNnBFpW+mUy1YDfgnLlPUFN3dSxNj/oCQpGRw/KDX2HKGaIVgkbcDdlny
         IKCDsDT/vFWboCY6VLnT/elVbaUz4Jr889Y6erY8iqozmcOpkNpMs4BkgKQlLw4EEeh9
         DPvaoA0z/74V9mdM2kU5K6OW9GbJRoOgVLqsvlHg3vPRKyCcKrfXzxsQWp5vd5lEelHk
         00HBMqCsAHyondJk9HiDdZxxQoERYKP5rMArWYHxoBxldtpj9wrUH9DQGQ8noxvqENEV
         2T7mzHGKR+H8OApek9lEY6wea2Xv7Hvajr7xfZ46gc+nmELB3flt18AwewyZnQOFFK7z
         3mcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NzeLyJir;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id z22si345790pfc.6.2021.03.31.14.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id h8so8602609plt.7
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:46:10 -0700 (PDT)
X-Received: by 2002:a17:90a:be0e:: with SMTP id a14mr5187306pjs.131.1617227170242;
        Wed, 31 Mar 2021 14:46:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id iq6sm3106930pjb.31.2021.03.31.14.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 14:46:09 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:46:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4 00/17] Add support for Clang CFI
Message-ID: <202103311442.FDB6E8223@keescook>
References: <20210331212722.2746212-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NzeLyJir;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Mar 31, 2021 at 02:27:04PM -0700, Sami Tolvanen wrote:
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
>   https://github.com/samitolvanen/linux.git cfi-v4

Thanks for the updates! I think this is ready to land in -next.

Will, Mark, Catalin: would you prefer this go via arm64 or via my LTO
tree? (Or does anyone see other stuff they'd like fixed first?)

-Kees

> ---
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
> Sami Tolvanen (17):
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
>  scripts/module.lds.S                          |  20 +-
>  74 files changed, 759 insertions(+), 112 deletions(-)
>  create mode 100644 include/linux/cfi.h
>  create mode 100644 kernel/cfi.c
> 
> 
> base-commit: d19cc4bfbff1ae72c3505a00fb8ce0d3fa519e6c
> -- 
> 2.31.0.291.g576ba9dcdaf-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103311442.FDB6E8223%40keescook.

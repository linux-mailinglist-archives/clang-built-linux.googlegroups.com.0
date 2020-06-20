Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBU7JW33QKGQEXMQC6WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0ECC202209
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 09:03:48 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id j43sf8200037pje.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 00:03:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592636627; cv=pass;
        d=google.com; s=arc-20160816;
        b=dNt1AkaOVH4hGIvwMHAj641oJlVIVlwVI3m+Op5wYiJ67tEzGgKrfQCQO31xoMTu4G
         ibOfcOjZ3XrvezdtFq9DjfEGCPIb9MO8D46ZP8HT+qEsndTKsDzQ2uvc7CeL4a0MDoWD
         qvCPucstQUTpj7nFx/h+viYWuR7Ebg1AAUcYFYYTvM9AiC1Ms/8N1T0YFOjCc9eNAsnI
         JWbYeae5VnJq1kIHhiKXJeTM9Fh0JeOQ9WPAFHyWBcMNXrU/J2isVzQAfZTT8jf7RJS3
         KiW4bjtaeEoTfOcVl/9YQmqjTDT6xIkTiNVvsQBtMhGOfxCwJHDAyYAIltJC+9/dgy9d
         RYXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Say72llK/aQMl9QDYX6kTwZYI5pWIsWOcdGjY9QTkuM=;
        b=uuQs0hH0iTekEHB1CqRt8m2sdQDB4wmFhIqhmoW0y3frThVArkzCh11Fd59N0DFzvp
         DpjyU2q6w3pC/tAnRVhevLsggZBfGDivaMt0ivUX7z7LqBRzWq5m4p1yC8ZpjM7e2f9q
         XhB+n3VvB3OTfN5cnDYaVMOk/sWcAXvrJzf0tgHcReRrH+jJ7ThTQbnenpnAIn62nNwy
         DgHhTcAAMUfgr9hb4MZm3PMErB39x45AAwPQ9LSzjiz7DktZydQgxQJquM0SZknyH8aD
         eMTobq1lg1BeAQLFjSpEph3YaQLK/yYamSbuIDpqWojTK6yvGZjQSju7dQksirjlRk6m
         OB5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kAYtSFJm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Say72llK/aQMl9QDYX6kTwZYI5pWIsWOcdGjY9QTkuM=;
        b=F20UDk+Rlrkr2Zsqnha4zEWVhE1unNK1cd3TXTqp0tfEfaECP/COgF2TeTMJWpDq9J
         3+A7Um1CfhFKbbAPtF1Iva4Jos45oB66Qnug3c5/V56Kuiuw5dd6pk58LKvVPw+4TEcd
         q24zZzteTX22PPYjLMLC6YJN6hhHdxb4cmCw7XI8Bt/3+DLai19uiNW60O5fhDf2aP1N
         XFOs8q/EdL0BA1a1HBN/A1kY0zQiWjPAfogEVW5cYNSceTZqWwArhxMprQLHOkOPZwsL
         pwROfqc8KSAVorcRlWVt6wNNIqkShD9dFr8POSmdE1iKXbOgimlPDfm1G7dPHsbLVoeb
         zLRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Say72llK/aQMl9QDYX6kTwZYI5pWIsWOcdGjY9QTkuM=;
        b=tFWb6AZhXMeuo/LVUsOjZ7gf+IVvjZll7kMYkWGWscYMlf+HtD6ZYprBH+eZaxZxEG
         xx8DKiXf/xUT33c8segIX82lAzJrBcdNxeSeVafvkUS0JHuOIurNf9ALUiXUdcNpt7mJ
         i1ECrsIDBYgi3twIA6CQTlsE75wY5IDBwCAyQ+mC+BvYt7TlZduwBW8DPo1z/Iz0Uli+
         I1FR26YfgEfxviqIT84d70ZkmIG3flN5uT+QWiEliRLx1dJ9nvTiJQwf0HOs+O88LX/F
         DFuMZcR0pPBtEL30RixUmpX2y1W1uDaKWHErNqlZzqnYDgEMGDGq9Qjx0E2ELjyHMqr8
         fmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Say72llK/aQMl9QDYX6kTwZYI5pWIsWOcdGjY9QTkuM=;
        b=eimAE+raduXNXqLvEB+PidDouR3Ur/oJ1k7hY4gzCYpw/P4DFJPNpAZjRG3aO/YZEr
         0+CDLGK8AQ+sPP6HCREDNA61nG+ZDzbItLntjTQ+xUtzeStPMJ+Y/MfGE/L0BUUctFMk
         IMcXrnF2uaFkQ9JSmTLssD4rWT5DMz3AnOlJWFiYJMhmCkZwyr+6j7r2l3JXSHWr9dnm
         hMaOepDDinlTRSHXMBAHceCn5wa6mR7+nDD7rmBF1hEbwEOjELnoVEuKyyMHJYSH6iDi
         pAGU5himJSPNBjtJ57YZ0JJyxhI2NToElMCfKKaFf+VMIMXABh8KYRAyUwRkA4i+8QIR
         jQag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D93s8cDfN5pHW6uRn09WZ4ZZjMeNEE3ENv1100bbjufF3e45y
	41QdrZSPO7bJGwRjNz2kEDY=
X-Google-Smtp-Source: ABdhPJyG2MORLGjpJDhG0qiLGoCHEr1ALZqpn0nJA7t29Cqaf8TbfCWAEPz87dJ82jgfgFWjnXa/YA==
X-Received: by 2002:a62:7547:: with SMTP id q68mr11627893pfc.202.1592636627521;
        Sat, 20 Jun 2020 00:03:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls635356pfe.1.gmail; Sat, 20 Jun
 2020 00:03:47 -0700 (PDT)
X-Received: by 2002:a65:5949:: with SMTP id g9mr5939880pgu.220.1592636626591;
        Sat, 20 Jun 2020 00:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592636626; cv=none;
        d=google.com; s=arc-20160816;
        b=xEhY76AFphy9t2wsVXgzQu23QjSSPfmOmMFevqYzB5yYEMt0SgsthjhWgnSRuIQDzS
         FsHqCxnDjJCGPktxLUs7nka257trO3PHrZEJN49EniYz3nifiv2kGY3jCsNyH3LjcjGC
         qP24sSwVb+A/qtnBFU4I59+AxX9WI9bQl2qp0QxO0FIDkJtzu33lJWkAr9RZ7zQeAZT9
         WgXfTH2gNlxNCZKA8wYHQ8X0jpP8Q4G1NXrqbOCsRc9rIQXkFV2hc+ygIiGFNmOSn2Rj
         wkEuf8zownIh61u9qpEZMAE2cRCIXRXutTnFdBwm5rwMOnPZWSxX14N6iKw3qYQOQX7+
         rXjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a9ahofqDzxBvbMDVeFWZXAdljkUzW+GWnKPGvNmGbew=;
        b=waIdtJphKR3Inq4NvLEUj9IPWV7mA2crUcsl/WJm06hFXyyex45dR+M2T7ZFQs1UDT
         rFeVIBGL7Ce/TJFGHFn5u6OS4/W5SGWIhgOFoYptAK7gbebtF9t0TGgwzKkZU9zo3uCj
         i4NwLNJ30vz+2wujkb1KXmIiFRH4ToKnrHRR9TYSzIJ+sV7NT/WIQ0AWA1BRnZsizcCS
         9cRl/SA44CZO9m7VeJ27B72Vz4etSs9dH1HoQ29pLwUpduP802VKigVFezlEeT5jiFT1
         +vfFRGG21yfvxjhlobaQ9Yr24vE+DR9BEuT2L8JCrJvLbdsSCqTBceI5xVvoFaop3cze
         85/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kAYtSFJm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q1si290952pjj.0.2020.06.20.00.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jun 2020 00:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id c75so11345363ila.8
        for <clang-built-linux@googlegroups.com>; Sat, 20 Jun 2020 00:03:46 -0700 (PDT)
X-Received: by 2002:a92:3646:: with SMTP id d6mr7283730ilf.255.1592636625845;
 Sat, 20 Jun 2020 00:03:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 20 Jun 2020 09:03:34 +0200
Message-ID: <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, 
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-mm@kvack.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kAYtSFJm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jun 20, 2020 at 5:30 AM Kees Cook <keescook@chromium.org> wrote:
>
> v2:
> - more special-cased fixes
> - add reviews
> v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook@chromium.org
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
>
> As recommended[2] by[3] Linus[4], remove the macro.
>
> Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> a single treewide commit in this series. A few others needed to actually
> get cleaned up, and I broke those out into individual patches.
>
> The tree is:
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro
>
> -Kees
>

Hi Kees,

thanks for doing a v2 of your patchset.

As I saw Jason Yan providing some "uninitialized_var() macro" patches
to the MLs I pointen him to your tree "v1".

BTW, I have tested your "v1" against Linux v5.7 (see [1]) - just
yesterday with Linux v5.7.5-rc1.

Is it possible to have a v2 of this patchset on top od Linux v5.7 - if
you do not mind.

Thanks.

Best regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/v5.7/macro

> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Jason Yan (1):
>   f2fs: Eliminate usage of uninitialized_var() macro
>
> Kees Cook (15):
>   docs: deprecated.rst: Add uninitialized_var()
>   x86/mm/numa: Remove uninitialized_var() usage
>   drbd: Remove uninitialized_var() usage
>   b43: Remove uninitialized_var() usage
>   rtlwifi: rtl8192cu: Remove uninitialized_var() usage
>   ide: Remove uninitialized_var() usage
>   clk: st: Remove uninitialized_var() usage
>   spi: davinci: Remove uninitialized_var() usage
>   clk: spear: Remove uninitialized_var() usage
>   KVM: PPC: Book3S PR: Remove uninitialized_var() usage
>   media: sur40: Remove uninitialized_var() usage
>   checkpatch: Remove awareness of uninitialized_var() macro
>   treewide: Remove uninitialized_var() usage
>   compiler: Remove uninitialized_var() macro
>   mm/debug_vm_pgtable: Remove uninitialized_var() usage
>
>  Documentation/process/deprecated.rst           | 18 ++++++++++++++++++
>  arch/arm/mach-sa1100/assabet.c                 |  2 +-
>  arch/arm/mm/alignment.c                        |  2 +-
>  arch/ia64/kernel/process.c                     |  2 +-
>  arch/ia64/mm/discontig.c                       |  2 +-
>  arch/ia64/mm/tlb.c                             |  2 +-
>  arch/mips/lib/dump_tlb.c                       |  2 +-
>  arch/mips/mm/init.c                            |  2 +-
>  arch/mips/mm/tlb-r4k.c                         |  6 +++---
>  arch/powerpc/kvm/book3s_64_mmu_radix.c         |  2 +-
>  arch/powerpc/kvm/book3s_pr.c                   |  3 ---
>  arch/powerpc/kvm/powerpc.c                     |  2 +-
>  arch/powerpc/platforms/52xx/mpc52xx_pic.c      |  2 +-
>  arch/s390/kernel/smp.c                         |  2 +-
>  arch/x86/kernel/quirks.c                       | 10 +++++-----
>  arch/x86/kvm/mmu/mmu.c                         |  2 +-
>  arch/x86/kvm/mmu/paging_tmpl.h                 |  2 +-
>  arch/x86/kvm/x86.c                             |  2 +-
>  arch/x86/mm/numa.c                             | 18 +++++++++---------
>  block/blk-merge.c                              |  2 +-
>  drivers/acpi/acpi_pad.c                        |  2 +-
>  drivers/ata/libata-scsi.c                      |  2 +-
>  drivers/atm/zatm.c                             |  2 +-
>  drivers/block/drbd/drbd_nl.c                   |  6 +++---
>  drivers/block/drbd/drbd_state.c                |  2 +-
>  drivers/block/rbd.c                            |  2 +-
>  drivers/clk/clk-gate.c                         |  2 +-
>  drivers/clk/spear/clk-vco-pll.c                |  2 +-
>  drivers/clk/st/clkgen-fsyn.c                   |  1 -
>  drivers/firewire/ohci.c                        | 14 +++++++-------
>  drivers/gpu/drm/bridge/sil-sii8620.c           |  2 +-
>  drivers/gpu/drm/drm_edid.c                     |  2 +-
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c        |  6 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c            |  2 +-
>  drivers/gpu/drm/i915/intel_uncore.c            |  2 +-
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |  4 ++--
>  drivers/i2c/busses/i2c-rk3x.c                  |  2 +-
>  drivers/ide/ide-acpi.c                         |  2 +-
>  drivers/ide/ide-atapi.c                        |  2 +-
>  drivers/ide/ide-io-std.c                       |  4 ++--
>  drivers/ide/ide-io.c                           |  8 ++++----
>  drivers/ide/ide-sysfs.c                        |  2 +-
>  drivers/ide/ide-taskfile.c                     |  1 -
>  drivers/ide/umc8672.c                          |  2 +-
>  drivers/idle/intel_idle.c                      |  2 +-
>  drivers/infiniband/core/uverbs_cmd.c           |  4 ++--
>  drivers/infiniband/hw/cxgb4/cm.c               |  2 +-
>  drivers/infiniband/hw/cxgb4/cq.c               |  2 +-
>  drivers/infiniband/hw/mlx4/qp.c                |  6 +++---
>  drivers/infiniband/hw/mlx5/cq.c                |  6 +++---
>  drivers/infiniband/hw/mlx5/devx.c              |  2 +-
>  drivers/infiniband/hw/mlx5/wr.c                |  2 +-
>  drivers/infiniband/hw/mthca/mthca_qp.c         | 10 +++++-----
>  drivers/infiniband/sw/siw/siw_qp_rx.c          |  2 +-
>  drivers/input/serio/serio_raw.c                |  2 +-
>  drivers/input/touchscreen/sur40.c              |  4 +---
>  drivers/iommu/intel/iommu.c                    |  2 +-
>  drivers/md/dm-io.c                             |  2 +-
>  drivers/md/dm-ioctl.c                          |  2 +-
>  drivers/md/dm-snap-persistent.c                |  2 +-
>  drivers/md/dm-table.c                          |  2 +-
>  drivers/md/dm-writecache.c                     |  2 +-
>  drivers/md/raid5.c                             |  2 +-
>  drivers/media/dvb-frontends/rtl2832.c          |  2 +-
>  drivers/media/tuners/qt1010.c                  |  4 ++--
>  drivers/media/usb/gspca/vicam.c                |  2 +-
>  drivers/media/usb/uvc/uvc_video.c              |  8 ++++----
>  drivers/memstick/host/jmb38x_ms.c              |  2 +-
>  drivers/memstick/host/tifm_ms.c                |  2 +-
>  drivers/mmc/host/sdhci.c                       |  2 +-
>  drivers/mtd/nand/raw/nand_ecc.c                |  2 +-
>  drivers/mtd/nand/raw/s3c2410.c                 |  2 +-
>  drivers/mtd/parsers/afs.c                      |  4 ++--
>  drivers/mtd/ubi/eba.c                          |  2 +-
>  drivers/net/can/janz-ican3.c                   |  2 +-
>  drivers/net/ethernet/broadcom/bnx2.c           |  4 ++--
>  .../ethernet/mellanox/mlx5/core/pagealloc.c    |  4 ++--
>  drivers/net/ethernet/neterion/s2io.c           |  2 +-
>  drivers/net/ethernet/qlogic/qla3xxx.c          |  2 +-
>  drivers/net/ethernet/sun/cassini.c             |  2 +-
>  drivers/net/ethernet/sun/niu.c                 |  6 +++---
>  drivers/net/wan/z85230.c                       |  2 +-
>  drivers/net/wireless/ath/ath10k/core.c         |  2 +-
>  drivers/net/wireless/ath/ath6kl/init.c         |  2 +-
>  drivers/net/wireless/ath/ath9k/init.c          |  2 +-
>  drivers/net/wireless/broadcom/b43/debugfs.c    |  2 +-
>  drivers/net/wireless/broadcom/b43/dma.c        |  2 +-
>  drivers/net/wireless/broadcom/b43/lo.c         |  2 +-
>  drivers/net/wireless/broadcom/b43/phy_n.c      |  4 ++--
>  drivers/net/wireless/broadcom/b43/xmit.c       | 12 ++++++------
>  .../net/wireless/broadcom/b43legacy/debugfs.c  |  2 +-
>  drivers/net/wireless/broadcom/b43legacy/main.c |  2 +-
>  drivers/net/wireless/intel/iwlegacy/3945.c     |  2 +-
>  drivers/net/wireless/intel/iwlegacy/4965-mac.c |  2 +-
>  .../wireless/realtek/rtlwifi/rtl8192cu/hw.c    |  8 ++++----
>  drivers/pci/pcie/aer.c                         |  2 +-
>  drivers/platform/x86/hdaps.c                   |  4 ++--
>  drivers/scsi/dc395x.c                          |  2 +-
>  drivers/scsi/pm8001/pm8001_hwi.c               |  2 +-
>  drivers/scsi/pm8001/pm80xx_hwi.c               |  2 +-
>  drivers/spi/spi-davinci.c                      |  1 -
>  drivers/ssb/driver_chipcommon.c                |  4 ++--
>  drivers/tty/cyclades.c                         |  2 +-
>  drivers/tty/isicom.c                           |  2 +-
>  drivers/usb/musb/cppi_dma.c                    |  2 +-
>  drivers/usb/storage/sddr55.c                   |  4 ++--
>  drivers/vhost/net.c                            |  6 +++---
>  drivers/video/fbdev/matrox/matroxfb_maven.c    |  6 +++---
>  drivers/video/fbdev/pm3fb.c                    |  6 +++---
>  drivers/video/fbdev/riva/riva_hw.c             |  3 +--
>  drivers/virtio/virtio_ring.c                   |  6 +++---
>  fs/afs/dir.c                                   |  2 +-
>  fs/afs/security.c                              |  2 +-
>  fs/dlm/netlink.c                               |  2 +-
>  fs/erofs/data.c                                |  4 ++--
>  fs/erofs/zdata.c                               |  2 +-
>  fs/f2fs/data.c                                 |  4 +---
>  fs/fat/dir.c                                   |  2 +-
>  fs/fuse/control.c                              |  4 ++--
>  fs/fuse/cuse.c                                 |  2 +-
>  fs/fuse/file.c                                 |  2 +-
>  fs/gfs2/aops.c                                 |  2 +-
>  fs/gfs2/bmap.c                                 |  2 +-
>  fs/gfs2/lops.c                                 |  2 +-
>  fs/hfsplus/unicode.c                           |  2 +-
>  fs/isofs/namei.c                               |  4 ++--
>  fs/jffs2/erase.c                               |  2 +-
>  fs/nfsd/nfsctl.c                               |  2 +-
>  fs/ocfs2/alloc.c                               |  4 ++--
>  fs/ocfs2/dir.c                                 | 14 +++++++-------
>  fs/ocfs2/extent_map.c                          |  4 ++--
>  fs/ocfs2/namei.c                               |  2 +-
>  fs/ocfs2/refcounttree.c                        |  2 +-
>  fs/ocfs2/xattr.c                               |  2 +-
>  fs/omfs/file.c                                 |  2 +-
>  fs/overlayfs/copy_up.c                         |  2 +-
>  fs/ubifs/commit.c                              |  6 +++---
>  fs/ubifs/dir.c                                 |  2 +-
>  fs/ubifs/file.c                                |  4 ++--
>  fs/ubifs/journal.c                             |  4 ++--
>  fs/ubifs/lpt.c                                 |  2 +-
>  fs/ubifs/tnc.c                                 |  6 +++---
>  fs/ubifs/tnc_misc.c                            |  4 ++--
>  fs/udf/balloc.c                                |  2 +-
>  fs/xfs/xfs_bmap_util.c                         |  2 +-
>  include/linux/compiler-clang.h                 |  2 --
>  include/linux/compiler-gcc.h                   |  6 ------
>  include/linux/page-flags-layout.h              |  4 +++-
>  include/net/flow_offload.h                     |  2 +-
>  kernel/async.c                                 |  4 ++--
>  kernel/audit.c                                 |  2 +-
>  kernel/debug/kdb/kdb_io.c                      |  2 +-
>  kernel/dma/debug.c                             |  2 +-
>  kernel/events/core.c                           |  2 +-
>  kernel/events/uprobes.c                        |  2 +-
>  kernel/exit.c                                  |  2 +-
>  kernel/futex.c                                 | 14 +++++++-------
>  kernel/locking/lockdep.c                       | 16 ++++++++--------
>  kernel/trace/ring_buffer.c                     |  2 +-
>  lib/radix-tree.c                               |  2 +-
>  lib/test_lockup.c                              |  2 +-
>  mm/debug_vm_pgtable.c                          |  2 +-
>  mm/frontswap.c                                 |  2 +-
>  mm/ksm.c                                       |  2 +-
>  mm/memcontrol.c                                |  2 +-
>  mm/memory.c                                    |  2 +-
>  mm/mempolicy.c                                 |  4 ++--
>  mm/page_alloc.c                                |  2 +-
>  mm/percpu.c                                    |  2 +-
>  mm/slub.c                                      |  4 ++--
>  mm/swap.c                                      |  4 ++--
>  net/dccp/options.c                             |  2 +-
>  net/ipv4/netfilter/nf_socket_ipv4.c            |  6 +++---
>  net/ipv6/ip6_flowlabel.c                       |  2 +-
>  net/ipv6/netfilter/nf_socket_ipv6.c            |  2 +-
>  net/netfilter/nf_conntrack_ftp.c               |  2 +-
>  net/netfilter/nfnetlink_log.c                  |  2 +-
>  net/netfilter/nfnetlink_queue.c                |  4 ++--
>  net/sched/cls_flow.c                           |  2 +-
>  net/sched/sch_cake.c                           |  2 +-
>  net/sched/sch_cbq.c                            |  2 +-
>  net/sched/sch_fq_codel.c                       |  2 +-
>  net/sched/sch_fq_pie.c                         |  2 +-
>  net/sched/sch_hfsc.c                           |  2 +-
>  net/sched/sch_htb.c                            |  2 +-
>  net/sched/sch_sfq.c                            |  2 +-
>  net/sunrpc/svcsock.c                           |  4 ++--
>  net/sunrpc/xprtsock.c                          | 10 +++++-----
>  net/tls/tls_sw.c                               |  2 +-
>  scripts/checkpatch.pl                          | 16 +++++-----------
>  sound/core/control_compat.c                    |  2 +-
>  sound/isa/sb/sb16_csp.c                        |  2 +-
>  sound/usb/endpoint.c                           |  2 +-
>  tools/include/linux/compiler.h                 |  2 --
>  tools/virtio/linux/kernel.h                    |  2 --
>  196 files changed, 321 insertions(+), 330 deletions(-)
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-1-keescook%40chromium.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw%40mail.gmail.com.

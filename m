Return-Path: <clang-built-linux+bncBAABBYNB4P3AKGQEELFJQIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D2A1EE2B6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 12:45:54 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id o1sf4338286plk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 03:45:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591267553; cv=pass;
        d=google.com; s=arc-20160816;
        b=ghZXWo6+pJFx/KQbb5AC/rp7Ne86ioz6LRr3zGy+cLdBt7iVesMbwiIgPBLfaW/4Sx
         wxckSSeyZDQ1VlFe5tzF9qDSUyIib9DH3PV7UnpRM/IGofJt+nmlX1ya6ktOS4CyCmLR
         kOIUrBw6qNHoIZ99VGJxtLATa95m6t7C3WmOvkv8Kdde2x1dofLSQIx2VRbflG/e55bm
         doaicub4odpWNC6BpLM0sIqDaZ5+SFjgYygCsoNLi6br+1IEDBWjo7ifS6OuvRWMEcUL
         aZPp6NtkhRNRvPCnoyhEaqGc4aPkH6xxKtoHU1CB8Ufq7muu0E41bjyuneDxL/i6a70F
         MCWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GinCIg2GLkBolExolvzfMTExNokHIYr+U9zAz7srJ0Y=;
        b=Wu5R7uNzA1jTaeNJ+5BEH8Un7mqBFjoBbb9ole1nOm6XOkSnNqhBl8yJ7UKqluaOkq
         /ydVif21tImpa4EBmqhQh65P2pa34fgPya5tlzJ8m3Sj58iFUe0IgDFYycezEyagSvVF
         uWdgCq3YGMDcxKQzGmsC4MPJc+Ot+eFPQOjC1engLSzQG+ZxJ0pPIWnKmlolZ1/9GD9U
         Tv76hGF3A2SFEOLEM82de3kWRGmC9H8KjTzAHcYkU9mc5F2vSSEcwKPjvbcIgZpPp4sz
         cWgztc8HqPReM7ssFQs4/ScdT68vpQJlzxmTU4Yg8Q0SM+Tw+4hf8960RwP57azDTgnl
         FVdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nXIxctda;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GinCIg2GLkBolExolvzfMTExNokHIYr+U9zAz7srJ0Y=;
        b=VIkKhw120XS3lseODSgtkNjn8zPEueNoBO6utaN1zngYQQpx+ePwkySBJBs9o+dBVZ
         Qy7+nu9TR4ybS2VcpvpuhcJniTrAFoJ4azPnUOz6uFAreq0+s/yQWBwcEHxCsKnf8FSr
         PJ3D1XQcssWkrGbdmlCfYBAKFRKoJAcH07CZh4Wn26qvtvn5rrjIaKT8E+VG0hBLkobH
         ag8LqGXiq4WLpwJdED1jErrHIcxbmTBksxTf/LNicbmOc86zloJBHl+R2wDXywepnMmN
         VXryT2rJjVTug+hiGBKnLHCTAxWV1JjFFQdiWq5rt4GBpAyFYQ3Dc+JCbYZU5EGw+zkz
         E2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GinCIg2GLkBolExolvzfMTExNokHIYr+U9zAz7srJ0Y=;
        b=Tposnpa1Nx5WnMWbzaP/pQcWOJDnY1UelLA2kRzOZahum5bhF95eqRRMl5BWysF9mv
         0p7P0CeLQRfEe/tmL0nyRp2GmLmVp7GEYPL2zmncCDVIfX47LWYD8VhdnymSsqgpKSID
         hc/SLlPqyqKz8k64MHjcBaFo7WButoSW1CMbHIM05AY6Mo3IkqniTl0zeBgTlUoUPjp1
         tShhFxKZMuzUTegD6+5MJ8njDiEgP34R7EIHEKE7+0Z2MUUBUelC9cJzQJzV8puIeUPL
         /rC+b+ajgsKkfEgfyykl4vZ4cwXlzOL3BbVRzqF0YmvbA1lpyXZQk59EV0hYDiY6Agvo
         i3tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BTQLEfcfOqoXmUojFC7hOJ7Mb30WdtyeuXqKS2+yAAL/Ur6Hx
	l6/52v6KhxOOwywynYoa0aE=
X-Google-Smtp-Source: ABdhPJyMl+pveujZjVCaw83vuKjUoySUu917jOLNG7woCP7GkoYiNiGJP249zRzqXvvUrUV/yvS/2w==
X-Received: by 2002:a17:90a:2461:: with SMTP id h88mr5518891pje.180.1591267553354;
        Thu, 04 Jun 2020 03:45:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls3081870pjb.0.canary-gmail;
 Thu, 04 Jun 2020 03:45:53 -0700 (PDT)
X-Received: by 2002:a17:90b:1955:: with SMTP id nk21mr5558070pjb.66.1591267553012;
        Thu, 04 Jun 2020 03:45:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591267553; cv=none;
        d=google.com; s=arc-20160816;
        b=rXGpKlHMvLyYjm1pnybmlhV8HOYPt9Fcb2J9PC2cMWhtS5kpLpks7sH1MheaUr8DVK
         Yrjxn01CTmx59tZIyBY2hXaVW5dObi+ZfEvpjZNEk4vZ1mOn0D/CoAFiXeN4mGokdeks
         yNbP1cLUkhhlvlV1ZBkPAyNwHvepOgRPgy4LkGPMUrb/WfxBXqMBkssxq5NXYxYT3s8E
         9ajg2jvnA34MWJ6WKpAzFOCQX4wK7tXApNe8HEsPvnf2NNhmVPhNSGI+CtVUnPlOpxlZ
         Vxdj8g/Zm+v8XRqBAfJ0RHPwVX/o9AzIbspQeC4IW3Z6f7rhxseWU4x/xtbvf1oybYq7
         uLPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MrmRIQMklDodffaNPhuoFLeXzWGdgWxNoNwjc3vswm0=;
        b=IYeI0d+plEDIO/LKs140qVmF8KDMWGMXsH4cPAqcAkKrIvLDmwjM6FFbUlg5RNJztO
         b2T5duk6sQYWjxKa1RkjuJxN/U53gYzk4atgKWfooypShqCtwgWF0WQ2UHscRZOa6M4c
         enyiWlf77msulc0D23/3apUiOVAZso9DdsMOoGa83lvmQku6W3OvEY0K4/jIW8YWWjEA
         X2S1lhRTwYb7BpxzpiS6mOrQJPzgKX4tBl9Z52eKXcuG/uRnIwgh5cEmGy8ASP8Pbry7
         9RslKPmI/qSfziz5WsQxcAREQxzWl0rHUW4k8blsbb797nieewxDirFbd4cTW5vXk2EY
         NQ+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nXIxctda;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si241505pgg.5.2020.06.04.03.45.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Jun 2020 03:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [213.57.247.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0ADEF206A2;
	Thu,  4 Jun 2020 10:45:51 +0000 (UTC)
Date: Thu, 4 Jun 2020 13:45:49 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604104549.GC8834@unreal>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nXIxctda;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
>
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
>
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
>
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
>
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm/mach-sa1100/assabet.c                   |  2 +-
>  arch/arm/mm/alignment.c                          |  2 +-
>  arch/ia64/kernel/process.c                       |  2 +-
>  arch/ia64/mm/discontig.c                         |  2 +-
>  arch/ia64/mm/tlb.c                               |  2 +-
>  arch/mips/lib/dump_tlb.c                         |  2 +-
>  arch/mips/mm/init.c                              |  2 +-
>  arch/mips/mm/tlb-r4k.c                           |  6 +++---
>  arch/powerpc/kvm/book3s_64_mmu_radix.c           |  2 +-
>  arch/powerpc/kvm/book3s_pr.c                     |  2 +-
>  arch/powerpc/kvm/powerpc.c                       |  2 +-
>  arch/powerpc/platforms/52xx/mpc52xx_pic.c        |  2 +-
>  arch/s390/kernel/smp.c                           |  2 +-
>  arch/x86/kernel/quirks.c                         | 10 +++++-----
>  arch/x86/kvm/mmu/mmu.c                           |  2 +-
>  arch/x86/kvm/mmu/paging_tmpl.h                   |  2 +-
>  arch/x86/kvm/x86.c                               |  2 +-
>  block/blk-merge.c                                |  2 +-
>  drivers/acpi/acpi_pad.c                          |  2 +-
>  drivers/ata/libata-scsi.c                        |  2 +-
>  drivers/atm/zatm.c                               |  2 +-
>  drivers/block/drbd/drbd_nl.c                     |  6 +++---
>  drivers/block/rbd.c                              |  2 +-
>  drivers/clk/clk-gate.c                           |  2 +-
>  drivers/clk/spear/clk-vco-pll.c                  |  2 +-
>  drivers/crypto/nx/nx-842-powernv.c               |  2 +-
>  drivers/firewire/ohci.c                          | 14 +++++++-------
>  drivers/gpu/drm/bridge/sil-sii8620.c             |  2 +-
>  drivers/gpu/drm/drm_edid.c                       |  2 +-
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c          |  6 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c         |  2 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c              |  2 +-
>  drivers/gpu/drm/i915/intel_uncore.c              |  2 +-
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c  |  4 ++--
>  drivers/i2c/busses/i2c-rk3x.c                    |  2 +-
>  drivers/ide/ide-acpi.c                           |  2 +-
>  drivers/ide/ide-atapi.c                          |  2 +-
>  drivers/ide/ide-io-std.c                         |  4 ++--
>  drivers/ide/ide-io.c                             |  8 ++++----
>  drivers/ide/ide-sysfs.c                          |  2 +-
>  drivers/ide/umc8672.c                            |  2 +-
>  drivers/idle/intel_idle.c                        |  2 +-
>  drivers/infiniband/core/uverbs_cmd.c             |  4 ++--
>  drivers/infiniband/hw/cxgb4/cm.c                 |  2 +-
>  drivers/infiniband/hw/cxgb4/cq.c                 |  2 +-
>  drivers/infiniband/hw/mlx4/qp.c                  |  6 +++---
>  drivers/infiniband/hw/mlx5/cq.c                  |  6 +++---
>  drivers/infiniband/hw/mlx5/devx.c                |  2 +-
>  drivers/infiniband/hw/mlx5/qp.c                  |  2 +-
>  drivers/infiniband/hw/mthca/mthca_qp.c           | 10 +++++-----
>  drivers/infiniband/sw/siw/siw_qp_rx.c            |  2 +-
>  drivers/input/serio/serio_raw.c                  |  2 +-
>  drivers/input/touchscreen/sur40.c                |  2 +-
>  drivers/iommu/intel-iommu.c                      |  2 +-
>  drivers/md/dm-io.c                               |  2 +-
>  drivers/md/dm-ioctl.c                            |  2 +-
>  drivers/md/dm-snap-persistent.c                  |  2 +-
>  drivers/md/dm-table.c                            |  2 +-
>  drivers/md/dm-writecache.c                       |  2 +-
>  drivers/md/raid5.c                               |  2 +-
>  drivers/media/dvb-frontends/rtl2832.c            |  2 +-
>  drivers/media/tuners/qt1010.c                    |  4 ++--
>  drivers/media/usb/gspca/vicam.c                  |  2 +-
>  drivers/media/usb/uvc/uvc_video.c                |  8 ++++----
>  drivers/memstick/host/jmb38x_ms.c                |  2 +-
>  drivers/memstick/host/tifm_ms.c                  |  2 +-
>  drivers/mmc/host/sdhci.c                         |  2 +-
>  drivers/mtd/nand/raw/nand_ecc.c                  |  2 +-
>  drivers/mtd/nand/raw/s3c2410.c                   |  2 +-
>  drivers/mtd/parsers/afs.c                        |  4 ++--
>  drivers/mtd/ubi/eba.c                            |  2 +-
>  drivers/net/can/janz-ican3.c                     |  2 +-
>  drivers/net/ethernet/broadcom/bnx2.c             |  4 ++--
>  .../net/ethernet/mellanox/mlx5/core/pagealloc.c  |  4 ++--
>  drivers/net/ethernet/neterion/s2io.c             |  2 +-
>  drivers/net/ethernet/qlogic/qla3xxx.c            |  2 +-
>  drivers/net/ethernet/sun/cassini.c               |  2 +-
>  drivers/net/ethernet/sun/niu.c                   |  6 +++---
>  drivers/net/wan/z85230.c                         |  2 +-
>  drivers/net/wireless/ath/ath10k/core.c           |  2 +-
>  drivers/net/wireless/ath/ath6kl/init.c           |  2 +-
>  drivers/net/wireless/ath/ath9k/init.c            |  2 +-
>  drivers/net/wireless/broadcom/b43/debugfs.c      |  2 +-
>  drivers/net/wireless/broadcom/b43/dma.c          |  2 +-
>  drivers/net/wireless/broadcom/b43/lo.c           |  2 +-
>  drivers/net/wireless/broadcom/b43/phy_n.c        |  2 +-
>  drivers/net/wireless/broadcom/b43/xmit.c         | 12 ++++++------
>  .../net/wireless/broadcom/b43legacy/debugfs.c    |  2 +-
>  drivers/net/wireless/broadcom/b43legacy/main.c   |  2 +-
>  drivers/net/wireless/intel/iwlegacy/3945.c       |  2 +-
>  drivers/net/wireless/intel/iwlegacy/4965-mac.c   |  2 +-
>  .../net/wireless/realtek/rtlwifi/rtl8192cu/hw.c  |  4 ++--
>  drivers/pci/pcie/aer.c                           |  2 +-
>  drivers/platform/x86/hdaps.c                     |  4 ++--
>  drivers/scsi/dc395x.c                            |  2 +-
>  drivers/scsi/pm8001/pm8001_hwi.c                 |  2 +-
>  drivers/scsi/pm8001/pm80xx_hwi.c                 |  2 +-
>  drivers/ssb/driver_chipcommon.c                  |  4 ++--
>  drivers/tty/cyclades.c                           |  2 +-
>  drivers/tty/isicom.c                             |  2 +-
>  drivers/usb/musb/cppi_dma.c                      |  2 +-
>  drivers/usb/storage/sddr55.c                     |  4 ++--
>  drivers/vhost/net.c                              |  6 +++---
>  drivers/video/fbdev/matrox/matroxfb_maven.c      |  6 +++---
>  drivers/video/fbdev/pm3fb.c                      |  6 +++---
>  drivers/video/fbdev/riva/riva_hw.c               |  3 +--
>  drivers/virtio/virtio_ring.c                     |  6 +++---
>  fs/afs/dir.c                                     |  2 +-
>  fs/afs/security.c                                |  2 +-
>  fs/dlm/netlink.c                                 |  2 +-
>  fs/erofs/data.c                                  |  4 ++--
>  fs/erofs/zdata.c                                 |  2 +-
>  fs/f2fs/data.c                                   |  2 +-
>  fs/fat/dir.c                                     |  2 +-
>  fs/fuse/control.c                                |  4 ++--
>  fs/fuse/cuse.c                                   |  2 +-
>  fs/fuse/file.c                                   |  2 +-
>  fs/gfs2/aops.c                                   |  2 +-
>  fs/gfs2/bmap.c                                   |  2 +-
>  fs/gfs2/lops.c                                   |  2 +-
>  fs/hfsplus/unicode.c                             |  2 +-
>  fs/isofs/namei.c                                 |  4 ++--
>  fs/jffs2/erase.c                                 |  2 +-
>  fs/nfsd/nfsctl.c                                 |  2 +-
>  fs/ocfs2/alloc.c                                 |  4 ++--
>  fs/ocfs2/dir.c                                   | 14 +++++++-------
>  fs/ocfs2/extent_map.c                            |  4 ++--
>  fs/ocfs2/namei.c                                 |  2 +-
>  fs/ocfs2/refcounttree.c                          |  2 +-
>  fs/ocfs2/xattr.c                                 |  2 +-
>  fs/omfs/file.c                                   |  2 +-
>  fs/overlayfs/copy_up.c                           |  4 ++--
>  fs/ubifs/commit.c                                |  6 +++---
>  fs/ubifs/dir.c                                   |  2 +-
>  fs/ubifs/file.c                                  |  4 ++--
>  fs/ubifs/journal.c                               |  4 ++--
>  fs/ubifs/lpt.c                                   |  2 +-
>  fs/ubifs/tnc.c                                   |  6 +++---
>  fs/ubifs/tnc_misc.c                              |  4 ++--
>  fs/udf/balloc.c                                  |  2 +-
>  fs/xfs/xfs_bmap_util.c                           |  2 +-
>  include/net/flow_offload.h                       |  2 +-
>  kernel/async.c                                   |  4 ++--
>  kernel/audit.c                                   |  2 +-
>  kernel/debug/kdb/kdb_io.c                        |  2 +-
>  kernel/dma/debug.c                               |  2 +-
>  kernel/events/core.c                             |  2 +-
>  kernel/events/uprobes.c                          |  2 +-
>  kernel/exit.c                                    |  2 +-
>  kernel/futex.c                                   | 14 +++++++-------
>  kernel/locking/lockdep.c                         | 16 ++++++++--------
>  kernel/trace/ring_buffer.c                       |  2 +-
>  lib/radix-tree.c                                 |  2 +-
>  lib/test_lockup.c                                |  2 +-
>  mm/frontswap.c                                   |  2 +-
>  mm/ksm.c                                         |  2 +-
>  mm/memcontrol.c                                  |  2 +-
>  mm/memory.c                                      |  2 +-
>  mm/mempolicy.c                                   |  4 ++--
>  mm/page_alloc.c                                  |  2 +-
>  mm/percpu.c                                      |  2 +-
>  mm/slub.c                                        |  4 ++--
>  mm/swap.c                                        |  4 ++--
>  net/dccp/options.c                               |  2 +-
>  net/ipv4/netfilter/nf_socket_ipv4.c              |  6 +++---
>  net/ipv6/ip6_flowlabel.c                         |  2 +-
>  net/ipv6/netfilter/nf_socket_ipv6.c              |  2 +-
>  net/netfilter/nf_conntrack_ftp.c                 |  2 +-
>  net/netfilter/nfnetlink_log.c                    |  2 +-
>  net/netfilter/nfnetlink_queue.c                  |  4 ++--
>  net/sched/cls_flow.c                             |  2 +-
>  net/sched/sch_cake.c                             |  2 +-
>  net/sched/sch_cbq.c                              |  2 +-
>  net/sched/sch_fq_codel.c                         |  2 +-
>  net/sched/sch_fq_pie.c                           |  2 +-
>  net/sched/sch_hfsc.c                             |  2 +-
>  net/sched/sch_htb.c                              |  2 +-
>  net/sched/sch_sfq.c                              |  2 +-
>  net/sunrpc/svcsock.c                             |  4 ++--
>  net/sunrpc/xprtsock.c                            | 10 +++++-----
>  net/tls/tls_sw.c                                 |  2 +-
>  sound/core/control_compat.c                      |  2 +-
>  sound/isa/sb/sb16_csp.c                          |  2 +-
>  sound/usb/endpoint.c                             |  2 +-
>  184 files changed, 284 insertions(+), 285 deletions(-)

Thanks,
Reviewed-by: Leon Romanovsky <leonro@mellanox.com> # drivers/infiniband and mlx4/mlx5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604104549.GC8834%40unreal.

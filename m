Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAHG4D3AKGQEVLZ7BBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5CC1ED917
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:18 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id o23sf503608pjs.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227137; cv=pass;
        d=google.com; s=arc-20160816;
        b=dIBQezNTg/51tlRLQX2gJMKRiPfIqNvUtsAkwdaBT4AP1AU7rtJSh8U67ZonKh//aD
         sVhWBMZyM007KWyfXe9e1pelCUwDR9fdmEGsokqI49TT56G0UnvPxus8ur5Ks29P9ROM
         mfzZC/FuXrfq2BH2u2h2Zm6roPHWvEXEeqg9qwq31PeupAb54sZkWQsGwko1iz8lNiHX
         kha1N7MZ1LcLVjbzVqZ8lJhOzkpxWPiJoKZm3DDJlW8hv6uRVqwez+1lSxJQ/66rwyna
         nf567zvhTXh9wf1DZpu2ie8si6INsUN3EgsalzBWdNR4n/5EjM+g+x9h9XKNsgjJEYkM
         d43g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=c5xUJrQl+daSaQrKEHCCDFlWqK1Os9P7Zn6j7GJy5No=;
        b=MbDz5Zr7XDlLpJnxrShz0kX3G04jZ25fsywcfDgBJIoeLaojUIe7n845pu62FsyD0X
         m4ZDELyJLAE2jdW2gNdbRgryXzB+hdMkiqUVzWltRRXawUKxed6D69CVGz5f9Kiv0cCh
         yoXPW+Ji9i0DY2xlI7Mf/vmbIgIQy6gdEWZnxwGnL1IMJtWVVoIkbp9OBDz2J8iLVEVK
         EebvHBlUjPXgmxMSbOhFX3t/UJ+9TgXzpGL7xXdIcKG0TqpHsk/Q1cqJRjH1tLbw+1vI
         is0TfLkyArcvQoKhVwTWUlKuosqVIdi7Oq3jaUafQvavgIuaqfZe4Tp5bIK4Av9esJnF
         UGvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L3CiD9vi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c5xUJrQl+daSaQrKEHCCDFlWqK1Os9P7Zn6j7GJy5No=;
        b=mrrIlZL3Swq3CkEJQgzlg+GXpahu65BUgnvp9gHBKJTkk0jHCOthHr7jjLN5c4QMXZ
         DX5N1nTvruJ3eCjc0BDeW4r6+u0H8YPumkJbuXJoJw8PnBMZ6po8/WJPP969qj0E5P0R
         BeD8bEiQ+iAt4hAluO3EfXhmihN8pgwEqay13r4N7RvvfTkqWBRKcio7os/beZx7WJAw
         U2KNcul6W77RFKF7pRH8vi7iIOUKwmzETSZZmuJw7mpenfLKgL3uxgeRemLTO5h5bkPN
         pj2ef9QCxy5jmEQh+Ypzcu76WcnHAQmXJF0uIsYm5i+syG9dBHIqgsBHnp5Es4N8sY8u
         xK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c5xUJrQl+daSaQrKEHCCDFlWqK1Os9P7Zn6j7GJy5No=;
        b=I61/D5FRhD0sv1/wqPDTGpbYMEHNdf6IEhgaPIGA5ePpPfN/hAN12RTp4m3lSq/Mvq
         x/pIiO1i6uPwRCEwUw4Yyf4NIwCKjqJin1ugGLSM3MK+W+YUcNuzbnsMzwQPCV2ogHwZ
         ndm944hGzxxHulkhdefzfdfPwb8cKcC1V6xw+y4rQaDGuCqP+UiZCh9XCvHimMrOWtdw
         lc5X0c72f9YtZBA+TQgZiQI8VnJHSHICrBlpq2Xseoln7AHihcJmnQQmHbKRgJZgqsYU
         J50YgF0Cv82CF4ilxhsBIXXJChP2V3u+iCAMcNfyX+SwQx+bRp2oilRmF644pAMXfNdj
         88fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sJH0I0knJXmPZtgnfdiY2TLQvLsDydh9/RqEWMe77UPTihCeR
	wh6VyqXuTN/Eo3KWkIAEEqE=
X-Google-Smtp-Source: ABdhPJwhnWhhhQIBA/UjFS0b2tGpnbppqCs8/E0FzK8OaKtVtt37QFDgQ3KM5mJXK6Rr8I+478TLmA==
X-Received: by 2002:a62:8811:: with SMTP id l17mr1457358pfd.72.1591227136847;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:521f:: with SMTP id g31ls1036513pgb.2.gmail; Wed, 03 Jun
 2020 16:32:16 -0700 (PDT)
X-Received: by 2002:a62:1a0f:: with SMTP id a15mr1520663pfa.177.1591227136317;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227136; cv=none;
        d=google.com; s=arc-20160816;
        b=UncA1WydrhsEZ45Chk1+pK22fWTLwFPsm4TbMDwbgvpr1aULpAXvcvgUu5NL4iaJeX
         faCDHPPXsKMZaW6TSzyFu4dtJ7K/AuVXLX5ONSRWSqQiisOYwCTuvFF8+Z1SXW+n5vb7
         8JoUkMprtcN6ZbHxeLuWdu/X1coCUIG8nGZt5CiwK7ASee0JRJZJCAQZ+3+2urppUiay
         W8bWRlHswe+5Iev8bmUjBrdQnSSwLtEYsutjbDr4F+MXW1i51B7oNcyfeYIp7Z63M/bA
         3hjbHPW761pega7t4FCBP1euR3mILcI+JVtlNcf9FNc5DOY5lZ0nJoHM2RaO0EszQEpk
         Qp4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qTtOPNd4jQDbpnjSIiHFwEAA5Z8RbHKDqclLSbVwupE=;
        b=teTQesmBLtLsKewpl/Rrr4RaUVRPfsOPElY23hf2DaG1o1hIr/o0nd1/NmzSPuTA79
         kup0zDYD4K5XGQubz2QFbhxyVeLnwL4mqsHV38WKvBpCwSJQlKAVOoZeg9R95aZ8TZnP
         gbACHTdSfdWDsEbTnX3L02EkXvbB6SrfI7gFjmbJF8RxISYNWXnA71eMAz3aI3pD6xhY
         Nh3UU3FictKDVjl+BMaYvP1HZsa00ehzjkrDDUbu2EE23SDLWcfgpRfGUwuDlhaZOKu2
         a3tSsRmmpZ4nDVCKiRqe+EVgW62X/co4s2IQqdopphzn3Aj6NWsvUxMl7GZJOIu5gvFQ
         cuUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L3CiD9vi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id o9si186454plk.0.2020.06.03.16.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bh7so1364550plb.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
X-Received: by 2002:a17:90b:3705:: with SMTP id mg5mr2492335pjb.24.1591227135814;
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d2sm2763288pfc.7.2020.06.03.16.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 00/10] Remove uninitialized_var() macro
Date: Wed,  3 Jun 2020 16:31:53 -0700
Message-Id: <20200603233203.1695403-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=L3CiD9vi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro.

Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
a single treewide commit in this series. A few others needed to actually
get cleaned up, and I broke those out into individual patches.

-Kees

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Kees Cook (10):
  x86/mm/numa: Remove uninitialized_var() usage
  drbd: Remove uninitialized_var() usage
  b43: Remove uninitialized_var() usage
  rtlwifi: rtl8192cu: Remove uninitialized_var() usage
  ide: Remove uninitialized_var() usage
  clk: st: Remove uninitialized_var() usage
  spi: davinci: Remove uninitialized_var() usage
  checkpatch: Remove awareness of uninitialized_var() macro
  treewide: Remove uninitialized_var() usage
  compiler: Remove uninitialized_var() macro

 arch/arm/mach-sa1100/assabet.c                 |  2 +-
 arch/arm/mm/alignment.c                        |  2 +-
 arch/ia64/kernel/process.c                     |  2 +-
 arch/ia64/mm/discontig.c                       |  2 +-
 arch/ia64/mm/tlb.c                             |  2 +-
 arch/mips/lib/dump_tlb.c                       |  2 +-
 arch/mips/mm/init.c                            |  2 +-
 arch/mips/mm/tlb-r4k.c                         |  6 +++---
 arch/powerpc/kvm/book3s_64_mmu_radix.c         |  2 +-
 arch/powerpc/kvm/book3s_pr.c                   |  2 +-
 arch/powerpc/kvm/powerpc.c                     |  2 +-
 arch/powerpc/platforms/52xx/mpc52xx_pic.c      |  2 +-
 arch/s390/kernel/smp.c                         |  2 +-
 arch/x86/kernel/quirks.c                       | 10 +++++-----
 arch/x86/kvm/mmu/mmu.c                         |  2 +-
 arch/x86/kvm/mmu/paging_tmpl.h                 |  2 +-
 arch/x86/kvm/x86.c                             |  2 +-
 arch/x86/mm/numa.c                             | 18 +++++++++---------
 block/blk-merge.c                              |  2 +-
 drivers/acpi/acpi_pad.c                        |  2 +-
 drivers/ata/libata-scsi.c                      |  2 +-
 drivers/atm/zatm.c                             |  2 +-
 drivers/block/drbd/drbd_nl.c                   |  6 +++---
 drivers/block/drbd/drbd_state.c                |  2 +-
 drivers/block/rbd.c                            |  2 +-
 drivers/clk/clk-gate.c                         |  2 +-
 drivers/clk/spear/clk-vco-pll.c                |  2 +-
 drivers/clk/st/clkgen-fsyn.c                   |  1 -
 drivers/crypto/nx/nx-842-powernv.c             |  2 +-
 drivers/firewire/ohci.c                        | 14 +++++++-------
 drivers/gpu/drm/bridge/sil-sii8620.c           |  2 +-
 drivers/gpu/drm/drm_edid.c                     |  2 +-
 drivers/gpu/drm/exynos/exynos_drm_dsi.c        |  6 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c            |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c            |  2 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |  4 ++--
 drivers/i2c/busses/i2c-rk3x.c                  |  2 +-
 drivers/ide/ide-acpi.c                         |  2 +-
 drivers/ide/ide-atapi.c                        |  2 +-
 drivers/ide/ide-io-std.c                       |  4 ++--
 drivers/ide/ide-io.c                           |  8 ++++----
 drivers/ide/ide-sysfs.c                        |  2 +-
 drivers/ide/ide-taskfile.c                     |  1 -
 drivers/ide/umc8672.c                          |  2 +-
 drivers/idle/intel_idle.c                      |  2 +-
 drivers/infiniband/core/uverbs_cmd.c           |  4 ++--
 drivers/infiniband/hw/cxgb4/cm.c               |  2 +-
 drivers/infiniband/hw/cxgb4/cq.c               |  2 +-
 drivers/infiniband/hw/mlx4/qp.c                |  6 +++---
 drivers/infiniband/hw/mlx5/cq.c                |  6 +++---
 drivers/infiniband/hw/mlx5/devx.c              |  2 +-
 drivers/infiniband/hw/mlx5/qp.c                |  2 +-
 drivers/infiniband/hw/mthca/mthca_qp.c         | 10 +++++-----
 drivers/infiniband/sw/siw/siw_qp_rx.c          |  2 +-
 drivers/input/serio/serio_raw.c                |  2 +-
 drivers/input/touchscreen/sur40.c              |  2 +-
 drivers/iommu/intel-iommu.c                    |  2 +-
 drivers/md/dm-io.c                             |  2 +-
 drivers/md/dm-ioctl.c                          |  2 +-
 drivers/md/dm-snap-persistent.c                |  2 +-
 drivers/md/dm-table.c                          |  2 +-
 drivers/md/dm-writecache.c                     |  2 +-
 drivers/md/raid5.c                             |  2 +-
 drivers/media/dvb-frontends/rtl2832.c          |  2 +-
 drivers/media/tuners/qt1010.c                  |  4 ++--
 drivers/media/usb/gspca/vicam.c                |  2 +-
 drivers/media/usb/uvc/uvc_video.c              |  8 ++++----
 drivers/memstick/host/jmb38x_ms.c              |  2 +-
 drivers/memstick/host/tifm_ms.c                |  2 +-
 drivers/mmc/host/sdhci.c                       |  2 +-
 drivers/mtd/nand/raw/nand_ecc.c                |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                 |  2 +-
 drivers/mtd/parsers/afs.c                      |  4 ++--
 drivers/mtd/ubi/eba.c                          |  2 +-
 drivers/net/can/janz-ican3.c                   |  2 +-
 drivers/net/ethernet/broadcom/bnx2.c           |  4 ++--
 .../ethernet/mellanox/mlx5/core/pagealloc.c    |  4 ++--
 drivers/net/ethernet/neterion/s2io.c           |  2 +-
 drivers/net/ethernet/qlogic/qla3xxx.c          |  2 +-
 drivers/net/ethernet/sun/cassini.c             |  2 +-
 drivers/net/ethernet/sun/niu.c                 |  6 +++---
 drivers/net/wan/z85230.c                       |  2 +-
 drivers/net/wireless/ath/ath10k/core.c         |  2 +-
 drivers/net/wireless/ath/ath6kl/init.c         |  2 +-
 drivers/net/wireless/ath/ath9k/init.c          |  2 +-
 drivers/net/wireless/broadcom/b43/debugfs.c    |  2 +-
 drivers/net/wireless/broadcom/b43/dma.c        |  2 +-
 drivers/net/wireless/broadcom/b43/lo.c         |  2 +-
 drivers/net/wireless/broadcom/b43/phy_n.c      | 12 ++++++++----
 drivers/net/wireless/broadcom/b43/xmit.c       | 12 ++++++------
 .../net/wireless/broadcom/b43legacy/debugfs.c  |  2 +-
 drivers/net/wireless/broadcom/b43legacy/main.c |  2 +-
 drivers/net/wireless/intel/iwlegacy/3945.c     |  2 +-
 drivers/net/wireless/intel/iwlegacy/4965-mac.c |  2 +-
 .../wireless/realtek/rtlwifi/rtl8192cu/hw.c    |  8 ++++----
 drivers/pci/pcie/aer.c                         |  2 +-
 drivers/platform/x86/hdaps.c                   |  4 ++--
 drivers/scsi/dc395x.c                          |  2 +-
 drivers/scsi/pm8001/pm8001_hwi.c               |  2 +-
 drivers/scsi/pm8001/pm80xx_hwi.c               |  2 +-
 drivers/spi/spi-davinci.c                      |  1 -
 drivers/ssb/driver_chipcommon.c                |  4 ++--
 drivers/tty/cyclades.c                         |  2 +-
 drivers/tty/isicom.c                           |  2 +-
 drivers/usb/musb/cppi_dma.c                    |  2 +-
 drivers/usb/storage/sddr55.c                   |  4 ++--
 drivers/vhost/net.c                            |  6 +++---
 drivers/video/fbdev/matrox/matroxfb_maven.c    |  6 +++---
 drivers/video/fbdev/pm3fb.c                    |  6 +++---
 drivers/video/fbdev/riva/riva_hw.c             |  3 +--
 drivers/virtio/virtio_ring.c                   |  6 +++---
 fs/afs/dir.c                                   |  2 +-
 fs/afs/security.c                              |  2 +-
 fs/dlm/netlink.c                               |  2 +-
 fs/erofs/data.c                                |  4 ++--
 fs/erofs/zdata.c                               |  2 +-
 fs/f2fs/data.c                                 |  2 +-
 fs/fat/dir.c                                   |  2 +-
 fs/fuse/control.c                              |  4 ++--
 fs/fuse/cuse.c                                 |  2 +-
 fs/fuse/file.c                                 |  2 +-
 fs/gfs2/aops.c                                 |  2 +-
 fs/gfs2/bmap.c                                 |  2 +-
 fs/gfs2/lops.c                                 |  2 +-
 fs/hfsplus/unicode.c                           |  2 +-
 fs/isofs/namei.c                               |  4 ++--
 fs/jffs2/erase.c                               |  2 +-
 fs/nfsd/nfsctl.c                               |  2 +-
 fs/ocfs2/alloc.c                               |  4 ++--
 fs/ocfs2/dir.c                                 | 14 +++++++-------
 fs/ocfs2/extent_map.c                          |  4 ++--
 fs/ocfs2/namei.c                               |  2 +-
 fs/ocfs2/refcounttree.c                        |  2 +-
 fs/ocfs2/xattr.c                               |  2 +-
 fs/omfs/file.c                                 |  2 +-
 fs/overlayfs/copy_up.c                         |  4 ++--
 fs/ubifs/commit.c                              |  6 +++---
 fs/ubifs/dir.c                                 |  2 +-
 fs/ubifs/file.c                                |  4 ++--
 fs/ubifs/journal.c                             |  4 ++--
 fs/ubifs/lpt.c                                 |  2 +-
 fs/ubifs/tnc.c                                 |  6 +++---
 fs/ubifs/tnc_misc.c                            |  4 ++--
 fs/udf/balloc.c                                |  2 +-
 fs/xfs/xfs_bmap_util.c                         |  2 +-
 include/linux/compiler-clang.h                 |  2 --
 include/linux/compiler-gcc.h                   |  6 ------
 include/linux/page-flags-layout.h              |  2 +-
 include/net/flow_offload.h                     |  2 +-
 kernel/async.c                                 |  4 ++--
 kernel/audit.c                                 |  2 +-
 kernel/debug/kdb/kdb_io.c                      |  2 +-
 kernel/dma/debug.c                             |  2 +-
 kernel/events/core.c                           |  2 +-
 kernel/events/uprobes.c                        |  2 +-
 kernel/exit.c                                  |  2 +-
 kernel/futex.c                                 | 14 +++++++-------
 kernel/locking/lockdep.c                       | 16 ++++++++--------
 kernel/trace/ring_buffer.c                     |  2 +-
 lib/radix-tree.c                               |  2 +-
 lib/test_lockup.c                              |  2 +-
 mm/frontswap.c                                 |  2 +-
 mm/ksm.c                                       |  2 +-
 mm/memcontrol.c                                |  2 +-
 mm/memory.c                                    |  2 +-
 mm/mempolicy.c                                 |  4 ++--
 mm/page_alloc.c                                |  2 +-
 mm/percpu.c                                    |  2 +-
 mm/slub.c                                      |  4 ++--
 mm/swap.c                                      |  4 ++--
 net/dccp/options.c                             |  2 +-
 net/ipv4/netfilter/nf_socket_ipv4.c            |  6 +++---
 net/ipv6/ip6_flowlabel.c                       |  2 +-
 net/ipv6/netfilter/nf_socket_ipv6.c            |  2 +-
 net/netfilter/nf_conntrack_ftp.c               |  2 +-
 net/netfilter/nfnetlink_log.c                  |  2 +-
 net/netfilter/nfnetlink_queue.c                |  4 ++--
 net/sched/cls_flow.c                           |  2 +-
 net/sched/sch_cake.c                           |  2 +-
 net/sched/sch_cbq.c                            |  2 +-
 net/sched/sch_fq_codel.c                       |  2 +-
 net/sched/sch_fq_pie.c                         |  2 +-
 net/sched/sch_hfsc.c                           |  2 +-
 net/sched/sch_htb.c                            |  2 +-
 net/sched/sch_sfq.c                            |  2 +-
 net/sunrpc/svcsock.c                           |  4 ++--
 net/sunrpc/xprtsock.c                          | 10 +++++-----
 net/tls/tls_sw.c                               |  2 +-
 scripts/checkpatch.pl                          | 18 ++++++------------
 sound/core/control_compat.c                    |  2 +-
 sound/isa/sb/sb16_csp.c                        |  2 +-
 sound/usb/endpoint.c                           |  2 +-
 tools/include/linux/compiler.h                 |  2 --
 tools/virtio/linux/kernel.h                    |  2 --
 195 files changed, 310 insertions(+), 328 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-1-keescook%40chromium.org.

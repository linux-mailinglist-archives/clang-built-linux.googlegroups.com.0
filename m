Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAEKU6EAMGQEOH2L2FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DE03DF7F7
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 00:36:49 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id p71-20020a25424a0000b029056092741626sf771165yba.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 15:36:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628030208; cv=pass;
        d=google.com; s=arc-20160816;
        b=z74jEz/zLmsCs/9KeLEg049hI9yiCmtCEIkuRwfOY1L4VUQCrAbYMQZH2RPIOldDgD
         2FCaP34Rcs1O7MgvUZMeZ0YouKbg7bMaZNKtbTl5F/PfQ8S43Dlu21dwO7+9RgWOTNEj
         jbEAjwZLp3eTbbLTTGWulKF9Zc9gPJSR2kAojm3Cml7oECibZ8HzfIGHxXiudn/2wlRO
         6oo3phax0lqckFSWZevYJsAagij6K0mwIIdxBA0ob+ZVzrRaYImVGIWrjOGgWO3kCiXO
         erzav6HDxM3IdUU32BHDOGsIHbX59FNdke/jYPwCSqTlkZ3tFRK0umyZ4LV109WM39cJ
         /Sbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=k/jetT0GOhDI0VlWUxOrjR2hOoRCeuoARLSoKz2jZTE=;
        b=bk0KrkB4r8+DnfOzHxhugfO5gLNL4ujmdx9s0cYG4XwAA1k/VETfz7So68E/e8zCHJ
         +2AEE6GBDQtuaIcb3+jwX8zD39ybthnHdmXZW5GXA+WUOUlcUvmB5QzIdFvvgPgNyiWr
         hkt0l2857OyWlJ7uBqeGMreF25QGegRY/IWNvvzAJ0mcznqCu4K0GZcOmLQ0Ew7lrNDb
         1WB5QNeqrWoMh9qMgZukZELy72sEtLjRPg9L8fXxxoklEKce5T8so+8PPQgcA++bFFxf
         6gutVZ3Opd4TLo8H3lGO3xH0KYlHAoI7t//MrXq0mliNJ3oDFZNDWp/gTluGwAaH2jKb
         0txw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sAXwd2yV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k/jetT0GOhDI0VlWUxOrjR2hOoRCeuoARLSoKz2jZTE=;
        b=jm8UK8Jr3xOKYknVyo095mDAh1aMAt1nGB17pnGQz1oauVaHUthMQ3JplnkRS97uCq
         i1fDMnrhe2jQxbBFvSGvIpnVNIxDAr0V/rl0e9K5dTWB/eW+tNV+ZoWvdTsgC3NnynF2
         s9IDaPKfGfadBRhGO/bjmGN1KTgrOQfC3QAPYmf8Vcbc0Kgv6riIP9+94esrrSjeErPL
         8IAE00bdKHNK9uJrO2YT8MG1biU/2anOmYdxOY8KF3zgPaNL4p99FZELCqQVTegxL40S
         GaEX6UN1QDuPU761qtNjA3uyjKlWDji5f4gDOm8y2FVqurMVTf7FAGLArCehAlPr4WWi
         WHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k/jetT0GOhDI0VlWUxOrjR2hOoRCeuoARLSoKz2jZTE=;
        b=nb5vUcPTO+ET83ZPghhl7rxVmml3+uaUpCESI9FS1N3FyODj+vbMgamR1Sbl95aoe/
         JH5dEHtBYLVNADv0pJg5SBNOlOWnrP6xEHykdlP50gAiQQAcahbX/nYKFQKLKz/ZLbyO
         9zP7c8YOPKaSeOeQowoLdH92XMKxbcc0BzA8m4ViPaq1Ay51K2xISqukX7mJ+oFwyUFM
         EbuNFshRnCCKqWyiqLbTV/A9URZvu9Q/MVujk5r+79yOO3fdmbxXHpVL3E/XeETBHNXd
         JRMc3Oya2jqRjmRb3Ccd744c5fMpMahiWCACJEiR7CNYYa2Tp+ills8v3TmH5MPQDrta
         dyeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Z4Zp5AwhF0h18AtyIpTzEFOIxInrKewkM3SoGJpphbbsbmeZU
	PlZd/blrDortrfNuqHgUKT0=
X-Google-Smtp-Source: ABdhPJzsPUr/hNdrdjflHgORqGMLoGiQ+BYnt2FYXnD3Ey1R+YgZ21zk8P2+QeyM04UZsrDYMyUCkQ==
X-Received: by 2002:a25:2e05:: with SMTP id u5mr14700484ybu.240.1628030208694;
        Tue, 03 Aug 2021 15:36:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:721:: with SMTP id l1ls48142ybt.5.gmail; Tue, 03
 Aug 2021 15:36:48 -0700 (PDT)
X-Received: by 2002:a25:50d7:: with SMTP id e206mr30867892ybb.131.1628030208070;
        Tue, 03 Aug 2021 15:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628030208; cv=none;
        d=google.com; s=arc-20160816;
        b=zzYf44DQe+YNQ1juP5et+huY3FmMSw/wMv5kjlSoHRMteNFvSThYkT3jJY+tod1bnW
         oAXpuR8r70ST71R1N6aTJD0FGagtYlZ2EhdQ/UnWUG5Kgkz2sSCi738C8K51l7/vVIEb
         bl4HHn64kvWA0uWyw3KNdjj3ttWXhZ6Cu+h9zbC5WAkO411zL69QCpOu2i1dCNcMqyEo
         PV9TgBVI94yWajV4KgGgc/wb2FoyX3Ep06uATn15oXF5m/5T/BQCBOpv8teHyojeztwN
         Y5xq3EjmyLiOR9r3WX8Zsbaml5R2sH4YwKjq4HpbUZblb+4R2pBa6pzON2GGOVneYQ2g
         8K8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=f2qnxRAHlt+mQb2Qtxt+FnXyUaEtlvq7L7fwS/3o59s=;
        b=mXhjpmhKDlW8gHz5nM6KujC+vDshZeKRsIOE43DUgpWH88T+uVX6XBaaRFuLmkDO7m
         yH3+eaWoNGGswWFopMM61Uj+dI6Wjb2eYvMPUKpAVCdldWNE48jpf6ap5TTaJlZqjSdu
         1wstsods3O5ARi3IynU1nMxe0lR0VnrQaAIzqELt+kw6IDVLZZa9VKXr6cYWvs0zZEl2
         WxBAIIJbcxZ79RAm7ptxEHXn/Umb+5DWakceDJLmad9tCMMsyJpj8Id0yE4LvysLsR8t
         oyZrw153ExmaFuv4JGoBmyxgu1+ytmeqVLCqU51lWd1ahbJx/4Q2nxQbNnzi0AjfSAJu
         NSUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sAXwd2yV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org ([198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si15184ybc.5.2021.08.03.15.36.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B7E861029;
	Tue,  3 Aug 2021 22:36:42 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/4] staging: r8188eu: Fix clang warnings
Date: Tue,  3 Aug 2021 15:36:05 -0700
Message-Id: <20210803223609.1627280-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sAXwd2yV;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

This series cleans up all of the clang warnings that I noticed with
x86_64 allmodconfig on the current staging-next. This has been build
tested with both clang and gcc with x86_64 allmodconfig.

Nathan Chancellor (4):
  staging: r8188eu: Remove _rtw_spinlock_free()
  staging: r8188eu: Remove unnecessary parentheses
  staging: r8188eu: Remove self assignment in get_rx_power_val_by_reg()
  staging: r8188eu: Remove pointless NULL check in
    rtw_check_join_candidate()

 drivers/staging/r8188eu/core/rtw_cmd.c        |  2 -
 drivers/staging/r8188eu/core/rtw_mlme.c       | 18 +----
 drivers/staging/r8188eu/core/rtw_pwrctrl.c    |  2 +-
 drivers/staging/r8188eu/core/rtw_recv.c       | 11 ---
 drivers/staging/r8188eu/core/rtw_security.c   |  4 +-
 drivers/staging/r8188eu/core/rtw_sta_mgt.c    | 77 -------------------
 drivers/staging/r8188eu/core/rtw_wlan_util.c  |  2 +-
 drivers/staging/r8188eu/core/rtw_xmit.c       | 19 -----
 drivers/staging/r8188eu/hal/odm.c             |  2 +-
 drivers/staging/r8188eu/hal/rtl8188e_rf6052.c |  2 -
 drivers/staging/r8188eu/hal/usb_halinit.c     |  2 +-
 .../staging/r8188eu/include/osdep_service.h   |  1 -
 drivers/staging/r8188eu/os_dep/os_intfs.c     |  2 -
 .../staging/r8188eu/os_dep/osdep_service.c    |  4 -
 14 files changed, 9 insertions(+), 139 deletions(-)


base-commit: 11e14fc3e49481b6322bbd976bb7dd2f0d7ef3d2
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-1-nathan%40kernel.org.

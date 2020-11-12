Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBW6PW36QKGQEC2SU2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1402C2B1028
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:23:40 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id b185sf2324191lfg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:23:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605216219; cv=pass;
        d=google.com; s=arc-20160816;
        b=mLAAH658ETgT6CCjnRlOJUfgmGjVRcTsxQDLP0xn5V2iOKwv3oukjh1xrUclaEccdT
         ZGN1CIDlj1+W+ZwCVGbuFwYlSpgZpqNPDaecw+TM5Qsh4Blj5AyicFWO5dCtTsNLxLxl
         LurmTGwHSURkJGqQjlr9TAETxXfV+qBklzwqx0s3DanjdpdNbfp+z35RWoqXch/EWO1D
         TlA95rcdzDajjkq4RBiZUXdPxYmUqzjUBkOn3nSHOktS6Cqye91r4P+nJxfRzuJ+HT5t
         4oRFU1AKkUDuRoilW4QGa+/ca1EYGz0z9GTIaOoz4L4wfCatlHvydE04dwKWEnLCLLvt
         BRxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wU+kA34UFdn1QzTUuecLSVe7IcohVbMbUJ1txy0qBFg=;
        b=jrA1MgRRsHRPLLFlphT245Ro+kY8P5gslqcboPaXDBxqOwrwfiHdkOuufDxo7JPRWO
         nIDYg65OaK5FFGLYm/neyRgy+gbgRXmtKF3Pw8xjjJ3fho4uSrg/Z+aCqCClyE1IRevN
         9PV62TfOpA5Q+q2AGDF/rbcXUVPEoV/i54JeZoyOZ1ciDW/4YlF2Zv+bysE7H4GsiBlj
         kME2USiNEZDTXoZT8W/z/ECq2pQPwyimtrdjuKV2yDKzpglS8xxR4Abl0fLJOoR+rK4v
         Wy3jTNwZnVEpv9ztEodff1JJxHPVjlkXh37vwuRtS27M+lp24Ci4VZGJfwUTL2xPiDTh
         JrRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wU+kA34UFdn1QzTUuecLSVe7IcohVbMbUJ1txy0qBFg=;
        b=EIYtYHho/kvQuIV0qnUgWPWNjRBFhH5nCh5cQt/3lEkdrjwbtu27rpdvlnk2nl+gs5
         JZ2WWG83moMpXJoHyKMCKpwD6oKah0YNzUfKIlezisC5wuH0iiIa+6gzxzgdFWgI7iwb
         gFsQhJcwws8hDgEzyjOZSuIY6YLxoCCEQmuN/XcY4H3mtjRAD28cLiqUX0QUCgqsWej7
         QrFOa4cWfHEG1hWRV/SKZKCJa0dhELTK/WXcuCdiANJ8da8nD1MsYyNk7A6Nwmpppe2R
         HbD0oKLIi+tlUbFTVK2ct2rCTwVixa1UZyvgUq5j6v3ky3enAATkLXUEVEzexmUsr17P
         2J4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wU+kA34UFdn1QzTUuecLSVe7IcohVbMbUJ1txy0qBFg=;
        b=PiCirCq6tlPk9KQ//8Cp9fPdOawNgbo8yDDKodJozAIA9CTYCugh5lzc3ophYsPssN
         Nud5MiEG2pvY+TLnwPR3FZ0LR2sw2hXuzCcho75ZTp2T4DlVsXD0BnvKnlnplelgc3H3
         wN8/ukp8gUFey7P4Ruy/QHiUbgvtoj1772Bf1ifvDfp7HlYHfeCd7RBOaiQILLFhYeGj
         ZFlwAS533WGxeqxXNgbM89sdSb1Z32DQu64Xgep48H/JirMoxSIDduiytCQ4Ze2u1Unq
         DvLUJgy21bzY0CwhlGOaR7oust4Q3N7qL8/nG3xrKt6YsxPv55jHI58/MXD44pB0GS/B
         v5Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Y3KEr3nlnzWftj/ESfwpIIM8/T3YsgBzB0/YBujPom9Ig1+g9
	hqxV54IxlMARs7DzL1C7Lc4=
X-Google-Smtp-Source: ABdhPJwLqZ/6DDPElJsqjUjQbirWnlkaQiadKhMh1HpTLN4Jrqa8yYVwiDciWwPRMN/oafp1bS9xqQ==
X-Received: by 2002:a19:7e53:: with SMTP id z80mr584411lfc.250.1605216219496;
        Thu, 12 Nov 2020 13:23:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls2247740lfa.2.gmail; Thu, 12 Nov
 2020 13:23:38 -0800 (PST)
X-Received: by 2002:a19:6a07:: with SMTP id u7mr574501lfu.252.1605216218352;
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605216218; cv=none;
        d=google.com; s=arc-20160816;
        b=bCEjSCh0qqOyByxnFIoA8RiDRPnv4yb4+1bdvJqnasc3WIoRbId1KJMoIPC4h+j50T
         KTL3bfzJRoSucHDXOcj4k++KJczqq2iR72doX4YoD/aRVDvFwQZBoWXvv6ygY/oJSluH
         /4wqCfVRnIchP9aI66LhicBBm5TuCzZh71a9B4xJ6ngslj6CUksLiiDsxydyGqJFzK8E
         QeQmy1zdMZT+Ir95O9r2jpkzQfaDKHfPiDpPeVdQq/tP5Z+M6UijJsKD/WkG1Y22EWau
         tBKRQ10omTn5VPb4VuggGSkUs529y0r4Mi4dGub+lWpVMoxXUwpinoI/hYA3FQtjyRcY
         /ZPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bSoCHk+UXsRDwWIQludqA+FfG1IC1zBHVbYXnQ+FhvI=;
        b=uBWROWhxwezIpLR3v/TQBBLY9oxJtYp6EVhfKhrtjfnKve/hHN4MX892VR/fMK6VhN
         oVGqioMGr6j9zxM7DDBQq/qwswoh58DWgb3G4UeWwegX3hzmh3e889JQNuzdqfOj3YQh
         3Hdg7lHFcNEWydDM1JbwUaZSiu7S3rebrYHSSPTk7wQ1QrR4Jza6aXSFcIEGa9etWAlj
         5lRKNx3uvUEgapdYiiCSSkYMBcL4uvgsJJqEtZhqt/ob4X5z0vL2z/tROrS/ucWdWw3W
         HzkEcx+ZK9UsJtTCxMBMUek2uMgSA2J5ulNdZ+6ZAlMTs7okrKo4/GR/8kfK1DEsZX75
         yepA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id v2si117070ljd.5.2020.11.12.13.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id C172E1F466C3
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] xor-neon: Remove GCC warn & pragmas
Date: Thu, 12 Nov 2020 23:24:55 +0200
Message-Id: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Dear all,

This is v2 of the patch series at
id:20201106051436.2384842-1-adrian.ratiu@collabora.com

Tested on next-20201112 using GCC 10.2.0 and Clang 10.0.1.

Kind regards,
Adrian

Changes in v2:
  - Dropped the patch which disabled Clang vectorization (Nick)
  - Added new patch to move pragmas to makefile cmdline options
  (Arvid and Ard)
  
Adrian Ratiu (1):
  arm: lib: xor-neon: move pragma options to makefile

Nathan Chancellor (1):
  arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning

 arch/arm/lib/Makefile   |  2 +-
 arch/arm/lib/xor-neon.c | 17 -----------------
 2 files changed, 1 insertion(+), 18 deletions(-)

-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112212457.2042105-1-adrian.ratiu%40collabora.com.

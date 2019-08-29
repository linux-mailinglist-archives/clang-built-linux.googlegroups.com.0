Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNPATXVQKGQEA3HAJVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C46EFA11BC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 08:27:01 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id q9sf512632lfm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 23:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567060021; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPted4+g2e5MVbNMz5cB5OuqrMQwvBm8bui9T3eK9ZrNBRfLbgFH1TnC982GmN9InU
         xoVCqMJNUyMD+9us9QhpGg8bwThUCW10VTgIyZd/z2lTuRWiD4d6wLdcf87fygoQU5hI
         NzUgbkN9B1rIhKa3CdSYI2giHFetHqqy81Y1/dTre5HlOKIMaXLb2HLLW+ubzMIvYWc5
         0ZPS3u4XiBV1j2pZhuFuKusbzD97WXjtbVshU09pg8vXbcsNoMgIUJN9ThQd8ZJEECT7
         U8fPlucHHyDGJzZ4oATQ04UlJybDHtxXcdHvFpr1qPQp+u4mmNWrRmgtM3Be/6tWAFLM
         bV/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=18Fuym16fXKU16oUXtKTb7XePxZc8W88OK9FNgcFlDM=;
        b=HBRIMaW0Me+vRJQrLi8vgfyBycpPIfZhJLal+yIEG/NSAkldZrK6HJAZvsUuVqzPRs
         dkaEAh7vXT7+AdvlJKUYYMXz7PlODltmr9yFh/VaS2WzhZSDTXlpMUgWAUTDj/pvNKpW
         qYFmIpSYFcvXJyGGEXw6esP73cxT+f1b3IlxeRcJxIFmnu6oi1Wc5/bWT2IAowN9UKup
         OUWZqORy7vf7KU7HgZIREqPRUjaVdzQceuhpxUxcfajuBTnSuWxLMxO9P0mFJMXsM1pD
         f2pcywHBdv1Ev+UpAmM/vHwTYL6u2l0FczJdsyxbCo+I08ycGXdrpWpbTNByYiD1Vk+A
         UJKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/6PpjyS";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=18Fuym16fXKU16oUXtKTb7XePxZc8W88OK9FNgcFlDM=;
        b=n5QaiMfHH0fs6Lilt4PXkdE2J8Z99l6rvwqLxt3usTWdk8rfoErY+vp2p9OUcWB2kJ
         WKFmcXB++K68V+9q9nEDdM8DInxdWIjjLBgQYiwaofUC9EYhWQq3ag10DhRI5CbOHoV+
         myD3b37Vl7UGYDPJDztsCdxPZ1eZ8VKcQ7heLQqop+76qgDkgeP9Cej9pG/Q3uriIUk9
         mrkQMPY0dZmLoTS8m2GaTSnVCrkbfMhhSCx2AilpnzWrSIfRq6wvMrSkM+xO5/0mcTQ8
         +J0nUiH/5H4RFQC03mQZOAWUVEn/6e1Crqb3ozfhxfW3MF/ADzwQVrrERbMjmu/xOoXj
         zTfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=18Fuym16fXKU16oUXtKTb7XePxZc8W88OK9FNgcFlDM=;
        b=DWrg0qE1Bo/9KQZ7zr8MzRFnkwWVMB6GbkCc8En3XgjacF1KF+Zl9j2+y5C7qrcm+q
         6u29aQOWyrUhaH0bw+IZxOP5a85uyVo6rKux6lDTVH47/Ugj+xdmmgNPqXOeZqfcaoCW
         KFoRgog+GtVbqj5D484dHOfz63yC9CSAeG3r1Cm2gwdhANyAc0yn9ztZwJFCO9eSzaZf
         k/xD3eu4mb9lWlxjKSMvm6D7XsXEK/jNHe7h4TT49/xkoJVY3DDpABWFUsvDxOb8evCw
         u/Vh1GwuffIZDLyOGfo5wlMCWLw7NXeTh/PmuGu0XFwIP8CfVZKDvWCra+GEELwHabFP
         8Irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=18Fuym16fXKU16oUXtKTb7XePxZc8W88OK9FNgcFlDM=;
        b=pvd4Jt21OAJM/9p6vUt/jGTDbWDyeKEVMOzbaUNu9FcITcz1uZl4NAohWt1FjmqLOz
         CL8iVdiNKOck+ruaw047yU+RIQ5RGm/4A5mx0CVr087tKhv1mAQbyPKl8WP23g66UD4P
         wJUX+9NqBSchubi/Z4oD3jPyPPuntCktSXc5heMhkCln7G4Lwrox0cMXdgKRhOSSpIQ0
         HZVNqJzuBpmmXliWDquJy/kQWJpBkdHQFyEkctaMBkyoHNR+z0FoH5mxVUBNE2eeH0Wy
         6kmoIRVvsboi5TOw8Oc1ZMJYkmQV/aEjHxhqk5p3wqOPmycWOQYu8ddI4AYZrd1yPZ+/
         +yPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4F0jupQNINd7zyTQHJ/GjG6AAMtMa6y8RhloHfBLgxgiBsJpt
	DRWjdR3hHiqi1pnklRHjPsU=
X-Google-Smtp-Source: APXvYqxiZsOmdDSs6jZYTeK6MFxv19Z57DgkNlU52wpIB6ctE2CUe9OI1okbaGW8CNUMpFm1oWNvog==
X-Received: by 2002:a05:6512:499:: with SMTP id v25mr1287168lfq.30.1567060021287;
        Wed, 28 Aug 2019 23:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9245:: with SMTP id v5ls160736ljg.3.gmail; Wed, 28 Aug
 2019 23:27:00 -0700 (PDT)
X-Received: by 2002:a2e:914c:: with SMTP id q12mr4313377ljg.34.1567060020843;
        Wed, 28 Aug 2019 23:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567060020; cv=none;
        d=google.com; s=arc-20160816;
        b=Jf26PPKY97DMU8rdB6LiocvmYSqOYlR0C5ivut4qjo4/q4ulqsC4kqdm3iny3SGl13
         M5zoFyoV6vasW4u6DihLLrU+xgUemYledH+7gQxk503y/nLCj9NBctk4jRbImwhVHeja
         4mxN0LUdiQ56zQfei9P1v/K5V+hHAZz7jmRu51kmvdvZokfrDfSuQ/IlhLk/gxbPvtKf
         4CcfTiGJODuSE37u7tXRFHxMTO7/7mt/loYKxuxXt3G1oO8lp/uhhAtETh2xPkXbJ7If
         Tk9cXEFHalpkWQGkDxhujL7Tz71fzPP8rYRp0uQxVmP4NW2emytzdJuU9a9M6HEfGcQR
         cG8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KytG/7ymtFjDfAwGsiRAdcQCUZ/+jD07+aAcotArQAM=;
        b=MDhHyHzBUh9QhwZ0VHsMoLI3SMIYM4RCaP9fd6TVRripNryHvOaPHmF+cE1udvpw86
         2aBeQJ91xp4d3KfLioCdEWzU3BxTMFImBpY6LieTM8hMedSj8Qf3pqnJ9cH/4BNd3BuA
         66YsB1f0IDAwMIjx2LUJiPIb5PstXiAVMvdl6qr5vGfvGwezbP3XFQ7XGlcHz7cmSFl0
         /mlcU9ylsBi6e1WMwoY6Y66HmLN/P43IStjHNXK1WpsCdq73y0Yr6cWGC09szK69LdHu
         x4tTDawPrtoFMQW3bVGuucovexrLMNOg7xnc8s1fvhvzyhbnWK52q2atgZHSslUHsOVa
         TwRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/6PpjyS";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x14si86223lfc.2.2019.08.28.23.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 23:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id h7so797545wrt.13
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 23:27:00 -0700 (PDT)
X-Received: by 2002:adf:f801:: with SMTP id s1mr9347320wrp.320.1567060020018;
        Wed, 28 Aug 2019 23:27:00 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c201sm3095530wmd.33.2019.08.28.23.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 23:26:59 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Stefan Agner <stefan@agner.ch>,
	Matthias Kaehlcke <mka@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Wed, 28 Aug 2019 23:26:35 -0700
Message-Id: <20190829062635.45609-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="F/6PpjyS";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
softirq.c:(.text+0x504): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
softirq.c:(.text+0x58c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
softirq.c:(.text+0x6c8): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
softirq.c:(.text+0x75c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
softirq.c:(.text+0x840): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
'-meabi gnu' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot because the calling
convention was not correct. Now that it is fixed, add this to
the command line when clang is 10.0.0 or newer so everything
works properly.

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..7b5a26a866fc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
+CFLAGS_ABI	+=-meabi gnu
+endif
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829062635.45609-1-natechancellor%40gmail.com.

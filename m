Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWVR7T2QKGQERCHZNXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ABA1D5C6B
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 00:34:03 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id n22sf1653958uaq.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 15:34:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589582042; cv=pass;
        d=google.com; s=arc-20160816;
        b=0SI6bthZQX2kOM+e+GrQGH2g5AfzFH/rlduPrrWywDEn8Z3CrY/2LHcR8Q0N1Rxv59
         nFjMXwU6f5x/yN/z8KrwQ+GNlnTZ7g4LzS2McxxoAaGYrNSx4voClwMIcGwrTxdtvyO+
         5LqukhnQMxYUJaDuH1Fgida69LXE9vv74z3ew8Op7a+T34aAOB6jZ17pEOm4RH6iAsuB
         YCWBrZLWVr/GHNnqzjhj8imAxhG/3bSNAzNMHHvps3yrpuXpu+5si7+RgBV30XZbgygX
         Ca/MKnflMDJ6ewF8Tp4Nc6EUGGiAJ0Y9mKZt2rxYkzniQ4y1h5Er12Ieb/oUlmz1LM3p
         a1bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=8nnDZLMV8+M356v575tzBa2gYJdUaIo0DRbe0F8TmsQ=;
        b=l/abrsj906rNYJ5Smqnnp8pk1CwGUCJF3o9KJ5mpudLi1N/wSOdLDfVyENfNzXl+On
         4a8QvXx91EIgdwlmAM6rYzP1BzIhJeZuR4FCY1ctBHuMRfYHFbd+qMPh+m6pdm20YzBJ
         /rsjpY+6S4ZcHZ6mIBVJ/9Pb5lqNaTBQI1ugTgyU/n2pz5+mwTbCNn5y26roB/TQR8Wy
         UIqRPB1LeGV84kB4nIdwFc++DUQsIUpgvSy6eBVaiEiiMah1uBxD0+l8Z+c/Ku+poGbf
         gTJISg9gxws4kmKg1tfx6ZQtt/xPOh6Ptz2csq9J5V88kjd0U4NJC7pRU1Vypzrpr8Bm
         N7dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OlSp/NHT";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8nnDZLMV8+M356v575tzBa2gYJdUaIo0DRbe0F8TmsQ=;
        b=sRUrIomo45c/C/HrcBKrfEtgVY4vazQu2YMN9PPYPekdI8smS9TVyj7Bq6AQWsPf5A
         wT4yObllcJdu/u4iZ0kE9G5JLvQGnlqMs0agMVCWB2SuIGXMcmYUwv0mfhqLO5vFv5Tv
         mO+2rIKleksHXeGJ3c0AfvgBMUyQzvqWk1Xrstpz9RwIgiYJtfbWbkOu0pesrFe5iivt
         yfksxiqXZX1aN+tBRAs5jvBH9XjJS5+lFx7EY1NDCK/ZUizhYxwzmIcsiUrCI8k8w5gr
         8tqK7H7699pvUt4y9FlIlilkTXNHAzZVhELPV29K1pAn3W/0ri0cVdF5GZekQ+PrQ05O
         wq7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8nnDZLMV8+M356v575tzBa2gYJdUaIo0DRbe0F8TmsQ=;
        b=FfH3T80szSBEOI9CDkxYRo1vtl84/d8v9cqdrwXkGHMmm4L9jxr8X1uH4wtsC35dFs
         /sRsymIoP8TUZ9q+3CvprFnq9wqKNjwWlTW6tcu5zxcra6mgvWF5AKEML1wz8qGcI9EU
         n2HG40p1UCsNTDcceXW3Tl+muKECpP3SkXKAyKa+NcnGI/gQJVmx9uQPq/umMbgrjngj
         WnZvr1W08XquxLywL+Og/0i0XQ1w6C4RAf6bNMtVUgBOaU/hRGURUi3nD0YIuwJ2ooqC
         2J6Ud+KNhI5YfE+BjjnmHoSzgdDlMWzlcYYPmGfqQgly8SaPB8qNSp3Vaae7+vfyxQFc
         TKyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8nnDZLMV8+M356v575tzBa2gYJdUaIo0DRbe0F8TmsQ=;
        b=AYrzr8QiHEvUzgmWR+hv049nszvp/fo82sbFw7KaB6zX/EoKq1qynQy2nhQcMzTf0j
         ZxGZlOLWwCgOcpnNDOe4A6Q2bzIngaxKjkcN6jbxUFk6N+DeghHiCqhKm2PbSwawQBO/
         31cdtXrg3iKm/vVJmWtO0Om0GfRuboRO+64v0cljFg4WChcxrV9e0ti1zvT0LAqfFzpa
         ftK1Il0iJEY3K2I5Ii0TI1hsG0/7uN3doboy0qtjiEJxtMz0DTM5tQPb76igaWBtUkwc
         btvqIrYVjUpnNlwXqDmAz4oPyxZ0dM2snu6rqVGWCvfJCP8ozWiFOKDywFdgwFuXEtn0
         3gjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530z4J3bOoO+/3MZlyvIiT2t4lzMiPKd0tjZBIKKTaHwY+cTB0Vz
	f1C/iCDlU+fho7wWv7wgHjw=
X-Google-Smtp-Source: ABdhPJy8WVPxbUxSllJxpAaGSB3GgN28++A8WDW/Qm7bMPnfTVpBG/MuXkvdY4QQmtLp027N5mIq4Q==
X-Received: by 2002:ab0:6313:: with SMTP id a19mr4536430uap.71.1589582042136;
        Fri, 15 May 2020 15:34:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb99:: with SMTP id n25ls486591vsr.5.gmail; Fri, 15 May
 2020 15:34:01 -0700 (PDT)
X-Received: by 2002:a67:2c44:: with SMTP id s65mr4461492vss.127.1589582041809;
        Fri, 15 May 2020 15:34:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589582041; cv=none;
        d=google.com; s=arc-20160816;
        b=bx5hWcCUD1NmUnOmzmnI28jSJ6+8jMgey7EtYM9ZTh6YU+C2ZjlR3cGz+1Y1BomF0e
         B0QYfZscuAT8VY+bTP/0aWH+488pZzwoFMgh9Q2+9pBrdNpH5dZWEumCQ9h+vKKok5jD
         JxWIkmPvcInWswlZJmyupSWPV0ZPTlPwiXLqVa/eAybWZnBICbC0uRO4Hl2jMPRq/SUd
         BsuQfqtk0s31wQRKBLHnolZQgymms3Gk+bh7Fr5OvPm4dFPw9nG4f+jkEEjeGDf9QEE9
         fKKLtlTK2HfsNKpOmpICgIp6iA8UISKNICf65Kib9XEn2zgtAHwpNvu2Qr7I3c6Nh7ei
         cFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vh3ZP2e9/E+V3ueF0Y04DaEaXMiwgawvG0Y7J6ZEOgc=;
        b=FeuFZwU2AVJF+XLfiE3667N/q+OgOMt17F8g6w3hNTlD7sFB32Cvdv23GmcmGpqaDI
         LhonhC3g8+DIaM5247JtUfjPxxjAe7MirJSc1XaYQG7z8+waKsK3A6y/q6glyUPKIkcZ
         Ocy0mx9heY69UOine4vuqm6WCnTDUgqEd/GKwj4cdfgaV4oPgmop+AqqVAXYTEVI+cfy
         y1oURK2Nblv7Np2NwDzWlm89nhLuujvSDw6YLFF1u2KxcQHNyMX5KyiBhfPAzso7sxhW
         FzfGyhRuEN+C9ZG0hoo3Gz/gOpDIU29xoo++u+qZagqgEJf803ezubp74Cn1D+P2d773
         nNPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OlSp/NHT";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id a65si243615vki.2.2020.05.15.15.34.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 15:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id p67so789374ooa.11
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 15:34:01 -0700 (PDT)
X-Received: by 2002:a4a:94eb:: with SMTP id l40mr4434211ooi.30.1589582041166;
        Fri, 15 May 2020 15:34:01 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g6sm913034otj.6.2020.05.15.15.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2020 15:34:00 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ethernet: ti: am65-cpts: Add missing inline qualifier to stub functions
Date: Fri, 15 May 2020 15:33:18 -0700
Message-Id: <20200515223317.3650378-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="OlSp/NHT";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang:

In file included from drivers/net/ethernet/ti/am65-cpsw-ethtool.c:15:
drivers/net/ethernet/ti/am65-cpts.h:58:12: warning: unused function
'am65_cpts_ns_gettime' [-Wunused-function]
static s64 am65_cpts_ns_gettime(struct am65_cpts *cpts)
           ^
drivers/net/ethernet/ti/am65-cpts.h:63:12: warning: unused function
'am65_cpts_estf_enable' [-Wunused-function]
static int am65_cpts_estf_enable(struct am65_cpts *cpts,
           ^
drivers/net/ethernet/ti/am65-cpts.h:69:13: warning: unused function
'am65_cpts_estf_disable' [-Wunused-function]
static void am65_cpts_estf_disable(struct am65_cpts *cpts, int idx)
            ^
3 warnings generated.

These functions need to be marked as inline, which adds __maybe_unused,
to avoid these warnings, which is the pattern for stub functions.

Fixes: ec008fa2a9e5 ("ethernet: ti: am65-cpts: add routines to support taprio offload")
Link: https://github.com/ClangBuiltLinux/linux/issues/1026
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/ti/am65-cpts.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpts.h b/drivers/net/ethernet/ti/am65-cpts.h
index 98c1960b20b9..cf9fbc28fd03 100644
--- a/drivers/net/ethernet/ti/am65-cpts.h
+++ b/drivers/net/ethernet/ti/am65-cpts.h
@@ -55,18 +55,18 @@ static inline void am65_cpts_rx_enable(struct am65_cpts *cpts, bool en)
 {
 }
 
-static s64 am65_cpts_ns_gettime(struct am65_cpts *cpts)
+static inline s64 am65_cpts_ns_gettime(struct am65_cpts *cpts)
 {
 	return 0;
 }
 
-static int am65_cpts_estf_enable(struct am65_cpts *cpts,
-				 int idx, struct am65_cpts_estf_cfg *cfg)
+static inline int am65_cpts_estf_enable(struct am65_cpts *cpts, int idx,
+					struct am65_cpts_estf_cfg *cfg)
 {
 	return 0;
 }
 
-static void am65_cpts_estf_disable(struct am65_cpts *cpts, int idx)
+static inline void am65_cpts_estf_disable(struct am65_cpts *cpts, int idx)
 {
 }
 #endif

base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515223317.3650378-1-natechancellor%40gmail.com.

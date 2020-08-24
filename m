Return-Path: <clang-built-linux+bncBCOKR7GX6EORBW7LR75AKGQEWDHAEDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AFF250566
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 19:16:12 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id t20sf5655339oot.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 10:16:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598289371; cv=pass;
        d=google.com; s=arc-20160816;
        b=KF6kR1j13ETVtfBPkYjs11FUEFVtwkaIycNNq0GsvqOTX38Vz/ppHlx1rJzJsqh1w6
         fdNJKowc7cfwcOz7tiw9+ip4tCF79gfePhukEFK7e/1f0qMa9KQV4U20b9R8raZ0tzGg
         MhlEnCoUlkUkSqbrZq//l3MN4EinhH44unSlEJ/qa/J11xBHIw6MPKUHRdXW7+yIzxmv
         5/OTnB3V2YBO8uJ4DmWwl6P8ShrT2Mts1KMqlSHUZYBXWYIZlQ6SIdTC9jmWd4bUbQSI
         BsbI8AophZTOALmSf/XXkiCNnExFjO6qzTdDuBtRPCXqAPBTlFf6s8Vtjs4IfKrXhysh
         s2BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=IpIPmk9VSKYR3Twi+gcrFdpDxcKveP00fgEUscq3hjI=;
        b=iz/x25CzE0XgHZG2Jo6QASem8K8XpKu2BFBgDRCcQcVC5t+MHbjQskifIbNXszj2Ib
         5OxoCCntQVyRwPy2WptusdAQgkzX+dEfH7Ol9guCqv/vfXnpy0IDYpxTc3uZsCdPey7Q
         Zz57SJKr7mbI2qjA+37kVn37c8ymran5IC1evy/brOQjzu8BgS122WKENhcOkbPg43vs
         L2uIufFw7WlP/+y9hmPFuGC8DEiXopPzmE6xwpH+alcqm7ZH+lIdUYRithb3F0NBo6di
         lX1BG9HWhFJcOIonHfSCU2lpwyvodyV+yToEGilyZ6RD3+azChatJkhJf7VVHsWscTYc
         fTTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CVkUGe4w;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IpIPmk9VSKYR3Twi+gcrFdpDxcKveP00fgEUscq3hjI=;
        b=AtKkUJ0SLmQW67IslCvxkDDS2hzBdb0NbB1TkRlD3tWwBxwZQz7Xg9xsGtnPn/1sta
         5i7UDBjJq8UIOVRRQCH5nqHzLBvoGtp4EtfBmvZmaSQtDhbnbUjeKzV6ShY83HrMezNy
         kKCUs1762gjvDxt70qTrhcAG2K+01mULixjI87Tj7Rs+nRElGSjY+VVgUEFasIDrDeYo
         FkRHUmxG0O+j2DI0aHcGe+h1OC+XmOwg+VtauMJ1SAlyA/Eok6YKhfvsfxzexsZAKE1B
         UV14YLfEgjjbrK1j2HsNbhRMPJWNZCWeeeKzn9aTsSfCYoYOWZ9RWiDd/JPMktsmG+fc
         aMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IpIPmk9VSKYR3Twi+gcrFdpDxcKveP00fgEUscq3hjI=;
        b=OptQNHaRUCnB1ntMdGxf2vs39afnYC4l6fhh5HOirsxNwDeYaPBb7YCgCYAIe8Bx6z
         41lx80ulI5xpFb26WRL3L1eywoFfJM/cJ0EaIH6ZGfOq727vpAHiOSoT7QPNcN+t6h60
         gnZy4AOyt3vrqBf+SPknt7ERSTSiea6+IDWvKBy+QGOO/v+SeHcfHGEvQEDmie44DBZv
         oyYMJMByRUqg+nlODtkA/HuNTEShIw44F5rKXgffLMnWy5G97hDirHGy9Irlj00A80h+
         rwolmKAZh61pe3rSwnqzhYex/k51P5ZraDLiX69xR2icd3vv0IO0wSha5TXY1xVqcpXJ
         FNsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GPwixZxEws211W1VrRyCaOyo9/edIQbLNVBBUMjG0ZXhEpznq
	iXveYtY17uJVH3IMgCixSmE=
X-Google-Smtp-Source: ABdhPJwx8VQM8ByCrfLSPKfGdIiAyCyL2ZSS2vR+W/XYyo0XWzljy2PjDrtrFrhf55PcOqh0qKRjGg==
X-Received: by 2002:a05:6830:20c8:: with SMTP id z8mr4245914otq.324.1598289371656;
        Mon, 24 Aug 2020 10:16:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d9d4:: with SMTP id q203ls2169584oig.4.gmail; Mon, 24
 Aug 2020 10:16:11 -0700 (PDT)
X-Received: by 2002:aca:b286:: with SMTP id b128mr217271oif.89.1598289371348;
        Mon, 24 Aug 2020 10:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598289371; cv=none;
        d=google.com; s=arc-20160816;
        b=RU0r1k+OvdQVCbnMrGmhIdHVjJVNgrfJPlloYTepfG54NNqyE91bghY4WXezo7Tmkp
         wU6eTmOZDkMh2t2YEOAhQRM5aMjoog4oUk8InrLR9WR9Z+rZwJ5LTkFuc2OOiAJnv1gZ
         tn+p8EBI//mlAjyW2K6ktkPF/NBnwrKNeN+HTo7tnnMhMH3WjhyTw/+A35VE091tP1lP
         LZe4gyV9k+MtIG0GXAru3jWe3XVhMG2QmttNRd6NhpQUMlkzc6fyLEIFqU1kEJ7qm3A4
         NeTA2J/k1QuznlNbzuIgj9OPZWtqbUel+R4Z0x/3E0gcqnqsPWfjIMUpfr55/+Q3P/zb
         acNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Wl71a8cghqkJSR267P9P0mVn6KDAwl29z7WcXnWApbw=;
        b=nj7gXiECh3nKC+arYWQiw4KKqNYORv3IKAIqksvblyZeX+NV1/nUKnyJcgCAt32rgQ
         FcNZ1V7mUy4m8V7MZGP7jsm/fp5NrERdvAqoalH+7JIyOCBSqpcaQA4sBbaRx5yetDZp
         7pQhn6ygZBsse4RJkMsO1Z/VwCkBndRFupCgqznGp6MGoqHaCmppeFqxeM/OTWHG6qK1
         gVy+Txx+rPHBkt8oxPjesHVlqkwGKs1CPQcsZCOMGherX5SdST5SkXZHlq7njdlgsiJx
         akOBWuoAHxSdRRf36WLliWQFDN0eJa9Vp2vYcazOcQ89ENOXHGET5CBpiuotkfjYVERf
         o3BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CVkUGe4w;
       spf=pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=rrangel@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id d11si731474oti.2.2020.08.24.10.16.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 10:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z17so9475253ioi.6
        for <clang-built-linux@googlegroups.com>; Mon, 24 Aug 2020 10:16:11 -0700 (PDT)
X-Received: by 2002:a6b:5c03:: with SMTP id z3mr5669907ioh.16.1598289371025;
        Mon, 24 Aug 2020 10:16:11 -0700 (PDT)
Received: from rrangel920.bld.corp.google.com (h184-60-195-141.arvdco.broadband.dynamic.tds.net. [184.60.195.141])
        by smtp.gmail.com with ESMTPSA id p77sm7618499ill.39.2020.08.24.10.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 10:16:10 -0700 (PDT)
From: Raul E Rangel <rrangel@chromium.org>
To: adrian.hunter@intel.com
Cc: chris.wang@amd.com,
	Akshu.Agrawal@amd.com,
	Nehal-bakulchandra.Shah@amd.com,
	Raul E Rangel <rrangel@chromium.org>,
	Jisheng Zhang <jszhang@marvell.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH] mmc: sdhci: Don't enable presets while tuning
Date: Mon, 24 Aug 2020 11:16:07 -0600
Message-Id: <20200824111427.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765@changeid>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
MIME-Version: 1.0
X-Original-Sender: rrangel@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CVkUGe4w;       spf=pass
 (google.com: domain of rrangel@chromium.org designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=rrangel@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

SDHCI presets are not currently used for eMMC HS/HS200/HS400, but are
used for DDR52. The HS400 retuning sequence is:

    HS400->DDR52->HS->HS200->Perform Tuning->HS->HS400

This means that when HS400 tuning happens, we transition through DDR52
for a very brief period. This causes presets to be enabled
unintentionally and stay enabled when transitioning back to HS200 or
HS400.

This patch prevents enabling presets while tuning is in progress.

     change and that presets were still disabled.

Fixes: 0dafa60eb2506 ("mmc: sdhci: also get preset value and driver type for MMC_DDR52")
Signed-off-by: Raul E Rangel <rrangel@chromium.org>
---
The indentation changed because I ran clang-format

 drivers/mmc/host/sdhci.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 37b1158c1c0c9..fd702c436c165 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -2360,12 +2360,13 @@ void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 		host->timing = ios->timing;
 
 		if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
-				((ios->timing == MMC_TIMING_UHS_SDR12) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR25) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR50) ||
-				 (ios->timing == MMC_TIMING_UHS_SDR104) ||
-				 (ios->timing == MMC_TIMING_UHS_DDR50) ||
-				 (ios->timing == MMC_TIMING_MMC_DDR52))) {
+		    !mmc_doing_retune(mmc) &&
+		    ((ios->timing == MMC_TIMING_UHS_SDR12) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR25) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR50) ||
+		     (ios->timing == MMC_TIMING_UHS_SDR104) ||
+		     (ios->timing == MMC_TIMING_UHS_DDR50) ||
+		     (ios->timing == MMC_TIMING_MMC_DDR52))) {
 			u16 preset;
 
 			sdhci_enable_preset_value(host, true);
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824111427.1.Id6f3c92fecf4acc60c3b7f57d5f4e4c854ace765%40changeid.

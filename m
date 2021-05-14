Return-Path: <clang-built-linux+bncBAABBLGY7OCAMGQEVVW7PYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF113812D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:31:26 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id q69-20020a17090a1b4bb029015d3adc1867sf862622pjq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621027885; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5Cebd4YT+du3TjHZ31FAIg7bVvq75wvyM6ovl5JcheHC4T9+Susd0iSZZEXC2ffO3
         udi8WYUw5sLplM6zbAdJzzfUfi36f8kGXjHO7BEpxsrS1dB7jCqfh93wTczR4zYYKYQK
         cQ25fIakSYvMYydiNXRPeg7AnEK5N4obEWqFdssxCqit0POuFpAXhL9Q0nYA9Igt+TFb
         8nSpYsNjdwR2KsEsTHBMErY4qDtU9oAvKNNxpTvwBEnxh5KBHQpohfF64Enu3zY/hasC
         3OqwHVnYKcu0H51syc7Dc2nlheOP82koZN3ImFgAGGZVEHIdEPrLO6DX7C5gQf7+md3w
         VUkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=u1EFi+bMa1lZ0NxdRz8EhFAK5JkV8KPSDYAiNn6eTM8=;
        b=i8E/D1sdnlIw/Ghy2O1TNg1AtqQmYvYwxOYShywVoMQigURVvd0SUExn+7/DgP9ulv
         uuuUmgL14R/kbgy/Opn1MN6+5X62kYW3BMzHoAQRgIN0UlVOTwMRUo6ZG8WKJXa4VInv
         S9vp2IiLkv4gREih/V5sKdSxIHQdVHbCO+gh63cFOnoFgk+Nf+NEvOu2uX1vzGv+Kofq
         fbDraXoBnOK1Z3VlCNKmTUt3mGUXi5+cRzimmvgh8T/zCWlpZIx0uuK6RX1IHHBrD5e+
         tIDYpAf+Fbt7qbJfQNyhHMNKAlfPBOUeStelHjvVJ8APKjrUvXLJyQby9FKK2CIdoqie
         pU6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YxucMdfr;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1EFi+bMa1lZ0NxdRz8EhFAK5JkV8KPSDYAiNn6eTM8=;
        b=d24oePUnYkzfbWrIzho6Of2rIXxLo8GkxZI3Aq4HXe0cwPoYF+BENizFAa2Vudw2g9
         a7zM0V7oMMqhxOCr1uCwhiIS9CklTWBrCnyBL+15mgdvIOf8nVXodQCrf6P2eQulzmhp
         uivmvHl61Ht6+mMB80wDIVCQAzCTHllA9FHQiQfPzKh3d3VuVIskA+RnxEPjGYcldLQI
         ze56xrDhFhiSzYIpa9Wghn/xdwTC0fGbJJdCCQwCDMzg+3jlawl0B4P3hVrZyt6oDqoz
         f7le/JSmxt9WCfMRnTxHpYrQdO7/LVk2LmLo55ei6Bixik5hYUAMuD7SUk7FjIvIhMdI
         3IOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u1EFi+bMa1lZ0NxdRz8EhFAK5JkV8KPSDYAiNn6eTM8=;
        b=a3OVYGdu4fnun61wUZIccLTfTSm5mDK2mpaFYmj97UnNXgYrf0HgRDhNjL3+je1AR0
         FoL180Kd9obxv3/OSt0DoIA254sq7ds9fDvqWbQgcAQUu/r22J7c+h2zTRLsQGO03cLt
         kYCUqYDeK5Swp9FG5KuXsSSLcUz88ILL/LNTKx1BOJdC02LIXHSSl5R3vbkqg14NR00H
         WcVaNfQ1KzMVpl1GwiSTM9uhK5Fq8IJJkKvj7BHtdPi7T6tqYnapy4TMmbk2t86iFTyb
         1vrVKwcTwyTk4IrsG/KuGVhogZFs4Cj3LqFLA0/IqjMlDpFIvlRLGUDjb1XI8CuP08eI
         Dfpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cqMKGpcuVIxet977CUrObFU1t02c7IwprYqtncyxbJ+6yS3Em
	zBI+C5xP4rlF+F4ZQBSu+c0=
X-Google-Smtp-Source: ABdhPJzU/Y1IvX5wZ5ugaDuclrIzyf5aOtv2XPgC1wE1zB1bhwyiVF+NWm2/hSOVQS2h8VGw5p/tTw==
X-Received: by 2002:a17:90a:1bc3:: with SMTP id r3mr13435618pjr.162.1621027884790;
        Fri, 14 May 2021 14:31:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:530c:: with SMTP id m12ls4657597pgq.9.gmail; Fri, 14 May
 2021 14:31:24 -0700 (PDT)
X-Received: by 2002:a62:8208:0:b029:289:112f:d43d with SMTP id w8-20020a6282080000b0290289112fd43dmr47263979pfd.61.1621027884304;
        Fri, 14 May 2021 14:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621027884; cv=none;
        d=google.com; s=arc-20160816;
        b=hSpDpo4RHJC0fZ66EdKvG6wSvkfPBE/0W1FZrIbhkH0Cyc/c72HhLbZD567NdTszL9
         DqsKsi3KLCE3REql33nA01TyhAcUbcjDtaER8G5Un2PyWoy7R5GHidX2e7bXXUrFbrca
         8erBv07dFgQfgGQ76Zebeg8H+j7O6VvPPzt1vJlWrALYzVhwEpeP+pKohtP6zsqwh/xl
         4DiZ0ICYOtxPH2bMY2OlF5V7tYzdIbWH+o0K2sjLH2KkVat5PT1HeGguMppmmhW9kg/M
         qydhuOqbYceWRFyIVYuXwqo7IkwGySDXF13vRxaj7GkyEJIIWHoE1nh9x0FTZbdPfyDB
         OXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=r56E3QE+8aNkblG3U0kbqoDj3zLaTNXyg9bv98lF2MQ=;
        b=o5L+PnDNN27p6oBCFB5I7kg6IgsLhkK6aHGPK5JhNyYqYe3sU54vFTvmkvaBxONbP1
         ApQGl/mrQ6q3qL2QM7gVidOPs6OdYBw0uwVLKjlMVR8d3kqa8JpzcGor2ESU1YJlHceI
         tc0qCxpaKO8ZbSmOBCACAkuG8ZrHU+i5yizrEOScWwH9Cpbbz4xCfnnvIS4D+69Q5IyH
         TRTWBwvg6K53uhi1trUlsTuuBNLazptQjaX4RpOtqr76bJVx+c1tCHn83jtcKfg0gHR9
         tshdRtCT/emfl8e4QmbDbJWdHciMjyAERmxGNXg+6jMwpgRtpfjALP1Z5V4tRqE6j6vk
         SqjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YxucMdfr;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si1134410pju.2.2021.05.14.14.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D9306140A;
	Fri, 14 May 2021 21:31:21 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Abhinav Kumar <abhinavk@codeaurora.org>,
	Jonathan Marek <jonathan@marek.ca>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm/msm/dsi: fix 32-bit clang warning
Date: Fri, 14 May 2021 23:30:17 +0200
Message-Id: <20210514213032.575161-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YxucMdfr;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang is a little overzealous with warning about a constant conversion
in an untaken branch of a ternary expression:

drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: error: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 5000000000 to 705032704 [-Werror,-Wconstant-conversion]
        .max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000UL : ULONG_MAX,
                                                      ^~~~~~~~~~~~

Rewrite this to use a preprocessor conditional instead to avoid the
warning.

Fixes: 076437c9e360 ("drm/msm/dsi: move min/max PLL rate to phy config")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
As found with another patch, using __builtin_choose_expr() would
likely also work here, but doesn't seem any more readable.
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index e76ce40a12ab..accd6b4eb7c2 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -972,7 +972,11 @@ const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs = {
 		.restore_pll_state = dsi_7nm_pll_restore_state,
 	},
 	.min_pll_rate = 600000000UL,
-	.max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000ULL : ULONG_MAX,
+#ifdef CONFIG_64BIT
+	.max_pll_rate = 5000000000UL,
+#else
+	.max_pll_rate = ULONG_MAX,
+#endif
 	.io_start = { 0xae94400, 0xae96400 },
 	.num_dsi_phy = 2,
 	.quirks = DSI_PHY_7NM_QUIRK_V4_1,
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514213032.575161-1-arnd%40kernel.org.

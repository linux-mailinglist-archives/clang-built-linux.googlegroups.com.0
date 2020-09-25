Return-Path: <clang-built-linux+bncBC6JD5V23ENBBCFXW35QKGQEYVCZDPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA4B278178
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 09:26:01 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id e12sf1491966pfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 00:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601018760; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNs7PBKbGpqQXcxHAUCbjNwbbyXru87xl1s9zfVllcXafkGQ7IyDMWcZBmw0RC75GP
         VNJ25I78gqiVkL/wQsz9x5SaLH/c71J4TVXCqxeaspgMgcxpLunTvDkEK7yl1MIEm2qR
         rzxSTw1pGwFp2kBtRMnskyKPeEUbVttaO/jQBmLg6yx1eFt5ti61UVPYWNc8FReO2S4u
         AfiL7KHhEMBkW2BQ1WpAmnfAOwj6AxnOYFsGwWQ1F9JLkaoixMyhQ3RA76Z/KFuZG70L
         Sm0nwXqyRT/iFAG5fCm5N6f43iok/s4FcE7CAJk2lXEqc49jzo6W9t35eEI2NtNelFIZ
         7QoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=xUzpn/TU7DJ58dB2H/aR0DVZqnu2Io3065nLvw9MjGA=;
        b=v9rr86AhMFherBUXW8UpJfZfWLrYpkOl35q06PN2Xrn+Pk7XAjMudRiSjb66eQTKS+
         OxiL1LdfBJyHoz4mghBsF5bWVAprz2hUPi5YcjWssphROHb+5IQGoTRt5YgNp8kLMoqP
         hM7LJSoxJwNn3zmH24qwlnwUtEyWeih2qGcXcETpTg0E/9PBsi//G2JKZcCOIzLiNuce
         dqm9BWn+QWFJVGR7+wXveDMu1Xe0nhHeBTD0fe+HiJk+fuSGPK7X3oO2wcdHUp8rUecy
         72leJTL5+sm548n73jhDXUO8+mTkPC+q2YRhScz2nJlzB5rIhY57yupYabJgfQakDQqg
         QijQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WmJ/GoaN";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xUzpn/TU7DJ58dB2H/aR0DVZqnu2Io3065nLvw9MjGA=;
        b=R5aqvx//S0+18JIyeq6bvarANky6H6yBJfU15GbQKe/0Bs58ZoIMj3/blBtXlWL8ft
         epBZ562Y/4nano+siE5gy1xvWX1ZBfP9U/5xWbrySko++lilhBzVLTcdGymyELztFK7Y
         WSBlWyAB462cIQVwNRa/0BlRwb43gQmLoRTjC8IDtJcFbZE841gpPd3FyVJjU+RQpN6c
         lsuS+NWEz/YnfemCM330cmXHDh73BG7ZXjuyNSUPA0RnP8fTIRtVbmO6gHA94WlYeFZi
         0DGKMAEBLMfqW/BQVHHfxKoETtJEzl+V0jz0ovrebDhVAkhnvyOAJPmgTAhNoL5CnpNh
         hwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xUzpn/TU7DJ58dB2H/aR0DVZqnu2Io3065nLvw9MjGA=;
        b=c6rEYeZDEkQMcGcHvegTJIRHLiJtq/0mXpxL8VVnjLFbGTp56N98lX7Twv2rzlotdR
         TAfr4hXbKCXjl0cwjHB0aepzlIEDyg5qY0m2NQcisn4MuLeeeDdMs/+ROv2aCwCxreTw
         HRlZhPMSD9xdLPR1uKZzezzflYHmb8EHFns7uv0J3OyqA4X3lByb/BdZ7M3VaFrcuaNv
         c85EtKYqONci35tQD7YIVb44tt16DSVE96BXpmwU2FwgttmG5oEZkIjMeeaiLCGlgvyq
         Jcd8pCkFKmzXUjFS3mnaglW6ZBP+117+d8wn1dyDYderotYy6LPgmzsSBZTdO7soQFEn
         inKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tYlF4fw4Ap8Zl6RrFUAi2yq1tTNCC0Dp9tMyWzxabFv99WFX4
	306KElIBzK7S9k0zkikQc4o=
X-Google-Smtp-Source: ABdhPJxhRfGOnKbInoZy7fbArzyUwhxoXs3xYTHFodGSvRz0WH12s3z9r0FdY/ZyO1RG5k5VfjTw+A==
X-Received: by 2002:a17:90a:ea97:: with SMTP id h23mr1481781pjz.48.1601018760470;
        Fri, 25 Sep 2020 00:26:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a412:: with SMTP id p18ls1057984plq.11.gmail; Fri,
 25 Sep 2020 00:26:00 -0700 (PDT)
X-Received: by 2002:a17:90b:20a:: with SMTP id fy10mr1454466pjb.209.1601018759977;
        Fri, 25 Sep 2020 00:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601018759; cv=none;
        d=google.com; s=arc-20160816;
        b=TVkODYNdQJy+DYYZu8jqTt9mXI7N2gBnvZg8QAlnEmmPL9ezTq6vFo38+sF2FJIOng
         tC7euR8QwRRzyBsLh0e148vc1PP3yLveIwR2FC27XuZgSDrylnILrjaZs0Bc7DGypS6d
         vdmRFVETtzANb8oLwTfUQ7dfhOJXcErbZGwjsM40dagbn3luELAgVtVS4Eq72FQOL66s
         vlZTQDQ9Epjq2c6K2SfgthRfWADk8zMC3ZkzhojRbfVZClqMGoQ71IqqmnOeFBm7ig7e
         +nZ3mh8FOQkBDxZaBlzfdBE7tgU+9h0bUYdRWzn067IbFxLbdVRKNKlTKH1ckC5/UtLn
         wmoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=A2TtYpGvnAHbrzPqvs0M9HsjFMwia4jCjZF70EJW45Y=;
        b=SNi7o4q+YgPGtXm0G14cIuBEeuOW5KXnJ6cEDPLQ/E/ZJAosX3KhXUoLPM3XemSgif
         H2uqudZ5K7JUMs6hQVstBSfokB4OHk5MAGGpds+W+oScYKz+/lYCfUUnbgqJyY+n2pka
         bJL0m/RZ3wGoZ+duoHMxwuegby6S+dnWTKmx9ygj6Lnl2SHUsIgh3IjDOsIks/6tcTbd
         beIs8h8gQussCMpckxVppuQZkDlrqhlfstMNj24Dd6Da86QcDvbGylJ1WzfFOOXZrJiT
         sUur1J6rLRSfQIOuBC16n7He3kd56TOQvq79eBc9TIRDDQ9SwQX8sDG80qvZHkFb7jMS
         gtWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WmJ/GoaN";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n8si177617pfd.4.2020.09.25.00.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 00:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5BE42086A;
	Fri, 25 Sep 2020 07:25:55 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ben Dooks <ben-linux@fluff.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] mmc: sdhci-s3c: hide forward declaration of of_device_id behind CONFIG_OF
Date: Fri, 25 Sep 2020 09:25:32 +0200
Message-Id: <20200925072532.10272-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="WmJ/GoaN";       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

The struct of_device_id is not defined with !CONFIG_OF so its forward
declaration should be hidden to as well.  This should address clang
compile warning:

  drivers/mmc/host/sdhci-s3c.c:464:34: warning: tentative array definition assumed to have one element

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/mmc/host/sdhci-s3c.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/host/sdhci-s3c.c b/drivers/mmc/host/sdhci-s3c.c
index cb5f87be7535..f48a788a9d3d 100644
--- a/drivers/mmc/host/sdhci-s3c.c
+++ b/drivers/mmc/host/sdhci-s3c.c
@@ -461,7 +461,9 @@ static int sdhci_s3c_parse_dt(struct device *dev,
 }
 #endif
 
+#ifdef CONFIG_OF
 static const struct of_device_id sdhci_s3c_dt_match[];
+#endif
 
 static inline struct sdhci_s3c_drv_data *sdhci_s3c_get_driver_data(
 			struct platform_device *pdev)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925072532.10272-1-krzk%40kernel.org.

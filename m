Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG4GYXUQKGQEV3PZFMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ED26DBE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:12:13 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id u1sf17947584pgr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509531; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbPg7mEOZklbkHhOnFUV00OEJJ91AKaaLdkv1qXfxFMWE/GAJskdtVijJSx8eYfCQm
         /715OUVxL2SAGlnB3bsS0UI85dGO+pusTDw8ieVj8d5+lf9xWWuqCg5efgOmdtpMxhqZ
         dgZ9yZOU3ugMXVbZbKfSVuebxPO8vLLAQh/TVrZpoGT9BgxcJtZUSdZaZE8MlTLWAkuO
         TYwYu6ubZ1dla7+UfpPppoZafUgXTDHkxpIQ1BBX0Bnu7BZxaml12ChUBa5syJTpznTk
         X1ewQ81RkoRYlbff/4Mpf9+Lgxa1TrOgQwBMU1+EqXhxtnO9Vi0ouGsre0i8BmNEpChT
         slUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CNQqgYpAf+05nZzEzsh7DcYWY2GvY5VV7wbdZ2/FtHw=;
        b=CTZkkCk9U8nYBTW16NipHLTg0ASczDF7nU8OvlAzfUfmJWQKmiOmf40an46cYX+S5N
         fH3UrL2s1sGCQvsJqMeAQhiUMcgbtU6QQ/ay6s/P8BBd17251FEgB8B0eFNkcS8Shc2M
         V3mjq1zqaKWh2s7MmAjIPRO9X/r5UiWHwhsOlTtjC4UXo/C8zLVsvey/IpiaaBV3/GvZ
         5F8lR6nVg9bS+5AHBajshw9Vg7+oxlADl37hRHXL/67j0f33pCjMFpKSvOx5O2Hde3eJ
         gGfJL9l5VsiSUlDJ+jU4JnhoJ2WoyWjzyBSyuIRPngtLVHaA6/V7W8t2EPNj3Z3CMDcj
         v64w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SoYYt8OR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNQqgYpAf+05nZzEzsh7DcYWY2GvY5VV7wbdZ2/FtHw=;
        b=VFpGVsDvcGOua0Y22rD40WRWhgD4qTeOR075F0DURAVDIGjTmHENgpvIe0+53VuneL
         K8Ete6aSUzwU/PQ4U8oeOukoVp1DUUvP7loWhmuTgjocOYJ8q22PT18xwCV4zT5ummfG
         a+IRdu+UDomqxCQDt8QTFUA42gCQwz1qBxM0rnTdR2nwhScM79lgGkbj/CAtYYBuomPa
         AuSwDN0rwyTK/F19GjwYOxrDJfOR3W2x2pvMl2LqxA8sCTEs21i8uZ9hIqlUbXQPBHH5
         yFMqCGetxsd43rRdXl8wZxaqIuDHCKm0130LaGjA3BHXyQMW5IgG21bs3/i22JPsRF0B
         4BaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNQqgYpAf+05nZzEzsh7DcYWY2GvY5VV7wbdZ2/FtHw=;
        b=bbD6WnFKtVjpDhEH2USgmhgsVKoHf6w7ur8+yJIG21QdPSX7oxOamkQJdg3Wl2h1Mt
         eTQ4D7veHPzKQVhUFZivJSm2YT7/7PwzhisT13SFGjJYTAUJBH4q8swEQGgJEfl2xWNm
         cad11WIFdJijbCzPcCbT79v3faGtnMlsxhhjmMDte7flAyMH8RAnfU3G/dyhjaNr5/b6
         Su6mojpcFvR9wpujHDkqYN4rzarw4Hd5SfiBuMivbDEuheEOrOd/rt5wdNW1YgSVOCD6
         zEArE7FVz/bsldQfjHV8Tne/M8/P4tau31ODiii38C5w0pLEqcQ0opGDPxUXN/W9Cfzn
         77RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVncjhmdzgMw875SNwz3CoMh0EHLuALRwTdzP2hqHXKFs5+3BuV
	Pa0P9+rp+5a54kCO7fUGkxA=
X-Google-Smtp-Source: APXvYqyST3zYxZu9FCl4P2ck6MisDKUTC/szWQvvHnw0JHjlTQOIL9lWUn6U30guSYtwsKYRyVyxaA==
X-Received: by 2002:a17:902:b206:: with SMTP id t6mr55157484plr.195.1563509531820;
        Thu, 18 Jul 2019 21:12:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:580d:: with SMTP id g13ls3913536pgr.5.gmail; Thu, 18 Jul
 2019 21:12:11 -0700 (PDT)
X-Received: by 2002:a65:6081:: with SMTP id t1mr52348542pgu.9.1563509531485;
        Thu, 18 Jul 2019 21:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509531; cv=none;
        d=google.com; s=arc-20160816;
        b=lu178yNQ0aFaV651oi9rjYVU7fv4q0B0h8A1L9crpT54XKZcZQrqk4y0H3Lk6cvyPL
         knNFSwldGA4Qn86pSP9teMcXXjfQAWGxs4WE5XuvMzGe2qXRWLLYDPi5gAYY0mDmex3V
         enXuQ1AmQfR7X5BuKVKsdU/15zSrRNqNVg1OWSLvOu8tI5OS8LOcI0JxBhIJo8ewLYXa
         Jy3UMRTunEOSsX8KeGbBDQySd0zJznpUTjd22f4IKXSnnUvH/UrxkaGhOlLP3eaVXrsK
         eLIOg86iceK4kcPs4eb5Gk9YEmzFpUVU9BcmC2J61eRf5HSlZws+2QPlMzPYU+1iFB0t
         cv/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n5aWtca6yBHzKp2Nw8CuQR5vNU4TsDITwAE1MUV3unE=;
        b=CrhKyWYr62LLtL7bpernmmWBo5DWrmIPW35YcnWU0bQhaXjAHb77nVJ3+xtn1B4CVY
         WR+pihSzpiFmwlHQ7C4Dr8L5h1PbaSwIZcas8WtK1SmGDlzlYb6+CgncSzUhzEMbqK8Q
         IMtxHdQ5aCdfh1R4+YHkt483ILsUePQXlaMZasiuNFWPJyOIWB+ednBOJt/Y+UHmAxzX
         EpVR902ijxvV4QxhBXkxbw5LYBZa7WoSTKE413s6XCUmLE9f0FWDZ8wR/6V9Ud4AlxVM
         tX4yABFcXZ9fdaJsAjgPZmpO62TOBcE2Dr2Hc2Z52fpOJfl0PuQKnqjxiJcpMOmSNp4V
         SFVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SoYYt8OR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cl17si1095772plb.3.2019.07.18.21.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 564C92189D;
	Fri, 19 Jul 2019 04:12:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 34/60] mfd: arizona: Fix undefined behavior
Date: Fri, 19 Jul 2019 00:10:43 -0400
Message-Id: <20190719041109.18262-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041109.18262-1-sashal@kernel.org>
References: <20190719041109.18262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SoYYt8OR;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index 8d46e3ad9529..d8e3184bd27c 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -1029,7 +1029,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val, mask;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719041109.18262-34-sashal%40kernel.org.

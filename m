Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLFPWT5AKGQEN5IS2PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 892EA257C7E
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:30:54 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id k26sf868063pgf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:30:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887853; cv=pass;
        d=google.com; s=arc-20160816;
        b=XBOCTD2KTWE2kXSux6sqd8YYCwWNp2eWvzxvsyd2CaSK1l4mo3bBXlSYLEVnM51SYd
         1/ttdnOTz7s7o9pJMOP/pzdHmYhn6x1ETv0JFW+4pQzX5NXGr6iIhwO+TBK59uNeMy+y
         NV5ufNYDOYtIlAiS1Rc5bP4fu2NlXI1bGZ502eHseeUP7hEscKxPmEkEMXBzrUs+GJqj
         3AfpMiKvYvgnQe0N2pfcXAIKY9T0oe87KZ/0Ajc3wMcxb2KYENKLrFkrFTFg8CHi6xuk
         eDmPL3etWfo1poSndCRrglGPZ/u1+e5X/wzyqGfZkdQ8TcQZOGFMCJojNltGQ0Q2mBr1
         acYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w6x0s19ELWpSi4qSq98h36AbdZjqKY77SprJzdquxTM=;
        b=p7k9+0cHVyP9kLA77p6oHaib07oxlOSxSi/OMQjUzjep5TSwwyHQvG6632gT48GrM2
         7jwX0yKI48Vt3uwQXhTJAdYK4fl7rDaDVP+mPkP2/Vqu/KtPIBHdW/wPRQlOCopBKOVX
         Sr6GLJDPXSq9L/otPZ8g4lBCSYZNnEv21SExCqUmWnjbA0lJ7Wz7qTkq+ppR/n5RQ8HD
         Kdq9V27JktZvD479al56jT9aoP0vA0aaE5CffVN/MFrFDC9LZ3lrK7ii+wUnHPK9oSHX
         0xQqgVcBvlC/0xvRjr7vOyymyAej8JoO8ASbi6YYddYgINctrKivbj3meHalX6xc3h98
         lYxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xLZ4bMkf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6x0s19ELWpSi4qSq98h36AbdZjqKY77SprJzdquxTM=;
        b=iVz8Dk4S2QR1YR3ZBQb7cebnwwDMciUbAxg1Vn5tbrHn0zsJDFaZ/hJSScRwf4nQmC
         pA2RprUYDq+ouO3oetSsczJJnoMYd9KKfbi2BCbLM/sfHjVhPvR31efyVlE+YUreaf5o
         bOzWXpjk6wAOecg8d0hmt9i1oXJSx71ILwynf7OytDiie3nr0Aq3yllxrT0acupRjkkG
         XSECfv0mjt09fj8ImgmoTynPtJ5cDork1rX43ZyGiWc+ux3MkZ/1mxNuwHWmQGs8EltZ
         sXWBT/f1hpu3//YuDL5ERw/eaQyoa4jqxRmEBd19zQVvtinW6EJWTibj7rNW5Jq9u2HO
         3rlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6x0s19ELWpSi4qSq98h36AbdZjqKY77SprJzdquxTM=;
        b=UlgO6EqJK2f/QCcbyn7unQf/YDFs8EzW6jhqnmJo7vPkscIQTW6wY0eo19FspclDXk
         ZCdJgCxftCnk1Fqh7UxEQOcnSo6Y6TWRSXBT0TnOf5Tg9D9jEJTRgmne+69BLFGBq0p7
         ZA2RR4LtrVkbGQOoKhlmfqa4TNi72+F4NnF1ms4LvlcERGZ1oLJFZTT6i37bOvKcTJy+
         OsJxAnDb/m+lV2Bo+DPBtLl5sFaGe15BPIL58cyFcl5PuateYz5MSH1qZ3H7QYFfWJWo
         bgnKESCXWimzs8oNgpeqQTzgTsvJjtDCI4pAwpXewKBPOYMVcWsbqLvs7kbdnE4VjWPU
         9UzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rEd3vmZX3EMVEhaC7GaGWxCy9qmg3nwT0fJSVgRJC6FcZavAD
	ciD5K8D/jwz64xwr8c2Xyuw=
X-Google-Smtp-Source: ABdhPJyIIUYeRKSB6ZTo5kSOmtRUfdk5Zt+j0LHVdsPjZGWnQ/ubufjJ4odqnVeGi1SjxczdzOHdsw==
X-Received: by 2002:a63:3241:: with SMTP id y62mr1682149pgy.305.1598887853068;
        Mon, 31 Aug 2020 08:30:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:184e:: with SMTP id 75ls2646358pfy.3.gmail; Mon, 31 Aug
 2020 08:30:52 -0700 (PDT)
X-Received: by 2002:a62:5fc4:: with SMTP id t187mr1711815pfb.34.1598887852551;
        Mon, 31 Aug 2020 08:30:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887852; cv=none;
        d=google.com; s=arc-20160816;
        b=p9DfDhEvDcZgLXqUSqqi9ZRtQVkb60psYlSeo3FX0phuqT3sdVS7wfQfWvbimHIA8r
         btJvD3qGmDuw3d+Lkej0DpUwDjhvSihZWCSb4dzg9A93Oz1hAkt6QfhKRnrDgpwBAe6u
         kQoG+67XMfjAsQ1d6sZj856Nf37XuQjezfKHRmAd3LvQrkPJwbrdmjVe2OUnaBKesF2A
         43b/RGyObdpuVN3aJ1pqKdDRKVaHB08YGQojR4jT2w46kuzenIbQupQFRqda7oOLHnKK
         7QD+rTvBefcvhxobbukv6I62G6ZIGJXOZldyAkjTUMpFM4iXAp5aoQ9pjI0IkacgzkgP
         /RBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VB9/rTwlhLuKa5/F+gbnZP29ccFiFX/dVYovaapjK4c=;
        b=Ck62Udd7lzJ5rnvL0vFWMQ5OktN2Kn67jL0LVJkd+i3pUjY3vMEj85uR3P6rnnvdvz
         mEzSchzrm1Rzn+ZmjgLD6PR7f8bQHy+lIG08IBPWWqw5ApVArdVKwltIXwOCQSbeotx7
         1j4mk7o/u/pdrJLCm6tk1TqZcVyCHCEYowtdnPQrlX5S0T/JHyJtO7BqOxd5itx0akwh
         xFMWWBQRaov/LvNBPp8Lqm12pXj54jFKAhJIYYEl2h6QwRmM0//02Dx3roxwK9L2Drom
         x+swiOoe30+sPuh3qDUNaQkb8mVdl5FE4DSlfeUQ9ZpB2eSAUZXh5ytM5Uhpmt8SBiiF
         PVbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xLZ4bMkf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ie24si356221pjb.3.2020.08.31.08.30.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:30:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 520F22158C;
	Mon, 31 Aug 2020 15:30:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 07/23] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:30:23 -0400
Message-Id: <20200831153039.1024302-7-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153039.1024302-1-sashal@kernel.org>
References: <20200831153039.1024302-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xLZ4bMkf;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit cecf7560f00a8419396a2ed0f6e5d245ccb4feac ]

clang static analysis reports this representative problem

applesmc.c:758:10: warning: 1st function call argument is an
  uninitialized value
        left = be16_to_cpu(*(__be16 *)(buffer + 6)) >> 2;
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

buffer is filled by the earlier call

	ret = applesmc_read_key(LIGHT_SENSOR_LEFT_KEY, ...

This problem is reported because a goto skips the status check.
Other similar problems use data from applesmc_read_key before checking
the status.  So move the checks to before the use.

Signed-off-by: Tom Rix <trix@redhat.com>
Reviewed-by: Henrik Rydberg <rydberg@bitmath.org>
Link: https://lore.kernel.org/r/20200820131932.10590-1-trix@redhat.com
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/hwmon/applesmc.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
index 183ff3d251299..006bc07bcd301 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -748,15 +748,18 @@ static ssize_t applesmc_light_show(struct device *dev,
 	}
 
 	ret = applesmc_read_key(LIGHT_SENSOR_LEFT_KEY, buffer, data_length);
+	if (ret)
+		goto out;
 	/* newer macbooks report a single 10-bit bigendian value */
 	if (data_length == 10) {
 		left = be16_to_cpu(*(__be16 *)(buffer + 6)) >> 2;
 		goto out;
 	}
 	left = buffer[2];
+
+	ret = applesmc_read_key(LIGHT_SENSOR_RIGHT_KEY, buffer, data_length);
 	if (ret)
 		goto out;
-	ret = applesmc_read_key(LIGHT_SENSOR_RIGHT_KEY, buffer, data_length);
 	right = buffer[2];
 
 out:
@@ -805,12 +808,11 @@ static ssize_t applesmc_show_fan_speed(struct device *dev,
 		  to_index(attr));
 
 	ret = applesmc_read_key(newkey, buffer, 2);
-	speed = ((buffer[0] << 8 | buffer[1]) >> 2);
-
 	if (ret)
 		return ret;
-	else
-		return snprintf(sysfsbuf, PAGE_SIZE, "%u\n", speed);
+
+	speed = ((buffer[0] << 8 | buffer[1]) >> 2);
+	return snprintf(sysfsbuf, PAGE_SIZE, "%u\n", speed);
 }
 
 static ssize_t applesmc_store_fan_speed(struct device *dev,
@@ -846,12 +848,11 @@ static ssize_t applesmc_show_fan_manual(struct device *dev,
 	u8 buffer[2];
 
 	ret = applesmc_read_key(FANS_MANUAL, buffer, 2);
-	manual = ((buffer[0] << 8 | buffer[1]) >> to_index(attr)) & 0x01;
-
 	if (ret)
 		return ret;
-	else
-		return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", manual);
+
+	manual = ((buffer[0] << 8 | buffer[1]) >> to_index(attr)) & 0x01;
+	return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", manual);
 }
 
 static ssize_t applesmc_store_fan_manual(struct device *dev,
@@ -867,10 +868,11 @@ static ssize_t applesmc_store_fan_manual(struct device *dev,
 		return -EINVAL;
 
 	ret = applesmc_read_key(FANS_MANUAL, buffer, 2);
-	val = (buffer[0] << 8 | buffer[1]);
 	if (ret)
 		goto out;
 
+	val = (buffer[0] << 8 | buffer[1]);
+
 	if (input)
 		val = val | (0x01 << to_index(attr));
 	else
@@ -946,13 +948,12 @@ static ssize_t applesmc_key_count_show(struct device *dev,
 	u32 count;
 
 	ret = applesmc_read_key(KEY_COUNT_KEY, buffer, 4);
-	count = ((u32)buffer[0]<<24) + ((u32)buffer[1]<<16) +
-						((u32)buffer[2]<<8) + buffer[3];
-
 	if (ret)
 		return ret;
-	else
-		return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", count);
+
+	count = ((u32)buffer[0]<<24) + ((u32)buffer[1]<<16) +
+						((u32)buffer[2]<<8) + buffer[3];
+	return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", count);
 }
 
 static ssize_t applesmc_key_at_index_read_show(struct device *dev,
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831153039.1024302-7-sashal%40kernel.org.

Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB55PWT5AKGQENRRXTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 37869257CBC
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:32:08 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id m125sf6262030qkc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887927; cv=pass;
        d=google.com; s=arc-20160816;
        b=opDRiRcLjgDbKSM5zOXL/X9ylXBxLduCHhUaP0w/IrPUmdsdG1EUoxJJhFyCAVH+Op
         9dRXvjnoGrpbimAmXZJ93UuhTQB8cHuI1RUPYN/R3LeQkJuiRfrulRipFM41omL19M08
         CsKoPYVPQHEl7uBewXw/FCS/DARSHmWcwJdhQ4kk/CH5l7NkbJ1a6u1Tb3GOa3bmnlSh
         ZS2IfMX+e7OoNEYu2aOHEHbD4z0bgP72owfkqT6nuKIOtWEQSOaeq77znkw1+Ccu95kV
         1fbN9Ilu82CBOgjw4rwhvFIAvoSuq0Doc2EKaQBZh4Hg+gH6MTEYzQrJmakqspTvi6+y
         Q8iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tVP06e0OI4Jknu0rN4Dt2LjJCmQ6aSeXlZE9hV56g6A=;
        b=SB/unQL0pq9E+tToNeA+hd61OMUYxHSO1FXTVaeT7kH+ZrCfwzq0rcSG1runJWdv0J
         wpszjUKy1wWGCW9lYhN6j3muUV28+qqdMKtiHtRjC/InX2kW4zymUxr7gugyiG+JdcaY
         4Xj5PXSgPiyCuTmSIRIkN77E57VOG11FpHp7TA+zoECPV2jy1tW59Dx5inVKRz8ailaP
         +WGUofu7yTcDSnYTG7YOYQnSXO9VHjg0QSxOOePibHDWMDnBQyN7Deo98ul2iDQGB5Mc
         hkgTGI45LOzowE7rBdvV+ZY5he1Fo9Z+wOt5DR4FIDuiIm60tEcZqPBVRt6/Kcqh4qX2
         0N8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LpQYratY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tVP06e0OI4Jknu0rN4Dt2LjJCmQ6aSeXlZE9hV56g6A=;
        b=J6JO9yUEilIv3w+YaeYlu0ueURdXeRxgOFKbDR4fOrOWl5CckCTtTvMb5PRvEwojJ3
         AxwqVW+dfg00fN9qD6jc3h68+0RHpBySAAnobMPzf4xiYA/b9yMowMANNU/HmnlcmMuj
         pwgoxIlseQrv+e0UKHbnaaLLUitfsn0G3K+mChri97dXQ5Uskd96RxnHqQGkBjNiEfDZ
         GTfWOjO58P/cdYrcr8dQDP67IkJanmr6QaCfCC3GGQnCE08hocZHLMkxjzBS0zm92bJE
         kWAcCYHv5o2rcQVntxcSKXcPSdeIurkssm9qZjCBEud5LoqkeFB5uYoq3wIE177V2IB/
         nYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tVP06e0OI4Jknu0rN4Dt2LjJCmQ6aSeXlZE9hV56g6A=;
        b=Ojo6xzwvA+rsAehsk60arJMHhrv8rVlhU4aBj+BrjEkmmVFVqhUHCo7UgohWKcoqgY
         K2aDNJIEXTKQAHjsgr6Ty3+02hpU6VycD1ryZHVxeS8lG18TUjwuLp5LjLR/SjhTc4y8
         AFSzI17Acbwivv6aSR+5oOVNpWK1d2hayW8QWqRYJOo8FD79JvDOkjOjaqddZ5AnlEEN
         wSrdJdK6a+n3G1e4XBAK/0VCBO5uo6JyA6eLd34TwIm4Ms2DTYPolPcvmTXQBrII5aay
         4d+mkobWqFnlR3+fw9hWvwAt1Swxy1zc1OQo36BGm/aMvg6Wt93qlGjCh5H6yfirWzvO
         5oSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310FaBw/qG/FLZ+jtXligrKs6D8/vA3o8P/53iYkiOhMltxuCv5
	Clij2hsY6Yk2SDdz/RtLdDo=
X-Google-Smtp-Source: ABdhPJyMW7XlgcRo2JSlDvbJMud17O7K+GdvuYEDLmUBE5vcNJwOp6iXwArrtKcTL/+3H+yZQM7TYQ==
X-Received: by 2002:a05:620a:2286:: with SMTP id o6mr1873816qkh.75.1598887927259;
        Mon, 31 Aug 2020 08:32:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls2995274qta.3.gmail; Mon, 31 Aug
 2020 08:32:06 -0700 (PDT)
X-Received: by 2002:aed:2b86:: with SMTP id e6mr1817510qtd.86.1598887925808;
        Mon, 31 Aug 2020 08:32:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887925; cv=none;
        d=google.com; s=arc-20160816;
        b=t9am2wSn0MJXe3RGrm6gZqKN0gcL+GBBNGSZO9h2dp2QNLG8mcAzvtkqXZ50NYXxjL
         jXPYGmro9RjnXjxPN3RGgNx1j0CMnLCDLor09JxAyBYL3qANwEvHg3IfLjItbB0u959S
         fP3Es5Zy0/W/7mHEl5zjBLMyP9jWrkDCaYwhKGIHXEfFXnnGhFuHvOp58PhKAJFDv/ry
         pvCmbk4GL0gsUoa+ktIsha0oRLRUbGKRTlV0ikRcU5YVGMk1sZxyphmJzDKB8wxt3pd0
         HGzx7AnMWSUj03v8lddRNvUpGEVg5rN6ghWi1SJ2f8b9anI2K2Ii7Qg9fO0Q1LVMgVQK
         uq2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zVml8lZ4CzV0G/mt1jeV/ATjmDpFiQiraE1CDHCO004=;
        b=GMDK1ztmprtFlsnYPZUL992BVGUI8E4E1MCvU+ssRQZcVvt0AQm8/6wSaaUSl1Cm4d
         ZBUoHy0eHZ8Vo3CSm33tg24sMjv+fDgiaCwe60MKvmhMPJFWKZQQ2Qkr5bZxCqYX985L
         YXuOGQV1if60abTNzQY62PPo8xblXDnDlcj7KRn6Bo6sAaR/7l0gCHYV1TncwWUnMcSM
         SscPVPlSg/+hPrgWneZGyeZNXjoPB5LJfcm922PK4t3NvZrinTu78eIbyUZdTWgH9MTW
         CKA17DoTfdaaVdTfqITCNZMDSPhOWtbDvtQFbeNAp9nz9sExhCV0GH7ffhCATcyolrG0
         ZD8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LpQYratY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b21si368625qtq.1.2020.08.31.08.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:32:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D22EA21655;
	Mon, 31 Aug 2020 15:32:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 2/5] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:31:57 -0400
Message-Id: <20200831153200.1024898-2-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153200.1024898-1-sashal@kernel.org>
References: <20200831153200.1024898-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LpQYratY;       spf=pass
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
index 0af7fd311979d..587fc5c686b3c 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -758,15 +758,18 @@ static ssize_t applesmc_light_show(struct device *dev,
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
@@ -814,12 +817,11 @@ static ssize_t applesmc_show_fan_speed(struct device *dev,
 	sprintf(newkey, fan_speed_fmt[to_option(attr)], to_index(attr));
 
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
@@ -854,12 +856,11 @@ static ssize_t applesmc_show_fan_manual(struct device *dev,
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
@@ -875,10 +876,11 @@ static ssize_t applesmc_store_fan_manual(struct device *dev,
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
@@ -954,13 +956,12 @@ static ssize_t applesmc_key_count_show(struct device *dev,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831153200.1024898-2-sashal%40kernel.org.

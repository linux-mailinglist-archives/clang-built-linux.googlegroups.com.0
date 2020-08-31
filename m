Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB25PWT5AKGQEMVF5YCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA94257CBA
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:31:56 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id a12sf4281061iol.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887915; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7wVlspTdRiWJSf/e2kmipNzPL66QanflOXxu23HNlD3t+yxtBOX7u00K/zZTUYjWp
         FAnjpLTVgsoI1SxQkeK9J8g8q415eRX94Fd+iNyfGrK0gakFsfJlgG3h0CgqB5N9DCD9
         bwzTSr4Bc5Aus8cacecIfVXcPCygOyrOfyjSCji7/FXWesNOaVi33RCGXMI7ZRT85Qab
         yV4p8u3wvJhk1JqfhbcFp4L5gLTIzekeYLrT2mKocvHHGpR/axAp/dFg+AlHf3sZlFw5
         /2AA8FIQryh704r/hpmKTyl+ThMHBLgEAKR8gpLy6gkbvglk48CKIafp4yb8JeRd4fCJ
         HTGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QOz2KAKvRqTmWR+lFjjiq4RpbSznYbzar+A9LK46jiY=;
        b=nXhWU0F+juhWZvjEI1rxvEBKtINbNHmr1nEWDm3DvExxrl6Fqhc9Gv/U7K/vM2CZqY
         sHJ9B00lXRrzSr2Kgdz2DHqQbcGITfBlRHZeIT1d2cwrW8zO4BgXU/iqh6aOmldP8+8q
         lCvfml2g5Rz8p3jaE3dH/4i7TKT6hl7tdWBEN0qP6PJPCSjWedmfZs1kiawkvldkjhkZ
         k8NBIt7w6WMhN1ONfd6A13wlZbMhBF+VMJXdRAFBFQNttYPDt9mIgayVcVsLFADQ4v7E
         pdD8MEurQDmwri+mO9QKTIJ0EGvGpW3zdzDLvCV9sL/fCWh4j6mrqdxFpkcIJjpGHCso
         FFUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OpfFz8Rq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QOz2KAKvRqTmWR+lFjjiq4RpbSznYbzar+A9LK46jiY=;
        b=evyzbIPvBZaW0+61bjXDXHQWzRmD0+dG5IOwQgQhySPqtcekkj0+hMAiaW2dnvrbLw
         ZbzIwr1NCImWkqGkGRYGb655Fu7MfnpBDt27+5xHwL8QR2a+OK0A/fBQSZDycDvd76Ka
         uJ2YEWEdgp7Id0Zjdl8YzvfNAle1jmwhWE29VX4C/s41MmOKU/NBDVLHAmIjg/JWZ4iy
         VplO+NNtk7lVE3d/KuTpSiK3YBK7eZctMYVzosPZPBMsLI0uc8RK/02xlYm9SscAZJM7
         imv4ZbM9svhykvvXvSrKlO1EgcXe5ZnMzWNbniWEoZBjHGo+0HhKPU5ZfjDF2DJXQ+0p
         n27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QOz2KAKvRqTmWR+lFjjiq4RpbSznYbzar+A9LK46jiY=;
        b=mMGMYfAmt5jBQoNVhB7lBazpmq+hD/gkadKuJr4UrLpGupPrKk3QEboGXHWC+h+Grk
         BLw+b4xClKh04iXLKyrNSrIY75r6u3pqcFIjfHKwdDjhm2A2DJSHCnzfi7j3XgfXBLTE
         MpqTG6C0tXeZ1N7Qcj+gbUhVNlNR9CA/mY+k06LbwFZ96DmsacN5sxcg8X+iFGiXhCy7
         OH8oWfkH7P1evLLM2mBOymbuL3+Mdgqp5iX7wDYPz8HWV2Bh1ElPu6UB4DAi1i0DS6RX
         zQQZAfhG6J1vZkg3RWGD4rcTxzV+OttcILYoeBYRXWHd4OKn5vBFmerjlyb9H0w5Bcrn
         PHTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qpJ4zvfBxzEFBg2cMTCMna11RPxO4Y6J8P7IyLc0ScpKzm7mR
	0kOcjAKtOAUdHaXVHQvt43Y=
X-Google-Smtp-Source: ABdhPJxwRu/IoI2lB4UIrmplv7dmYAQ09DMru5T1mSzZ4ZnUWi2QSJouw2ntUswa5Sv09F8zU7nAmg==
X-Received: by 2002:a5d:871a:: with SMTP id u26mr1636021iom.92.1598887915527;
        Mon, 31 Aug 2020 08:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c648:: with SMTP id s8ls957384ioo.5.gmail; Mon, 31 Aug
 2020 08:31:55 -0700 (PDT)
X-Received: by 2002:a6b:c953:: with SMTP id z80mr1718830iof.178.1598887915184;
        Mon, 31 Aug 2020 08:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887915; cv=none;
        d=google.com; s=arc-20160816;
        b=MkLpV8QAwwrzKNLwVwLw4am0cmA29+/mBfY35Vzva8Db/WnHwU9J1qGZHsdvDuEA9W
         DdJqxVOwjHlhhpdxNJIOKLEOEGbAWQvUbmvDHDJCND87K9/Li8szRRXrwYTkmj0CQ8Jw
         UT8pfQsUC+oJ/v/i46JCNb1mH3E8J1+kUp1LpZzP9tQ0vpUnhy8upmVgmp8FcFloQpkm
         FSGNItVNVaD0auKdUOVk3h/BIo41LP10fnu9jPUOI1Rl7c0txOGiGm0zvR/aoTFwy0SJ
         y25VGikfnfr9+0T/TquHNBeog1vlpDUXLJLVYGs7p+IfVIAypZqGoawj0YjQZ7BrIHW7
         5hbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zVml8lZ4CzV0G/mt1jeV/ATjmDpFiQiraE1CDHCO004=;
        b=YX4MkmzLbzoKbmQevVsV788VqhGTpoura0ZHr7ygJ1CL0+oI/srmkenO0lFF8XHo5T
         w1347pECDoh5yHvjh4s1d6B7QLW8vgC+0XDvQzi9b2AGzPeSyhViawnddj03S9TDyu6q
         kjiFeeI2iU+cdvQxkv9amEbygFA5kvaUxfy1W94mErB5u+45397qZ7audoWpuHLLnsCO
         sTmhFTecp51UVU4FS9hXA0Y4bl+yxb5cRZf6vg5LAmrW2UpJUtZ0sTvt6bSOUWigjd3d
         M7ufg4gglpAOXiSc+KK3RExs8KGc/ysc+eI+/vShSCN9fe8aGEGkNTClNSaXCsbq7bvW
         jdQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OpfFz8Rq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d66si82665ill.0.2020.08.31.08.31.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 79448215A4;
	Mon, 31 Aug 2020 15:31:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 2/6] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:31:45 -0400
Message-Id: <20200831153150.1024799-2-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153150.1024799-1-sashal@kernel.org>
References: <20200831153150.1024799-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OpfFz8Rq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831153150.1024799-2-sashal%40kernel.org.

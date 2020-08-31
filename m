Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBX5PWT5AKGQEFQPMAII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id B1420257CB8
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:31:44 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id u6sf3597603plq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:31:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887903; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhdxq2+WZYFQz27MaIWHgq7kc6Z04Ut59bgIGNvo+tjTxtlvbO0jNpdA+L9b+w51CF
         O3bpBzJiAJWwoXugZT9n6Vlq3CRVKUPAOdzfCJriM3ac8FKqhosWRZxJezDFBHQAHqaT
         n12QLw/ZGZAY6yocaDm476sIyYCpeaaDSIWGtBL9bqj9UJ71uXodD073OY3hdxc2ZupG
         LwIYwOZKipWnFWRqtUpPqMyYq8VFFrOfGxM9i+uLeVMTu1HfPZ+3EUvuU3C6Lc/vT2oU
         c9vKY7xSj+uXqI4u8fyuy/HrDuq5t9+6R8iOKddOwmkC36NoOHuLQceUJZKVIC1TsVKw
         tnqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qON4+ZScVWznOca5FKLXCZyunX+qg5VzRSlzbztGtc4=;
        b=BhSmSQHcwr2GWoFl8WJqBAt2k5kRnykq6ZsVIQjHqyKlznh5FlYR2NBKzbwCfAdYBw
         GN/Yp5zcwpWXxRaisbtvcQprBzgOXrmkStuQ11+KFjdy5SOYIK4xAdSyhUepv8ndNJEf
         buAeuOrp305ZEaYpZLLlAbW/EFZSu+V1aVfIytiJWFRJqbhNQRgHQKXO2mTMvh4rc9/t
         VLtq3kq1TzG0AvUpL1nRI6ogp+7z/CBMi9DkXl3TZXI77osnVQdGloOWwvCnTgFguAdR
         uL56aaKUdhCa/efb1pnymGEv8zlrUiOaGr2eZYLyiNzhmRvOHQ7Ijvgp6oYDtkdm5bmE
         JCYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ybjpv7lV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qON4+ZScVWznOca5FKLXCZyunX+qg5VzRSlzbztGtc4=;
        b=XARHt32LU3xAi2e3I7TAY+SJYbFvDijllYJqr9+5DecHrr/3n1gqmxyvat61nHgweh
         S+0Opuv42IELTVgK8UoKoKHiynKltVgrw36L6GVM6DVXKYelV3JpiTcf2FqQ5qNU26It
         C7ZLScF1a4cMKC1L1/jFyxo7JrzM9kONykDP49hZ9PyKURpzFJesFPE4BsbjCzzM1Pgm
         BQkHVJTgam9qZEWw/0ZC38+tVcYk18luhd8ZuaM0nHhssJFbK9NoP0h5G4/7TbVp57iQ
         Wl+vxurYZUhMetdWFbOn0rxtCUGN60i3ah5er5Cv8LKG+8HTscExwQYSY8zxSnWrI7OD
         eFNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qON4+ZScVWznOca5FKLXCZyunX+qg5VzRSlzbztGtc4=;
        b=IMVxXrGf+3IDfcDulh6zbP4ah38Y4xcGd4M0wOg0LdLGi8AJb1dCP3rJkwQnx4uv8d
         /iPajo3nCiphcsnZXPKVCHJxEsmmlOD6DY7BErAscxMuEdzfAYWHfxNpWZzfsbL0EZET
         pVTMbWGVlLtN3QjcqL6foFAlS61+nbmGYbR5hgqDHe1YVw4I0rGGByRMVsahonfQUPWE
         IzI2iGYsa7iofz4NusDx7ZCGtbxVZ+/NTRwAkCFX/8ZMDJY4VBV/1nJ6gYE2BO7ibjU3
         rmLYxoid41rjAw9jqZkOJtuh3biCYeoHNidwV2YiqV33NghEbnxVhHg2Rwlv8DzbpTXT
         jkiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZWe+7vWhQF2Pn2rDULJeoBb2XyrOLQ477fkOnUI33XuiMfzRG
	D2QzqYVcOgrC4gUmdEX+Ilg=
X-Google-Smtp-Source: ABdhPJyU30KqBU69tE/+BJD49yg4yAzVqYrss3T5dRw68yn9ppuKEfJ5ccE8in0hgvG/SziZGmKhig==
X-Received: by 2002:a62:33c1:: with SMTP id z184mr1732560pfz.248.1598887903406;
        Mon, 31 Aug 2020 08:31:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls2652387pfq.0.gmail; Mon, 31 Aug
 2020 08:31:42 -0700 (PDT)
X-Received: by 2002:a63:5b05:: with SMTP id p5mr948217pgb.154.1598887902873;
        Mon, 31 Aug 2020 08:31:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887902; cv=none;
        d=google.com; s=arc-20160816;
        b=doB9F/v9wd6bXWd8S1DwnLCNt9KaIU1/S5Zp7ADC9tzTV1vAYxOKKHHhI/741sjCmf
         Doh+46LIIGoUyyQWruYlsQTNd3ImcNQYVVHSgyu4yzXhZeiJY659JymCRHp/KI+lm8Dr
         /r2DqPRR6aS/HJtU3ZfeW7l+Nxn6zeR4M8n6C/ICgE6ujATVAWp3sL0fmN5Vqz7GvlW5
         RfrMFmpnczfDhtTCt0k0F/W+QpivPd6ob6BBEbhS35cyCXDhR/60PEcAPyddZSqi4iTl
         W0cSjKOydoIQw+jXsaF3zMjgdNNgymubFqK7bfuLshwSauQKojlViOGNrstlDDc1Wxk+
         lvOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=acrgyZ0LrGQ5Cs4K4/XtXfYJvmEv36bjQG9wAIjJscc=;
        b=p6pCtTsEhiNbHqgQj0syoeZmklZMo2Xd9a0hvv1bgqqBDYmM90Qx686URPHrq9Bs7f
         otgZPIyqzXrsOTfixD8cSyApKqTPt1itY5Yb/B9D66Y8fkcwuPaUza2w8COkJpqe8m3C
         4jO6iNfwXA607rmvgxCZ1wyH8uw+lKQvmr75Lf664AI8ubIH4Ksj8+npZeDlVBCRayjT
         R4j7oFD6hnbQjO6Mqz6sShJLshUW8YjWPZoqdI8bQEU6eMTf6bfMoQSmu7LArz4CHikN
         reumnPP8C25O63YT/LNilgLCtEsmMT6tazYeK48oRl5sYi1uHArsykwHAcQ646uxgj/c
         lRyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ybjpv7lV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a24si306275pfk.6.2020.08.31.08.31.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:31:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B0197214D8;
	Mon, 31 Aug 2020 15:31:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 4/9] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:31:31 -0400
Message-Id: <20200831153136.1024676-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153136.1024676-1-sashal@kernel.org>
References: <20200831153136.1024676-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ybjpv7lV;       spf=pass
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
index 5c677ba440143..b201129a9beae 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -760,15 +760,18 @@ static ssize_t applesmc_light_show(struct device *dev,
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
@@ -817,12 +820,11 @@ static ssize_t applesmc_show_fan_speed(struct device *dev,
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
@@ -858,12 +860,11 @@ static ssize_t applesmc_show_fan_manual(struct device *dev,
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
@@ -879,10 +880,11 @@ static ssize_t applesmc_store_fan_manual(struct device *dev,
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
@@ -958,13 +960,12 @@ static ssize_t applesmc_key_count_show(struct device *dev,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831153136.1024676-4-sashal%40kernel.org.

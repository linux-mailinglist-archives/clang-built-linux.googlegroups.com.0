Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT5PWT5AKGQEIZEON3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EC8257CB0
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:31:29 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id m125sf6260468qkc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:31:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887888; cv=pass;
        d=google.com; s=arc-20160816;
        b=jX9XgLowJtONe6M3i0flUMg3HsFb3ZcW+f12D7VSWQK1/AmFsrZYedkwrWta+I7qpz
         kN2MBSh2aCrHNT9Fcwe/A15vVHWXtPaXG5k5NOwCk2UVxcvTmhu3Ou7n/8YLGOgLTg/K
         O8iGXVbOkie3psZ+2hCUQ69VD10cbcHgAAcVWmlsRtxyxF0YjrzWTesqLXw1XkufRZoT
         YLYbhTjLFiJfcMssL7pOkocyWog9H6wCzVvYEi+FulFVzFaIW8VFzmvVZXAamQCsOvRG
         mDjhSLBhTJprNRqF+K8BbgNRZxjbr4F8WJSdtBZQOALOCWA1gMghgxTm8oubLj6q6k5z
         wLqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dtXctEA3orQmegmA81TQQ8B3tcMD6RUxYNr+Zo+k5CA=;
        b=AzdDjhOk949Kfbp/Ww4wpsGya2NcDRV9R4ImZa8hpSrKQKcWawo0hVxhYDf14sIopD
         SbmbtNhYmKGB/pmrCf6DY1m1kwVYfbA4qNa8NX8alZf9Em58//DozJclLN2/KKgKFnD9
         YV+1yYJXMtk4+qlpf9tEjA0rDe7CquZi8S9q3Mu3QLyc/H1wxBotEtIZD9cNlofh1IV7
         mA57v4EvnoOB7ge976GhKV8qcYTkMlgcex240Ci7nUCNyxyhsheZHn7hx5U70IgOJlnG
         3HdP2NnsaUF2LWypKRj6Z2UaWamI1E2unG+5KMEv/LKwPw+RlbxAnUyhzbWhKI7iShUS
         pmwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xw+jHG5Y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtXctEA3orQmegmA81TQQ8B3tcMD6RUxYNr+Zo+k5CA=;
        b=OUP3m8mHFXZ7A43dRZyoNQoWL+/Oz2O2onhSax2QAD48R7cf10MyK0hTDptIVQbGem
         DE8Sk69I3dl3KZr8TkB43LBe08RQyqrrBQnoWYgs7tLq/HXxL+N5h9tpQd5JSvkX6tb2
         cESFO7VYoo3SeI8rMl0El7x9UoN/gWFskOg6Ym+1TdVL1ICSlit2ycmqeNb1bQBk8vkD
         B5yW4VdveHXP3B+nAK3kR9g577/7fX69MMB8+tvM1KscCzgqLopjFyHmumOua7pqg3RY
         gvYmUzGEtKXB1WMllFewbmQ9rUjUGpTcDm4FeD/5bAedbGizbID9j2S+7dhNT9y9fFfV
         d8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtXctEA3orQmegmA81TQQ8B3tcMD6RUxYNr+Zo+k5CA=;
        b=hHCZ+blNPRWqj7AUAKNK4Q4fO7z+P6pUwhOfJGeJ9AcRB1b9j9Nlmaa8U0CU7Cjz4b
         zPkyEmA14cMSJJdemBgw5SxHKZ3vuui2A3LaffBj0K2DUekPjDlkavwpa9wYl1Ks7ZkB
         Ugy6SFC7cOibNfKbaLM9zXULZE3sd+CnoTqSUOAX8N5QnxIUujmA++Noe06l3gVZ4p9m
         JgeWOerCagmVgqehsLhxDnYQWCcMVIqtz8SE5MCvOD6XNgerlKUeWSQCs3c6yrWaRFdx
         thHQsrSrzXUN9g7RrXwAGoXlT/0YSEn5nk/wyJFVi+VBWbVQxcISsojPuIv2nGlml484
         99vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533o5Ntq+RLdXe5Mx8DEx9Z1/wKyY7h51NdaTNTrfTP19EnZE3Tg
	t9i10BHQbLWgoMsZhaAz1hE=
X-Google-Smtp-Source: ABdhPJziepMWfHIw6q8PYxVG9QTA6J49Pm1uTGbJc8ov0K7Ep7CrODfrmT67piW/qznQlVSp/mz18g==
X-Received: by 2002:a05:6214:a48:: with SMTP id ee8mr1602151qvb.53.1598887888116;
        Mon, 31 Aug 2020 08:31:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:585:: with SMTP id 127ls2311521qkf.8.gmail; Mon, 31 Aug
 2020 08:31:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4045:: with SMTP id i5mr1946147qko.108.1598887887512;
        Mon, 31 Aug 2020 08:31:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887887; cv=none;
        d=google.com; s=arc-20160816;
        b=w5JiMrNGmxNl8kbOoSxi1XHrfRh+cz8ygIzvwGiw3kYsXnrEw8oH+1etD9pdyIoOPg
         j/8sU7J0UQJFFYvs3Yb7w+MRuEa+6XnfL4Wiw3L+q6ORnA4UfoK3pjJEyK8QNDnlpSg5
         CVBfBYGyy573iTQ/Y/Wk0W5ytM4POw/u6rZ3exeOHqkAmdBssdCwrxk6jGEeSDO9NYz/
         d/dyb2sZerAGh1MmtSI8kgG0KPrwXPP26x2Lmbt4F5I5BzH1pqRAvIw1GYZNsynxO+Rw
         mf40CP+ArJr8quUsCjo/1OLH8QyrAJpSmGLGwvzbSlKzeJmod1CQk6uC/dv8n9REdLSS
         WhVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=acrgyZ0LrGQ5Cs4K4/XtXfYJvmEv36bjQG9wAIjJscc=;
        b=hBGH8RUjqbSvaBHrPj8LlzY5uobzaX5Qx7p8f9aNEdsw+v4sdM2NZilFc1THxLH0dA
         oYiDzSKYR+T+cL/ijQcW6biHEE62qAtmu3AGjF/U5OUQq71vAWFYxTMyMPrIarIC0lN6
         /ueqIgMLe0O7CxqOQyOaGNOWmF6ADeuCox8FqQvfwO7I2hEjdxA33GOjSH5WGi9lzr+v
         GRrcqYGYy3+5jq2R0jroDJ5Cys6SEabd0+gotWJkRS+MCFGm22YVDzBfNQtbHhoRBsl1
         rAs2cGf6aTg5P9mYu4NgClWEgkxAUpUb/IB2dASGelyK1kssM+dXeLI32+tq3gFGugwM
         Dw9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xw+jHG5Y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k6si424753qkg.6.2020.08.31.08.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96CFF215A4;
	Mon, 31 Aug 2020 15:31:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 05/11] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:31:11 -0400
Message-Id: <20200831153117.1024537-5-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153117.1024537-1-sashal@kernel.org>
References: <20200831153117.1024537-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xw+jHG5Y;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831153117.1024537-5-sashal%40kernel.org.

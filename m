Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4FOWT5AKGQELQNDBFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 416D0257C5B
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:29:54 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id v2sf4868424pjh.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 08:29:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598887792; cv=pass;
        d=google.com; s=arc-20160816;
        b=ggFy4XrdCWZAKavdJuXoOtYjsLvDr7q/6ZfXMOQe/MPG72Ejwp4ULY6tbkl3yjiTrL
         BFNyu4noA5KvzZvtEIgcep3KmNPi/JasKoaYwhN2Th787A+vZNKWYRxQUHULoMxdoJTU
         jmnNxyPJL9mMN0jrlcIyrQeJT2XbiWjISR+4QZffDNDVcVgK+Ks6Bl1SgrwBilN/wcXV
         BnZzy6RdGE/cM28G7HiZrJ2XRXd8CHGtEHaFoOGS85dQ8d/EUBeByKrhUSt6qeHlTBRZ
         Y+qIj0HJPVRh0UC45xJ6WqZeVXvdEL27M3JqLbCUEzd38TyQ2yffo9x9QEHtnoPKwm1T
         GqOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RE7/V86o8v0AwmnhIzpyoPeA2LYLt3Lb0Z+LZ2VrvtI=;
        b=NHDWDTXRCMVq0VqsJkUOfLOiC3ug/HKVzL6N/WNVdtVR7SHZVLpSQn8B1HbMI8BT1V
         c6dVfE/opyEYLYKOgvY5VP0ZxyXN7st2XuSlwcruAVIOisAzu3lGVHiGxY3EuktMHorp
         eO57Q5bpPsx6jxXbjKbGz+8RRHdfYOkYWlrG82+9sF+XnFRPolMw/PvGgs46v4vBqBVr
         yru/Zy676D/hyDV8RJtGbfeIXQq2yFkuuzI/+xN356zeJbzUuDP7n/r0F7hxHt5AYkZ8
         p9a13AYutXh5JsO/KEBF9JFsQFcjkv41HofwZjG/oK2WS72VXMS0/5oPGvQGatgGLLu1
         uT8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="asB7YS/N";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RE7/V86o8v0AwmnhIzpyoPeA2LYLt3Lb0Z+LZ2VrvtI=;
        b=efXB5sBqqPaGtPnAoBRLQ59IQHZMPDmt/AA+5cnrQwYxV8rhOfZJZal06DZWh2Xzuh
         MxNh6NS+8aupY8OKfjATkV33DORVZWxs3GXD8oxRk1Kc8EOcSHPSRNl7JMQBqXIsjR9p
         lRC1j0REZ+e64CbkmGRWoRE/4dLOVG/3V/1TerPeCemBk1XIhVzE/ZyXBrjv7lyDc2WS
         9JBdUhe04oIpY6gPktRaKOFMxYw5sJIVBb/2rVhfiQKX5mVwtvXK5UXOSEubnz9K25Vn
         VHYv9QEKqsXNPZQutnC5Kum6WNr6uzBuseg2GpioymaB269Ebg0BtLt56wqqoNWuJQNN
         vaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RE7/V86o8v0AwmnhIzpyoPeA2LYLt3Lb0Z+LZ2VrvtI=;
        b=Fb1JGpR0I3Fxet6xi4G5JDtlPfOH07aweMPlZzpzK+PYHXEn3soG8ieeKrDDfygzpC
         /5VadAlyIsWr//2ariLX9K0tW3nprxqdLLVu/dt2jsA9FFtM+obe1Pjx1FDB34ZsOkJY
         R48x6UDgu15om0h+hHNnItMd3Ys0CbKTRVUeaI3PGkPPqaq+vMjU80cI7Izd3mVI6N0C
         0K3qdWAjJsur50dqkCZnsdJObeM5j/ZOvntGYIhtHjXjxlupeJhhHk3bK/9g+e6l+jaR
         075oXRSupS+rJdFvt0IF2pl62LF21ANbKQNoF68y5mM0kIfj+1CwqOkgCXdgkRprGElH
         rJOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p9cV8Z0/+fzBSnYZYLp8C6Wybm0GGxdkL+3CISnlloSTvhY9D
	MHQj+qyWNz1NqeZTBkwBt/0=
X-Google-Smtp-Source: ABdhPJzz+E34mHHeV4Y0/jjx+Su6YJllWm67zGLFTHi4D3hT7RAvfHv+tHPIjEz/wJdwbIdvRmuCmQ==
X-Received: by 2002:a65:670d:: with SMTP id u13mr1645113pgf.280.1598887792378;
        Mon, 31 Aug 2020 08:29:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d44f:: with SMTP id i15ls2128183pgj.1.gmail; Mon, 31 Aug
 2020 08:29:52 -0700 (PDT)
X-Received: by 2002:a65:6714:: with SMTP id u20mr1542420pgf.252.1598887791914;
        Mon, 31 Aug 2020 08:29:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598887791; cv=none;
        d=google.com; s=arc-20160816;
        b=qeKYwQEPqE0gkj0BBWAvxe+WEjDQM03HQGwdGS5Y3F1WlfjQwYYYFDQZBm23HBVwoe
         N1uIdHlIv8u8ioms5jy/2IZZ7rVqmMaxiPwi1zqFBT9NAag1jXAJa7B0XxFMlNBvcxzE
         SpOnfsYuD+jsojhhi2x8IY70fh7YFG+vHzgDSAoTIGb8t5p2nAqcGdBB0Pq1yVm3yoF1
         eHgJxMul+NOD8kW9ee2qDGOCdRhOs/hmKP9//HvhAU2RIZCNgW28T2Qt9g1mUyofBIE3
         fp2mW8ud9y6erd+VdlnVUpOTUG1VZlPFl/ikaBIP/950GZk9TNcSPn3cPoiV7I1+lVZC
         zuGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q8Mb7hlDiQlExIWbgrqvTLZBE2oTpk3pIDo6UbV4zug=;
        b=qUD1S8Xu4cmCv1y1Bbo2nX5q33rzyu8UlmNwN3kcxy5sVtD6dPuwleNT9YPxhCkVB+
         Tiq7HR6FWQijCfvTP5+hK7c/jMiR4o/bcT2Q5xTxcx9cdPcMbeBYm9K480u2m55yCyT/
         DG39PSLleMqWyWePq5/cbj8jDEZfDgeaTjqCHVECVbkxw/HxsLGIhL5OmLglEhIAU5dw
         WS+uoResPCYbKX1EDTRhsVxUrTmajh24lkLFzgVtY6qoDeRm5/1QTmK49XSyhYQNFTc2
         KifSpYfxEW7YgShs3H4nu48vS6wOSqmqS6yAoItgb9ZGCmr3QjWsJrXfDZw+61PvlGCD
         myYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="asB7YS/N";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ie24si356046pjb.3.2020.08.31.08.29.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 08:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A79BD2083E;
	Mon, 31 Aug 2020 15:29:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hwmon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 10/42] hwmon: (applesmc) check status earlier.
Date: Mon, 31 Aug 2020 11:29:02 -0400
Message-Id: <20200831152934.1023912-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831152934.1023912-1-sashal@kernel.org>
References: <20200831152934.1023912-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="asB7YS/N";       spf=pass
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
index 3166184093157..a18887990f4a2 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -753,15 +753,18 @@ static ssize_t applesmc_light_show(struct device *dev,
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
@@ -810,12 +813,11 @@ static ssize_t applesmc_show_fan_speed(struct device *dev,
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
@@ -851,12 +853,11 @@ static ssize_t applesmc_show_fan_manual(struct device *dev,
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
@@ -872,10 +873,11 @@ static ssize_t applesmc_store_fan_manual(struct device *dev,
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
@@ -951,13 +953,12 @@ static ssize_t applesmc_key_count_show(struct device *dev,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831152934.1023912-10-sashal%40kernel.org.

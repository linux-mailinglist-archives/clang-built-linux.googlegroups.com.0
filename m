Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG4FQ72QKGQETSSJJJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F21251B60F6
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:30:20 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id 9sf5373320pjz.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:30:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587659419; cv=pass;
        d=google.com; s=arc-20160816;
        b=iCgcYrJiPgFlHG0ePIwaVkQTN2MiKjvtMnALQdSOlUVu9a+GFE+p4ZEkqj+07h6UG7
         f5d2UPHdudnICSlftaR8V92ZJLQGRvVAOCBio+KX5rcJ8aypi8V+VuJqD5hu38IXngQd
         c+FVJyvlAhvZ44izPAM+D6Ch1bzqnJ+/kmzg5YEZqYxyZvUZJe4J7Ks6E/w5e+NCG8Mu
         EzJ88eP7HzUAG8AqTj3HU/5a0ZudZeAxoAODYzhnjx/kPdAJ/MI+MdZyyw4PrX2tjHWK
         CQZRW5m+xSxv3AieP681bbgRtcuo5tcYahNTW/lhIIbHBG8HYAyHPAcyFXrLlvUQydND
         jSKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=76LezoTJm3boc+Utf65QMYrFz1re+wBECKo/b9+MhhM=;
        b=zyXW26ikTbxVZjyp8OJx/xtAym4rocyG/pMhjW4qYbwsSABWIN7syLf65OqvxC8ZbX
         q9SIN12dysvxuWvuUl8IRkouAwTOlu3YLfGPkdWcyWM33F0OS7JvrmeOML6uX1Z5G0uT
         86Zi44o76RkHjLeHavsNyt7TJht6Lajyg8fw9bi16rlzYitMFFdi4RgBYMEoAVkz6Tzh
         4hsSj0u8kBXXZpc1pHnRpw3PTutc5ceMko2f848jUGCxE6Jkgl649kXcB688PLBX+TDP
         M6hIRObNOh0Re7upnxVck1UW7cP4ZglRh/1BL4r1S0hz5vmFQsbWBiQ+g1mnIthrvL7n
         FaTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKOd4A7a;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=76LezoTJm3boc+Utf65QMYrFz1re+wBECKo/b9+MhhM=;
        b=Y+TVkVkziCTA5/bajaK51WBLgobR9LPNcENZh9N+b7xwU3cP+7DPgLKaYICFuTgQ/B
         Z2CpTUCPxfBCBmyhjszW81qBs+dnNP9IU7/up0EZpA7FG2wz7gBKJMOV5KyYSL3D6QNz
         q1cVWYRxFrvcq0u1+fO6q1V94vybRezO3XDaLC71dsiSJFPaelgsI9GVpGYZo0O8XPHS
         4Onuutc62W9DB3B32NMs3Dsouf+cVEkeCS3sIxSZ+TXSEibQzqhkuAQ1LEnJ0Wd1RN7q
         VkBNhiv+gfRZ8FXAZW57lgOjeJt0vMBUwxQmIfMBFrgWNIEXTEHrwilgEGcf0Vhspfby
         EYMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=76LezoTJm3boc+Utf65QMYrFz1re+wBECKo/b9+MhhM=;
        b=tXauCt1UBvYm7WdVFzwBJtnOo+YSTB04504zSx/ZT1Wn+3MOPFVTCy41R1kTn46rVQ
         9OPP9xnqQ3tnLJl6WZcZAAnEIq+vUcsibJEAJADX5wzmFjMtWxGvpe569Z0U/0Cbzj8e
         p8wH8yRVzKg6JWJfzCqLKe0l6ACY09ZAVevg3B4cr95iuhM2DM+sfBcQM6RrzibT9Hxx
         uocjuZPPSwb0A7uUrcXbVVCafIIH0ALScKAGmu5nkF06sI4PHhT/KcNyl+OPAcwJ01ZX
         BYdmJ9dakzw+Q8kluvF4HyXcSO2fkH5Ws3G/U0BM5AZHzAFUOvVnHU90WYHIrJO9Y1hP
         xcpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=76LezoTJm3boc+Utf65QMYrFz1re+wBECKo/b9+MhhM=;
        b=O5qNz5rtly7oWtmu/zLYDfZXL8cG3tQ2SeteM1WSmeVw1xGI+ikh/TT9O7E+82VHCS
         ofO6/ecfEvhjpVrJ7+K7tXSS9mkEJN/E6sXtjhozGEX/lTKnJIogZfuu62RUtzWkwDcB
         8CtZdqnzUO+Bf2guptch5KYRbu5/bvgscMwtj935dj6eTsLAignEV+KR7amuvY4TyOXQ
         GwV83LlVDGm/4Y4H9kuHi9mcd6LFp7BOYGlPXedBTGf7g+wPNZSY7f0zUfSnoztxK0xj
         NbCV4MIq+Z433n9G5tKuvmkn9gzoIPto/F1vz5e12gmX3dD+jtKXeuVZIkQt2T68BNJ5
         /64g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua0Id/ca4wdmc2dAAqOsK5NOl4eadr1y2QZxgAQLCtxrgKhtVwe
	ecVHCMtia/pTdihal0otoLA=
X-Google-Smtp-Source: APiQypIXjcH4tdiVBMzqQp/hH2S63h2qneyd5JSj08npbZFwH+pbHg5bMH8QbOx6PBhF8I1BHitxZQ==
X-Received: by 2002:a62:2cd7:: with SMTP id s206mr4414522pfs.183.1587659419381;
        Thu, 23 Apr 2020 09:30:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7b5c:: with SMTP id k28ls3217608pgn.4.gmail; Thu, 23 Apr
 2020 09:30:18 -0700 (PDT)
X-Received: by 2002:a63:721a:: with SMTP id n26mr4863591pgc.386.1587659418777;
        Thu, 23 Apr 2020 09:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587659418; cv=none;
        d=google.com; s=arc-20160816;
        b=AaA+8Np7pDwO/FZ4j/Tj21jwue7hsUz8v9tYoFNwUeAp5crF/ccl1gAvgY9mI2fPul
         HHeOu8IZLRbB+DpCc8WkPXHoZ10evHIxpcan2l+IiP/KIkkwOYAQQNtbzvXR04bAfnpy
         ktqcWClA6vcu9xEcPJeP8GT33SW5GEDFbhmvxXlm4qmtIqxlbkMo5DsmyJr9WYp/3mW6
         dPZvaB5KPnKhVz6TBqB+FsJlQdQ2lvC30y4wGotQUsXUP151hYzCStLXKdGCITwQBt56
         LOh4qX+rSu38kru4zQldR/xmijW5hlqXEB324CX304OlkG/Z1p6giNgO4d1dyE+anQiO
         ceyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HfMYnWMcgnIY3nd+oLvzUL7qnJpXroGRL8ZoecQv4Uc=;
        b=M2e9NHUV5BVxaS9/QB4JNP3cJLI+jTi5sov2phoUJglnvpcSNnURDd1tNIUp0+MOGB
         dA0hRkZmXfq3pF9lO7tWpBs9Wpt95chUFJ8zxMBCMN0d9WT9f5esMfF50Y/QYIOW6cbW
         k+5pD+hwyfInxFsiV5Fo5hqOS8m5XShvlLjZgE9xnDKxfEAx32BGTQLksyn0Z53nUmmB
         briusVHaYIQJp5xBpw3qnqaypcFHJf8KkuZ6p/Q/VqcQdbpRJclmrMG3Nna3ZydiioOm
         1Y3sXKDLDmhytsLgLTfyk3HYEWl7zxWQPFrPn7r5DDnlsdfvs/HdfhmH7UicW24Zqfad
         b5EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKOd4A7a;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id a95si879380pje.1.2020.04.23.09.30.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id c83so1438575oob.6
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 09:30:18 -0700 (PDT)
X-Received: by 2002:a4a:df51:: with SMTP id j17mr4010608oou.57.1587659418007;
        Thu, 23 Apr 2020 09:30:18 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm703031oto.80.2020.04.23.09.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 09:30:17 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Thu, 23 Apr 2020 09:29:24 -0700
Message-Id: <20200423162923.10886-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cKOd4A7a;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
address of 'ep->queue' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (&ep->queue == NULL)
             ~~~~^~~~~    ~~~~
1 warning generated.

It is not wrong, queue is not a pointer so if ep is not NULL, the
address of queue cannot be NULL. No other driver does a check like this
and this check has been around since the driver was first introduced,
presumably with no issues so it does not seem like this check should be
something else. Just remove it.

Commit afe956c577b2d ("kbuild: Enable -Wtautological-compare") exposed
this but it is not the root cause of the warning.

Fixes: 3fc154b6b8134 ("USB Gadget driver for Samsung s3c2410 ARM SoC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1004
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/usb/gadget/udc/s3c2410_udc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/s3c2410_udc.c b/drivers/usb/gadget/udc/s3c2410_udc.c
index 0507a2ca0f552..80002d97b59d8 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -251,10 +251,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
 static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
 		struct s3c2410_ep *ep, int status)
 {
-	/* Sanity check */
-	if (&ep->queue == NULL)
-		return;
-
 	while (!list_empty(&ep->queue)) {
 		struct s3c2410_request *req;
 		req = list_entry(ep->queue.next, struct s3c2410_request,

base-commit: ae83d0b416db002fe95601e7f97f64b59514d936
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423162923.10886-1-natechancellor%40gmail.com.

Return-Path: <clang-built-linux+bncBAABB2WNUX7AKGQEZTJD2PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA632CE19A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:30:03 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id kb15sf2058538pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:30:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034602; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4SGC6pJ0Ch7KamZro+3NhnhZH9nm299TAugijdjhAOnodtzMO9dgjrJf5QxRS6PtD
         RXB88kQ4/6esOEWURKKOZTyRi2i+Sqh6sxk8AgDvSBVX2N+mkVneZM3DWZOqhEKa5ksn
         6lTs5/XLY9DHckPi+El04RdFSagmFlbn8hUinERndxgSEQirYGhP4o7sfONyxenBNEJM
         xc4GXIWzTc9ePljQyUH+lPAZVx0NH7BzwyHbq1pBkCpa2gONjZdBiVjTzyKcC/UgWnV6
         tJLRFM1vgUK6TTR4++SH3EKIaCHN8SJCQSaG61RQC6bLq6Wv2l2meqVxlCcx5iFAmSeW
         XKDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lSFLU1gDASKe3Y5qPMxiJjf4eHR7XBc/6El6M5Y7ORA=;
        b=NqoawaSp08W6pkGAiUYGItErhjv3hxl2DYJ3QFuJZJVLSc4g7BveBGwABHcloRCc2O
         7Imv7HV66E0/wBPezszODrCzoF+FK//XbZND3cJDN/tx+MMtEcKCUIIgEO0+lLLrU71J
         H74qih2nxq0D8QQnl5Yu1tjG9HalOQOV+FGwoXpDeyvqfer6hdMlIqWhrD/h4A8dRLjS
         V4KxHUDzdkz3sVgh1gN8daHLeqzH6pd6CoK0zpj8Lj+k51JzZ82pl98k7kyJE4drUfP+
         4y/Hfgo4l665E3q9d//2weUulCNufhNx8QHXURfXcfoAB8k2fQ1OKuyhbiZUnPpOo6P3
         mXEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSFLU1gDASKe3Y5qPMxiJjf4eHR7XBc/6El6M5Y7ORA=;
        b=kqdRHe+bCJT63J1ZmDtLfh+en6sIbTZ+IvZCtr/23zlMo48wrHS2L8db4bJ+9IqtLP
         4uFdhbJpTQG/znTSxo9VMeHeM2nuj1LkkjRXfy92HcWRPkEvdHjINODrJnsZRgB2XNvq
         Fob08z6JyAjXwZM8HOXxQlMdSUvIe5UKGOWbcSuJHDQrNo77pwzVRTsELoGwmNdEdwkg
         8f+u0jNqzy+K/vru0p1NtZ7MpmhmE8lgBXrofawdbQMOYrlsWAGDxZBEC79ccKDwC4Jj
         UmI95D4lwYPxzi/Ei4fXbrZzeQXr36GffNmpK0R5yTHKjMs2vi0h6LAOzghnTfZSaCS1
         SjzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lSFLU1gDASKe3Y5qPMxiJjf4eHR7XBc/6El6M5Y7ORA=;
        b=ZbUeOpG0c+QRbkbbIfYDi44t/l2YPvQp0j25U2P/UhuHimPaa7pg6Q43MZ5b31BROl
         fhfFI138z2Dx5eiIDobet+6/8Ughd2RBf4vI7OqWasmvlEYhBBExdxgr6KX+03DswAbx
         g8qxskGid/BaNLLN4iR8A81TgW1u0+0D2v1++zcBi5jKwZw0G2gy+W90G3nQ2IqAkjUZ
         u8RBal7ZrganFG9AYYugU8IoCjHcDsp7OPmkJ+/JNEPYP2s4ZfaCX535WOIRJ5wM15il
         lgX/c3jG5ShC/CE3N7zOm2mnd9x4FFgTaIx1Y7n6v1Li7yMfg49/OLLajVHzi09gModZ
         M+pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eGBdqRbXm99elsNIELswe4ERP6R5zVIKsM6oYIv8/VfbF0uxX
	GHfDafC4iOIYs2lN0w4ejv0=
X-Google-Smtp-Source: ABdhPJwEsU3HbpOFmc51jDpeGL0jA8pMWyZxYlyw4B2aYXt7JjJSQQxGLQDsSQ0jhTQqs8OqsmPBfQ==
X-Received: by 2002:a17:902:aa84:b029:da:1c29:b965 with SMTP id d4-20020a170902aa84b02900da1c29b965mr1266472plr.36.1607034602273;
        Thu, 03 Dec 2020 14:30:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e93:: with SMTP id z141ls2885435pfc.7.gmail; Thu, 03
 Dec 2020 14:30:01 -0800 (PST)
X-Received: by 2002:a65:6154:: with SMTP id o20mr4792289pgv.419.1607034601717;
        Thu, 03 Dec 2020 14:30:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034601; cv=none;
        d=google.com; s=arc-20160816;
        b=sHLh7ztQ6p7B1vjZE7/LiY/a//9dky2Mc4Sbmsmr6/o951hQzgYz89mL62ullPfMNC
         RetxqZ0PboYo4UwuSKF21O4yinecV7Kdg3QyvI4NUMd6oJTFgNotWn/WCyewY/d2FgkE
         ccF9Haf80/vFw/6n+1AiPBUCvtbo2TCw8v2hnt5UbYHGPujpPken4XIua3p4NUZEGS1g
         5V7V4yDFqhtBGBsR3pwHBMH9mxAKuV+38sOh1dnME5JYKjKcl9b5bPbLTSfCPLtxeF1y
         ZgXmmdKbFMptRTrXW+KJdMIghgsuEcLSOkpZ7a3Pf5/AH6Imz2AS8NRaZQejuj8lMdrq
         E4wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=+Rjn4jXEjXuUE1fPtvBwfTHZcUH/SkAFYUYJZMZnNyY=;
        b=atAqt+vejyHrGyUNkoK7dSUQZF0jI6CCYx1ASxkybPiudqu+HAgkQhD95AYEPJ4PQ3
         afK1dz3vq7OQyfXd4a0yn5xl37W+3W/oK4tJ9Qm3Dfm4jlee7hfDLtNVRehQNrN3eXHE
         3polv3a9PjbM2Rqju3BKmUxPz5dCbWRYAUfLWQZmmGtFQUIYuA8oXvOrRYUs2YSdqATu
         NYYKx0oKT7Yy6WLVrpzVev5gY6NaoVYjHbH70ibIeB0i1PJrdw1o19M08vP2OBxRHgwK
         WVqmJvwGR/v0DB9iSZAYtMdklIY0+VudAhIyV2RIZon/QOtr5EXQIkau8D5YXwSgoxaK
         URZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t126si180439pgc.0.2020.12.03.14.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:30:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] media: i2c: fix an uninitialized error code
Date: Thu,  3 Dec 2020 23:29:43 +0100
Message-Id: <20201203222956.1091606-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

Clang points out that the error handling in ov02a10_s_stream() is
broken, and just returns a random error code:

drivers/media/i2c/ov02a10.c:537:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        if (ov02a10->streaming == on)
            ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/media/i2c/ov02a10.c:568:9: note: uninitialized use occurs here
        return ret;
               ^~~
drivers/media/i2c/ov02a10.c:537:2: note: remove the 'if' if its condition is always false
        if (ov02a10->streaming == on)
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/media/i2c/ov02a10.c:533:9: note: initialize the variable 'ret' to silence this warning
        int ret;

I assume that -EBUSY is the intended error code, so use that.

Fixes: 91807efbe8ec ("media: i2c: add OV02A10 image sensor driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/media/i2c/ov02a10.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
index 391718136ade..7ee9c904d9b5 100644
--- a/drivers/media/i2c/ov02a10.c
+++ b/drivers/media/i2c/ov02a10.c
@@ -534,8 +534,10 @@ static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
 
 	mutex_lock(&ov02a10->mutex);
 
-	if (ov02a10->streaming == on)
+	if (ov02a10->streaming == on) {
+		ret = -EBUSY;
 		goto unlock_and_return;
+	}
 
 	if (on) {
 		ret = pm_runtime_get_sync(&client->dev);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203222956.1091606-1-arnd%40kernel.org.

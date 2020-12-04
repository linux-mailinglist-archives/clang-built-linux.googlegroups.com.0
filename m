Return-Path: <clang-built-linux+bncBAABBXHCU77AKGQEFEMGFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E45B2CE968
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 09:20:46 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id k13sf3284146pfc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 00:20:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607070044; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWLDME5GhuSYME1VwgFaG0qlQXppuNqSHTtwzc7PRBwKvwDa7tJRmrcrofFVoeo82c
         XfDQGWV/XdoQR6sy2swlNXhCMGA8AoKIKLwBka43eoW7LcTehKeyZirkoUmBYGpclKie
         odR+RGwnJai9oXYbH53dGlDXbEvvnPavyaaFu6qgflv3GwhdvcU0emlROaKHEziKyMfA
         gkb0kk5A4dW1VbCHrZHQB8Y6DqeW8JQleOyffG+ooz0+itqzoWeXtNOuBoS5fHP2DCAT
         Awa7aSK6SlTRmMQ1uYgimWz+4dlIBGLve5jQDTCfufwDxMcmXJQSsc6r2mKvoQ8QUkwq
         X1SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=KOlNyWe9/N/If5Dv0hgeJdaXBrlGnyFvKSW2xWulNAQ=;
        b=BAsdHdfcTCTl7Ka6jVVbQYTNi3C//p+9DvPBQUxo7Ht44QmEGHs1eHg/OH0bulcGwl
         ZreBlGxqZDY6NNKXdF+lQWjrSvsl8XKlYIlD12qQQMrwnwV4DDgbdGhaAZLuLUEQEM2z
         wIcAp3d78dL6c9zimTCkqyoXjWeblSorKcFC2tY9J+IB5COZRo7rojNJMBGofDaL0BZO
         upoKWfFuA1Kx5H+Tf4dLstOUQXJWwVTQ7xe0CBesdw47kaLteXgQQpV4P+W6F82pkaYA
         0w0VnheS7pi2u2dIQiffCYxvDY02QlPWT9X/d8QDtrGmqnlBRF11MQnPdddXbhCGV1y8
         t/fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOlNyWe9/N/If5Dv0hgeJdaXBrlGnyFvKSW2xWulNAQ=;
        b=MEXywf0UB7CD9j0T/SLrzDaPEBjBF8HvwP/X8i5MnIB5zRZccm4gvpkYz8bNpFnVak
         cY7rdazCSBWVJGb+8hYPtBp68hrxgfo7Ik4zWdi2PzozI+ik2Ni/jLknFmXwyl4tyZ76
         0vHsW2HEJD7qrxNQ0XUaL7xw+RnT4EMhXDiq9JaoFG9BjB7nIU7sSbowLJH468MU+5SX
         lqy95jHeAN4GXhi5fBqnIaoRVMNzb6yuOQRffKDNXVPsygUPgz/3KUneb9GRcAchyS+T
         6jFlmgqoktpkc4wm4qNnAiO0v+J/gRrSba0aacFfvVHJe6bDbc1IDxGLJT8vRh792q2C
         p+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOlNyWe9/N/If5Dv0hgeJdaXBrlGnyFvKSW2xWulNAQ=;
        b=jewq+KxgNA5zysvPQr5jCvd1HeYD4/DcAq+JuVcihskSY6pyKyi6EM0LoI/jM+6SS1
         LUsDuJcsE/BstQt04c52uyf+2gJNOcSp7De860xW6A+dKcpSQj8Mhvh4K5OsG3/DQxaU
         PqlcDjQBpGf8qSPweiDcg/ZNLQ5WIyShF8PxsHAh/ppqH2Xn3j5GABcRUftrSTDy9wb9
         /rbGrk2PwY3F623XoG3qGLAHZQ7P60wztoa3EDIZUXl9Hy5vl6eZDE9yjgieiVsbbi38
         VPDcJM4j/zhPmBghTvqQPhnu3P+42awaQRKdCQUWFjNn1klNij9bTyca/jqr8x8CZ+5N
         p6Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ncghB5PYVuUB5Ot8xenPTa5WGLlI6/HBEqYZpckKq5Gpo+hxo
	rOnVgnQMJkkBi+cJFJH2iqM=
X-Google-Smtp-Source: ABdhPJzF2aqpud4KocZEHwfCVJPHy2CAaEmOupYnjOW/C9zglgFNIym1phPLgeAneGb3R1Cu0SwN9g==
X-Received: by 2002:a17:90b:3594:: with SMTP id mm20mr3112322pjb.121.1607070044456;
        Fri, 04 Dec 2020 00:20:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d18:: with SMTP id c24ls2899607pgl.2.gmail; Fri, 04 Dec
 2020 00:20:44 -0800 (PST)
X-Received: by 2002:a63:1d5d:: with SMTP id d29mr6683007pgm.328.1607070043895;
        Fri, 04 Dec 2020 00:20:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607070043; cv=none;
        d=google.com; s=arc-20160816;
        b=voibS3Fx6T+s6lNttSMi6lqY3o90VJYqPo7bcDAESNXFwZ6SBND9dkhEMw5TiqkqZl
         1Da4EM3eQCCBvHUccmLIPNZsnLdPbRAsw0PcxPQku7K1/ASMK3dtPrR6Nbqcnmsx8XNM
         VnaNwnIpSmFEsK6JzGgKP+f6dEuhiavYdIDK9CaTR5C+a8JqHgLVtSfGokq1U9t9hBbQ
         gA+4PwaIam2HW38BCYC/4y0ZrO7pvdknsP9O8PLHOmQ+gIRVDPwYhQOr9yLBP8QqQuGT
         OWcbTnHKCvxXz6JHHowOlU8zMYi4/5bbMtAOWFrnxF7+89+k4+mAXkb1p+Ka81z7/H3b
         84wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=sRZLa1I8vMYDqE+td8MFGaX68bMipHwVJQwxNgXKrk0=;
        b=sRbkvoZu53GCffkit2UTb23+9P4TjIXTAJUISqofhlJuf5pZ9HWTOaAR5X8OORku9d
         GD5vO2YIGdPyNIxNZC10g1aZ1ptyindVTvkHnbFyWjl9e7ExiBrq9Yq8fanupyaMdEJ5
         D0lUeWgdWKxiUIff3pXO046RWY/wUPyvm3VYawElbseKj9GeqZm0Ky69xmORDDftjeTV
         uKjQCknr9HH3uMWhUYNF7xQCSJKV0upkFVgmDvmXdrdzYi2oskXlieh8OsZJVpliu3OJ
         oxKjNXgM6DJEeobSp5nF0dgqNfHrHdxcaQPzqZQ/NgYKzyDXSLwLJAXqwU9RvVI2eJLd
         XqrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si303531plp.4.2020.12.04.00.20.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 00:20:43 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] media: i2c: fix an uninitialized error code
Date: Fri,  4 Dec 2020 09:20:14 +0100
Message-Id: <20201204082037.1658297-1-arnd@kernel.org>
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

If streaming is already on, leave it that way and return success.

Suggested-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
Fixes: 91807efbe8ec ("media: i2c: add OV02A10 image sensor driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
- return success instead of -EBUSY, according to feedback from Dongchun Zhu
- remove incorrect advice from warning message citation
---
 drivers/media/i2c/ov02a10.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
index 391718136ade..8683ffd3287a 100644
--- a/drivers/media/i2c/ov02a10.c
+++ b/drivers/media/i2c/ov02a10.c
@@ -534,8 +534,10 @@ static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
 
 	mutex_lock(&ov02a10->mutex);
 
-	if (ov02a10->streaming == on)
+	if (ov02a10->streaming == on) {
+		ret = 0;
 		goto unlock_and_return;
+	}
 
 	if (on) {
 		ret = pm_runtime_get_sync(&client->dev);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204082037.1658297-1-arnd%40kernel.org.

Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSHVTXXAKGQE6TE5RCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF51F631B
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:49:46 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id a14sf2948678vsq.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:49:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354185; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/pPYienpfq0Qe2OQKUq4PgVejHuYu6wu0gJtUjyTs3ZsBoMURp/ECv9bCdFQzQBIq
         6+IgaoIZGFRtGi378yx6dRF0hsN9ebAMtuL7U2LCM4GTtcrGe0FpXSKNseIb2Vyp+wku
         /VDhpsecFPynNuk2GCfgBLi5VvAZwg7j6UNjBlWkPRWLO+4umYAXmWdKKx6Z5SL7xt15
         HQQfry24Fo1V1uuMzTfUxgtVMOQyQEl2hudKZr9D/koOeUWrZAJC/jVLzFLaVMv7VjnV
         dAl33IC+Rag1u8KBD++pcyBqWjl/Ab1CyxxNtHd5R7v9qTcu6rpLN2fm7DFlmwGcuvhA
         ZgWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xlzd2IcNC5YYzBOBceUvGjutRnc7oUMx741QZ5M5uUQ=;
        b=JmlmiOagTmokQarEkpWWVM45n1sm7px9gT5hCIWVJMk+VuDXy/PDQaGFEnKv8Ueo0f
         43t9dYSyhfZN4tOE/szn/xb+PnQOjDiGj4IZ7ixvJaFPc2XdgDvfr11lGGwljoLDqKul
         rHJeBm66aSvg8HQ+vr7cPLO4W+Bhbk4XSZf1ELqsrnMjHmJWYXd7Oa2l5Wz+Fucw8FI6
         D56L4zYgA89yItzscWIR/uYmKJQ6F+/GLt9BkLiP7/ys9hesqVpKQlwmoYKX6Dqt4yTa
         GQYUD+oBZXu6ycTWdE/aU2jdG431Yuh3sV4r/xmAQjCRn8amkXjPT3Nqy79IntVEYKFi
         Br7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="C/2aiT0Y";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlzd2IcNC5YYzBOBceUvGjutRnc7oUMx741QZ5M5uUQ=;
        b=rGs5cA07RArd3mzp/IvF/bApBBlaqIZckY47z6BzZN+PGXbqCWENxt2AUfM8ZdCAOn
         vbUxxqQe3imcCuMq3b0b6zHuKllJypTnCqN7JAH3g/bLXUo1kmr6G8v5Mh0VIWEMVOhB
         gGykK1z5JTwUiXkpwysmtygVzVTtUo/z6cjO//sEAgVb8j8B6kn1xLUcQ08KW5sL/gUW
         pI9L9nXaJCf9pHIU/N9fx61P5vF8PvI6ioKmp767Mhot4xD37ehwwrM4oWWO6ffuNKFt
         01gUertg8DDI36tjNoC5FO0FZqh8a9PHPruT/MgrGx/4kjW+JT1R7c1MvkY5grZ2oV4N
         UEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlzd2IcNC5YYzBOBceUvGjutRnc7oUMx741QZ5M5uUQ=;
        b=ZtQ3mRFHbgefgy1qpGQqxoySsU8xpwqQPvmdykRsVG0YYs7L2ltDMuTWRc7NRduoiN
         mOpJDhf6piJO8yTqq5o6PklaWkroCmXJuSEcvnPG6q62nt1Aiiw1uum2FdwvKCTfwEiC
         1UhQC9NF5wyHAOlp7P6921MPbBHjCSy6/Fy5mt9BA6USgFZ4I46pL93jE+2+gooK0lFR
         4kUnCILohqB91aCFMQlTu8b2d6yM2KJbJBrKMTLA9HER/RS1JbqTTFCW0ioBsW+4ZGhx
         5BPgWmrwWp29vv14CYXdGJAsVFYqtmd2DSEyrFJVLLlPcZqyKHgi/UQXLoUU/jRx1DT9
         PFGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV93eLt70FfyvRggRzTmj3wTNBRA1IRP+mClicMVpAacD6UV9wg
	4z68KEK6u2hBpzAcJZZl21o=
X-Google-Smtp-Source: APXvYqw2CZZexln++AfTcxuUSyXQwehvy354WLFWQs0Q3TtizDJTYRMWaarB/YCVZr82sFeGhW9ZwQ==
X-Received: by 2002:a05:6102:1010:: with SMTP id q16mr14411990vsp.183.1573354185019;
        Sat, 09 Nov 2019 18:49:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:746:: with SMTP id 67ls1227406vsh.5.gmail; Sat, 09 Nov
 2019 18:49:44 -0800 (PST)
X-Received: by 2002:a67:747:: with SMTP id 68mr11590328vsh.123.1573354184696;
        Sat, 09 Nov 2019 18:49:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354184; cv=none;
        d=google.com; s=arc-20160816;
        b=TcP5u38Xxx5uzFANgQZfjTL8K/NGorlmWWxKVP8tIxRiKR5cSOrFYGHy+VCyy/80iZ
         0DDA7aBnDEyNUM4v0OMNyIhsZttTnmLUeX9pQEnxdtrJbx4NPWlk2VtE0X390NHjlTco
         57XaezUUth6dWuXjPWXDTdH4h4ZkcvAjFhxqV3UGLojsRtg2/enDmgqKS0N97TUxSwFR
         ZZFYKLKYb1UK810IAwFfput7U6fAZbevtrP+b/59hmGvq9hJGZgfnMhE6VSqoLu6wo85
         U6ILqA/XGplmLDfiLKLpCqRndUrqpUbK3r36NzmYjB+lzxS5AK2qdK1AeryOIUjOqADu
         KD1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hjAC6dUFW9zxMHAJzf0Z4hkqMOrAwVQrJBL9hXcIc48=;
        b=ge7uBB53tGYi+m4ap3wvoT+ZaEl5DIX+48OMhP6sK7EjVAPVhuCbyyRoVmlqTNxUZY
         n/Uu+Z2A3wNIgJMxf8yJb36aOR3z10C6RlSA35fzZMlShWkgnbEftDnqS5RT6agSZ+H0
         J38UBuIrDkj6+jGqffl1KWVskjXEiH9FD0l/ZZddU7bwoHirconINn0K7+OdKyTgRdjZ
         9MtgUXejhZUSq1naROeMrBr4Wy+P4LRBtS4UhviyZqFm1xGzVVG0eadPTleHH0PwSOLt
         rLFAh5lL5u/9tBdnSr6VFxpVsxmxLbuQSfRcLVWLOpiqNG9TvINaDCBkGhlm1nreWfd/
         UvvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="C/2aiT0Y";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 192si501251vkz.3.2019.11.09.18.49.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:49:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B564722573;
	Sun, 10 Nov 2019 02:49:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 32/66] media: davinci: Fix implicit enum conversion warning
Date: Sat,  9 Nov 2019 21:48:11 -0500
Message-Id: <20191110024846.32598-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024846.32598-1-sashal@kernel.org>
References: <20191110024846.32598-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="C/2aiT0Y";       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 4158757395b300b6eb308fc20b96d1d231484413 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/media/platform/davinci/vpbe_display.c:524:24: warning: implicit
conversion from enumeration type 'enum osd_v_exp_ratio' to different
enumeration type 'enum osd_h_exp_ratio' [-Wenum-conversion]
                        layer_info->h_exp = V_EXP_6_OVER_5;
                                          ~ ^~~~~~~~~~~~~~
1 warning generated.

This appears to be a copy and paste error judging from the couple of
lines directly above this statement and the way that height is handled
in the if block above this one.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/vpbe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index a9bc0175e4d3d..c839003953a74 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -518,7 +518,7 @@ vpbe_disp_calculate_scale_factor(struct vpbe_display *disp_dev,
 		else if (v_scale == 4)
 			layer_info->v_zoom = ZOOM_X4;
 		if (v_exp)
-			layer_info->h_exp = V_EXP_6_OVER_5;
+			layer_info->v_exp = V_EXP_6_OVER_5;
 	} else {
 		/* no scaling, only cropping. Set display area to crop area */
 		cfg->ysize = expected_ysize;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024846.32598-32-sashal%40kernel.org.

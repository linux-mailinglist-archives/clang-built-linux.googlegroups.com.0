Return-Path: <clang-built-linux+bncBCSOLHMX7UOBBHOVTXXQKGQESE5VVEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE8F112432
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 09:13:19 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id o71sf4090986pfg.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 00:13:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575447197; cv=pass;
        d=google.com; s=arc-20160816;
        b=rCRERp9fIoXzKLciEcOjfqZhE8v1DBfFO954JtyOW/cDvlBRWokFBYC/WX1s6GHHc2
         NRJp52ZaKJJi05crLcsujmYTzl7sXho5NOvh8TlrTmZqeKXSlywvly8MGTg1qhsqac3a
         XUGz9rmfX3eqOE++UisOLTR/lwdmGz1I6U9EmujsDwkHucyBeP9vf/MkCGkYna9vjS2f
         bivhEXiDq90BWPUZcgwn1qFqZTkjk4z7MnkpyO0gZ+q0B+6PJlB0Eun3qNW6syFCirIO
         e6IaqQWPUdFKT2l06MWtuEPiGbt1JH54DWS5tr5DfQ7Xo9uIYV1wFBKS3eHGJKEucvgl
         sFfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CldZB5jNoT8NGbyv9wEwsrHV2Htgiq8pps77R4q8xEc=;
        b=PZuQ8Ab3ZRqDs84lOQidOzfcuTdCBRKV6uz7g9ZUAgSPS10jveGnVJ5G5j4gboekWx
         Xg4+VyldjVALgqsvmkcYhAYykCFrgsRQbthpzKoXGzFFjJnGlWPkH23VX/m5snOGrj7B
         Ua90VQWgNMLNyqMI9RXlYLldhH8poMoS9ksUHR3Pw2IQBkvj0bKsXo2Ftj1eJZye2Emq
         aTrPbEKjn2kZxpnwOEj3ooSFl+zVjhAPlsM+ju2G3VwskimQD5K+xCtu6rqd8UzrN6OB
         IDzb2RsZE+gczOxlxTVHjWv0sSKX958Cbn/csER2Q3tX+oMw1UxBBwjEPXpAbMwrhjt8
         N7ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dW1k409H;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CldZB5jNoT8NGbyv9wEwsrHV2Htgiq8pps77R4q8xEc=;
        b=ivoHbKLoJBL+ynxdnawYA91yEqp3Z1L7/Rd953Z7jKgIAAtJr1AOY/zML9gzWep08r
         VMwUvpdUVf5xM41G3Dix71OLru9tKUkDAOCEb6qSWYoukko5jHUC2rS5qa2CY3W9H9or
         yMPRlmyijNwOE3bRCp3vLgBes7wCEfYqsMwmkMiqutYulwt4l4LXthLEOBHV0ZBSwU8Y
         gM7FVPbLQPdZXSbkCVZT+UVwswIqXELX7ZU79Bb2M3W8HMRyngUMYa9K+PpfvLUxh0V9
         n85EUsDfGUsqFbrLoTQP7qomMow7989zH/ANPdjZzuoNfiaOFYcQ/jwRzhxPxq0cSEPm
         HIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CldZB5jNoT8NGbyv9wEwsrHV2Htgiq8pps77R4q8xEc=;
        b=jvI8Dy/fdMJLRgsDf8RyST07QaTQdFYBrGDvnNC17d7hMUvkPBlp+UTcK+0RaScIYE
         byYniT+34duCuCFLSC0aN+YVgUehgmqb6RSsXyjgV3iMQJeGNPPRd1OLOmXh9iHtFX7h
         0IhxBWrNPZgfORHWdRsbry19FV97OyVdVLH2LwQyOhuljYxoN6wDBYUkEfsoJjJMC+bR
         8yBmDrY2Q89EGmsmr3NBoWBVcKpsiGAT2bhqWjG0Y7iwa0W1B430b09QI0bRY6xG6uI/
         ouxNf8InNfvq+wwhdDwDbXsuQsH7hrzhTv4G4b4FeaYEcrEn7GdDm/SZGxKEjDbOzGh0
         pDqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUndUeceURi62RpwOpKmsjleD44KZ7VKP8YuRVuMVvtBbeV7MNI
	/4reMIIicELJGIEDwax/Dfc=
X-Google-Smtp-Source: APXvYqwut39TCEpL3gfCQD80kCR3SZBSO5KyQUcOfj9RAsOxW9CsyNUZAt5mAT/PfPys+8TPRW56IA==
X-Received: by 2002:a65:4387:: with SMTP id m7mr2080979pgp.449.1575447197539;
        Wed, 04 Dec 2019 00:13:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d007:: with SMTP id z7ls1472689pgf.9.gmail; Wed, 04 Dec
 2019 00:13:17 -0800 (PST)
X-Received: by 2002:a65:430a:: with SMTP id j10mr2180991pgq.313.1575447196987;
        Wed, 04 Dec 2019 00:13:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575447196; cv=none;
        d=google.com; s=arc-20160816;
        b=gSJYe/jvZfHysJuEHUFNgmuzPUEsPsgCaVDvgA++qi7QhXDQRaUwtq2AfpHbm+NuUQ
         c6XUHbhwEmpIRpqp5V5YlzexhlyorGdMyL0cxfLmm1YKUjFZQGvfTfOnINS2jOtyI9TW
         n2tMZ5KS6ZLS1YvJVXKEbkBujTz0X5jXxUbS0wMZZcPuoTsAjRZK/Mg2ZrXOOr19W4+0
         v0sr4hFaMz0dakdq2VafxJhLc78hc5i4UENUoiMitZSPoA/OIRwd69wTzbXGd+CNRpqV
         50KfV15XnHrZhuDRY/VdY/vsRWS4I6wN3GUbjf9ZQzUqPXGlGMd/zy9u0VyzXZGmelYg
         db9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kLVVGHNKvob9eoQ/kiwi8Hd5PvOTq3zBu7HFDYNsI7o=;
        b=qEJccW9mybZabNuBRO+sEGHQoJxwrNX9VhVku2a4Y0z0Dzen5Efn1Z08Caq+7K1k+y
         v5gKQ85AO7UuroVVoc6cNxKIqszBsP2gKqfNe37NQJGD+P8XHaveHMENxbe/haROIaD4
         ikZEN23+Mc+ZxGF0YoB1UIzuqqvetgRKGDf3GyMTzKGrgrSrnc8nw0QpxungTzPb7qiv
         9B6Oa7a5TSE9GOFD+b0ByfS/5Grrje7loNFJ9L1bgyQUANsgzWnKqhau6YCtmSTRZu/O
         z7o+/fvaXGUviAeJPBxCIeCX58k3J35agLcZ8JOY4fI9Hht/y4+RrbDVOoeOUImSPllm
         EKYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dW1k409H;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id r142si329629pfr.2.2019.12.04.00.13.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 00:13:16 -0800 (PST)
Received-SPF: pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id w23so1591614pjd.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Dec 2019 00:13:16 -0800 (PST)
X-Received: by 2002:a17:902:b095:: with SMTP id p21mr2149106plr.313.1575447196552;
        Wed, 04 Dec 2019 00:13:16 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id a3sm5435699pjh.31.2019.12.04.00.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2019 00:13:15 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Cc: Pi-Hsun Shih <pihsun@chromium.org>,
	linux-wireless@vger.kernel.org,
	Johannes Berg <johannes@sipsolutions.net>,
	linux-kernel@vger.kernel.org (open list),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
Subject: [PATCH v2] wireless: Use offsetof instead of custom macro.
Date: Wed,  4 Dec 2019 16:13:07 +0800
Message-Id: <20191204081307.138765-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
MIME-Version: 1.0
X-Original-Sender: pihsun@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dW1k409H;       spf=pass
 (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=pihsun@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Use offsetof to calculate offset of a field to take advantage of
compiler built-in version when possible, and avoid UBSAN warning when
compiling with Clang:

==================================================================
UBSAN: Undefined behaviour in net/wireless/wext-core.c:525:14
member access within null pointer of type 'struct iw_point'
CPU: 3 PID: 165 Comm: kworker/u16:3 Tainted: G S      W         4.19.23 #43
Workqueue: cfg80211 __cfg80211_scan_done [cfg80211]
Call trace:
 dump_backtrace+0x0/0x194
 show_stack+0x20/0x2c
 __dump_stack+0x20/0x28
 dump_stack+0x70/0x94
 ubsan_epilogue+0x14/0x44
 ubsan_type_mismatch_common+0xf4/0xfc
 __ubsan_handle_type_mismatch_v1+0x34/0x54
 wireless_send_event+0x3cc/0x470
 ___cfg80211_scan_done+0x13c/0x220 [cfg80211]
 __cfg80211_scan_done+0x28/0x34 [cfg80211]
 process_one_work+0x170/0x35c
 worker_thread+0x254/0x380
 kthread+0x13c/0x158
 ret_from_fork+0x10/0x18
===================================================================

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---

Change since v1:
 * Add #include <stddef.h>

---
 include/uapi/linux/wireless.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
index 86eca3208b6b..a2c006a364e0 100644
--- a/include/uapi/linux/wireless.h
+++ b/include/uapi/linux/wireless.h
@@ -74,6 +74,8 @@
 #include <linux/socket.h>		/* for "struct sockaddr" et al	*/
 #include <linux/if.h>			/* for IFNAMSIZ and co... */
 
+#include <stddef.h>                     /* for offsetof */
+
 /***************************** VERSION *****************************/
 /*
  * This constant is used to know the availability of the wireless
@@ -1090,8 +1092,7 @@ struct iw_event {
 /* iw_point events are special. First, the payload (extra data) come at
  * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
  * we omit the pointer, so start at an offset. */
-#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
-			  (char *) NULL)
+#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
 #define IW_EV_POINT_LEN	(IW_EV_LCP_LEN + sizeof(struct iw_point) - \
 			 IW_EV_POINT_OFF)
 

base-commit: c5db92909beddadddb705b92d3388ea50b01e1a2
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191204081307.138765-1-pihsun%40chromium.org.

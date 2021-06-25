Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHVS3CDAMGQET4BIQ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id C98393B488A
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 19:57:51 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id f5-20020a4ab0050000b029023e3bd79e80sf6280911oon.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 10:57:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624643870; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHtWVBOQxCiyu2bEBHvgizP+X6iV3X5Z8FyjqKSJKJdZfusLzJKSIQOds1GcWfgEsX
         KFRiJmy/DEBBcENC7oakWCx6EafJUZPoDU3/v7dqWSIH1UVwKPLo0MhnVi7NK9UL/3Vv
         O97ZDBLgw3vSj9OYkRyIjktDmv0PGfji+YodYKdDarlfTeeND0fiA9JZ6/XC/LA38jqT
         WKFkAFE1Z82vhlwaEGmyzEsTdI534GvcsOf/9B9NF2ov01ccNdYWwjzwbJ42IwohbIBH
         GOVskCUzm/esob+gsn1o2oehaBILAmljXV+QGPKgC84Zzu1Ybi2VAq4ejc206v91vddI
         lGIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LFTLaSz2UUvgZr/vsODVkdoN0Uiq77fr5QQHjViN9Ic=;
        b=OiMly1W8Y2Zzj7BYHfr+UgtGNoGdeObdvm7pMk7QlhVG4oPnFgo/wv0xaOfKDhDOjY
         INlc1L1x2mNwQgCHYpQu+YW16vp9hfSeLH6SWjt+pxoIxW3m0HvYqG6OromGZb/dExLA
         whHiScJEmqNUCoCUUmTdorzgIWGuFrMDLln3D5eO8bKN4px+XeCNk4lcFYhp92/gwjgq
         1qlEJ4FPm59l8JaFVN0zLtTdwcXf6ndZyiKHJv/ONqdtFoc0PWRX71qs5LUGJlPUkrSD
         r3pK9aiCkXHM5V26/JlZWIliJuy5P2hFKUoXn5polstxObDkhPPtRJnYuL4t+kAIkgTQ
         39eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mhMtgKGf;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFTLaSz2UUvgZr/vsODVkdoN0Uiq77fr5QQHjViN9Ic=;
        b=S8s0A6dDsx5heau5YKnWqLtMz9rZ5ldorkarFWib/DJGj8BHUGtlNkUpcmRREGIL3x
         fammuXmW7VkXno5BQ1iMOiWZIxBWXSnEbwvgkLBiVzgryUHDsnRhdddgXnSoHC5SEoe8
         N+c9pJafh94HlbEXu7jgzyj3++lJDrz2qRiyr/kKYB3xL+7pNnvlYOTjIlu3t2H9IKZd
         8VA0ABJZVpbYDSIJIkPdJy7mQf3F6TK/hiK9XYTAQRmj3j5IiWaYRnIFJ6VSz7VdQ40E
         +2MBYpXNywecqhxlswRcMTnlThv4PHJjwPf6r3trndugKxS028WsK47tK4Ji00anKvDc
         K8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFTLaSz2UUvgZr/vsODVkdoN0Uiq77fr5QQHjViN9Ic=;
        b=c2+/aW0Lt0tr+DmSRAuq59KgMm8Zf5NmOYy8qiqyHDo5OhGdeEgUtBgDEHLTbKSmtY
         jPC80imTxP1LHaTbxpegf8zXewusUUZdWbBT7iip4kgYh+tXr1d624Wdx7NNZb947S2M
         KW7+CW5H7gc21v4re+lJRdIJnnaGlVbm57FbeiZO1/MDoPoXNQQfoV1vgUHg3BUJ6mDh
         OkXQJRVXri4xvhv/ru651h9Mt/Uzztt0gjmG8WOEtrFFlP7FLmrAHuMmH27QOvcWPonL
         pKbEyD4Pj8RUkfi2LNWlff47EgA9xRNfpf389gynkCBSRzvNa/tRJFKCg2/LQQG8WdrP
         KfAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EmIFX+3C8S+dVqjkp1+e70BJmpsNkyNPCBDpLOZSHT3iQADUZ
	G9Eg8hwFMlapPHSSgFymZZA=
X-Google-Smtp-Source: ABdhPJyvFIhDWWeY2u6afXWYKJ+/YwsMSGi4t24p+CR0Tqmi8EiMfL5Hdn908hYmsrSFUKgXlC88ZA==
X-Received: by 2002:a4a:384f:: with SMTP id o15mr10119968oof.5.1624643870587;
        Fri, 25 Jun 2021 10:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e2c:: with SMTP id t12ls807313otr.11.gmail; Fri,
 25 Jun 2021 10:57:50 -0700 (PDT)
X-Received: by 2002:a9d:6287:: with SMTP id x7mr10779563otk.339.1624643870086;
        Fri, 25 Jun 2021 10:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624643870; cv=none;
        d=google.com; s=arc-20160816;
        b=jX4blw7doCGoLPF3Yw3ipn1ka6XOG1dUxa8qr7glx9LXVyyryr3agj96B0tVW1i21z
         5QLXG1chqjtlPX/bAMCLygOkTjcKhLx/Kw5oSjTvoBX01hliGwWWwyf1D1nWG55BUpUD
         B5U2/49xy1kErvenT09+Jcv8tm6b2nHSmpaZ31uzJphnOJH/64o+HKbpsNlDUoUQJbY7
         trAYtrmODdYIDuWngfb5BURXuiMrzLHbKBISzC2peQuCRJeFCnjSdYZTY3xVQGU7pkyn
         gFhOH+xe/GXpXzOdD7cp47CKCgxcc8TubAjry4cwlyp12McIGfCeYD0C3FIRLhA+8xd/
         A/og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EvktYWrO3wTXDclwoOD0DhRjjZDSJUH7HKfIgszFsjs=;
        b=PuINfHpCXMesfZEXZ4Bnk7gOIDrcDTkn/PYSi2G7F2u/eBrCV7fiGQBNPtSnZXo5CQ
         7G3kUzZjVuB6Ok5gWiQdfMqfYd4oI3PbZtHYDzy8+0/Dug2ya93aWRu1if/iKfSeHaFa
         Tvw9EvuZV8jXdFRjZZbuqR5oc/9xRgBltW4Al3TtXdE1SxvBEpvmGh+K/3fuAbJaiGX4
         nU79lt3GPyNgNRZlakc5D8xfNMcYLkBx+qQ/8C42/0Muof5+Jg2PRhPs85RFF6u5TJfQ
         vb3adrROooMofZUGJIrAgob7SesxEOedZ2x1y7M4dplA+dGC8ZtnzS3SzUIwzYScH2q1
         /IQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mhMtgKGf;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i10si744873oie.3.2021.06.25.10.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 10:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C697461962;
	Fri, 25 Jun 2021 17:57:47 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
Date: Fri, 25 Jun 2021 10:54:19 -0700
Message-Id: <20210625175418.2019892-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <s5heecql74j.wl-tiwai@suse.de>
References: <s5heecql74j.wl-tiwai@suse.de>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mhMtgKGf;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result
unused [-Wunused-value]
                        for (i = 0; i < count; i++, (u16 *)buf++)
                                                    ^      ~~~~~
1 warning generated.

It appears the intention was to cast the void pointer to a u16 pointer
so that the data could be iterated through like an array of u16 values.
However, the cast happens after the increment because a cast is an
rvalue, whereas the post-increment operator only works on lvalues, so
the loop does not iterate as expected. This is not a bug in practice
because count is not greater than one at the moment but this could
change in the future so this should be fixed.

Replace the cast with a temporary variable of the proper type, which is
less error prone and fixes the iteration. Do the same thing for the
'u8 *' below this if block.

Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
Link: https://github.com/ClangBuiltLinux/linux/issues/1408
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Use temporary variables of proper type rather than casting, as
  requested by Takashi. I did not include Geoffrey's ack for this
  reason.

* Mention that there is not a bug at the moment per Geoffrey's comment.

 sound/usb/mixer_scarlett_gen2.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
index fcba682cd422..b13903bed330 100644
--- a/sound/usb/mixer_scarlett_gen2.c
+++ b/sound/usb/mixer_scarlett_gen2.c
@@ -1177,17 +1177,22 @@ static int scarlett2_usb_get_config(
 	const struct scarlett2_config *config_item =
 		&scarlett2_config_items[info->has_mixer][config_item_num];
 	int size, err, i;
+	u8 *buf_8;
 	u8 value;
 
 	/* For byte-sized parameters, retrieve directly into buf */
 	if (config_item->size >= 8) {
+		u16 *buf_16;
+
 		size = config_item->size / 8 * count;
 		err = scarlett2_usb_get(mixer, config_item->offset, buf, size);
 		if (err < 0)
 			return err;
-		if (size == 2)
-			for (i = 0; i < count; i++, (u16 *)buf++)
-				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
+		if (size == 2) {
+			buf_16 = buf;
+			for (i = 0; i < count; i++, buf_16++)
+				*buf_16 = le16_to_cpu(*(__le16 *)buf_16);
+		}
 		return 0;
 	}
 
@@ -1197,8 +1202,9 @@ static int scarlett2_usb_get_config(
 		return err;
 
 	/* then unpack from value into buf[] */
+	buf_8 = buf;
 	for (i = 0; i < 8 && i < count; i++, value >>= 1)
-		*(u8 *)buf++ = value & 1;
+		*buf_8++ = value & 1;
 
 	return 0;
 }

base-commit: 0cbbeaf370221fc469c95945dd3c1198865c5fe4
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625175418.2019892-1-nathan%40kernel.org.

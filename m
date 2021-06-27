Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGMS4CDAMGQEGJAPUZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B64A23B5223
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 07:14:02 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id g1-20020a17090a6401b029016fc0723657sf8374271pjj.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 22:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624770841; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2Sv40Zsvx64yMTyCw/T6uVmjpqA2eoM/keayeibgyTxMn1amWgqDRmJY563C4ut6z
         Hy509MbpPmHq2fiRN08XVLxu6KY0mPdfcuFgFAcdVvYBjYZ/GEwOLKqL3p8xlTU42Xa8
         wqz+a10bT9aZlXdqZzgcfXTvzZRzQmHILmtbiCjct4/ZxQxjy7/UHf8AiutwXlGf+NOk
         rvgkBvM4aPiN6tu6/YmqdVewooA0sBgbahToi8J7bOvvDVuGW/fDZlH6o0Ja/fr122o8
         bHF0fhMsPy/I1pJQVwAV5hBrAJMT/QDMJ4+d8aZE0055YrbChWDQ7dZluUjJcolVXfsT
         yT+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tIJZZccp8ITh2Nku3wzaTECtJiswpFNq0PKCFGAVk5w=;
        b=zpvcrcCN/qwHobo0Wh321mkjz8DcEsox2i5ZIZC+96jdiA5B7E8e1zuJeO1s70Q8cE
         GLKNgaIMlorx98iA8rv16qn5ZtK3R9x3dUM7GKQyA6zdFfLrJh80076LeruF6ywO9eV6
         iDrq/ErI01b00+ndM4RWEnt6gKrexYmiBPmz2jNX2NPC0gF7M3kQR1V+INKKdUY7vIA1
         bs3An/l/5qo9dpjO9yi8DZGHy8WXV9cDlE+Vpsr9H8hwDIVv7k/FzA0aXcYhigaiMB/x
         p239fF6WYa1g/z3SDBeCk9Kk/7roT35hl7g00UC6XkbFrvOQb/JXl8VUupaZihibQb1t
         WXMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tsvX004s;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIJZZccp8ITh2Nku3wzaTECtJiswpFNq0PKCFGAVk5w=;
        b=Kvp7X2wT8xFw+ASSOPfdCcPjfizdUZ15zM3++sqcSrJ+BZfwPeTEOBfUrJzvFaKM2D
         BTM0GKxLpwJ7iRhO+tda0JIAqKjgvdJWbvhiYgKvvHMM3MXQhNB8yWqow2P34aNdLd+w
         j7PLBeR57e/6qJwE8pQVjykgtKaSnBGct3Lcl35Z9/ubeKgVgSpivxMIWM+NOtl6+28f
         6fJRnK4+d19N0rOWe4zTYz3cdKHjK21hoANfVEhlyi6RTyTzmwOzFCnXJZkUGm+EbbPY
         XTQeJCalVo+nBmivRHxlwFpccnvtNR4GLZetRtDwwYLzeyY8YWVbV7x0Qzx4Pax3OquG
         ZJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIJZZccp8ITh2Nku3wzaTECtJiswpFNq0PKCFGAVk5w=;
        b=edl/CUL9/pF3BABzKCTTuvjHG+YF6m8O9XkV+MbV1d4Ismm7VBZ8Gb0GUYttpnZGX/
         fJeZGNZzN2fS1Ylb0VGd3/neu8/tigAUYRBXHJPR+Rf0Sjil+yTGVUOHhCyUU0F3m872
         b90bshL5yXl/bdFAYY4gbTjbIh5grgj0XTPFygrvYd6b/I4MJQ09bXbkuTg33j7WgriB
         XNXqPvaOmDLKpPaGeYU35+2JRmZTPMVjsO770ns0Pg5AucpmtLcueq8sDCDMjW5R1W7z
         hddusIGc33i8Xjk1zA8wPMBiQpk2VRUMnQwcyImzQyWPOx+UTgeVQDTCx2FLyFlO7pWe
         GtDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cVggsIlEv0wLDhU95vMYwHdGnDQC3bZh5ZAHaeMnJnuGB9Iga
	uq9cXyNJnqNT2kpGIa+Gryw=
X-Google-Smtp-Source: ABdhPJxITmahhDQXGuiPCGm1fU0XoHagNoZVEyyrUsFY7uO1aNu4e6KMkAsxGdlFtD5cB766NQHbtw==
X-Received: by 2002:a63:d709:: with SMTP id d9mr17599451pgg.337.1624770841209;
        Sat, 26 Jun 2021 22:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d14b:: with SMTP id t11ls8794215pjw.3.canary-gmail;
 Sat, 26 Jun 2021 22:14:00 -0700 (PDT)
X-Received: by 2002:a17:902:f243:b029:11e:3249:4a17 with SMTP id j3-20020a170902f243b029011e32494a17mr16432688plc.0.1624770840712;
        Sat, 26 Jun 2021 22:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624770840; cv=none;
        d=google.com; s=arc-20160816;
        b=fQqOrmsaTv1Aqll1sqbTe7CO0eecTgw0tknpPDgBWv+HYBxXn89So5kYV2PMB1yVrx
         39QDOWWHLfiFguF1OyAlQmR8UrPmV0+bKp15KZ8dn6fcV8a9i6gB5UcvddXwHS+CGL7y
         4DoLYUAEiwvBVMY064YMumvSz5aSQWzY6BjO9Z77Fpqs6e/NvAUW7LVRfyb0Opl8wwAQ
         1kgmflONfD5s+dLcByY5R6/zm5mUwYsVFjTtkkytCCuuSI1zWzk4DLEH6q77Cp4sQDa/
         yIydfp/Y4vnarBS9zH4N1Us1HlcOdOe+TScE2GCNHNee6cSWN4sSnfoQpcIZjMtL746V
         pLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fRwSjXo2XxgMdO2Uv6s5vm9vt8mlxNoYcBuWFj/sdEI=;
        b=o8wsN93L2QOcqLtvlDJgwlvsa6yXH2PCQToHl3mi5Fa/zzdp1d6Ws8+r/RNj/PuHHA
         907ZCyrelPFaQLtxTUQVjQPrniekEwuA4/ljoXvuA1M8ahoHmFibHVCnSN8wcMHdTZ+d
         fzg6MW/qKcjLqv+Xq3apWeOuoHnIxzoTBj7PK+onJxQmbwhaI9FXmt9Uy6+/XKi/v6Gh
         yQmOICc+EgXOSP8MEDBogt1rZKNmzj7i9sJU8O5yGh+BBkCWXxzpYKbQKLOsoKWqr+RJ
         QMOTGxG/oOOrJMcXla0xzxhqi6e8h7oZ/IxPLwr6JhqlVNtE07VZ+HcPZfz+zznF421J
         /tvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tsvX004s;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c12si748360plo.2.2021.06.26.22.14.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Jun 2021 22:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BFF0561C18;
	Sun, 27 Jun 2021 05:13:57 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v5] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
Date: Sat, 26 Jun 2021 22:12:03 -0700
Message-Id: <20210627051202.1888250-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <20210625202604.GB23780@m.b4.vu>
References: <20210625202604.GB23780@m.b4.vu>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tsvX004s;       spf=pass
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
Acked-by: Geoffrey D. Bennett <g@b4.vu>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Use temporary variables of proper type rather than casting, as
  requested by Takashi.

* Mention that there is not a bug at the moment per Geoffrey's comment.

v2 -> v3:

* Restrict scope of buf_16 more, as requested by Geoffrey.

* Add Geoffrey's ack.

v3 -> v4:

* Fix stray newline added below

  if (config_item->size >= 8) {

  leftover from buf_16's declaration.

v4 -> v5 (or how many times does it take Nathan to get a patch right):

* Re-add note about no bug that was dropped in v3 by accident, as
  noticed by Geoffrey. My apologies for the multiple revisions.

 sound/usb/mixer_scarlett_gen2.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
index fcba682cd422..161d832cafef 100644
--- a/sound/usb/mixer_scarlett_gen2.c
+++ b/sound/usb/mixer_scarlett_gen2.c
@@ -1177,6 +1177,7 @@ static int scarlett2_usb_get_config(
 	const struct scarlett2_config *config_item =
 		&scarlett2_config_items[info->has_mixer][config_item_num];
 	int size, err, i;
+	u8 *buf_8;
 	u8 value;
 
 	/* For byte-sized parameters, retrieve directly into buf */
@@ -1185,9 +1186,12 @@ static int scarlett2_usb_get_config(
 		err = scarlett2_usb_get(mixer, config_item->offset, buf, size);
 		if (err < 0)
 			return err;
-		if (size == 2)
-			for (i = 0; i < count; i++, (u16 *)buf++)
-				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
+		if (size == 2) {
+			u16 *buf_16 = buf;
+
+			for (i = 0; i < count; i++, buf_16++)
+				*buf_16 = le16_to_cpu(*(__le16 *)buf_16);
+		}
 		return 0;
 	}
 
@@ -1197,8 +1201,9 @@ static int scarlett2_usb_get_config(
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210627051202.1888250-1-nathan%40kernel.org.

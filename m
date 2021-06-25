Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX7O3CDAMGQEOPG2NHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E693B49A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 22:06:57 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id u8-20020a17090a8908b029016f79b38655sf6190785pjn.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 13:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624651615; cv=pass;
        d=google.com; s=arc-20160816;
        b=I325ToccgL30eW97TNgPWbEHenvvYYW5+I/NM3Th/wJ7zT6Ru0RKEiNocwyE2W/sJE
         PwIJcvypiBKEpR4yICvGqJT8nm+oWu+K11q1bbBfE96yTTI0ChAbO30n+HIX8vGi3Qbn
         zWRUkAvH8OU3EiVbEcC/Y4nxSl2GfiCMpKI+W3SC/Os2H9OfZLbaWH4Qoxqpg5JacPrV
         I4xtO+lMXK/wQ00X5jfdFqg3LSuNKzNIPxejdfzkIQRqoCSbtI3wSb6dCK9Q8Je6siGK
         5jCgrbZKvowgGGSCUO80vkNPW5kmFUW86J2LIA8+8rI3iFEA37h6tEiDWGg8u+gYMTKc
         HBwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CuhOYAAA2wI77zz8gVtFQ6BOsi2dUrd5XCKR/FkIHyM=;
        b=FmXnoLPIIAw/LRu4DZOj6Q6oo+pPwF6Ps1UgoLjyO5uAKwfWwA9++o/oDNP9mRPG8N
         T5dXdoyYCZLu6Ip0HApwLWc56c09c5CeEhZAOANptsOWWD63noP7locqvwU9uRIyezg8
         Dd9DrXUQE3wZ3S8qelUgLTvKRdpHEJ0Tx92p1WgsbJFgAHHsAk6jXzBHzUgbTS9xpCTK
         p+xz7Xr8oMyYm3V7aZZmOtEM/QP/QK2ZYeKfA0O2q7x39pNucEj1RXNGvE6ccjFwnaRf
         ruHjqbD8WC2IYRwgl8SYD4Rb4hdzn1TeVX9nW2QhkFnsrkXT6pCRiae6x34ujxIm3qTZ
         NBfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pZeB6iEQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CuhOYAAA2wI77zz8gVtFQ6BOsi2dUrd5XCKR/FkIHyM=;
        b=czR/8eniXX9PlVA+GRIjGbXkZAM86XCZQ7r+xse7NxZAIdwaGqkM9W9IQ8TqcMtwIz
         tKAPN2iq7jsD0nwV3mdeMbT4vrzY71V9nHdbh50Y3ohUiKj2MaFE26tuINuIBKqUsu0S
         bBJf0Hjkwk1c54LY8dKNSc61ZJ2iOL6La3wiq+c33rfU7Fa0UYqijkhFiaMVmDqxv/kz
         10D6Wt9S0Qt3eRRwC0CQJ9LxujWZnr5/YPSb9AFcHWNlizxVuJp/TP86XqzpO7deTwC1
         IeRHrcgq3GyDShFQpxz6kiDNs9z5XD2QsHm7JrEB31JoLiuSeW9ppyGtd2A5fv0+OMK3
         8i8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CuhOYAAA2wI77zz8gVtFQ6BOsi2dUrd5XCKR/FkIHyM=;
        b=q8hkejdDIpuyP6OGM7eLaggyFmkGw6hUca4l43jzipMxWrco85d2EYUF3syeBIjja3
         bs3GdLyYARXwXnvwwqV/FjmIId9cZzmVqF1BAmvNl+aBpfYEghVRBKEgDSpOwSd4zJ2Z
         piI4wIMgBGsNcPkIMkrCZMus+euBgexQ82PsYgVgUcgGhUsIRfBt+SgGId/4HHfA1G1Y
         7U7mkc+/RBbHfn9qhLSCzuM2Flu2oXs6kmkRdJBG8es9c5ZvIZotDqoo3ZeS8Daeelau
         2N0oMj4FD2//nZ+LRZBF/aQeVBAL5tu+Vb8HeLgB6x2lU5v4IQJr+LQJNLoyG0dR52Fr
         Adpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DUd2/Eq2y/42bLDT6w2c1wzhLHZ/jGIemPgYAX+F6E6cFDsDm
	23+beqfmZMbf7HJ+VTnLue8=
X-Google-Smtp-Source: ABdhPJyrz3IC90M6S1UV2OumwPy/XQ4Bs0zNuKqTG8K13aMFUASO8+H6+1AkNkiUgK3SA3Bxa5V4mw==
X-Received: by 2002:a63:4f11:: with SMTP id d17mr10978970pgb.20.1624651615688;
        Fri, 25 Jun 2021 13:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8609:: with SMTP id f9ls5359026plo.5.gmail; Fri, 25
 Jun 2021 13:06:55 -0700 (PDT)
X-Received: by 2002:a17:90a:c002:: with SMTP id p2mr22166062pjt.132.1624651615068;
        Fri, 25 Jun 2021 13:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624651615; cv=none;
        d=google.com; s=arc-20160816;
        b=GVNp7fd7fNTxQZHWSPFN9TCF5oU8iG1+KqaCqZp8cSdM7Z3PbLfOTIcSS1ivq1x0YN
         WYbjaa2ckr8sbTjCHKq5M8BQBzxoyFTcl+1CsRXaSqvMfeyxaZW9nGS3CeFh3GsC60Ku
         xT6x9/wSG1oEe886CGu6NOZkOlVpHIrboz7hYPgC2/2Ufm4e6LKbpQ1lpBpyAoGpGbiC
         /5lyl0dGd+uiPjaDKH4kXe1KPAzkM6EsqCDrIv8yGXaYfiCt+0LHBQyDwy0jaSQjv366
         E8G/YmGDCg3VyamXDmAeVj+PrfcWdfc6jme1d6hOYpqkAFqXqX7/0K7kKx/VfoYYo+R5
         PmoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0zbElxjTlXIK7KOCd2RtDfN5KVP+D/Fdp8HgQiR9fs4=;
        b=pckj8zBVC4AXXf2VcnSVgO5tkqRU5ee3/CB4xvudKAMAiAAPzhsFZ/nhPRNWSXw1e8
         Lrnzeonlh0PL6iihjOzdm8IrbrHAx09tuDE6cIMm6mKJ8cU2ouH63d5wIOiwRuTyKht4
         yOmN0aYbTWqIcwmRfkMmvYyfSuNtUoujLMXD5WFG8IQPAEPQ2W9NpkVIPyom5k5JAdXZ
         H2AOjKdxfgDqnJldrr+OnGamkvBWuCTmJnOxWsRaIV974jb1WAb9CJEnUHxW2eKlHs1G
         vKL6SQTdSOMJG9MdTEXEqNMYcWDDiVy3sDSyt9RYeaBRD4oHEcH3gSIdmtHGo3qzB7g1
         qGHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pZeB6iEQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nl18si542241pjb.0.2021.06.25.13.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 13:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3565C6195F;
	Fri, 25 Jun 2021 20:06:53 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v3] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
Date: Fri, 25 Jun 2021 13:05:50 -0700
Message-Id: <20210625200549.1061113-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <20210625184342.GA23780@m.b4.vu>
References: <20210625184342.GA23780@m.b4.vu>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pZeB6iEQ;       spf=pass
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
the loop does not iterate as expected.

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

 sound/usb/mixer_scarlett_gen2.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
index fcba682cd422..07ba0ef884a2 100644
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
+
 		size = config_item->size / 8 * count;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625200549.1061113-1-nathan%40kernel.org.

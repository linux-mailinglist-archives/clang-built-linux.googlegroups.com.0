Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVHR3CDAMGQERJSOIRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 785113B49AE
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 22:13:09 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id w2-20020a5d96020000b02904d5a6cb5d72sf7788835iol.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 13:13:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624651988; cv=pass;
        d=google.com; s=arc-20160816;
        b=U4B1zYRMjOaLWJuy3G72JmoiVljApKfLRWRGRHhmY3dQpjuhIXpEHDBc2sWFN5PCu5
         S3LLWxY+hHhMl7ge2JA1ObU9ZpmKpQqih9il+9lyfcyXq9k4bOX+3aeuugmboPFjALvc
         bZVDh4a2bFmL1Aqt2CP2kN9pVtEYsKhi7ZnIWZ2jSY5dcJwax/R7jJ0jnGYyHdQfMRFH
         t9Bf5gzZfsQKBQrczIye6c9B6TYxxeQ/r+5DPJAc5Bkc2xXRbeDvpwaqeDFoNcjdGLEA
         kJY0ddtu+tav0L2tO0orM4frroRGnH5hipaQ34LRwfZrb7brdo4KtXKDD7L45skJLytH
         0BAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ptEUlq4jpqE94Sh7PB4BWanKMLgbrM2pT81stWGNgj4=;
        b=g9Ru2BgnWT5yWeImoYU1U6RKNMslIRrR398Dk0q1hn/kfSDQygQimFIYTRrEW98hoZ
         f9RrT2EVlki2jOmkAu+Hhyw/NCjOP4wCLY3288AQKLo31ItiZ4urFAAY8SJqKm89sYhh
         ZGiipQMUyyHldUYUy2PHjVRZNw1kKqe2Q8+V2aNrPLHUpG3pYtItr8nfEZfX6elE1u39
         hgItPC2A2vZDBdua5Cv19uNv2LRPX8yksyr1RuqIa1wnQswE2qEBndjJYVGPiFZXKGH+
         nCSPpsCMsWUUiZhKs0k0rfahujtHjlGswXx8IeHqiTgC/N/62Qb9GhNtbrN8CLJcBZ/q
         v6Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=obrIPNX2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptEUlq4jpqE94Sh7PB4BWanKMLgbrM2pT81stWGNgj4=;
        b=YyJpaLS6yMBcgKoJJu5iNEswsHqKChPX2cNhVxpyKbBYYCc2eTP4BlWDfgaQgGOnM2
         HLLzExIVUJsWJOpp8dfG7hYUlQq6r95w6Mfo31hwKvIlxHfjL9vPyZ5h79b9ZTU2jXUO
         3PnDis5msp8euV3z3oSzGnb52SG/StKxrvD4dvU1vGmwdPB751I6i4o8EToe8EJva/cx
         7X6egdtbekm1Y2YrohTF0qS7ZTDW9Q/NRqicNBOb7xrccb+KJh7JtKqK/VBfC56/1hsa
         utWRDYqsQgKd/qw1BrtPVfLNQq7ZWzikK3JPQq+qaqLrDZXeA+9EeeFddqgDhtGcaJt1
         +nYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptEUlq4jpqE94Sh7PB4BWanKMLgbrM2pT81stWGNgj4=;
        b=APWwplmL9kf2BXN6DXtgHrdIIy/xYtjXg7Y/4dDtSTcwkKPEgYN370O9mLde6UO+8t
         ZOcNmXw4jd/Dp8mFmUeGQ28yKDuwFPZ5lW+pJ1slEPX97T5njnjWPQaYpKMgk9J7ikZG
         INIJypYmjF/erF6/lZpJEtfeNzrXjnZXz374eGZ47BEdrlAaKttV1Q+2JXGcBH5pkJxx
         jZm4GBnZ4uTPhJwWgco4diZZAOalCxzM5DI53gdAxrBH3rCczhQn3Q9zsTHn8ub/n6C5
         5CYsadWW4kBZ8sC5SfdJCXamOH55eilp4mV8WcBXy6QIzV7+qDHBnNTxVv67WxWGaUlm
         Kcrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332HKpvMSh4dfx4rTxBRnCL9rLH4xr/1f9D2oZjFKlEVpdsafhf
	sMmnT/fUsFaXHNceee1cWKc=
X-Google-Smtp-Source: ABdhPJwJabXTaw35g+csDmGruHeMFmz+kvr0hpoy8gie3OkmlpgDVMRtC0YyODG3Hb7zvgJBbN0Aeg==
X-Received: by 2002:a05:6e02:1489:: with SMTP id n9mr8718364ilk.102.1624651988438;
        Fri, 25 Jun 2021 13:13:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2722:: with SMTP id m34ls1659197jav.7.gmail; Fri,
 25 Jun 2021 13:13:08 -0700 (PDT)
X-Received: by 2002:a02:70c3:: with SMTP id f186mr10770866jac.92.1624651988084;
        Fri, 25 Jun 2021 13:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624651988; cv=none;
        d=google.com; s=arc-20160816;
        b=GB631AjsiAAANiw8kRgQqKY5shzOvru0hhaCxteUeWNtBJFWhopWzFancgkSOKFWuH
         Alnw5VaxGO9NwfF56Jk2tNBYeW8cFHD0PjV75d22Q/Q6H/Ntaa+qB7vdHBe5Xn7BrYfP
         zZPjqZ25FU9gKKe+2Xr9MNApSejDhnf7jzpypgs/B25r/H9dKtXUYOCC7+yA0udQw6o4
         WEK46/MbhaErzeLiVSOxezxdz66mxWh4qxKCmnMZ7YGf2bitu1gJDKuqjpXnNK8uaZRp
         /v42jhVajFmHX4OPFgppfgI6OIvV6FHrIubsO4N7yv0m1hubRjF4aG8XQMe/dL3D+Bx+
         WThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MFLloclV3xTXF7Y4FDuGm/9ur+HcnWjczGGcBZB+Lgo=;
        b=arJK91Tna2iTDh8TrkbMTrcc6MORsmYsD15mPDBnOjzBO413SZCynUzrPCZC+Iu+zI
         KE2dANGbJWrCi+S5AJPFkx4ZW23yvruw5h/N8ZSwugXULyrrgBHF5zrcXATM3b9RI51y
         c5p4UdaxRKJwzerj8IwicG8xC/YpeGTwOMNgJ6gcj5bqFfXTjmTvmbhHQUp05kSZeP+2
         kRXiHeI+G+0JX/ocWUHMb4/wcjIxfxOvzh0tM8YKrnAFxQI2c6hM2+jg/E2NXzZIwPB5
         xsC/klUnAxxFgdCs3B+Cdti70idZ//N1HxygyBvXzCxXhMcchVHLNh2YPE4WM4srrmr1
         5GPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=obrIPNX2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i12si188484iog.2.2021.06.25.13.13.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 13:13:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4FFE61879;
	Fri, 25 Jun 2021 20:13:05 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v4] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
Date: Fri, 25 Jun 2021 13:11:51 -0700
Message-Id: <20210625201150.1523987-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <20210625200549.1061113-1-nathan@kernel.org>
References: <20210625200549.1061113-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=obrIPNX2;       spf=pass
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

v3 -> v4:

* Fix stray newline added below

  if (config_item->size >= 8) {

  leftover from buf_16's declaration.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625201150.1523987-1-nathan%40kernel.org.

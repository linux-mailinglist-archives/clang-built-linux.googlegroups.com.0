Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5HO2ODAMGQECU6ABFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0932F3B388B
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 23:21:58 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id l2-20020ac84cc20000b029024ef0325fd0sf5953270qtv.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 14:21:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624569717; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rnc2QiciEBRFGPSoQWwJcYwKxFby23f9uw1CZ3+NcSw+rjgoU+nlhIXmnHoacVnF3E
         1zYmBhAe43kNczt1gK9OA21mUXnm4zhM7ikY6uNP8JVfdEj42t9gnQQBzRDmgZMeKBCK
         ohQOiVM+OeCAyAFGZhz3EQyZCzuG70FOwymt5/yYmWweWB1d/0lfIIk07dwYhgt5hlu4
         MNWYtUS8jqmx7cSP+mTW30iyuW5sJvX0qqpmdxzD/QNEvqX9BSLW+OlLKed6efSaXzDl
         +GwChuggggFAd8pmSjQ2Ag2Dd/K2FTgxZaR8NGbjnOmkqnZ3F1hP/cruC5FXqadD4MyI
         FiYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0LvWk0DBychcVKiD7y/W4PGVpq8z4AGwydLI2BYM0ZA=;
        b=YgKtqJA+t+lAdfKvP11o5vVxsxlEzxa1kimnZdUy8VaMn3b7cJnKdg27WaqGQQrJ9K
         s52rgpUnmSgti6AUZrTmR2j6O8Ipgmio30V9xjg738pgssO3c5CGD2OB8iLZKwnXGqFs
         cZHMQ6W36kiNqiBig1lT/2ZUqnUFr5+R/NscBoNJtcrda6MxPXkKNINnaAPaEeVZ/62k
         4SA56oACFeJl43MqO7xg+okSY19P4egj22gcUYxfKLC0bT4HuUsAK18zK4ClLR6ij/Qb
         lG0HtiySumKUdxJjkdBkJ5YIRXQJVzbXiL7bEZpPJmQTbvMJy9rrs65zhjGfoPKJFJnx
         lYIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLKW7DKE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0LvWk0DBychcVKiD7y/W4PGVpq8z4AGwydLI2BYM0ZA=;
        b=rBxJ9ixZpAHnvyvs3XjJrZX6iSQwyWD2YGlAlpGP5AlhChM4f2fBB2SaqXHZNt2+24
         3JgHjKPFuruJNPln3/C/GeYQmt+YZ8lsz9XVwV2aFWMxo/WAZYjt9Gnc/DYtmr82eF45
         ONJPJ78frmCXF44jQtY2KdzG9TwkJQFssdm+XqdDCf7MqT7VULw3t9X+2c2X+3CmzhfC
         qOIm2F2YpdH4+7ObC4dVy3H9VWDK98LgQQoMA4R//dPqxy7Ve2ESCs+R55c5WMW0tr3i
         y58lby+NvNTYFGoSdaejv/Y3XUZd1Nfm++M54dPaEuq2NegSn4hxwEYofz+5Qi1gQFLP
         r2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0LvWk0DBychcVKiD7y/W4PGVpq8z4AGwydLI2BYM0ZA=;
        b=PSz7Y5jfLqguO4lRNwVuNRL1craRPwku6Hw3ap2fo8w25Hk/UDlNgzbNk4QA8NTZp5
         HwMioumj74oSgo99GgUpq6oeQE6SNQYDj6iAPjeB9sWrKoBA7V3aqAxzNVL41VtSKo5T
         yq37FqD3yNS3Wy+lZFuC9UHpyjrGP+Huzs/rjA5TrT6d9EAbUNhOeYXpghLzkbVmy1Ii
         co7deEyBNhhJj9WnLAvEPm9kDfXwN3MBua8iPxl+s60sHb91bJLMurCqRb31+gWbApMN
         masVdua7HkvEKXnF3aAwoeHjBXXFzQ3sbFgDMqD1kym5RiL9iQ3HRgbi2XKS8RAEiBF6
         KJOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JtYZVVz55QCTPB3Zo3EsOxOSylMnvgmfw7TWtF3Wxm3m17bbe
	ZRsSxJF1kdmiz3LL0eaFL/E=
X-Google-Smtp-Source: ABdhPJz8cjc4w0k+WdSlSA7Svr3IrEME70w3Cmle3p7ia6c0fJAs10E37dAfjY4pr7ZecPoKLvgiIA==
X-Received: by 2002:ac8:7b4b:: with SMTP id m11mr6635172qtu.57.1624569716900;
        Thu, 24 Jun 2021 14:21:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7145:: with SMTP id h5ls3300697qtp.2.gmail; Thu, 24 Jun
 2021 14:21:56 -0700 (PDT)
X-Received: by 2002:aed:30e6:: with SMTP id 93mr6549312qtf.41.1624569716436;
        Thu, 24 Jun 2021 14:21:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624569716; cv=none;
        d=google.com; s=arc-20160816;
        b=sdKMHieIsKUH1C4tCAFOlkJPbik6jl+UeZQS2PbceMMyPRas8XbjsYVKbuVnpBwhVN
         hI9cptQpP98zYh4NUkSPN4/gYhTXDreBc5hZznRRt4kC2AyHwYcYgSXyJ/F562hBgGNe
         z977wbp90Z85AKIDUOsdlO9hCgsvUaheOkR8x/pdSn5j1Hal8huz1xNSaoTvCJFFZ64R
         Ht2xfd1seA9Qab/xymP9tLvZou1NM/c9mXt8OP+GYk6/xXWD/9FDNNoNfHC3UviLnRzE
         i08Meo8Kfm/dxkkkXqKmWdZf/ilpxhTqvpnH7GvvnYuUqse4bvfSQYqGwTRYO3s7pBIZ
         xQiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ci4PnGCxJGlbkiF75YQ2OspYZpnpl3ipp2RVAIX0P0E=;
        b=0mKgugz1ES3Rr3v1h7KncRk+ufegtzdURvr8fozteU7VoSc0oeXlr/NP9ow+laMWSM
         IveWyFgzSawVEWZoLzoqOCp2UrFrBdyVaWucS5sfO1tkmjYgjFm9tS0qOVW8QzEg18uq
         Z1Ebji/F1PArVQ5EdHkkecPdvtPeoVeYuy4o2f13RhYaYHdsMeyNARDQTeHLWQhM9RZ3
         ICke9XIWB3eSQw9LM4WCaCp8NqunuleOjXPtCxLsTE8oYJevbjah8clKk9KPbEGZBa7B
         7vzUfi2GAS9qDARW8zLOLybgM8+OYAElIuQjFjmjdafyfzR7DrVBUpQ8P4jv+anHFsYE
         ksiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLKW7DKE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h18si96585qtq.5.2021.06.24.14.21.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 14:21:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B9BE26124C;
	Thu, 24 Jun 2021 21:21:53 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
Date: Thu, 24 Jun 2021 14:20:48 -0700
Message-Id: <20210624212048.1356136-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iLKW7DKE;       spf=pass
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

Replace the post-increment shorthand with the full expression so the
cast can be added in the right place and the look works as expected.

Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
Link: https://github.com/ClangBuiltLinux/linux/issues/1408
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 sound/usb/mixer_scarlett_gen2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
index fcba682cd422..c20c7f1ddc50 100644
--- a/sound/usb/mixer_scarlett_gen2.c
+++ b/sound/usb/mixer_scarlett_gen2.c
@@ -1186,7 +1186,7 @@ static int scarlett2_usb_get_config(
 		if (err < 0)
 			return err;
 		if (size == 2)
-			for (i = 0; i < count; i++, (u16 *)buf++)
+			for (i = 0; i < count; i++, buf = (u16 *)buf + 1)
 				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
 		return 0;
 	}

base-commit: 5c89c2c7fbfa9124dd521c375b9c82b9ed75bc28
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210624212048.1356136-1-nathan%40kernel.org.

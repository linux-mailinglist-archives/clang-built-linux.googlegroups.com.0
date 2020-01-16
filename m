Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBN5VQLYQKGQENQCB5JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B70D13E5CF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:17:44 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id f25sf11927087otq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:17:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195063; cv=pass;
        d=google.com; s=arc-20160816;
        b=EClXcI8pwd6nj5Rsy2oEmth8mLI2Wk1ItREqRI6AzaAsUhb3Mze3Fw4ofat4wcaPmm
         BnSYDL2Eh2N2XPscY1gxCrUntTe1F2k8EaoP3Gqn79DTTHI75vVNXI+5n+Rs0u22TVoS
         ysk4cug1EZkEXk8heCiLwnbs+M9tYURHjZo62pQ1iszaFGUD19jY4YaJgkUpebJibWlD
         ZK6GZhQk/Lic7pf8vnqc04J+VJZ5wY6BjFr1NaVRqf4bDTyAsi6/hl8PC/ai2jWiqgr1
         +Cgn9i3KWBotMJa3Jd3tZR4pgPveRj5v2mn+qz5GeY2GA2yptOiKptbgX04yNf16u97j
         FmGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=71PaqBblS64uxH0t143AM5PRQGBlzi7WlZhTHcWqRcE=;
        b=poQ6uxSlJJBaGABS1MD0YqpnmboqAGuuXHW1OaLZG38YYPKV+W4wNxbrH7MQCLMpot
         399KszDfHBjFJfwhT56rxQkmEwfn96DgJyKHirLebyq13UsCxoafPHnfdFdM+H38MFw9
         bE3RheYdMYyqMCSaE2MMCvhLaXNAUMP3XfMovsd7z+MYu+7WG865PD6VnOomsKCuviaX
         QTviNdFZh4hmt80cktTr+/5QqLynikTTAZlsWrfUxdJiFA6Cu8pf14b/ZMeGl30T2EOL
         5L8Eis55ryc+PBy8sVVFKCrOi9AGLH3z7vMbWMtRQPzpmf5WFvQF+oLMWxCGsIucEIYb
         qe6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PoBpmXvv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71PaqBblS64uxH0t143AM5PRQGBlzi7WlZhTHcWqRcE=;
        b=nIiQLszGsrdN9xFceBT6Mckv1k2xfOyvTK40YyMleGBfTRfaw5Okvlmlc7WMa++a+E
         mz6sVkl1sn6aDzmWWG3EuziwiUIwVK/7s++0Uu4Lt4/ISJM0Cqxv8HGmGXbsJBe2lPCk
         UvBSpACiRrembS+O6r1LWym7Kc4NpISDolkIXn7rOkflBHDZPpTDMTDRnbCzh+p41ft0
         4eSfdMErQKYPehmZNaHA6bM6viMXiK8Z6Noj5QO4kA9FWjXSrVk+6fpi6d9HEfoC8X7y
         a4my/GjYH2W/qX/rOxbVFxjSRWOBcUG1RJElu73MiZWaohu7jXtZD9gmIMNwU+OCkM3A
         feZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71PaqBblS64uxH0t143AM5PRQGBlzi7WlZhTHcWqRcE=;
        b=jPr9NLU/ai29B3UlPVYlxcWycAhrNPL17FVFtn5Ey1rtVk44gWxnJH4ZFHVMjv/o3b
         MAzkZhwrU//cWzgHMyK7j+/sMnSfbGLCbeLoAyijkT3p6tgmb4cieEvME8+u4QeUM48K
         wg5Zp9X8LA4zH8nKYTtStw7+YxH10ut5N7ckHMVHKCfffZJfZoLb2FNSdRLLs415TJU2
         qKkYOFWfYrJjGezsAdH985V9fyvXmT6zOqrqmU6xyoToI9G5hgWMfeh1IEWFTo9hMz4m
         9DAP5FuaYJTqcaO3S6Kh3KuG+Ts/SuqtS5MHahcmT8FyBCwZ8aH5xveEfxD+cNoqWRCr
         sgUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEH0F3Mrl68zFUZBHsDJOpNGDspwruIEXN4QB/0zbwV/6yIvEz
	nAUs9gLPhVr6TNkdcWgmmCY=
X-Google-Smtp-Source: APXvYqwZspaH5yB1R/D7QfvyP7fr2d0EzIh+DJ43h0Pka+YtgKXW2E92+8hu+ngpXbQiObAF4dpeRw==
X-Received: by 2002:aca:c68f:: with SMTP id w137mr41806oif.179.1579195063367;
        Thu, 16 Jan 2020 09:17:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:714f:: with SMTP id y15ls4116774otj.14.gmail; Thu, 16
 Jan 2020 09:17:43 -0800 (PST)
X-Received: by 2002:a9d:ed5:: with SMTP id 79mr2901226otj.72.1579195062968;
        Thu, 16 Jan 2020 09:17:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195062; cv=none;
        d=google.com; s=arc-20160816;
        b=lfUm5ZhMfcLbUi/O2l2nJWKqGNXF54LmwBdGic503R1HcJ7SWSOfkDmkazYQFSOJd4
         Oh2OdeOvoJd9gkuH6lfe+/G4tJpZGSP6Gjib2mP3JZ8RmQ4z5JAeTxHqc2vDrsutKfJg
         8saC7Y8qQzdvIRq5SS+7mA9fbQsr6cXIgswnNE+rvHiei1mDMWlBhR6fsZ/nniAQSXHb
         gAW84/TOV+YZAYeGA5ds0H3twaNML0RRA6s0PCWfPaZWZvTsplbrIbUaAm+g+pm52mmp
         BQYpeXMu2I/MKJVBUswy8ivTddV5XhHhqnw18NpzmfsLxbwQOczkPAckqubXC0bUD+jo
         p/Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bfhVc4i97TSTEG/4y8yiHUjKG8jv/jDViMmXEhQ6EX4=;
        b=CJOkX3fr/buvAaeItr5nDUs6H0WTeyi+KeJFYlGjd9Ti6MpeCTkTNvmz8ZpIYIpYSw
         ZMHHDQMDB639YvPh6q5VwwHlVS5fMFL+OW+ARcrFVaISjfMHrlLBi8FFeeXtHzzODDIr
         NDifhfsV2LVFJNPNvljprP9f/LJq9Bwee4jwfBk6TDtcGT64zpI1d++iv3kbctzSJJme
         MYQz+z5XHALaR1ts8jsTCINdfoQ6LDUSv8cQ5FMbCor8A73g4CO7wqH5FPurblDUznIs
         KjWkKUfQQ6Tds/CA5sXRqt54YkB/DwioPt2/VSkPxvKJkF+REh1N3MG5yEgOw4eMpciI
         3Inw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PoBpmXvv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q188si722639oic.5.2020.01.16.09.17.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:17:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6678C246AA;
	Thu, 16 Jan 2020 17:17:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 017/371] pcrypt: use format specifier in kobject_add
Date: Thu, 16 Jan 2020 12:11:25 -0500
Message-Id: <20200116171719.16965-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PoBpmXvv;       spf=pass
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

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit b1e3874c75ab15288f573b3532e507c37e8e7656 ]

Passing string 'name' as the format specifier is potentially hazardous
because name could (although very unlikely to) have a format specifier
embedded in it causing issues when parsing the non-existent arguments
to these.  Follow best practice by using the "%s" format string for
the string 'name'.

Cleans up clang warning:
crypto/pcrypt.c:397:40: warning: format string is not a string literal
(potentially insecure) [-Wformat-security]

Fixes: a3fb1e330dd2 ("pcrypt: Added sysfs interface to pcrypt")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/pcrypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/pcrypt.c b/crypto/pcrypt.c
index f8ec3d4ba4a8..a5718c0a3dc4 100644
--- a/crypto/pcrypt.c
+++ b/crypto/pcrypt.c
@@ -394,7 +394,7 @@ static int pcrypt_sysfs_add(struct padata_instance *pinst, const char *name)
 	int ret;
 
 	pinst->kobj.kset = pcrypt_kset;
-	ret = kobject_add(&pinst->kobj, NULL, name);
+	ret = kobject_add(&pinst->kobj, NULL, "%s", name);
 	if (!ret)
 		kobject_uevent(&pinst->kobj, KOBJ_ADD);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116171719.16965-17-sashal%40kernel.org.

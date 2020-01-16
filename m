Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQFOQLYQKGQEE5V7YFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE51913E391
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:02:57 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id i8sf12589165pgs.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:02:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194176; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z8fwSEgyAIA5cgX6/7ecLlMnJLL7buxDQ1cfjH4xILoVoPm3LIrl7+VDa0l6dlj/BK
         mTRfFHcNQDEsFynxsVLKwrtFFytQgVKB5ahWTMy5rSpHzZB3c2IXPJpNvLp81WFIfZjT
         hns8GWgV81sn+94nzaQUqbsmbioswhfg4wuy94pLxHFGeTcojYVU7qfw+h2S+gOHkAxQ
         eDodswdmunB0AHipfMZcepKSboNqEulAikMQRuz3FDFmQKb2EDgAeBM/fx+SxinvK892
         iDGCYwUu+wS+PYWZ+wSTlyDwJfYwpS2G4ChzbDxjtb6Z3OEFjRi+wmMYpnDvZyO9/co2
         DDUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RkoVk6j0IfcF7HXYuucHL3eqmGlG2CBKXCBtbHQJ9dk=;
        b=G0PNQiirzwCeID8ucSypul9hl1aOhLA5qpdBBTSaH1LiINEBg0A0PZvj6lLfPiYp6H
         Gbt+VH6TuO2BsNmTpYN5t/2a0WotX88mmX2NaleT6cgZzjEdqG0Gy6VIzTSZXg+xXwnd
         vQTLym8IJi/26ldo6kvdY++3AK7VINsCG+ZrV7I1ew+CDLGn7pzstP/o6HqC89lE8Em9
         UGh+wWSIIL5/6cEJv+y9YXPMIwBie893Ql1clk1RV+nvjQ2sYORBNHf+8F1txdZ9ITBk
         VuUMWA3y/HL8yYeVm6Op4qklO3wZzortVa51fsNxqZdQp8ue83onU5JJaWCsYTOJGF3D
         B22w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qKz9uwGZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RkoVk6j0IfcF7HXYuucHL3eqmGlG2CBKXCBtbHQJ9dk=;
        b=igAhxCB6KtYvatTQyTq4cbTgUoefTq4dJet/tHedkAJKHvdCGOR+nbIZ2TVQ8grE6d
         p5SifafxtsnL1lLr1+u6DQNxPDes7Og6wiOCsLJuIIW8TPUJ2elJGv+6aGmOWu5obZli
         eWuugTaJisTw+E3LkZ5Zd9pcH60JBul7CjUE1kVfiqPxMxtU4Pnp1OY3dQVlihXlW/Qx
         06qYiBFEUZL8BEImWuBsPTggcI1bv0+17LpLxevPnUt/kRupYx8auvyoDDMf1n4bJ5Ip
         E1qdR+u2ilPS9v8kOndaYY6AqXQOf27vakNMfUSpHR9S1LmwOVAkFMxZHnhOs5Zr4xcZ
         +Jag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RkoVk6j0IfcF7HXYuucHL3eqmGlG2CBKXCBtbHQJ9dk=;
        b=CLuQB+j6Xn8AvODT9ddaCE3taIehB6uMH/RRBVbiRhw6GvEr+L/WHdCrxWnVpQq08q
         DNd1GZeBmMhI6vabCT5T+a6o78tpSqH/4lq430XPqmYQHL1JPil2bYLW3HiyMnkGZgYs
         4/mOvI8E4095FqdLDQO4byH0um/ogx1ZZK+RZ5oIaqbnkW+aIvhURE5j/fgXbA9myN+j
         vTbOc+MRTvXk9zmd5RzHQHVGCaF36rS+q8+yfKUidvtC0458/Wo1T7MtTPnPI6A0da0u
         7ZZah4XANfbqKF1hJOE/DL1ZD9IOAX2ou0hj87dtWGCvJeJa7dYpBeH22S3+4UKaj2sO
         pgxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUymCtt6hVyZdDQMH7gPijv11bzSOnQvrXJq5D3KWhw0eoyPkK+
	ftTM4JRhnMAa5hgmaib6tEY=
X-Google-Smtp-Source: APXvYqw5wk21TmIf2BJ09ngKjh2QflYHxK6Cu9+wXbV2E+CDABtgX6TCNUM2aQzBIyv1lIUPS9kOyw==
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr32624221plt.223.1579194176552;
        Thu, 16 Jan 2020 09:02:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6791:: with SMTP id e17ls6110915pgr.14.gmail; Thu, 16
 Jan 2020 09:02:56 -0800 (PST)
X-Received: by 2002:a62:e512:: with SMTP id n18mr38026149pff.50.1579194176107;
        Thu, 16 Jan 2020 09:02:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194176; cv=none;
        d=google.com; s=arc-20160816;
        b=gmXyRgXS0wlkKjsRL6sHRK+u8fsFz3g61dmM784nhHveWYmCw3dvCmbdnSRHdURSiY
         DHhXFF7wb+iTrXrJ8kC+XJuHqcCaGa6p53j+pLPaI0GKHjjxf4kS4XJBHpP6LkIelb7y
         kxQkXTF9O/ZKj+Z7BZT73jkTfI+LiloIo/eMDhHD3NB7udBNRVIlDoM9QM4AIlUf4/XZ
         p/24TBhkiyOmLNDcsFJ0tjCyATyksu2Lkyo/2lW643eTtapEulYKSnvQRRXTV5QkA6OS
         mPKJaCKT9kJOkgsnZ5Gu0UbJzVM0qwH8hKnYt/XzoGbEDEMydD/H8pSiLQF0HxAC4Imv
         S4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ihhe5fOvH5BgywT0MyZr7/RQRAuk6kWjo5fGm3tuNt0=;
        b=nUfuvx+vHjJcKY/5N8sm9iUA1t8YrcXmRtu+DerUj7/uh5wfttyo2g7PjvTWfoIHle
         1yrtUITutdqOJZJcLs6PF4PHntcY/+XifhKZDKMaGETiQwmEYYPfNM30TDJ1oxVi6ane
         uKr2P1zw9kITQIkg0wntH1neRLklciCYH18Da/tu8PODpkl2s+kJ6+9u1K/lecYoiUak
         ZT93NxpCSCetUzXqnGvbn/FboiTPg9C3Ur0+ewpFMwh2fWi5RqxVRdo0Ove0ZiMp90AE
         Z4QS3uCyBumB0jJuKjNToaRsd2B2jKDgn9iTuG0ypdtqL+odi53sjjNAoVHKMB2ZneZV
         KGVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qKz9uwGZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si1126102pga.4.2020.01.16.09.02.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:02:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 66F9C24653;
	Thu, 16 Jan 2020 17:02:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Gilad Ben-Yossef <gilad@benyossef.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 253/671] crypto: ccree - reduce kernel stack usage with clang
Date: Thu, 16 Jan 2020 11:52:42 -0500
Message-Id: <20200116165940.10720-136-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qKz9uwGZ;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5db46ac29a6797541943d3c4081821747e342732 ]

Building with clang for a 32-bit architecture runs over the stack
frame limit in the setkey function:

drivers/crypto/ccree/cc_cipher.c:318:12: error: stack frame size of 1152 bytes in function 'cc_cipher_setkey' [-Werror,-Wframe-larger-than=]

The problem is that there are two large variables: the temporary
'tmp' array and the SHASH_DESC_ON_STACK() declaration. Moving
the first into the block in which it is used reduces the
total frame size to 768 bytes, which seems more reasonable
and is under the warning limit.

Fixes: 63ee04c8b491 ("crypto: ccree - add skcipher support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-By: Gilad Ben-Yossef <gilad@benyossef.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/ccree/cc_cipher.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/ccree/cc_cipher.c b/drivers/crypto/ccree/cc_cipher.c
index 54a39164aab8..28a5b8b38fa2 100644
--- a/drivers/crypto/ccree/cc_cipher.c
+++ b/drivers/crypto/ccree/cc_cipher.c
@@ -306,7 +306,6 @@ static int cc_cipher_setkey(struct crypto_skcipher *sktfm, const u8 *key,
 	struct crypto_tfm *tfm = crypto_skcipher_tfm(sktfm);
 	struct cc_cipher_ctx *ctx_p = crypto_tfm_ctx(tfm);
 	struct device *dev = drvdata_to_dev(ctx_p->drvdata);
-	u32 tmp[DES3_EDE_EXPKEY_WORDS];
 	struct cc_crypto_alg *cc_alg =
 			container_of(tfm->__crt_alg, struct cc_crypto_alg,
 				     skcipher_alg.base);
@@ -332,6 +331,7 @@ static int cc_cipher_setkey(struct crypto_skcipher *sktfm, const u8 *key,
 	 * HW does the expansion on its own.
 	 */
 	if (ctx_p->flow_mode == S_DIN_to_DES) {
+		u32 tmp[DES3_EDE_EXPKEY_WORDS];
 		if (keylen == DES3_EDE_KEY_SIZE &&
 		    __des3_ede_setkey(tmp, &tfm->crt_flags, key,
 				      DES3_EDE_KEY_SIZE)) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116165940.10720-136-sashal%40kernel.org.

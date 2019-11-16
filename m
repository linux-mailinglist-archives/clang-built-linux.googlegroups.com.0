Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUNRYDXAKGQEGUXAYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B521FED19
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:11 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id t185sf6659877oif.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918930; cv=pass;
        d=google.com; s=arc-20160816;
        b=YG6c3wEPUWma/1B6Jx4Yc0XMhqYcWgVJSr8BnTn1ltsp3MQ4EJVZU/jTkWe6i3wEBF
         OtoYxut6xswAFZVnVTMbgve+ylRW0ngq1EqvgFDhHwjIzgcv3tveWxqwPGq1P8IceFRk
         /gG1UGPojTWokgroyRFKtzkqipyX4VOZ9q0EL029E5i+6e9ML4kF9DUZPUBsZAQtcRhm
         tvyZDhw15Ai89dkOwX8/iV1BhpbiVko6BQWmvh6vELHxFsaIkzhoLs9j9+ghSPUMAoKG
         yC88x9bouhZeW2h3wCAHWaPr3TssIb+oq0o4p1sbfVuKDKVzKUCZ9Jn3kazAXEMVq3+E
         Sh/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GZ8EWDo9MFlUUqeZr5O+IzFOJlOr9JMzQN5mZ/zImLA=;
        b=xKd0YFqaXHTq/RllZ29EXLfbL7aRBCxmZaFczvOWRP6noI9gk1PtNuECCF7Doev3qB
         cgW/WXmh7HxXd2b660Y1JAe165pVB1PCP3Sd5lTbHflklHFQsBQdcSS6sz7XgN6tWMfN
         5DBtDfH6t5zJITWTmYj96boVMnBZuCTxb00cHvr4Q7FSofb3pKOmo7ppARXJgyOhSvG/
         NP/fA20SDS96Ei560fXqerEBPZpPx5iQsqvCWMIcGmkYZlU4rJu9BKkS6I/CxkAbDw7a
         lub9uc+B004id4opceniai6uySXnRFtNaOvU6c40OAfkYlJCGYTytE6zBV+3/EcBz7Rz
         5y6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qt/cUn+C";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZ8EWDo9MFlUUqeZr5O+IzFOJlOr9JMzQN5mZ/zImLA=;
        b=rDzT4+xYGql03QORs9vfUuQiNj4A1CEXC6HvlmMoD8XqbzmudYapzJT/SNHEyvSHd9
         2GYpb4kQA8abFl0Tks0eR9EW5OX/241RUyHbsBAXeI7UQAJhR43K+PD1AZ6jur8ZiYLz
         Xd7Az2tuF20cy0yGqEwOm+AVyL3bhER1tTplNDWxkBnGGhV8N9qW64AE5lfocaYxbG2w
         TwVNL2wEsfG+3K5sM+E5qMy95jZPaQynM0kjKA2c0bPZSmY4RL1l8Q7gP0eYMR0/FAem
         s1Lgkgm/0KgoM8n3dUpfYCS3nrJ2WyT0x/+modxNClG0LTj3VrMNVds+ioBoQsFgA5/v
         IIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZ8EWDo9MFlUUqeZr5O+IzFOJlOr9JMzQN5mZ/zImLA=;
        b=qF7zQfD8zL4Nd7mMn528wXXb8araIsZEvxZ+rXnuWyzUefIJhpqKUFCXlftfVREzWy
         k5GlEGFyr7y5c9OuQdkXgxtVOXuq2OoCQsWZuRbpFD5wITAempbRKQ/cth9XOBAtBqP3
         MmOAsf3A7Lo1Afpg6Zth0Wkoz6lFTeaAFoq+0/ug4sDMaWLqTKJ/2UCknm9UJRUd4yAT
         xCZq48IUBp9h4uToCuSu2DEjQ4j9CeNVC871U60QI4v16mzXTJTe5Amu1P28lcbqGfK0
         7XldkDCGvvMZ6e2tnRHgBRDv54UMV7rsPtU6sUsgDQ8JUQQowea+Cmw+O8Yqgk5CVEyx
         bbhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7SWWaCqxW7h9XY7XZwLD0ML9rfefKBNxsE0y7u1fM5Rwx7TJZ
	HQ8hzQFotEGtk3cZVN3KeOQ=
X-Google-Smtp-Source: APXvYqxFAtMuUtVNxraJdx6u3eka4xifYtzck0XT3cHD9C+NanruzUesWXwy+VhpDPmKfUa2e1tLRw==
X-Received: by 2002:a05:6808:a0c:: with SMTP id n12mr13034382oij.16.1573918929875;
        Sat, 16 Nov 2019 07:42:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls3668444oig.2.gmail; Sat, 16 Nov
 2019 07:42:09 -0800 (PST)
X-Received: by 2002:a05:6808:4c3:: with SMTP id a3mr13242253oie.40.1573918929498;
        Sat, 16 Nov 2019 07:42:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918929; cv=none;
        d=google.com; s=arc-20160816;
        b=UmCXGv+1FF9ofpQOAfi4+QFbo/lMgIZ3kg7CVFilob0Z8hr4qAwXcunotatsSbScUX
         dWzM72bZjWZMkOp3fOb0qrn7Nq1sgDR4VT1p/wz38f7BT4+I35jnOpQ5DXlcYdNF4E3H
         5Bcgd8CQINQtW9aLIahS8HsWEPnAR0Gu1nFl1c1xvJM0h+kXu2IRfQ1Ic70ofmFww6+l
         vboh0vf7DTXQRmZR35Gv1YHbddEDT3jFZJq4wQFT7pe6UBnxHTmPnI2NFiy9noUaU5hR
         7TfO3Ld2+3sHeDLLm7c7zqy52jOpZSt4qvp061ETkoNyHm66KDFm74oTS5UPPdNnw+3R
         SNWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IbSHHNJ1BJfnBSRPxWTZVjVs2LppG/RFWPjvkslQXWg=;
        b=WtlRBYpaLtjXUOEwN9Ky9j/XMF+AjiV4Cawe7V64kY5kHpzmUBnF8HPm/JsMx+p9tb
         GN5V5mFuXtGYAdKZ4iWLx6lJUiQi7fquosKApksS9BqGDELnOJsLRGFVdzJ54rJWMsu5
         APf3yckb2fhrFeEYnmUmiOlAZ8aiPd1oDNEJVBqf5/XVj41m/jP+ban3CMgESpQMJ3/+
         K61i9hjgD2cFc3tFcFqBa2Y4CcerWzmJTT9uXMCEd6mRd5DXpl8pvVZriEBMT84q05Zu
         MPU/n5j0/1R/qK8Nd8W/n78w92vwZqM/cRknouk2L2TXBL6ZudWWvMJSQ2jBL/2rF78y
         Z68w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qt/cUn+C";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si871184ota.3.2019.11.16.07.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13F362075B;
	Sat, 16 Nov 2019 15:42:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Gilad Ben-Yossef <gilad@benyossef.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 055/237] crypto: ccree - avoid implicit enum conversion
Date: Sat, 16 Nov 2019 10:38:10 -0500
Message-Id: <20191116154113.7417-55-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="qt/cUn+C";       spf=pass
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

[ Upstream commit 18e732b8035d175181aae2ded127994cb01694f7 ]

Clang warns when one enumerated type is implicitly converted to another
and this happens in several locations in this driver, ultimately related
to the set_cipher_{mode,config0} functions. set_cipher_mode expects a mode
of type drv_cipher_mode and set_cipher_config0 expects a mode of type
drv_crypto_direction.

drivers/crypto/ccree/cc_ivgen.c:58:35: warning: implicit conversion from
enumeration type 'enum cc_desc_direction' to different enumeration type
'enum drv_crypto_direction' [-Wenum-conversion]
        set_cipher_config0(&iv_seq[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);

drivers/crypto/ccree/cc_hash.c:99:28: warning: implicit conversion from
enumeration type 'enum cc_hash_conf_pad' to different enumeration type
'enum drv_crypto_direction' [-Wenum-conversion]
                set_cipher_config0(desc, HASH_DIGEST_RESULT_LITTLE_ENDIAN);

drivers/crypto/ccree/cc_aead.c:1643:30: warning: implicit conversion
from enumeration type 'enum drv_hash_hw_mode' to different enumeration
type 'enum drv_cipher_mode' [-Wenum-conversion]
        set_cipher_mode(&desc[idx], DRV_HASH_HW_GHASH);

Since this fundamentally isn't a problem because these values just
represent simple integers for a shift operation, make it clear to Clang
that this is okay by making the mode parameter in both functions an int.

Link: https://github.com/ClangBuiltLinux/linux/issues/46
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/ccree/cc_hw_queue_defs.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/ccree/cc_hw_queue_defs.h b/drivers/crypto/ccree/cc_hw_queue_defs.h
index a091ae57f9024..45985b955d2c8 100644
--- a/drivers/crypto/ccree/cc_hw_queue_defs.h
+++ b/drivers/crypto/ccree/cc_hw_queue_defs.h
@@ -449,8 +449,7 @@ static inline void set_flow_mode(struct cc_hw_desc *pdesc,
  * @pdesc: pointer HW descriptor struct
  * @mode:  Any one of the modes defined in [CC7x-DESC]
  */
-static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
-				   enum drv_cipher_mode mode)
+static inline void set_cipher_mode(struct cc_hw_desc *pdesc, int mode)
 {
 	pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_MODE, mode);
 }
@@ -461,8 +460,7 @@ static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
  * @pdesc: pointer HW descriptor struct
  * @mode: Any one of the modes defined in [CC7x-DESC]
  */
-static inline void set_cipher_config0(struct cc_hw_desc *pdesc,
-				      enum drv_crypto_direction mode)
+static inline void set_cipher_config0(struct cc_hw_desc *pdesc, int mode)
 {
 	pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_CONF0, mode);
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-55-sashal%40kernel.org.

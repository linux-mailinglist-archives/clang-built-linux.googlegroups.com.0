Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNNUYDXAKGQEP372PTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 63084FEDEF
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:06 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id t128sf5758453vkb.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919285; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRmMQ7xbPCKbdY6ba2K/r8TiugeuDeIak10MwO9tVxuZ1hTdsiZFqBSBg+Nod488fP
         /G4iCqTsG68Z5tAEXQixE4eTSLu1RJ8TYNa1s3q4CPmZnG1/GPIrOT/qF2xPQtQ+5+1N
         Uy5eSzTvNEr1eN1elSF3dB+YJQ7cY+hDbo0Y0+yktTA1DllEQQkXmJh7LcBAQoqOWTGo
         UGEZXWSb8n5VjI1JVEK6wYxaIbdTL2lvG6mcOEnpibNjlDNHJwUUHq37FxZMIc1/oT1V
         hnp5RB4HWkMt+gGCeJ5zpoN37KZ/bFPqfMGF7JrWG3g+RRFBa4rcz2aFOeonoGYnJ5eF
         dgow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0JIzTdEMay3UJTysnofmtTAomBeF0rwNa6CTgPoJ0co=;
        b=JcQYnwg7pb6VU0CRpr9zxabURJLCEQCAejmivW2dUnf2FPAnTvyhb1w7DFgUxg5x47
         utG1+vhlAMUeXNlu6e/qmZi5YbexFqs/azIUp/exKxSjQiOJ0UeOktjRsBlJnzVKfCeN
         8i2LDbPiILNvGzLFObSr1DZoZ/xvgHcwYw9qy5H/VUC6bplszVsmSsEGR3oa/K8oICC1
         FMPMCltcvg3cDIU4u6wrTxLd2Sn0ALPlX9sgtMwH7ek5LcvIF0GHrT6PTz0evI1Km2Bc
         rPQN5B3V549fDl/yiFFUuOV0lNhfDlPgdlQUNZoog4PW543m9xftstdwDfEHT2SWyhio
         mTNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KrWnOmkV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JIzTdEMay3UJTysnofmtTAomBeF0rwNa6CTgPoJ0co=;
        b=C2F4tzJb2nww6+Pfd+kR1mbMdkAUujX5592P59kvuFbv6veLD4/O2zsXRa6Y6pWKN6
         ZbPCueJEpPl62bU6Ki8vgLi39dhpYbEiExb+51tnWWqj8TTFh9IzpxFI5kLq75Xj2Cb5
         XBJjUmA7MFIOmGcINdywoT7UZph+tU0RFBK181A08OhC0Irm0BiX7VlwNPr0Ivp49U00
         qtSydu6nME3TTMkG0AiltBAJ0c1zgoIhd8wMJFmV4nK0jB8Nmoi489POQCABNmZLbDwq
         3rJtRAI5uP89x3WugBj+Tth9c4dnG7Zh9EPoVcd9gm8drt30K/XVBDv9aVx6NQ1NJNrH
         ba9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JIzTdEMay3UJTysnofmtTAomBeF0rwNa6CTgPoJ0co=;
        b=mx4QYObCK9Zyeec0t4bKUgvXEWIKnh2BNO11hB9bTM7cuHZ2qwb52RzfOpk7LcKD34
         iVK1pc/aiHYhZqnEyJ/M3OmpF2EVWFh3QcJUtO7WopGIBTGmhMs+wSyb428C1Wm1JgIV
         MTHjQkFxQaD1C7FaVbMZtLJb4ODmHGk7eLjsawbG/Imfp3PU0R5TUskhIGl33ND3+wBa
         0WkcBlnjIhyODtGd0vRJZStzxprcQDBQ3LM1L3ULjOHjYOVdqiIn/FRJo5yNMjy5Vv8J
         IPgSgmfJXMTahUAk0VlKOwtrsnjPC7R/s12cBzqPvdGm16Rv1LKE6jD9IA39lS0A1PyK
         LYIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWatiLVkDwO/ie5Avch+tHH9e+vWmXbXq7ciBMq7Geb102Q8sm9
	4Sdw1/k4pdtsGrR36FeUxuo=
X-Google-Smtp-Source: APXvYqyONpiDzoUOL0r9Jgw2DXowrjNCmP2hbZBj7Jt8cu4osVRhg36ReKlq7fmLwx+iccUvl4p15Q==
X-Received: by 2002:a1f:5106:: with SMTP id f6mr4003736vkb.88.1573919285376;
        Sat, 16 Nov 2019 07:48:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls894526vsr.13.gmail; Sat, 16 Nov
 2019 07:48:05 -0800 (PST)
X-Received: by 2002:a67:e3a3:: with SMTP id j3mr6699064vsm.133.1573919285036;
        Sat, 16 Nov 2019 07:48:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919285; cv=none;
        d=google.com; s=arc-20160816;
        b=l+/FTkEqPLBEaO1QSqpDt3LdOi6/+mvTR2zdlbMOYtSyFf1TuHsENruZzJc1wtDefq
         S/txkpSeBfGtG9lOxjJYMT23ceHKXAvIx0cCMIuSTLp8FQ0zW0Se9s59IcAOXFbgRSLx
         ZwNLvLghfPSw6oSakAfujbWiVgY4qPULhWjy3fORga+FeikJtod828cSdB5sTNe4g73k
         eCrUNIdliV1VSXkJyylVpI2eYjqAdEjHzrJHOaJ+XgzTXTzPmpSRk2JGLGMiNzToa4sO
         j58jcUznCsrXl8aTylhgkZV9sWZ4hQhm9hqR+e1KEywZUQpeKM6z6wv2vqGuQjLvPhLY
         FDjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PtrKFdhkm26FdGXaXCBRyleBdh207UPQYrIGiJ4XiWY=;
        b=Ake0CezSXis+6djpNW8YDD/83mJOA0jKJbKY+f5oByRXOvFRRNRMsLwcNWsgHyZd9u
         B3wdRRs/7FGrju64ibu0ewy86XjzcPOqoiF/y7fw9J77nxYhQz7iLfCtABdBjB4XqXCf
         0osrsNEZCEC7SYo7IDaVPElONxKdU17l7ZL+PIPB4jcLYzdnqxxqWBjsquMiX5a9iS8E
         Udflq/Zgo9HPdxxyTjkNjegzwFF6aQm7Q0KCwGhoF5ioDRBB+t+c6uZp64GsUHcyY2uz
         yZcNLl9jmGKBnBTs3cUi1ox0PW5I+94qTyAvUfe4I0lZ040rBooYTDvHh1VAwhhd1wuw
         /0OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KrWnOmkV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si817077uaf.0.2019.11.16.07.48.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6759C20729;
	Sat, 16 Nov 2019 15:48:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Gilad Ben-Yossef <gilad@benyossef.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	devel@driverdev.osuosl.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 034/150] crypto: ccree - avoid implicit enum conversion
Date: Sat, 16 Nov 2019 10:45:32 -0500
Message-Id: <20191116154729.9573-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KrWnOmkV;       spf=pass
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
 drivers/staging/ccree/cc_hw_queue_defs.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ccree/cc_hw_queue_defs.h b/drivers/staging/ccree/cc_hw_queue_defs.h
index 2ae0f655e7a0e..b86f47712e303 100644
--- a/drivers/staging/ccree/cc_hw_queue_defs.h
+++ b/drivers/staging/ccree/cc_hw_queue_defs.h
@@ -467,8 +467,7 @@ static inline void set_flow_mode(struct cc_hw_desc *pdesc,
  * @pdesc: pointer HW descriptor struct
  * @mode:  Any one of the modes defined in [CC7x-DESC]
  */
-static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
-				   enum drv_cipher_mode mode)
+static inline void set_cipher_mode(struct cc_hw_desc *pdesc, int mode)
 {
 	pdesc->word[4] |= FIELD_PREP(WORD4_CIPHER_MODE, mode);
 }
@@ -479,8 +478,7 @@ static inline void set_cipher_mode(struct cc_hw_desc *pdesc,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-34-sashal%40kernel.org.

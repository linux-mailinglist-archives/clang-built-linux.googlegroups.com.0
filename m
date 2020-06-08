Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEET7P3AKGQEUV5ZNEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD0C1F254D
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:28:17 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y16sf14665000pfe.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:28:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658896; cv=pass;
        d=google.com; s=arc-20160816;
        b=vVTvINX9mZUIo8J0nJ2tSmi7nhkujSBJG0qfWwNy6K4Ma2mbVcP1/U95PuUxxaviSu
         IYwWqWHwjzgw6sZGf8WHvWU8i4FaDPeZWEG9QJgtdh2hS42zk6KdkCxPbCxGo1H5+Qeu
         63zXgMXsoGDmSH4poKlo89H4K8XKiEkm1TF4maDHgC+RNtnruyBtFZlEN2JP9KCRc1il
         RnyICgJZrfxXNW/0wAcvMsFErrEtj5vSGQEoImc3SNgDsfbfgd5qbTqAADleSM1XXDdE
         C4SI3yelkkBvjHth0xsfM3hRNDeysVtm0jmWKdL50V5pQxskOTrkeRMeJ4wlxnX1AuSV
         SepA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D37FCzDPjx/FCH0odiyA7CzWR7DuMrzGblVJn/7WT4E=;
        b=dZf387QSE9gxGqzw+GMbZgUeBQw19IE2HmVyezFM2FvbhiLdk5yNMXfDg54+QpcUhN
         pHIWb4l+yxcmTtcMxlzx4P6pLZnD4KwpeT5HXMh+k/yubC9WAkfkvFE4DizdRunWX9R9
         qWxqEaZmmBSSG63H2Iq/NEyKDGj+kj6g+FbS3DUbHdWtmaSR9J4d9FtcHHQR8GTO9r7b
         Y5jtcIsCjXCcNlyIT66wO56SixFnJ3YG2P+QNjqN9vkc5yFZGUNuyx1B5MLVNdywSRZ3
         /vCiulFmwkdssQOpGfOs2Y+Z34u2OX+ttsDQFuZyXWvqi+XWT1byWaxYJOo2dlfp6Qo1
         dIHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ehcm3mU6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D37FCzDPjx/FCH0odiyA7CzWR7DuMrzGblVJn/7WT4E=;
        b=aWtOfuwmVGGoP+lpvDNndrIiuVmnMd5LQyCAFgg3g69agqZYgIAulDkv6KjlGSMAwJ
         WD/9qD4dB7Ty8fd1OUe51doZ4AlKp81hgT4vwdARorFDigZmkg1uenr6Is0dd7dsUE8t
         nTFEp/R+nPfNZeCxWyM9FJGdb6FKToJmVPRWDCwEDVVi4vEVgAbIOUQtAICUFb7Kowkv
         cOCUIUR2X925IyWwBCogGCVLNYKoF76MuPPFdfMI7M1LzX7lhvXayQur89aSE8h7zA7s
         keJezk8rFGDzG7M4D0XS1sk+vq1uVnCNzmDFADKdXblK8FEaYnWAi6KtlkJu/NGPJ+9H
         zQfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D37FCzDPjx/FCH0odiyA7CzWR7DuMrzGblVJn/7WT4E=;
        b=EcvjGADNKK2696Fg6W6GTH07nXBt5c7Q0EdoYYyQ1+oYHejVLSb9IRnrGFgMv9Myyw
         hA8RBnvJvYQBpMZgx+GB+2Nq7anRGulz5z2eranhZ5mNbXkUR7yoJwVUy6xPfQrjHpeU
         MgpfK2rTSnwMFQd9jtwaeuYyVEPlBjZcQ29BiTKD8/5E0WhFoNebIIKfybytPmxvLBdm
         y4BMHKDSB6ITiGpAw+9TPyuJMkM5DeRE3FgSfx0ZoK2TRtm0igxg7eA2lxFNTnHTTFSi
         pbrQVHTWW7n/iGztSJwR5jZd2a/BtI4u0JncBo0bnqqBdjMyOs5o2Uh45aiGsDl5uiHS
         23wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LTeqaY9RFSDCx1KXGMjCi5FpKutk+4mqqpxlTDPs43PZ2hHmr
	bXkmoyElAIyyojkNeU0MJ6o=
X-Google-Smtp-Source: ABdhPJwtPqN28qcAvTzmM+lMvK5ojr95lI5bg/5SezoHvyutROjqRCOyJhEKnm/6bL3XM2HsPEku4Q==
X-Received: by 2002:aa7:8387:: with SMTP id u7mr7456723pfm.90.1591658896597;
        Mon, 08 Jun 2020 16:28:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:517:: with SMTP id 23ls178377pgf.10.gmail; Mon, 08 Jun
 2020 16:28:16 -0700 (PDT)
X-Received: by 2002:a63:4d58:: with SMTP id n24mr21379223pgl.121.1591658896251;
        Mon, 08 Jun 2020 16:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658896; cv=none;
        d=google.com; s=arc-20160816;
        b=hahdE2skYJs8Oi8QoIbjFtaAP49d0j/X7XhjmLKpdcJiTnpSB5RVRh1LiLCQ6RHG0u
         4uTwH4rliNpBB6VdG+58GdFpgH0dPdxA3taCsAsaokxlnUCDch2x78n38qxIgLFSdCfz
         MQy32VVFsP7JUWnuKiHAwTYWFHp3Lp7Lv9iO8HdFZJ8QhQ4DCon0r4ZpJb1u+F+KhEkx
         K9bIUoKzFYldazvJtGTZiyOGeMqI4EKzipAM8o56mZB7bWySVgIhCkt0aF+SAutXSO0B
         zaAh6thnc2M4/Rj+mC3m/2m4cM3mns6VYlbpUiZEeYAN0YnItQxJBeVR2iC3NcQWe/Sj
         AunA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ez8JTaCT3a44D9/1JqrrIGRLS/kj6ds7T6IrOaDx2ak=;
        b=N4CricetSrblJvLqD6t3gxzfoFrYDkny6ulZz6ILzLDgwKHVJ09VMqKrwbLFG7d+VI
         6n+o5PQOqECVRweotSN7rhqU8tkJxgBgmC+MWswAdUKZX8IgBLl6Zd3mNqqTjvO4+LaV
         xVfNWjHI1WVBU1rvpG6ztSi624PkM6R51ogaLv5Ed9M/6taiWWKKfnrgjeA2lQdZvope
         LJxmr83laMUtjsCKE6CgZBS1IfZdi2Ukh6IL9m+Woa/rvvHkguS4ArOOYgMqE7QrKv0j
         3FR5xoqpd2DQCyqN8S8b5ARE8CTwNjErEiyCVkGI7qpF6SYiFguYpShQlq1DJ76c6kGO
         GUig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ehcm3mU6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si426058pgd.2.2020.06.08.16.28.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 421D220872;
	Mon,  8 Jun 2020 23:28:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 18/37] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Mon,  8 Jun 2020 19:27:30 -0400
Message-Id: <20200608232750.3370747-18-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232750.3370747-1-sashal@kernel.org>
References: <20200608232750.3370747-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ehcm3mU6;       spf=pass
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

[ Upstream commit 18f1ca46858eac22437819937ae44aa9a8f9f2fa ]

When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
CONFIG_CRYPTO_RSA enabled:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w0))
                         ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w1))
                         ~~~~~~~~~~^~~
2 errors generated.

This special case for umul_ppmm for MIPS64r6 was added in
commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
GCC being inefficient and emitting a __multi3 intrinsic.

There is no such issue with clang; with this patch applied, I can build
this configuration without any problems and there are no link errors
like mentioned in the commit above (which I can still reproduce with
GCC 9.3.0 when that commit is reverted). Only use this definition when
GCC is being used.

This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
Eliminate unused umul_ppmm definitions for MIPS") when I was messing
around in this area but I was not testing 64-bit MIPS at the time.

Link: https://github.com/ClangBuiltLinux/linux/issues/885
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/mpi/longlong.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index f1f31c754b3e..70f5cf8deab3 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -671,7 +671,7 @@ do {						\
 	**************  MIPS/64  **************
 	***************************************/
 #if (defined(__mips) && __mips >= 3) && W_TYPE_SIZE == 64
-#if defined(__mips_isa_rev) && __mips_isa_rev >= 6
+#if defined(__mips_isa_rev) && __mips_isa_rev >= 6 && defined(CONFIG_CC_IS_GCC)
 /*
  * GCC ends up emitting a __multi3 intrinsic call for MIPS64r6 with the plain C
  * code below, so we special case MIPS64r6 until the compiler can do better.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232750.3370747-18-sashal%40kernel.org.

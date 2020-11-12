Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBW6PW36QKGQEC2SU2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F22B1029
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:23:40 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id h5sf476900ljb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:23:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605216219; cv=pass;
        d=google.com; s=arc-20160816;
        b=CMvNKlHfRhL7a13dkyfvst38Be6xVEQ5Iu7Ar5Q1bXPhR20fEQnQK7ALMwXnlUqGcB
         bwg1zVZW07RQZlyS5eaWd51A9DbWb7Pot/fGlL2QoFGjLaHfkLloneJQid+4Kwtd2sdo
         rjYGONIlD41ivNvijCxGyvZpy5vMAc3cEHR+BA9Ym5ne3qEyMW3u+5BzW73zCIwcaQ64
         egSAWGL8BL+sne35DhgE18cAvN2ZCg1N97SGkTQrKcySh1dWAdog/XHDp0IbeeubbD6Y
         1CFJXVzutkWpbekUIGka3ojDo9LciBxykpmoUvImKQlwDATD15lZw74vLycMDlfWBTu0
         K3Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UwTlfZ7+qMur34e70fOrWNpeSEShNgcamhzorUa9548=;
        b=jtcBp6MUe0G+9z4/+QEET49P/T2zPtmL5Skfpin1t+xts1cVa6k0Mhf/DYC6/JnRPB
         d0wu3/15BvHhxEqz/Y4qGv/1BQiqok/gUnsh+AW5md3L0Do79oYxt6FuyhZ5MLSKJeZb
         6i2b7BS+IRujzosB0xC6QoEV+/827Qa9a8HSBxof8f2qDujG6KrurUHWNvf5aEO7oezc
         7vdPAtBeJ9IK3aTnquPqgcZV4NcP6tMqZAkFB1c/NwvATZM1rwfHYOhJng5jHozfcfXr
         NVP21FD5n1PNKCRdbfzzEEhbInMd5H+arGDYL+ZmSY5lIySAD837j9K1q8O1jyFyslsW
         MvJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UwTlfZ7+qMur34e70fOrWNpeSEShNgcamhzorUa9548=;
        b=AHhQ0DHZMwaTb5feZQUOsn9qsP0DtSOy21qb4xjTo5bbGTKN/RholddHyfk7rsMyWB
         XiFFVKhRAtccWnLkvm6i2uqo87C4LmN1CvVZLFn02+KGAit8qzOCWWGO2pPDqNHMsvKv
         pRdmjUQ6YUT/3W0tk7EnwkFlcvyCcIN3HR83shuSsmkiWorbK3eEPknVniDceJKEyjZ7
         rRnVhK/tXG2+Faf1A+CSep4FtF/aLYurFjMsGmGDKmb6Gu1XMTR0IhxTXlQQwpIBef+N
         z+Dg5rSx6nC+1ODSN/MPgJP7cfqxw8aqZM+CogNWHFYubwgpOgkhQcnV+CwOsC97qPqg
         QdWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UwTlfZ7+qMur34e70fOrWNpeSEShNgcamhzorUa9548=;
        b=fkxoluAyFsx5FpT3o146gJDHjNsUWUm5p4F8WcWoXVTc/znptYyUoaIW2zW0ugGGYs
         JdVMQ/jgy8/C45yifk1V2P7FsKmVUnTzarRclkr2HvOaF+D66peQGiARgCgMB0Jn92Rt
         JQvAYfMuMtGYox9RMkTu3hNwDPYI2210draBaYWo2sqmYHtbs7yJOlRn+6duXwp/+BP9
         8Ds+2HkM/BVBaAoPWPJ7I3itKQakvhnmmcD2dt7Nsy6FYQvlG08b55aBeq0JHKZqx9F8
         oODII0CWzAnnThQP3th+ql3NGSFA/CbZRpj9wH18EPH3GBCSFod+TXFRTA+8Ju4T08Dn
         z4Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530f9iG3UpwcIs+E+7jFnS1kOGgrvJu5jfD98AeQ8Qca6VOHzwHP
	MhlX6pFI9AigQd8Ojpwn+Xo=
X-Google-Smtp-Source: ABdhPJyiKASfUDkGL7+PxA4VyV1nnoOOJ6saXk0uMcT84MfjlH04qXaG4Gf3Z6X6pEsV0i11wIHqwQ==
X-Received: by 2002:a19:7411:: with SMTP id v17mr520851lfe.351.1605216219826;
        Thu, 12 Nov 2020 13:23:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9acf:: with SMTP id p15ls836973ljj.6.gmail; Thu, 12 Nov
 2020 13:23:38 -0800 (PST)
X-Received: by 2002:a2e:6a0d:: with SMTP id f13mr641040ljc.11.1605216218793;
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605216218; cv=none;
        d=google.com; s=arc-20160816;
        b=sgaQx/rZU/muEQTsPh4E5fF483iUp5Rg95qJUwl0/vi2CH3HUInvfqSR81Xw88SoMo
         otx55tGOSmJOO6h6+ao3ylFj4v0YCUYYEXbGfPHC8VcBJkf/kNNtR3Hpznhab62s0zJy
         CkNsZ+dkc12RiZag1TF1pngtNsaV2eTtc2OugMViH8DDIDPq/rXBaVJD4WzDFocUSyFq
         fgA3AQj7SgFHX4XWunLkFXPdnE4Y6sr4mGb0xgqx7UkmsGEG8zmkOzsSYAvcv2/obGP/
         Opz3K1UiKrEDHs1Pl0vSUCHdIkF7tCGc8ZkxGJuITvqyjIwhyBwooU73exDuSW+LEV7K
         IIzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jeon2YSr2ThkOIopWCdZ2DlKDuF1P8Zl+jKPsUGsA2w=;
        b=iqwaiN+t8eqX3Dip3/9AXf5fFaZNR7/7dkeIsMd6Zw0EKRzalKzSxhg/ZDqGVPHXNi
         7QtKeu5O9v0C4f2tm05p73gpVweBUiHeB6vtLuHQBJzggsDmovwv71N8GcYlF3GBaytg
         BGqly1qPZ2a1mLn4l42JOWuZnM22fFu74bQ62JloxYn0miHhNL1/aoUGrT/xGdLKT2yv
         T2ScJgpBQn+A/+g17bmhBfyNmxg6AzNyBRxHHhoNv8eJnYBt0e0p328TwnfP0OTqC3VL
         YZZwGKG3wMmlBZh+gB4x25Nf4BZFucpuFgNcusl8tGZQzkYQGkbWNI/DNJQkbiysHvvZ
         1IZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id m18si235395lfr.11.2020.11.12.13.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 7DDBA1F466C5
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
Date: Thu, 12 Nov 2020 23:24:56 +0200
Message-Id: <20201112212457.2042105-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Drop warning because kernel now requires GCC >= v4.9 after
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/lib/xor-neon.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index b99dd8e1c93f..e1e76186ec23 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
  */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
+#ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
 #endif
 
 #pragma GCC diagnostic ignored "-Wunused-variable"
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112212457.2042105-2-adrian.ratiu%40collabora.com.

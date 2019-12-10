Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUUSYDXQKGQECDWUTLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5C1119345
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:08:36 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f20sf596266pfn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:08:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012115; cv=pass;
        d=google.com; s=arc-20160816;
        b=mw+B1YmEkKYMxMjMgY5sUWh8bEVxShFuSdJxxymmajj9jEf4wqK/dXmwbeFP16KCsV
         IXpelbTF9kR8U16hfQX2JGQazqPYkjS3c7vw5cTn3N8GQkR97KNjWYvZpknCLnNuv8Ig
         F3PaW/0rejHcIXH+5UPF+rN1q8wwOESk2qPiQ1duVqyz+BnpU0GWwRUOo8ZUW4lsAl4N
         vWFobO8sv0+Tmec6sLj+JGSLoUCPyGsrDytTYuQ/BtmA+lQ1V2murcqe21P+lZz9LBOi
         5IEig2RHSil5EqzcQRN/qcXhZwXrTJXS6tELzZ95DaGXY8tT24+f52lIqrQwTEDC/myr
         boxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EjLSytypZWD6uTnuYiL0jzZedH3s9ulqmG1ccuW8Zm0=;
        b=jXC08bjQRh7mRxxpdG1/G4aqlwhavVwp/uK/YrqRasMc+UbXUduCIIC1m2Pzg84Vpo
         +zu3VT0lEB1uUFYI6ziFxU8cLrStxI9PNuvthPnRAzRMjnGTrpZha1oA+pf6BcRcsljR
         FkjMHxHIojWs4UIFJT2X9irAY5/88wiyJw5XhynHkV+TC+rq0o2u9Sk8ynTzVtiP7Hpy
         cLjLi/VD2io/UqxK1bZZCOIjbTaT808Ln9nmXVF6p96Fm1TSoWAPZVCQb8wJFHXuKoFW
         erlqJGltrpYWan2uv4VqRzvqLTVkSi9ekTO/mbQLUs38vM4fJMMLcObnEqEDyv37BFKA
         DRyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Lgs/TjuJ";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjLSytypZWD6uTnuYiL0jzZedH3s9ulqmG1ccuW8Zm0=;
        b=Q2Ya7LoGiSFlH3soRFjwmSDlhjXG7PLl87c//ESwEPwV+4ctaDZx2MQtjkyZcG4W2t
         clR0g+JZwuEANpy07x/TsEFrVSGfEGtJ/fJPJq6o6OogdqMVf3+okVgigeBUqPgZg7ro
         MNGZfCXnbjnzSLCyZnYENNoKsVDaICmvHXi4ZPXVPshCDKJc5PKGUKYQ3ShxceK3Qg4T
         EKrfcOfap5SXi6dZt604aK2qSKkCRMdBscY6RCler8LO5bbbcH1spf8po3Vy2VPNR3NL
         gAbPzizGs1OZJF/F3kw+QwVsqM/ZZ7gZMz7Tl8oQ7hCJ6Z9SELmHAAgy2eAb2+AyXGUp
         qWjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjLSytypZWD6uTnuYiL0jzZedH3s9ulqmG1ccuW8Zm0=;
        b=i5+6iqqFlGjpaNwUe/XiyrPgxexP4tJpc82oC5KtJJOci+OZaVADBnXQ3dovx/OwoT
         U3erTmQYG7xsNWolchOuwSWeGfoCQi9Zs1f57d3VW3unewa6PLTILK/VUz0klLzPhNiT
         ILfER1t54JmM5IALXShhM3N7PO6n1al8hllpEkZtvG2LbNFqx23im9CBVJEgmYkBqhXE
         KcvbuIUIaWPkI5PhjiLWC2HiF027/A3hu9OtP9o2cPLpqkIep3qMxDSWlCwIb7HG+25m
         i2Nk+JPEngmrxT3EwsTT5+NSEio4uz95jox9EO1k9SajtEEPhmF8uoud4qbhzcdkYDbh
         VU6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURX152ukXCjZNkWomf0OCLyZmbYl/rJmmlAmOWb6ncwwJL4Ynx
	cgjphnzT5fdI1rqQIAy4n74=
X-Google-Smtp-Source: APXvYqxteQN0IEyf1jKJZovd6YCZFvg/grdDXD5FsRxnv2I9eZ7tHlnb05ghaIBngRp5k+6DFz9WXQ==
X-Received: by 2002:a17:902:868f:: with SMTP id g15mr36751139plo.294.1576012114731;
        Tue, 10 Dec 2019 13:08:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:788f:: with SMTP id q15ls3111990pll.2.gmail; Tue, 10
 Dec 2019 13:08:34 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr7858018pjk.100.1576012114320;
        Tue, 10 Dec 2019 13:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012114; cv=none;
        d=google.com; s=arc-20160816;
        b=nxUIPcejBXyLao8D+yjJpPBrH9rI1KXlrYPxtSzOQwK57W0v5AGNsJ3c0qYX7bpM6y
         99cMQQBp6xQUOoOeL0Va2kboieZ8G9wcZoYCBaiH8Hlwf2ETOcGbRvdnbsGxEBDd5zxO
         /IC1zWsshvTSzW69IUdRF7kFyJuW+jzyI6cYWbwjIdO8MqS4ZAOUKaR125dx93dVajrJ
         pskARtPFei/LLNAhQm44WV/BUhTxfizsWSFAgAzZCvVPXR+5jo28T0Bk/pr6Cc1gKumM
         vegWzA6vocXEQsMI47Qftn3xokx39uDxTKJ7iiJ4IKKIUWEsVLnJ2hyZT1uON03MTMcr
         Jxqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=j/dYr3h18HqB77xbgr3I+WgY8jsblQ0LrB/7mUpJWfI=;
        b=qaIsat/iVhrxq7lI9t8nyjLmE6IO4OCq9ToukxeAKkMLE3gY4qRgqWkFztVK84SUHR
         JsvnPx5ZI6AgOTXc5SKYluqU8yrimc/wu380Lp+BT78FAFJoyYC57msgiarhHhu6qGpU
         yrQy4GLrWXcMboWcWulDCNW/HpynTIZtG3ceT+/Asmeh4lyyuTg+2iqZQ7JUY1d9P4TH
         sSWuZCISqIwzHtnhjIeMd9YVLzmwvaTb6rv49Bzlda46wbt9IoMdCJCXuu/kAXokohzG
         uPV7p06XxljPGjcHAYqeaBfnsd2E9fkBpQUzBIsB8wlbktmPUKzsH9dgP/nbK4Yd1oJp
         7U3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Lgs/TjuJ";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d14si224567pfo.4.2019.12.10.13.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 218A024698;
	Tue, 10 Dec 2019 21:08:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	ci_notify@linaro.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 086/350] crypto: aegis128/simd - build 32-bit ARM for v8 architecture explicitly
Date: Tue, 10 Dec 2019 16:03:11 -0500
Message-Id: <20191210210735.9077-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Lgs/TjuJ";       spf=pass
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

[ Upstream commit 830536770f968ab33ece123b317e252c269098db ]

Now that the Clang compiler has taken it upon itself to police the
compiler command line, and reject combinations for arguments it views
as incompatible, the AEGIS128 no longer builds correctly, and errors
out like this:

  clang-10: warning: ignoring extension 'crypto' because the 'armv7-a'
  architecture does not support it [-Winvalid-command-line-argument]

So let's switch to armv8-a instead, which matches the crypto-neon-fp-armv8
FPU profile we specify. Since neither were actually supported by GCC
versions before 4.8, let's tighten the Kconfig dependencies as well so
we won't run into errors when building with an ancient compiler.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: <ci_notify@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 9e524044d3128..29472fb795f34 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -309,6 +309,7 @@ config CRYPTO_AEGIS128
 config CRYPTO_AEGIS128_SIMD
 	bool "Support SIMD acceleration for AEGIS-128"
 	depends on CRYPTO_AEGIS128 && ((ARM || ARM64) && KERNEL_MODE_NEON)
+	depends on !ARM || CC_IS_CLANG || GCC_VERSION >= 40800
 	default y
 
 config CRYPTO_AEGIS128_AESNI_SSE2
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-47-sashal%40kernel.org.

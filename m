Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOXVTXXAKGQEW3P36MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ADCF6311
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:49:31 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id r2sf3845518qkb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:49:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354170; cv=pass;
        d=google.com; s=arc-20160816;
        b=hRzjieBCqlj+Qs6UUV67QMTB5fFdBs5oo3iJNtbpxdYTAelYVCjdmf/6lfcTVCH1UR
         z6GDpiyVDnV1WXVqaHOesjb6m7KZ4WgVp+y+X+IkIfg42sg3aKRwtQrZWxrCTobxICPk
         9UNbJNo0itBi9cDdBlLkHZVc8Jc3redvebMqxU6urJJu0Ax2FkoUEa/VdDHpijwJyBug
         xK84xSljaHWuEu9pXbkeAhrYehkuMg2nJrY4zPrab14FSJhAaDeoxHGwyVarwjVAnhbP
         zxcAEka3cUkGGzaKQA0X7ru4S6Kdhqh9lJsCNuXYUqeyAwIJhbnDpViayrDY8iAleI7/
         4ekQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=83c6UvtHO8oELhN6zxLBPhx0Gc9OzhCjmjfA+xQx84c=;
        b=Ym4EyFoKRSaNuai4ohEAr8aSj7VOkBBpdC6NfK8TGpBVqLA/EYZ4N912JcO1sJMNWh
         4PFEGTTssTyb3r4mrHRW9EnGJatUf5y8ntKcA5mcvQ7YbUhgc8SKT7RV2A/yinH/EFAL
         X80v1DOh6xem5pzR4so+OqwbML09UNzMIHWCK3jR4FhIBqXJKsQQ6Dej8VOfjX9Teq0i
         mBbaybpUOQi0gm4cA8zgPb+uv5jVJSa01hoVgH89FgnfY/0c2yWEFXAC4xnyAbjMPRAr
         HMrrQrOGnQh+FtqJW7E0E6gcuTwDlNrzZrUQO9xYyqyUY2bztaxbx9xEHENi00R+Q5ae
         q1+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XAN0SYCr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83c6UvtHO8oELhN6zxLBPhx0Gc9OzhCjmjfA+xQx84c=;
        b=UolmXoLppUux9nTz+QR9jBQfT8XLK8F25cUHzAVQ7xTpwB6TzzZjQivedI/DbIVCXL
         Cdz6PVxSh5eCZ1mmAwQ95MCwjxBshjvSvFMhi0AnM/8bAkWeXpWcsjNNKHoLkqVuVGw3
         SRjZQtZqDAlMGmkpus7YJm2f2gyk2qdMCcOOTnnYJjCiAAC2+45kn6TSmFPeRMf4Kzbf
         f8wADYGo/tHbewx1EBHSwvAjmUfH2eZTqoHg2kAGzft5VZ71aNt0tz/B18IArQaba7T9
         HqgXOUiMQeQNtyLsbz8CcQ5vWIX4yXimm0+zJLyYQ6Vxs81USidlFPu2yDBPgtTuSPXx
         pu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83c6UvtHO8oELhN6zxLBPhx0Gc9OzhCjmjfA+xQx84c=;
        b=lPJPJN6GrS5WJKAY+kiDc9zz14JfNFN7V1uysl67rIfW/uZft3SbffyJMdLDmjH26I
         nUnesyergR4Qtpvegjt6oAV9pVm+FtoLmcLCDdFugTYzba3HsZwD2p83i03GOHR3a1tu
         oi8S6W9ssUA3WYGY3uTYEJ1LPsG6FB4rlfhBFIF8RuUQXr/MR4+Ir5Oir5BD13VYhfXV
         EIjEsoO0PoY0UdEpMlOQ7bKQ/DwGVKNU4WsHpP7R9lD+spIxZ2ncH2w6FYaaA64jYFT/
         /fiGkCDT0fdICNq8CYc1QrrXF6C+oa2Vvpuw441sbl4jkiEBoFL7Fs12UrsBWLPffjz2
         yRGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTOEC/H2ysvBLaY/goYacuYLTxeyzt4AkGoyoKQLOGNrcf+m4l
	1tK5CgwEsLZoSN+9oXU1kPk=
X-Google-Smtp-Source: APXvYqwZUgGerS7tkEUjenVO2zMSQKWq4Wa8ECUdSICE7lKOkohAgvqk8S5aBZTcRk6IiiQA+cR2QQ==
X-Received: by 2002:ac8:70c9:: with SMTP id g9mr19178929qtp.389.1573354170151;
        Sat, 09 Nov 2019 18:49:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d24a:: with SMTP id o10ls2259304qvh.14.gmail; Sat, 09
 Nov 2019 18:49:29 -0800 (PST)
X-Received: by 2002:a0c:8061:: with SMTP id 88mr14269720qva.62.1573354169789;
        Sat, 09 Nov 2019 18:49:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354169; cv=none;
        d=google.com; s=arc-20160816;
        b=GtOGNUR4lLYDLObuljutsC5B6REXSG6Qu4ttUAk4sCEGX70DM/Jix4ArX1ZHvSEdwe
         NZ9OGjC6wiZbi9DF1Z6TUb5UPD4nTBXVUmZksphlm3douc/jtZr1UJwy5g7W0MrRx4ax
         UO2N9pFE3T6inF0ssmvZ2V94xck5F3LGpaEYsQh5AKha3zDJ+GAjWXQAKUPpSOpUSWuC
         HT6Anesep6l3tVvLcNfrc+DAYEra2v52fQV2tzgTiDmTEtDKbQC1d5AnTSLN2Tslm1Xo
         7mkgniqGfp0VT3i5R6TeahKZgVAoWcf37tkrvdZNWTTYtDlPPbQ0p/aNCCRauBZSBQ4R
         Bl9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tqWIn7RXaSlu9+6S1R9/7J2bVRPemwhikP9i/YGrsoY=;
        b=QptHYTDPDCIqAO8zi8A8B6x54zM8IADOUyw4ICfLwiBqp5nH+t0bw6whjvWbZkaX5+
         E0gQ/E5+GtHFWHtTcP1dnX3FzuGILARzp+0meKJPDOL8sUbaXjTkwvWZIgHGTYvOhmfu
         ca1V3Fu/oNZhfKk1gEerw5HFokUaaJVVe9K+74MYSjYaeXT0o1v3ALoqSIElchrzUKOI
         HjeCMZZ8ZLftu4mAvvsSlmlkD+MY6MYiclvjJFnMQG7SD8djPxcJqati2dxZWNMHcnSO
         QKLcROpYiatYJR7LnKJliI48zOXcJ26Ahwrp5/JoQiFDq4Fm9mnuAjIuX1VJJZ9z9ZqM
         Crug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XAN0SYCr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si403882qtj.4.2019.11.09.18.49.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:49:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F247E22582;
	Sun, 10 Nov 2019 02:49:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 24/66] cpufeature: avoid warning when compiling with clang
Date: Sat,  9 Nov 2019 21:48:03 -0500
Message-Id: <20191110024846.32598-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024846.32598-1-sashal@kernel.org>
References: <20191110024846.32598-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XAN0SYCr;       spf=pass
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

From: Stefan Agner <stefan@agner.ch>

[ Upstream commit c785896b21dd8e156326ff660050b0074d3431df ]

The table id (second) argument to MODULE_DEVICE_TABLE is often
referenced otherwise. This is not the case for CPU features. This
leads to warnings when building the kernel with Clang:
  arch/arm/crypto/aes-ce-glue.c:450:1: warning: variable
    'cpu_feature_match_AES' is not needed and will not be emitted
    [-Wunneeded-internal-declaration]
  module_cpu_feature_match(AES, aes_init);
  ^

Avoid warnings by using __maybe_unused, similar to commit 1f318a8bafcf
("modules: mark __inittest/__exittest as __maybe_unused").

Fixes: 67bad2fdb754 ("cpu: add generic support for CPU feature based module autoloading")
Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/cpufeature.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/cpufeature.h b/include/linux/cpufeature.h
index 986c06c88d814..84d3c81b59781 100644
--- a/include/linux/cpufeature.h
+++ b/include/linux/cpufeature.h
@@ -45,7 +45,7 @@
  * 'asm/cpufeature.h' of your favorite architecture.
  */
 #define module_cpu_feature_match(x, __initfunc)			\
-static struct cpu_feature const cpu_feature_match_ ## x[] =	\
+static struct cpu_feature const __maybe_unused cpu_feature_match_ ## x[] = \
 	{ { .feature = cpu_feature(x) }, { } };			\
 MODULE_DEVICE_TABLE(cpu, cpu_feature_match_ ## x);		\
 								\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024846.32598-24-sashal%40kernel.org.

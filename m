Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIHSTXXAKGQEJN5Y6XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D48F625B
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:42:41 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id v130sf8211788oib.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:42:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353760; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPryi+dieSbCZ/4s2Ze4xSZnLNX/8B9R9iXHxNIU4/ZUN6lKjsNMdrAZPCFf4zIlqR
         TPDl2sECXsIyd7Wat+zQIWLcF6Sv2Ht0XnsiRm4XCiiHzXqnZq4GDO/gOEI5ygNHT/0q
         PXm0z/D1wzNVk/SMaZfQFo2tomqG6AV64FWk9SIgRMyFIH7JXqd5ZXKapbvVaXwwejjl
         g48yk59UfQdkB8iIi4sIxx3eIMo/K51KMpoHVKFKdcJi1Q5LwkgEBwB8y6WPL0tPXTyW
         /2Jdd4FVATlnVYsCeloXZYb4HdBRqaTE+iwMpRBP3n+3tUMDavE1rdvFak2Alo1kd25R
         9XCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+fIlhi1EcbUL1BZBZk2zde1uqqu9lP3dM/GMhHSeDx8=;
        b=BUfTScljuDQBUCZ7faiqjuwfDNLdKcxGIEHHyXLM2uMGy/g83jx0VvxUgwxFRf7XIg
         28/B5d0QmhQBn54QGB5eZ4/KBrz/17zc36df+UE1P6j1laDjuey/Rd8jv4T01sn66dRQ
         Nb5amW4ndXoZoogAkvQbHqkEVbjc6mZoyULQ7IgozNx5nt8zGE6Urt0plQvNFVd2HMJa
         KZ2yJvkwR6maNK4HK9aQq9+cLTPrN9etfDEC8Fm1bUQPKhln6krKJemyI4zHzJ4/1Avx
         uMql5nX7L9r2zjs6g93pjZiFKZK9z24LKssDnRsRri0v2s6YULXRNQCCplXBLm07QD8E
         CPrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tSnRYy3x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+fIlhi1EcbUL1BZBZk2zde1uqqu9lP3dM/GMhHSeDx8=;
        b=FgTn0YwVyKBaS/rVIb1Ni99Aubg81WWvoJ/91krpvzWWuxGENZANFnRoQdoyfiW4bu
         qIguhS1SoJC4EacM6kUuuHo899BDGBjr3oriddL6omEOujI059sNw4BVV+lDQybt5iv6
         qm4BP6LRNtBhueEwUlg6stLri8wozI3gRMdqznNzqvlSlxgL6RkYmyS7VzbFWNsvpwG6
         wUJjmwCG7bGBPaKbzpdgmm4dSsyc2WDTllVyCrQFKpFRcxzb/irDeT5UFd8evv+VpRNp
         CQflwXWLDm7hMfOdIUP2rlecdbaVdCXYOwDOoaBKQiOKg66dvMZyQTbfQqPpPl15RPuo
         BEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+fIlhi1EcbUL1BZBZk2zde1uqqu9lP3dM/GMhHSeDx8=;
        b=eNhwXg8o67rjdQq0m54S5IsA/51OaO1XepZTeliDcCixLr90wi1WShy0rfX5UpC9y1
         SmqgdVRDrhKLJrg2REUM2k9ZZhy2owgEol+Y9X8oGcJHJv+ZV77K5IFT/O/hUGHhvcld
         YN8/kQU1V6iTisbxRBuE+xAbmKG0QiXMJuziAYnokUT1jshK89QG1o4MKPKUVO4+OXmq
         SytA1Xx1q731AQUMSRZybYFcSg7gshFuHcj/DKiRkipKkxpFPShm347gNb7D5PFZw7BS
         ARPqeXHlQVQaBZKWLqrTjJEqfHqrqxi5XOEmCobjPdvDuM6kaWRLVsYMPRd+oz7wXLSI
         QZgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW6WdL+lxw1RbSMrPC4lo/5tg0/35z9SYDDKq8vrRIyX0kbdTcD
	amTGAgG86mrxjSK5MUg4ZtI=
X-Google-Smtp-Source: APXvYqxi/6MFU3M/rZEUvQocoaNdtAzpY4ryNyOI2VZ4TD0tqvhjW/Zw4DOlh5Cd1pa52Lg5a7XeNA==
X-Received: by 2002:aca:ddc2:: with SMTP id u185mr18016982oig.174.1573353760636;
        Sat, 09 Nov 2019 18:42:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4815:: with SMTP id c21ls783350otf.0.gmail; Sat, 09 Nov
 2019 18:42:40 -0800 (PST)
X-Received: by 2002:a9d:5511:: with SMTP id l17mr9549728oth.145.1573353760219;
        Sat, 09 Nov 2019 18:42:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353760; cv=none;
        d=google.com; s=arc-20160816;
        b=glfDvnR3QA0l0m07d/ZgfC2ZmMMbTNU9roXedCsbmhy7+KBarDhkHom6a05KAfwYYJ
         232J1iW+MoIbAKRYexaCzGzgwPT41rOAW8zS10sLE+exU/WvVqLrfCxrO5Ozz/547Cmm
         rkcBoVBmAF6yoO9f9J57MFVfXqtoDMZ3CgtDiFhIGDrSTDx2m9unkWLyDQ5KBbzBlQbb
         CAdkxoaIaAsQdUl/wmOovEgpT3ehbu3QNgZsnrrTFFOo1ILf62dEyJMKd+1w3kbWMA4p
         stpjlYhBKa5LIW3H3JNoT5SYR/99Dxr3sA+DRbt6KFfEc2PyK3ykGYpyjMUjLmAdkVDF
         jVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TCOMyFdtnuinH14Xtdmbu0eC+vR/x1w+gAM7rBdhsAs=;
        b=a6+/mMyQ7l6VpsYQK/ROYEJ//cxDRN3UCmflAC+CFncWvV5p/IaEmH40fAFEp0DEd1
         Qn4VZXyO+4S96FKCAAVZjuUSIjw1rb+uo5xK6KcGkLPTLSD8GSDVLVOQVxfZhv8nLqH2
         tUPt3aytVXt0oewLG9cOXS2TQugtnXVNZrdEdPDUhnBpEB0pd8YTQxLKUHmiC92pkblR
         kG5L2jyS9waOkeRyPhECZDZmLQN3MdqVfXeR+UHVK6tKNVpWuDLo0gyY8yLAIB+ZfriQ
         pvl1p5UdS4HgqwG0KfksdQ/27PsHk6lg1E3y5xeh1ljt3SnSuvFam1M6ltwNDshktNLF
         pJfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tSnRYy3x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i15si671964otk.5.2019.11.09.18.42.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:42:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4BE8A21848;
	Sun, 10 Nov 2019 02:42:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 072/191] crypto: arm/crc32 - avoid warning when compiling with Clang
Date: Sat,  9 Nov 2019 21:38:14 -0500
Message-Id: <20191110024013.29782-72-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tSnRYy3x;       spf=pass
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

[ Upstream commit cd560235d8f9ddd94aa51e1c4dabdf3212b9b241 ]

The table id (second) argument to MODULE_DEVICE_TABLE is often
referenced otherwise. This is not the case for CPU features. This
leads to a warning when building the kernel with Clang:
  arch/arm/crypto/crc32-ce-glue.c:239:33: warning: variable
    'crc32_cpu_feature' is not needed and will not be emitted
    [-Wunneeded-internal-declaration]
  static const struct cpu_feature crc32_cpu_feature[] = {
                                  ^

Avoid warnings by using __maybe_unused, similar to commit 1f318a8bafcf
("modules: mark __inittest/__exittest as __maybe_unused").

Fixes: 2a9faf8b7e43 ("crypto: arm/crc32 - enable module autoloading based on CPU feature bits")
Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/crypto/crc32-ce-glue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/crypto/crc32-ce-glue.c b/arch/arm/crypto/crc32-ce-glue.c
index 96e62ec105d06..cd9e93b46c2dd 100644
--- a/arch/arm/crypto/crc32-ce-glue.c
+++ b/arch/arm/crypto/crc32-ce-glue.c
@@ -236,7 +236,7 @@ static void __exit crc32_pmull_mod_exit(void)
 				  ARRAY_SIZE(crc32_pmull_algs));
 }
 
-static const struct cpu_feature crc32_cpu_feature[] = {
+static const struct cpu_feature __maybe_unused crc32_cpu_feature[] = {
 	{ cpu_feature(CRC32) }, { cpu_feature(PMULL) }, { }
 };
 MODULE_DEVICE_TABLE(cpu, crc32_cpu_feature);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-72-sashal%40kernel.org.

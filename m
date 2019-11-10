Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG7UTXXAKGQEJ4TG7SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E7EF62E2
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:46:53 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id o3sf8565598pgb.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:46:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354012; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8VZpOeUIIht9PgFJ25W4v8B2uvOv+BCEwifP5SUvmzvOZtpFKAEbIoGkCZzar5sIh
         Gcwvo+hywFX85OYdk1VdHY1+zIp/iYOczZiq2ZYYqzHJF7PcK1ZTri+P+j2+XAc+5G0d
         TrDTzGIu0PC4Xf6PIq1JEnMOLRau/xiy+J5wBCBwA8M/g0zvar0jK0fnz3AzSyfqlsSv
         tfo8hI6fwWnLg16zrHi7JYYS+YqX6b7FIvBtC9wFTPTy8V2hwIMzkCdBq0SVlZkIt9vh
         3qcYvpNZJwmIKVpuZ5+mtrM/LYSYEhPssiVGO4qdLWQ1hXqGHFuqtgES2cY63fb+35xE
         k94g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BQStsKTnNROJe6D/ktGkJLX0yrYjMrz3iT/y0EeLa0s=;
        b=R5yPfN3WgKST5fLOTpaRR1md7+bt2XcxMb6d9BTOMsGCTKFpvNETH/6bunjp9YXxWS
         uMgC/b1RMwizy0Cn0GCNQ2FFd3kyjLYIaiv1oUHArMU5h1Xh2v16dkDbWNBiMtGrLbKY
         7PSGom7ckx4MmR6Z2bQ690roocoICpUZQSNMbPHsrmVAlgdlh890HwmpcoC6sOBHCJ5z
         5KWKgs+KGwNs+5vl4LduwiYg5b2UK4A8XHz6sFzpMQtSAwlulk2v+itcnm5h/RCqXzOh
         SHkBnh2FI5YXQ/7Bpn6BONQ2BMUX3LIF/Hf0pvaLoU4C8M6a7XlQKama4XppGSAwwUPO
         6q4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iyP9k7sW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQStsKTnNROJe6D/ktGkJLX0yrYjMrz3iT/y0EeLa0s=;
        b=pVzRewnXw9ZchqutGMtoaMSiVdi6MaRjXA/GseRVFu68LjXOFfYFVWceGRxw236cm2
         KDxurm/XYn75cjNVAzFHsZ31Ls7AMGEua97XoiqQvukNvNMPhM/NOnH56qFO5V20KJxh
         yw1PTzWBTqxyuTKAafifVLhQJfHm+wEkmk2BrQIKHd4oru0Z67a+X3fOnORvuqMXZHit
         EPXjYNkasmLFodsIFfKxho1UNOB5ErkBn+U31jmkjV+C9FDUDw6VfVwmLUzY4vUTSfN6
         ey7ecanU5gPwrxX1zdZ3RFACDLohVLkZ3L70o+mqRGzu4AxLKgjzXWMzD8GNzKrT1fcD
         QLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQStsKTnNROJe6D/ktGkJLX0yrYjMrz3iT/y0EeLa0s=;
        b=fEiO56NKyHcX+1TkHWWtnNdV/bumOOEETkvnVpcZeReK76TpPaEGiVt5kdnmMO2f6c
         6JWCqE2uvVNqD8lb0U+eFhHzTfOCI6UPghaQ7GkyvEGh2/7uFrIE+w+meMf0kxRyBj6y
         bCYp0fAXqjI36cP+46WSJp/sk+Dj/4+LbUaW9BgClEhuTIi2uO4TsjIQl8Rbp0Inejax
         G1/uxv7e35RcQ2hhtauxjEfW6BfF6HxZ6krwUascpbsgQYdaIC92pp72VXzyTSOEtc0L
         +dcESigzZFTQdsojMzsxFS8yA9YNdY0K45yPZdEpXUCbbZ6HPMqsQM2seVCdYFWBExl5
         SqBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2v9Hho8m1qeYT+TWlTzBivw6hyzVbBWhqhM+ESUI5uWkf+Pbq
	6FfmATZZnTUXpfleX7yvQwE=
X-Google-Smtp-Source: APXvYqzhR5NWibHNX/tGJFMO56HOnu7qjdvyIIONs/1Fx+zpTLJRAoECu81HVq7YRvkQfk+72Lb7wQ==
X-Received: by 2002:a17:90a:f496:: with SMTP id bx22mr25334492pjb.101.1573354011926;
        Sat, 09 Nov 2019 18:46:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:216c:: with SMTP id a99ls3647909pje.5.gmail; Sat, 09
 Nov 2019 18:46:51 -0800 (PST)
X-Received: by 2002:a17:902:6ac8:: with SMTP id i8mr7173614plt.30.1573354011511;
        Sat, 09 Nov 2019 18:46:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354011; cv=none;
        d=google.com; s=arc-20160816;
        b=QbnzrH+4ZaXoKD2n7nW+kROyrw59KxJHaYTZpbsc9nB4cF4oPk0J4MC3+ySB2FaI+O
         Ltx5u+sC6bIWvpXkCA9AdpUFLAe1ToWqvtyLio5d6dNuVjQcZ+kY/3JriJZKEXEnYRzH
         m2CsC5vIRPups3dXGXNAzy4SUSUg701T1NGUoUCd0TpYghf67m2uqrj2Vu3y5faF3esk
         INTHIXUXau94V4Z1SMy09cYAN4/085+ZeOqH5x6TH9epYD0dirphwqr1UGdboXyby0Qr
         G5IeJ64UNgeC3nzgVILe8Gae6+molJoz2YntnzxBul/kdjospU4B2wyR6bkZEg8aWyGF
         6X+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tqWIn7RXaSlu9+6S1R9/7J2bVRPemwhikP9i/YGrsoY=;
        b=dZ27Oy587MxN9yWxyt7HbIc0zmjaagQxcCeLzgHN21ew7/ILGha3pYUqcZHCi9PGvJ
         6CZdSTRCMuF4Z0nT/F5ILsGGTgeJArVu1Z2lnKiJJLDElQy9fzE+6Fgj7+hU87nvGYLa
         uXE5pQeW3WhNeinH92K+GImU9OpyjWiXTzrzR//jWTu9DBjFyUDKKDn1E4j9GXzKt7aU
         KbfgULZNH7oG0n4hIF4rig0KC+1Bi/0wCZX6siZaO5ITdk0PYuN9q+nTDoKz7IlgoF/T
         LRQDs+X1ca5TqWOsyCgeIfU3q4uXHUZwI5k1o4w2HyEl1huBYRO5oaEtn7y4H/VkNEYi
         8+ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iyP9k7sW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si630440pjn.1.2019.11.09.18.46.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:46:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F64221D7E;
	Sun, 10 Nov 2019 02:46:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 036/109] cpufeature: avoid warning when compiling with clang
Date: Sat,  9 Nov 2019 21:44:28 -0500
Message-Id: <20191110024541.31567-36-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iyP9k7sW;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024541.31567-36-sashal%40kernel.org.

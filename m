Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIPWTXXAKGQEUO7CC2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D38F6346
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:51:14 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id b1sf3340247qvm.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:51:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354273; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROztphpQGjWYfQovAaivRMQYvvCR0fBsMhRZI4CLclbVLqJwuC196KGLllN8b61l4E
         6K/zgoDCinTRW6Aa+N2TPazIgFgg+nKFEDozTuLHJIHn7aV4sPFyrsTHihtUuaPwDyCO
         M1+pRSBzdkOiv496NFxko3mHUnGSObvUPPeqT6p5VnNtfJyAKCTWCKa+kICuDCuoW/rn
         PVd1WK/zUW/Xbur/WcQuLMzYIWfpyOQhyqO1whUv/YlYJ6yS/Jl12ZAyaldVKIc7ppq6
         lMj74zFs5W/ueCMHJWtbOLEvDqkWANxipHfcw4pknw/4KvCy41CtDfQH6hgcbRBo6r2z
         nzJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BOfgfpMHX6A3Sd0r++O1u5WKCdzivwOuEURhva7uwa0=;
        b=jiqc8KzN8/Gt/cFC7O2u90M7kmacmM9Co1deQWBBaPgZFo31FcCBMQZg4VJmphfLwP
         V2KAeRchN9Qc6J2wRFLl5QwGD4q4nvc/Q2I7iC+ihAMqu0Cxwdo2wlr82ucyqpSPxy2B
         kL8rWBdZ7wHYk7oclirqE+hAa5bX+58UDmt1N3MytvuMNtys9JAXNRwRC5Lr/SSSAEJj
         w/VJIGAtsdnxrL4jT3OTBmhOgqFzOXlifJmyQ3OquNI7/j9kAiXndVKym5+2qbeQcAr4
         bLBj6LYAym4STro8ioz8QPesuBbWWvSn66pl7F+qgrbV6TIGfIT3+11297fk3uP5ifMW
         /wJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZOn3ejnN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOfgfpMHX6A3Sd0r++O1u5WKCdzivwOuEURhva7uwa0=;
        b=UyvJEnle3c7OszfE6vN2rJcGxrbpKguct2RVY0yNeIRnzD/0VswgWR3HMidiTCB1Ia
         dMQ5ZhQzV43T4eZuVwwyWagiK8Do573yj/cETKthl1h1ed6ERmPbzs0VPXN6roTzd50N
         pSeXy2AEAI5NI4MNkKC9HDhjI1hF44ENw758BOIKgPW7hCaL/xIKIH7uR/pYVwMkePVR
         zfnc6yL7qAB2c0ijrmbWyVevBkzYnEHU1ugS1E1om0s8TqJlaE/cWuRy0M/KZlZgp/Ms
         too7Iidw6FLYm8XXFVtY2auG5I2Hadkesmat1Mz4cCXmhGZNmMASE9rX6+L94DvtQG2b
         qLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOfgfpMHX6A3Sd0r++O1u5WKCdzivwOuEURhva7uwa0=;
        b=Ue9zL6AuSo6xSveHPq3LJmZgOpDWKWc3G3BSFThPg0PuJbC0UPaXacUgKptftybn1y
         6BdvAVBKQMvsgtn+ExHrPJ4wfjn7spX1nq9kaLApcm4gZV++vY6nIFx4ZlP8e7KGiORW
         HPMysmPplza3ze4mI4itY1fmf8UZMblCbK5gKxCDJ8EYQDTEaTJipyqC+ndktoVQkBD7
         qsW9zZzGOdOHNYVb1AEvWT/oeuRxPY0iF7eA9+FOQ4hfKa+AdD6UeIoFIwx3ewfCRlym
         BGLtCxWDBPjqTfbG0+xT0Wk+wpBej6wJGHieLZ/h+fCnCRKHrZSwJNkqPpOPI8UsTh+t
         fD3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXayye3ijgPtD3o8K2t6D2A91wWnRdPy3qVOEemhfOo9LeYC59H
	IvJbhqhdba7JhNpdHKXVyzU=
X-Google-Smtp-Source: APXvYqx21oZ9n9EEGFJLMkNQdpxl9G1atZRTAVfYSalftybw0MUhZMKRkycfZK7uwaq7Ldhy1dZAGQ==
X-Received: by 2002:a0c:94d7:: with SMTP id k23mr17877132qvk.200.1573354273103;
        Sat, 09 Nov 2019 18:51:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:341d:: with SMTP id u29ls4325999qtb.2.gmail; Sat, 09 Nov
 2019 18:51:12 -0800 (PST)
X-Received: by 2002:aed:3ae8:: with SMTP id o95mr19416491qte.277.1573354272791;
        Sat, 09 Nov 2019 18:51:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354272; cv=none;
        d=google.com; s=arc-20160816;
        b=SCkNG9BxkK1OvOiEUB8a7LJcxHV0FILpPCgfJhct9TtOnouz5VeGvin5mr8dbes21E
         Q8zQe0pxIJ+kTBgM0h3QIWpGgH7dqRbZDOrjCbfDa3VVesGA9wLJzh5WKffnFgP4/PLE
         EYEfdjh8D0DxJumFSjWgHX07D2vF4uE6dg4Ng48OsXg2BX3Zt3UOQHRCbJWxoVQeDOA0
         iYHSVQuacOItmfwovVVNTpNKcx2IufWAmNxF4+iMw4iBP+6nOqgivhWeWYNlMWLs7YP3
         xjhKsT9Rq4t9WR1ghCikLLiPBcL581i53lU+UPZkQ6dJ7ga5UPNJkCCX+8JkjwsxqTF+
         prsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tqWIn7RXaSlu9+6S1R9/7J2bVRPemwhikP9i/YGrsoY=;
        b=sX4G8OJ5Z3o8aG/k1cZLlwnmgPqN0qyqgGt7UZpRKiuXZo2xkdjw7K8NGBalnETvHV
         XWAJrEwhUF44eJ8glCIldF69WNJv6rbjkR/vxjEAPImoihwJ0/eFx7n7YhhltcZBHeXu
         puq8WrB8Uk9Z8JU+kqWnAfCZphs0AeJ+kefG59+w8JLKBp8Avq/3K6WdnYNfXZBScMIY
         HedArduiOTouOYMAymYrWvUoU1hCshXtIIuXbrLNafuBo2/v/xOhU3qK4nR8gD7qe7uf
         0Nw1WmgdKpCayG7ibl+pd5osK4AMh9cAH50kHrA9wLW8xLmNUXl6eZ7j0MqCfdMa+Ps8
         yTKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZOn3ejnN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v189si649101qka.2.2019.11.09.18.51.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:51:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0582322594;
	Sun, 10 Nov 2019 02:51:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 19/40] cpufeature: avoid warning when compiling with clang
Date: Sat,  9 Nov 2019 21:50:11 -0500
Message-Id: <20191110025032.827-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110025032.827-1-sashal@kernel.org>
References: <20191110025032.827-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZOn3ejnN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110025032.827-19-sashal%40kernel.org.

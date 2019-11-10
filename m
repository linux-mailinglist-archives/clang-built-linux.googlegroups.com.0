Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHPUTXXAKGQEVIQ44YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D8BF62E5
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:46:54 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id w22sf8564445pgj.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354013; cv=pass;
        d=google.com; s=arc-20160816;
        b=W7jlGmFiW5+SfVMQWUCH52nQJGtQjH4G7ciq0FmdWflJy++RttMjGpyS6wOuN0QKu3
         XMbX271gT93fboANPflpvpP/ZtZBdIcKmVQCdeOrtsZeI9dKufkDraPy43aMWvSLRzJ1
         qjyejOqz4euIh6KAGi0D4tuzi/TYDgHfoWgrZFjrkwD4KmirT2sAX3g42SC2jJcPAeWn
         2LvutaDIfVmPXb0jdVFw39pMoBMtpBS2hAziJpRedj+BMpTJCkkYc/9mTFwl4XeFOcCA
         sa/RLnnB4rsmLHunx1SnNhmQnAhbVAAeDffQLkO0kfAMUbsLWdi14gjC/+LIZgRVQPLx
         uyfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y7zltWh/IEgvS6WMPSCt68UCblmsN366/S1b1k5xFxQ=;
        b=mOcmkLDYaH/YFmi28JGq5J/vKINSXY8iT4x15c/OpQ5UVm+JTFAvEN3+Gr6eib2lsY
         QOB963vC2B5K+aqXBRXbjP6daJH4qHmOCcQT/cirUdlbX+JqKXmy7smxbnfhpEQDAAlw
         U3Ou8FRPM2QHn11bd1cW+1I6AxpPA0VTs1oXVFyK0pls4J54AsTNlu3H9k15ld0/UyhD
         O4jXAroRX0UUIW7j0TQdpbXy5H4Qb/B3HEgftOtTylMDXVC4m7b2dD1LCidxa0obq0Es
         mJE2wP8DzT1iGTiasGYyr8W4RirrkxzHSKQhZQAwUpQNIFpoH/hQkbra0ZWOpREGp3Kj
         xzFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jz+NMqZS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7zltWh/IEgvS6WMPSCt68UCblmsN366/S1b1k5xFxQ=;
        b=VTSgKZcArKOmRcox505k281ID8Ax9sZCFDZ8/nLjKUZesjc3j6Xs7vv7y72alME+N1
         FLKYHzqvE+ITZ9eZNFOIeUs31rO68N8tbnfGfCHgkE+r3ft27OiQS5GDXj284/W5jF15
         5R0FkhVOM6GtA0PEai+1vKtHjmhuzheaJZX21kqJGNd+qrGS2fOhqaLjFqPHEJVsr/lX
         UO1lwhz7+MKq04VDqBkFX/UQ25pfrsmpKG9iLrlq56FKqPeoYDh2vRQmQQJZYGW+/Xl2
         uDKDVHmJfttSILrQXssUlvwgd6O0iuGGsKz5DYMfXOiCqtcvyZtrCUQke1FE0TpsKDRH
         qqLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7zltWh/IEgvS6WMPSCt68UCblmsN366/S1b1k5xFxQ=;
        b=aMwrlqYqxZxY8LSeR6nefZadFU9Hh+88EfJzo+hJfBfG6VEGSMkhFM8+Tie6k1n4eI
         C6Rg0fvlyLQkEXC/QmypiWZRmsxvF6/ayxc4Mf4DdA9EzDU8N+GuBCWNfrxKar2Tikpn
         zRl6FL9UKvy2JpYEXdJq6ea9CHF2fjIctmNm68DUJBR3/dhnOrwsrTnFrVveGvtOXc2+
         X9IgS0VfDW+a6hLwP2oymgXhUk6rXB9Va2MnXHRk3vo0Xno62CyX0clVsC5vMQ5GsvkV
         9MsrbIdfln4I3ftN0srqsQ9verIx7V34h/bmOWfmsMT3MPii324g43an9Hp1oyqxFUQJ
         R4gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXteUE0rKp/rLAj3nhutEPWmRqPiaYOG+rhrBoR3oKhSaH0u6dV
	DtJON4gyNny/qqn/5lokcG0=
X-Google-Smtp-Source: APXvYqyXFMc+DUsoNeDr6PNDV4+4PZ6+AeJJ2cBEcl2LjzrrfQfevq12i8/aFHyEuvLUFDvRLcXyDQ==
X-Received: by 2002:aa7:90c5:: with SMTP id k5mr11793095pfk.87.1573354013129;
        Sat, 09 Nov 2019 18:46:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7888:: with SMTP id q8ls150314pll.6.gmail; Sat, 09
 Nov 2019 18:46:52 -0800 (PST)
X-Received: by 2002:a17:902:d70a:: with SMTP id w10mr11758632ply.279.1573354012718;
        Sat, 09 Nov 2019 18:46:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354012; cv=none;
        d=google.com; s=arc-20160816;
        b=f4wL1BqcDTDwvmAm4EZLNqOElStttEyhgdL+uJse8SaE5N3WsOnr7DDC3S7rLZeAo3
         kHpy5tJ7+TTdWLJJdsS+9bsGcPZJ0O17gt5DA1PqOV81TMZENlwstwoYFEPqk5NVJTlC
         E0ZKL3qf084k8a2+pkj8nCg27HyAvQimSnbSfFG46sogiQJ9hmaGMqyRNW7VwZrwPF+h
         /kqF+8DxY/RYq1oQqe7S9QqMdo71aVYEeazzK+nWBgpt+NuBNBjKJePC2EluZ78UzEcP
         V55BZAmP/h0G2Re6YmTqihLvse5bBMNQPubP/LkN+oQ3FIQkG9nGJF/9gZKCOmY3J30R
         KnwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TCOMyFdtnuinH14Xtdmbu0eC+vR/x1w+gAM7rBdhsAs=;
        b=BkYcQIwGNaUOhyvB87Npk0GokI5ISXZkk3zPgZ/S5Bz2w0oRS6tNMH3oabMEh5+w4j
         3+ZacAZwJpC3WMa2hvm3QdTBNp8pZE3r/gcWhyIdXwn7YklHjzJv0641d6U8NedsjVt+
         YTE3TUhoyjrRlw8eV0bXC9PVIYYBDHqTp2ASwKfZBKimpUYLu5cM6CqYucaUD7VlOJNM
         7++LzdL15xb0f6qzJQLgp7NOtpy+CKXpfud7rKQs0EKmIgXyygKOs7FQ9el6CGz7lJrZ
         pZPqkVvIVNCimorATEbUgvqarLvCklyzZKdjLkrYem86CH4Tg0OuvtH91aBosUEW3Jen
         vCHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jz+NMqZS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u10si381331pge.4.2019.11.09.18.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:46:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A25EE21D82;
	Sun, 10 Nov 2019 02:46:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 037/109] crypto: arm/crc32 - avoid warning when compiling with Clang
Date: Sat,  9 Nov 2019 21:44:29 -0500
Message-Id: <20191110024541.31567-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jz+NMqZS;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024541.31567-37-sashal%40kernel.org.

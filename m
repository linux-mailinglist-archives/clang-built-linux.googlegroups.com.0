Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPTXD2AKGQE4SJBIUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C31A2AB2
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 22:53:55 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id w3sf5946056plz.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 13:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586379234; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcI9CiuqECGnxXCWjUEfPC5z/+m28+KjnsakRkMwZEuN50oq88kG1el04ZLdyWbsqs
         NQhc1wPciwb17knpXnmj6id16FK5wrOd+NNQmnANMcaciV2mev4V8m8PCmopi2d0bBTt
         c1aZPNDUR1OO5NFU9vYhq+kYDQgsjgm1UqyZmayzAqbRLbCCF0BuY0MSNjsTdBkZy24w
         PX7qzdtWdG9xwqrJzOM4H4MRWSob+eHLYJEEv90rBYv2ek4LphNGS7/tOncpBzDFN3Ek
         RnzAQT/ICYGNzv3Qejae3/J6f/v57oxb2xNZmoCChdexgl+ADH4r5Gr1ARZZl5UjKjAW
         XGxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Gd0A5Gk1LIb0MbIkfTqyO0dGuEN6pMLNYXe10svXN4o=;
        b=yCUGNChehMPbDoLYzsXCj6ur9ufOLspu21fiXbNME7xX2a4CQJQ3Piy7kViPOXt1hZ
         UacYVYCKD6wbxJ3RCM4sqhpwkpguiry5rot0BCGoIes+7mlHYDwrTXz9sZT2yqySF0cJ
         wQbLjhmcU8wJa5E8irCEbtnfD9b0gT+BhHeWkpCbGO0wB5TK/FqdwVS6SGrD+hOc3a90
         SCgSnOEN7aCN1J/bXRpqw2EoYqfIqaWZkxnIwGBT527g4aQ4vUGfcj10zemgzogoIGeU
         9pH/4ldHFoU/4/kYAfTIuMILvNDueve9CwAMr+AUyTa1NT7B59mEu7+wTfuGhynEPb46
         mTAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XW2/PvNi";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gd0A5Gk1LIb0MbIkfTqyO0dGuEN6pMLNYXe10svXN4o=;
        b=DMKmysUmkiCHuc7H5+eaOcAwWCVuBnGAZnwABzuvDN/KHTDMDxk4DJCVa7KLZuJRIh
         4sNbN6O4RoxN1U+zBR52Z0150FkUNzhizpzi1vyFcw0e+ut/PlO3GyzF0DvDgS5FXsI4
         7xjStWKmj0ki2cuGrcMh53QldUR2jC51/Kjbow9Qrbox4uyi0G5kHxjBDRYH0nC2GLsf
         q+c4gxPkfBthBTt2hoLAM8zsqeO7tUtg24vUAu5HMvZj3Jh2s36K5v56u5l5VGCeSGrV
         kSqkib+88o/dkhIvlgCV0xDxMhumWDjb30buEMiHFMAddybj2TNVxmpiAeOjBJtwNUH/
         U+nQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gd0A5Gk1LIb0MbIkfTqyO0dGuEN6pMLNYXe10svXN4o=;
        b=Ep9TU35VzE5oIFiLz/z1raqCulgX9es1xiIlLlbPGeKwvrBfBUvJ868BssT4H8EUwy
         vSgxmE4/v27dgA5COaSSo79DFL/3lqHJFNUFpJ+yQelyrsp/Oiv53SCG6BJMbD6LM4Q6
         42tcCujQuiLBpO5BHFjPpXNV3CJk2IRCNygVQQlmOqV+c/rHS8n7vkcfMeldPupDHzyP
         qMhbSRvpnebvxB7RNDAkWuHr8+XHLJHl8JzRizJigjvbX3u70U8k/+j+dPRD7/E8d9tc
         LH5tD81/3TLOfKugvdNdJPWpDFM34WZQ0ERRxFSfImSZWKQzZV9+axpI8BAi0uE6m+cu
         mvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gd0A5Gk1LIb0MbIkfTqyO0dGuEN6pMLNYXe10svXN4o=;
        b=IUVdgqbCibAOGrnUygxVLEBwuob0YCQnhp4XSdJ5SgIWI9f+dQujnUaBIzJ39C4wMM
         MWydOUldOU1xWdVeGTahtODtC0KMFz/L3rPCaFubm0yHHk6urqGWxTMs3Qe9tewu3vq6
         FHJd8vRQFEbeW8WhbWzgRX1wF841+qew97+Hf/KPb7JeqeYjTb0bD8jvjSQ2hanagMDa
         9HDc8zBPlnICkj2Ya5wwPxErEOfou7+tX1XJxODn9hhZ03qYv71l4oTK/g2Ec4Yxgl4n
         vtD0TSMwBa5S1kaZ3GDiPGhzMgnveo6RGPSDTw2VT/M26ziT7lwmrGMZr8cl25yzcCfi
         SsHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub+oLE7OIvp9VkRnaXnl8PxPC79ZjzXbkbXQyAIfTC74kiY8U2y
	5gIinNTir6bWJlEKtrC4zwo=
X-Google-Smtp-Source: APiQypIMy5f9EDoD7ONwKhOOSpt2j8RSMnenMzaUZP5JohETojuEiU0fNFbWjJfkuQIgWs8cnirquQ==
X-Received: by 2002:a62:fc93:: with SMTP id e141mr9336909pfh.282.1586379233850;
        Wed, 08 Apr 2020 13:53:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls5408970pla.10.gmail; Wed, 08
 Apr 2020 13:53:53 -0700 (PDT)
X-Received: by 2002:a17:90a:d589:: with SMTP id v9mr7425813pju.159.1586379233480;
        Wed, 08 Apr 2020 13:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586379233; cv=none;
        d=google.com; s=arc-20160816;
        b=JjSkl+SZyvBp0jxpH6m4h7sIV+mQresnd/MM5yIIYduh8lMwW7DWe/+NJ6Chrtccri
         dEhC8q6QWpxR2nDOkvlu5CprqwAl/3AdVgZRvLQ30Xegzl+7EcTY3GH/J+fUt/qfZcCA
         klDN4d04WT/gyDipLOdtYZX6JvypQUkk8cG1URuzDScs2b7b5FZO1hsyV39DvBxwUy8l
         cotoj9P7vOCepzL7AeHcg35OI8L1XOc7wKGJxMXfoqPtWDmzE3CFT+FMC65HL4IklV1T
         +mKUnfWIh42WRFXmFl+KbFs48qUmiemu+a6d90BhO5viEJnBeOlvm842wiQsbD4YCHpt
         soOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jfXAIkbDtUGinj6WrImltHTYGnIkr+5/g1NS9il9oS8=;
        b=DRULXYofhWDxxjbn+i++SmpeRF54PdKrwsggnHFliKFeEzFoDKro7O1jGP9Yc6AHD+
         qX0mlg/sAd15GZwAqX5C05XZK97Cm1nJ765Jkmt5+P+jjrVjNyeEQ1rYOhK3225DHJvj
         OhXrAi7AkmoMsCBxjfZ58TCS5WOPvcQRvbBTY+LkQmOAj5ietpztUVs03sVHEzAov3sn
         ONKxo47j3GaFRgLRpx4jQ8ebyuCNxMWyRrft+q+yX5CWkUH+6AhC5Iup9hTlvHAJmt3e
         uGTJYLhkl0rGOQg1vjap2oR5hJZNa3RCFRhhPr0pFvgXT3n4yx7JPN7tuxyikmJIsbuA
         H8Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XW2/PvNi";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id 138si758507pfa.6.2020.04.08.13.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 13:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 103so1872174otv.0
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 13:53:53 -0700 (PDT)
X-Received: by 2002:a9d:6452:: with SMTP id m18mr7180137otl.51.1586379232632;
        Wed, 08 Apr 2020 13:53:52 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id m15sm2055883otp.11.2020.04.08.13.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2020 13:53:52 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@kernel.org>
Cc: Karol Herbst <karolherbst@gmail.com>,
	Pekka Paalanen <ppaalanen@gmail.com>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
Date: Wed,  8 Apr 2020 13:53:23 -0700
Message-Id: <20200408205323.44490-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="XW2/PvNi";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with Clang + -Wtautological-compare and
CONFIG_CPUMASK_OFFSTACK unset:

arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
equal to a null pointer is always false [-Wtautological-pointer-compare]
        if (downed_cpus == NULL &&
            ^~~~~~~~~~~    ~~~~
arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
equal to a null pointer is always false [-Wtautological-pointer-compare]
        if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
            ^~~~~~~~~~~    ~~~~
2 warnings generated.

Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
cpumask_available to fix warnings of this nature. Use that here so that
clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.

Link: https://github.com/ClangBuiltLinux/linux/issues/982
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/x86/mm/mmio-mod.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
index 109325d77b3e..43fd19b3f118 100644
--- a/arch/x86/mm/mmio-mod.c
+++ b/arch/x86/mm/mmio-mod.c
@@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
 	int cpu;
 	int err;
 
-	if (downed_cpus == NULL &&
+	if (!cpumask_available(downed_cpus) &&
 	    !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
 		pr_notice("Failed to allocate mask\n");
 		goto out;
@@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
 	int cpu;
 	int err;
 
-	if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
+	if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
 		return;
 	pr_notice("Re-enabling CPUs...\n");
 	for_each_cpu(cpu, downed_cpus) {

base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200408205323.44490-1-natechancellor%40gmail.com.

Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBKNOV3VAKGQETW2HQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB888588A
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 05:29:47 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id f5sf4762603plr.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 20:29:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565234985; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVq3CSGedjxGFk+vDql7HGKngyWr9d1EU5kdJ7jsncFlRAa6KLh8jekJOtOTqQa5sm
         RnhxesQPrZwhlLpFDeG9ecT4MJL0Y6KYBK1RILqAsNepvSeIzNGgTE9cnbqK+g5L7NlH
         2s45jsytAG5dNe1x+SrWIV+XXhNoip1UN5EMFShIDGUwlbFfwtQVYALyeQSa+uDnKzgh
         4RgIMm+v+ftE1vQR87yXdD7aqGJ/DEyku1PXsGFe75goQvCz+8/nrsFyLYM1T7fA7kcR
         rzrfp6HjydH/gxEoyD4G52Mswglp+fhR6u89xahhC6hpB4pTe/0To9aKi8nmEaufdhQa
         QaMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=HO1Dn7qjxmZzsPZjjj3KGCMmqEYZNuvmp4S2uI4LmbI=;
        b=T4Ng5DlkC0QoCtBh8t+jXlQcYyS/3Fd3WU5KhpAWCtA1fxnIMpFVzt1nb/uQtvHrDl
         qla+dmkjNyHcobjQaEUPgizQLlOXVGiJHgH/bNcvXDaZ0V+kEU36cb5gZTop6MKTqdRO
         lA4pq8o83iCSRJ0TDkmBJm8gRrzRKD57a5VVFei8+l6NH8T6pm+8C7d6fhgUsjc2lVUS
         ngNg682PmJ5/6E9xXvYL7FUErjUw3n16oqdxw5HIgW2LBpNUcDQfgtIM7/JOOcCm4AEC
         foLW1uj4jpUZNIetRInIPcf2kr6NgyuEraGQ6MUKh51Xjbo+Y8vZL2exWK3gTbrK8Jn3
         hxwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=d02u9ahP;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HO1Dn7qjxmZzsPZjjj3KGCMmqEYZNuvmp4S2uI4LmbI=;
        b=OjdxpVCjSQlmUcuTAGe9OQnlnpUHeCNKQH+DoYURx+49W0CP9m9uV8cdEqapqnmPQa
         +niIR6WtBN6GifmlzG9VUFG2TPlDVGmpphofoYYsedo1Ik91k9Jw+pruw2zJI2pLy0Zn
         0dLVsA14laLuKM0sgpanOY+4Y/W8yfyjjyof368HG0Sn2GbjaSW+LHNbnAB4S231YW6p
         wZVnvCm7VXJdZ/MzIPHBV1Vpd9qcAD6apvleooQILxzXPd6wZ3nAzQKSlkc3hRX1/B3e
         LGXZaiUnxopgRVUJuDb/66HnkWbm3fRP2/XdI68I8Y/IKcAE7VNPXrp44lv/gNVXPbWF
         KZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HO1Dn7qjxmZzsPZjjj3KGCMmqEYZNuvmp4S2uI4LmbI=;
        b=P78HQ4ttTc3rZ7FH37DqUr0Gdmo/yxikQbRIhkBU8EEhwFJlVce1jm4kwhcD8YvKRV
         +1+1gxJNbdmsXaEMymY4vaNyoFMBawBzheZaB9k1pYCc1wDECy3TWur9e8zPpT90D4M6
         4wVi4VR9Actx1icotQZmtDAahChmCzp5y9VcdfeUicLW0Ci2n3HdbmIfhS/YUKuVn18L
         g84uymdbwSR2vqZhWwQaXytSiAjWVVGo8eLo+hkOJIKa7qObBwmTRKMihSH4HOCofcNE
         l13NH/FuYI4OeWz7UNVfy5MhYvF29KtKUKdUH0kdsiHplf8QBZP2ZvhxUfpiO4TR+Ll8
         tMnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYkjV3p7Gj/ggscEFrDwHPgAbIPWOBvhAdeutjJuwmCUJj1C62
	HsHAMw/sbGp8J2U9HrycQEw=
X-Google-Smtp-Source: APXvYqx/0GAdzBLyu3bFhHs6UTWsn9HcuDWCZIY1d1vab02MzDM9R3t27KUfFv7HQQr6iusInhpfsw==
X-Received: by 2002:a62:764d:: with SMTP id r74mr13495375pfc.110.1565234985651;
        Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:26ae:: with SMTP id m43ls325836pje.2.canary-gmail;
 Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
X-Received: by 2002:a17:902:41:: with SMTP id 59mr11488087pla.195.1565234985311;
        Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565234985; cv=none;
        d=google.com; s=arc-20160816;
        b=RLvSbZXYiyZD4Y84IGsazkSp/6p8XWGPpK6eIeqqp9LnNKN1iDLm6aOyDVes3Hlvnk
         9ljB5OItpUXYyzqprfZdXvvrkOe1+9t+Fxoz73+8L2+d6SKYOIyecsPtHTyiS+6dUzEo
         012RocYkJifHV6fieNfoZgLRWnG6fYPD1cWcdLY55SM6yj9GmV1fV1EctPzS4tQ3w1EO
         efXMfR/TEs7RPao0MVPk2XmpjokAxEm2Ti6hvlwUdqIwodg8An1PeThe/rmTs1geQ4mr
         paetdhnlUPzf5aVwN1oTbfGVkAz8TfSwQybsFQPNp8LogyzYGUt2s2Bz6riFo/MeYaxJ
         Qwmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1wKcnipXNqNm/RJ8fKQegUpgi0jV6GjqcI6lqswIMYM=;
        b=XunI6Vq2oXleR13K9Huy+zYG+DIMrZQFj6PnFDL+RrRGNeyJI5DKR3vObqVAYcS7Oj
         KFrfUUh7YDP4QGjo6TyVIr13Ryerb0fCf7q4OVI8wURYDtqlyJPg8In6hZzXROdEhvgS
         52FYT+z2ME5WaLx8dhIXRuuowCKkIrZte+wBX9xmY3yBwyZ3sIDQRGJE635FLANKxiGx
         JtMWSZFT1E+RmF5rY4zWj4nWwutQAXUrEhfWnlPQSUA4VG6XaO8MRv052iwSG3b+mzDL
         pD5ysQ2ALMEQ08bFluAy4a6SB/6LUCjYin2ZfOrwRRjSFULQs6OCsXxK4yl9zwf8HgnL
         Tj0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=d02u9ahP;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id m23si3470580pls.5.2019.08.07.20.29.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id r21so67741321qke.2
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
X-Received: by 2002:a37:4043:: with SMTP id n64mr11669115qka.392.1565234984850;
        Wed, 07 Aug 2019 20:29:44 -0700 (PDT)
Received: from ovpn-120-247.rdu2.redhat.com (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id c5sm42466663qkb.41.2019.08.07.20.29.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Aug 2019 20:29:44 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Cc: mark.rutland@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH] arm64/cache: silence -Woverride-init warnings
Date: Wed,  7 Aug 2019 23:29:16 -0400
Message-Id: <20190808032916.879-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=d02u9ahP;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
VIVT I-caches") introduced some compiation warnings from GCC (and
Clang) with -Winitializer-overrides),

arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_VIPT]  = "VIPT",
                        ^~~~~~
arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
'icache_policy_str[2]')
arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_PIPT]  = "PIPT",
                        ^~~~~~
arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
'icache_policy_str[3]')
arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_VPIPT]  = "VPIPT",
                         ^~~~~~~
arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
'icache_policy_str[0]')

because it initializes icache_policy_str[0 ... 3] twice. Since
arm64 developers are keen to keep the style of initializing a static
array with a non-zero pattern first, just disable those warnings for
both GCC and Clang of this file.

Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/kernel/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..397ed5f7be1e 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -11,6 +11,9 @@ CFLAGS_REMOVE_ftrace.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_insn.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_return_address.o = $(CC_FLAGS_FTRACE)
 
+CFLAGS_cpuinfo.o += $(call cc-disable-warning, override-init)
+CFLAGS_cpuinfo.o += $(call cc-disable-warning, initializer-overrides)
+
 # Object file lists.
 obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
-- 
2.20.1 (Apple Git-117)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808032916.879-1-cai%40lca.pw.

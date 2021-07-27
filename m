Return-Path: <clang-built-linux+bncBDG5FNNX5ECBB2VIQCEAMGQEHQTQB2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACD93D783D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:12:59 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id o4-20020a2eb4440000b029019a7d06c3casf1923155ljm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:12:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627395179; cv=pass;
        d=google.com; s=arc-20160816;
        b=niMrqaNnRwpNbR+djtLlCCnGYH9mI+w3g+uDRcOyYQuyUb1AhY8gZSFfNeqbVIPQE+
         8kSw12NQ1Ba89bm4dVHGxCE7aNUyyoKnk2tYqz7Iois6arN8/DbcNTNgv4nXvOr/VoeZ
         lJguPS7XBWI9f6dFLjc3x9i+1FMwcPiACkwqOPRN+lvdntjCY0sKEUapi0iHarTN9EcL
         YtWjqrAQrCay23u2U2rK1tDoXN2YsnTIwk3OiPfryZ6AaAAT28ErHUyZ69bxQ8tY6b/t
         uBtt1+ndVdEIsRt9C5+S0mH4kKp2jcFyvAg6p+vRz5mZiM3zk2UjKMtJihURLQtq7BNa
         ElZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=N8xZFhUydqCaAyTmY9BrKQU7JM9rcNnLoG1PPxGzkG0=;
        b=VE0u55vLMCDHdBy0Fwx3XzNUHTE6QhhleT072aOktdYWZDu3OxsA/ZiLfiORhXILrg
         uabUzRcbW/+F0+TI0TJSsQg+ydTv8hBePSeIe/hHkT2abNmfnFbDLnOeenzQLd/Rbr64
         38q1NYeDitgOWodIhQNJmbbfJM3SXz76CgMJldl+sD3hn/lDZDAxUGnbTWtWZ6JgrgO7
         w5gDym2OCoODRqYbIrA2JEjkpfmziUNoG6tp6rUmOmbhFonTgKNN9OSIU+f7uquT+Yho
         2oVbwp7bozG18q6JoQZQHXcu+doqKVT1+wATbZjH3PRLWCHS4bPmRac2RaG2OkJFm2nI
         2JiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=B5jXowo1;
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8xZFhUydqCaAyTmY9BrKQU7JM9rcNnLoG1PPxGzkG0=;
        b=A55ot/a90xRsjuDHar7w7ct1sahpymvT/Wyb44qCqgU2AxKOS63j9D/+JE/LDMXJOt
         RZ5u4ozfuh3LkTkJ5RsIKR/9jmyOBgz04O6bw1851tseIgcDVntMXei42Y87YRPVemVU
         IDMuLPhT8v38vOwF9Zs8k3EBXf2fpb9fVuRnZVcJmWcsyUiEXNDcySEJdd565qiYmQPg
         PMUBIWb3tIuBWJ0gzEqfg5Jos1Zpia26f9PIcGpmh/UO3V6lJMdp48SiWOQ7nE0fCNsm
         Wvyae2M4jY6OcDRrOTqB74xe2IAferYuWFwijn6htc8u4KFT9bLdUqXI4ymrU3M5aqxO
         qN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8xZFhUydqCaAyTmY9BrKQU7JM9rcNnLoG1PPxGzkG0=;
        b=oj91qc80YpfBNF95olWEEOAxRydQgCsCzIiMtDNziRSKRlsXBL2wOACxK/YSQGfxsE
         5gi76yUaiHdoeiMD7b8aijP7ayEsIZX0Fp4Wt6Hw+R81GSzUeHYDdfWBozvjgv8VSp4M
         ixZshebC4YdYjZd0/hFz9O0seAzPC6jl/GAa0OlPWMyyPwpLJL9Xz6IPHVCQqSxNCf1x
         x3qpyZvi0CZRfmXH+Q9GROtCK4Afu/ygbLibUCiAX9CkoZ8QqPcSW7hdjCfL1ti+NNOc
         9yrCHrWWHV25ZzEvwfExW6Sqn47pDcmCRd/BLwRngI+Swlmp1iJ8AqRfvILag+HX9FMX
         pdoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BQAqerfOB4UFtzSxqyxi2eIAt/CWDA1d928e5BpFIuyd/kHdx
	IEu3l9mxujLJl8wP4920KwI=
X-Google-Smtp-Source: ABdhPJxPew3VuBM/fY3O757Gmc1Rs98deNvuWnOivSK2HeMlmzeQpfxTrT3VeqxSULXvSJDKlOuPSA==
X-Received: by 2002:a05:6512:401a:: with SMTP id br26mr17341262lfb.236.1627395179214;
        Tue, 27 Jul 2021 07:12:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2a85:: with SMTP id q127ls3367875ljq.1.gmail; Tue, 27
 Jul 2021 07:12:58 -0700 (PDT)
X-Received: by 2002:a2e:4e09:: with SMTP id c9mr15578682ljb.11.1627395178182;
        Tue, 27 Jul 2021 07:12:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627395178; cv=none;
        d=google.com; s=arc-20160816;
        b=aEehtEhpjH69pjEgSaIk/q9F2BEAWqsub8b/5bsHYdyYZDkRu3tSDRGZCj7gZXiHjn
         EsZvZAmRUHK2ckWBUWpd/RPF/R1ccGmYDenxkItdJwigPHn/eA2Buqhy/wwX6k2GUNt+
         Z2lQ6+3hCmGcN3TekCN+KCATiuG+PEpYhKVWG4Vno5iAKwd8At8s2gUc3D1JBFuKWuI8
         YrO6mCZuSXjAZtt74MDfyXITPEnehHFa2axlpZoZPtm+XNX/Wv+oIA/RKB0ZlUSvHEkM
         D1G1t5FhBEAiOAuosCBLrdQiFCnlmnN0tmWbIIEfmFBj2plAjpHszW/GRUX1I/7T8EYZ
         fiLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=qwa+xoI2CDwZCXWoP75fryBIWWQhf6+Djvh21ehxk/s=;
        b=AV/6atNoA118HY+K0KiyutebrP1iAZj2P1jEdq7Uk1p/UTsG/aMuV3lAw2RacsDBu9
         Et3HxsAyNgaJ10+1xP5GFV/m1qxW2Y6o1kZZKGpqv39tkukyh4Yo8jXPtzf2RFVPpcd0
         JM7WlyPSWBYeLm/wjgnz4F+8OC0UYhqJlOK6xDQfONVS8Lax+aPkjRWIeIZV+KMvLi0X
         5qYi/HjQrBDPq5l3RrAlpb2sibpLHdEMvP3w7zUwppSko5AsfX5VUGZDDdRglZH+buru
         Gd6v/5ZtZUK//RTBUbWPjxYL6TsyaafMCOQi/fLal5UNpNGxRtfSdeolWwZ9Zzvk2ULp
         kLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=B5jXowo1;
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id 14si168895lfq.2.2021.07.27.07.12.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:12:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id z4so3517688wrv.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:12:58 -0700 (PDT)
X-Received: by 2002:a05:6000:1b02:: with SMTP id f2mr20915877wrz.274.1627395177949;
        Tue, 27 Jul 2021 07:12:57 -0700 (PDT)
Received: from localhost.localdomain ([89.18.44.40])
        by smtp.gmail.com with ESMTPSA id t1sm3403912wrm.42.2021.07.27.07.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:12:57 -0700 (PDT)
From: Pavo Banicevic <pavo.banicevic@sartura.hr>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	ivan.khoronzhuk@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	matt.redfearn@mips.com,
	mingo@kernel.org,
	dvlasenk@redhat.com,
	juraj.vijtiuk@sartura.hr,
	robert.marko@sartura.hr,
	luka.perkov@sartura.hr,
	jakov.petrina@sartura.hr
Subject: [PATCH 3/3] include/uapi/linux/swab: Fix potentially missing __always_inline
Date: Tue, 27 Jul 2021 16:11:19 +0200
Message-Id: <20210727141119.19812-4-pavo.banicevic@sartura.hr>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
MIME-Version: 1.0
X-Original-Sender: pavo.banicevic@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b=B5jXowo1;       spf=pass (google.com: domain of pavo.banicevic@sartura.hr
 designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
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

From: Matt Redfearn <matt.redfearn@mips.com>

Commit bc27fb68aaad ("include/uapi/linux/byteorder, swab: force inlining
of some byteswap operations") added __always_inline to swab functions
and commit 283d75737837 ("uapi/linux/stddef.h: Provide __always_inline to
userspace headers") added a definition of __always_inline for use in
exported headers when the kernel's compiler.h is not available.

However, since swab.h does not include stddef.h, if the header soup does
not indirectly include it, the definition of __always_inline is missing,
resulting in a compilation failure, which was observed compiling the
perf tool using exported headers containing this commit:

In file included from /usr/include/linux/byteorder/little_endian.h:12:0,
                 from /usr/include/asm/byteorder.h:14,
                 from tools/include/uapi/linux/perf_event.h:20,
                 from perf.h:8,
                 from builtin-bench.c:18:
/usr/include/linux/swab.h:160:8: error: unknown type name `__always_inline'
 static __always_inline __u16 __swab16p(const __u16 *p)

Fix this by replacing the inclusion of linux/compiler.h with
linux/stddef.h to ensure that we pick up that definition if required,
without relying on it's indirect inclusion. compiler.h is then included
indirectly, via stddef.h.

Fixes: 283d75737837 ("uapi/linux/stddef.h: Provide __always_inline to userspace headers")

Signed-off-by: Matt Redfearn <matt.redfearn@mips.com>
---
 include/uapi/linux/swab.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/linux/swab.h b/include/uapi/linux/swab.h
index 7272f85d6d6a..3736f2fe1541 100644
--- a/include/uapi/linux/swab.h
+++ b/include/uapi/linux/swab.h
@@ -3,7 +3,7 @@
 #define _UAPI_LINUX_SWAB_H
 
 #include <linux/types.h>
-#include <linux/compiler.h>
+#include <linux/stddef.h>
 #include <asm/bitsperlong.h>
 #include <asm/swab.h>
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727141119.19812-4-pavo.banicevic%40sartura.hr.

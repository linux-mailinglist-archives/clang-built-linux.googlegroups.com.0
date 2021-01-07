Return-Path: <clang-built-linux+bncBAABB3H73P7QKGQERGLUDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A68F02ECFDB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 13:34:52 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 25sf5918507lft.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 04:34:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610022892; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1p8LdM6KzyY9Fy9BkXm0Ucz61jEPkgpSgdOPLF9ADOEZm9jYgWggpZzC31vpkpkNf
         oGCcWmBdLb8wUVQX8X90CldmEr2fhouCz7OHwdblvgbN6Hnzi8xr9o+/DD1YLBqzwGJV
         ujlNLhuZ8y3PUJbRKhcGZZ0mtT0eTGB6g+lSsLMsaNuhQgsFmYAHZJxAtTVvYjaEmwYm
         7kf2/JM0TU3hUrOkVnEZTB98DYeAjCRT+GdITHB7qP0ggZk94h+fhJbg7mB/hO1xMrbw
         KnRMmrOq9ti526NAjCIZQBL+ZpBU6cyYJyYnANTGZHDZqJmPlam/K1oiwYEpn/177AM6
         KoLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=CoQ2hcAKLIl0cW61Hn228Hxnaud+ffJMTlUksdqorvA=;
        b=jQBGbpj8O9t6IOy3B+2StsXRC/Imcj9SCb/Gbcj82P8TVJ+wmptvxU7P3tfFvOV2Yy
         VaCWKGl14FPDsFNLO/RVREkh0jGiiviVmfu9GALBQA5RsHF14setv/U7EQaEth/LYDgf
         op1f74JH17HGbIPl2ej8q4AH4+6vvxpXwu6CKEjcvqduXxIi0s8EVM2bWpHL4f/F7vf+
         azyxmpkGIo2XwfpN1xB5+aJPCrKXiEeVJpFCar4JEcO+ys8Qe5MaHSKOA6DUVahZNHXT
         aImoqlImHDSh1O3jAAOazKu7+2Pk6tLQO+o0p6v9GTQV/LcaDJDlLpplTpMjgetJe3C3
         6+zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=l5GVk4sC;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CoQ2hcAKLIl0cW61Hn228Hxnaud+ffJMTlUksdqorvA=;
        b=oB/PLAiB3kWHENgeyOCcPrUPT6v9DPTjRc9IDLltmGjST1/G6pAEcKN1BLAwfayWre
         qZGxTIlegYeE73pg//cREAHIWX+XEjypL8dWcSScbBWbcPjmxO2qWsxIziJzmBH8XJJW
         8379hFP9qv9JoKWesAH01lpqrbTY3zOVViiaM2rj+5YKG6AnDmkD7NOgtg+HtoDC7HwH
         SYDvLep0lSTHJh+uMJ39m5LCZH0NgWT1a8PRoju1alpZHWVrdFOID9dd2xJI2pIPzsVr
         vVdGMQnPDeZ+84kZV2AVWAS/xIQHF8aPK3Gcd0FhjXCEKzci/eG0z5Al4H6JBldIgJ4s
         3u0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CoQ2hcAKLIl0cW61Hn228Hxnaud+ffJMTlUksdqorvA=;
        b=ne3CXZoXPap7BvyYySKnxyPb+MZKAAqNzYaNhhyBKUYpdPSOtLNcZHl0pJFaNN/YYN
         M002mIifmaBbOwFfNTYr8kg6+AC6ZqxyB+rQQHir9ntubC7COzIvKqWtnPxR8njfrFtf
         in1saj3ghmhI2SE2qsnc3cshMloWd1QOiDM8I09jofNgRl0gkS2/1PWkDDzzvJva5ISy
         suFgyegz0QCcvZMYh4tEU70rROkY638NwPxFMfiWS6dIdj1ousd5PNI9FT8tveMj4pXm
         JnajWADsRSFKkQwY2C7UNziKQC5NZIHelby3HJkBb12lwWwBWFn2FE7ZaH20jQ/+myjP
         FdeQ==
X-Gm-Message-State: AOAM532Go8qIH3QzoI2Lt1TuXPslhJbVMlRLqM4uL1FP8zI+EpMDPb5W
	JIRriJYTpJOsD8RIJxONrUw=
X-Google-Smtp-Source: ABdhPJwPZ8ilP9juoTinTbXIa7aX9LRlc+rZ8UlMZIOxmoXjdgCkIMj8hkfb1N5o4huLRwHiIC4gkw==
X-Received: by 2002:a2e:8e62:: with SMTP id t2mr4224011ljk.463.1610022892250;
        Thu, 07 Jan 2021 04:34:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls323747lff.0.gmail; Thu, 07 Jan
 2021 04:34:51 -0800 (PST)
X-Received: by 2002:a19:2390:: with SMTP id j138mr3765245lfj.294.1610022891478;
        Thu, 07 Jan 2021 04:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610022891; cv=none;
        d=google.com; s=arc-20160816;
        b=Lg0Vi2wkzddYlAKCtOHfzdyBI4gTrZLj+OE9+Cj4BqDkLGg1Pz67aCmObXTT4UtmCz
         1QOGk1WvgrDhQLxnFP335K7ChSrQrvVeGQqhW9ahc1gqUYyL/TB87+A9pNkd6zJfhfbH
         7FlCfHM6T0RxbEFTdriI0Rnq26CvuNuQ8qI4Bpd/kNUrCaMa09oiGCHP3zSd3DKCcjxo
         zm8umy1/ZYR7tlIesKZ0PEMdM8jRlPOAbo3DhvJFtCf3KSwNJBAOv1w+FnA+4cschbMJ
         Yu1HCirtAnsO6K8rDDaQZq33y/JWLZ/QJSWb0s0R9zsUtP0QdKq0X01X3nOJhQbhp6m+
         Q4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=Hhk9OJTluJ5KWBmdxz+W1q3+eakKWb3hNy44poTwuNA=;
        b=qSHE4IzTubLyWF3gJP2ma7i64JSZohw1YRE2jW9nF3slfVT9TS4+jL8FLYC5iBWr5K
         EdZ7sZm//vZFO2OT+rbCTu2oiIskY1Gg4eu+aoOEkWbOKP9rRos4WMdNurOJ8NMbeUXj
         o5Kn/tKq8v/Xpw8v1X272tMlbP8FOePechACQNc+sk4ySc2wDOZpAXNIWtBjHJBMuYrU
         07BEvo/L1LB8PjB3RDne1T/Vw9hlMMVlJxXCb4JNbJdJH3wp5B0Hj7h7JO//gC3kkDvP
         kXNXJp/hk50V3PZ3+u7+3I6muGpO4zc0kKiRIwqk9rtj2+3z8IDX1nH9pRKumftOKCRV
         pJBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=l5GVk4sC;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id r26si251931lfe.8.2021.01.07.04.34.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 04:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Thu, 07 Jan 2021 12:34:47 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 1/7] MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
Message-ID: <20210107123428.354231-1-alobakin@pm.me>
In-Reply-To: <20210107123331.354075-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=l5GVk4sC;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

MIPS uses its own declaration of rwdata, and thus it should be kept
in sync with the asm-generic one. Currently PAGE_ALIGNED_DATA() is
missing from the linker script, which emits the following ld
warnings:

mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/kernel/vdso.o' being placed
in section `.data..page_aligned'
mips-alpine-linux-musl-ld: warning: orphan section
`.data..page_aligned' from `arch/mips/vdso/vdso-image.o' being placed
in section `.data..page_aligned'

Add the necessary declaration, so the mentioned structures will be
placed in vmlinux as intended:

ffffffff80630580 D __end_once
ffffffff80630580 D __start___dyndbg
ffffffff80630580 D __start_once
ffffffff80630580 D __stop___dyndbg
ffffffff80634000 d mips_vdso_data
ffffffff80638000 d vdso_data
ffffffff80638580 D _gp
ffffffff8063c000 T __init_begin
ffffffff8063c000 D _edata
ffffffff8063c000 T _sinittext

->

ffffffff805a4000 D __end_init_task
ffffffff805a4000 D __nosave_begin
ffffffff805a4000 D __nosave_end
ffffffff805a4000 d mips_vdso_data
ffffffff805a8000 d vdso_data
ffffffff805ac000 D mmlist_lock
ffffffff805ac080 D tasklist_lock

Fixes: ebb5e78cc634 ("MIPS: Initial implementation of a VDSO")
Cc: stable@vger.kernel.org # 4.4+
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 5e97e9d02f98..83e27a181206 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -90,6 +90,7 @@ SECTIONS
 
 		INIT_TASK_DATA(THREAD_SIZE)
 		NOSAVE_DATA
+		PAGE_ALIGNED_DATA(PAGE_SIZE)
 		CACHELINE_ALIGNED_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		READ_MOSTLY_DATA(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
 		DATA_DATA
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107123428.354231-1-alobakin%40pm.me.

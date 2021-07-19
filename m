Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBQ6M26DQMGQEAP63BTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 987E43CEDE9
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 22:53:24 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id k13-20020a9f30cd0000b029025e3e26edb8sf9399840uab.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 13:53:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626728003; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqkYMQJWO9xJbFRqDCLyZp12I+Xwai4vBvF6OIc6n8vDso6QnzyfPho3CB2CBpSXc5
         ydW6c4QKAF0hHDdVGmDfYxYyazvZsS0AiHWUAdSeqs12Wdnkpg55csXp3PvTX21t9bzd
         ZZY8kDbzGAekQeBr/t2TeXBai3HQb8HpAHOSHw+cFf772cVmRawRT3dCWg6IDkd6bDPZ
         XvVx9Qgg396sdnuchmUqv/MGdKskbiGNo59YoOeAthYUBQfxa8KUgAkzHspeOIczWadd
         EAncEyLO/eESpzEujRyzjRJb64m1eY0FPJ64SjVMbxnoPra9t8ohnYfCj03WGpPtdWVz
         cHEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=HwxPesOSerMFohY70iUvkqV893t8plonqUH+s50VhyI=;
        b=z09A1rT3YsEn+nrFU8ipfpD1FFbkSeEEegioh1IF8Prk8yH4FxAdCGL9vW9kh0urv0
         FhZZOd/VZkj3FkUhSYjZcyab/VihLCagGyOycw/7hh1zPS02Y1jvTSc6Jw9MHGAoYHmE
         MoK7Wmcm1u7pnP8FSSRjt3K9thR2W4AgnqteMpuVRT+e3K1KhCZ1nzxWCImsS68O4A9v
         5FgCXj5Jj3z93bXCljGups6S9VfkgT28GQMlPHBv/TYXe72gPYKUbl3okFqWf0fUOayG
         aE9pBPWNytzJO/3TSMnAgMnwCuhM658e6xyK7DX7OiyZWyijdSjDAhBvRkWPBCpUq6Jm
         455g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDmv9ctX;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HwxPesOSerMFohY70iUvkqV893t8plonqUH+s50VhyI=;
        b=QA7VtwKBvBALyFYZhEgAwPGDOHXWuWr8hQwjlsUjobfwkEBw5uEI+1GMj5jgupzjDG
         HUS0JUwSly24utw0S1sLSZ0Hq+OnYLcwjwnn2w/eQIwOajS8bKq0JyThAem48y5NEFqV
         fBd4BYl38ls+x7xij4/ttzrLwp1mvrquy5UfuX6bXTB5lS4fu29h8UsOOP1/TAk19ZP9
         X7IKGY4oPcaMCP8mbiJMgLRR/2z4eaEWvl+R7Jh4dbFdXklazmJZiFifw0LPC1rfq/XO
         2QIXAqgRyAppQUzriCJiZztkQXGKy0l0Yogl1e4eqX0Z3jFlO/TDKZsYuUdMNqDFH0fi
         uDBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HwxPesOSerMFohY70iUvkqV893t8plonqUH+s50VhyI=;
        b=CDuWKwSmkLjmMLMK//snYLNQXfpzgiphLpWfFvRU3zrI/ZzMgwyO7UUaDOcKsRqM4L
         Y5wkGT48x+hWRslNefcsKgb5ZqNe+f1hPKJiwwh5Nu20FDGnzcVJBEvIWwJmJ2nhaQGi
         X4LQnY4kOgcr+XAFzbAp2sfzLZTXky5jysK7ypLr3z01vewca1ZzdYrOc93aBAc2fSf0
         4xe6Hh8YEcLGTMWpC1KfaAikh1XaL93ayFvymTGaqyf2f6FZGUqKIGBmnFHq9yUmr+dl
         Qo3Au3HO7FMVjrua98pgmlEnpLaO3TPh9czWEIQf8o72F2XgiPgaECFgooTEI6H3aepY
         1h2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HwxPesOSerMFohY70iUvkqV893t8plonqUH+s50VhyI=;
        b=CWEAN+huxVqNbaSyOtj3B+EJGBTBNv+mnxPolsCUZ+L/fz+53LNSYH9kOHDWvkQ5bp
         4FbQtPwEc+5LG8KD/tfi0/ucE3E3La9BG9A4l/XcIHadfN98D8TUKWHaqBmIioI6tjlq
         +f6CwyNXmNsia6weunUJAU1+cUyy2620ZIif2YbOoOORxgIhDg+TSF75z/Xlb5hz+IB6
         db+QoxC5xRXbn8nab2ZcQJMbtQA8eJpPFmYkT8HHw2DAa1P0gMhU75/QwDVaX2BiCZZQ
         jm8LFF9wXmpm1duGQxSv4djT2Ddf0UgDYiBNe1hSzKoC8xYQ2zQG9uq/raqfRvbtox80
         5qCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QcaSdiVGGrCyjjbMqZ6IF6OPDSf8ekCHlQmwiBgLFfuOobcMJ
	+jCCxkEKHZwFdmHS+0spYz8=
X-Google-Smtp-Source: ABdhPJyoof1rxZS8yWQXt8+vDESkcQn9Earhvw7BHD0czrM2sy2OY5UZybzb5uhUSMuDxLk+ubFhbQ==
X-Received: by 2002:a67:c988:: with SMTP id y8mr26722770vsk.46.1626728003435;
        Mon, 19 Jul 2021 13:53:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6996:: with SMTP id e144ls5632957vsc.6.gmail; Mon, 19
 Jul 2021 13:53:22 -0700 (PDT)
X-Received: by 2002:a67:6d01:: with SMTP id i1mr25668821vsc.15.1626728002926;
        Mon, 19 Jul 2021 13:53:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626728002; cv=none;
        d=google.com; s=arc-20160816;
        b=QXefOpCrm7bd5k2zw4+vri2kLi3/jWD7/qJRSuzb9VYQ7fi20/X8q7ze5SnwdxV1OE
         /ASvT1g8GMwHlXSlchOTRtCrB3yJCjxGfJ1XEKyjoYJA7FcldA5VrtzvZHEu8qMKSega
         H7ZURqiwX5X0Wqd5LtI1Xr0HqByvJRCgmED1o0xx96+bPv8dIRvM9xAODnYXF/YeK4ES
         TngXTyW1V0KCzxIZQrK3GXB+fZ18heTivqpgqRNmL4rWX38u0NgeJdphSTLELe5uI9sy
         LwmvihawE78Dz+NKjZIRKqVQxDBaB++aQSqO/cxI/Elna5PkC+AZzN7PCGFEuZzY74gy
         rM/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pdqaR+G8inJJm/OX6ujTKrMpRjVqLINMc/k8jQGEix0=;
        b=VHoJrDPMdm360tx0e19gcGExgMKDSWZQiM/yTKpUEeh2qT76aGzIJSdVL4bL3hCClp
         KQHmOctY/NPVRMwkkjybMNMGHmfNoDGok7WLDGn5d8S04JnLeSgeTyFQJr3UnmR6yQ+v
         n+Lh1I/B9n1LMqFlgAI/0SGrdXJWpBfuvnkA6YWHFgi88S62DipJApWoaAoD5YBXlIpI
         AnY7WVBwiWA31orUMGElmicNxSMiHVjjhDOTy4uwr4Rc3jbBHmLeN7DbU7S8a0KPEVyH
         JHNh7VM0Y45K3ahoas6lDL3NHGXYY6SfbwZdWl0kGf1BfXKBvyNWeTQ5OuIUNjvUZb7t
         lnkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDmv9ctX;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id y123si1865672vkc.2.2021.07.19.13.53.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 13:53:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id o3-20020a17090a6783b0290173ce472b8aso503033pjj.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 13:53:22 -0700 (PDT)
X-Received: by 2002:a17:902:9004:b029:f0:b40d:38d with SMTP id a4-20020a1709029004b02900f0b40d038dmr20829840plp.85.1626728002167;
        Mon, 19 Jul 2021 13:53:22 -0700 (PDT)
Received: from localhost.localdomain ([2604:a880:1:20::1f:7001])
        by smtp.gmail.com with ESMTPSA id r15sm23940924pgk.72.2021.07.19.13.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 13:53:21 -0700 (PDT)
From: Wende Tan <twd2.me@gmail.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	linux-riscv@lists.infradead.org
Cc: Wende Tan <twd2.me@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/3] RISC-V: build: Disable LTO for the vDSO
Date: Mon, 19 Jul 2021 20:53:14 +0000
Message-Id: <20210719205314.1023455-1-twd2.me@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eDmv9ctX;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Disable LTO for the vDSO as done for x86 [1] and arm64 [2].  This also
disables CFI for it [3].

[1] https://patchwork.kernel.org/project/linux-kbuild/patch/20201009161338.657380-28-samitolvanen@google.com/
[2] https://patchwork.kernel.org/project/kernel-hardening/patch/20201211184633.3213045-15-samitolvanen@google.com/
[3] https://lore.kernel.org/bpf/CABCJKucpFHC-9rvT7uNF+E-Jh20fz69zdO49_4p8G_Sb634qmw@mail.gmail.com/

Signed-off-by: Wende Tan <twd2.me@gmail.com>
---
 arch/riscv/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 24d936c147cd..4535a77792be 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -30,7 +30,7 @@ obj-y += vdso.o vdso-syms.o
 CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
 
 # Disable -pg to prevent insert call site
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_LTO)
 
 # Disable profiling and instrumentation for VDSO code
 GCOV_PROFILE := n
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719205314.1023455-1-twd2.me%40gmail.com.

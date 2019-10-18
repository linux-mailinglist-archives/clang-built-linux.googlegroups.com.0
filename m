Return-Path: <clang-built-linux+bncBC2ORX645YPRBDGIU7WQKGQE7OAXXHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D10ECDCA67
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:10:55 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id b17sf4944119pfo.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415052; cv=pass;
        d=google.com; s=arc-20160816;
        b=im6f5uwY5JXL3PGhp+BaGjv80gcgLuCGKA5M0zXmff/9dHNpG+mIkMhea2yKEmdflK
         5l3AWWuRNwBLvyPPyp8YCXPRsplhVQi1YyT6FYFUB/FdCos+5M2gQtRAPpAfvQs/Lc36
         y23EsH9fg/jq9MZiOS/6SPaAnmi+54ZhwQDKJ8ARb6AvGnEsC/T1zSZWWAMy+cGy0KtT
         9lSm6UACUY9N6fF+7++HVpVvVY3oPvVfz+qVGoxfJqLHo6k/JBlMKb8r/S8ym1ezaAfZ
         VY+NPxKpwaoko1Ai97sGpOKkzDkK5FTa2+zLME/+r2LUP11PDAEzxcT0NwcC4gxA7mDM
         NTPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OfTfu7dbHWZRvzA2GC5bIIbXc014AdeclZcKMupqO5w=;
        b=eJeZDOAGeTl5QWdzQE2yeEj+dM0bjxDMC1cYxWaCg4I2bwPPaBwlaQszL3i9RmI874
         RC7698nZUgmZpF3/5cAi6XDtkQfVi1CKlJogLey45pxqF66ge4BK3B1PXkfsfQoQvb2p
         cHlUX2TyD0lGGZD4SYHD8T8bSbs7smqZ9lqKByLhV4TGpX83x0QZbHK6gXcsaSO4Fk65
         fj7YdwJlXQUm7tFmSrESXNsaTuTYZDzDRGhapeW6WzQeM3WFSmt1jpV5rrHMldF6Qnyg
         GnbnThF2+xuTAjvBYSNwWFrrVdhBeQp2iJSA9djYTVJRRC99sSff+n0xtOdZ7S0sTA7U
         pASQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="i/jDfxdk";
       spf=pass (google.com: domain of 3cuspxqwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3CuSpXQwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfTfu7dbHWZRvzA2GC5bIIbXc014AdeclZcKMupqO5w=;
        b=MfuQVaEgKiZNhJty4YAQ3Lprp563PnYgJLvt9WdBGC/GNj4AVYg627WpAt5C5edKaJ
         2gfP+XV+3k6x61FPp2zMNO+vunvj/wkWTH9Jf0OqTXYw/xBpxf8x3kakDUxnifmxOey+
         1YxgFOuFPVaZXCs60ZJmEVjXYYIB8q+BC3tBo4IB69WIQhes1xxuNKuNzzhuSAdiZOhS
         sjyVKZ7n7i7WkGCFgWoiSHP16p7Y84R0r4jy2GORZv9Q6+1UBiTqhlr5JPEbp672MFRH
         0VWsJPSaBNqzdaPMicAf6qxBuPgYam+PNGgOkURl7/WazUsTWFDoeH0/FbeAEtWjalVE
         2sLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfTfu7dbHWZRvzA2GC5bIIbXc014AdeclZcKMupqO5w=;
        b=Gd87gITTYv3s3TR8qqDOAyOSuTshUxjjCi93gQq/ld7OQLKR409BdrC2UY+lhvS7e2
         J792me/D+bAY3MstWiwoJ+Mix2iUII6czj4r0saf5bKwDkJFN4o0HbjGMa+hDrgpmCkG
         ZLaAknYBrtgXOQFHSg2kSlffMYrwKx5K9PqAeiY0p9/PIclXf+zRhvczF4nQPy7ggvKy
         g1Vneqg0RZMFxSlwoziYJe9zZ+BjDrwOTgjl6tqtFL8l/tCCu/aS+JD10w/8gAgpWU05
         iChYEF2hKhkexjpKrodWesmpbYtNSg7tP3kViEQiiQp8ptyGKStLUzYl5yclFdgT2s3m
         9r8Q==
X-Gm-Message-State: APjAAAXmpYQd5f7dqmdcQTYkH0RQO2PFA/AfdW2W4ufTGYAi0F0siqtK
	aBX1Z1PMoIdVJYv+DPu9CSI=
X-Google-Smtp-Source: APXvYqx7UtX2XcBkjbNHP02lZhAXHz6oiFsluvDQFrWaRYtPijp40S5/EP+l/ETj0er04Tbc7dEb0w==
X-Received: by 2002:a17:90a:f986:: with SMTP id cq6mr12415360pjb.17.1571415052075;
        Fri, 18 Oct 2019 09:10:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9343:: with SMTP id 3ls2078066pfn.15.gmail; Fri, 18 Oct
 2019 09:10:51 -0700 (PDT)
X-Received: by 2002:a63:c10:: with SMTP id b16mr1129081pgl.333.1571415051503;
        Fri, 18 Oct 2019 09:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415051; cv=none;
        d=google.com; s=arc-20160816;
        b=dz0spiWTOIBHaa8jpLBvqFgsntfp52mO/El+vjVfM9q/+WNRw66s+8CJriODoAbSSb
         zKM7IFhRgQqWSPcetdLepakuX5Ey5jgY/e/h2I5AqMsU4xXQlrQWRU6OQOapRmcDMOjx
         Z/kvGk5ssHB6xRUQPIt3ps01WpiI2o6zuZymhzaS3ODTd4oXqLMuccDvow0ByWdzER7b
         ORCaj2wF1cDmct2mkYLjWI/YgoAPxZEpHezbh/jNxClMCoVzDZo4MTaaVpvn/kU+Yy8H
         JRG+fUchKgta5ok5Qr/OjYstI3jM5jnKmIBNhFghlIDOswkgi+seHU5SK4TsSNjhotqT
         TLVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jUS0dhIzgmFNCiOAuEUXvcuYNkuGL56ryAS+MUv7C/I=;
        b=s1wqHx733uzNtvxfJrEE80e0WZmN/4GpzbZhnwdF9S+Dq98D64c9KAYrneshcqT9vh
         9P35h0GLA0GGhArxzuTwUMkXYpQOvVfUdjlxEhVFvW9eic05wLUH32OLjHdIVxOndh0s
         irAQ9GSeq/vcpv3NgbmVfzmxyhE7adBpAODixdPL2WRJEY8UMxM8u3mec/VFXAFFSqdV
         v3YFDRKh7Ni+NWIduqtgrr+MpnjhXJ+H/1msN0HsLJz7NtX+r1dWlwFhXyv2Quzn9Am/
         ia7R6jo8nelkmb/BlSiFVJ8BOipy7ebmjJpxTt4iUfooNSu7w4vMi0CErWB/HmwE406/
         Zj2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="i/jDfxdk";
       spf=pass (google.com: domain of 3cuspxqwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3CuSpXQwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id a16si227291pgm.1.2019.10.18.09.10.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cuspxqwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id f10so4031554plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:10:51 -0700 (PDT)
X-Received: by 2002:a63:3201:: with SMTP id y1mr10741272pgy.174.1571415050913;
 Fri, 18 Oct 2019 09:10:50 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:17 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 02/18] arm64/lib: copy_page: avoid x18 register in assembler code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="i/jDfxdk";       spf=pass
 (google.com: domain of 3cuspxqwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3CuSpXQwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..8b562264c165 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #-240]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #-224]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #-208]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #-192]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #-176]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #-160]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #-144]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #-240]
+	stnp	x6, x7, [x0, #-224]
+	stnp	x8, x9, [x0, #-208]
+	stnp	x10, x11, [x0, #-192]
+	stnp	x12, x13, [x0, #-176]
+	stnp	x14, x15, [x0, #-160]
+	stnp	x16, x17, [x0, #-144]
 
 	ret
 ENDPROC(copy_page)
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-3-samitolvanen%40google.com.

Return-Path: <clang-built-linux+bncBC2ORX645YPRBRGSSOBQMGQEMTNYDRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9F350916
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:33 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id g7sf1946301qtb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226052; cv=pass;
        d=google.com; s=arc-20160816;
        b=KhfyMRJrcYe9I7viWLecYkOOtEby8CJgWuF0/hVZIvYuN20VRqPbC1DaOPPQpSmQYA
         Pefo04mo9sdU13FtROAZg8jHQpCee1xjIPyUsnvult5RlgsSHvvOk8xCwXkeMeDiUr+D
         JvlPc7+TNi9I87D8M4qBokDn+vQH0bN/i6Dd1VWXWaVawHQnChmyOcBNIADtmXQWMG3A
         hKa8podDzdGBd2fmjbvbF6KStSsPtjL+Yyx8cERcnmQuIbeOL9OGfKiM7HYK0EHaH307
         Dxp8WvKyKQVat+R/1Nm6NDB9z4/GDWl4iI3fT0JVwFfy7Ij/4jx8JF345lA+SJ+wXJTr
         8MSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7SIeH4hkWsBAynA0I2+zQ02FaQkvaCJ9y4oSVRjPDB4=;
        b=wBozSSqsD4wPOY8RwU/aUePiQqgppLi8X6G4Dy69qZlxtpzA019Fxh1WD6kgdA1ql2
         kfKEPUKWqGDVpeP5R/FhUmEENOAKlaNBVhedDBJW+DlWaL7adi13WbVXIhDhTqPUNH+E
         rJs3tXyp4Ufb7orXRaAkbxaWmwyQaqYPuzBGuq6dmDL46h3Ou4ku+zlaad8b59EPQHbd
         oEIcoeM5aYkBUZhXXa3SqQTDaQ1LydNlw/cgBgwlyuoqjWCWZPa4r2oQQuTA9/U2FjcD
         FA+y9U4p4LSzYw47vV+SGmW8+bs0+gcBT8XffemCsqFOW52YUUhKWlKAIcheeOg+krO6
         Jj2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EkwKQyMZ;
       spf=pass (google.com: domain of 3q-lkyawkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Q-lkYAwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SIeH4hkWsBAynA0I2+zQ02FaQkvaCJ9y4oSVRjPDB4=;
        b=C7frB2oKjL/cZTQrvpDo4sr9WhsG8E9aIRDXK3GL1b8vu6AqnyNWgZQU5s2jvgsWQW
         7KpMO1i6NkGNcUyj2BVkDdLObw7fw6j8dMAQBZjsm8m9sMCTlkXRFmk+TYzbWMWyZRF+
         qdEqr6/cXDU6Ig3SNyWLXtpSG/5y+CnrOt/ScFgU4W+AFPquoDpH4bXD16t+GqZYwz4G
         Wr5SozF+gs3oZOrDhBpDy2IY+J3Aful49yYuMnHD1GakyqFdP38hokzncvEIawI7X8/P
         iiaGM1ROcY34J9EB0zuSefp34kX8QmTcTlnwwjuCHlcnj2kHnpInAqIJ/HKA2ld2Trxu
         EjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SIeH4hkWsBAynA0I2+zQ02FaQkvaCJ9y4oSVRjPDB4=;
        b=HbGoe8uTxUDzZGWb6QRAXTLtcfHvY3XnPCAOfiMlRAhXVxI+EokLaVSOzLiS4bhACl
         OfNcgxpJ4yGgx5aIgru410hP1zkd15de24Vlb2EhyIvBCSzrzYUdeWex/RlUxf4PW8uF
         rZ8X8w2aKDptU8A/Q3R6NqXDZrVXuOOom086+2ovfNG7KJNF10gzLQw4LADy0onYAjpb
         DGyy4vzwnVfin8qpyiZghBI4Jnm+7+mfpyQ6ZXyiiojLeaP6/Sarc0t4EeSiQVua4O6S
         Fh1mNk4ykBlk4jgRtVVcdYqja1dmTNPWiUbsbc2PPccwjxTxmQxT8B4smIhDzFLWPxD/
         8u7w==
X-Gm-Message-State: AOAM530oSr6ox4KvmcBUSJdRpqOpD5gWhB2O2qTcvDHVuOSKgtO2JOI3
	9Me7YMghaHOYdfGLC7FNktQ=
X-Google-Smtp-Source: ABdhPJwLNUUaCYm1G8FUZ2ULbwThlE13olBpgohAVQnsxTsTYrYysHikkqUK39xoXMI/rtb9y1HKFQ==
X-Received: by 2002:ad4:58e3:: with SMTP id di3mr5086760qvb.43.1617226052451;
        Wed, 31 Mar 2021 14:27:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls984326qvn.6.gmail; Wed, 31 Mar
 2021 14:27:32 -0700 (PDT)
X-Received: by 2002:ad4:4692:: with SMTP id bq18mr5248309qvb.0.1617226051992;
        Wed, 31 Mar 2021 14:27:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226051; cv=none;
        d=google.com; s=arc-20160816;
        b=Rh/ChgXT7Vl0Nz1jxPHrj7Wy5ZlQvzD6lVF7dtCopGcKUERyraV0fT3hqvT9Voj8wY
         R9FnFA2UGwau5sWz1YiUVqbwRfxCBCCge9rrHVnYD20ukCJRNL0Sr5gm8dnbd5+vCVsr
         0yGLL/dCwl9g8M5OAjGqLIJQY4tOU3R5p2YN80FtLThPSduCzni8YUuuGxi9RCeTTmJB
         g7uztBE4iAxkyZghOg9I2W5f7iDNfoP3vqfqTXyivAUfjjYnj8E1F4oW3XmTSqYpq1bT
         Z1vDuf5IDsKN+NeJB1xY5t1rH88y/1Gi8W35IdppuDCxhrwvWMQQBgLS2tUqr6Q//87P
         SjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lJzARyoTFHSeDeqATvX4eu9oF56GjO0aovkcTYMeCXE=;
        b=G6bldqKxhEr26T56ue26DvIIm7LszY0/GGtrzC8/4HtG4hIfJhz3ZegxkNqO+TFrwU
         cQLDpnQuoLXVSI28PfYXa85Xkhrw2K9vWQIncR/bfhNtzIfTJ0ga48OS3Hm7yAgffrlq
         qsKztcd4zhsaHPaM7Wdr/HhfR3WXm+J2GgRgSH4HVDDCnfx9+LU1kmFvRF5O/fwetbyP
         Cg6XO1J6hi3tM9ZXV8OjLP6F2CDFmjZGQFT26ge+Zk5KK4Lte2Few9t6M23lWdBP7o3y
         29T+AtWdrUT15N8MUFAHLfUatt6CYAMxrLkAlE6mViUYwHBaYn8aMkKzPuNdA658+kUU
         n+1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EkwKQyMZ;
       spf=pass (google.com: domain of 3q-lkyawkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Q-lkYAwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k1si332243qtg.2.2021.03.31.14.27.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q-lkyawkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 10so3672681ybx.11
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:31 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:5006:: with SMTP id
 e6mr7725488ybb.109.1617226051633; Wed, 31 Mar 2021 14:27:31 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:08 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 04/17] module: ensure __cfi_check alignment
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EkwKQyMZ;       spf=pass
 (google.com: domain of 3q-lkyawkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Q-lkYAwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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

CONFIG_CFI_CLANG_SHADOW assumes the __cfi_check() function is page
aligned and at the beginning of the .text section. While Clang would
normally align the function correctly, it fails to do so for modules
with no executable code.

This change ensures the correct __cfi_check() location and
alignment. It also discards the .eh_frame section, which Clang can
generate with certain sanitizers, such as CFI.

Link: https://bugs.llvm.org/show_bug.cgi?id=46293
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jessica Yu <jeyu@kernel.org>
---
 scripts/module.lds.S | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 168cd27e6122..2ba9e5ce71df 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -3,10 +3,21 @@
  * Archs are free to supply their own linker scripts.  ld will
  * combine them automatically.
  */
+#include <asm/page.h>
+
+#ifdef CONFIG_CFI_CLANG
+# define ALIGN_CFI 		ALIGN(PAGE_SIZE)
+# define SANITIZER_DISCARDS	*(.eh_frame)
+#else
+# define ALIGN_CFI
+# define SANITIZER_DISCARDS
+#endif
+
 SECTIONS {
 	/DISCARD/ : {
 		*(.discard)
 		*(.discard.*)
+		SANITIZER_DISCARDS
 	}
 
 	__ksymtab		0 : { *(SORT(___ksymtab+*)) }
@@ -40,7 +51,14 @@ SECTIONS {
 		*(.rodata..L*)
 	}
 
-	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+	/*
+	 * With CONFIG_CFI_CLANG, we assume __cfi_check is at the beginning
+	 * of the .text section, and is aligned to PAGE_SIZE.
+	 */
+	.text : ALIGN_CFI {
+		*(.text.__cfi_check)
+		*(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
+	}
 }
 
 /* bring in arch-specific sections */
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-5-samitolvanen%40google.com.

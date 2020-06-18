Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJ4GVP3QKGQE7ATEFEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD71FDDB9
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:28:08 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id q65sf1915750oig.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:28:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443687; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4TJlcxaAOdW9CSCTv49A4LJ75cle/xuJE6uGCIAFzASpP96EQrhsSrzwhexhfMC7P
         vfaQK75E0K2WoVJaMJvo80O5QrJ2Lx464sDhDeqFaNGDVfiOk8dQeXbKOGj9KDlygv78
         XUlRQtP37YTqv0K/sGXONFnDI+OpQXuKhU5xd6sjx274qFCpESI60DyBvfh/ijsGLlQ8
         NcSL0JW2KFpb8SWyonHhMto6hGaT+QydWKbrMXbYqSS4UtJsK2qoGSEKI61vPwItM6Rv
         xP1YVHFzpVxbXKjcuDUzbkK6VuW2uIQ785U+/RW+X5ZsYoVzLdo+3VWjY/1i6oTG6v12
         Z5Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QLAkDq8839HoW6Hq3m7LZ3BVfByorDBqGq0WxYRGZ/w=;
        b=xLyp5+T0pIwBFXganJMjm+bL6MTICN2nHHkZ4eWxcKVMn6RQ/C8OTWm1zdLhIoitjq
         XqVgNi+BOGT3gAbnooxJtaNl/OQ5gihrBP8Vsvtxs1tmDy2NgnGX6mB871gztz8V8ROt
         S6+tzpCExJzkYt0NmbCwSNH/IOYjvRdh+MoBv/cli9Ba0YbfwKsiaUE4kKnqb6v9VChc
         x8atUDDFaVdtJ72LJxK+jLKJTVSV4oBw9ecL47P+i5ysPEjchh4tjUAmuC5YX/Y8h5SE
         BIGZL2RKaeH/F6ztVkxKz5ra890NZhojPIKXhWH21LRrXcnIpRZn5DtTMqRfBxC2jjga
         Q4JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gqw9zfcy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLAkDq8839HoW6Hq3m7LZ3BVfByorDBqGq0WxYRGZ/w=;
        b=h5Mreb88gLiJCVVIEtbt9tIzMoBw78yStNIfedqs0MT5YWEtcPpmurhatzBpIrwJhg
         AQJQYM3QZ7rlwjFTmayyQ2iCLWsR+isp4DU/2TuWGr9x5LpwVTPZ2l6kcNSa18Vmu1yd
         UPNRR/FO3WhTSmiXug5wu5WBh0Wuog7sxDiLGrWg6h6umQwMGrt/K4rxfXtgLaJZns15
         mhN/578P73Pxyhz7qNGQgABIIY2ULvqNZnrHcR2n64GomrNKRHqoLJUit2FgIxKXmsgp
         FjjFFYV5nrm7/Q9zGAT69WyTvmHM4JW96FbiG0f/8oevl62KZ2n9igrfa6UEM4pIdSD8
         5eGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLAkDq8839HoW6Hq3m7LZ3BVfByorDBqGq0WxYRGZ/w=;
        b=RLQJYkCKl6M7oRfu1UOlhN273Zr9PjJMYZgsjveUV5VtzZkdw6mFpD6gjvUXGOQQyy
         Zqn5ZjMq2TtEbREWctPCKuEwSjF0uZJvRbVZk58pX8CWhntxPHqqiZyKPFhofBSAY/Od
         yQMq/wyGIzLIUZ5gnUOPQBOtWBbIAOt3x/FHvNgktLTRm3cwfIypUl4WOunCXDp/M3VP
         /XLCOANxodvgE02+UcrkA4VcD+/ITl/6z0U7ZD7Bz1Loa6Dnz4NuNbT3vdHMsDVnBHyY
         KhZoNNpIweJyI1789rUCKYNToSQcjDBqA00yhKy7zNuvD4Lb/ROHn9C5gvuz0i9RpxGL
         UCLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HWCKkmU2vJc8vNOPO7wD1vmryhP5Uy7k4i1NVzG5lBeIva7vG
	iZJGP43peLRo3ja5kCa+8xw=
X-Google-Smtp-Source: ABdhPJzgEmx/wUlBWACIHj6RpoR0eUnnHB2P4Q4AlBBwTKb6qfXqS93UJjiwMAhLxvF5jhtUhmXO2Q==
X-Received: by 2002:a4a:b34b:: with SMTP id n11mr2029514ooo.41.1592443687401;
        Wed, 17 Jun 2020 18:28:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed48:: with SMTP id l69ls811955oih.7.gmail; Wed, 17 Jun
 2020 18:28:07 -0700 (PDT)
X-Received: by 2002:aca:72c2:: with SMTP id p185mr1221815oic.139.1592443687047;
        Wed, 17 Jun 2020 18:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443687; cv=none;
        d=google.com; s=arc-20160816;
        b=fglqj+INYnxquGcqaibWg9DbDtNJ3SrLIvo+Je9NRy8mjkfjZrd6Yh7DDCInlx6cYt
         VbWeZDhc1f3y3MqhmBwmD72/Hk996xR1FprofKYk1jPfOk06Qa5QJi/PApjw1VgeQVij
         8kzIMJZUsr5aVngHvvfJTQ3tRJ3WFnOzigom1fQesZ4U5hm0bBKnIqBj3oA4NcByMCSe
         960vbcf2jk0Xr64LdWCLugqrqlWEcsoTW29ZVY4tUoStIxGCKHJMGi0MMxgopK2haKXF
         bUMC2XD2YOQBjGVfWKedgrv30c9YspY7L4fDg9TnvmCiPbX+G8xcrSaPeeBK68YPJktI
         Mj9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8IV6p6PVuf8E4T19ymC9XaV2MP24jAMTzmCh9aKUVIA=;
        b=IDpa9iYQ1k+s8i+k50Anmen78EjJcqxEOfgVxNKo0E7kiAHq/1Gy1AQVuCEj2Spv/V
         u6c9DDKHY5mCTp/P3cO6pOSkBwcb7Qq64OoG7Mn6B3su9CAvleuIPbJeb4MVuj3cQ6TU
         eunUT/U94Oe2sO+wcyw2ERewB7vMzT5DX9crVeVwQrwN8JS47SQTIi9l6OC/p7O5UhJ8
         u4RZh69eoRik6JtCUgVhMcQvwuJQ/Fpd0jwdNNcA3paJ1JfEbQ/giGtnN2vCRFvGYcJK
         mPAGjw2RDDI1CdnHCJDWxSO5gtAXoFp3kBv3qNEo8nsyNkMNwEAnnjJVg/0wtwCxVlAZ
         KJDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gqw9zfcy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si96300otl.0.2020.06.17.18.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 09702221F3;
	Thu, 18 Jun 2020 01:28:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Jeremy Fitzhardinge <jeremy@goop.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 099/108] elfnote: mark all .note sections SHF_ALLOC
Date: Wed, 17 Jun 2020 21:25:51 -0400
Message-Id: <20200618012600.608744-99-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gqw9zfcy;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b ]

ELFNOTE_START allows callers to specify flags for .pushsection assembler
directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC.  For vdso's
that explicitly use ELF_NOTE_START and BUILD_SALT, the same section is
specified twice after preprocessing, once with "a" flag, once without.
Example:

.pushsection .note.Linux, "a", @note ;
.pushsection .note.Linux, "", @note ;

While GNU as allows this ordering, it warns for the opposite ordering,
making these directives position dependent.  We'd prefer not to precisely
match this behavior in Clang's integrated assembler.  Instead, the non
__ASSEMBLY__ definition of ELF_NOTE uses
__attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
and just always use "a" flag.

This allows Clang to assemble a working mainline (5.6) kernel via:
$ make CC=clang AS=clang

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Cc: Jeremy Fitzhardinge <jeremy@goop.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/913
Link: http://lkml.kernel.org/r/20200325231250.99205-1-ndesaulniers@google.com
Debugged-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..7fdd7f355b52 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -54,7 +54,7 @@
 .popsection				;
 
 #define ELFNOTE(name, type, desc)		\
-	ELFNOTE_START(name, type, "")		\
+	ELFNOTE_START(name, type, "a")		\
 		desc			;	\
 	ELFNOTE_END
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012600.608744-99-sashal%40kernel.org.

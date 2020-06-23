Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBP3ZD3QKGQEYS7ZFQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E82058CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:36:06 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id p4sf13238755pgf.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:36:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933765; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSepBGOxD0/RQab0PhBLUw7a2JiQOmoPMaDq2dBPVDPYo/pFWH4BymOyB5b8h255Sn
         05BgENRrAsQL0fbaEEGSBZUEWweH9XMuYIPQWDJGxaFkcv8QtyQKSUvYTYflcgib8Yz5
         LK4eQFxABAoXFEJwIwEtF3iTjUYk7J+EUfsUjaE86vWHcd7AAfJgQOciJyF6GntkOQTq
         mDP8Dd62Hh0Dr/V0Wb0o3Bc6m5WwY6NhE31YHOKBZ0rXrsaP3G/fK1dJKCsWwGQ5FQgH
         AvvA0mP6JAJMC/1dNwu7e1QhXtLIHoW8w9X75Y2HvtLHbvHaGD4szELj3sSf7eUYdO8L
         8RnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nuBg8EkSC8MtRKxAGtv2QMw/QJSLvelmmr2nkYRkzb0=;
        b=VyEsjsr5VCOGZlao7oypdA3PIj2AloHrufDk64gaCJpJh+loh1fmSgL/5kMiGIEoLt
         S6yUFqMgB5SeBN7TUR53t01f8anAl0lEXk6WA8ahuVoJELbyHY/W8e+V2dkkjkPV2qLg
         oLD+pDOTbWjHMncNwmGnWQH8KtlhDN0wrtI5uq9sc4YSIoYtXYHrXccYHgvhZ4QvolML
         W+TY3sXr51BpwG9WMIu14RkEMaQT2WLdsPVeirnwoH+YeeEWaDEaxJrOl9X77WbbLokg
         vbX6RVlMckOpW8zWm/fPibNImcGr0wKn72tLwNPXhmgALhCC7P3nGFxaOWOy+438PfUZ
         AOiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J+xGIT6d;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nuBg8EkSC8MtRKxAGtv2QMw/QJSLvelmmr2nkYRkzb0=;
        b=RlLpTwL5/G1pmZ90OU0ugl/29k20gVRU1xslgDBNM4a56DEpDSVz8mc8xQk6pG0qWH
         LCOp/ox9IVF2AnvdOYC3AJ4bU5IwC7cLRAwAlqDLObSqqETew+PvlwCTIjbI3TbTPjB9
         ExyKgC5TAtNZleukPyl+/UQ/6sNnvhomKgmmSQgOiM3gk68Myfi1c5qiRgShNzQnNura
         JP1FIvW4Zmhr0FPrhO8MsxLFXlk3JC6NjM7duO8I0w0mOgS5BxXQ+ISyJrR3V90VA84l
         yBYJsoR9HWo9UzZD5OpuGSqQwNTF0AxAwTCq2+HGF0EI5XSvZcuzQ65Kn9wpmTcM8MDN
         8OKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nuBg8EkSC8MtRKxAGtv2QMw/QJSLvelmmr2nkYRkzb0=;
        b=U+gjZg8UAgpSy+V7Nmac1Z3B9GClFJwbu+QQ362ZoWHOwvyvO/QQnVnPcy/k8pqGMv
         JQIok6o3znokNKSZ5gx50+lHEzE5jcZSEQ6FERZmJhXXP4Mon/d0Uyb96h/ZlJo2ieg2
         7bJcwTiE84Kow6Yq9e9OZxEYZKv3UHOC74eLJr8iuxXMtAXn3/LWnmF6Kw3t/AplcQEk
         E6wpeNsLVU6eGMIh85LfKWfRf8cehf2IBavM7Zg0QIva+z7TXLYgK5+8QomPunIMSaG7
         NMsPXSNsebPXNVY3+BVGGhCl+CjyqQgG65SU06X7ngvT3IzQCXtIGHJmeehDbLM/aWmr
         AQUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304T1xyvZ1L0SotMWswi4XU5r5rBUzTM+M7UUVjhJIV4OgugCbE
	DEe8q9jwuFDrW4JF8hg3qT0=
X-Google-Smtp-Source: ABdhPJyMEsRhRdNInvgkgaapcEAg3ysJJyoYkBQzL5YCjvKxkjuTtLGjYWc8aVeGcdf6GDtLceJDuA==
X-Received: by 2002:a17:90b:1292:: with SMTP id fw18mr23550842pjb.183.1592933765590;
        Tue, 23 Jun 2020 10:36:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls7906088pll.10.gmail; Tue,
 23 Jun 2020 10:36:05 -0700 (PDT)
X-Received: by 2002:a17:90a:de1:: with SMTP id 88mr25251937pjv.124.1592933765129;
        Tue, 23 Jun 2020 10:36:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933765; cv=none;
        d=google.com; s=arc-20160816;
        b=yYvEKRI8w9xIReUWMQRLAy1+pPcadBQngA/lTdPrCU9XRSiaYidIdRpUkyzxxZ28ne
         I6Vu+HomPg0Td/2XrynQBL7ga4Yg7n+vbg4DiJMyvt7WEYdSMWjs6tAR9mdnuGcaObLt
         oXJVZJFXNvlgv6/JWafkmnEIHasBvZY2URe+y45/OB/yhOkEXdIPmfMJU6FXQLh6OYF2
         Z7+ZqgvvIMRnoLU6OTshNY7mVaqtIAfSbSyh4/gkFHnw8cphw8x1I6sUjj+sjMc775nb
         xCwFFG1Sqv0IWt8z/ul3eeRW9AhqqjWmS85QUn99Tbtf6vDWSFir0hEMoJZWPIJo5XPp
         2ZzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ODmStry6MFDFFEr+h/5zOUkuTzYxq3Wj5qEX2ZapqpY=;
        b=g8zUoAKyzJDFJhIhLuN6GAbsrie82gTi7QjjrtUNePC4AuEpC1u+lRYeKWveVdhYrz
         wdeWWQmHKp2tWCUYt6VSRu/FDr0fvZ4b505OSb/ISi70axITFTKnH2HtziRtH7/Lmryh
         HN7IvUok6jlzScRqrWF6bhccv5yAyXzgLxw1Cnh/BRWFnle1i4hxQx4WANBY7XK3k7IU
         OJIrW1PoUKFkQg8ojRUaVnr7Xo7kQyJuWAdD39k/yx+d2y0LFNUq+7UDYU+9tBquiVEp
         9+FssQOS0eJveQE2RclpZjst4TVeznpmODD7YSkTe7p2H1wCcrU95erV1jYyq1v7NktV
         fUOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J+xGIT6d;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w13si170482pll.2.2020.06.23.10.36.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:36:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1EF9C20780;
	Tue, 23 Jun 2020 17:36:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 04/24] riscv/atomic: Fix sign extension for RV64I
Date: Tue, 23 Jun 2020 13:35:39 -0400
Message-Id: <20200623173559.1355728-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173559.1355728-1-sashal@kernel.org>
References: <20200623173559.1355728-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=J+xGIT6d;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit 6c58f25e6938c073198af8b1e1832f83f8f0df33 ]

The argument passed to cmpxchg is not guaranteed to be sign
extended, but lr.w sign extends on RV64I. This makes cmpxchg
fail on clang built kernels when __old is negative.

To fix this, we just cast __old to long which sign extends on
RV64I. With this fix, clang built RISC-V kernels now boot.

Link: https://github.com/ClangBuiltLinux/linux/issues/867
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/cmpxchg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index d969bab4a26b5..262e5bbb27760 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -179,7 +179,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -224,7 +224,7 @@
 			RISCV_ACQUIRE_BARRIER				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -270,7 +270,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -316,7 +316,7 @@
 			"	fence rw, rw\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173559.1355728-4-sashal%40kernel.org.

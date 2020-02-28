Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXF24HZAKGQEDGKUN5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 17327172D06
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:54 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id i3sf644053pjx.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849372; cv=pass;
        d=google.com; s=arc-20160816;
        b=PB2fmCbP4s9yGTEp4f268p7JSH/UXZQu+Le3quH5gSSQEvb5udqhT/iswC++u1KY3T
         Vxy17xTXWVybbsn3pehflvHiidxXGtCSm96NXSHn8hEa2pOmtm+cdfVirZwmVdb7MOpB
         qqFxD57Quu18cBJNSGRDof+bKdypXggqTMGbkXKDMyYY5oMQTgWOdeGkmzN+2Rj30PtQ
         TaUHyL4ryAZMeDibld4RWoUUU1bCwebVWBqXHuCYCZrGLYp+O2S2H02MgSxGupZPuUum
         w1o0pSDqvIvmwP8PJ57QKF34Nl7rlLTSUCSy81IXpiJp4SO4GGRergrTRdQa3mOJ+9FR
         qBog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KQxOOHIfje772c6Uk2Yo6hxS9D/fcHngyi9Zles/CrA=;
        b=TGh8YHe4JSaUDIoeC3UBodJt2InqN6p/A15cIFVTSjO7ZOIsOXF9jhJhVDa5KqwjJT
         +riV1qp48YcuWMt8J71Bg64bkgBs/8YSeZ4BQXi33xje8WUbENRGxRt4QzlIG6PFmrHT
         zzjABxkfOAT7LRXxZnFoTGaeCWg/wS3YIRdCxqNOozAu+gdt+Lp3UvBYqYoxIYwXRDvz
         cQXcEYlWdXNSrgnWX235ldG86X2miWneSSH1z61/27teXC8sjOKC04G3l0cPkLov34cM
         n2O+12xn8YWo6AWALNqUO4EaEQ5kOxJxLHsGnT7RsbOHr/rZWo7SW+y9exHpIJSwVbX9
         CXPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GkeoYAU8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQxOOHIfje772c6Uk2Yo6hxS9D/fcHngyi9Zles/CrA=;
        b=V1yHwlL8DsHBUQ+dd8Y9f4js2AxfOpBResevD0OBUj00LQOqCHKOCDHEIOgIoOH6ze
         NJpPk5U7TPudUNoVaQZg5z3pgbSmWKkI3UQpEHIrFsJJRRKr7gmyNOi4YlXxb1+Tr7/Y
         oOGRrt2+HwrFENUrRV8832UKmqZdNDFRSbUaoOLpp9oWDh2IylgmLJ2v12GcHZxG1IaR
         2SlYDtxtbrrs9Qybo/EGgsBhgBDFmlO9Dp4FhCNvIrhUQMiHGs15JvNb4fR4IkbkM6/l
         ZS9zglDsIXEEltoHeWNC2veGjEGPLheQZ1OVK341hDtRHEEtiZlDI/zEJPYL4K5wh3Vz
         20pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQxOOHIfje772c6Uk2Yo6hxS9D/fcHngyi9Zles/CrA=;
        b=kJbq8rpUwPSS0UBEImbhfkDxvnEGM+AsmpUNFwvQ3Q+FzBFRC5TlTIwrP4guzvobQI
         sv7uMEfeoHaTF2kjtNolI+U7/7t2Sf3jDdR3PsxJUrBxuUJ/meW1LQSxblVL5acYcWCS
         4Z7kXejO8tBaw0tlL91/yEsbAzQoKNw9XRsyGVJaf4/iDOgHyz+P8mo/BHodl7+V8chl
         0VksajDn/GgSbncNk8GcaSW0rOAoga8+RWnq6sJ4ui6rHS0Gfq1wjGa4nwLVpcatUFYV
         TJbU9pdnV8mWzGcvcsEBxK7bFmlFdvN2DJj5pkrytHFj+h8+5dkz5djrpw/o6JHCPOwf
         vyYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEpGyRSeKQjHB5jDZogtPo4CZkO95ymsAEsGkoNJxLmdMTLGS/
	pPJ4PP4L6LPzgVCfveSLNyM=
X-Google-Smtp-Source: APXvYqwTLd6PoWAP/Skhq4pczuysyPtORtvApb5LzWYd+SOIDwHAfTzrA8kd0NV/W7QnkNMabsJoBA==
X-Received: by 2002:a62:e10b:: with SMTP id q11mr1720390pfh.48.1582849372687;
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94a6:: with SMTP id a6ls336990pfl.7.gmail; Thu, 27 Feb
 2020 16:22:52 -0800 (PST)
X-Received: by 2002:aa7:8096:: with SMTP id v22mr1652964pff.240.1582849372259;
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849372; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsE1SR2/9buer+ZIpKZgQDsGA5Kmai5nunuw6nbEvviKJ52tNrxYyZj0zjXvKyFJ9p
         VU3zTTJOydLlJB5vZpeyHAUfdu5OdlCzaTGmsNHdiFwx/cYoeTbjvrisp4Q+xlAK2bjI
         +WObUKJOcAIUGzMMGh2d2i/DMNPck5K+Nvuy/1efY1baHwLUKzuBvlZpfOknHgUBaVyO
         klY0SeLwNAxeDlmKQrFI9HxaYHkMQJkzLxTyQMVKWgCfVvLzi3FNT/7LnoDjZJn03dDD
         057MDJm0B/iPrBGp+AFsJ/jUtNBylGQE+QLenpt93y3yA2kSamOfqKwhsyi33jB+zPak
         6L2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6fHzEreEHEKZLIitB5E8ew7g5jiGLQoDWIhz+OknFf0=;
        b=uhfjaNpzbKB55rsbQ0TJmho8jFqWDFpKbpvQbDNLdU932w1Hlkdp2zZcrhG9NvO1iu
         zut7Wss9ij9R0fha3+WqsMu7797Okf50t/m+klzCLNqqZofZvUKMbqgLbaVeAbsr7Gw6
         agunb/ZxDY1jpIDMt4FU6PyFk2nN2TdEdQQW2HGswsEiPrmBuG5rf8gHFdhRzy8aZt2z
         ezOsKBQhjQvyOWdDZqTa6vAxvyf+NEqwoQBulA0HvYL+KU/UXLko3lr/WQlCOI2Thdg2
         a5/QugXaotY1yZunrpCET9tcKIjLci3wDIQizmXRwY4OAwI6rCopJSvIGE02/3EtLxzr
         YEIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GkeoYAU8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r18si69466pfc.2.2020.02.27.16.22.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id s1so720888pfh.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:52 -0800 (PST)
X-Received: by 2002:aa7:9891:: with SMTP id r17mr1670426pfl.205.1582849372029;
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z30sm8485301pff.131.2020.02.27.16.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/9] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Date: Thu, 27 Feb 2020 16:22:37 -0800
Message-Id: <20200228002244.15240-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GkeoYAU8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

For vmlinux linking, no architecture uses the .gnu.version* section,
so remove it via the common DISCARDS macro in preparation for adding
--orphan-handling=warn more widely.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e00f41aa8ec4..303597e51396 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -902,6 +902,7 @@
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
+	*(.gnu.version*)						\
 	}
 
 /**
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-3-keescook%40chromium.org.

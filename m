Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBEXNSXZAKGQEB7V2EYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2AB15C7AC
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:23 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id j1sf2298955lja.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610643; cv=pass;
        d=google.com; s=arc-20160816;
        b=pZucLayVC/4T4cIAoMsItA1MUhNnaDq3AAflG7LHk7O6S0SUN9ZRCszAiypngPcH2t
         bltbkzA3jGXSCcSR7W3kQTscnpQ1PXd9e5KLOgJoLpdzLRkak19DCf021AwHhPunNGEE
         db5rtQhGjWzUB3AvVOROum8aNziI4u+kb/6+zgYs/J9SWTPvJQpk4e7lGO1zXtPuz4J/
         bVrmI+Wj9YEg0lfEmvglZU4kUp/JyoEl/zJTulOxiOH04WKN+vrjLEN+2S0g1q9UVzdO
         yhCfjWLbyASApsBXQJcFhI5gWaGAE6dQQNCU0Fb910P/QSf104g/+B8Bi21jdMQtABWn
         OU8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/V86VOAjPhsVr2pANDZmpQX59us4SPjv17MDBxJmYF0=;
        b=Qx/IAX8F9qjatEmf/tatEEW9g0hRc05znaILAgmCghvObnvPePrfOuDxUldC2Xpcak
         TOl8qRMN/htlTvMb9Ojfig16BtOZZe/n3/aCSneyX4JXO1DgRLhUu5y5vvwW2Yfuopkw
         lzO6Q42XgWwmo7MqNCy6EU+wk9hanSbD46Xgh7SZ5OWQpejr8Snu35SigaYXoQe8PBGU
         qGAZ00PrdGAUteVQhp6P14XsxO1PX7wwzRKm7EkSogtV2Ze+xkkilNbKNhc/YeMhAPpA
         ckZ0+Umrnhjru2Zd2vAEzEL/KXDrgPy+l3yy4Btbn/nWkzPZySU22dHoF7r/QxdzTgUv
         ++7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/V86VOAjPhsVr2pANDZmpQX59us4SPjv17MDBxJmYF0=;
        b=hUKZgPNohh02sS9Wa23ys+/jq9crv5KhN7cmwISsGyq+DaYIC6j82Dv5bIByMKNd5T
         d7YiIgM0MzPnz+CtDKLiQXKMCZJVrLt1PTHkZWKpsrel7yci25z9g+G8oj8IvIGOIBub
         aEn0aPf9pGHhWWdP3J3kR4OXglajZ4l84TkNiULi7znOuyfg2xjF+lbSgHFrS82pPs5D
         H81plhSOGUzK11N0CPVQVQ9d6eCxaXwZaaL+adh4F9ml4SMllkk96TSPJz2q1hnIEnup
         pm9cFOrB5seMJQIvJ7p+dye1KXJMKJHT2FQI90XgG2w+t0hSiy1RqhDXsFCY3DTtnH54
         f1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/V86VOAjPhsVr2pANDZmpQX59us4SPjv17MDBxJmYF0=;
        b=b0Pm+4N2EN3YT60+nE8ExYZd/IOFKAYd/PNFJTpFAnz1Ljiw/OZ8E86b7sL/Jo9STS
         EKlVlj840+2RWunecpsX8HFIIWCUdaId+HCZxjntdO2lK/q9m93Zwvui52Rsn4z2q+E0
         1EsO1ljKMq1OA8hzA489kz7M0SyN0r4NDrvduWveAE25mbxiV28z7Fi7hIDxhGQRKn3p
         lMKBDWFM9omqFtH452rYx4q4wb9ya+8q0NdI7YtR8hwmn3BWmCGmKDA20cNVWbGV6xUv
         iAtdJCiugJ9zVLE4WsWxzXFrG6Om3kqybCj76tcBcplFz0yzSvaz8ymqHFYE6/RPb7Ed
         NPoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrI6Z0vd4nuhLCe6vvGGtvJYPZf3ls5PJI59NAzr39uien2uwZ
	xD0Fa8pnXM2LAq0OQvc59X0=
X-Google-Smtp-Source: APXvYqwfxtAQtQQOALh5tpHqjZRz5RK6cjxG7NfCePyl84YkMC+kHSeBG3inENI/M+5t4J+Nd42Gnw==
X-Received: by 2002:a19:c307:: with SMTP id t7mr9809106lff.166.1581610642800;
        Thu, 13 Feb 2020 08:17:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls2753890lfi.3.gmail; Thu, 13 Feb
 2020 08:17:22 -0800 (PST)
X-Received: by 2002:a19:4a:: with SMTP id 71mr9804203lfa.50.1581610642342;
        Thu, 13 Feb 2020 08:17:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610642; cv=none;
        d=google.com; s=arc-20160816;
        b=irBtQbzSuycfuNiIUB2mRvRLM6lIvpmnDeMjSZStmQlY5RLtXn5Pe09kglGDewx72B
         y0suF3iGG0qItjphrTNOl7HN4p7XrCOrnGtmejoh3/459UwIFDNX0yXwNeS7+Uxbs5C/
         5MOFGfW7t7euO/HpZV9OSTgqqyGINCYEtEaOESqfOQ85x1RVF2RpkyU5onnLHZ+1mZTR
         RphoC0e/HD2hR5aIx4YWGDeSm7eJgRPhVEbN2EjdeIJ4+JaZFToZDMA3bHw4Yj6fUZwu
         vyvVytEXk5k/AxNVCSQm+zv+lNH2jrhAxlCYIpk/UFQI3oSlhEJigY+wGPvqe2wSlf51
         DGgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=xA+/Sfe4YLSUz5f3KkD4ttr/bZBOR1v4lGKZOOcBgFU=;
        b=C2K56qPOsEwKkSSqrJjoezVHsI2aITVMIcMoNS0LaB1hTKLeVa5wRzmSQaPXFkXZwe
         07WcQ7lvMKk+9+CelsCwn46P519Jj21eLAOSGGMwY+WdS4xfXm0NHbV5Hbz3ppOUutHf
         qjTkimK9V4YwN411O1e12MYqyW8PWnT1ljlGLEW1ii0PiTCJzPnWpn+aAnZx/bz3Jesx
         JS8kGLU3v7jaVkQIxg6KYxoGJw4SAYkVB1IknNm3IxOI7jtEc9at6wyz8iLqvIZ/L+Bn
         fKg/+4j7ooFrwUVaQqFEvZsf3VGy3ZLlot2WUj6/SNYiyY5I2AZ3/qme0NvKFl0EAfO6
         dT0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j30si130139lfp.5.2020.02.13.08.17.22
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:22 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6954F1045;
	Thu, 13 Feb 2020 08:17:21 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD9493F6CF;
	Thu, 13 Feb 2020 08:17:18 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 14/19] arm64: vdso32: Include common headers in the vdso library
Date: Thu, 13 Feb 2020 16:16:09 +0000
Message-Id: <20200213161614.23246-15-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Refactor the vdso32 implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 2 +-
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 537b1e695365..a1f21474f11f 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -8,7 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
+#include <asm/errno.h>
 
 #include <asm/vdso/compat_barrier.h>
 
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..9366ceb635a1 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -5,9 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
-
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-15-vincenzo.frascino%40arm.com.

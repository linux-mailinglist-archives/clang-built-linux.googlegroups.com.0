Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBMNCRHZQKGQEPG2N6PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA1417BEB4
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:37 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id m4sf888270wmi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501617; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHDxtgDamWoN7QI/HmwjBfzN9huPHj2UU3sRyJXdgsaw3PHHTRpF9guU47a2YS8Top
         gOiK1VK6kVb/nijNioOgwAjJmNBcGYoSDG58ybrpcxPDEL6dAOy5hN1QER431FB9P7+K
         2Taw5VIplealR8HB80mCtXM6xB76pyx1u0oXxoBGbrP0jRKicz1vRMC7AbvzAT1cidC+
         cFoEHZjW7pck1Hn3DSx+KiG8G6OMAJANoRNPyHl5iI19t5eKLtuC6mndvfHVAjHWvWKB
         1xK8tXV4s5h4dD7D7oQ4M+iWSBAPgcsg4X1s8TYE6BuW/LC1BARr9UFRxB+wZlDy2N7o
         AxGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zlK8Dsu5ciNfUxsHs/2kH0ajjMkGPgzTHsQ3YmX0N0o=;
        b=Y01zbKrOJs212nsPwAPRmOE85DysAt3/ZRvyGEgSs9gdtlO8ZSOR2VRgi0VhlFTHbg
         wyTm7g1hzaG0vW5xXZjn1/Y67uWuGCTtaNcIVfGrWsAkBvHmr+KlYj6KNt8iHSfbUzv6
         4dVb6eqJvoJohRCjCYonTl+pmkXGoOYY0qFgKNT+DwQB9nGfDqexDqLjOrto+qxgx0Wv
         KaWqCe4HFdFshJPh/PdEoQx4IMAEBroQYM8F+97hxPOlG9FlOvCkqP0QBcVTrNn1tCE7
         AyFgoto+jcir1zSstOHOupJy8iaWKFBJCkimUNipbVgbLiVRRBTUs+IooTK0lQ5BxTTT
         5Ztg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlK8Dsu5ciNfUxsHs/2kH0ajjMkGPgzTHsQ3YmX0N0o=;
        b=L+WK656LH05LI83T82qORrrGq/mfNVwFnUmsSKSp6hgFUo6D9h367hDrp4nG/517PT
         HE3vSyoHhflXwbTPVKjkHiWflQo5OopuY5HioKqBsgeUbXteyYVf2kZ3dqZMygGrhNde
         s0tVnjK2gtUh8StBNvf4cq1/CBbU7Un6aCRK0RxFw0TyMl7B2Tar/55e1967vVEubK/P
         1J5DV1kkSCc7v7v2jVhR3kSe1wBYdlODqMGOHBUQzRyROkXZUVvivFwdLteHtXn7gr1N
         HSK1cYf7rfcQMUR1DSnPO7pindCxnQyJO43mENTMyM2mZJmGXuzyb1LUUXMp2nfwcG4S
         kLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlK8Dsu5ciNfUxsHs/2kH0ajjMkGPgzTHsQ3YmX0N0o=;
        b=PfPtPXd4+v1Wvd7NTdQO9xrNr87YpHrpwYIo43QqYapSsmsEzuDugh52LFw5tFDqVi
         s6ZaHtA+tfN4hcjswMLtbsA3Z0ox6izRqZJ1RnmjMCjgZzns6CEZj0mB/H5O8WSguoCE
         lb41Jn+vMzdJHwvSjWdqIORYyln19nQAFM+pKy7tUtWgskdRxleX2yTUYAKrysNpDjHV
         7adbFrCsGGyt7J0Gjrj896vYrL2PCId1IqXFhSo4tEDS1Ceo2bNqokruVDZrqWL6ktUa
         BVyiwh2ehGQMWKNTnpVzsDIdh/FiqFkQ/ISuloLZYgNRev00OrejRLFdzvYLhJipE52V
         df7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2gv1R9orp7eQC5ZU06rESeRYLZ3Az0702s1FOLqZyP+d0gxmpa
	mhIDH0zdEHbkQ+totjLiLbU=
X-Google-Smtp-Source: ADFU+vsc9KTxeYA2kuLsGrLmn/RqljePL3bi1c1JK9zioLHfPZH5g5vCAMyAcF8/FnLKFuDsI+syKA==
X-Received: by 2002:a7b:c1cf:: with SMTP id a15mr4071258wmj.85.1583501617407;
        Fri, 06 Mar 2020 05:33:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls1237854wme.2.canary-gmail;
 Fri, 06 Mar 2020 05:33:36 -0800 (PST)
X-Received: by 2002:a1c:7ed0:: with SMTP id z199mr4309387wmc.52.1583501616841;
        Fri, 06 Mar 2020 05:33:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501616; cv=none;
        d=google.com; s=arc-20160816;
        b=yEESiDErNz1OzBFDnurYSFewrRoBIwcpwNVwT32jL3oXcQRNwcznRPIwG0Iv3KyDqO
         wgCIgyPhkhsS6QqAyBwY0rLZq2Z/OCGqGGikJSe88mcHRmbnZd82Tcm9pS7u9amx2k4t
         2+LpgFPAGa6ZQTsGUI505YHhYxeL8kOCN8YvPoF6X8JxraIoKWHjfsYb/GUAfKujMj02
         Bgmqa4I+5GGegdK0U3PeOKNKmpIEyil88OTTfYDNGYNEikgr5PCKSz8BUwtZm0sm20xU
         yLsjieL/2b+sCbwF6SRtWZH6aHsidydP4YELQs+9Lts5OQJyvTuJVkcx0V6zFrPcfGlC
         CZPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=EODaswakFebGLFRjBQu/VvZoAcrtzS9Ahme9hFlD3N8=;
        b=Kfnk+mLK7BzAXzZA3JvaOAgt3f6L8m6zjgNAksqOXdTh1ONZrIDY8vNzN95bSRSzqy
         064H4R5Tc6830/1uqGK7wJMXHzpYQXENIiV1jGBuDO5LUuJb+bzW1X7vAt4yIyPBHxIl
         EceIBxyCRzr4aRbx6e+SHOZwMLykoJ/6osv2zFpmwtT2gaKwZcgmcplgSjmLWNbp8ssy
         peDnnXr3wzm5RMDk41NahftcaaWOpzBQBgjPZyzzE/sXS66r+6BopWrFY1cOiqhXspNW
         6hQ2V/4UdP0R/9CiPMQjPua6Y8wgujmNOwKYmEC+M2Zyvr/f/gstmebkjzulW2rX9ev/
         57MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q202si107989wme.2.2020.03.06.05.33.36
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:36 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29EC14B2;
	Fri,  6 Mar 2020 05:33:36 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F36443F6CF;
	Fri,  6 Mar 2020 05:33:32 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 14/20] arm64: vdso32: Include common headers in the vdso library
Date: Fri,  6 Mar 2020 13:32:36 +0000
Message-Id: <20200306133242.26279-15-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-15-vincenzo.frascino%40arm.com.

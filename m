Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB5FS2PZQKGQESX4CLXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FD618D1CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:49 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id h17sf2751173wru.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716149; cv=pass;
        d=google.com; s=arc-20160816;
        b=FL5fN7N/lwzEQBrskNIsGHRm+odHptvazffU8UCfXEbyEyG6uGaXIhB5KzWTI3zMzf
         VHtfLigx+hxx5E38bnInCy5afueJkoPr+775guT1QI5zWSLIwZfzdN+n/CxjFwjFsbgm
         E/cqU71yWATM8G+3BfP5QNK0uZhmUrZ4JCWZ/UvBbj/4tLri7cu3UbJoRulkn+PLkhSV
         9l+qQQHLA+ySmvhcxDWYCEtaNlMe+oAXSf0y+JxuAty8R5etMXFWLM67vvjnf2gb9cgE
         hmxmIMuO6pquyt+vHPwcyqUX1f0UQwZteSslHD20vHkCCTXDozI+uYGto8jc++/TKK/3
         KaOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yfq3JOklYMMxi9Nc0Y4DLAkVzf4HJsX2OAdaOa5kL9M=;
        b=Ksw3meriQTC+iSHiacnF5D4pA+H7TeLvkYxKuh0Ozk8wYVVqLuGWmmnS2aXQ2yJdPe
         buFgDEFJbeOB5OxkaMpEQ+IAu8FO6ek/QX1R3cWmuMSRxCroa1t37c2oMPDVz1c6DyLV
         MBfglc79jS1O91bedWmX1Ur2sKiXkrdzBygEEzun7fegFN+WdTA3RvHU8mp3ysY0M12b
         W2oEHS9j7Jpmf8ZnNDn9R+ULqtOO4jsD7pbeLd66f+23h8UVjQSnLnDZLnI+QL3V+YYS
         HLibfCeOlcWk/ohhRa6PWsjixMN0xIaVfW6bI7YGEJUAHvdx7mxed4UX8k/zBx1bCN0n
         6ppg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yfq3JOklYMMxi9Nc0Y4DLAkVzf4HJsX2OAdaOa5kL9M=;
        b=VuZItlSXSbRti11/UOt0NgfIeHmnB0rcUSzIIWDr7+aUVXW0Z6nkjeq3jb/5IthNNa
         eT6Zb8awr7Wyq6WVZJMvI4moZXe/Cr8XDP7X9MqtvSKYsaJk0+jlJeP49YYCb+5afHbz
         f9Ah7wKJdaJRRV+ILb7082okfMDMZ/WChQPQ+BMBrbv26/Gtctx5BSqOZMR55Lfzqzjl
         IsuCUvSVJfdJB9C27Kl6+GyhYvAD1OZg57iNGACns85gSFLdpWfBq83jRO8KxbfSGMi8
         AHqIVutCO5DlTlqstbS9iG/gJF8bwDJPbwJ3EGD7sn3BfY44SssCFdtBQdXqIZZo1Gk4
         s2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yfq3JOklYMMxi9Nc0Y4DLAkVzf4HJsX2OAdaOa5kL9M=;
        b=XSkzLiiiY6InCThv3s76ltAXMPIlNl0FBlYOlM3Xx3tRh9eSuFgpOVhQNM82k2qFWU
         9630GKsuuG1z63QR9s21qYngFaiDEl+JzuMnPrxdptHbL5QZ0jFbNZ8ndrQZV4uDr10v
         RbTNvPo8TpRUNatpecs7ov2/h2ib48F3dZdCq6CpU6LjgnfqIxzJfX1bWqv8gMDG675q
         3KVUohSHc+8iRRwBuZBz7cOSY0NJ5XJjul8RBmX9B6H29PwX4pghdikVpfJXJQapxYe5
         7FJ46A2BQPWKFmEz8PJBCb5ZY6FtulhJLb+Nol51BrYra52/N3nSmH1+mn+gVClDpuzH
         T/1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2dSLIrB7AyjWVfSSVyd5Z+NSKwK5O5eFVrFydYR7neawGDKWgc
	VdXqwS27DVCEIrNrOHctDX0=
X-Google-Smtp-Source: ADFU+vurcRe6fe4ucykEz8m/8faeWjXlnaalZ8omDNsoEstXBNAJpWZ7yA9YZZOkY5h/Z1ZuAMPCnQ==
X-Received: by 2002:a1c:a714:: with SMTP id q20mr10616584wme.148.1584716148976;
        Fri, 20 Mar 2020 07:55:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls2632275wrr.4.gmail; Fri, 20 Mar
 2020 07:55:48 -0700 (PDT)
X-Received: by 2002:a5d:6cce:: with SMTP id c14mr12283680wrc.149.1584716148497;
        Fri, 20 Mar 2020 07:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716148; cv=none;
        d=google.com; s=arc-20160816;
        b=eeYEBYFmBPAUR1ixCvjyarxEB/tAOMZ/OgmF22UwKexZaFftW33TbEYBHNWPH+gPDL
         ko/gTCMVJA0CBXKKieYUcORgrZvUjBxHfgf2Af6fu+D7Kt0wno/KvkUva8KrkF9eNxmQ
         YWxQTrEbBJyUB/pO6ekj8NfOZ4uiqGQIwWmGJjHQdjfyPHslM0DVguwVfF/0VU08HnAx
         0a/EVTAdpb2RChdUwkeDhtr9KZsyT+fUFDtKR4J0hp+JZLxH7ovUMkd3V9C54mjA5JWJ
         E69RiahVyWTdHFMwA6A1x8Anl5Z6EcnEGy0SNMXLY3E6n2k+i1Y14STfIShmf2djgPOn
         p/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4kf4B3k+rYAfi5xa1/EHQmCuEv8RhlG9Yi250rvphB0=;
        b=HiZGFwbhSpCG+ibP9w448q0lFYsUPPcp0TYk4lH2Ytxuv/mDh+ZGONUrLLBQglOrIG
         8ppv5VV4asOz8i0SaU7Cnf8pgsLXSOgBR0HJlEN0rQtO31Qg0jYhWg87G1vL7U7oShu5
         saJqvN++TfNR3KLeway6ab5JgMRc8rSwbuAhgfGoNfW1M6qbpnvKIec67Tboyev6qTBm
         3ZWrWEG+0pWxOfqfKlyGQKqtsAbnOD7U1r6Qe1UQ9DBcyO9aAWAOC+u56jLPyTPbh0BM
         H1ilGIHoKfhxhV2lbVxD1yutklLMaKbHX0ne3K25XzRT9yVerBWID6KFT+HQu3WCDBac
         wAYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si349895wml.0.2020.03.20.07.55.48
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC2FA7FA;
	Fri, 20 Mar 2020 07:55:47 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C5F473F792;
	Fri, 20 Mar 2020 07:55:44 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 20/26] arm64: vdso: Include common headers in the vdso library
Date: Fri, 20 Mar 2020 14:53:45 +0000
Message-Id: <20200320145351.32292-21-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
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

Refactor the vdso implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/gettimeofday.h | 1 -
 arch/arm64/kernel/vdso/vgettimeofday.c     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index 5a534432aa5d..afba6ba332f8 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,7 +8,6 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 747635501a14..4236cf34d7d9 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
 
 int __kernel_clock_gettime(clockid_t clock,
 			   struct __kernel_timespec *ts)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-21-vincenzo.frascino%40arm.com.

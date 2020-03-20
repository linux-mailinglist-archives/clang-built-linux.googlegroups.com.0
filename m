Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB6FS2PZQKGQEWQWHTQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF6A18D1CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:52 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id c6sf2730040wrm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716152; cv=pass;
        d=google.com; s=arc-20160816;
        b=PT0J0WkhMI5Wf2Sq00de3zr+PpEo+Q6zlOSSv6mked/7A5G1BBOCzuzanvORKkp2nn
         lUubV8+u/Gc6DuBRqe7qkHzTRkE6aa9tFTCJooisqzMDquuTvby9Ism6z0u9I7xdZY0N
         ZwjfN9+gkPbazgN0eKIydNYhpV8+HbRoO+IMSx2I3puXIRdr9xXZ0VDVmhMjOSKPWTkU
         HyTPzEn3y0XtWZqIOb98o8pxueSgmd6l3/PyFY/Kl2dRubleTk29da6M60BPEZTFvZJA
         W5/LZlQhA0u8j78zaJMFJIyX4JcVxIVcwmbhkA19LumHNxsToR8kUkhaUXEh4HtPOC+p
         oBgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EEa2KfQOyJFI4EkWGYX+5dkh4AZn+dOhcKIxso9cbos=;
        b=L/jDlsEoRyy6KQA5968UrlqffgSBz/VQpwIaCr2Da8gH0NBgys6AR9tu/c0owVoOUE
         pQDyhjLwUPduoBl4WV/WiK5roZQHBgeftKHWRyQnnCFzCadHydD/yhE/c45CUgA0Rqaz
         Go1ODtSWQhuRTSvqAN5/BSnOLCkQDWPZ5g5fyWBxmP1mpcICtuS8LFAbHn5ab9uHvel+
         W1li+DLGVrVELgDIWT+outXFre2tIpVTdlDxs2/Bsp1oTIbjTqh2QA6pnwgNhhxodjFw
         Jco4u63DbYZxIOr4DbdLQLwZqtCSyx8zZWLz99KRlNTt+S9MoKD/du1HG9NEmIcOzIdd
         M5Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEa2KfQOyJFI4EkWGYX+5dkh4AZn+dOhcKIxso9cbos=;
        b=GR9dLlGmfngu9namQiuD0yP+bTZvAhNXGeulhIuJu2Q0aUv2U5vIoGTAi3ZJxu4fOA
         41NW7Txd+Fp+nrbyka5QltaD9zTya1/lG5xv40RV4RUib1NoQQ0mHXVYpQh8tnBPAbbx
         ltxylV5kNjuCkZbT9xShwSYcvrQuszfCnZNDFJcck1CgsWCm4YbWltg/Vx7oNGHq/L/R
         hjOiUf7qWZJgielNaeOfZqP2lvyMsKE4f8bArcQ0MDP6mhCbUE/eerjEO6XlyN3uAgX7
         ptz+TkT/1SJhGaXbc8GYr6ir1W//2sGjNrXpqi9Oh01/8Yc5/kb06zzWvA1XDsc0jaf5
         pKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEa2KfQOyJFI4EkWGYX+5dkh4AZn+dOhcKIxso9cbos=;
        b=hCADBgepOqEyIQ3aL1u0kmYH1fTJHKUmXjM3N7mXHW6DZvAvgbl2Ly4NCUpkGOawZ5
         2oG5Fq7CJX8QqZ0vNSOdGOm6g/oAjd97zQgwPoKsAG8O6DjHW9C+/m1UtXXFJ8e1oAZr
         KYpHHivK2YbQ8pc4b3Mvg42ts9zxIGDnCXuRHJoJGr5ypqjVg/hjwY6WIU7+UAx71XBJ
         QsxhAYHh9PNHqpFQJALaKlSBUc8KxYRcHHIyvxWJMVefaZlIxtYKIL05O93xD5UEH+aF
         sUoK2XDLwZV3lk89zFxYp0K4bM4X7hur2wcZ2LCAU/lPsS0VNUFkAvKtCa2vfdtMeANS
         fKig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0X80mCrc6qhWQAwREZ8ffOcYVcCf+RPNXG4qBEJbMitLMcLtx6
	61/Yil4bR43JhJhrzd4LhuA=
X-Google-Smtp-Source: ADFU+vsdyGHyOB5Vj8lLc0NoLyWjXotH9s2KrsnTchdgrZEbr45i/R+Z5WhalR4Zq4cOXgx+K1VtUg==
X-Received: by 2002:adf:aac5:: with SMTP id i5mr2841780wrc.285.1584716152208;
        Fri, 20 Mar 2020 07:55:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls2631410wrv.9.gmail; Fri, 20 Mar
 2020 07:55:51 -0700 (PDT)
X-Received: by 2002:adf:ab5b:: with SMTP id r27mr11877442wrc.191.1584716151616;
        Fri, 20 Mar 2020 07:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716151; cv=none;
        d=google.com; s=arc-20160816;
        b=HzeIibGhI4g2I7g7WQxo0zdhBdbqQZAR7/U4YrnJJoITlkwo5dY1SPih7FX1Ddbt1d
         rzDgt4eoHpe/tc8pscTyhqUqkIjLN5+VIcCLmfXJdJf6Vzkc9brmmEK4LS+vqR/rCy4C
         U/M+SgKKsOJgfodOp2hM7i1N4rANYJq0X78+L9X2WvN6zi7Acw/xIH7lMhgfalmdpnRf
         AXihY7c89KhMuLn34316nBQLakGjGblEZ+sST93JGQK1fsDLXRLvtLbKzb/GKLDiuy6N
         gZvOcr/8WjhRWsyDvw83b91HYjv0A6tH7VsM+Wc67GRl/ySTzz4oQmyYgvmy/2SfGHaM
         2QIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mq33o3WZ9ghWe6JPB/nF6zJI8I/enTATA7jQDxtOhgo=;
        b=SHLVxMF6f9/9OHnaiNnZoueMWCoohLpuRN0+xE8VXZdQvLaPGLIklnsn0DtL6SD06z
         9lgZrGN6szy42mmJQLa85aYLEv3hdmhtwmHR8LhFpopG70xebpNU48JjcZsDCNuIRI2Z
         tWLWHun4WlnH5QHOnAaQ+r6suDK1XfcOFhdT4v5AFLH3hIwniLfrodsJX86q5AqPb3Y7
         k7FkZd52aED6l5Zyg2DfKTv+E4jGIqaHBOu0F/9HoGZQHMeqgTBlkWL8YmHnk4jUaA2S
         46e9BO1/tvpvynxHgYcUIK5oBxkEu5okzWpRR7SV3skQxz+iN8gf7HOlHqd0qknay150
         fu0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si506583wmi.3.2020.03.20.07.55.51
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7143FEC;
	Fri, 20 Mar 2020 07:55:50 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F25663F792;
	Fri, 20 Mar 2020 07:55:47 -0700 (PDT)
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
Subject: [PATCH v5 21/26] arm64: vdso32: Include common headers in the vdso library
Date: Fri, 20 Mar 2020 14:53:46 +0000
Message-Id: <20200320145351.32292-22-vincenzo.frascino@arm.com>
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

Refactor the vdso32 implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 2 +-
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 401df2bcd741..b6907ae78e53 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -8,7 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
+#include <asm/errno.h>
 
 #include <asm/vdso/compat_barrier.h>
 
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index ddbad47efaa4..5acff29c5991 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
 
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-22-vincenzo.frascino%40arm.com.

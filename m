Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSFS2PZQKGQEPYL43DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id ED50F18D19C
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:04 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id o2sf1027139lja.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716104; cv=pass;
        d=google.com; s=arc-20160816;
        b=koHyBF+sLw7sl2BcBMOj8c9By/IQp9/y4QFuPGabE8AG8gQkE/q5xIqxM6R68fxPYh
         WHa/PR/B8rbROOo3fzpbLxiNiJmCzYG3Dk4YR8SAhxAw77IhDPPklitHDofiDdPdaJFZ
         3NTt3DmSUL0prhLiiuXFZ5Iec34LYHvTrm0gKsNJo3L9xbUF+G+CkB+cPJ5z213aDMIJ
         yK/rePZyA+8lPEOzR9JTJDQ63renkV4v98oplZv81dyGWd0OvjUnqMox0lDWs9PpdXGB
         Zg2G6fVOUXB7a3sETT2qhlEF2VU5Euua/WDauEsTH/CJshAIHeXa02z5fMDhp3cqliGI
         HEIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GJ2k04eC2bQTP6MneqoUhG1rNqP1kwJHcBCetwfhJ/8=;
        b=G3vADhNnNSpiEY3OYKIuYFByBRbGCXKv27fkTG8JGEHKXeJlUIBIyK8XOefnGGOOIY
         dAl+My9tKBPPliP2Q+Nc+yVctfdALZMTb7LRNFrYBlIl8gNb2tcD3Zx9NZiCjHH5DT7i
         U50YNbo/rL8NCnjPvApI+XeSO8cnWdGiGvNb1JsJa8fRC6cfwfmPznemp/QuozsGc7lj
         Kg5xLdR4GYhPtnWLyvvru83fmmL3EqzZ8i+IBIYy0HBhlDz97Nx6Ugqm3dkZFdXduaLA
         fp6v8gFgKhtVrKxKV6N8v5G89OcT9rZsin+iSDDFLuqJCxXLA5rxoqHUjCd83/2otUP1
         mILQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GJ2k04eC2bQTP6MneqoUhG1rNqP1kwJHcBCetwfhJ/8=;
        b=b3AsITbBqnEW6qgtJYJB1QYSeixHworhWf7VEvEorbv7yUB6mzwHHwXfJfxApcWK+t
         Od8YDpSWGCPOk2R2J4KLsG8/6tw912SYMuYD6Ax+Xjx+1IuMw/ScDXyE8qJZvQm1uwKa
         Gi9kN4PFdrhzcFGwSy3hmIpz4+v177UWRxqOw4Bo5/QYs+7S0EMKfxoi+j5wliw5y915
         FNvH6kHPc5/h6WJ9+Wi+C9DM2Vmr6MjeuTxlq/YYEitMKnIsJAAiJFDb3Ii5OqHfGzSv
         zR4vvzYjGKBMg+03KcmTm5DKvHo4r/1OKIrv4ittuNs21JUBoYPMc5znX1ekJhy+agF+
         95TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GJ2k04eC2bQTP6MneqoUhG1rNqP1kwJHcBCetwfhJ/8=;
        b=BlGxT4q2EwlHBUSvlAdve4ij2JSoccKt55XL0jaFziuCsKFoaZhB95MMxS8iNYD27k
         k9q28Z5X0qAYvzlYWk33o++evdr/inOTzCZ+oGnLW+4v7rViV7LkkQnoAHmSSJvSIfee
         Dnfite6lDllr4pG6pneSqYM7RHTzStBMEbGXhizS5heaRFYgLH0sz4H5//13oYqRXSCm
         myZjruBvJUiNbH/l/lcY7/Ty6kjP4Kdo54BmDMinyiwgn9rSLE1se1kCZsX1qEpzLU6U
         hzKKqQgMUBzFGkNOBdqap8FXxh+C1A1l5WJnbFgiD+OLFKP5CSkkj5ARd4NS04qE45sY
         01XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Lii3xpXhVgAgUgncsZVOe8gwLgg3kEMqwaLiIFFupZDT9czR6
	wJ5Gl2bx24CJJbss5XxCkDs=
X-Google-Smtp-Source: ADFU+vup6PjHLZ5ebQpqZC4R+7AIMR8ExWgFFl0ELoLqvU37pcQPuppwJBbTgPhrR8J8Hx+Q9CB5vg==
X-Received: by 2002:a2e:b16c:: with SMTP id a12mr5794129ljm.83.1584716104488;
        Fri, 20 Mar 2020 07:55:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f80b:: with SMTP id a11ls1019851lff.2.gmail; Fri, 20 Mar
 2020 07:55:03 -0700 (PDT)
X-Received: by 2002:a19:6049:: with SMTP id p9mr5509595lfk.45.1584716103777;
        Fri, 20 Mar 2020 07:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716103; cv=none;
        d=google.com; s=arc-20160816;
        b=xjiz+IJrf0uubigSThoBKW4fhjVlXcaCv+se3GeIC5QKzWDVCNFctkfF8iz/ePJh3+
         A5l7cDcaWcyVjaeBi8fNmkgOxa11q8zZS6xSPOUMWIOprpILSYdUHWqSwrgKdxm1lOTx
         RlDJBTiIfGn4Ef7btl38Zkcrh6Awj+g2LDx7+8gJzONWeZIVgXoKblBwrhGxj/t6KjTT
         3zU4vIqIW9WB9IDm+6i9vhrY3dUufzfjJGHpVEXTpVCEbMmgRSCfIkR38QfFyCLO9D3X
         KMdeeigqhjs7GxKMqdaL4LvU1B0YNwSGg6DhsLo3kKWYMBDwjuJR1GUoKoCgZl5jZtZR
         ateg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gS5s76aQWNuX5erIr9gG9SwCPcMgDZLVyK8btCAk28Q=;
        b=tMKexmc6encErY+A6nKtfNBsu5Oimg8a3YtU00dP2kd7Cl06E0Y8r9ppYyHlXec7og
         kihfQqMEgPF7yR1MgAYOOLMdLe674Kmi2coSPBeKnqEPvMPj8yT+6Xs4FMGIkxAn811k
         XnzbPm2oBq8aQWrCa1BC7sTci198p0pBPrpD+iSH4XWzepzAYGg0mUNyY6Q/gFZ22m1D
         MItkr7/zm6o/uQ4ksKN4/srkxuY9N1rk+Tkg2KNQw+B4S7cjjCbwzA7twva7PBInhFFP
         JvHj7M5NiuwH329MmCYcU0pkySwY9ZvuYSliy/A7jYnClGW1BBo8jyIM8VSO8mBVu2ge
         0fuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b26si394498ljk.4.2020.03.20.07.55.03
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4E911FB;
	Fri, 20 Mar 2020 07:55:02 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEB7C3F792;
	Fri, 20 Mar 2020 07:54:59 -0700 (PDT)
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
Subject: [PATCH v5 06/26] arm64: Introduce asm/vdso/clocksource.h
Date: Fri, 20 Mar 2020 14:53:31 +0000
Message-Id: <20200320145351.32292-7-vincenzo.frascino@arm.com>
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

Introduce asm/vdso/clocksource.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

This header will be required by a future patch that will generalize
vdso/clocksource.h.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/clocksource.h      | 3 +--
 arch/arm64/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 9 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/clocksource.h

diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
index eb82e9d95c5d..482185566b0c 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -2,7 +2,6 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
 #endif
diff --git a/arch/arm64/include/asm/vdso/clocksource.h b/arch/arm64/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..df6ea65c1dec
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-7-vincenzo.frascino%40arm.com.

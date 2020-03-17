Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBYECYPZQKGQE27FSWHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B65311883D0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:00 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id s20sf6251339wmj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447840; cv=pass;
        d=google.com; s=arc-20160816;
        b=oA/C72PyGvjuA3b0PKf0V66X7pKvWQ/hQKS6Fkufy4qXegI2vMtE6reA7JnrkfVqJr
         BV5s16+ANcecxpl1fAKR3tYvEwmmXgg0wXJ0qfdJx/2po+l5e1qidgjsRb3xaD4P9uXK
         WKknBCtMg570d1rHE3NtltjICbU76VRlQTDVaYsu8FBwDNqdz1XTw7BhVZSZmjsllxgT
         fu5ywkoPVIexPenrzNzsjE2PfYhGk4l4PPVt4iHYEy/yca4+wZ01R3z6GBJM+zbxDLZi
         TDdUqbAA9T+ZfxIQ5NF1hz9dAT/zXEVT9UjuIXTltDF/i7eUzUYrA/bCkQdGA5KNZbqi
         OTJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8XoBjV74OGzibFMugdByJ5AcjWdmFW6OdbzVtQDrSf8=;
        b=zYL7Gm94SNuZOoewZ5EBAGSEp21w1o5nM95ua7itPO4X/JrdS7cZNRFkwpY9hWROcZ
         DUsfX+EGHEoKth1s2ibVBLGoDUVLViSXKqTEKCHzAwmxa81NAfS13hrhY7yhogJPrKXx
         pSEh2f7gs1f7EbrO6cw47VlbcZHCkcsj5VHFPqYTwj40uiA3HtRhd8DKwYB1bKjJVulK
         W2bocJwbrJRsfhl93Jd9bzsTIkLMXR0c7zIhKV8/38+l4XbusQTf8rR4gb0MdiQ7JsGg
         6zX+lg7iLHiij3C6zXfslCMYjq57uzIqR9CYBtYm/oabAEIlweXOnGekzoYqI/Oahtyo
         Z92A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XoBjV74OGzibFMugdByJ5AcjWdmFW6OdbzVtQDrSf8=;
        b=Bzoc/LlVRxJGOA2/uL4sxFEZ7VpOB3psmsS2oidO9TSidanp5XNQ0DhL0UmUI8hmvE
         1bnxhWIXyG8bV/SX1hCeFgelEiilNlGakRuS/PYoqmHR4aDarMi891rj69xJ7R7JivQL
         muNPkH7IMtjJjo+W9xYSeJ9lFvclv7yJi4XbOyqULGQa39QaddnOWm753HZGXfTBTOWU
         m6+p2HF4kItVr+Kt3FNlS/6EJ/dA5+769ixm1Px8yShU9PVzQ1XzrxJ+apZMQRF3nXew
         IytlxzPIPZE2gSQpbQ06VgIQNQblOZxI7ftpHZQF9jBMBCcwf40ZKTohNXhZbBJf6G/N
         Nb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XoBjV74OGzibFMugdByJ5AcjWdmFW6OdbzVtQDrSf8=;
        b=Y3WBJEB3vKw+eM63m7IWwfonhVjsvFdiE7khDbyyiB9lb7lUaPM5oq+kAJj+oDOw8y
         oynXUM8pr2hRrJMerFTvWSRprdwwkvZX0iZaRudhAWMyrvt8Bb9SvDHi9ECOyVogWORO
         WGMNpGQNrcwtFixV/GWkLyJwDckR50fKAf5/ZYBwSPDoWjzybX/IYBNMxraljxfjafqC
         G63nlRJkOcW8fYe0KxNRc7u4k8pF2xKHy6AZCpv4lOmQX6SjNLyfIaRDdCQRseGpTaGW
         dD/J0Uffjvj9s/EtXbt3p7h0vIPGEKrXIUVdprJItqQ7n23a/3zDZoruSaQpBDE57dDA
         j/SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2PV6XTfwdPUQKN9rU6fJmY5T9/kTlMNnwymRiLE776qQ7lyQsI
	guUtBmI+dXFMr3Vpoe0PO9Y=
X-Google-Smtp-Source: ADFU+vsiWcqv5dY8U0GRoaa9M4CVHgZ8vNZQ38B24qM0vXNzP2gITchrqSMnByCNBa/SQ5DtvhfiIQ==
X-Received: by 2002:a7b:c92a:: with SMTP id h10mr5000274wml.26.1584447840481;
        Tue, 17 Mar 2020 05:24:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls31606wrd.5.gmail; Tue, 17 Mar
 2020 05:24:00 -0700 (PDT)
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr6030238wrw.313.1584447839997;
        Tue, 17 Mar 2020 05:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447839; cv=none;
        d=google.com; s=arc-20160816;
        b=Z71M/zn1WrYBdaMgl7eO+st7+AobpIyuqPLNslfiEMS53/EeDzNE5VwqgOh2Laop0e
         Uvkv246pO3hHDUUDPxNX9zzDUHbaOT9U0dgEhXDel9yWZtbpe7BoiOobFFmyIzrbZHsQ
         VmaoTlulysqL5V/OHgsbaJoy15LhxyJmB8R/IMN/FO0A/f2iDLRnbYyLToVj/UXWFNHr
         FIbIzta5RbUdK+ys5/0JNzztY2ykhM8Kr0oOYjxoYeW+eYrH5rj7TUE4V6VuqvpwseiX
         FD6uiXagWJpgWnv7b+UenFoAPsmFtlN09k6LlnFMzJcYd2aZokogmeIkglBCRv02r/dP
         QwZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=FkCQtz5zdZ31EWGTMBiATYRW1cDKXcnm/mq6Fpml99I=;
        b=IeaaHC1s0NmM9M7UGXqfil/NIKZbo+45aTTRNWReViP4ikO/pPia+ZTcqswd41sMlj
         mjk5PNRqiq7HiqP1lY80SFGMX+FGWzdSAxzChwLTqAeyxhEuCzGR/Z6bUK7ajTcbCOrU
         HRZfgeZ6Mfy3S9D2GumRtIXOGuHUXefJXtwYRsx9w7k6yx8wZC0iZPfJMe3DQrGPiMqF
         JozOZf0oYAQyljhZkTWmLMoszGaNvCrvU86BMTxmCuyBWC1AIRiIhkKjNCS0l7kE9FQS
         J7cJpQASDSZDH3dUFjbl5FZPNRKv1QSM00z3QjzunQqhzTz2+ikjBIDPUe2c853AavY1
         MeGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si1024314wmi.3.2020.03.17.05.23.59
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50BBF1045;
	Tue, 17 Mar 2020 05:23:59 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 401173F534;
	Tue, 17 Mar 2020 05:23:56 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 21/26] arm64: vdso32: Include common headers in the vdso library
Date: Tue, 17 Mar 2020 12:22:15 +0000
Message-Id: <20200317122220.30393-22-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 81b0c394f1d8..8d8d1c006a68 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -8,7 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
+#include <asm/errno.h>
 
 #include <asm/vdso/compat_barrier.h>
 
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 91138077b073..54fefacb1637 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -5,9 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
-
 #define VALID_CLOCK_ID(x) \
 	((x >= 0) && (x < VDSO_BASES))
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-22-vincenzo.frascino%40arm.com.

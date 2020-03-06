Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBOVCRHZQKGQEQ5MTNMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B876717BECB
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:46 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id z20sf1655478edr.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501626; cv=pass;
        d=google.com; s=arc-20160816;
        b=AB6jvqaByNsAfBTgTK0yMONMxnMPQn79sIy9ynhEJwh2TTw5WaEG2Ln0SXeXqziZi3
         K+iLogGxMOrLTeF9KMWpcbFzpjfHYQU7VChrQYW0fy5vzs+98DV7emE1x9ogctnvjWvs
         /9g3KmMSBfc6QTZG+FX2jgO+w1yWDZm4o/rf8TuEWX1kNLHVQWImqGmu9N2bEMbz7yOT
         SQvkLr8oLx0SeminwOpGgVf/wQYpQTqMKHBDfgEaZtd3h0QkSMN2XQQ4ycv05J2tv0wJ
         lPzPFStISjjWmcN7O5X12ZDbwqCc3y3iCKQ7QPU5Yo6kTHd9gAvkt8WuNGksB6yEqRF8
         UPnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6O64lAfZWJp9ksxq1kq6XhGLEmSWjhQLrWr5TrOq10s=;
        b=OIZMuRNZRHZQllujOKoiGhAmutEsWeC46WqsmF7HHb7XAwEmsr2mitn+iobEDC9smD
         lqyUTOAxTVqgThUivCyDRosAIZDOLEcRD5Z9MK22b8Sd7b2kj+sEFqV8b9xTM1VYQJPl
         H33tNxKWXRzMzCrB2/7HGaaoTlGiNZUXBDbXsj7rudscvZxR2l/6f6JxFFeoOCMo6lHC
         FLvRqX4uEUFOeLEJGlQasFWgHT0vdKSJylTfHi3UAjzjJK3Ixiv8e73Ez2iEtderWPhX
         7XGORisWY3wI6ELnpiy1u9x0+wis6gF9vTsvCVeljSEsII7AWwcL2ytLzbFuXSeRBqAs
         G+UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6O64lAfZWJp9ksxq1kq6XhGLEmSWjhQLrWr5TrOq10s=;
        b=fpsHSOvhLyIBkPTYeg+yzT3VyJJTb91Z/JxECHGdyZ+lrL7kVzUDLCFiNutm76uUyZ
         gnSCkF3LUftLw4C7AUdo1TLfT+GMiHBOQvxaOWRph8+PhTW+Se/dTrjx/u53gSU90srt
         By5HHhqX2tSNLVAk0R/KvwCTpwpKCt5ofycnPf9r4bDdk+AfaFI0gY4kVu2fVTPaEYKD
         80ojU4Bm0JYzBrp5nfV1Mbjp6WoFqgwVXH/+qEYsETFeE2I5eFDFOQrtXVwx4tTGTYqN
         5feQb64Dmz45mFcl2k0KUejA52NY8SkOY1wL1NiZhCxcbbBZiBqBc3dZfTfRWmL+U2ii
         BIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6O64lAfZWJp9ksxq1kq6XhGLEmSWjhQLrWr5TrOq10s=;
        b=ejGh/KsqX6wcGG2W4hXakZiVkWRw7f2YvnRJeMvc3znEgmgIW/zSJ5k4fgzntZSbs5
         QRmmXHfFS2IHMI1pyuCW42C+rrx/KEWK91Rlo5j6YIfO4wwNeiJassZ5x8JH2ea/67Y8
         xfKSgYuIZPXfiK4tMGE4vHqTuR5Ht3B48tSAH9Hm80szTQeqceocGoCUgFcGm0frDcHL
         +v5Pga9r4HDZWJHbnAflJ0cZv04nKtQHdP44qnTthhsv9pKMGPMPOFD0LcZPEls1NYjn
         j/Y5qhZ0dJiQ0Ji5rYmddVHzws3wcwbIuZ2LZYZgiuA+xiQDVk0uOue8nmvKrfmh7vfb
         2ygw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Ob9uImVhtbAWM4LGx1phXMrlZHdDfAfFALOrf2/KvJO+KCuSW
	PGaN5AuFeU1Wdb6Nb/ID0f4=
X-Google-Smtp-Source: ADFU+vu6QUSNx8SyBS0f/A9iT//4r7ZRgZGgm7/vFnOYH8NH5uiqidV+L02XawIpOcKIqRxE260qBA==
X-Received: by 2002:a17:906:490b:: with SMTP id b11mr2955329ejq.348.1583501626466;
        Fri, 06 Mar 2020 05:33:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f14a:: with SMTP id z10ls1173188edl.1.gmail; Fri, 06 Mar
 2020 05:33:46 -0800 (PST)
X-Received: by 2002:aa7:c396:: with SMTP id k22mr3230285edq.45.1583501625983;
        Fri, 06 Mar 2020 05:33:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501625; cv=none;
        d=google.com; s=arc-20160816;
        b=NfZLHkto8d+IrecV35jzGiS9ljtVrRd1vGAKnzQ4OhPbTZqaHsP3RgVYkPTTI3ZtJG
         67+73u9/01DyirWasooIScYsv7rCRwn7677818EJciJaCWTpxWFjxKVBjwS5/7Lqbq1N
         57RJkRUAgHKvIs8BPZ3VNxpLazVwEe2rvVidw6a3aPxdCcNgCOwjn5Suez2/eWFiXnl0
         +3BwLRCxWFRLkq8vO2Uf/eWyZwzNm9LiVuVyWk0YQS3WRC+jRnOzQxbAXpPKDi7BzxsM
         MW5ixCwwWtpqZfVYcxPDXOSqnNVupGzg9aXPZWgpGQ2YtESsANNAxw9ZpsryBZIcYjQ0
         Zbhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=VpMW1g2ZuRtWbe4qz0mLOx0Oeu98U1siFGLVqKbQ09U=;
        b=EeamIX2RMYpWkFXTbK1/91mXUrc1uLH+oE7OFEY0CCGv+VldT0+N2Gyd0PzaD+6xms
         r+U412iMkRskU1OSn97umxDdkCgrhXXDUvBdm3q9emArV70xiMyhSvDphg4BQ0XPP1v2
         Fo4gPU9dhmSH9sON1r1Y+SHx7otRNLx2e8ZR4ZuGdayKweaHL00jFFAaVMdwA6DbW/qr
         x0s99SJ9IZpxk2XKSFotT/s47UTNzvcsnNbMw6wTh21J/f6kIeEYaMwDGjP8M0wLeSYL
         9FOsCQzMVBdGfdz4Dx7qjJ6UrYm8QsbYJypl0MQgjkyPeseotSovr/sa49lua4WtyVFI
         Wndg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d21si109113ejr.0.2020.03.06.05.33.45
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:45 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 560C7106F;
	Fri,  6 Mar 2020 05:33:45 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 946EA3F6CF;
	Fri,  6 Mar 2020 05:33:42 -0800 (PST)
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
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 17/20] x86: vdso: Enable x86 to use common headers
Date: Fri,  6 Mar 2020 13:32:39 +0000
Message-Id: <20200306133242.26279-18-vincenzo.frascino@arm.com>
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

Enable x86 to use only the common headers in the implementation
of the vDSO library.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/common/processor.h | 23 +++++++++++++++++++++++
 arch/x86/include/asm/processor.h        | 12 +-----------
 2 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/include/asm/common/processor.h

diff --git a/arch/x86/include/asm/common/processor.h b/arch/x86/include/asm/common/processor.h
new file mode 100644
index 000000000000..60ca2ee6e672
--- /dev/null
+++ b/arch/x86/include/asm/common/processor.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
+static __always_inline void rep_nop(void)
+{
+	asm volatile("rep; nop" ::: "memory");
+}
+
+static __always_inline void cpu_relax(void)
+{
+	rep_nop();
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 09705ccc393c..d66c5dd42cff 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -26,6 +26,7 @@ struct vm86;
 #include <asm/fpu/types.h>
 #include <asm/unwind_hints.h>
 #include <asm/vmxfeatures.h>
+#include <asm/common/processor.h>
 
 #include <linux/personality.h>
 #include <linux/cache.h>
@@ -677,17 +678,6 @@ static inline unsigned int cpuid_edx(unsigned int op)
 	return edx;
 }
 
-/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
-static __always_inline void rep_nop(void)
-{
-	asm volatile("rep; nop" ::: "memory");
-}
-
-static __always_inline void cpu_relax(void)
-{
-	rep_nop();
-}
-
 /*
  * This function forces the icache and prefetched instruction stream to
  * catch up with reality in two very specific cases:
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-18-vincenzo.frascino%40arm.com.

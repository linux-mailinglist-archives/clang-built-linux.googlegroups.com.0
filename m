Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBXOUV3ZQKGQE4DKJGWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3C3184B08
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:29 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id p2sf1954830wrw.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114269; cv=pass;
        d=google.com; s=arc-20160816;
        b=qL63RgwHybeigMYxDpmBHx0hHPr4ApSimFua7wcUf2eh2oyptqX0+dtL/4SMDgEoum
         KqMj9jFQ+l20o+n/kxBpWoeq5fhpb8D+fGa/D0UGBdJhuBhzyxWcDBUQp5NfpPT6ayqo
         zJBDB6NddkcITzildOAkw1c7gJa8Lt7jzDmfgfwD5mOgqfTPHQjUkyvAl7t3Emx49ikP
         2xQB3DnHymjlBv5KZEo7cCilg50HQ5yB7MaYRz202gwHGnePjB3fo4b0D4Qu03waaG94
         AJfNfl4vi0Awb8MgmswmT1aKa72qCZ73I2FDYhLMj8te06tOFy2070NrlNe87iPSDsRL
         BP5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j8RzP33L8psZo7sqmHkY326J0TDsBCFKAcv8Iz+VsXo=;
        b=lRzKpIzHEsBHD7deoSd5YIXab0hyAc70giZDKowIUbAlmOTahiZeqQBTJPiqsNdn7K
         IUZCypOfA9TubjfhmjO8rvMEdUSLGw8RaLr0D4NVclrLpg3E+aloqoHXqp3i4yfkFi7f
         6rUtoPd0C1fexQ8UkRyuFV4uX+uXcuTg47Ph52ngQrF2YZt1s86S5fCh9wDjvqICrs7e
         GgFGhMItwuQBFsrYFtfEt5v2z/oFIxDjcPQcd+ZC+qgS4bUR4HxaGAlgXDrgVzNnrRxu
         cR/QPefKy8nKlyaxlEhTZPwnxrW2rqMy9/QYmHszlPSgt1ZJ2dcrM1dEgC8OT5mmeIep
         ExCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j8RzP33L8psZo7sqmHkY326J0TDsBCFKAcv8Iz+VsXo=;
        b=nEHxaZr5YpKyqQjLspKNDLRNCKDe+3MpiF2fcJ+QFCtENgtmU+TF8jNY5Xf5lQQnNp
         YL9pegNav0s+Qs9rlAOozRbpfIcHnPXqHKnS54+3dnqN2cCM8Vs7HaGMhyJkvRauk0KI
         inw5SJYS9sysvw6Dn5oNgMKBoG3wjcdE7E+oAkWWEHLolwj1AYqdUl5vrP0hjQ0SsN6c
         ik/9Dkdr8DsPZDe7lIWRjYHgY28XkWdjtEnvTUT6swGsLfVwTAms3k9PRF3yetYBhM4y
         FE4Ce7PJJQj7LAzLfZFT4GnuQfcj1P6fhzr4a+E875JOfo5STuYs04QZya4bkjiGLcM5
         sPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j8RzP33L8psZo7sqmHkY326J0TDsBCFKAcv8Iz+VsXo=;
        b=os1rlqQOL334c3YJJWYYhZmvTDQ1oby4VL8Pj6/6zYQ+tXTqmISTyge3d/KHA87z1v
         GY+VFEY2TmD4p/P1a+IeuKTlj4czLrxdRNaK7YOSUVK7Eow6aAe9aXWj5ZnMxoSYJVd7
         jhgBgtZKFcNlVi02uPTUuU6HLJF8Qkou/nnHTnQorbWMHAgKoQf7sD+4LpTqu3V6kNJL
         1lj2VP05SP0wJHGalzD1Uljc8P9RZwi51Casqeo+oi4gZj/aYxOaShfGI8Lsif+/KdtF
         IkSSc+Q/6Ug10XNP7OzZoelCptZR4xAqKIX17W/MMPnTuwoBt9IAM7rE3moezC87sArK
         Ap3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1yq3eT4hypPnymcrUfYpuJselZ8+FOKZL8Q4o/SR/5IqNOwdRn
	Oiff4S18srmoO0BEfyWG0gI=
X-Google-Smtp-Source: ADFU+vvGVC/GPlp2J34uN2vbfx4d/4s2iUcV7Wqlqe8CCAyI3uzmr4lHrQKHlNHVIIZLYNQWW3zNtQ==
X-Received: by 2002:a1c:a502:: with SMTP id o2mr11163743wme.94.1584114269214;
        Fri, 13 Mar 2020 08:44:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls5108039wrd.5.gmail; Fri, 13 Mar
 2020 08:44:28 -0700 (PDT)
X-Received: by 2002:adf:ec82:: with SMTP id z2mr11082042wrn.302.1584114268717;
        Fri, 13 Mar 2020 08:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114268; cv=none;
        d=google.com; s=arc-20160816;
        b=vw4sQnqprqoZxQ0XtrYV1hhBFcvCiecWHX59cHWWM4p8mLWjRbWKsD5eLkDvlIDOV/
         c4H/y9eHkWjljeteuf519iFJsk0dbTqKhuLLL3Hv94KrNukAKaE92vgLilyNzHsDA067
         OZPQavuv51TYRuBfo8v4KT5kt5fp2JDjYBlXME/g1nGotqPeqrUtGigZ4L3QkhdmTj9q
         VNS0aqOgSemcTby9FU/bIQRzg76Dxb5NXua/dViMZza0Oh/9OrUa8AEvvwVenbgj0rl6
         vZtlkCTkPoIFKQEA+HpRcLNUX+bqlJdNVWvE5+ikEVdIBu+sH8hzjW5BVj86ALLoL4ah
         46xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SZJr9Zjb62PxdiJA95xJ8NZ5YyNie6bsqUUXkvVPpeQ=;
        b=yjuMtcofsVfh+v88vtWac36sHskmdAyreygan4yBuliIuZ7f71+jSwoDtBbmJ4+RLh
         LtrYY6UBzeFx+/7ldBwrLWndFun/O7I3fKPF0f82Y9CXhDb8DoXp/3fwOB5LAJdZgsQ3
         DsMkNQGAqBgQV/Nuo3rkyQFSADFckvd9qzWgQMNNIMjFXS71WlLnTnv5RvZFfhuhanpw
         pIfRX5hkdnEuA4kkmcZ9jo2uc9iPR1iKtpvM0B2bZYXABd6F7k1aCvZfRj7Wu8wO/UCx
         pprZqbaTza8Z9bpv5zGZscbI8GIHo8nEdXtmcIPFI14bw7KJnCF4WdeghoTgayxLVu/j
         QKYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f1si309563wme.1.2020.03.13.08.44.28
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B477FEC;
	Fri, 13 Mar 2020 08:44:28 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE5CE3F67D;
	Fri, 13 Mar 2020 08:44:24 -0700 (PDT)
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v3 07/26] mips: Introduce asm/vdso/clocksource.h
Date: Fri, 13 Mar 2020 15:43:26 +0000
Message-Id: <20200313154345.56760-8-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/clocksource.h      | 4 +---
 arch/mips/include/asm/vdso/clocksource.h | 9 +++++++++
 2 files changed, 10 insertions(+), 3 deletions(-)
 create mode 100644 arch/mips/include/asm/vdso/clocksource.h

diff --git a/arch/mips/include/asm/clocksource.h b/arch/mips/include/asm/clocksource.h
index de659cae0d4e..2f1ebbea3d72 100644
--- a/arch/mips/include/asm/clocksource.h
+++ b/arch/mips/include/asm/clocksource.h
@@ -6,8 +6,6 @@
 #ifndef __ASM_CLOCKSOURCE_H
 #define __ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_R4K,	\
-	VDSO_CLOCKMODE_GIC
+#include <asm/vdso/clocksource.h>
 
 #endif /* __ASM_CLOCKSOURCE_H */
diff --git a/arch/mips/include/asm/vdso/clocksource.h b/arch/mips/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..510e1671d898
--- /dev/null
+++ b/arch/mips/include/asm/vdso/clocksource.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_R4K,	\
+	VDSO_CLOCKMODE_GIC
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-8-vincenzo.frascino%40arm.com.

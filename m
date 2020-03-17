Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBI4CYPZQKGQEKLQZUMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E40F188391
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:22:59 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id i24sf5107385wml.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447779; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWmOVGjZUyG2Rwe0LcxzaBACQcia//Xc5A+YqNr371KsNZVk2DD/qBiRV1FMuce0Zv
         FoaLCH7JCB9fy4/Z+eIjs4cfy2guzUcjxaPFP4rhLhuygdr8hYV9njyKh4v+aeoJ9Eac
         NXBudGLd5ri0VYV/bWuueMQzvG3jgzd1NkyfsnMMiQsUC82rq2oNAmTxcypZ7ebaJrhQ
         qXP6dJynWIB7Kl604TBdIZRmKwqK9aSDZBbRoKmc/Wo8C3dgaaJlywKj0tMm9P2NUHJV
         DN30yefHbV/B3lgk5LBjk6waLX4fzJZmHr6ZWOk5CQ2m0HqfUxzWV0RzTe+CQ8EMIzNL
         yQlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sVnxWPhcucAtIfskdbipNDMUjEM38aebE5ZW9yLTat0=;
        b=VJ0P2zMciOmzzbzVW3cWCHvT5mD+6FkFQYzfUdcMNJDrxOMrzGdRXEBH/aol1CD66v
         blHPuy1kcJ+lYDUCYiCIL4T0ICcfKKXBicd88ObgV9n0MwPY2v2lr1b1u3W+IK4cw/Jh
         aJLdf0vKtxuLgZ3BF8PrnydbtdkfaUc0uuHQel9Cs8KpHnKego6FWPiwhKuNAgOt8QhK
         lZirJbQAZk1ddrYnA4cIO88Suwb4uvWMx1heepeNlV/GhOyL2f3TiM4vVR23zfx11ycY
         oOt3aTq3CCbO1oa411yYGjjgH6lC/PkcHqR+mvC2AqcLgpRZcEKZ2Y6PkvJXulfdKg2F
         XHLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVnxWPhcucAtIfskdbipNDMUjEM38aebE5ZW9yLTat0=;
        b=ogj3xdsviGyeO8uxyFbYSZR/xPei/lK0UJjWFJJxF+nUf2d/jjDDrT6IChTftJYcHt
         HQtYJM/cNoQg3wqmxU1k9XBOYDaUFzvzra+qLOQkmANK7lnr1fqOxSaLphy+6gPgOsOt
         1jLBEvBrKM8l9Wu6FTCkod3yD/+DQTmCaTjpKxOqt+8ObwaIYWwdaFHeFRwq7VP3DF5+
         xTfhDpyNLPDOFB6cqCyZ/5CJojII90NP3JuaRd/5me/Nl7i9F9wFvaMcI1yqv/pVZIu6
         2x2B3FW31KeqOXYRP4vsIgUBR/Gx3ry8fgL4JUQgV9wrOZmjKUoYA+NMKeIRdfE3DAc3
         H02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVnxWPhcucAtIfskdbipNDMUjEM38aebE5ZW9yLTat0=;
        b=ByMTwFUAXdfJxQ8+V1naN9tqWokRI11jFVpEcuvm91jYLUifd9NUIhfSnDiI4cNd/3
         HtnbjrgMTAh0AJNJv1iXzBaYkH1w3f+9UFcLWBSdTs6bncwHEo/jLLOdaXCoAjKbj5Tl
         zLIjhW+Bin7VE3yWC4pjbpptS/ALACmV3NOPrdOS0NS9+J0HD36hNttIw7lPqBWdOvKa
         7lMiVysqe8KN5hhJFCO+r20hbcOHySkH7EevVnsAWU5k9tkrKWVu2MC6AHZBj3SYw+oY
         aWOyM5cgRcTQmCgElzCPeZFGhXRUbJH6RuU3WTaael4p3+FzfO+h1jydhJRE6Nhg/BbI
         xwEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2gZHWH7rg2srkIgI5N10PblkFFCm4Z0mTJKv3KteFMj2kqG22r
	YuaqrSK1DsWzXyIJ6+7q59A=
X-Google-Smtp-Source: ADFU+vuxYJzojavodB/KW+IAdvvfhGgrr3Rsp9zhZwuz025aFTKxDdj3X+RVBEmQPyPLQlO5O5YU2w==
X-Received: by 2002:a1c:1b0e:: with SMTP id b14mr5118808wmb.8.1584447779118;
        Tue, 17 Mar 2020 05:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls11066721wrc.7.gmail; Tue, 17
 Mar 2020 05:22:58 -0700 (PDT)
X-Received: by 2002:a5d:4c47:: with SMTP id n7mr6130937wrt.254.1584447778681;
        Tue, 17 Mar 2020 05:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447778; cv=none;
        d=google.com; s=arc-20160816;
        b=K9p8xVuxnKgJyQ1i/gkUut2U6OnEpUTXM3npmQqhYFfrCE2lHEga027QjYYoG64/Cp
         Zd7H+6/Bd0dChOGYqxuIP15+TrHX6JDfPoy3NopokqaphrFPcDb71OgvW3TFsXF/QrDA
         obwwx294wdMt4IHu66byciuU97KrZK65LfWhSc2dOZ0+nW7qNSY9W+4rLOnAsUdPJeAx
         PoQtKLdTJ7KYSr85RHgzoslcraaZV33RtLrUjAbmR8HuFtlfexOlOzM9KpOjzp0br3oa
         GYqqdu6oudDIFdrAsl0kdI0RCO+jiw0VkyZPPEpjVJMIiI5up2GVCsmeSOuEIOBxAbGG
         DVsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ICsWyN0LjN9OUpR7Yvv/gr9ud1Xpvj3nUEyUD77apIs=;
        b=iQb/Dm4QitbhsXNx+lRwV1hi96/C+GdZbet/1B5rnTb+8bX1calAcKKwv8a2CZlf61
         z4ikbuxCy/WoNZ0WZjgOgxzADPv6DcA7moUD9AesoXfxezx2YdyP1HVq2ADw/vFPN98v
         HOox/wIqm1lP3U1oofVEKnm7OU/XMBPpJ07MzwyUVVZXLY0oDK2mi6JsCJy7acQ0/Iap
         uret/esMHFBcPn5MdRx6/z3xGj/lWs07RRtpX+bJkIlIcuMEwXNKJyWxNAkiKCgEeRmp
         tk4Qrw+RvELbn+cKsMVXuQmfr26U6Rm2XIg+m8EIHTMkcMxFVEnljbyY8Y/lCVHRqAqm
         +Hrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w17si110923wrn.3.2020.03.17.05.22.58
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E694F101E;
	Tue, 17 Mar 2020 05:22:57 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F12AA3F534;
	Tue, 17 Mar 2020 05:22:54 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v4 02/26] linux/bits.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:21:56 +0000
Message-Id: <20200317122220.30393-3-vincenzo.frascino@arm.com>
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

Split bits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/bits.h | 2 +-
 include/vdso/bits.h  | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 include/vdso/bits.h

diff --git a/include/linux/bits.h b/include/linux/bits.h
index 669d69441a62..a740bbcf3cd2 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -3,9 +3,9 @@
 #define __LINUX_BITS_H
 
 #include <linux/const.h>
+#include <vdso/bits.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(UL(1) << (nr))
 #define BIT_ULL(nr)		(ULL(1) << (nr))
 #define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
diff --git a/include/vdso/bits.h b/include/vdso/bits.h
new file mode 100644
index 000000000000..6d005a1f5d94
--- /dev/null
+++ b/include/vdso/bits.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_BITS_H
+#define __VDSO_BITS_H
+
+#include <vdso/const.h>
+
+#define BIT(nr)			(UL(1) << (nr))
+
+#endif	/* __VDSO_BITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-3-vincenzo.frascino%40arm.com.

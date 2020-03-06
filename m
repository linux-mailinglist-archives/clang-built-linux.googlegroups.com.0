Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBDNCRHZQKGQEPHE4XSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830117BE8E
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:01 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id s21sf1675014edy.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501581; cv=pass;
        d=google.com; s=arc-20160816;
        b=HL+yHcHTNtyk/ZX/6qZBhqIfgM/Sfc7SU1ceCyw97b8Uk8p2tzMuxZMtVojtN6ezO0
         70Q+2wqWSOYzz529rI3y3IHholKXOaFTxU2pamYoND9FaSkBFb3sNNIq1ZqvuiosKK1R
         hGAK5PfLyAiNofBYunDsyTH3nACEEbBYPy9NXgmIUU5siQmGwzRgy5a948Td3aRClNFG
         HJghEX1EkVhPN/ETNfwk5yZOSbhzENrFkdShhumcJtdHEhGD3kMHsHQJ+0BzbuAvHoU8
         wF9TYqDxTr6vxNYkf5MPdePYPxOe/yYcpdkcd2Hdug+Uns/KPLwA7nrWKFswYhbtFwR1
         AIvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A+kSgGrAks84/Fwpm7LZ9CmQt8+TR9Z8H+o6MvZZLQI=;
        b=f02B4jC+78Q6h6JN/Mb3VlVq2vE4QnuJe7Y8adgX0YjUammtH1x3oiFM3RGgJWgzYe
         P9SRJk0lQaGfk4Y/yYEg21M120evVUEAVIqVgC5ih9qYPPa9nHJHZd7tLBUkmKth8o+W
         QZBCUyI8EPvY0rY2N/0uT0elSieZHAtpz0PxxB+b751UZW996bNnq2E+SutBFI5ukgqh
         Rc47QidysyxGPw2by/zwUz1OHVKQtjUewdIhHRb5isPgTw4J7tDrNCAYTcrTO2WWYHJm
         wK6PQHMsx1mqV1CzKlipCrAE9Ge5KYRtPgMDbxVz3W99tXKdrAISN/h32P07OwSKPmwp
         0iig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+kSgGrAks84/Fwpm7LZ9CmQt8+TR9Z8H+o6MvZZLQI=;
        b=hnk7dBT6R9TNZZDVWEHBI39qxHhBKn+ygsO9kLxNbwUnELOLsq70Zp5krnRupWlbna
         +mRG+NFwwkQHC/6PU0E4NGnCvJMZbJuGGH1CYmNcLKa03mK2Dmyx5Pai0gB6NZNfrKl+
         pi4kwSHFFv4dt36YvPg9vLXpTJc9W16LN3fZ78FMRJAKuyAaiFsXyIunajiq8KAbKznb
         Mw/geD+KbxpW1WSd+SuE/KzG+gZ38IW7K2akbzKw2+BfUOzCe5ttiPJYDFirGq2ldbXf
         er53QS7UClgDYi2iJd/tAPTqf2gJWQGdxKi6gniAeCyntMUMTAXMFhCEaycGIf/vEYID
         pO8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+kSgGrAks84/Fwpm7LZ9CmQt8+TR9Z8H+o6MvZZLQI=;
        b=hcSPvqjCFdbb4PbAT01jMcEy9b2qWERaGhxTUXjSALJXN74V8gLHUG4jQc5JdUiYfS
         BV2p4tJH6pFg2FHM1tWV3+Cbt6Pfovp+rI2suZWQOjGn/dbNjSs1SznOPDWbPQdO4icg
         UZHihAgdPJaoJkcw9keMHqwJLbNEg/avUHkNGPF16U/a2SUVqo4qDJVcvc4WIhGWpjfm
         0DvMLxu72xuJjQn3FG2W/WDHHk4XYR3nC4ZaYEXnMysQjm8O9DeEp/qmXV/WSd6p8tor
         s4hBJAGIXh11+YP4mborPLyuN7dmBlK68OFktBCtKyHNpt0Fj1wL+DvQjKcGDsPg7v1M
         cdng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0VsXdiSXa14pdev/2MbTr/WAzei5V5Xg0/WEYyWmfiPRc24uho
	GrXnJoWALfs2FHLizdtaTHQ=
X-Google-Smtp-Source: ADFU+vsTvnfuDLG/+Ts0K3QOBQ5fhBOZ97YsyXaZB9fk9tQtc6gLqWu4rpIV3BeP1cMdj85l/pv9DQ==
X-Received: by 2002:a17:907:20ab:: with SMTP id pw11mr2811285ejb.169.1583501581152;
        Fri, 06 Mar 2020 05:33:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4d7:: with SMTP id t23ls1150243edr.9.gmail; Fri, 06 Mar
 2020 05:33:00 -0800 (PST)
X-Received: by 2002:aa7:d785:: with SMTP id s5mr3226944edq.101.1583501580595;
        Fri, 06 Mar 2020 05:33:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501580; cv=none;
        d=google.com; s=arc-20160816;
        b=o/ngFHSHc1zanyyjdgDLPAF3k5f4PspzM5EMWDty+IYfKMlwoWlgUhuBgPLD3TRmhD
         9AalTV2MSw+UEnR14AhnQyllT/3lVSFMAl0BAYyAdV+4FwgnOWYH1Tk3v9aYdnyWY360
         2NWWgLKvWjDTLp4vQbaH/nS09IZS1Kg91ruiXBgpwCMm2xvyJLw+MnlL/ZWQ1A61aVky
         fUkD1ZMEtbsK/Crguu2r5VGW8yHXrQg1Vcu4Ye2PNpYTw87rEHLZY3ARUa+GTxMtfdGR
         4Toa45voC6t7R2A+P2MhRO+k67W8/mg+IRL39UCeL/AFv4/R9sByIs6pHq6PPjMD1UBP
         6Zog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gcxr+ZOegNmgXQUMUcyBZ1+GTW1eoKzMxxIw2j9Qlyk=;
        b=nSeBBdjA1qgh8SPivDdM0HdDedgXIJJ1TPY4q7Ix6bBDJEi92ClD4dTsXV11QnELtc
         1K+lWvTYQH06jQf+VO48caMf/eMsZOUrDg93tBAIrCiIeeNzEXCQiDgAgk867bAA9XCA
         +e3P2SuJCQGQPWFkSk1qEGfl2GVSA2qKdiqxtiZobof//WH/zz4Ea6/znLlPuKQiVhEY
         QmigUbi9rBOz+z6etd1ZqG+sbh1l7Ro05THZZm/vdURx4/Uhf2GoVM7WR4FR2VJfXSvZ
         +Pt4vtTnlOS23k0nE2mUaVl5DntmTQlvA8QPHRgpctCVDGt0IBVPYs8d2F/yHoI51N/D
         Bt9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p60si93519edp.0.2020.03.06.05.33.00
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6469101E;
	Fri,  6 Mar 2020 05:32:59 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3201D3F6CF;
	Fri,  6 Mar 2020 05:32:57 -0800 (PST)
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
Subject: [PATCH v2 02/20] linux/bits.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:24 +0000
Message-Id: <20200306133242.26279-3-vincenzo.frascino@arm.com>
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

Split bits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/bits.h | 9 +++++++++
 include/linux/bits.h  | 2 +-
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 include/common/bits.h

diff --git a/include/common/bits.h b/include/common/bits.h
new file mode 100644
index 000000000000..6da493992e52
--- /dev/null
+++ b/include/common/bits.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_BITS_H
+#define __COMMON_BITS_H
+
+#include <common/const.h>
+
+#define BIT(nr)			(UL(1) << (nr))
+
+#endif	/* __COMMON_BITS_H */
diff --git a/include/linux/bits.h b/include/linux/bits.h
index 669d69441a62..aeb76fede77a 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -3,9 +3,9 @@
 #define __LINUX_BITS_H
 
 #include <linux/const.h>
+#include <common/bits.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(UL(1) << (nr))
 #define BIT_ULL(nr)		(ULL(1) << (nr))
 #define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-3-vincenzo.frascino%40arm.com.

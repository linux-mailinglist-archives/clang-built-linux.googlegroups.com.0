Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBINCRHZQKGQEDKC7XWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB0B17BEAB
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:22 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id d12sf1647485edq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501602; cv=pass;
        d=google.com; s=arc-20160816;
        b=Staskpkt3q7Qpv6+nRksNYJFE85JluvZ1k37AtxXXOjQcxCtsZddl4/7MUqN6yrwLe
         NhUrxHpuI5humu1cdpXIDnkKpYN1IYFnUZvS+rgLo0l1884Z1yghSbCwf4rEsz8jLh7R
         hmRo10dEw7wp12p7LYL4PEYLl1EFz6E1tN4tMg7mGldgcJx7xWcVhWZo2Ie8SLLB/uxM
         CmgbTANPD5R+owYlSEsCf36nLp8KSh1FYL9AsoUql3+7cDh1pfnAFeFebvCzv23U8p6m
         TSH9HpqslsddUvlonDAp3AVIbHJo1K3UxlQvc62b7QMFiM8NFCeRkSbqECkPTrii9A0A
         QhIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Wq2yJ+ZbSoPEiVIvIzGUaUtY28/cl0KjlGSnZTY3inw=;
        b=A3mPxDZBvBxhTWl51AsyAbMJp3iq1AVfhJhf2PglRwR4qMEmjQ26cgukzc9srf+WZ9
         56N+8ltNQykg8FIxvY/QpP543HKf3JCSS9PZJLwCprCLQIi3rxj+pY9hcsNj2RzF81bU
         kIeVrUfk+pTbAqKgznTvjevYgVJYIdX+d3sgY2GTNjtsjjj38YqlblE1tFECpfmk9wQU
         vQkP41FaCy9TQS1emEquCwLr8giVLT7M6A8FmyVvjXmCyJzUjP8c8wd7iAHi1JtPNGvJ
         hxu4eqbgvHWOslmbjr1WQI2RrbzYp0f+eGwt5wrFsoDEZsS/1vm7ehWkvj02ZAyzFS8d
         zAQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wq2yJ+ZbSoPEiVIvIzGUaUtY28/cl0KjlGSnZTY3inw=;
        b=m8sZKaeB7c8dTIfY9dVhP5gAU83Xlz2/f6B2F3rCHJQ27UH3q4U2CZDdf3ort9I8QX
         KDrrppcNerPvIk5w4s5yV9zl3MZg2MD2GpKNe905YJAyWy66BeEZl0aThYOKtW0q3ysW
         8n2vOsCogqwlZNfcixLEeYJ2WvzTQKFfnK6FEAkhqaNo5PLiExhf435piNUHw2jP4Mw7
         4v7REn7//5DuNBDEQmn+G+QUOuwglF+Ac9PxoU2zQibRq7bcsUuZ+cQnqQW1mfl6dYBG
         e1Ytx87AsGdWZwRYmkCbaNKrbpFOAByQXJ079ksUNNQgltisWQYWxehmJuO8H4chxkbz
         iq9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wq2yJ+ZbSoPEiVIvIzGUaUtY28/cl0KjlGSnZTY3inw=;
        b=RhuCqNOXymdDRUfq2OKpXJs6j6oDu11O5ekTNQIXNCW3GGvpTf7o6C9PWFbQzNawcK
         9NMmhllXapIsaxNC4W5gcbR4e6u+FVnPQa/E6fo/FzXXkljTORhmYnC4x8PCXkUXg2oM
         xi10ZdQQkNUuTfot2jr10nzvTZ11ZZF62zhkA8T+hZqIljM2/CBdYYfPxCfbnObZxT/Y
         Qf1OmUOEAYwK74eb+7bhfSXOMiQRhsnb9hJWyh2qaxNyVfh4i2ymU8J93qGWu337PvH1
         R3HMehfn7bYe/4scX3an/e4hZugEq+QeW8WQ4wQ5QeHEk9qEMvj2upb+Rf7ZTJ5Zqgh9
         iBBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0tvhPkvtNnr3I5l3rb8UpoIoHg/5uQVTM0LpvjNW33C7AHnk1n
	uWnAG4x7f/MpChyafvaxRQE=
X-Google-Smtp-Source: ADFU+vvD78tjkMh1ZLQgOHHV+4iW60uB5GP0/UIllNgOemZ2Dv+lFDPif0iBJwPqZHT5pETK+nP6CQ==
X-Received: by 2002:a17:906:4c95:: with SMTP id q21mr2970443eju.270.1583501601801;
        Fri, 06 Mar 2020 05:33:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:3058:: with SMTP id bu24ls1165994edb.3.gmail; Fri,
 06 Mar 2020 05:33:21 -0800 (PST)
X-Received: by 2002:aa7:c594:: with SMTP id g20mr3154966edq.192.1583501601311;
        Fri, 06 Mar 2020 05:33:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501601; cv=none;
        d=google.com; s=arc-20160816;
        b=p5J7rdVlMcXI5kAWPDa09hDjaVNNmqfm47V4wv9c8PHkER1pJDB2dnKwPxxPcbGSDZ
         uggevLwkjzD3KYuKAtmVhgBM29TMrwQi8Z8zI4nPS7b1byI70eccv0lT6dmVdCH/CUxE
         lcR4mtCcHwsxk/8ohjvswofUwBLLYAIQyCygQkfYD3bRNIQkqC8vhqOdpfS87OZLu5GX
         soqHFbe/yd6tlmJLgzwlfU8l+Z6Bu9vwzPUHgb7DJeAhQUCaKEZ7TWzzWbk3o8XiGpTD
         kWpiGhxBfpQ+GsPGXC8WcLGYT93BcN5LenT3fIFYdwExS03ZMKHCHYuWvw4mWdVY2RrL
         Enmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=L2if2lKbBk/OWnp7+qedCJ6PJlyIqDpSQiULRSTO11o=;
        b=TJ0wiH6NviCPOxAZIGS6F8JlaWnNPtZksVSSl5WoajVaK8N+Yj63iwGjS2cablbr2O
         E/cGn8hSkcbzMhWPD+IV+jDcSNhmuPV2h3zoVn4Y2wSxUvOACnm3MiyMYe7PY45dF1W4
         8Pbc2MiyF95Qr798226u8S7b4bbxtpYFFyL7PPV+x3h5R+7K09cia4KgKgdUSJzJqG/M
         fJPKYii7JrMnGvq7hk87AdKSEaR39OZUMGFL+RDgVndv9HYGwaqv+dLdebosxl4+4C15
         F1MoRIlUAQRtmaigKjTuZGRVWPC2BbD5jgfOCBKT0p5ZYwZ2Dav/uKm3NKnKoPJKQywz
         HAFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d21si109087ejr.0.2020.03.06.05.33.21
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:21 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A70D81063;
	Fri,  6 Mar 2020 05:33:20 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E57DA3F6CF;
	Fri,  6 Mar 2020 05:33:17 -0800 (PST)
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
Subject: [PATCH v2 09/20] linux/ktime.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:31 +0000
Message-Id: <20200306133242.26279-10-vincenzo.frascino@arm.com>
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

Split ktime.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/ktime.h | 16 ++++++++++++++++
 include/linux/ktime.h  |  9 +--------
 2 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 include/common/ktime.h

diff --git a/include/common/ktime.h b/include/common/ktime.h
new file mode 100644
index 000000000000..4dd6c6762ad4
--- /dev/null
+++ b/include/common/ktime.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_KTIME_H
+#define __COMMON_KTIME_H
+
+#include <common/jiffies.h>
+
+/*
+ * The resolution of the clocks. The resolution value is returned in
+ * the clock_getres() system call to give application programmers an
+ * idea of the (in)accuracy of timers. Timer values are rounded up to
+ * this resolution values.
+ */
+#define LOW_RES_NSEC		TICK_NSEC
+#define KTIME_LOW_RES		(LOW_RES_NSEC)
+
+#endif /* __COMMON_KTIME_H */
diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index d1fb05135665..c456b33c80e1 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -216,14 +216,7 @@ static inline __must_check bool ktime_to_timespec64_cond(const ktime_t kt,
 	}
 }
 
-/*
- * The resolution of the clocks. The resolution value is returned in
- * the clock_getres() system call to give application programmers an
- * idea of the (in)accuracy of timers. Timer values are rounded up to
- * this resolution values.
- */
-#define LOW_RES_NSEC		TICK_NSEC
-#define KTIME_LOW_RES		(LOW_RES_NSEC)
+#include <common/ktime.h>
 
 static inline ktime_t ns_to_ktime(u64 ns)
 {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-10-vincenzo.frascino%40arm.com.

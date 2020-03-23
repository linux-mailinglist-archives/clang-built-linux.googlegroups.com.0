Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB5W44LZQKGQEBYKWVZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D5318F4D6
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:41:26 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id s15sf3961200wmc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 05:41:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584967286; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nhh/3L+UbzLfS0PCka3NAMrn+EERJ4yj/x4Jj8S7+OQhsTl1LhGi+RR8i9ZyeMMA3f
         UNqt7hxpfhDFwy8ngJpefLNrCT/LaNFX+2hnuJfndlctSOizUA5/3/zpYO0MbDykcBk8
         vJ2mcdqlgjnJnylbQ7CNY1VuMJrckmCu6M3PlxNP33NsbcML6utBQKyIpaVaJkxAfnpy
         oLtJ6IZoDsihdT6n9R5hjhjDTq2ILWG41vwZFo50tupi1n8TE4GeJeYKWQreSGWL+QfW
         8jkHK/bEyVc5rE/8imtUW2K1Jpp2wzWSoUlTZx4gUW6PE4Iz2HF4T+WH50bYOK/XK3C5
         79sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lEyi2Ue6RVdOr9dH1p77taLXxuqU8PhmEnCnJgHMeRM=;
        b=xjg1pfO9aevgTL5JgKneDNPh6G1g8UJhmUSN9NGnoJWYEp3gY6el+sDVhOGf2yEF17
         MkGOpasx4NaK86rzOdLjGPjXSBKxKzHgaGWVLvQTnOmDQVwL9D61u+PfWXdjFzIfL73j
         Qqb9SGvUZ1wzct2zMRn9rJ4FKcdAdETI79gYioDpCVUTh7AJckBxYTcfEOBINOF5NV9z
         jGkBVM2RXa96MswIWtVARjo/HM1oe/ZVerDxbHClbEBwUk91EGwny/qOcR1yXQGW7AuP
         2XU+A48OUfSefFKm2GGheJKqzw99dsntONNBMQDPvN+PURx5SJ0cqa/C82a3YCBhC+by
         m0Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lEyi2Ue6RVdOr9dH1p77taLXxuqU8PhmEnCnJgHMeRM=;
        b=qj9ZLMAzVFbEiPv0RebXqz0aQa02rcqR5ubonfObN/UNa2pWhs63rvtXftJ6J362vf
         w+HW61OaGgd8fD7SwbIQ38FXijSAr10aZOMDQiPEvfEzWpst9a8lnd5l4njRyQeSvSEI
         WBdexK8qy3Yv+edyEh15ArE8nLZ9cgzRcOVhMtc8EAyJYU3oOcpX0VNwgNBdnQ/I+6dt
         sNjbg4LnUbHex00mtJJ3WNzvrnvEwr+34bdhdrWtljLQxn4UDpMLU63QZdmTAarIq9Jn
         CK1tE9vJd9rth34gNBvEbW+WLo9ICGXksKpv4L2AvN43gAKWC2qlqxoUtvLqftDdX6G5
         JCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lEyi2Ue6RVdOr9dH1p77taLXxuqU8PhmEnCnJgHMeRM=;
        b=f1+7DG16mWccdUtt3NTEcZunCy6QUURMsSiEZ+jZ/lmIrySDH5S29Ja8lCmV0hbeRW
         T2pNyFDOwt6Q1gTn3jI99tCVp+RU5n1AdrI2XUpPDaoNAKZjKS/8KWpWoaKEb6na8a0E
         l5mxKWIrSegmmGT1CZwHoGg3bskSaoX9/WtwkEbTV9lRQh7LJB5gSs7fvF9H9G61EUUY
         t4J8Wpm1mz9EsNrigYOzHBeoesgOaRtXuSHjucSxUKV945uQ2TH1rEkdjGenTIb/TKEr
         Lna8eFOkYVQnJDx6IyzwQYJ9TDnOl/AG7tBhCwyDaZZmrPktUGe9H4ZwIcC0KOkkqmq/
         mwng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ186jwC+PbJBmAIXGJ+tpc8AKloKNKJSAris+ZPivqmaEhXNIQu
	BD8p2/ACBIlLTw5Fs4BzQnU=
X-Google-Smtp-Source: ADFU+vveHDf0JWogCL2DHElcc6AEBJe/G5ItLI38f5yknnBl7R5+pZWfouS+PLj72DrTCDRQfgDkzw==
X-Received: by 2002:adf:a18c:: with SMTP id u12mr29365971wru.325.1584967286286;
        Mon, 23 Mar 2020 05:41:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls2099449wrd.5.gmail; Mon, 23 Mar
 2020 05:41:25 -0700 (PDT)
X-Received: by 2002:adf:f852:: with SMTP id d18mr5595691wrq.172.1584967285594;
        Mon, 23 Mar 2020 05:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584967285; cv=none;
        d=google.com; s=arc-20160816;
        b=bNBY8Mb2qZ3kjyiCE5H08bt6QDqsu9TgIxfGWT3gLiCb+a1yb9nktqpy8/LlvVAt0r
         wdg9XW4N/bwgc5lA0PCv4dZMsuRMMCqahc35xO8djvkJ+m8ts1+JJyEBCP39G78+yhO9
         ra2Tz5DQnDIl+kquapLhzx/LBAIlzK4oJncBMNdPSdi7R8Sdcijnm9CghdpdiGwaHUOq
         0KCtwFnZw2fu+WA8UpIPc2yLPp1Dz+8ImNFExKFE6qqk+PdIxz7WHrIcL8oyyyiGgpYm
         TQAlEB1lV4hAAth9qXUGSc68p4XeT3LEyKOerwdgNrxWRUiyRx1TM458OXmnzY7k1RwZ
         q41A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=14uejM1xgrJl5SxLJDBTw4kk9YCT5RhfxfE3DYMqTko=;
        b=nZameTxLyD8sdudFucmb1mUDBE22ZG//YyVjDgwO8A/hPaXFtqrduUmYpdscSRkMaQ
         1Kogo+CfjbIHXFst8GhSFcrfw7pkDcQaDGcLgHXZsJEzKAjCGKRjgIWwlY+UkdxtMQ5P
         2mvIHLitgTuvSZSxxD3tCwCSiF+rIhvL9eGpJwU4JE8ofcJEnPTwUwDB7mwUVNZsR3W/
         dS/mFQwD3XIph1fPGFBdWr8Pt50N23UMNbmSy8FPvgDi2k6LPkLcxQ5djMvbVDj4sTcR
         3u6gVcHBdlGCAqFlEw0WfFRFW46vV+68m1nBlfPrG+qDrmCFbKaXkt+hluh705sVYKub
         5Kwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y201si857692wmc.0.2020.03.23.05.41.25
        for <clang-built-linux@googlegroups.com>;
        Mon, 23 Mar 2020 05:41:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA7261FB;
	Mon, 23 Mar 2020 05:41:24 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94B8A3F52E;
	Mon, 23 Mar 2020 05:41:23 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	kbuild test robot <lkp@intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>
Subject: [PATCH] um: Fix header inclusion
Date: Mon, 23 Mar 2020 12:41:09 +0000
Message-Id: <20200323124109.7104-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.2
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

User Mode is a flavor of x86 that from the vDSO prospective always falls
back on system calls. This implies that it does not require any of the
unified vDSO definitions and their inclusion causes side effects like
the one reported below:

In file included from include/vdso/processor.h:10:0,
                    from include/vdso/datapage.h:17,
                    from arch/x86/include/asm/vgtod.h:7,
                    from arch/x86/um/../kernel/sys_ia32.c:49:
>> arch/x86/include/asm/vdso/processor.h:11:29: error: redefinition of 'rep_nop'
    static __always_inline void rep_nop(void)
                                ^~~~~~~
   In file included from include/linux/rcupdate.h:30:0,
                    from include/linux/rculist.h:11,
                    from include/linux/pid.h:5,
                    from include/linux/sched.h:14,
                    from arch/x86/um/../kernel/sys_ia32.c:25:
   arch/x86/um/asm/processor.h:24:20: note: previous definition of 'rep_nop' was here
    static inline void rep_nop(void)

Make sure that the unnecessary headers are not included when um is built
to address the problem.

Fixes: abc22418db02 ("x86/vdso: Enable x86 to use common headers")
Reported-by: kbuild test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
Rebased on tip/master

 arch/x86/include/asm/vgtod.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/x86/include/asm/vgtod.h b/arch/x86/include/asm/vgtod.h
index fc8e4cd342cc..7aa38b2ad8a9 100644
--- a/arch/x86/include/asm/vgtod.h
+++ b/arch/x86/include/asm/vgtod.h
@@ -2,6 +2,11 @@
 #ifndef _ASM_X86_VGTOD_H
 #define _ASM_X86_VGTOD_H
 
+/*
+ * This check is required to prevent ARCH=um to include
+ * unwanted headers.
+ */
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
 #include <linux/compiler.h>
 #include <asm/clocksource.h>
 #include <vdso/datapage.h>
@@ -14,5 +19,6 @@ typedef u64 gtod_long_t;
 #else
 typedef unsigned long gtod_long_t;
 #endif
+#endif /* CONFIG_GENERIC_GETTIMEOFDAY */
 
 #endif /* _ASM_X86_VGTOD_H */
-- 
2.25.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323124109.7104-1-vincenzo.frascino%40arm.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGV7Y7VAKGQEWMBVQAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1308A9DC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:27 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id z93sf16008947qtc.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646746; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUwsA0VM3uq4T2eCun/NazB0CywD/PpR0yV6qa45TCb1ne/fc2enC8qPwhivxfeL35
         3RuJR+aLibfnrDCsKqkZUmrjVDbvJ5UCkmLEVGsf+79mu1bDGDYwcdtZ3QX4q7VryboI
         CpIEFMcTcgomAmDLCsLo/eWbav2R1TVA5EqDku7dRQZC/5Arq3FDCsANIqAv0iIOgvbT
         azIM2i3o+l8o/XLDWDA9WIpdCm6E3cHGF2F0X3QBINKAecOvJZoxrTHLJFRYMMNkpe6Z
         uYslO6YJvlKeax4f2ZmucDLo/SzFLDu3aKCnr7fd4TLtI5BKwc3lyT87lkKYXtWDsOhw
         gpfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AHwkwxIQrTrGO84++pi3JCj3wc4Ucg4rd8ER2j2t/jU=;
        b=DP3MPjc+ElOHk7JlCJPwpZ9vqDu7LfIZcx7bihiVe4P4wj5Inz/M9uqfBJWKsNhxyr
         9Ncm+sTUyDXW3mhswMxZ3IyJBr9wRznkGHdvII3yKthQrnHUXr8tR5sX6Jej435ZE/rK
         JN1wfwpByPwa7LBM6xq46SSpxlJyQyoCCsEYscfnc60VhSM8LXhbdYQqlBNG4fG0lBok
         vSgbhbhAKKvSG6BiH0DTEbDKwTbxHcOfPvDb4lVWkfTpPzqAJLvpLr3vhdonJN++9K9W
         kBHP36Tn9kK28/I5WUUtrKANC8HumNzF7B5IgLeSRT+Jo6zTlyqV8XBYr8+HP1bHGQtj
         VnFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QD2Q9TVx;
       spf=pass (google.com: domain of 3md9rxqwkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3md9RXQwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHwkwxIQrTrGO84++pi3JCj3wc4Ucg4rd8ER2j2t/jU=;
        b=oueDUAgTyAznSrPjvDmtkMrozAESPwmqfqsR3wEwU0Un0i+t74352PDHUnuMKxsmCJ
         VJQ7+XFPmU8jxIRKc/8SQwwYu4uRPyAXQBFad5WoMycZi4NDt+0OueERx+kLSS8ryII9
         Jmwn1KT8/WMJMcpZhjVYJCwbXd97HblHdyF2bLcAj8YmcmcMxG5BjwWraz+FEO+mQ5nd
         JXBhEgFh3YNksbaWYRASektnIkTIUtkLHtcbwT/x/0KDnDg68Eck2jq2y1zQnPf8tSka
         dMWxG+NAZolQ3su3O4+Zy1yYajG8qi1fA1sh6+8+y3a4KDMFoJTH8EaPa8sX3vVlZsVb
         89Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AHwkwxIQrTrGO84++pi3JCj3wc4Ucg4rd8ER2j2t/jU=;
        b=omKWNObPbGMtXaM6icxNwaTXwAX8BPmqPHjd81ekNzs63ax5usISzm58NgTnTzhJzB
         mULYAF9rGKZCZrMCt8Ez8D7d0ljhdE2YbwvrTfGPnc5Trr85CKEGXK3rji9rdxN3sQFS
         Ci7mWkL+h52au6v90bGhVwy5hMQx2EN4pdpjdSSz/SLd38PDB6kuccSgI0jLv7TWh161
         F5v/4nrTz+wNfOfjY/+tdwwX02LKjizBGantVrr2NDkeEg/mS8/MPHxPCgCkYa2OSp6g
         79xsuKfElqfN1Ukh3UtUAXpbJs6Z04NG/LeO7vV/e95NoUNPWOhL1okEMpPGk2BKYB4P
         bWtw==
X-Gm-Message-State: APjAAAUIXaqs8DbjSGjRmJ0STrJPoUzsn0FoCFLjrNzXqM48Ou6Hhv4o
	Nl7xvgxpGceRu6Jlpcm5ULI=
X-Google-Smtp-Source: APXvYqyjltD32a37eeYeGkwtsIa1RhQ0pt0abNiElvgG1atDm3+p7oI2wggr/jAjbrZQhogqElO1KQ==
X-Received: by 2002:a05:620a:12ca:: with SMTP id e10mr26445989qkl.125.1565646746272;
        Mon, 12 Aug 2019 14:52:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3927:: with SMTP id l36ls5098944qte.15.gmail; Mon, 12
 Aug 2019 14:52:26 -0700 (PDT)
X-Received: by 2002:ac8:35f7:: with SMTP id l52mr27382207qtb.299.1565646746038;
        Mon, 12 Aug 2019 14:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646746; cv=none;
        d=google.com; s=arc-20160816;
        b=vvadLoQTGaqMzgOPnBPXX2kB+fsEbJxv5EmrmcZDQ5fEpoQbk5NxwlYFviQ5iVTA3j
         Lz1b6eKZeDTBkqSjofs4knIBu7EWY1+sdsxeEfxHrVOkLPMT8OJYs93Lq+CsCpbka6m/
         X4Eq+MP7NVi21LhES/9tA/VFKyKb1+4A9gWV0NmbSBMDeplcDN0f5ISQz1UIfKSRY8sO
         WBEBTlmmqZGMhvo9Zuw5Y5W5xEEXl8k9Lc9pGPUH6CLaWL9uuj+BQuW5r9WVlod9Mgz7
         9x76K9NRbbGH/zeX29r3KUDfQYvUTBcV5O7T0lTZVfy+HENuIKTO+3wz6uq1tavhvegJ
         O5DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2AgXEJvicJBSy/SRKWnK2/gvt/mXyTWKNhSQOzYorzg=;
        b=MPWDDeGseLKXy04IQz1D+yKhUpHNKz/Tx6+IX7lr+qBLmNkh68aEVf2piYTsdnCYju
         /xRc55jXkixRNA3fv7ylKh6THFwu2qbuYPe893/yQFgP9cMLFQkWBpCAs6cn8An5Kges
         MYnshIB8QOUzJ9rU0LtpPMb2EtpA2RGsa1WLOrU1CZj93cWmLvMALO6NwBX8ZdtwShyB
         RtS2HUPlroVNSh3Dht1xNqLrtu9C5XoYPjcgWgOfhX5+L+Tf7vHMfwaf0W1lEd1dTTsB
         lwJjVXfZ8b0zXLf/QSk0100dOJgR/fGS5z2Lf7H64EGFdyQTGb2q1c5eXaLuBIfR8QaB
         8eJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QD2Q9TVx;
       spf=pass (google.com: domain of 3md9rxqwkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3md9RXQwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id v18si197626qkj.3.2019.08.12.14.52.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3md9rxqwkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id l80so45104089vkl.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:26 -0700 (PDT)
X-Received: by 2002:a67:e447:: with SMTP id n7mr10737492vsm.115.1565646745461;
 Mon, 12 Aug 2019 14:52:25 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:43 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-10-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 10/16] powerpc: prefer __section and __printf from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Geoff Levand <geoff@infradead.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Allison Randal <allison@lohutok.net>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Rob Herring <robh@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QD2Q9TVx;       spf=pass
 (google.com: domain of 3md9rxqwkaja7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3md9RXQwKAJA7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/boot/main.c         | 3 +--
 arch/powerpc/boot/ps3.c          | 6 ++----
 arch/powerpc/include/asm/cache.h | 2 +-
 arch/powerpc/kernel/btext.c      | 2 +-
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index 102cc546444d..3ccc84e06fc4 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -150,8 +150,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
  * edit the command line passed to vmlinux (by setting /chosen/bootargs).
  * The buffer is put in it's own section so that tools may locate it easier.
  */
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index c52552a681c5..70b2ed82d2de 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -24,8 +24,7 @@ extern int lv1_get_repository_node_value(u64 in_1, u64 in_2, u64 in_3,
 #ifdef DEBUG
 #define DBG(fmt...) printf(fmt)
 #else
-static inline int __attribute__ ((format (printf, 1, 2))) DBG(
-	const char *fmt, ...) {return 0;}
+static inline int __printf(1, 2) DBG(const char *fmt, ...) { return 0; }
 #endif
 
 BSS_STACK(4096);
@@ -35,8 +34,7 @@ BSS_STACK(4096);
  * The buffer is put in it's own section so that tools may locate it easier.
  */
 
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 45e3137ccd71..9114495855eb 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -91,7 +91,7 @@ static inline u32 l1_cache_bytes(void)
 	isync
 
 #else
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #ifdef CONFIG_PPC_BOOK3S_32
 extern long _get_L2CR(void);
diff --git a/arch/powerpc/kernel/btext.c b/arch/powerpc/kernel/btext.c
index 6dfceaa820e4..f57712a55815 100644
--- a/arch/powerpc/kernel/btext.c
+++ b/arch/powerpc/kernel/btext.c
@@ -26,7 +26,7 @@
 static void scrollscreen(void);
 #endif
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-10-ndesaulniers%40google.com.

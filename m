Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB77F4D3AKGQECXJJK4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8EB1ED914
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:17 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id k12sf1466461uag.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227136; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJhBGuGgzbLmwkuUCuPX2bExEfWlRXq6WXncqoghVfNHjxrsx+kkC+hgNrRZm8XmkD
         PMo3yFGNht2Dpc7wRXyS0RXlZoV4N9uMXhuaxKUdujLrrVtWp2mc1auZIWdh7sjNWyz4
         LPV9+eEzlryR5sY6MrV2iz9q5sd+ISqAw88ITytzfAkCF/f5jByaryzpODkvdmNqjNnf
         THEE+mGg4pnFCAyTH5rCNBnp120wpab5b6z5qfkI0H/9sawIjV1B1VVbggQj65vvgwSS
         GTIY3D2bVZiO9vU7YJNFpr/C6H4joTv/0GQVSP42x9HpY2zilCScuSiPyQcepnpHieDr
         OlZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jsB517FI1F7/3lD34IdtgSRH1EIXW1jTv+JKJbyaDy4=;
        b=C2Rc49Rr7y1F2+EMV0T3/ahTcr7G9Vz37V0liPoVMc6BTXkpQxvWJJjC2EQx1/Ohb0
         pMv6rZXxSsmqYW3l0kyTmUWEe8ntgPf4slvCcrswkt21F4Pgwgpz7gR+KKEmfOjihANT
         2W4LczL97ohO+k+plrbiA2zkVy5AF+tapCH2DZbzVG4T7tlMDcruyWK4uaMg12pp91Qb
         kSX1/BqHkxGB9F3tdt+nHSqV0fwK32Da3+Zch8uTs7OBYjBFKhC9mb3w9Faby8ShWQBA
         36uj/Rrz1/lFOViRXhcADdYNQdBQ2cvQ5HevknLb/Wi02hGbb7LCqufs2rAByGvQH8Ru
         J+yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NPDoMZL+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsB517FI1F7/3lD34IdtgSRH1EIXW1jTv+JKJbyaDy4=;
        b=kZUOWJ+zBLc9Nfn/y0grTBbIYY6C443Bl7rXY7MddzsTIuKaVTf3w/laZ3yUsGQSL2
         2AeudrXYcXyoIGymGml/MztEdAgNCTA5YQNu6Iz+G5CZ1AsFtAj8mDUY9YDupUMekRGV
         HzHo4EIXh/aCWs+zG6kSbEPmRoHJ1SuJPI8Ci0XDefXrBWxlP4kRR2AjpkLVU84WBnNL
         I4Z1N3pZD1/5lcEEoKP3A+09ushf0QwnKCEspyGMvy52uFID1sUdTfdEV+9YrxWC38TB
         L7filignrBtLRmHqu/Sv18vLikh1pq1imlBdgHRDwQd5f4uSqZTeOcWqvWmYgHIvUzCG
         s/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsB517FI1F7/3lD34IdtgSRH1EIXW1jTv+JKJbyaDy4=;
        b=hmPUKpMpIABKqpYcZinceKfWMEM09ffA4T6CiIOGTMLe+ibY7wYHqXKZcIXzNBEh15
         F+0Krt68FoCktVy3lkQeqvZXLmYP7Nso0MDsozgt54zgFapS3y6G32aHYms3VpI+bbk4
         rR4lJmNrWI49xDZcWY019HHKVuGufsPyypChJE5/GCLq8KiGgmEbytRjriTnxUVp7ygr
         +v8wJoJwYj3eNNv/kwwTnJ9YIRcQgtTfNYlwKPne/DdNQVS0S4pznQtTAn+i0TCv2uT9
         iDsf0P8bZVlo9in/VuZ8lozQtRip1R4n+UT5NqFa3Dv/RQH/fl8MSZt2nfc/IN0Q2Fd5
         0/Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XAJFFDTFrm4QnffjO8oIrFjPLIMApi+Gvh5/pqaEJs4LRwp9U
	akBAzToU6a6U12nudBwT6yc=
X-Google-Smtp-Source: ABdhPJy3OrZVj8emLZInmo7MALTVfK18Sv8Ff470ZwrB56XN7pgNHgqXI6yglfevV5kU4M9jdftyvA==
X-Received: by 2002:ab0:6e8a:: with SMTP id b10mr2107229uav.20.1591227135945;
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2c0e:: with SMTP id r14ls360268uaj.3.gmail; Wed, 03 Jun
 2020 16:32:15 -0700 (PDT)
X-Received: by 2002:ab0:136b:: with SMTP id h40mr1728681uae.51.1591227135357;
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227135; cv=none;
        d=google.com; s=arc-20160816;
        b=iKVvmMEZuhxuR2siYQxo9v6qQJMg1dYl6N+tneHw41umNY2Zh5TTfgNfdH4XKDEToM
         oW0NTzy22bYI+9ebonWseI6NN8kiQ0AnXvkXMLFAq0sd6r6oW8R5COAYIqRnNLmAo24Y
         2cu1n6CnN1Gx8q9e/UtRU3jyOZMt7KypsymPGbW7SkfKtpAYhNsOrqaV21kcpgH161jC
         dMcsSUqeUIQBUhrd3+8IA6CFKZbtaBz8cG5Kh4vo/KznbAFprzH600FYuoTQmZmcsuGO
         siu+zK23Yc6Ue1/aNgVTMtbYh66WZYji87ypMYIZZF5CwFLgs+mnZCHHmSoS8wNmLWeC
         couA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hMUFWqcrC1VZxvWDwrZSg4KS9BvtvLd2CEEYtAT+tik=;
        b=AEe2tnQjUGkyIv5VyaxrxXFnzWlSwaMbZTbHhngMdgjQaF2RyNE0ADPsDEWnf1TkdC
         ip07T1iSVY1/m98RxjaxLEKHjioDX5m53h6xKnPWY82CB8lB9mtkPCMFB4TRdStpMSCi
         5gWsMA/H47GEyC3Gfa1zoe8b/3xvOARICoHakYy5V0eA/bFLqbMetetk4rwnX1xPCv+z
         u+5iN0dpjqB5eQqtULavmo4Q99Dw2Mj16yO1AFY6+/vm/u1DItsPaXhhWUbtjHR3XW98
         UQt5OG28Hrxy8YkvFul/08Chn0y0tQoGAxo8b8wTRJq5fsjmLLQFPPk8bojpdPFKY9Ym
         pmjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NPDoMZL+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id e10si119998vkp.4.2020.06.03.16.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id q24so267546pjd.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
X-Received: by 2002:a17:90b:3448:: with SMTP id lj8mr2505301pjb.163.1591227134470;
        Wed, 03 Jun 2020 16:32:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b1sm3836777pjc.33.2020.06.03.16.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:54 -0700
Message-Id: <20200603233203.1695403-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NPDoMZL+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], refactor code to avoid its need.

The original reason for its use here was to work around the #ifdef
being the only place the variable was used. This is better expressed
using IS_ENABLED() and a new code block where the variable can be used
unconditionally.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/mm/numa.c                | 18 +++++++++---------
 include/linux/page-flags-layout.h |  2 +-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 59ba008504dc..38eeb15f3b07 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -541,7 +541,6 @@ static void __init numa_clear_kernel_node_hotplug(void)
 
 static int __init numa_register_memblks(struct numa_meminfo *mi)
 {
-	unsigned long uninitialized_var(pfn_align);
 	int i, nid;
 
 	/* Account for nodes with cpus and no memory */
@@ -569,15 +568,16 @@ static int __init numa_register_memblks(struct numa_meminfo *mi)
 	 * If sections array is gonna be used for pfn -> nid mapping, check
 	 * whether its granularity is fine enough.
 	 */
-#ifdef NODE_NOT_IN_PAGE_FLAGS
-	pfn_align = node_map_pfn_alignment();
-	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
-		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
-		       PFN_PHYS(pfn_align) >> 20,
-		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
-		return -EINVAL;
+	if (IS_ENABLED(NODE_NOT_IN_PAGE_FLAGS)) {
+		unsigned long pfn_align = node_map_pfn_alignment();
+
+		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
+			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
+				PFN_PHYS(pfn_align) >> 20,
+				PFN_PHYS(PAGES_PER_SECTION) >> 20);
+			return -EINVAL;
+		}
 	}
-#endif
 	if (!numa_meminfo_cover_memory(mi))
 		return -EINVAL;
 
diff --git a/include/linux/page-flags-layout.h b/include/linux/page-flags-layout.h
index 71283739ffd2..1a4cdec2bd29 100644
--- a/include/linux/page-flags-layout.h
+++ b/include/linux/page-flags-layout.h
@@ -100,7 +100,7 @@
  * there.  This includes the case where there is no node, so it is implicit.
  */
 #if !(NODES_WIDTH > 0 || NODES_SHIFT == 0)
-#define NODE_NOT_IN_PAGE_FLAGS
+#define NODE_NOT_IN_PAGE_FLAGS 1
 #endif
 
 #if defined(CONFIG_NUMA_BALANCING) && LAST_CPUPID_WIDTH == 0
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-2-keescook%40chromium.org.

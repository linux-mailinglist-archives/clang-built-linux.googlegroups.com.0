Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMFW33QKGQE73UNJHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C291202053
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:23 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id q21sf8603474qtn.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623822; cv=pass;
        d=google.com; s=arc-20160816;
        b=SWYO7nTCiM9qwGzEBZuJ1f57tO6NvXZzinWOc1thyIIpKb6XB/r6es6LQrGtRUcNPf
         t0JENm93ovgR+XRtaTF7w3nn/iGfuPoR0TaDCH2VVBhJZid19soE5S9C64FN/l9FeJaY
         WErNAyrUR447KZpU9pK2P3QU3yWe7Q7WQHH4VKZxet3ipBeliidw6v7+6Teli+GJhsGJ
         /PHZ54xIbkah3LjZcbOXgX3S3JBH2D7HgcBY0/OzJ/B3feC1+ONGKE/Ff1i+04RNW7mr
         8R/1rGrnjrfmr6zjWKAcRgUd4w8ZXqYTub3WpjzF0vHwnFou1cv38d0QLouBCydWNndN
         d5Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I5HWRa08jqgtZL6kS2Rk1x8p32hm8/ED/f/pOFrpqaI=;
        b=g3JOluu3fKGrXwixia1H4pYaGBKmc59a6qr9j9FJbrDulXNmU7ej4w1Irxr4guwWm2
         InA8jGNZtaSc5d5sJjL92/WUOOVNcGNMrFMCCc7nb0ZxTM8BYcZVEJMq26eDLA/LEI8e
         0aT+cpwHg0w4aBg3MTmQKAlMmSofrMGAbpr8FD7/G4rd4EZaLt4AY4iWPxqmxsAm5n46
         5E+My24N5x9JotSkRzRUHROhK3A28s5p37269ClIUSvJq7erBndwII8724PVOYyyl5Wz
         JWRKDgWAzmlqj0rgRFOO77ka+frMk7XXvw9tZ/y9domO+E53/Vs+l7F3nPBTKdsnCBjR
         tMfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gTDQzS0R;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I5HWRa08jqgtZL6kS2Rk1x8p32hm8/ED/f/pOFrpqaI=;
        b=gkGdgRY7PdQPADKV9ppr7FpS/dcKlBFnhk/BI9JLEjDlUlEADUzp7m2JmTegnsIuF2
         dAz4QwT5D9ZB67a1iXNBTpJ8lWCCjiTFldkfKqyP8BBvBBX31zpbpSZAt0RmXVqZ0bd/
         9EcvdR2gxRIactYCOsjvTDnNd15gtfe5rOpI7zgSFCZYjP6hlZze2sFC03BtPDsl+uKY
         qm6eW/msGFeO64DxvNMswuuBrs1WPg3GapIjQpqzni1wkqGA6ZrMKpx/M1wSiAUqNUfS
         bGnSIP+jmaJWyeLlVzREk/JLkMv411+c84bclS6aQ7eZPzjaAzmtJH2MkCOCN/rzWV4u
         uZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I5HWRa08jqgtZL6kS2Rk1x8p32hm8/ED/f/pOFrpqaI=;
        b=A4TkhgD/f0+yGIc5CQdqtUO38TSLXn945NuJEvGOjHrWXkViUesXTMHGzYYelW0PhM
         HgbfGLOQWoOih/6MQJMjXCAdWn00exQ0lxTFsxHkL5+EYBeqnHi5kpV9EvdQv7dnuBYi
         MXHG851bdvvm6Q0fWsY8sVQ+mLCoz90w1jINVpxXMZBjMXPXhvmRPvNEk3GzGN0B7V4A
         mlDHeq+YjVHDKMDPLxYmCeNDiReUeSB3MyJ271+VR0FB8hiZLa2JDNBiCzxzLq9wf0/W
         OWxKAlcXr+2FlVmlXQD8VN54ITycYKXc7+u42RbLINIZZupgty511KYhmoTyArvyTfAk
         OtGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qRU0HY+jdwcnQhFgscD4AIKBBEHmSTf2jKGH6Rv6sC3swBo3n
	gRdD0TIPJsYWvaroJkRIQts=
X-Google-Smtp-Source: ABdhPJyTD5tHMT1ZtUYNtxLbyLTgX1go3NJ4d4jN241Eeo5TSWZBfMBfofpKdf+bgCpJ1LXlhRetrw==
X-Received: by 2002:a0c:c249:: with SMTP id w9mr11784732qvh.149.1592623821930;
        Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22da:: with SMTP id g26ls4327948qta.9.gmail; Fri, 19 Jun
 2020 20:30:21 -0700 (PDT)
X-Received: by 2002:ac8:1a46:: with SMTP id q6mr6790047qtk.338.1592623821643;
        Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623821; cv=none;
        d=google.com; s=arc-20160816;
        b=xzN2YLOdRCpvxiOuPxc4QCorTcQP0ZRgBl5x9YTM88HqmKqvER3Vx3sm5qOJV6Fzk9
         IgX5Chv+xPAcrNwKUbjaFdEHXNfKp9SSEsOKsaLjSB7Bkc1nYLXJ1jXPnUdcey0IN9su
         nx16uLOlnf5yhyK9Bib/vbPdD1OY1loT1+cx2GT4W/uevRqrdi1AGCzDyFaqiLMmfrOi
         U70tw3cXW5ZHIzFDz28zpL+xq/ml8E3gpjjpiYrY+436BOlRVxaxZRWBHBk723IO2qMj
         EAwlUhIMZ6mQ+nvVtxOLNegzsiBOE0ZmxWybm5voPQ6XfrgB+q2w39YCWPaeT0hfLKIi
         VC1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KtJf1eB0YMlrdncO0Lr6J725DqMYoYaHrhw5Cgkkruw=;
        b=RDb4B3Ch8Hzd/XNm+1LyQfKlFpEENT5mvwkUk0c8IanaJzT6oMl6/osw4av+dlEABV
         ejZOAPhWBRDpzx88u4S3dKOPt8kGZwTCJJL0HqewSzy3++mf6//jCjD8S9FfGX6Qqq9n
         NBUeZPpLGXX46abMbZxnq0D+s155r1GLYvNGKX4iNXg+94K2/86HJE0+LCbyKjRYj6Kc
         sG4h5aZku++ZMXLvolphlq1UnVJ6/708JBsdSCTXJKD4I1j7GrskJpoUsntO1i+Wugzk
         FnZbMio5Xk0VdMl7FqI4x9tX0p6X5Dcf7TE2E1NCfI0g92UZUBwfJr5r79t06mtE9KPJ
         rMcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gTDQzS0R;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x78si383180qka.4.2020.06.19.20.30.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g12so4801545pll.10
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
X-Received: by 2002:a17:902:760c:: with SMTP id k12mr806735pll.129.1592623820805;
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 137sm6119819pgg.72.2020.06.19.20.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
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
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 02/16] x86/mm/numa: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:53 -0700
Message-Id: <20200620033007.1444705-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gTDQzS0R;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Fixes: 1e01979c8f50 ("x86, numa: Implement pfn -> nid mapping granularity check")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/mm/numa.c                | 18 +++++++++---------
 include/linux/page-flags-layout.h |  4 +++-
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 8ee952038c80..b05f45e5e8e2 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -543,7 +543,6 @@ static void __init numa_clear_kernel_node_hotplug(void)
 
 static int __init numa_register_memblks(struct numa_meminfo *mi)
 {
-	unsigned long uninitialized_var(pfn_align);
 	int i, nid;
 
 	/* Account for nodes with cpus and no memory */
@@ -571,15 +570,16 @@ static int __init numa_register_memblks(struct numa_meminfo *mi)
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
index 71283739ffd2..e200eef6a7fd 100644
--- a/include/linux/page-flags-layout.h
+++ b/include/linux/page-flags-layout.h
@@ -98,9 +98,11 @@
 /*
  * We are going to use the flags for the page to node mapping if its in
  * there.  This includes the case where there is no node, so it is implicit.
+ * Note that this #define MUST have a value so that it can be tested with
+ * the IS_ENABLED() macro.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-3-keescook%40chromium.org.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVEFW33QKGQEXAB7FJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id B46D220205E
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:29 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id g3sf2913203vkb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623828; cv=pass;
        d=google.com; s=arc-20160816;
        b=b3JhJZU9YyeN9ViwL3zBlxnqQY1xx0ms1MyTE4ddXfBMtzW+oA3xd118yR9L6DX31s
         nqzCIYINo/X86dZhRMiSE9chitwWuUCLcpnh+G8tm+q9ZDFnMApNkKO9ZLr81//j+2oo
         wFoUR/3FPHuc1D7zaCw2AdKUb8wMvEnTP0neddsZwT9fTG5V20bNhl7Jj/hDt5kdVcKz
         swjVIZaxqscBo2LzaS9ziUND0mmZEQNfeammz8QdWzcpVZxc9Ngn3D2ngWtlGOqlEtfk
         HPSxbhZUjyYlArZnXt101R57ZXnQatcOeEO4oCFVDffWpE5hNWtjW4lymG5YnAbi2iaa
         /yLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I8VOtRU5jOLQpwxN5hFt4MoLuk0S9u6tgGdfz60fI+c=;
        b=y69DPCJFzAEGICecjnlWnLBhwzEH4Ghb1Vx1d+MhSEBE91ymPR4l2PZsJhcxkURI1f
         pxJiTvWO79/3mgQL8QGd3svWnvhxtF7qppOZ1rXjJhG2t3onaq3vr9M1nrTaS4msBzFH
         KD6jGTK6X5DHnVXhmdQ3wwIoRPPY9rGCu0DPoHgLh2xOyrCAYqFp/wdX2V4FgDLdLDZF
         HD8/P6QTeKJLBZTeiIFGsDS1QPW9iZpLR+Ju3OF6tilglif8ijdejVBbC5s8Sf2g7RU3
         xBhGyFKny17OtXvxlVo9BPEOQaMSkz/cyTXg3I99pjJLrfPYdahmJzgG6ch3jUND3yA3
         wzgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TZW89t7z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I8VOtRU5jOLQpwxN5hFt4MoLuk0S9u6tgGdfz60fI+c=;
        b=GgMFwpz+QbOCEAO/nS3lmWj6qKp5+F6KmI4lU+Ed2EdtUeYhGgGVJFqiypMSrPvGvb
         PYSeFV3IuAVliNGB3JMxMVWvY1GD8BH/+y3imNBQsNw/JgLaP9pb2O6cvkYgYciwFaSg
         hQsUSpGdH1PlaxtNktYuv8W/9rVerbAYhnEzEwnThRr/O7fXJtkL0BcG9EM9WzVYGDAA
         eMm+FoUVdKUPVBVUU+NkEYn0CBnjhG+95DU9Ffp6kXPOH+AGUvckpRKipsOnv+catFsM
         hgzgJw78NnQB/iB2u55gIZ1CEy8LRF9NycwQ042+9c+8NOOzs7iZmK+AH5Jt09ohYD2T
         4pcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I8VOtRU5jOLQpwxN5hFt4MoLuk0S9u6tgGdfz60fI+c=;
        b=Nc0fHmn+NDIWR4Xsp59YNTequ8udXwDw+JAb94F0LSoe7KVB3v41bCElLaOkyoQIIF
         R8iqiaXhGLFleGbQKqscMMiKlrZ1HpPcT6bT07aLNn7CrPzBBDbqJv+dSd9e5SxHpUcL
         7t4NLxtGaNovZ68ysw+WaliTt6GtDlqCwzFNc6P0joV/btxVtLKxfXTz1jDvnaOiyNOp
         bFDapL/dRJgVPdf3pj1b7uyrfs4hhhRacZOwx8BiYDL+F7/uAbbWD4rXbF81USDeXzRu
         Ez+4l1bHCe/ePvECXMKogMxNLyjlCI9Cdjpt3vrbDPEa0jGr61lMaZFbR+MZVSiqly6N
         Yu/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ev/BpCrCqLx8WvHdSUziEqMhFYqo8KK+tSMunURjTgo4Nm1Y1
	JZkbV4ix1hO32nCxBLrfPDg=
X-Google-Smtp-Source: ABdhPJz+CRrtvEXZSc9gH1EiJgxHBSK3uYar4Xl8orY0wlm/X/DcO8+KPI4E/A4Md0OGoyDP+15u/A==
X-Received: by 2002:a67:ec95:: with SMTP id h21mr2585219vsp.28.1592623828756;
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls1393265vsc.0.gmail; Fri, 19 Jun
 2020 20:30:28 -0700 (PDT)
X-Received: by 2002:a05:6102:2408:: with SMTP id j8mr10421008vsi.45.1592623828471;
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623828; cv=none;
        d=google.com; s=arc-20160816;
        b=hRKonPreKBJoZgzF8NwFnYmbcF0q4zT5QmoEmNfnjSiPrwUNux3iJgCcoPJulwuOm+
         d+ww5NjC+QxpA0ojKnHfnRlem0w7qqAT4U4pig0+PI4D4ZhyMzY8ey7eryYGIBXhe1jt
         cYRq+3O/JqdQqt5iKGo8vhGiSPDxPXLismswrZwcoRxsFHLOgK9m2RbzTTbgG3iCsCBe
         YlWQwlGRr697DSsMEi897ww7Xu89b1BUN61GYKJOO5r6k5HwuQXPcE0fldgneKgupqb1
         9fMQnluwCbvpBED4d+GamucLqx8fxLmGwCYbx0bDZpu9xlqPbOSMP0YXQGSBo6b1h7tN
         CDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QVK7j0hx8FBwbrQRQLiAwPLU1M0hFNtAd7ZF9cg10jo=;
        b=W28HsQ4iERXkwkIi2lvTyeGIsEOr93kU5BgZu/cUngRzermeQQg28m7BVsSEIR24QA
         TpyvvlST+gBrOa84iAniJtt+f1Lej2V2ROIaDRhwhtYA+2J9DgcONW6dzRUBSRWeTYEr
         TxBLOKUKq8gKP00SlBR/AfwCRjqkKG/KGd6OyJWf17jyxWASioLv8tPGaLfoR9EBb7qf
         bOL6fy9EpdSYkk7jlbDBx4rmtADeM6FKRYiInzEthj54CLmCG9leUvkGNnEyXySuVXXE
         fO0Hpi9DDnGMSt1augg6o13rCUOw6syEgG4gAYSSQ8ZkKakuSYuqTBHRnPHL6zs4dcVP
         hObA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TZW89t7z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id i11si679234vkk.2.2020.06.19.20.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id j4so4814814plk.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
X-Received: by 2002:a17:90a:778c:: with SMTP id v12mr6634388pjk.34.1592623828165;
        Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r1sm824770pjd.47.2020.06.19.20.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
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
Subject: [PATCH v2 13/16] mm/debug_vm_pgtable: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:07 -0700
Message-Id: <20200620033007.1444705-17-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TZW89t7z;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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
to removing[2] this[3] macro[4], just initialize this variable to NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 399145f9eb6c ("mm/debug: add tests validating architecture page table helpers")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 mm/debug_vm_pgtable.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index e45623016aea..83c9e88a052a 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -307,7 +307,7 @@ static int __init debug_vm_pgtable(void)
 	phys_addr_t paddr;
 	unsigned long vaddr, pte_aligned, pmd_aligned;
 	unsigned long pud_aligned, p4d_aligned, pgd_aligned;
-	spinlock_t *uninitialized_var(ptl);
+	spinlock_t *ptl = NULL;
 
 	pr_info("Validating architecture page table helpers\n");
 	prot = vm_get_page_prot(VMFLAGS);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-17-keescook%40chromium.org.

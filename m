Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZ4HVP3QKGQE2X635GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2C41FDE2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:31:20 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id v15sf2939512pgi.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:31:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443879; cv=pass;
        d=google.com; s=arc-20160816;
        b=crjQCezYcjzJB4T/dKvEtMImHgJsocn4MKmSSSyV26NhlARASn5c3d9eeQbYIQSIjZ
         xVZlEwssvV4UekvqRIeWLjV6fMwOXiy/gdkieqKSAS7cxpfgqHz2rjDwot/f+mGTgaGT
         4Bim98e6gk58RRRVh+fVA5wq05svT75oxDCGn2Iyr6090ueSJhX/qsDLvg9H+YfgcIsV
         zWvE/rucMMnbCUD7YUfnHMYFwK12CNwWSkIAZeUohL/ArmfnKuHbaHbS1A2MMlpRaDlZ
         66zilcv033oPYf/mCKCWZNZmNIdAOcBAh9WCzuh44jPa0qWTYlAH/VOEARtN7RI92Pas
         qnJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Q7I5MDtSgiQCKN9F3ALw6k994f110V51692+qoEVYa0=;
        b=g9NjpJU445gMCiTdGHm1vyDDMmvzr86XAtAsivBBwhhLFCS4M9mJot4V7+qaX9EyJb
         mFwkGMT8qW2dcIuOoZg/4l26jZNuu6aWAIoO+Z0j8ht0FGhMn1gkJXXR/ePln1/1MVga
         L9HRNxajo1ZYoDP6KjWm9VebdAkiofptYlwV//4EZSHBjFHpf0bh5PB5ODJhGXQ4k09P
         c02YF/y/b2odWjuHTj7+Q9HqJY9zx6tCGQn9Ing96c6A7gKd+DogS05npoatvaun1JBu
         MRBuVWw2CNFjivFh5TLGDLy8AiXgjap0e8DKv7nVWCOAPZ9vYODgWuXX/pxd7hDeOVtt
         KVhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kzDc0i39;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q7I5MDtSgiQCKN9F3ALw6k994f110V51692+qoEVYa0=;
        b=Mm05bKghM6r9IlVFWq1Lfevxus3+4ShLZygkbIVE0sXTKEDAdw3m0fxE17RwZNcTvG
         Zi+N/n4gUeIDNsiVq333p7XcrQ95BI7r3K8oGeoHxFr+CtXwI/8AqHaU+wG/1eOm72fN
         7L0Jc01a6LYWJ0whZYuPb5mOG1u/9QyJyfPumbBNbR3Q1feyIhwYYEeCuQ4yPIe5r19i
         3c48nWnW0vb4dUcZ59Y1QoGw4Quk0QLtDwaJ/NJ+DdmLBKBsbmNMn3ruqrtWMrya6ck7
         DDjaCrBDprkRbe0mvbP5cQuV1cbFbNexCx8fb7JjopPFz1KbDSloRYxqxMGS27xObniY
         EhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q7I5MDtSgiQCKN9F3ALw6k994f110V51692+qoEVYa0=;
        b=WqdJU7u91N5F1t1e3uqygFUKrMrcVv3wpgqU5r19SJenQIIqvoympcHDDc+bpan/1m
         cioqtGC51dEfd1qvY8UE7+R3JjXaQLg/eb5VuffOYg/oZM/T6yk27pMwJW0Nkc7J/4gb
         HI+Br0imed75xONWikubrN9p2OMsoZM2PbzPzKt3o/woqicMxO6QbzUv6NnNZ0OdVWBm
         cYbX8drkf2oYVnwXLUkdPiYxwa/mqfXtMzFJDsVm7B/ZXNOqGdXP/mvwWjem4erMKnFV
         F4dWB+d613ROYMCiBCKX1W2x8VLErNOCtfVj0Fk+WvlonotTc5I9HBqlAln1l5Kqu8Um
         tKJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E52cQlBKjEmodjurs51kMKMXCiMC03aCf2ka6Zi+BsQPx5dMd
	FS4ppFhaX2lDIftkyHwC658=
X-Google-Smtp-Source: ABdhPJzsHiBxTg9DkC+IQXKyRnZE+HgS3gaTUn8auogKfCpVBjv4LbhVGAp0KmGFWKKVZxDqx/fZSg==
X-Received: by 2002:a62:3183:: with SMTP id x125mr1443769pfx.3.1592443879400;
        Wed, 17 Jun 2020 18:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls1075604pgc.1.gmail; Wed, 17 Jun
 2020 18:31:19 -0700 (PDT)
X-Received: by 2002:aa7:9384:: with SMTP id t4mr1428381pfe.162.1592443878931;
        Wed, 17 Jun 2020 18:31:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443878; cv=none;
        d=google.com; s=arc-20160816;
        b=wdZ6w4r8dxJVr0ezwP5H3Tv7KKJT4esLD9zCwcqcThjqGY7h9X5nkioJKKBeSvZxfq
         Zf7rDLsJCN/S576k+CK/zECbem19ndjo7UhpKXMPbRteWdVSTY62s7qeX30HitvBlkVl
         NS8h/Z3muutjCJnYfEGMCo+FBqO1hGLjn+YBMdZn3DrHz760vyST0egkyyQbYbNEwkgp
         HgB8Sl44W6M58KHKtBjptX2tX+eFtlJ8zuktdRFrvOFOfyam+9xfz6YMIlgEucSwXcTZ
         alBF+TNOPnluyxhd4EWABwSAlzr/gaiEUbaqqY41NHz+SqV3NR0si3SSdEp1myXZ41aA
         3fow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gg7RSiINkvvskW9UQpD/rw+4FGADVq15C2YseYCUmLE=;
        b=xwOtAOZiLeXzjxmt+OhaWQtQZD4ilLbrX6qe5B/H7dCJ4Y+g5bohSzQwBlWTRefsZ/
         gIfzYGipnGvyMd581hfJie6bK/+xdS+EPviX950QlkN0rgldSE+gaQxJTh4Q/FXSWqBC
         s2mynX1JQAfF4Os/CbP4s7wDF0eHrWltu9jlfhvL77nX1rJW2Ipi2HZsNDkMJouKivjf
         wx11WAQ5iQVwj2RXHwl/4qqr08goS1LDtS7iyaTpCYAfaQh2LZS3WHTYFpTFepfVfHtm
         /DU7TIaR1PMbHqWMsfwFPYJEQ1iYDplT52Dp+xiRh3VAXWuM1XbynXIsokBwQnFtGU+6
         RonQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kzDc0i39;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f3si101071pgg.3.2020.06.17.18.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:31:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 772ED2222C;
	Thu, 18 Jun 2020 01:31:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 57/60] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:30:01 -0400
Message-Id: <20200618013004.610532-57-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618013004.610532-1-sashal@kernel.org>
References: <20200618013004.610532-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kzDc0i39;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit bd93f003b7462ae39a43c531abca37fe7073b866 ]

Clang normally does not warn about certain issues in inline functions when
it only happens in an eliminated code path. However if something else
goes wrong, it does tend to complain about the definition of hweight_long()
on 32-bit targets:

  include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
          return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
                                                 ^~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
   define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
                                                  ^~~~~~~~~~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from macro '__const_hweight64'
   define __const_hweight64(w) (__const_hweight32(w) + __const_hweight32((w) >> 32))
                                                                             ^  ~~
  include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from macro '__const_hweight32'
   define __const_hweight32(w) (__const_hweight16(w) + __const_hweight16((w) >> 16))
                                                  ^
  include/asm-generic/bitops/const_hweight.h:19:72: note: expanded from macro '__const_hweight16'
   define __const_hweight16(w) (__const_hweight8(w)  + __const_hweight8((w)  >> 8 ))
                                                                         ^
  include/asm-generic/bitops/const_hweight.h:12:9: note: expanded from macro '__const_hweight8'
            (!!((w) & (1ULL << 2))) +     \

Adding an explicit cast to __u64 avoids that warning and makes it easier
to read other output.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: http://lkml.kernel.org/r/20200505135513.65265-1-arnd@arndb.de
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/bitops.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index ce2bb045b3fd..9b9711ea267a 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -59,7 +59,7 @@ static inline int get_count_order(unsigned int count)
 
 static __always_inline unsigned long hweight_long(unsigned long w)
 {
-	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+	return sizeof(w) == 4 ? hweight32(w) : hweight64((__u64)w);
 }
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618013004.610532-57-sashal%40kernel.org.

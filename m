Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU4FW33QKGQE5ZG6YPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6772020205B
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:28 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id v26sf5073854ote.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623827; cv=pass;
        d=google.com; s=arc-20160816;
        b=hYOAJvWsHmfvF5cdtgTJ+ThU0Xlawb1YuQ8isQ6/GejQ6j/LGbpFMjwxp1QdGWEaog
         w044kqzPdVSLL5kcYCkWf5qfu1xNxA1UtDkgDoHu1Mp9uJohyFV1oORAKkjHIdphDj9O
         tQXNUkYcROlLd9cF3lm25u8PG8qDbYNR7bI//32y6TqJOz12sOv4S/rAsHxS7LXGT+qk
         SvQjWKnTePNNVPrd1Y9hfo28yc3dh40fo9HxT5iucw0yuYsaYWb/6TqL4Y1vkqSMQpy7
         pC4BJUAXP2o9BnTo5KIK7T6Bn49iFThdBuREASHlFCFe6t21awEPaJ3j6vu9f3BE+KYQ
         cFpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CzPHEmnG71ybluNlLi9Njo8n/tX+SAs/wzDjXwRhXeo=;
        b=oLEQpwsecrOweOpGzydY0SGpIjtoH/pfKlUuuIBYPGSxwKCW3AHQR+y1YBM3Blult4
         ZmA0X2qG6oITquvbigO1KpBKblOr7TMo+YWmLpV027+g3zeAiAMzzJskk+e8/aHPQq+X
         jFATjNL8z/4+Vm49JoPf+Hb8jaWJSqYWy005nrfex8XHQLXLiZg0kNMDwwZ/xwwIKdlA
         Kjv5rmGNUulptdtKAsRD5omU8P5PXyWtWG+3VJ2dxod68Cg7xHlAgIfOKa5Xt6ovnvri
         53wVBYispup+MS4enaOhuVpH6VwZjjl1kFMPcjh0UEP8+1kSzeH43FioQtVkmatKKb74
         gWOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rutn4YPk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CzPHEmnG71ybluNlLi9Njo8n/tX+SAs/wzDjXwRhXeo=;
        b=BZe4yC/uyvPxMUeIzZyNGOndY4XJ08q9r87qRxRZlTWi5FJZEI2RxEgeInDCw0W9+q
         ZcM7VjwkaUJBLAC8hcjunqfTuEScnWYDr+TVbnyXyX3UgHmod4ryuqbwUGj858E/ENUI
         RdtryqTdps1Ll8PcOf5Fpp1R/Vb2jdviNwZ7zHJ/reRomjBPEtI3PwinxzEFQ3OrR5BX
         nw9dS8DPUtIv9fP/RbnqU1Y6M3B92dY84Bb5NCt/BjCSth0J6/WtnL3i2Ji7Me5ydnt5
         V31YcE331d6N98y95po4gUdqPaYVhEaL8ynAf0+5/iviwZVdfurZk3o0UdQx0Ooef1Kj
         q3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CzPHEmnG71ybluNlLi9Njo8n/tX+SAs/wzDjXwRhXeo=;
        b=HJG7YyQLgIHHzdLLBx00wH7Q3YNEKGO/PxS24iL4FKszD5PNItMcifnMrJ1rJbY0ZL
         Qk6SBXXcJpWISaweJcsNxr4HX03DdB0H5kRXz+cMaWvOvgQad1NovIDDGULh+R8m04dz
         L5mVWS9kFhIShNPWog1taEuZA1MrsOLjUu94s+qBH9+xrENECLAalyFpiBwrgMgFFXzo
         Yw686lYsMQ/C9KyCgFDl0hOByrL8kop/kiEKhA/hqRZg3ghQ3hjqggTrJsrMUpRVedFq
         RBUb3LRmLPakB3TROvejpRX0m7D3NvFsQNP2TO2/U6LRUAVFhunJpeLq+CqVB6eyPT9o
         1Lcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kaEb3hQyvNvS7EsWbKAKtGrBEOVHAsA/8Ptrze2N1wSCVsKCi
	LuFA4uyED3ydSyjUMenkwaI=
X-Google-Smtp-Source: ABdhPJzLK8Ah8YQvt3ncG2HBhmker5NhR7ZUAtuWfCqbrVBCpZ7rCoJSZXR5m/9EjymD0K21QHdcWg==
X-Received: by 2002:a9d:6a0a:: with SMTP id g10mr5615778otn.105.1592623827082;
        Fri, 19 Jun 2020 20:30:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls2485764ots.6.gmail; Fri,
 19 Jun 2020 20:30:26 -0700 (PDT)
X-Received: by 2002:a05:6830:1df6:: with SMTP id b22mr5574121otj.98.1592623826715;
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623826; cv=none;
        d=google.com; s=arc-20160816;
        b=V/rksko0y0Giq+TZAk10TuMIZ7fzsetbo5m8RBlvTQwS2Ge84dp6Z5m4l/KIHvbdfy
         i5qvWt88rRFZ/M4B+AL/GUAgI7d/FkAFUyerQ6EnZ6GEdHadg/4BWmg4FTrl31QAiyZZ
         EBxYObWu8v2ElWAIyCon6CTq239+OkN5FTf3A+PHdWXY+TL5YSWT+6tANOqFlzcQ6CeU
         nH1cxJhPuR62HCH/DbxqxZgt2/4T3HL+a3REw0oeYoiIse4laf3S3DYlufR6KSM/uNi2
         i7wJE5Q7ZdQB5zddz6qlvMpd8sRu6QwscLyahu0rDkrW6vgJAx5zU9ObZ8XszEEBJ4KB
         Xv8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I53/n5ydJ9yzbnxtmoDriMZB814XLzfic4sznaesD40=;
        b=plkLUHD5LWlwh1tq9Duh05PmBRKP6Pok5PI8WlAqtN5aTIWR9DiMaETrPl2+QRaNWW
         g/F72/wbxXR8hplp1+VbPmN9Ekr00W1ggEW5M7HhersLGZvXBxjqHxh/vxOeHchogHmi
         Xq+NwseJxFJim8aru3GY4itN5WOQ2tFBlgFzde10bDJyvaAEebMYhEQXRohD9RzNFrvH
         rpnzEzyxc/JvU2h+kL8LbEyyxGsUwyzqB90WptoZZq49LRLy9WgsaIJJ2RT8lyTyJl8l
         qU8OvdiPoWEsg0kBZgz64OraHOaN2OrB7y1cWMMiLFOq1LQoB0+Y7E9k1UYe2rX4FDSq
         DmOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rutn4YPk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id a13si368367otl.0.2020.06.19.20.30.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id s88so5282601pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
X-Received: by 2002:a17:902:ff06:: with SMTP id f6mr10351618plj.22.1592623826055;
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 17sm7373750pfn.19.2020.06.19.20.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jason Yan <yanaijie@huawei.com>,
	Chao Yu <yuchao0@huawei.com>,
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
Subject: [PATCH v2 12/16] f2fs: Eliminate usage of uninitialized_var() macro
Date: Fri, 19 Jun 2020 20:30:03 -0700
Message-Id: <20200620033007.1444705-13-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Rutn4YPk;       spf=pass
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

From: Jason Yan <yanaijie@huawei.com>

This is an effort to eliminate the uninitialized_var() macro[1].

The use of this macro is the wrong solution because it forces off ANY
analysis by the compiler for a given variable. It even masks "unused
variable" warnings.

Quoted from Linus[2]:

"It's a horrible thing to use, in that it adds extra cruft to the
source code, and then shuts up a compiler warning (even the _reliable_
warnings from gcc)."

Fix it by remove this variable since it is not needed at all.

[1] https://github.com/KSPP/linux/issues/81
[2] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
Link: https://lore.kernel.org/r/20200615085132.166470-1-yanaijie@huawei.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/f2fs/data.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/f2fs/data.c b/fs/f2fs/data.c
index 326c63879ddc..3753ba06531b 100644
--- a/fs/f2fs/data.c
+++ b/fs/f2fs/data.c
@@ -2856,7 +2856,6 @@ static int f2fs_write_cache_pages(struct address_space *mapping,
 	};
 #endif
 	int nr_pages;
-	pgoff_t uninitialized_var(writeback_index);
 	pgoff_t index;
 	pgoff_t end;		/* Inclusive */
 	pgoff_t done_index;
@@ -2875,8 +2874,7 @@ static int f2fs_write_cache_pages(struct address_space *mapping,
 		clear_inode_flag(mapping->host, FI_HOT_DATA);
 
 	if (wbc->range_cyclic) {
-		writeback_index = mapping->writeback_index; /* prev offset */
-		index = writeback_index;
+		index = mapping->writeback_index; /* prev offset */
 		end = -1;
 	} else {
 		index = wbc->range_start >> PAGE_SHIFT;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-13-keescook%40chromium.org.

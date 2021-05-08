Return-Path: <clang-built-linux+bncBAABBYOD3GCAMGQE32ONCQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A4F377123
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 12:03:15 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id d17-20020a634f110000b029020ff9c39809sf7047526pgb.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 03:03:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620468194; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDbP3FlKtRNb2LLdhsvAY5irgqVPD+AdeTOPFcF0PaMpECn5Gu9f3FMMIIT3IccL2k
         TTcHqyxwny5dz3WxPPp3/tRq/FZbTVNjqp7u2qt7cIIzrLkoABoyZt0Z8+e/vJxiVzPv
         sJGwf6NQEjqd0DdSHTsL09fUsmdu1h1vjBOQVYok+9B7IasvuXVPBh6StbPEkSOiWjNi
         O7tET6QEIfIUjgRaAslJX41yQhr2PUXEmzZ2yl2MkUYed6qGKbw5G5Wj+6EGJYnIv4Oc
         djH2BQclC+O1ugyJcNO5QWkcr/VsJPPj/3EI+D9KLi1CBYv+c6Jnjmgs/lajZi//2t0l
         BbbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=oxaWgZMVjeTLLYQbf+E1WgdtKPM59a8eGx5BOeRb+0w=;
        b=phsoGb309yIhHXxQqHihdkgQ6lOgQIcrBVfsG9FDbsaMTE/+U5Jjr96ZeEABXekOY4
         t60sXKSO9EUNprw0BiIWWj2rnCyWuPP9UL6KR9lGctkQVM2/KJ+Y5JFlNh4egq9KHxd/
         G49j/90v4lM71sEO0+78OAVseD1G0tkdEG1aspbdeIiqo4/sN+b2mk07tvo23GFtEzj/
         GeGPfUhJJDTQIsh0OvpNRpQFItqfWAv6OULwZa/7X4JaSTaiaZQnVbHOtYkmEdQ5Ccar
         jOTAUEjB8AelqTvM1mBBlhBa5u4Ie2isaodcwqPBysePuvVSste/n3QGSbVFMlYZsuyV
         Bs+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxaWgZMVjeTLLYQbf+E1WgdtKPM59a8eGx5BOeRb+0w=;
        b=cwlzrukt1OlVHUI2+8w8+nD9/PhT2yneD6a68f32apZJiN66pU2Gw6nrFMBK9usMDQ
         e0RuqTIBE6fWDpUUUYzRy3Sbc1jfg5i7JZClTn1eZ5+c+0s+YmHVn6y3JBtzAjBd9jk7
         4BK/E7AXrMc/2p3UWXSxUUXrcRwY5vaijMObu8U7gUBg0a+ARCkxnLIKtfrUjY2BmsQr
         A3RlSj0KiFcTRr1FtHinqkAuuGdPLwsgs2ab5uOyuy+LFEHxX52ob2h3e48ioqtXVMNX
         002XP7e8yAbN8SrluCJJ/mzum3yFlHShqoZPcz4RxAWB0g77jcHc50hJxp6txobjCUCV
         fHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxaWgZMVjeTLLYQbf+E1WgdtKPM59a8eGx5BOeRb+0w=;
        b=N2lKWjk03WgBMcjYsIrrcSfohMcvrPm1d+9l2mUfEThpPUbNl3A5ccwYwqW/uZLxW1
         n1CyiB20/oo5obDqvFNjHVpf2WPMI0rUVV0s9ukTEXqP565JWwdijfrbuA3Tiw4IbnhI
         A7waZzPizlFHkdtT2jwAmSdcIXCzrpD9Z/SCIl93WlIX8dTDnlas5mAPt/JtuBD2JAl0
         FNTsFoXJdrroBOyA/dUkKuTm6JCJqcSc4h37dZlAKN2/MdrtErTQxYD2jZXz9X/gH+Q9
         joGCrCh1T6We03MzGH5+GCKldl6kiQWTDEx9tUHcUNS7BzoDldQ+Xpt7YxjLxLAUM0ev
         Vthg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336NeHbMDxiNIeF3yUgfNSSz1uZnQ5auF6Sc/fGnICTV5/3hLK/
	uerCqDXID0/KnPk/mziLgzw=
X-Google-Smtp-Source: ABdhPJxYdtnR2LyMQFcnLLYg6kSHJHNSBPRHmYGFJo8Hh8f/Mo+Gx7fWY1qfwQLJ/WzKKTXt0NzTww==
X-Received: by 2002:a62:75c3:0:b029:27c:d30f:66a6 with SMTP id q186-20020a6275c30000b029027cd30f66a6mr15407560pfc.0.1620468193930;
        Sat, 08 May 2021 03:03:13 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls4697277plo.1.gmail; Sat, 08
 May 2021 03:03:13 -0700 (PDT)
X-Received: by 2002:a17:90b:30b:: with SMTP id ay11mr29744496pjb.75.1620468193281;
        Sat, 08 May 2021 03:03:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620468193; cv=none;
        d=google.com; s=arc-20160816;
        b=p6W/rCQHX4QgHvPqqDRuIX126nPRwH2EiNZmTCVNCeo+iAnTas+7sBXf9hB51TE15I
         AQgWcljJRJ1TKoxMOACEAsGzn5mvm+dy1GIZQGP5KDAuq71qYsMoDY0V72xKxnOdXgMM
         TqgjhzfzLPGZwq0LeQ5Tj2V1Fe4qWZQBxlfCYwTm0kuGaCaur8zzg3GdYC7WCZCJwTYF
         gtZgb1rdBLSPK2wS/L79COvIZPUFvWeKqkgA8wn+Ct6lesP8q5kUdd8NQ0n0PypJqHPQ
         dqYAmN1obw40b+DlAJB4+pplDykJL9XL0wDrUrb2G777Y8JhkQXqlh6DKLkc1gW4dPtK
         K+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=7KtApLcdju63XTCciNFj3n409VEP16feYxJW6oJMGU0=;
        b=MwLc0ezBPFtxTVnADQJUChAosuKS6gh5wfaWriEBckWhwYHUKKJH+AF07EXim1fRn6
         /zMYcnWNU689qijnvvNhkqBO+IrCFXNPP3utxxG/UvmKgbs1AInH5QMmS/tfV8AZE804
         bPPMSgaktiNn74Pg2umRH3uhayF/FfAErn0rLwfBzJXvWRYilobC+fao7taW+E9BpZtp
         afZ+VmVWN1AwFYx0KYTRKbD7l6eAO37NtLhwAgE7DZ493f/6ew6KAFyqw9gexEhYEbhF
         9IymbiChzHdZ6MwBu1de69yoB/Rcm7xaJe38uLGFB4RJ6SEmfkQ9cjXSSvE65twjSZme
         ZRpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id w3si510374plz.2.2021.05.08.03.03.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 03:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R211e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04395;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UY8aQ.Z_1620468187;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UY8aQ.Z_1620468187)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 08 May 2021 18:03:08 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] neighbour: Remove redundant initialization of 'bucket'
Date: Sat,  8 May 2021 18:03:05 +0800
Message-Id: <1620468185-122101-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Integer variable 'bucket' is being initialized however
this value is never read as 'bucket' is assigned zero
in for statement. Remove the redundant assignment.

Cleans up clang warning:

net/core/neighbour.c:3144:6: warning: Value stored to 'bucket' during
its initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/core/neighbour.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/core/neighbour.c b/net/core/neighbour.c
index 98f20efb..2b2f333 100644
--- a/net/core/neighbour.c
+++ b/net/core/neighbour.c
@@ -3141,7 +3141,7 @@ static struct pneigh_entry *pneigh_get_first(struct seq_file *seq)
 	struct net *net = seq_file_net(seq);
 	struct neigh_table *tbl = state->tbl;
 	struct pneigh_entry *pn = NULL;
-	int bucket = state->bucket;
+	int bucket;
 
 	state->flags |= NEIGH_SEQ_IS_PNEIGH;
 	for (bucket = 0; bucket <= PNEIGH_HASHMASK; bucket++) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620468185-122101-1-git-send-email-yang.lee%40linux.alibaba.com.

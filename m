Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS5X43XQKGQEK5NRTDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1A2123DD3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:23:57 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id g15sf504014qvq.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:23:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576639436; cv=pass;
        d=google.com; s=arc-20160816;
        b=SP/9wgDtuUrrML0JcoiH0f6anoSTTxTf2D+SFNJ0bLb0wo4QCmlgj28wHNlJQiJiZi
         vbHBiFZS+iaOI9uNVxK3Wx6CtTgIfWergBUwSaeWO7XlfTh8RDMt4V+XK5A560jvAtYN
         fQxIzKv9R0ZwOkSNT5sMm9tQkL2/m9SGiod+tPWIgmaSq7eooQCFhvahMiqUZGADqi8w
         kwMA4VT+zmu9tCRZuj9EEJj7r13XX5qek0vrnD+0xgTf6VA+vljKevwyx+QTaVW2QlKa
         KZBZEsQoj3P8RlngCsygVfuBqderq7Alr2BwiouhKNQiqN7ybx2IBw2w12bH1XAcAp9o
         QGDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=TmlgcAE93bKjhmkfBoDMTcJve+XFSTswbbF4hmtjvJM=;
        b=KP07he81PZ51Oxkq6ohIqgcJecNpHOy0fjfzq5qXe5G8BWb1jNut5ueq7f/tek5aNk
         nXf4s+op/fEC0/dvcCcuHm/d0Ru+zW8NMOeX93tg2j36zi6z97MaZDpTzAlJ+/w+HIjJ
         xcp3/l67tjy2iBPmPoxbSij7fByoAqjpFTIZq5zkee5U8T4sleKMcKz2Uq9cgA6+9Ms/
         pzKxgaJismiZhMMrUG8uEw181sRIKfK5avtQ8O0jn8rnCynQCYe/xAEU48UHIx4qoRNj
         39Kc2cehDWv783Ji19wxoaeSzOnxUJqzoHKwTHR8xUjLwVIWp4TOy7X+mCxInOYKdwiG
         HCKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=umPb6nIB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmlgcAE93bKjhmkfBoDMTcJve+XFSTswbbF4hmtjvJM=;
        b=YW39qBT0iEzSsVgJ4el/jA3v33PkFrJ+TpJViKm+G7C+jCEmeXz3Q44SlgPNlTEwKc
         CD9k6rRxns9XqAm2aMdDnVtOpfRCrmbEETgTsNejEWZ47Hh23br/XVJf3WNc0/XyDz8u
         GsBtHvOzO0bx2bb/FO6ckx6GpB22ZqafaoFmldtC6aKerxzu4kIkjQkvu8XYVKb20o5v
         vTyazaYEJ3FNjA1UhS8IEfh6gl9C46CMBeGKDQ3Jhq+3dUkryJLGAWYQEACtp9ZPXeIn
         g+wipX8PBM80id1j7J+3FtG7v0IoQPRkzSNbVZZT+NG+r8/tuDtPH+pHJ14uZqaYSmPl
         BWMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmlgcAE93bKjhmkfBoDMTcJve+XFSTswbbF4hmtjvJM=;
        b=YkVDywv397to2QHTO6XST1HmbcHnjZk3tBlX8aPTmCCzdateI6p5gyuHpumiATslxj
         HAocmK3dDjNvXCgncVA4phyjLG3BfmN2eqrnvbsi6JGnpf27MSkKbvutMYeVrX+VdQVx
         Mez27yBOd3UyDEKam0pDye8pU/owsmkc8HhCzYAAIHy4UVkWpKgD/NKGepWjchE75acY
         UmLuEzHYOpUu3QUZWKg5bhd1oqI/Fi0OfwHyJszVkha+XOz09L5kpdcvum3c8AijyKag
         wvDWli6PervI+SrwulzQszDoiU1V2xDA36ncKam1FTKkIQuaeJ1Qa2IVbUHljMMVSsVF
         S7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmlgcAE93bKjhmkfBoDMTcJve+XFSTswbbF4hmtjvJM=;
        b=q2G+p0spMhlAXmkBCol3+qlsjwpCtsB7MswG7M6OathnKS55gicI+GfJXsNZ1o502K
         sAPWo+czqo7dGPFW2y9jng38Wdfez/yPUfI3Y6ldwYkU/Pvh2fcVsllgk8ZD/953AH5T
         VqDtins4AlEC1iZgnjSVBD1Ku8cod3QVJFgxy6nfm3hgs2spRpHEOLrKrO9pGwbtHph3
         eEF72+9+QYc87JAb9CDRVJ0mQgcljYMyt3uGTa0vzJZpE4dUVUmh4gKye9qpB53BX/eD
         UajqdP5ESuuhdLCDhHJpIO8QtJJdOh6wg90VzT1OfW/DCJJXyZqA4kVeFsfmgqB+m/ut
         8W4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXzFRDpEU7xAPp1+r2dWRKNnM/4NxiACbHnHCnH/8PaEI9Kn/v8
	G5kMZJqa0ZQ9CbpZ+dcdVcA=
X-Google-Smtp-Source: APXvYqzQp1606cGYPo8yvO96366p3kkZEMhIa8RjD6OvOlY8hqXFwnaZwbNfTxua5UfB9r9nfxuiDA==
X-Received: by 2002:ae9:ed53:: with SMTP id c80mr300910qkg.445.1576639435967;
        Tue, 17 Dec 2019 19:23:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1b8d:: with SMTP id z13ls215790qtj.16.gmail; Tue, 17 Dec
 2019 19:23:55 -0800 (PST)
X-Received: by 2002:ac8:2a06:: with SMTP id k6mr400322qtk.145.1576639435652;
        Tue, 17 Dec 2019 19:23:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576639435; cv=none;
        d=google.com; s=arc-20160816;
        b=FoSLBhPtrL1EMnH+0A1TMLX207ObdHvTusdEl/o85/vGUIZmZGWEzp7zrErwaMWfrE
         RWjJ5Wf67dqLbBhtlWV7xnNXVYqjfxkb4fWf2NVxSmhFmCEfjgeynDNOL4xbauVzIvqS
         o4xgyvlR2ANPL9IJG8AY1IFvXVqNlAy3MtniA3cUVCv1lYISgI9O/1w4e8nLzYx6S4h5
         nY0e5/7f2VuXvUEzes1RZIVtOyzlP0edDhFh+UJ9U6gt4OdxjT0UcPpp75Zimo29jYvP
         bzh1LIXGo3zea8LZ5tRhUbCHSaPSEXq1EKzmqGEhU6NLNIGeSuAy1TrKnhv6DvOxkhoa
         cADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZJSztDb6lmjtiPRyrZHre6U5L8vb56EP0EHTbsoCZLM=;
        b=AvF1wRfdru2o6hm+nnDQqFauKJLT5698NbDAw5TDS9mm3B/tcMh5sauqMal2Cadcn0
         7TZiOIe+oZNJZHEBsQF5+Mkdj9P9Pn36trKP8M9f0n7iiwnJdM16W3B/OmGbeD6bqbqc
         oF+ewueNx9mdiUgSdg39XB9val4l7a63mDrQnm8i0JJlrriFNN2LKfnnaKyzhqDWQhCp
         L5NbYPHxdIv5N+hQtSNo4RWypS/v5IQfdw2M4GLsASMuc1nz226QgU7Z2OMldRT6+PWX
         bwUyaKgrwa1n7TBIVsBSTHpz9w90gYnaVvRzJXkuYCTKtTlMs1pYz/xY3Hh1l7q/uVqp
         mBjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=umPb6nIB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z17si35160qkg.3.2019.12.17.19.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:23:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id a15so594757otf.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:23:55 -0800 (PST)
X-Received: by 2002:a9d:6f82:: with SMTP id h2mr135306otq.69.1576639435270;
        Tue, 17 Dec 2019 19:23:55 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l1sm353857oic.22.2019.12.17.19.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:23:54 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] vfs: Adjust indentation in remap_verify_area
Date: Tue, 17 Dec 2019 20:23:51 -0700
Message-Id: <20191218032351.5920-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=umPb6nIB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../fs/read_write.c:1760:3: warning: misleading indentation; statement is
not part of the previous 'if' [-Wmisleading-indentation]
         if (unlikely((loff_t) (pos + len) < 0))
         ^
../fs/read_write.c:1757:2: note: previous statement is here
        if (unlikely(pos < 0 || len < 0))
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 04b38d601239 ("vfs: pull btrfs clone API to vfs layer")
Link: https://github.com/ClangBuiltLinux/linux/issues/828
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 fs/read_write.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/read_write.c b/fs/read_write.c
index 5bbf587f5bc1..c71e863163bd 100644
--- a/fs/read_write.c
+++ b/fs/read_write.c
@@ -1757,7 +1757,7 @@ static int remap_verify_area(struct file *file, loff_t pos, loff_t len,
 	if (unlikely(pos < 0 || len < 0))
 		return -EINVAL;
 
-	 if (unlikely((loff_t) (pos + len) < 0))
+	if (unlikely((loff_t) (pos + len) < 0))
 		return -EINVAL;
 
 	if (unlikely(inode->i_flctx && mandatory_lock(inode))) {
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218032351.5920-1-natechancellor%40gmail.com.

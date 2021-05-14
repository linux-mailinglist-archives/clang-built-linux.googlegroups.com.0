Return-Path: <clang-built-linux+bncBAABBUED7GCAMGQE6AM3EHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1429380626
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:24:33 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id 14-20020a056122070eb02901fc32082ad4sf20372vki.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 02:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620984273; cv=pass;
        d=google.com; s=arc-20160816;
        b=EHV+izS+0AbD7hkBcz1hVMQFQTEqcEmxqpOEDWqpU3IS4JGIN3TYCMGsK0gcWrlPsN
         11WNCVJZURXOzcBARF2OiGtIbEGgmXDJ1Tluxwqneo8lydvcIGuHwoE1fykXoFnQEFhR
         LK/UiVm9UM9gakkkpGdyhP8++Nr6wrb5zDGJBKwNLpQPxvf5oN7EjbBO6HKn72Cmw3ns
         uWSeBWB1li6PVmHkjalmMp4coQLSsxgoxdfGTQ1Q8VfTNLryHGvkkM61fSS82myxvY/R
         f3JSXW1Gy5v3QFv6zpmOJO1k/xWgzifQZIsOZOZPALtSaK58fDvweESYylzhtoO4lPvQ
         GtLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=hzTYHAAcanWWX1wIWrUOg73iCRWzP7fSc0xKI4J0F44=;
        b=nGgSBy7AMthammssSjgxL8Q+F+3AR/XHR4MJ/3om6wiIiXs7UuUw317Dihf+zuatiA
         SLxdPzQcab8aWgNLsfDA7bk+A8O2BTHIYMuO4sf4Mu+KgaYki163JTKjVEShQ//uppCx
         /P6j7Jl3LSKIwPf6OsxWxulHYkNLhEXKrnSHuai+tN1RKda/Sip/X7KtUK+s6JwYzc4z
         VfKpa1Ag0O8SweUVFZPmnuSv9CN7yExBnEHn7Zv13neEl5mtjGpqQJrqPn0+QOFWRy5q
         Y5jVGkNE5qZnElhROoqcylm4IYIKgvyvyiCx0FZpyzwXU9/XweHt4HC0y0cheOMS56J6
         0U8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hzTYHAAcanWWX1wIWrUOg73iCRWzP7fSc0xKI4J0F44=;
        b=Ko+KIj6OQZ3yMNGRSETggfJ4T3do/TR21Mx4EcxhR6oc2XPueETf55AFd5wszm9DZB
         jh3bTUFnZ6Sxo7hcHXWhSjZtSSDSaoZOfAIAiQdRPLKpY58m2N9p48Zg2RXd6k32YXys
         AbCf+s+YCcHByZSinTtDHctpzZxRGLVLJcUgbiyzLhQGqpqJtkWNxOjxZA28vlpDzV4c
         OQ7sidAZLVlZT7QFAH9tWEWBwpRsuNYMzoIffq7WWfymcXv+Q/TBLHd0FInSLkzEZLzd
         bjccJQY7F2vIjcM4akUffIDBiUH4fQHfdYhnFvoaeAQAjzVSs/J/TNMinvXk6dnfehZy
         Dv8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hzTYHAAcanWWX1wIWrUOg73iCRWzP7fSc0xKI4J0F44=;
        b=cRhJAOXadRAX3kv4jwVJ6gIcMriK0uNC5lNYo+y5XBxNE3fEwWY+EGT38OgiYpM6O8
         K6gcH9vlDC+MWq9jDOxcDJJHoGtltGRXxdAKBC3hTQSFqewXH6Q5NavU4wEj0NMVX0L8
         v+4c4kc4/pOi9U9gzEBqlspIzcGOZhFMbJAPEyCU9yD4Ukdu4whrclpKZ7ijhcQQ8nOp
         nOjKZ1WWjKU7vftku964rBlmsEGaCQQDo/B/NvT2qGXDhI+Y+qtmZJYmtAfYBedwnA/H
         yeqVBckvONpOz0sSHwbXQft1ToBp/8FPqhUdJu5mw+yO1za91N7VEQTEr9siioklhlW7
         Cndw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WkA58bwx89D5IbUyVWn3j8rCgz7YIPqEv0O2FErG3S5k7wDum
	PXnq5zU8WHkV1lbKQLFfnLc=
X-Google-Smtp-Source: ABdhPJxpZp9o2xrHt/7a57mDMvL9JGhSVW1yX1eFeBM+INIfHgaBo2AjsbPH4el13YAUU2GnJ1XfAA==
X-Received: by 2002:ac5:c84c:: with SMTP id g12mr5811131vkm.14.1620984272887;
        Fri, 14 May 2021 02:24:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2319:: with SMTP id a25ls1070687uao.0.gmail; Fri, 14 May
 2021 02:24:31 -0700 (PDT)
X-Received: by 2002:a9f:26e5:: with SMTP id 92mr13724823uay.54.1620984271803;
        Fri, 14 May 2021 02:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620984271; cv=none;
        d=google.com; s=arc-20160816;
        b=sA1eBBqvks54zmr5wCuSyhT2GcB1AFeo/3d2TdA5zYjuq35/obEf/YLWijzCvPuoD9
         XRT+owUJD8D6DJjvG0sLKZ0JnGWYvovjBaa9HrQ8S9oGgrihAUMoRU91xVg8JRLn9FeO
         4Npg9gTpvpXgWD0zh+WQ6byxp9BtRBsao8SEve3o1feTVDfIn2OcKdZRuXtJ/bzRtjZm
         CGXpvK9Euu8xm8JwdFn2FsVf3eMVFpqbbkVDdYPe5z/JZU47zWVKNeG/e/4VJhLMXq6j
         oCBThyPzvPQCj258LnzyZYH2n/4KsMz4TDdIjkvUwYFt2UTm220pXYjxrJfaoM2DtdYe
         KVaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Kepe75jW/wVGeNM5v6KMGKhKlU4+8nr2kQieFw43/aA=;
        b=jZUl0h5etXWRlioziy8uPwDDCdwF+X7+jHcp3crRQWstQi3YMSTcxCQU30eZhP2Wjb
         sjjiZBG2HDCvOPkW6hVkiheUGyfRC1YHbggcVz1YWDG+bwIjyPLGnjVIeGQleehLk1J1
         RjjO9ESRnMxo85aWZaWrHDXv4jdLkIZgQQuxasBMxHHq6te+SPAu+buAHapnAtUxbHOE
         ouyJFPtcwyoJhcQf5ojdVvTusHx7qzCgRzAG2/Biaqj6wgt+Esnyacm0MNGSzUz60QQ0
         pIBj1cTsE4Dsta8LYWofv+5h0O1oUT6JzdjNG2ZDXbVuHSQurfHFh5YVY2XioQrQvbPZ
         Go7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com. [115.124.30.132])
        by gmr-mx.google.com with ESMTPS id h7si388295uad.1.2021.05.14.02.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 02:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) client-ip=115.124.30.132;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0UYqHdQ4_1620984266;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UYqHdQ4_1620984266)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 14 May 2021 17:24:28 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: clm@fb.com
Cc: josef@toxicpanda.com,
	dsterba@suse.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-btrfs@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] btrfs: Remove redundant initialization of 'to_add'
Date: Fri, 14 May 2021 17:24:25 +0800
Message-Id: <1620984265-53916-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'to_add' is being initialized however this value is never 
read as 'to_add' is assigned a new value in if statement. Remove the 
redundant assignment. At the same time, move its declaration into the 
if statement, because the variable is not used elsewhere.

Clean up clang warning:

fs/btrfs/extent-tree.c:2773:8: warning: Value stored to 'to_add' during
its initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/btrfs/extent-tree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/extent-tree.c b/fs/btrfs/extent-tree.c
index f1d15b6..e7b2289 100644
--- a/fs/btrfs/extent-tree.c
+++ b/fs/btrfs/extent-tree.c
@@ -2774,10 +2774,10 @@ static int unpin_extent_range(struct btrfs_fs_info *fs_info,
 		spin_unlock(&cache->lock);
 		if (!readonly && return_free_space &&
 		    global_rsv->space_info == space_info) {
-			u64 to_add = len;
 
 			spin_lock(&global_rsv->lock);
 			if (!global_rsv->full) {
+				u64 to_add;
 				to_add = min(len, global_rsv->size -
 					     global_rsv->reserved);
 				global_rsv->reserved += to_add;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620984265-53916-1-git-send-email-yang.lee%40linux.alibaba.com.

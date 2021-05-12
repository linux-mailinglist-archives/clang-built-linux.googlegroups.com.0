Return-Path: <clang-built-linux+bncBAABBXF252CAMGQEHQYOG2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3702D37B8F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:18:21 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id d21-20020a0caa150000b02901e2ed83f922sf11021056qvb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 02:18:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620811100; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLhrffIxSsU+xQT2YuufglCuw71LXwGi7642Ney7rmcoZMRbD+ogz6mJGayS0toKyy
         q4i9DZJyQvdwCvWdYQUrrUmwKYpcs3nlR58VwzwUTCi9AUl1TTsE23q1yo8xKVqw21dB
         KrNwSgRjkpCd/qNe488rqtvM69IHvSUGdtFQya3FDFoI0wJPSJo/UjOVzXKBgirLBrjv
         g8i+Im2BdxRT4J0lHK+ZZOmew9DBcQtdhrDoUsvqDqFWwL7xlAHquTaquJW3sdG+hguW
         rD8xojeHu6wqQuL6OQZdp7SxY6JJWLn9NN3hN+2kEp/lRjom86FlTVOfNFW04KoMrl5N
         /BGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=eIz60uAuguExGDXFCw3nWCoqyZhE+8AYBY6EClVUHEc=;
        b=P8NIL3KyKxHgFiA4UcMgvGKU5RtcxfOvhIFo9TvQ0veDp66T8E+zfB60Psy+xVt1Ls
         whxSqUj4AFtfkYD+opTo+Y5Y6qoBhssXVhxeO8bxzKf3aIncPbevRUFcEBxQ/L4c7SUG
         RcQpLJYFfIUNoatfbPOoknIUBx8URKZz+WAagt4CpOZYR63Mo8iZkSlIBUDDrhyJylG3
         KpxLYxFjCH/Gh4kPh92jWOaPosBPA94D7Sp9MhBxdgjpZMZlLgISKzhFnvJrbGjIYTKa
         duYjaq2svFkvaqyGzSM8fHTYtbm5ajJ8o8FwHFGEzMx/nx6N/4IHNoaG64vnG8ZguFeN
         MOgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIz60uAuguExGDXFCw3nWCoqyZhE+8AYBY6EClVUHEc=;
        b=FZCV7E816mA7bF2bc6o1rYacmJ4l8Kbz9UV9zkW4rMQoq7FNB2Lo2y958rOxjGmzsO
         INWUPuebzbf6aEzNlcIBMiiZeXBsCAuKYibsHgPTzUwxcCfZPciEmsNVv0aHTiuPyRNL
         Sy247E/XIX2sO82AgOre0PM60TEbHJG7M+IVrn5+xR+/gy6Xxu3cIt+wFxmBRHJhy6ep
         iKYBfQJywEfQpY6KDGGxNXLIrSlhSmazCL30I0Q+wqfpzkkqIqZXBUNpM+dhH9cbTVIf
         ymAVZ7yFrBHGRuznUES1zNEtN4uMepblPDxS8BbFJXOnNdPrE6BBYxWuKgjTqmiLA21o
         J5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eIz60uAuguExGDXFCw3nWCoqyZhE+8AYBY6EClVUHEc=;
        b=EF7pDoLW6rD+oeD1HoYqxXnW+kzDOonKkG1EJbQv7vsdFwo9heXeJpm6vv4qprQtrx
         8+TZGqnd8nOo0jPQ2uiYRNeLHJPVOVYvxwDE31Xo9aS2kses3W/DLN+6BvTtsmr57OJT
         1HHxUfurGEyc+JJY/7Jof/X/qfgUp/gYWzVtmMve/Sdp7Z2kzogx5opxJ6F9CQBq4f++
         LPBdSfV7xZx0jFtGrorDvGZvVFuIwPbVSvOWyOuA1scpSLjgfu8oRkgUKes2dZiWcxkA
         5RYESSZMfKRGpGgbOE+/AiYACMGjMCkJOwtJYWDpMHFviVKsqgLc+na434+xxXOGhZAV
         cdEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O1UDhBB6YedG/CzoXMluJYqZ9JrmXZ/tj0tlawbq/QWHCWwOh
	RxL2GQ+X8C2jAHrQc19fKJk=
X-Google-Smtp-Source: ABdhPJypBlKmt+kmi8CbOwdOuylKv1OmyZyXYECFPugZVgJiSohhV12rD51UEbEZmX1+2PiI5uSThA==
X-Received: by 2002:a05:6214:8e:: with SMTP id n14mr6744604qvr.29.1620811100110;
        Wed, 12 May 2021 02:18:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7a6b:: with SMTP id w11ls1109957qtt.5.gmail; Wed, 12 May
 2021 02:18:19 -0700 (PDT)
X-Received: by 2002:a05:622a:208:: with SMTP id b8mr31264186qtx.28.1620811099703;
        Wed, 12 May 2021 02:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620811099; cv=none;
        d=google.com; s=arc-20160816;
        b=x/WJldks7/ITfVYh33rgXyoY3Mh2LUXVIq2szn9OW+pk2xA/gVE9K0AmBkaHIflknI
         lMgvZkRxAyQxnthPLc7r15TDcrI+jlcEmU7pPEtbejSRCF5ios/cn4hkB2NMOSlTdm0t
         3ZgTZmuzJq7L4UDs1U57lDZry6j0XxLG+XxCo+txHsnnMuYanPcpHrm8iG20+5t5FGiq
         GLRXKKQySy3lr4lNYOWm9hwQWtj/YFApDck4fcJX4yM5m1D0g+Gh0EDwzAlwcuX2M4Td
         TZ0tEz4HmJ6LpffhVz81mmh+xbAY7FemefR29jI0Hv1uFlX/mx9wNeRMP93cPxg+LSiv
         Co5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=jjMwR+O9gncKs2wODhZVDKjZtSRcFfRbt7fxkVLWhTo=;
        b=RdusN+IVIe+ZvLHbfXnnLli0M0PGzjWm3Q9cq1Be+EVbWWN5eZ+um/J6rJYPLNBs2T
         iHje8PAUG5nCJjgCAhgOmWHUPCM1IucymKCHVOEuob3O5Xe2az+AJ2tKunVjzymcEMN7
         ECc5sSNCvUWQZwKSZxpNq9eY4m5ysTt4pXBRzo2F71W3AmaIxgtIxk+FV3uCopCu5Wb9
         sWNjLVzoeorCb1J13D6JkRi02z3wPKYRNhdORZo1ILyvp51WkxPlfzDp5A9rN6uI60FC
         FTrSpMNImHOgehU7ifnD9f0GDY0z3SPL5o2+n9yKHk1AwkkdybuLgaTKvjbLEcXc2JQy
         2X3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id g22si125518qtx.4.2021.05.12.02.18.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R291e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UYdurAx_1620811081;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UYdurAx_1620811081)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 12 May 2021 17:18:02 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jlbec@evilplan.org
Cc: hch@lst.de,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] configfs: Remove redundant initialization of 'len'
Date: Wed, 12 May 2021 17:17:59 +0800
Message-Id: <1620811079-105280-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
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

variable 'len' is being initialized however
this value is never read as 'len' is assigned a new
value in if statement. Remove the redundant assignment.
At the same time, adjust the declarations order of
variables to keep the "upside-down x-mas tree" look of them.

Cleans up clang warning:
fs/configfs/file.c:147:10: warning: Value stored to 'len' during its
initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Fixes: 'commit fa60ce2cb450 ("treewide: remove editor modelines and cruft")'
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/configfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/configfs/file.c b/fs/configfs/file.c
index e26060d..1551b3d 100644
--- a/fs/configfs/file.c
+++ b/fs/configfs/file.c
@@ -141,10 +141,10 @@ static int fill_read_buffer(struct file *file, struct configfs_buffer *buffer)
 configfs_read_bin_file(struct file *file, char __user *buf,
 		       size_t count, loff_t *ppos)
 {
-	struct configfs_fragment *frag = to_frag(file);
 	struct configfs_buffer *buffer = file->private_data;
+	struct configfs_fragment *frag = to_frag(file);
 	ssize_t retval = 0;
-	ssize_t len = min_t(size_t, count, PAGE_SIZE);
+	ssize_t len;
 
 	mutex_lock(&buffer->mutex);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620811079-105280-1-git-send-email-yang.lee%40linux.alibaba.com.

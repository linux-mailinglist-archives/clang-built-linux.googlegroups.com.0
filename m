Return-Path: <clang-built-linux+bncBAABBYMCSWCAMGQE6YYJ7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id C05DB36A68B
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 12:16:02 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id h14-20020ac846ce0000b02901ba21d99130sf11989570qto.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 03:16:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619345761; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWHkXvrwS7qoNGUU7WqZhtnk24JvxqEB86GmDZppwf8fC5zhPQ7kr1phtAOK7qzOg1
         xi3oEXf74RHYwCC8D6Ow/rZvpcuAXfQuGtbKoRxLIf103Qrzg+1kJ8C8h4tQJxYJcydE
         KzfO/xzUAsn7t0vlBkpQ15HN4MTXgDonUHQGPvuax3zf92MTfsPLq/XrxcMXmwG5swFn
         OTLNSJHpq1m4IxPSoyIxOlkkbRi2IJc4gq55NBpmY5bDY4oUWuq7BXIc+amegOz0h2kX
         Aoucc+ZBUJo+UaQmwRixAD90FsD/KVpyadcPRdOCN1sp7sccba2xpPScNyMkxca4aI3S
         kGHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=u8f/PqrTTUxjnBM64x9285rEOloYU2sCDgONKPuEIvw=;
        b=QU85CsmnhtZvD2RY0Zn0L8eNZtEaLWu1PZ275ZxAxe5wZ+KQwvmq3h0fwiqFyKONiK
         AYH4nRzqC6f4ACLrn6r50221gSdg9oXukr05WprP+ykf1UF6P9dxGcLXxer5/NEh5+Uz
         Fuu/O4a1vUUlTMKjKQo9fbK6xdoWX+3CrXykH+85Wk1GfCvE2UhNqZllQSF4DPdMfx9r
         qUDVYdphuaBsS9fSW+RaWge9/G1xS94BCX87ry59zpvaZVnHyuq7e8F7yiy7wigvtPCP
         uh8V99LgTZ3Hn6MvS0Vdkfb91snLyteAIxO7aVBFF0GIzQOmWXiQ5+fd9pu8GNf29eDf
         E3gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u8f/PqrTTUxjnBM64x9285rEOloYU2sCDgONKPuEIvw=;
        b=FmQZxjQ6393kt1h3tZbDBeP9+ycWHFT7sf3gwx+hdc0AvzX1mM0l5n61xQyxrdElbx
         5M04tF6WichKGylkhtEidugnski/7YkrL/EsReHIcaf2Bc4kinAlMuLGPa/frEycSoI8
         8QGK2cQowhwBTNFImRAdv7HXHadAFi8u/MMgfia9NGS7l7GPmtZBHgVYebc25v1CbgJw
         Nv8fO2VyfrzjW5jOAZF6RZywW/XHY/+f/mdM2JwE+HKGS5YGDiPepnOBHimqBNwb/mgl
         +UU5ahfsaRlx5e2hgtpUJeJjWMmfYOjY6M4BS+q7rBBPP19anD3oKjeAJUplUPWKzMdH
         1XYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u8f/PqrTTUxjnBM64x9285rEOloYU2sCDgONKPuEIvw=;
        b=sGpx91+K3ziX1l2Jw88gnM0532SHVjKvMxcQrtJJR7wMiMoSQB4ve98BH8gLqB00h1
         crOq9H0nenq0WMvXoCE4O4WON9bduXvX51qj3WxbfKIovsMXV45R5DwYuydtJqrrYIQS
         u5YX4c1gAVYnt2WIRkgls0ZRj5JrllWMKPyWIOBAF5TdFUCNJllrB1vy3+6dehezwTSg
         eVzYS+skwoA0yTrFUuNSF8yEd3SyNd4MeSAQ+D0KVB1KqZUstRLz1q8q7MOzwL8pfC7x
         djjm1MEoxeeZ9EmyoJlfBow1ZowVbqNqWlWs/PH3y7LBLRNgXoziJvsNVV4oA1O3/iu7
         6Xqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533a4fb8A7QEY8ZRTULlvYS2ff95h1nDEJiGsC1jpv8rY7dZSqUG
	W/Ml9kERU5OJDwYDX1bY8v4=
X-Google-Smtp-Source: ABdhPJzpj9ndLZpjcNFovp//za4TEoHGsxKLFfd8fAfQyRXBKBpOUBIDKMn4nfr0LCRVzfYqxlz2+A==
X-Received: by 2002:ac8:4501:: with SMTP id q1mr11638662qtn.385.1619345761762;
        Sun, 25 Apr 2021 03:16:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8e:: with SMTP id b14ls7765117qkn.0.gmail; Sun, 25
 Apr 2021 03:16:01 -0700 (PDT)
X-Received: by 2002:a37:7e87:: with SMTP id z129mr12994172qkc.243.1619345761391;
        Sun, 25 Apr 2021 03:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619345761; cv=none;
        d=google.com; s=arc-20160816;
        b=IHt1zgFD1jdfcj9dmBVhKmNJxlckdAv+rnYOFFj4c7AVB+DlAO/2HBk3hY2noM92bN
         u5cyai7etE+BRqgT7vOAHNQ3EjQG4+4N7CTzxTslBTTvY2L2uHqDhRvMBqxR9n33uj6G
         UyQumRwzFD1FeTKRZQzDFtzXQOYHsgbJMtYgUJWKpuQoPA5o55TY16hkbRMzXDKL5v9o
         DPMd82Pa0hsUghknphTHQAWGUl+rgdz7yI5Q2UJR5jpHBClYiQWuponPHWXhu6GrXvBC
         5TmVuTRxTYvTMahpgHiBBA4VxUHfm14ztzzRzhp/DDdHmqX2S4CPmdkPbjpU4MvhPEZH
         B38Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=wnVYWKmXs7rxS6Yza3+TgTjcJsmccv4MoiP9mcP4AYo=;
        b=qQ//P1sBF0zvOmFxU7xKQK1fwUVQs6p7xJqMPO3jaDxKJtVf/99+wLuIfbGos5uno9
         5pJhKTq3N2eMGPXNVaho2/Q3SlactO6XTY7KoZHMb1mObmNne8IFJV0Q/o4ehhkuTePC
         VSPQdRN1ztXl8Tr7nH3Im/gW53QHMRS+H1F+XbpMzVv+RGz7XPDXdfAL+jeq6VF/g+EQ
         MluRECY8/RhyeWz/Wdr3DXyFfBBExoYt5PNn+P5BZ4rkUVFcy7sLOBh7Zxm+0mZ1uu9q
         8bsRmYSqNwhXTlQR7FgXAquREgEuiOLTppUwCq7QWGLDae1593ikxh6RrFtYG6YfNbod
         Uijg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id y8si925759qti.5.2021.04.25.03.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Apr 2021 03:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R501e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UWgfJID_1619345757;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UWgfJID_1619345757)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sun, 25 Apr 2021 18:15:58 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: anton@tuxera.com
Cc: nathan@kernel.org,
	ndesaulniers@google.com,
	linux-ntfs-dev@lists.sourceforge.net,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] fs/ntfs: drop unneeded assignment in ntfs_perform_write()
Date: Sun, 25 Apr 2021 18:15:54 +0800
Message-Id: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as
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

It is not required to initialize the local variable idx in
ntfs_perform_write(), the value is never actually read from
it.

make clang-analyzer on x86_64 allyesconfig reports:

fs/ntfs/file.c:1781:15: warning: Although the value stored to 'idx' is
used in the enclosing expression, the value is never actually read from
'idx'

Simplify the code and remove unneeded assignment to make clang-analyzer
happy.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e5aab26..e39a26f 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1774,11 +1774,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
 	last_vcn = -1;
 	do {
 		VCN vcn;
-		pgoff_t idx, start_idx;
+		pgoff_t start_idx;
 		unsigned ofs, do_pages, u;
 		size_t copied;
 
-		start_idx = idx = pos >> PAGE_SHIFT;
+		start_idx = pos >> PAGE_SHIFT;
 		ofs = pos & ~PAGE_MASK;
 		bytes = PAGE_SIZE - ofs;
 		do_pages = 1;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619345754-32875-1-git-send-email-yang.lee%40linux.alibaba.com.

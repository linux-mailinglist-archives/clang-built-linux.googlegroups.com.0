Return-Path: <clang-built-linux+bncBCF5B3ME4IFBBUFP333QKGQEAQDYS3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9D620C39E
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 21:02:41 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id p16sf5412792ljc.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593284560; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9SZtzO5gjRsi6tVa6TFnegs+O7Qyw9sbvcmBTDmCHw4knAYqxdgWqeFm1gRRXSS0O
         mZ3OLhJep8N3xW06Pi7johSW8U0LWnporg/TBiC92w58j5jwLF8D++jWgqDFnNubJcLN
         b6Eq61YXhjCJ6D5YzFxzxGfBzXj+5RZ6Owfzblh7r1fJbWIToTNtgvk+VIOcbF47SGN/
         mTD84PQD5Ux9T+cR5VktMR3BCVeKZGv8W9t9rIrPhBq242L9AF11jXFCbjbtRBy8SOSV
         EfDbuTBzPBmiGWFUJC8iHDirLVOn0oGdzLr/RQmGE93nlvsHssKIVHUuMTmsmfrTMtcY
         PPdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=+0+txdUmmCOiXK75Yo5grGu+GtRzh8ZnJW3Rj3hWsT0=;
        b=bvQrDkD/HJBUCnOIvN6BGvNl6gnq5xO/fkmhJm30SvdCwMsce5+0N94htsLc2YjMgN
         RqcTFttv7HAHlYYF4B0B7rwSGkfuraVMhMGY0M5fBxXzkKVZGWC/QU9ydr9sLdwszh1K
         beEJN5GFLkOQ8GTo0uqppwtATkCLcNRlP8MAcoGrutNvlvOlB6MYG4/dak2NUf63rqQx
         xIuP7QQS71DiA39qiJSEC75dhsovLzXSOIwmq2Xum/W0cWQrADt4JvJw7GXpYzpF9l2k
         gCeKgaxML6zPnqf+1hmoys+FrRFtp7BhVGYzla7RdNqyWfiA6kuZtvRHt6Twltw1c9vo
         h33w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q3sloPs0;
       spf=pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0+txdUmmCOiXK75Yo5grGu+GtRzh8ZnJW3Rj3hWsT0=;
        b=d/aKZQ4CB0dIP4a0AiPgcsEctNfRVMzXHjVNyHjNMhtt+yc/6wzZuUeZf9llDG4Hs4
         6XBXYWIQai1Y7uilpIvmUnZ4sb+/ID+/1x6FBhbbuuvpGXrel7jqy+Uv3KZBBG//TYkE
         oOfmjJacG7fJlcfsmOfCSB15xQ/e3RLIciBPlE5wRIKU7nl7Xrlzv7mO/Tuv2MYPDbd5
         oHYBAuDOsB5x8E6Sqxe/jEOWhp65e46YeNHmbBN0bIIJ4xEJZ8chrqCUULnaq5NSGEbt
         wCs/8TBszz4B/+8R3EfQ7Ip7g7eBmQScabRgEbuBvngRXWvnhtxIwc+F5qO/12jcDRbp
         CofA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+0+txdUmmCOiXK75Yo5grGu+GtRzh8ZnJW3Rj3hWsT0=;
        b=QlceX69Ndr+3vX+m6plyKVSUkSKQLEZ/VGRHW5LSJ4BiyxgkOtjfb5Mdre96Ey48XT
         BR48uEd/JMYfgtP3pNhOHxfAukQEz0O2fJpTwa09WdPfakp+YLrfhCnj63RMHa49GiGm
         KiwD1aj6n67V4PrwCRtCr9hYNJOsrR1Ux6nKQuJuMQi7WZH5/TKJvSkVJasvV7SKe+uP
         arEmOeUCqzrePe8W1LpfbiXgSiLhxdbCx3RGA5cAuhrdfe8IyyxRsZ3Rcz9GKbcreWK5
         TSPZATkfybxhn6f8cY2Vu4Ab7ibMMYstywqiHjSSuA5iXhwDzJmCQG4Joi6uoIytjSY5
         0SWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+0+txdUmmCOiXK75Yo5grGu+GtRzh8ZnJW3Rj3hWsT0=;
        b=Wmj6oGjDJ7ohvGWCK42Pe8QNW5HGnm4cIPyDNhSOZWUMdFf/NrRsQFkIY0U2VpFtly
         DRAifWHoS99FRBmE6efWlmKwxHndYzv87OGhCQxZqb5upv2VCLQqkXAym/B/PuPDePXy
         No70wo+wtu1SanZlqaujv5E0ej1gnYSO73RBBBaTFAd5TdEQS4u+MPGNCl9zZZGhfA5A
         Lt2U4exd5uOflMIVOtpPV9eWIJpRq1yIeX5bTh8CIohrpsUFMQBUqxV2AWbzTUrmviN3
         QSt1oN+YxpUHdEr75RgX4JIKhA1qB4eYqVUceeGdGhhF/LPdKWzTqYA96j7hn/ok+WNP
         ZLOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53218QpKeaCckx/hx5KG8YgUgmX0nEQEBkFtXtZ21ipud2DOjVHk
	NPw8l36qzhKj6gbooEs/ojw=
X-Google-Smtp-Source: ABdhPJyRN/YqpmRn0/1GOvYleQkZeOT0SaT6RLSXhMXaorZ2OtEGCl7Fqf+NdNRswCvxoEQ+HhvH+g==
X-Received: by 2002:ac2:5e6c:: with SMTP id a12mr5207528lfr.35.1593284560618;
        Sat, 27 Jun 2020 12:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5f95:: with SMTP id r21ls1173071lfe.3.gmail; Sat, 27 Jun
 2020 12:02:39 -0700 (PDT)
X-Received: by 2002:ac2:5629:: with SMTP id b9mr5166588lff.208.1593284559926;
        Sat, 27 Jun 2020 12:02:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593284559; cv=none;
        d=google.com; s=arc-20160816;
        b=eHxD0TPH4g1NjP+3kjYesk26VnSSmeUXoZUtni+MGAMjfZE5IYeszSEPy81KhgNvbc
         Ax7KcCrHIzrymDq7fnCTW2FCc2QXsT2h/suH8a/5EmRpeRtecqY6yGRpjpsduGnB0YB7
         PEMX3YxBGzYP2hs5rrSTg0BpE1d/kDwlAoPp9Sife1nPvR9YKBQq7hjAhGK7JXj3bxih
         Zj1ArobXmoyME202FSEwLwvxMZ7IZjK63X+Ju9mSlvS3DKPR84uumoOS8O/8NmExJ6JB
         odbKVBv1Ho2t0SnH5dc+ynzpCJ2neeceHZCWufT5kk+ieuw+jN8xj83Bzg9O5DCpoydq
         A1QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IgGXNQ7fWTy9/DHdEJ1WMr+hd6n/xM/ksZHMNn+z7XQ=;
        b=eQAMKaGJ3cnt4NyeDCoSSReG+fYEUQUxAloGAiCP8ZAaH2x0ihP/TZvLC8Ka1Yb/B+
         qLls7Gz8YEqcFgHjmEAw2BXwFRp+Xdp/p6uXNozy/SQLyiajWzBbjJ2ylGzpc4cMJeRA
         yiDvHqW/s59dhVrpMxK6JJm7FKvx08KGnQ9tqhhaFF+oxhUGOo/cn1rvLAXHSmlqLPq/
         /uX8M5NiRnpRET4yrva31wX8MnIUyE0hIGGx0aEyZZDqW6OpewUu1u1bbc+MMfkDCY+j
         5qV9eaXdOOqOc4FGyN/JMPmiW9yRsMZmCfb8gq0iFbk7zvrZVHP54oog7qmN3DWHzPzq
         pVMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q3sloPs0;
       spf=pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b13si841633lfc.1.2020.06.27.12.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jun 2020 12:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id f7so9591030wrw.1
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 12:02:39 -0700 (PDT)
X-Received: by 2002:a5d:6987:: with SMTP id g7mr9609023wru.79.1593284559063;
        Sat, 27 Jun 2020 12:02:39 -0700 (PDT)
Received: from luca020400-fedora.lan ([2001:b07:5d33:19f:fa9d:3c18:5a22:5026])
        by smtp.googlemail.com with ESMTPSA id h2sm28644664wrw.62.2020.06.27.12.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2020 12:02:38 -0700 (PDT)
From: Luca Stefani <luca.stefani.ge1@gmail.com>
To: 
Cc: clang-built-linux@googlegroups.com,
	Luca Stefani <luca.stefani.ge1@gmail.com>,
	freak07 <michalechner92@googlemail.com>,
	Anton Altaparmakov <anton@tuxera.com>,
	linux-ntfs-dev@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode function type
Date: Sat, 27 Jun 2020 21:02:30 +0200
Message-Id: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: luca.stefani.ge1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q3sloPs0;       spf=pass
 (google.com: domain of luca.stefani.ge1@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
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

If the kernel is built with CFI we hit a __cfi_check_fail
while mounting a partition

Call trace:
__cfi_check_fail+0x1c/0x24
name_to_dev_t+0x0/0x404
iget5_locked+0x594/0x5e8
ntfs_fill_super+0xbfc/0x43ec
mount_bdev+0x30c/0x3cc
ntfs_mount+0x18/0x24
mount_fs+0x1b0/0x380
vfs_kern_mount+0x90/0x398
do_mount+0x5d8/0x1a10
SyS_mount+0x108/0x144
el0_svc_naked+0x34/0x38

Fixing iget5_locked and ilookup5 callers seems enough

Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
Tested-by: freak07 <michalechner92@googlemail.com>
---
 fs/ntfs/dir.c   |  2 +-
 fs/ntfs/inode.c | 23 ++++++++++++-----------
 fs/ntfs/inode.h |  4 +---
 fs/ntfs/mft.c   |  4 ++--
 4 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 3c4811469ae8..e278bfc5ee7f 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
 	na.type = AT_BITMAP;
 	na.name = I30;
 	na.name_len = 4;
-	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
+	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
 	if (bmp_vi) {
  		write_inode_now(bmp_vi, !datasync);
 		iput(bmp_vi);
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index d4359a1df3d5..a5d3bebe7a85 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -30,7 +30,7 @@
 /**
  * ntfs_test_inode - compare two (possibly fake) inodes for equality
  * @vi:		vfs inode which to test
- * @na:		ntfs attribute which is being tested with
+ * @data:		data which is being tested with
  *
  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
  * inode @vi for equality with the ntfs attribute @na.
@@ -43,8 +43,9 @@
  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
  * allowed to sleep.
  */
-int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
+int ntfs_test_inode(struct inode *vi, void *data)
 {
+	ntfs_attr *na = (ntfs_attr *)data;
 	ntfs_inode *ni;
 
 	if (vi->i_ino != na->mft_no)
@@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
 /**
  * ntfs_init_locked_inode - initialize an inode
  * @vi:		vfs inode to initialize
- * @na:		ntfs attribute which to initialize @vi to
+ * @data:		data which to initialize @vi to
  *
  * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
  * order to enable ntfs_test_inode() to do its work.
@@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
  */
-static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
+static int ntfs_init_locked_inode(struct inode *vi, void *data)
 {
+	ntfs_attr *na = (ntfs_attr *)data;
 	ntfs_inode *ni = NTFS_I(vi);
 
 	vi->i_ino = na->mft_no;
@@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
 	return 0;
 }
 
-typedef int (*set_t)(struct inode *, void *);
 static int ntfs_read_locked_inode(struct inode *vi);
 static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
 static int ntfs_read_locked_index_inode(struct inode *base_vi,
@@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
 	na.name = NULL;
 	na.name_len = 0;
 
-	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
@@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
 	na.name = name;
 	na.name_len = name_len;
 
-	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
@@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
 	na.name = name;
 	na.name_len = name_len;
 
-	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
index 98e670fbdd31..363e4e820673 100644
--- a/fs/ntfs/inode.h
+++ b/fs/ntfs/inode.h
@@ -253,9 +253,7 @@ typedef struct {
 	ATTR_TYPE type;
 } ntfs_attr;
 
-typedef int (*test_t)(struct inode *, void *);
-
-extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
+extern int ntfs_test_inode(struct inode *vi, void *data);
 
 extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
 extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index fbb9f1bc623d..0d62cd5bb7f8 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
 		 * dirty code path of the inode dirty code path when writing
 		 * $MFT occurs.
 		 */
-		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
+		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
 	}
 	if (vi) {
 		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
@@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
 		vi = igrab(mft_vi);
 		BUG_ON(vi != mft_vi);
 	} else
-		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
+		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
 				&na);
 	if (!vi) {
 		/*
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200627190230.1191796-1-luca.stefani.ge1%40gmail.com.

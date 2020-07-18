Return-Path: <clang-built-linux+bncBCF5B3ME4IFBBHFYZP4AKGQEPLAUGRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C94224AF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 13:25:17 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id g187sf11675237wme.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 04:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595071516; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ir2U1cItpLNZnPiwWlXanG8Xy2EiYF2wp4ZDZENdpJH7MZhybz1kyOVfrbRxArR82f
         vRLooecvxOrml5GQGE6e9ZP94nKKpBq3ytkbxa+jok2zQ4IfQafKF3+Ytr82rQ/6Upm6
         TcoMiOx50XbpivXDv1BOtOYUXeoDkYmVoBSmY5WkEnXpOK2thYYRYrnTT/BJIpr4G1xl
         QOA0oijRuYKz9GfRt0qRqc2+rQBIFsYkQiNS7fhHVEc8Kly1MqlcKLzsoZOc+6YAMNPT
         IVD4DIbP2KdfZ2T9+fNhtway1hBSW88iKFThik4oPK+nz+VYCilO6lNyS80WS4JoaF8Y
         f5bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=KlEeJ8RTsS2wpF5UA7lxUyhUYhwzZqYZ6WLmcj+ATu8=;
        b=n8ShhK8lbzcVJ90DyublhbYoWHnZJJPk2IUSoNQn6T1G/7wqFN2L6pm9Wj26cnJmdv
         Msp8T/hnAfuUXmydwsYsd3AySSDWJcPPmkf16YeubpOsSJdljWcsPMVHJeQowyNU+Czu
         JkYcp0ec26bjiDtO2XvYmxyzJwj4AppjDSt9kve8bwgY1j+68W1h8yzqUgS8tBeZfyCf
         BFXY6l/twVNOou3YwgP+B0+utH4aYtoloz5y88tjkrbLygKYF8D3054Qkv8wpJYmhtxa
         lI9MdyRQq6IFLRKfbzV6KCmq52SA8X2q4iEcr+v2yy2TwbTQuanSptVhYLrF/3EfXkn4
         lm0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AoBL/jaB";
       spf=pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlEeJ8RTsS2wpF5UA7lxUyhUYhwzZqYZ6WLmcj+ATu8=;
        b=Oqnwg2KRdAUc9sGHoQaLGGF45NxpAClx/648GbQK5ud+X7sra5tQNHzFkBnK4ksopf
         wKv0674Xqb8hR9Rxug7KJd8qFpyEFXwqz0mY23IKCpaTvKjaSnFmzvCTRGKtPi5cLhqp
         qDyMNB1M3ubCOp5DnmXZW0Sb+5/jAp/m76/JQd1ks5UBBM3DNDBKhh7wTZt8QYj/kSib
         A415L7tyAPwggeYZlKh65jm53GhZan1Rdih1GsSdP6zbkqlLVevKDmbadBbhhQWEDWx3
         CcYQ7xymWIuIa/jyFDBTblgUwJTr1rslwh+TKrJs2InjTIs01F46a3ycrZo6H1Uyo2fE
         Ouvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlEeJ8RTsS2wpF5UA7lxUyhUYhwzZqYZ6WLmcj+ATu8=;
        b=lDIUjB0jMJRpk+81Nh5yOl52Y+ppXMMBTCL1sWPQCM/JfBCb3GEEj/PMxeP/D2Bs16
         1ZDvupJ3zUccJ/+3U4t2xBvVhPiAr0Xm5klyejClo0ZLVR/v1akMiI/7PasTZp2hIjiK
         z8KLutPfSI9YXPW3QdCGu5Wz4XoVDeHoTGz2Ywa/VcvTZqp/TEKyoFQ3MzypWPmQUsOa
         YLni7eiwnd6/TZJmO/No7sqeWo+4P3SZH46/9x/VgdTplp1Qrrk9sIJZKiGZXKa8Sj8u
         S40Ak6IY3IOmlaTFE2CPoxjORQQEUfGy+Lp4DMv4jsU4oyWzpJHZVmKfZnSdgpZEN72c
         YSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlEeJ8RTsS2wpF5UA7lxUyhUYhwzZqYZ6WLmcj+ATu8=;
        b=NdQflk4NhR1A4hvHPJEX+Cq6RhjwhGpKJd4GcPQN021GBzPRwIZnculW7WTVXhQfIG
         yqGYBhTBLKj/4UXU0+FYeMBcp8FWiyu1Zl4qFs4HqRt3rRcQnBFApH+1xlJwu0/LRykk
         k9h9s1FtibjECfcjn1pqwWEH2e0T3EwehxwanYJE0p1kz05k7OiDk6JDnlVsOyNlmD4x
         SChLO+iqoRoSUmndOtMegPc2gW7Bd4OxLYO8UJiYQk857h7BY980SXSMNH/6R949fzN2
         eEXdeE9KL2t84udnW6H6B6gFEYnBIm+j/xfGZhgzfAm22jXBp2+rHuRWkCDLXuSvnbC8
         V0XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312hs+RC7xySup+n02R4BIBdwWbutYCfuukX8jFEHXMTiRH8Ddy
	uVnneoSxfZ9tJSfkQojhyhI=
X-Google-Smtp-Source: ABdhPJzdOUwe4h+FR51hkA2biqf8aSxQQs+3uV2jUdNUxsCTBD6h8mO4Zd9/EU3QvME6r55vyP/7aA==
X-Received: by 2002:adf:ef89:: with SMTP id d9mr15294641wro.124.1595071516718;
        Sat, 18 Jul 2020 04:25:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls5021453wme.3.gmail; Sat, 18
 Jul 2020 04:25:16 -0700 (PDT)
X-Received: by 2002:a05:600c:313:: with SMTP id q19mr13970005wmd.9.1595071516039;
        Sat, 18 Jul 2020 04:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595071516; cv=none;
        d=google.com; s=arc-20160816;
        b=mo4ff88nA7Zg6Z57AL+kN8DtDrCKQyl95G0B8rWQoEXHeBjvDe8fmizxD0wyqoZ9lz
         Q7gR1ti5fxUHY0hl4XMoGCQbbhbv2uhiCujenLcSrUSLMFEslgIceXKeb6E2pyHoCr+6
         YEwq5dQMc6qlOgGjS7k6Sp1sXGeMMG7gHLJ8ya/89HTZ1hzrocGaYjUhU0HgIAwnE8rH
         jbHP4nl1rMRlOMMa3AFp3ztstMryAl64xEKZCx4jsHwEDEQ1PKRhSjzsDzVdUBtfoRdF
         fLBfXMOv+qoG4T9Hj1DYeXfA6Maf+YaJrKzNw34o2knN+MjXBnrHHAh7rKD5dDoam9ZA
         ccmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gtD9uKJBbPuci8eUnuLDa1jmT1WN4pKr1PsXFys2SCU=;
        b=K2TW8mdlSAcI7xVmCkauadTaPyasF4AmnlYp5IqlcDqMULtfm7J6XMHStqyZAA+R2K
         3jhMbu+0OZmSrlIYVp7UvDLv0vTRcTICp7kqI44oIouMvY3X2LawSaKbiHM2pRE1+olv
         cmunxKfRtbGMmB5HmV82S0DlOwZES1/iy6HFFgdRYk4UYcheXnICFpGR7NvIz4pXs34R
         Jws6zwcVBOrl+N2NsYCv2lw+0NFVd8u2r+sbvXYzPbWtrUh4Atkx5tTmjZk4OvrOZJnP
         T01Q+YQHncqfhDOUzQSbUx/bEVwACaSuGkXgr53IwKevokE9btl97bdjXdS5gCVRroE2
         tE8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AoBL/jaB";
       spf=pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g14si387300wmh.3.2020.07.18.04.25.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2020 04:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of luca.stefani.ge1@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id o11so13598035wrv.9
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 04:25:16 -0700 (PDT)
X-Received: by 2002:a5d:4d8b:: with SMTP id b11mr14422337wru.341.1595071515487;
        Sat, 18 Jul 2020 04:25:15 -0700 (PDT)
Received: from luca020400-arch.lan ([2001:b07:5d33:19f:d537:6bdb:9442:dd28])
        by smtp.googlemail.com with ESMTPSA id a22sm18044950wmb.4.2020.07.18.04.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 04:25:14 -0700 (PDT)
From: Luca Stefani <luca.stefani.ge1@gmail.com>
To: 
Cc: akpm@linux-foundation.org,
	Luca Stefani <luca.stefani.ge1@gmail.com>,
	freak07 <michalechner92@googlemail.com>,
	Anton Altaparmakov <anton@tuxera.com>,
	linux-ntfs-dev@lists.sourceforge.net,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode function type
Date: Sat, 18 Jul 2020 13:25:13 +0200
Message-Id: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
X-Original-Sender: luca.stefani.ge1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="AoBL/jaB";       spf=pass
 (google.com: domain of luca.stefani.ge1@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=luca.stefani.ge1@gmail.com;
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

Clang's Control Flow Integrity (CFI) is a security mechanism that can
help prevent JOP chains, deployed extensively in downstream kernels
used in Android.

It's deployment is hindered by mismatches in function signatures.  For
this case, we make callbacks match their intended function signature,
and cast parameters within them rather than casting the callback when
passed as a parameter.

When running `mount -t ntfs ...` we observe the following trace:

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

Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
Tested-by: freak07 <michalechner92@googlemail.com>
Acked-by: Anton Altaparmakov <anton@tuxera.com>
---
 fs/ntfs/dir.c   |  2 +-
 fs/ntfs/inode.c | 27 ++++++++++++++-------------
 fs/ntfs/inode.h |  4 +---
 fs/ntfs/mft.c   |  4 ++--
 4 files changed, 18 insertions(+), 19 deletions(-)

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
index d4359a1df3d5..9bb9f0952b18 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -30,10 +30,10 @@
 /**
  * ntfs_test_inode - compare two (possibly fake) inodes for equality
  * @vi:		vfs inode which to test
- * @na:		ntfs attribute which is being tested with
+ * @data:	data which is being tested with
  *
  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
- * inode @vi for equality with the ntfs attribute @na.
+ * inode @vi for equality with the ntfs attribute @data.
  *
  * If searching for the normal file/directory inode, set @na->type to AT_UNUSED.
  * @na->name and @na->name_len are then ignored.
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
@@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
 /**
  * ntfs_init_locked_inode - initialize an inode
  * @vi:		vfs inode to initialize
- * @na:		ntfs attribute which to initialize @vi to
+ * @data:	data which to initialize @vi to
  *
- * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
+ * Initialize the vfs inode @vi with the values from the ntfs attribute @data in
  * order to enable ntfs_test_inode() to do its work.
  *
  * If initializing the normal file/directory inode, set @na->type to AT_UNUSED.
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
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200718112513.533800-1-luca.stefani.ge1%40gmail.com.

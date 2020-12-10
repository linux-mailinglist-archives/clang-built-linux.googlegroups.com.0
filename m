Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBPETY37AKGQEGEJNVVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id C17B42D50E6
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 03:36:45 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id e4sf2497042pfc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 18:36:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607567804; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIuHqetJez8nYGYz7Puwx63oqP6ju58dWq3J5dA0iERujSvIDDuQ0gPUJHf4FTPNRS
         pLLdZqN3YcXgR3OGk7VFwyklYRvZf7DOE9vmMSNz8Rl/pocCTw2RUnalUpYUTdkrgwOi
         wTgCsOO/Oxp9prms42kpp39u8+Tu2XAagnJILvfnOWTaIdQ+xaZ7nu5+EwSDLyO5FU+q
         GsFFptDXPzQe1lmX4Vqy0TzlH6qEQ3F4ppIHJxsz4xLpUHBgR9i/oyaCAobPhq49KrR0
         de/AZweIm2dtAIIxwaNPtG+vvuVAxTwlXO1AO5OQGj9m33gz9abz/io2cEhYxH1vVavP
         qYBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RygbdLnbcihlnsXgyGLdPFwFlL2B7DjnLsRMKjJj3KU=;
        b=dDM++MPCBlmIF6NJBlIgVE743ekxzxE/ueMXb/v3/FMArjgW0P3AVJubpW118Ea4ge
         XeyuoNxRCij78NPYP2LLStc6CtfzLDCMQPRWBiSe/ha4y+TRc+kqAwefnKU9uGM7WOyk
         pybCAxHMOhf07Hhuo8ye4xFGRDuILB5e99Fp8KC6ZJ2Yo6NtqmIQ4PdoyT9amSqiqLHr
         O7L9+2ktkLd8wKk+lLKjN4yVq6QfqlNtUx5Pg+yKqH7GuSM3p7XBnpDkt1wFKaE4tQgu
         aQgLRfSP9vriffJIEuhwz+8YxuP4omL/GoNcb/YF0tBgorUU2e0BcJkFaS4Zn00ZPX1Z
         lzZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RygbdLnbcihlnsXgyGLdPFwFlL2B7DjnLsRMKjJj3KU=;
        b=Utb7+UUQN8OqWGRVNXosc/0LvQcHoW082OdV6AhrLcTsrHPmvaeEOuCQhfmYgVZodL
         +ypBLCz12uOHdJLo5nVhthQYyAu4uxkPvlb6mBIGBQyWY1Z2/5KAr9UdEhWMbBB5Lq2h
         xVBwDPjcxPZRlX6lcrhRn2gfn3rGqOo51MwXbL1uGSvB6IoGkBfsyXGzaQhsNhXurvI5
         vaS5fOg/EXdzPToH/mBdPbucLOleiYDipPN+tGwqlnzWisy+EtdnfSzHIZIVCqGw2jmR
         Hk2oEbaSTqLgjselFJvnqOkskuRxEyjdp1syfRsu3WcoWeWx5+aCXylCQBg9RU0lIM8T
         djjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RygbdLnbcihlnsXgyGLdPFwFlL2B7DjnLsRMKjJj3KU=;
        b=ETYt7nY08i7xg4gf2e4xXdCsqan785ejToJfXHt0OBTqaPnlt2IDIn3FCOAnmabSy1
         11XYp6LvqdCLk4Tp/Yz5jfAss9mYU1gmUmCItxemPET0Ld4Gfvj/XwIGWlnqofb9HkRk
         f7VgWUgoU/QtOqWU0n/yQ2IQ273UTF3LBP9GSgE3cULc/dC8BWMpLlGrMh7ZHXsT5ca1
         mTCq0g7/KP2f1WUcd7UQLFwYWwLSi/kcaDm1sEaEkzgH83Kw/SqA+ktvQAlZrpLSkG9X
         trMCIc6g0D05y38XRIvr3O2+RX/rLvf7O6HiMZtXXvjiCAqVOnP4VogBeN4N8JVSXdm6
         iN0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531g3r4kkDDAqcDC2TQmQKlpVMvKWPMAifyyr90hJ2MbABJzaKDo
	xvqn7ROOTO5kxFUjZI08XMQ=
X-Google-Smtp-Source: ABdhPJyoQJjnmlp7Ly5ubgLCJoFaBG0K+tGFHoj/gcHdvXi88arRQ5etwoMaPvsusdLbH28MQH5wlQ==
X-Received: by 2002:aa7:9698:0:b029:19d:d63f:d2d2 with SMTP id f24-20020aa796980000b029019dd63fd2d2mr4904410pfk.4.1607567804260;
        Wed, 09 Dec 2020 18:36:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls1741307plr.9.gmail; Wed, 09
 Dec 2020 18:36:43 -0800 (PST)
X-Received: by 2002:a17:90a:bd13:: with SMTP id y19mr580439pjr.24.1607567803654;
        Wed, 09 Dec 2020 18:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607567803; cv=none;
        d=google.com; s=arc-20160816;
        b=pVcxvmlxTRFpVaGr/ZeasWkb7o85SML49FadIX2ELGIG1w72kZdlfNcli+6SGaYNox
         vDHNvcv7xp+PNlpiVh3e426NeKxcp+mG2lPM5VqX+PQwYU3QvxoEbm4YgcjOrIxlGR/I
         zAP/Hfib4NAl27CuMRAuvG3/QJNjI1XGB9SRRGnKh83jPdbFi9YmL97PT2hyt6/L4uRf
         ES7cSvIOXsQjHNckncJ3kI3HFZLUXAh7aaHvpgFhutUffJZD5dhkPPvzxJhfx6J45/E1
         n8Lo/YYJLK6y+H/sOdsJ/uBEO2wsRJPethDsV6LFvrJw2sZCUa9sxlzuROcf/cVHCI67
         5ghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1cI+J5pWp6r0IZr6IzMjWSPirRoX3iy6oKL2Fu7iQFY=;
        b=vXXEfnNULOH1T9yyqGWtVaAVkkruyVkSSrXKYaG0sQvDmbeqk24d43K7/eMtz1Yi5l
         sY5uz77ReNFWcDJiVOfOimmBDTOFsqfh0sAu4oniBjlTs43icTPr3Rjfp2EMqQNGLppk
         tFoWSlRw5Qb069vCcUAMMD29Cg7nkBJKdPtFfsb0+5a60PbXNK5DR5RvXpCqeqD/10+s
         Yo0x1SGnEzPge14ajz2Pnrszy1Eoce0n4i54VNslVsH4hEUVsm7dUKN9H0M5itpZsZ1D
         n63QBpII0E9E/W7BP1FXY80bYpXFcA5eOzrWFriCBw4ZpCBeSZAYVIvSyYQunqQX2twn
         owHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id e6si322615pgf.3.2020.12.09.18.36.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 18:36:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 0BA2acN3009793
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 9 Dec 2020 21:36:39 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id A77F1420136; Wed,  9 Dec 2020 21:36:38 -0500 (EST)
Date: Wed, 9 Dec 2020 21:36:38 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
        linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
        natechancellor@gmail.com, ndesaulniers@google.com,
        syzkaller-bugs@googlegroups.com
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
Message-ID: <20201210023638.GP52960@mit.edu>
References: <00000000000048a9de05b603126a@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <00000000000048a9de05b603126a@google.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Tue, Dec 08, 2020 at 11:33:11PM -0800, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    15ac8fdb Add linux-next specific files for 20201207
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=1125c923500000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=3696b8138207d24d
> dashboard link: https://syzkaller.appspot.com/bug?extid=345b75652b1d24227443
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151bf86b500000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=139212cb500000

#syz test git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git e360ba58d067a30a4e3e7d55ebdd919885a058d6

From 3d3bc303a8a8f7123cf486f49fa9060116fa1465 Mon Sep 17 00:00:00 2001
From: Theodore Ts'o <tytso@mit.edu>
Date: Wed, 9 Dec 2020 15:59:11 -0500
Subject: [PATCH] ext4: check for invalid block size early when mounting a file
 system

Check for valid block size directly by validating s_log_block_size; we
were doing this in two places.  First, by calculating blocksize via
BLOCK_SIZE << s_log_block_size, and then checking that the blocksize
was valid.  And then secondly, by checking s_log_block_size directly.

The first check is not reliable, and can trigger an UBSAN warning if
s_log_block_size on a maliciously corrupted superblock is greater than
22.  This is harmless, since the second test will correctly reject the
maliciously fuzzed file system, but to make syzbot shut up, and
because the two checks are duplicative in any case, delete the
blocksize check, and move the s_log_block_size earlier in
ext4_fill_super().

Signed-off-by: Theodore Ts'o <tytso@mit.edu>
Reported-by: syzbot+345b75652b1d24227443@syzkaller.appspotmail.com
---
 fs/ext4/super.c | 40 ++++++++++++++++------------------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/fs/ext4/super.c b/fs/ext4/super.c
index f86220a8df50..4a16bbf0432c 100644
--- a/fs/ext4/super.c
+++ b/fs/ext4/super.c
@@ -4202,18 +4202,25 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
 	 */
 	sbi->s_li_wait_mult = EXT4_DEF_LI_WAIT_MULT;
 
-	blocksize = BLOCK_SIZE << le32_to_cpu(es->s_log_block_size);
-
-	if (blocksize == PAGE_SIZE)
-		set_opt(sb, DIOREAD_NOLOCK);
-
-	if (blocksize < EXT4_MIN_BLOCK_SIZE ||
-	    blocksize > EXT4_MAX_BLOCK_SIZE) {
+	if (le32_to_cpu(es->s_log_block_size) >
+	    (EXT4_MAX_BLOCK_LOG_SIZE - EXT4_MIN_BLOCK_LOG_SIZE)) {
 		ext4_msg(sb, KERN_ERR,
-		       "Unsupported filesystem blocksize %d (%d log_block_size)",
-			 blocksize, le32_to_cpu(es->s_log_block_size));
+			 "Invalid log block size: %u",
+			 le32_to_cpu(es->s_log_block_size));
 		goto failed_mount;
 	}
+	if (le32_to_cpu(es->s_log_cluster_size) >
+	    (EXT4_MAX_CLUSTER_LOG_SIZE - EXT4_MIN_BLOCK_LOG_SIZE)) {
+		ext4_msg(sb, KERN_ERR,
+			 "Invalid log cluster size: %u",
+			 le32_to_cpu(es->s_log_cluster_size));
+		goto failed_mount;
+	}
+
+	blocksize = EXT4_MIN_BLOCK_SIZE << le32_to_cpu(es->s_log_block_size);
+
+	if (blocksize == PAGE_SIZE)
+		set_opt(sb, DIOREAD_NOLOCK);
 
 	if (le32_to_cpu(es->s_rev_level) == EXT4_GOOD_OLD_REV) {
 		sbi->s_inode_size = EXT4_GOOD_OLD_INODE_SIZE;
@@ -4432,21 +4439,6 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
 	if (!ext4_feature_set_ok(sb, (sb_rdonly(sb))))
 		goto failed_mount;
 
-	if (le32_to_cpu(es->s_log_block_size) >
-	    (EXT4_MAX_BLOCK_LOG_SIZE - EXT4_MIN_BLOCK_LOG_SIZE)) {
-		ext4_msg(sb, KERN_ERR,
-			 "Invalid log block size: %u",
-			 le32_to_cpu(es->s_log_block_size));
-		goto failed_mount;
-	}
-	if (le32_to_cpu(es->s_log_cluster_size) >
-	    (EXT4_MAX_CLUSTER_LOG_SIZE - EXT4_MIN_BLOCK_LOG_SIZE)) {
-		ext4_msg(sb, KERN_ERR,
-			 "Invalid log cluster size: %u",
-			 le32_to_cpu(es->s_log_cluster_size));
-		goto failed_mount;
-	}
-
 	if (le16_to_cpu(sbi->s_es->s_reserved_gdt_blocks) > (blocksize / 4)) {
 		ext4_msg(sb, KERN_ERR,
 			 "Number of reserved GDT blocks insanely large: %d",
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201210023638.GP52960%40mit.edu.

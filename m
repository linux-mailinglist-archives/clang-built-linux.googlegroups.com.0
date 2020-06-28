Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV4P4D3QKGQEUFVTYTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F34ED20C583
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 05:00:40 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id k126sf4000496vsk.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 20:00:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593313240; cv=pass;
        d=google.com; s=arc-20160816;
        b=EdlUmpUs095E8HmEm0VwR6oaA0ZxA1w9mXP/y23wd6HJsyU3FE3YNdaNU2EciE9aeM
         E889e/MwxdBr7LB5m9LorRS7zK3lkSUzwT4UaYeyWKJbxsNGNdgdnunUQck/1H9s/wR3
         m9ZxANe0JjaFxRJj5fGW5qWQIWmBhLG9WATYWcZvNO74O+qyusYG/kKWwWv3IjfNUQdY
         2eetfnk5PSO4X+qGHQPTJIWYil3WEreIJm9ue9nNKAiGtnv9PfYriPdLBD/LbHL5+Wqr
         00zC8EaCjCR6g6xzssIpuVMvKz42L7QRHPDxo/LJ9HA+TkJlA7QDsN+mytn1ScZ6ZQHs
         36Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=TeCxpqwgxoIyYOP0IVBcGkr4eJwgRGDnPyOD2IGU3ww=;
        b=sMBU6pLZl4Et8Zv+vyt4LXOx96u/wXiuy/AAnesw+wybKwktZNBEPn6NDCEbjW971r
         0pQEgzMctVdSXyALVwdTlVicK3rKR0aXciTElhUBcAzb5OcnbjTDF6VIMlTAXoj9sVhT
         txlPqu0yervIk11j9+By2RmgX0xKEfjqfkvSOM1+py2hjp1sA7uoq1iv8ETDrUlmy42G
         4OKW/WL14yOkVN4xs7a8NFyvb3S6815CEfhcM4hd8anBm5ZFw92vDUktiKcZUR0jL1q3
         jk9l6C23WzrkpCGMNk9xpEyixTiAK+sowcxAnlwxSPqCil9/Yst6R3bJnNp0LhevxlrS
         ZFOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEr0IljX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TeCxpqwgxoIyYOP0IVBcGkr4eJwgRGDnPyOD2IGU3ww=;
        b=M4I1/Y6bJKHbsqFZ4b8SzFBfGHAjc/Tl8we/pvTFJr4k6cR8ddWyo4wKcn2IThiQUl
         HCoRvVGtXvAP4B0UDaIPDp2gWslbUoJvv4SkFL/J3tHqJ0MPVpRhp0MALLgjUxR0xez3
         LNzwIyCVn4Do0c9edTbMTPy5wxIyDyL6jZBERKt9oUMmdpkYp8wye83dxyIxwI8e1BSa
         HvXTpsfT6oYWi1+ESJ7evIJvLEhwelzOnTzBW0Q6PD0BfPAcqG0qSgUeWLoxKeFijngW
         fJ0xvYc1dm9T4HOm8AIHVGXsZTL7oSaIh+Z+obbkLGIVH45qyWpT1GGI5kmxO2OzBjWh
         6Ckw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TeCxpqwgxoIyYOP0IVBcGkr4eJwgRGDnPyOD2IGU3ww=;
        b=lETGROwiDbmG3ptF3eCKjjj7r2ZCJVappo5+y0vd+rBMDyQoKNuR2nU3m9XbdggvrB
         8u0ddbSLnK9YXXxUVH1wtSoNtYJRL5RxZSQ+Ayy9NclF/Toy2qlY36MFVjhst0RerSjH
         wmlVOoejGIJtFpl7w2xqenWfbKrAR/pxShU+c9wx6PXqC+ti3Ax0yV/iK5wWBY26nARN
         WVL9/4cVl0YCjG/e7uF5OIquveYLttqBJga1DjAxwgtkCY4udAIaLAjxlrF6h7Rqrf/X
         ucQe0EozRV6jHfq8hAg/25Wjn5b3dAa1L4me4ODccGSzdYDhB4zUK8YO96bITyTApK/P
         EMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TeCxpqwgxoIyYOP0IVBcGkr4eJwgRGDnPyOD2IGU3ww=;
        b=unrJKsyWSSBJFvUqgfdXB8qjridgCNJ/XpQu61Sto1Ja5CmM+Slo0BDiADR/wqHuY2
         igUOZQeUYp57uklyQyu4mM4yJiA5B04wEk0T4ZjCxpK13Ou9BDSfTYldHV5uIvraxKnM
         7JpPVMlkx1rZ8jcFqr/UwEOxS10OmnzveHH1NHkILDNiZlkkfKRCwIPJrCZgZcWCJvvJ
         fvujDdYf7aCi1WJKb9Cjnf9qQT8zgkTgxIUC7qPNjMTldmUY1ZcU2q6tQD19B6pbYNkJ
         8KjexrThEB651EG34YCDYb+2/93iDLtGcV4Ikk34bBoQNKfB4qboUYrYXUCl3XTgO9r6
         M72A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KuvML/MyTle7b0uWQ8UTEmfMYU8rzOQr27lF9oTpSgT/RZ70Q
	XdlfAbAeS68l7UJTxVC+bXI=
X-Google-Smtp-Source: ABdhPJzMM8TwQiSE+PPf5Ssnv2XWPuUh3jljXCb83RjSCBqoAlWzt+PiiM0mQVpSwmKxmPQDr4TBJA==
X-Received: by 2002:a1f:ac51:: with SMTP id v78mr6247515vke.78.1593313239809;
        Sat, 27 Jun 2020 20:00:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9c01:: with SMTP id f1ls623967vke.9.gmail; Sat, 27 Jun
 2020 20:00:39 -0700 (PDT)
X-Received: by 2002:a1f:3108:: with SMTP id x8mr6715552vkx.54.1593313239510;
        Sat, 27 Jun 2020 20:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593313239; cv=none;
        d=google.com; s=arc-20160816;
        b=P5XXVoPapaeBpLFceMSjLfvHfAojjPx6pABf3V/AfqTEI0bwMy0x4vEd+XnMv+uAqq
         AmND/28E8LcqpEsOKd7s0K1HNwqKHYzlkejAnBjjdnGWQ1bacYipb9ofUodKglErnQ5G
         OwMQlPJxd9pvRJ31Ao7LznAktSKXp04aT3NWrVhjwbDMd0r0dHUZ9xX7MZR5e/tDPutZ
         o2txfzc1vLagLDWz9097QPaOABv0aFy8jJ4x6LHgVmLPp3fHg7sUuNklriIHAGOiTcEc
         11sU8wanG12U6z5EZpNZp1+noa8GLPxwAtd0GRXyXQGsqCN27/pYVcStPF25DG0lyaC/
         kVag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GJyVY2pi0ndePjxf9rQC8thJc78Irh06qbg6ML5wkWY=;
        b=eUTOwF6OLzDJ6pHuFCQuISZOpaefl02q/viawbQplTb98Mmar1EYk7I/I6xZggTWXo
         eQPGrMvcyfcEUL9UIkhjSmxPKCai6UhGXiCnweOpiMR6c3PtlW1eQelnCZ7F2JU3/EmI
         5IpHApAbEy91UD1RpqzFUfWSFUEzYW+r/iIFKUDLCfukdKVGQiQgJw661/Qvph6YBwo4
         ZGqj65DujCvfwu3q5vbN7jEi0yxU9/sAJghFQM7rCuOSUaL0gdMNZO4Z4LIU6ZZEw6ln
         r9tA3x8W/o9RlMH+nYXfZB5pJ+inKUo246ztRag13xGSj/gZBANOWQwdryicNkpJNV6+
         ZRDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pEr0IljX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q20si395045uas.1.2020.06.27.20.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jun 2020 20:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id g67so5865486pgc.8
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 20:00:39 -0700 (PDT)
X-Received: by 2002:a62:834c:: with SMTP id h73mr9496980pfe.221.1593313238348;
        Sat, 27 Jun 2020 20:00:38 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id a12sm15040842pjw.35.2020.06.27.20.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2020 20:00:37 -0700 (PDT)
Date: Sat, 27 Jun 2020 20:00:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Cc: clang-built-linux@googlegroups.com,
	freak07 <michalechner92@googlemail.com>,
	Anton Altaparmakov <anton@tuxera.com>,
	linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Message-ID: <20200628030036.GA782635@ubuntu-s3-xlarge-x86>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pEr0IljX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Luca,

On Sat, Jun 27, 2020 at 09:02:30PM +0200, Luca Stefani wrote:
> If the kernel is built with CFI we hit a __cfi_check_fail
> while mounting a partition
> 
> Call trace:
> __cfi_check_fail+0x1c/0x24
> name_to_dev_t+0x0/0x404
> iget5_locked+0x594/0x5e8
> ntfs_fill_super+0xbfc/0x43ec
> mount_bdev+0x30c/0x3cc
> ntfs_mount+0x18/0x24
> mount_fs+0x1b0/0x380
> vfs_kern_mount+0x90/0x398
> do_mount+0x5d8/0x1a10
> SyS_mount+0x108/0x144
> el0_svc_naked+0x34/0x38
> 
> Fixing iget5_locked and ilookup5 callers seems enough
> 
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 23 ++++++++++++-----------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 16 insertions(+), 17 deletions(-)
> 
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index 3c4811469ae8..e278bfc5ee7f 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
>  	na.type = AT_BITMAP;
>  	na.name = I30;
>  	na.name_len = 4;
> -	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
>  	if (bmp_vi) {
>   		write_inode_now(bmp_vi, !datasync);
>  		iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..a5d3bebe7a85 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,7 +30,7 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:		vfs inode which to test
> - * @na:		ntfs attribute which is being tested with
> + * @data:		data which is being tested with

I know you didn't write this comment but I don't think the ending "with"
is necessary.

>   *
>   * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
>   * inode @vi for equality with the ntfs attribute @na.

                                                     ^ @data

and looks like there is a comment below that needs to be updated too.

> @@ -43,8 +43,9 @@
>   * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>   * allowed to sleep.
>   */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
>  {
> +	ntfs_attr *na = (ntfs_attr *)data;

This cast is technically unnecessary but it doesn't hurt anything
either. Different maintainers prefer different styles.

>  	ntfs_inode *ni;
>  
>  	if (vi->i_ino != na->mft_no)
> @@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:		vfs inode to initialize
> - * @na:		ntfs attribute which to initialize @vi to
> + * @data:		data which to initialize @vi to

Same deal as above; know you didn't write the comment but this is
currently clunky. Might be better as either

"data to initialize @vi" or "data to initialize @vi with"

>   *
>   * Initialize the vfs inode @vi with the values from the ntfs attribute @na in

                                                                           ^ @data

and same deal as above, full comment needs updating with new data
member.

>   * order to enable ntfs_test_inode() to do its work.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>   * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>   * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>   */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>  {
> +	ntfs_attr *na = (ntfs_attr *)data;
>  	ntfs_inode *ni = NTFS_I(vi);
>  
>  	vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>  	return 0;
>  }
>  
> -typedef int (*set_t)(struct inode *, void *);
>  static int ntfs_read_locked_inode(struct inode *vi);
>  static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>  static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>  	na.name = NULL;
>  	na.name_len = 0;
>  
> -	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>  	na.name = name;
>  	na.name_len = name_len;
>  
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>  	na.name = name;
>  	na.name_len = name_len;
>  
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
>  	ATTR_TYPE type;
>  } ntfs_attr;
>  
> -typedef int (*test_t)(struct inode *, void *);
> -
> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
> +extern int ntfs_test_inode(struct inode *vi, void *data);
>  
>  extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
>  extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index fbb9f1bc623d..0d62cd5bb7f8 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>  		 * dirty code path of the inode dirty code path when writing
>  		 * $MFT occurs.
>  		 */
> -		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>  	}
>  	if (vi) {
>  		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>  		vi = igrab(mft_vi);
>  		BUG_ON(vi != mft_vi);
>  	} else
> -		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>  				&na);
>  	if (!vi) {
>  		/*
> -- 
> 2.26.2
> 

Other than those minor nits,

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200628030036.GA782635%40ubuntu-s3-xlarge-x86.

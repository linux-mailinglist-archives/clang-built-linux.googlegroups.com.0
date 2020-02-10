Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSOUQ7ZAKGQEJR57LAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B7215863D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 00:42:02 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id d16sf6090132otf.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 15:42:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581378121; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+06vUWxOLZq+afAG+04TGUi2N6shrVfa3P2vFsMN1gf8hStfoSDAtJZyUqKAk/1B3
         cMKE7ZtpoJQT9urJwFhwiHw24/82JZli2YJwFgHyIuR81p8BCQ2yilqKf16xAKDDTX3n
         SulloSoz8YPQ4JZoiF4eUGO3U57a56Z+71X43KEp0pNaix0vc/5EpzACoi09jRqUcqwG
         WsGnJZy2HsGOTcI0/jL1W3ePE/VVBpULf9sWDBVPot/dbSg90SRXhfZwUlBS7hbPHoM/
         rf5jQaVmuoLXymn7tPWYiypxfl8+dAIvCU2ESevJpWFt/oSUDWiz+dMxAKuUFF+kVeel
         uHRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=tW70FUDlO5D2TeTtsdPbxUa570JYX67iD71XJve2Nz0=;
        b=N41Ni84ZyrgAluHwYRhUnOXfAQGoAU5fpopLcrI1Ji6DmJ3GoUpbhJj55FzCOtJ+zn
         MK0pNGIiGf31ebU4Pt9U6RQkNiKPybP4AcMyo/E1bhkNj/zyntKQzBLTcaOzZh/egz0S
         249Z0/TyApXWnsZLxGYL8RR3lCmBGDjdha947Ov5LQ5fbp56tAurqsrEGQTND0LoL0kF
         nAIdMUlXXHmCQnMAZ+RJ0wAFtvLokEcSfPIgjkJ1XXg8ydwq5GrEVhdj9DGy/lAho820
         x0Wn7cMqP/vIsBDVZW7sUFk8UdBORvb3wl3mCqrIjodan/wSOiYoXY5bMyPipmwW03r8
         w7hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QF6moVxE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tW70FUDlO5D2TeTtsdPbxUa570JYX67iD71XJve2Nz0=;
        b=bKCqbDkkjeZ/kSS2tVg6wtHImP8OgrSJhCuUd1D0aumfYx/QV4L+epRkYaQi3RGQbM
         u6HzvfUsBeOC5cLr/4EmscRg5lnwHRZFHdeFwzqJE7MTwtrmPfzuPMgTL6R4LQVKvrR/
         LS8+GB4unlLnItUSL0rcWpgFVzMeCVsHXR/OGUHf5tvJkKFda+wN6iLmpV2Xrm8eFyw1
         mvTFc4kbS++F4Is0rUVpXEicYbUzSXoNSWXgXcvy83+Xxc2/PQJnIw4a6waD1KyQad3S
         +134iAaOIWZ5qApmQlWKp5Zpf/NlcK+Mt6KJULPE1+5BVUvhJHooBGxmED8AiuBkfM5C
         zi9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tW70FUDlO5D2TeTtsdPbxUa570JYX67iD71XJve2Nz0=;
        b=fHu1GYor/xCyccG2W4Dia82Be9L/rwZb4VHW0CF5KUAOvYtjqotxHXf0GZes+kTimg
         1D1MV5GafNF2SuLQgzGalJNu4xD6UKywP1QSU+2v6tn9fuMMpGYZobvH6pQYY8QAfc9d
         APTkNgqFCV6nGJvp5JQyBy/ATcJBhIXEJUyZlgtILAkSzSy6YkE5VuzxLfzwuRWQ4jSw
         2XX0HzDCAIL1VNwacaFgKO7RVegvxf1wGjh1Wv61J++PCMTDh/d1vZvvOkIO9aDjxrCE
         Vpaw/kF+lNN90ySFS876iRmMHaug2LZNuFujQCoJOaO+GOrcUIORCTHiI16svxkNXPSK
         wa3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tW70FUDlO5D2TeTtsdPbxUa570JYX67iD71XJve2Nz0=;
        b=nYBwGVdLqLk3sTMPqfXWEgnJQ//Wst5oZMunYEojhdIUiJ9+mZAqkwh4E1hf1LU5Kn
         XkNxr7y0E5R+S3ph1FlhZX0g0CAVpvX969emU8yo5rp5MFSQ93QymL+yDKQ4XXPmk6rP
         ZEr/1pk5JHyQuICRcqQ2sOH2Mn/RspGE7Hvru8Mn+BOyiuMODR9TrFhKjn/fWDIGT5AQ
         l7wBGmsJ5acdSVdP2w8+PKA+9DseSu3m0pENXJ/JGLFGWzkI57L2M/Uxi+goxyOTLnwD
         cTRTkdbtpGhuVA2C2lhmwluzgCvOeE4AH74y/tpDQw7Z0ghAa7SgTIqGdPGc440r3Vwc
         viPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXs0eA3RdoRx1tb+k2oOhyte2us5JJ/7ivYDaj0OIYWmRlOHvUZ
	aJendZf5QzbBqmp3cVbzPG8=
X-Google-Smtp-Source: APXvYqxlgUwT4dWhdJpdp+ujW4solIvIAvxO89n6uj6OB+YvBYkze9t4Nsy7f2LnOL0V3cKmSWrKXw==
X-Received: by 2002:a54:4f16:: with SMTP id e22mr1155613oiy.170.1581378121545;
        Mon, 10 Feb 2020 15:42:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls2803406otm.2.gmail; Mon, 10 Feb
 2020 15:42:01 -0800 (PST)
X-Received: by 2002:a9d:7b50:: with SMTP id f16mr3125675oto.18.1581378121084;
        Mon, 10 Feb 2020 15:42:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581378121; cv=none;
        d=google.com; s=arc-20160816;
        b=GbEY265Wp6lIYjTa2vVVSwTv+of4ITh6oOkiE4Cxfh5sxWUrvVdT3qqhDbVoEUYzIo
         9tMhD8rzq3hPx3enMYKm5SvFauFkiIb8skhTM7uRS7RRdmf64P72PJYUqapdkt9vvnxx
         cpJt/xVGfodDqBxZrYnVv7+o1jbLe3cf9jFAZC/+JzcDSRHoBUoivQb0JZZdlcve/K5G
         iisM4cyLd/kZ2wFwEI1sA/XW4gURr9QdPshSbQMmhwyTgE1tWKLmMVICKyiRTW1VnTXT
         wvge/qaye8V4B0xzkUNrs/o2Zkid8Ld0JaVf16Wms+QCVR85sZELJla5yxLQpCKblPaz
         24jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=POJya+g6gGJZbafCeN6KB5Ehf8dsyBQRi3NhcPJcPKw=;
        b=FnLvPGNg6KDvIET1UGXmmaJQSytwLfUTQnr1N87obcKVpweF5H4Wzb32XTOjWomkzz
         QngKESzfSzq6sumcE20qRkiPKTfPDjjnMtLzDtTdyAMQzn9e5cgPHGpqwqJykUUsFElZ
         g6ygdcsm9NmWOaHiXqPQjyPXFcdGJSjLJn/eSqV1NjCTZTxFQqBXqUdmT2YvvzsY2U0y
         Zebo62TvXIi5JSwQzlbSqFMxsU+Evv4ymeh9w6kmFVUgAfsFsdosZeZObup0qLxzXQW9
         rhu+t9w3oCXVwIi84mk5ct6nQdHOAMAWGDRP6dIlG0C8miDPXCN/Q34cUkCbTt0Cr9XG
         E5/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QF6moVxE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c193si140540oig.2.2020.02.10.15.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 15:42:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id p8so8257283oth.10
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 15:42:01 -0800 (PST)
X-Received: by 2002:a05:6830:12d5:: with SMTP id a21mr3137792otq.296.1581378120546;
        Mon, 10 Feb 2020 15:42:00 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y25sm652298oto.27.2020.02.10.15.41.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 Feb 2020 15:41:59 -0800 (PST)
Date: Mon, 10 Feb 2020 16:41:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
Cc: dsterba@suse.com, wqu@suse.com, linux-btrfs@vger.kernel.org,
	hch@infradead.org, josef@toxicpanda.com,
	Marcos Paulo de Souza <mpdesouza@suse.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv3] btrfs: Introduce new BTRFS_IOC_SNAP_DESTROY_V2 ioctl
Message-ID: <20200210234158.GA37636@ubuntu-x2-xlarge-x86>
References: <20200207130546.6771-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200207130546.6771-1-marcos.souza.org@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QF6moVxE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Feb 07, 2020 at 10:05:46AM -0300, Marcos Paulo de Souza wrote:
> From: Marcos Paulo de Souza <mpdesouza@suse.com>
> 
> This ioctl will be responsible for deleting a subvolume using it's id.
> This can be used when a system has a file system mounted from a
> subvolume, rather than the root file system, like below:
> 
> /
> |- @subvol1
> |- @subvol2
> \- @subvol_default
> 
> If only @subvol_default is mounted, we have no path to reach
> @subvol1 and @subvol2, thus no way to delete them. Current subvolume
> delete ioctl takes a file handler point as argument, and if
> @subvol_default is mounted, we can't reach @subvol1 and @subvol2 from
> the same mount point.
> 
> This patch introduces a new flag to allow BTRFS_IOC_SNAP_DESTROY_V2
> to delete subvolume using subvolid.
> 
> Now, we can use this new ioctl specifying the subvolume id and refer to
> the same mount point. It doesn't matter which subvolume was mounted,
> since we can reach to the desired one using the subvolume id, and then
> delete it.
> 
> Also in this patch:
> * export get_subvol_name_from_objectid, adding btrfs suffix
> * add BTRFS_SUBVOL_SPEC_BY_ID flag
> * add subvolid as a union member in struct btrfs_ioctl_vol_args_v2.
> 
> Signed-off-by: Marcos Paulo de Souza <mpdesouza@suse.com>
> ---
> 
>  Changes from v2:
>  * Commit message improved, explaining how to use the new ioctl (David)
>  * Moved subvolid member to the union which already contained devid and name
>    (David)
>  * Changed name_ptr to subvol_name_ptr, since it'll point to the "full"
>    subvolume name, but we need the basename of this char, which was also renamed
>    to subvol_name (David).
>  * Change the check for a valid subvolid to be >= BTRFS_FIRST_FREE_OBJECTID
>    (David)
>  * Now BTRFS_IOC_SNAP_DESTROY_V2 can handle both cases where the user uses the
>    subvolid and just the subvolume name (David)
>  * Changed BTRFS_SUBVOL_DELETE_BY_ID to BTRFS_SUBVOL_SPEC_BY_ID, since this flag
>    can be used for other actions rather than deleting a subvolume (David, Christoph)
>  * Rewritten comment about the getting/releasing the dentry before doing the
>    lookup, explaining why this dentry can be released in order to get a new one
>    from lookup (David)
>  * Moved mnt_want_write_file call sites right after the flag validation (David)
> 
>  Changes from v1:
>  * make btrfs_ioctl_snap_destroy handle both SNAP_DESTROY and SNAP_DESTROY_V2
>    (suggested by Josef)
>  * Change BTRFS_SUBVOL_DELETE_BY_ID to BTRFS_SUBVOL_BY_ID (David)
>  * Send patches for btrfs-progs and xfstests along this change
> 
>  fs/btrfs/ctree.h           |   2 +
>  fs/btrfs/export.c          |   4 +-
>  fs/btrfs/export.h          |   5 ++
>  fs/btrfs/ioctl.c           | 128 +++++++++++++++++++++++++++++++------
>  fs/btrfs/super.c           |   4 +-
>  include/uapi/linux/btrfs.h |   8 ++-
>  6 files changed, 127 insertions(+), 24 deletions(-)
> 
> diff --git a/fs/btrfs/ctree.h b/fs/btrfs/ctree.h
> index 54efb21c2727..2d56517c4bca 100644
> --- a/fs/btrfs/ctree.h
> +++ b/fs/btrfs/ctree.h
> @@ -2963,6 +2963,8 @@ int btrfs_defrag_leaves(struct btrfs_trans_handle *trans,
>  int btrfs_parse_options(struct btrfs_fs_info *info, char *options,
>  			unsigned long new_flags);
>  int btrfs_sync_fs(struct super_block *sb, int wait);
> +char *btrfs_get_subvol_name_from_objectid(struct btrfs_fs_info *fs_info,
> +					   u64 subvol_objectid);
>  
>  static inline __printf(2, 3) __cold
>  void btrfs_no_printk(const struct btrfs_fs_info *fs_info, const char *fmt, ...)
> diff --git a/fs/btrfs/export.c b/fs/btrfs/export.c
> index 72e312cae69d..027411cdbae7 100644
> --- a/fs/btrfs/export.c
> +++ b/fs/btrfs/export.c
> @@ -57,7 +57,7 @@ static int btrfs_encode_fh(struct inode *inode, u32 *fh, int *max_len,
>  	return type;
>  }
>  
> -static struct dentry *btrfs_get_dentry(struct super_block *sb, u64 objectid,
> +struct dentry *btrfs_get_dentry(struct super_block *sb, u64 objectid,
>  				       u64 root_objectid, u32 generation,
>  				       int check_generation)
>  {
> @@ -152,7 +152,7 @@ static struct dentry *btrfs_fh_to_dentry(struct super_block *sb, struct fid *fh,
>  	return btrfs_get_dentry(sb, objectid, root_objectid, generation, 1);
>  }
>  
> -static struct dentry *btrfs_get_parent(struct dentry *child)
> +struct dentry *btrfs_get_parent(struct dentry *child)
>  {
>  	struct inode *dir = d_inode(child);
>  	struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
> diff --git a/fs/btrfs/export.h b/fs/btrfs/export.h
> index 57488ecd7d4e..f981e8103d64 100644
> --- a/fs/btrfs/export.h
> +++ b/fs/btrfs/export.h
> @@ -18,4 +18,9 @@ struct btrfs_fid {
>  	u64 parent_root_objectid;
>  } __attribute__ ((packed));
>  
> +struct dentry *btrfs_get_dentry(struct super_block *sb, u64 objectid,
> +				       u64 root_objectid, u32 generation,
> +				       int check_generation);
> +struct dentry *btrfs_get_parent(struct dentry *child);
> +
>  #endif
> diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
> index 12ae31e1813e..be5350582955 100644
> --- a/fs/btrfs/ioctl.c
> +++ b/fs/btrfs/ioctl.c
> @@ -28,6 +28,7 @@
>  #include <linux/iversion.h>
>  #include "ctree.h"
>  #include "disk-io.h"
> +#include "export.h"
>  #include "transaction.h"
>  #include "btrfs_inode.h"
>  #include "print-tree.h"
> @@ -2836,7 +2837,8 @@ static int btrfs_ioctl_get_subvol_rootref(struct file *file, void __user *argp)
>  }
>  
>  static noinline int btrfs_ioctl_snap_destroy(struct file *file,
> -					     void __user *arg)
> +					     void __user *arg,
> +					     bool destroy_v2)
>  {
>  	struct dentry *parent = file->f_path.dentry;
>  	struct btrfs_fs_info *fs_info = btrfs_sb(parent->d_sb);
> @@ -2845,34 +2847,114 @@ static noinline int btrfs_ioctl_snap_destroy(struct file *file,
>  	struct inode *inode;
>  	struct btrfs_root *root = BTRFS_I(dir)->root;
>  	struct btrfs_root *dest = NULL;
> -	struct btrfs_ioctl_vol_args *vol_args;
> -	int namelen;
> +	struct btrfs_ioctl_vol_args *vol_args = NULL;
> +	struct btrfs_ioctl_vol_args_v2 *vol_args2 = NULL;
> +	char *subvol_name, *subvol_name_ptr = NULL;
> +	int subvol_namelen;
>  	int err = 0;
> +	bool destroy_parent = false;
>  
> -	if (!S_ISDIR(dir->i_mode))
> -		return -ENOTDIR;
> +	if (destroy_v2) {
> +		vol_args2 = memdup_user(arg, sizeof(*vol_args2));
> +		if (IS_ERR(vol_args2))
> +			return PTR_ERR(vol_args2);
>  
> -	vol_args = memdup_user(arg, sizeof(*vol_args));
> -	if (IS_ERR(vol_args))
> -		return PTR_ERR(vol_args);
> +		/*
> +		 * If SPEC_BY_ID is not set, we are looking for the subvolume by
> +		 * name, same as v1 currently does.
> +		 */
> +		if (!(vol_args2->flags & BTRFS_SUBVOL_SPEC_BY_ID)) {
> +			vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
> +			subvol_name = vol_args2->name;
>  
> -	vol_args->name[BTRFS_PATH_NAME_MAX] = '\0';
> -	namelen = strlen(vol_args->name);
> -	if (strchr(vol_args->name, '/') ||
> -	    strncmp(vol_args->name, "..", namelen) == 0) {
> -		err = -EINVAL;
> -		goto out;
> +			err = mnt_want_write_file(file);
> +			if (err)
> +				goto out;
> +		} else {
> +			if (vol_args2->subvolid < BTRFS_FIRST_FREE_OBJECTID) {
> +				err = -EINVAL;
> +				goto out;
> +			}
> +
> +			err = mnt_want_write_file(file);
> +			if (err)
> +				goto out;
> +
> +			dentry = btrfs_get_dentry(fs_info->sb,
> +					BTRFS_FIRST_FREE_OBJECTID,
> +					vol_args2->subvolid, 0, 0);
> +			if (IS_ERR(dentry)) {
> +				err = PTR_ERR(dentry);
> +				goto out_drop_write;
> +			}
> +
> +			/*
> +			 * Change the default parent since the subvolume being
> +			 * deleted can be outside of the current mount point.
> +			 */
> +			parent = btrfs_get_parent(dentry);
> +
> +			/*
> +			 * At this point dentry->d_name can point to '/' if the
> +			 * subvolume we want to destroy is outsite of the
> +			 * current mount point, so we need to released the
> +			 * current dentry and execute the lookup to return a new
> +			 * one with ->d_name pointing to the
> +			 * <mount point>/subvol_name.
> +			 */
> +			dput(dentry);
> +			if (IS_ERR(parent)) {
> +				err = PTR_ERR(parent);
> +				goto out_drop_write;
> +			}
> +			dir = d_inode(parent);
> +
> +			/* If v2 was used with SPEC_BY_ID, a new parent was
> +			 * allocated since the subvolume can be outside of the
> +			 * current moutn point. Later on we need to release this
> +			 * new parent dentry.
> +			 */
> +			destroy_parent = true;
> +
> +			subvol_name_ptr = btrfs_get_subvol_name_from_objectid(fs_info,
> +					vol_args2->subvolid);
> +			if (IS_ERR(subvol_name_ptr)) {
> +				err = PTR_ERR(subvol_name_ptr);
> +				goto free_parent;
> +			}
> +			/* subvol_name_ptr is already NULL termined */
> +			subvol_name = (char *)kbasename(subvol_name_ptr);
> +		}
> +	} else {
> +		vol_args = memdup_user(arg, sizeof(*vol_args));
> +		if (IS_ERR(vol_args))
> +			return PTR_ERR(vol_args);
> +
> +		vol_args->name[BTRFS_PATH_NAME_MAX] = '\0';
> +		subvol_name = vol_args->name;
> +
> +		err = mnt_want_write_file(file);
> +		if (err)
> +			goto out;
>  	}
>  
> -	err = mnt_want_write_file(file);
> -	if (err)
> -		goto out;
> +	subvol_namelen = strlen(subvol_name);
>  
> +	if (strchr(subvol_name, '/') ||
> +	    strncmp(subvol_name, "..", subvol_namelen) == 0) {
> +		err = -EINVAL;
> +		goto free_subvol_name;
> +	}
> +
> +	if (!S_ISDIR(dir->i_mode)) {
> +		err = -ENOTDIR;
> +		goto free_subvol_name;
> +	}
>  
>  	err = down_write_killable_nested(&dir->i_rwsem, I_MUTEX_PARENT);
>  	if (err == -EINTR)
>  		goto out_drop_write;
> -	dentry = lookup_one_len(vol_args->name, parent, namelen);
> +	dentry = lookup_one_len(subvol_name, parent, subvol_namelen);
>  	if (IS_ERR(dentry)) {
>  		err = PTR_ERR(dentry);
>  		goto out_unlock_dir;
> @@ -2941,9 +3023,15 @@ static noinline int btrfs_ioctl_snap_destroy(struct file *file,
>  	dput(dentry);
>  out_unlock_dir:
>  	inode_unlock(dir);
> +free_subvol_name:
> +	kfree(subvol_name_ptr);
> +free_parent:
> +	if (destroy_parent)
> +		dput(parent);
>  out_drop_write:
>  	mnt_drop_write_file(file);
>  out:
> +	kfree(vol_args2);
>  	kfree(vol_args);
>  	return err;
>  }
> @@ -5464,7 +5552,9 @@ long btrfs_ioctl(struct file *file, unsigned int
>  	case BTRFS_IOC_SUBVOL_CREATE_V2:
>  		return btrfs_ioctl_snap_create_v2(file, argp, 1);
>  	case BTRFS_IOC_SNAP_DESTROY:
> -		return btrfs_ioctl_snap_destroy(file, argp);
> +		return btrfs_ioctl_snap_destroy(file, argp, false);
> +	case BTRFS_IOC_SNAP_DESTROY_V2:
> +		return btrfs_ioctl_snap_destroy(file, argp, true);
>  	case BTRFS_IOC_SUBVOL_GETFLAGS:
>  		return btrfs_ioctl_subvol_getflags(file, argp);
>  	case BTRFS_IOC_SUBVOL_SETFLAGS:
> diff --git a/fs/btrfs/super.c b/fs/btrfs/super.c
> index f452a94abdc3..649531e92a1d 100644
> --- a/fs/btrfs/super.c
> +++ b/fs/btrfs/super.c
> @@ -1005,7 +1005,7 @@ static int btrfs_parse_subvol_options(const char *options, char **subvol_name,
>  	return error;
>  }
>  
> -static char *get_subvol_name_from_objectid(struct btrfs_fs_info *fs_info,
> +char *btrfs_get_subvol_name_from_objectid(struct btrfs_fs_info *fs_info,
>  					   u64 subvol_objectid)
>  {
>  	struct btrfs_root *root = fs_info->tree_root;
> @@ -1417,7 +1417,7 @@ static struct dentry *mount_subvol(const char *subvol_name, u64 subvol_objectid,
>  				goto out;
>  			}
>  		}
> -		subvol_name = get_subvol_name_from_objectid(btrfs_sb(mnt->mnt_sb),
> +		subvol_name = btrfs_get_subvol_name_from_objectid(btrfs_sb(mnt->mnt_sb),
>  							    subvol_objectid);
>  		if (IS_ERR(subvol_name)) {
>  			root = ERR_CAST(subvol_name);
> diff --git a/include/uapi/linux/btrfs.h b/include/uapi/linux/btrfs.h
> index 7a8bc8b920f5..280f6ded2104 100644
> --- a/include/uapi/linux/btrfs.h
> +++ b/include/uapi/linux/btrfs.h
> @@ -42,11 +42,14 @@ struct btrfs_ioctl_vol_args {
>  
>  #define BTRFS_DEVICE_SPEC_BY_ID		(1ULL << 3)
>  
> +#define BTRFS_SUBVOL_SPEC_BY_ID	(1ULL << 4)
> +
>  #define BTRFS_VOL_ARG_V2_FLAGS_SUPPORTED		\
>  			(BTRFS_SUBVOL_CREATE_ASYNC |	\
>  			BTRFS_SUBVOL_RDONLY |		\
>  			BTRFS_SUBVOL_QGROUP_INHERIT |	\
> -			BTRFS_DEVICE_SPEC_BY_ID)
> +			BTRFS_DEVICE_SPEC_BY_ID |	\
> +			BTRFS_SUBVOL_SPEC_BY_ID)
>  
>  #define BTRFS_FSID_SIZE 16
>  #define BTRFS_UUID_SIZE 16
> @@ -120,6 +123,7 @@ struct btrfs_ioctl_vol_args_v2 {
>  	};
>  	union {
>  		char name[BTRFS_SUBVOL_NAME_MAX + 1];
> +		__u64 subvolid;
>  		__u64 devid;
>  	};
>  };
> @@ -949,5 +953,7 @@ enum btrfs_err_code {
>  				struct btrfs_ioctl_get_subvol_rootref_args)
>  #define BTRFS_IOC_INO_LOOKUP_USER _IOWR(BTRFS_IOCTL_MAGIC, 62, \
>  				struct btrfs_ioctl_ino_lookup_user_args)
> +#define BTRFS_IOC_SNAP_DESTROY_V2 _IOW(BTRFS_IOCTL_MAGIC, 63, \
> +				struct btrfs_ioctl_vol_args_v2)
>  
>  #endif /* _UAPI_LINUX_BTRFS_H */
> -- 
> 2.24.0
> 

Hi Marcos,

We received a build report from the 0day bot when building with clang
that appears legitimate if I am reading everything correctly.

../fs/btrfs/ioctl.c:2867:4: warning: array index 4087 is past the end of the array (which contains 4040 elements) [-Warray-bounds]
                        vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
                        ^               ~~~~~~~~~~~~~~~~~~~
../include/uapi/linux/btrfs.h:125:3: note: array 'name' declared here
                char name[BTRFS_SUBVOL_NAME_MAX + 1];
                ^
1 warning generated.

The full report can be viewed here:

https://groups.google.com/d/msg/clang-built-linux/YFcXVkPdkTY/EhB6grZ2BQAJ

Mind taking a look at it?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210234158.GA37636%40ubuntu-x2-xlarge-x86.

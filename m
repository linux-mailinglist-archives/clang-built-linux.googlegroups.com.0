Return-Path: <clang-built-linux+bncBAABBYXQRPZAKGQEJEUBLOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD9C159933
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 19:54:26 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id t11sf4150025ljo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:54:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581447266; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRZFwkP36zU+wryt5BMXogw/dX+AFb6iudNwqlBBc0+WvWAL51GkcfglDPrpgFhlbe
         sMjCR46dsRWFBbLR0GyhQE3/TQvHvUlT8RS3Z6P5q3RdUnT4rmzl81v9Y3DRu+p6yV4B
         NaogqQOoIr+1zz4dUuPqyWXHiXoowvP4zMtSmpngk4v4HtEGhgrMPpyvNJlNr3S5p+ws
         JS6QpZuHmZkPuyTIsdgvRD/eKCPb/8vhP6F4FsH1BS7HMSkMnrbwOt3iNNEAQiAGfTuV
         Zp4/bJKwZU88C1M9G/exd+rVX/uQwDVbLIgJag8pOV2/hrIwwwpMWaK4wSmmk/F1aoUe
         yXjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=obg6rEGISmZvy95gRDh20x9iH6a7NWz+n+urIeUjyTE=;
        b=ih779bxBDNxslbN/bZLyF9CZHZt5FHFa0tulAUa3eFHmCCaVOx94ay2M36VdGhyH9u
         oQ9F6Qh//EENygzYw8EJY5Q82PCPu3w2HDhDBxV2dvg1313KIHBcsfLhdzuVT3wfZqvr
         9Hh53yqKLaHhc80bFjhwDO9OrJdpi2lm3EMgN79+NI5ln6Ecadzq8W1mVKlIIEu3Q6vj
         JVOm+BYxwmdrRrQCYRFTppcJ2m5y642UfoIN2Wyjg/MM9DAOh8GgAbggDS8ijhysxMPP
         LPN/WW/RMKhtLZaEWNfCZDaXG2ASBpS8fShMkQzyNqE9KYm/RMlSO4EcJ292zS5LtJgd
         Ygbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpdesouza@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mpdesouza@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=obg6rEGISmZvy95gRDh20x9iH6a7NWz+n+urIeUjyTE=;
        b=WoAmZ3CdCQu+dzRfXADPCmn6kfuOVg6TRe3ScFcxMntMie6+pOORviZAEHHiFL4n9/
         g/hL2YJ2cGnyMqFHZOc7rvSmCeX0WmIe3GSsStC9qP8Q3oYNLmOtm/5wFOWco9ugBo2x
         ugKbS9FxsVMWy3aDc5leYgdUHX5ABQTkgWvjeXo62A6NkJk9Fiv4Zm1T2Ejk2jjj88Yz
         TxsHXT1TgFvWk5dmC5vBY4ngV52yVbYXQvrD2X/1DQNb6m5GdeQyhGAoZOLqE2wvzjup
         Zd6GcZFNo+HjXb8Ssc/ILq2gIogpIN5BZExXGYznoa9vXtIdjCuU2bxeo3EYybPMkpDI
         zAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obg6rEGISmZvy95gRDh20x9iH6a7NWz+n+urIeUjyTE=;
        b=B6vxQlLNY05mggolQ1ANdiolQsnov4OZxJgy1fghGtSW6a1s4XjlgEhswimswcZKY3
         8W2XgyLdbb/Em23WP9wx8ROX+Fw2nCrhyZaMVXshb74ksNTjsDxDSanp1Edo/7xQjclw
         oQAj9BP9ZLb7L3oqtkfcnV36b+a+VAUvrf41iM33uT6bZ5NhIqZUcs7o0Setr0SdDHwW
         pCoZWZFiFqRyWdQa81ILoHNWve9+XU3ajTEmmXVML6satPFGK08AsbLGEoc/ViDJzeBw
         pDV+vM9TRjpVVxFbLGN6nEFz1Yp57vnwgj+CsZmekjRI4wQrb3phHwvOO5lmqg3fdZdU
         CRaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViq7J9f6sDKRr8v+oMei7uJgOZhMu2iU6fWKni26jGlHXxzKEh
	1GLjQDTf7M1aRmQTdKxd9Co=
X-Google-Smtp-Source: APXvYqzL1r3OdpAkXUOsec2jLCrwDpjnAT71N30wr8KM7jw0Kr9Y8asnzZ5adxariTKJzh+sH5EXEQ==
X-Received: by 2002:a19:4849:: with SMTP id v70mr4456791lfa.30.1581447266222;
        Tue, 11 Feb 2020 10:54:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6809:: with SMTP id c9ls2647034lja.1.gmail; Tue, 11 Feb
 2020 10:54:25 -0800 (PST)
X-Received: by 2002:a2e:2283:: with SMTP id i125mr5353709lji.244.1581447265681;
        Tue, 11 Feb 2020 10:54:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581447265; cv=none;
        d=google.com; s=arc-20160816;
        b=khdKdff9HkcNtkDhrn6ZNXfP8RDfEPuOwcIFxLIDhnGC+YBswDJedfDhC5s+Cbn/cP
         loOE1MqYTeZXtMPot5jzy88qJC75JZmpV52Iqgd+c5MIizxqzwQi0xEWjIc8QUQih5mx
         wjAL1BvFaOJE+JHBTMUFEFmWbDDK7VpBFErzfiDqGDL+gb0JsaTy9FwtiHGCIMUafE7u
         8gEzy7hV9erMPPm3ZKykuF6wOrAMCzu6TexicBeEqsG6VPQTjOBd2buR5n1kTy5xfoE/
         6hvM5q+PP1XkdRL7f+HE4K9pdSTwmB/Jn9FziMM7ZUUBsGzGoMJjJO0J9DwVqNgrkzas
         AXww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=0eR5hHAORtFHEojpj1uomWIZYraMsnPBVa2WcnUmSVs=;
        b=B6+gwGSlPmZaWMzWzZQN0go1J4dQAGh948ImsxMxSEyZPne+RaP8RJHzIFS/ZILGIs
         QaTJCmFcTFcZH5/v3IkuSQZmchwD0LTqbIIeeMoAUvZIhkzhHDwSe+ubZDu0IBPT32b/
         4ZkvYIz628+V2OimwlgtBLTqd4jAlMdAMt5/VWR6jK02sXErAk62SO2a+KBnyy/JEfsB
         d0Fq/+gBws1b5DADyKQADLSWZD+VLKZFLjyrOI2tD0BTF1KSVz4hYdJKyFLNsTkxk3Wa
         gMvHBApzqoARyQjE4+b2zk7MnpKvbyVfmc2WMNFmMJHl/LNmZ/hHWKQGPbSMZwbIUDXx
         7fvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpdesouza@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mpdesouza@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b29si278773lfo.2.2020.02.11.10.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 10:54:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mpdesouza@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id CD296AF00;
	Tue, 11 Feb 2020 18:54:24 +0000 (UTC)
Message-ID: <45c807f4298b22eaa1a89741bee67721fa0b0f80.camel@suse.de>
Subject: Re: [PATCHv3] btrfs: Introduce new BTRFS_IOC_SNAP_DESTROY_V2 ioctl
From: Marcos Paulo de Souza <mpdesouza@suse.de>
To: Nathan Chancellor <natechancellor@gmail.com>, Marcos Paulo de Souza
	 <marcos.souza.org@gmail.com>
Cc: dsterba@suse.com, wqu@suse.com, linux-btrfs@vger.kernel.org, 
 hch@infradead.org, josef@toxicpanda.com, Marcos Paulo de Souza
 <mpdesouza@suse.com>,  clang-built-linux@googlegroups.com
Date: Tue, 11 Feb 2020 15:57:21 -0300
In-Reply-To: <20200210234158.GA37636@ubuntu-x2-xlarge-x86>
References: <20200207130546.6771-1-marcos.souza.org@gmail.com>
	 <20200210234158.GA37636@ubuntu-x2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.2
MIME-Version: 1.0
X-Original-Sender: mpdesouza@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mpdesouza@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=mpdesouza@suse.de
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

On Mon, 2020-02-10 at 16:41 -0700, Nathan Chancellor wrote:
> On Fri, Feb 07, 2020 at 10:05:46AM -0300, Marcos Paulo de Souza
> wrote:
> > From: Marcos Paulo de Souza <mpdesouza@suse.com>
> > 
> > This ioctl will be responsible for deleting a subvolume using it's
> id.
> > This can be used when a system has a file system mounted from a
> > subvolume, rather than the root file system, like below:
> > 
> > /
> > |- @subvol1
> > |- @subvol2
> > \- @subvol_default
> > 
> > If only @subvol_default is mounted, we have no path to reach
> > @subvol1 and @subvol2, thus no way to delete them. Current
> subvolume
> > delete ioctl takes a file handler point as argument, and if
> > @subvol_default is mounted, we can't reach @subvol1 and @subvol2
> from
> > the same mount point.
> > 
> > This patch introduces a new flag to allow BTRFS_IOC_SNAP_DESTROY_V2
> > to delete subvolume using subvolid.
> > 
> > Now, we can use this new ioctl specifying the subvolume id and
> refer to
> > the same mount point. It doesn't matter which subvolume was
> mounted,
> > since we can reach to the desired one using the subvolume id, and
> then
> > delete it.
> > 
> > Also in this patch:
> > * export get_subvol_name_from_objectid, adding btrfs suffix
> > * add BTRFS_SUBVOL_SPEC_BY_ID flag
> > * add subvolid as a union member in struct btrfs_ioctl_vol_args_v2.
> > 
> > Signed-off-by: Marcos Paulo de Souza <mpdesouza@suse.com>
> > ---
> > 
> >  Changes from v2:
> >  * Commit message improved, explaining how to use the new ioctl
> (David)
> >  * Moved subvolid member to the union which already contained devid
> and name
> >    (David)
> >  * Changed name_ptr to subvol_name_ptr, since it'll point to the
> "full"
> >    subvolume name, but we need the basename of this char, which was
> also renamed
> >    to subvol_name (David).
> >  * Change the check for a valid subvolid to be >=
> BTRFS_FIRST_FREE_OBJECTID
> >    (David)
> >  * Now BTRFS_IOC_SNAP_DESTROY_V2 can handle both cases where the
> user uses the
> >    subvolid and just the subvolume name (David)
> >  * Changed BTRFS_SUBVOL_DELETE_BY_ID to BTRFS_SUBVOL_SPEC_BY_ID,
> since this flag
> >    can be used for other actions rather than deleting a subvolume
> (David, Christoph)
> >  * Rewritten comment about the getting/releasing the dentry before
> doing the
> >    lookup, explaining why this dentry can be released in order to
> get a new one
> >    from lookup (David)
> >  * Moved mnt_want_write_file call sites right after the flag
> validation (David)
> > 
> >  Changes from v1:
> >  * make btrfs_ioctl_snap_destroy handle both SNAP_DESTROY and
> SNAP_DESTROY_V2
> >    (suggested by Josef)
> >  * Change BTRFS_SUBVOL_DELETE_BY_ID to BTRFS_SUBVOL_BY_ID (David)
> >  * Send patches for btrfs-progs and xfstests along this change
> > 
> >  fs/btrfs/ctree.h           |   2 +
> >  fs/btrfs/export.c          |   4 +-
> >  fs/btrfs/export.h          |   5 ++
> >  fs/btrfs/ioctl.c           | 128 +++++++++++++++++++++++++++++++
> ------
> >  fs/btrfs/super.c           |   4 +-
> >  include/uapi/linux/btrfs.h |   8 ++-
> >  6 files changed, 127 insertions(+), 24 deletions(-)
> > 
> > diff --git a/fs/btrfs/ctree.h b/fs/btrfs/ctree.h
> > index 54efb21c2727..2d56517c4bca 100644
> > --- a/fs/btrfs/ctree.h
> > +++ b/fs/btrfs/ctree.h
> > @@ -2963,6 +2963,8 @@ int btrfs_defrag_leaves(struct
> btrfs_trans_handle *trans,
> >  int btrfs_parse_options(struct btrfs_fs_info *info, char *options,
> >  			unsigned long new_flags);
> >  int btrfs_sync_fs(struct super_block *sb, int wait);
> > +char *btrfs_get_subvol_name_from_objectid(struct btrfs_fs_info
> *fs_info,
> > +					   u64 subvol_objectid);
> >  
> >  static inline __printf(2, 3) __cold
> >  void btrfs_no_printk(const struct btrfs_fs_info *fs_info, const
> char *fmt, ...)
> > diff --git a/fs/btrfs/export.c b/fs/btrfs/export.c
> > index 72e312cae69d..027411cdbae7 100644
> > --- a/fs/btrfs/export.c
> > +++ b/fs/btrfs/export.c
> > @@ -57,7 +57,7 @@ static int btrfs_encode_fh(struct inode *inode,
> u32 *fh, int *max_len,
> >  	return type;
> >  }
> >  
> > -static struct dentry *btrfs_get_dentry(struct super_block *sb, u64
> objectid,
> > +struct dentry *btrfs_get_dentry(struct super_block *sb, u64
> objectid,
> >  				       u64 root_objectid, u32
> generation,
> >  				       int check_generation)
> >  {
> > @@ -152,7 +152,7 @@ static struct dentry *btrfs_fh_to_dentry(struct
> super_block *sb, struct fid *fh,
> >  	return btrfs_get_dentry(sb, objectid, root_objectid,
> generation, 1);
> >  }
> >  
> > -static struct dentry *btrfs_get_parent(struct dentry *child)
> > +struct dentry *btrfs_get_parent(struct dentry *child)
> >  {
> >  	struct inode *dir = d_inode(child);
> >  	struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
> > diff --git a/fs/btrfs/export.h b/fs/btrfs/export.h
> > index 57488ecd7d4e..f981e8103d64 100644
> > --- a/fs/btrfs/export.h
> > +++ b/fs/btrfs/export.h
> > @@ -18,4 +18,9 @@ struct btrfs_fid {
> >  	u64 parent_root_objectid;
> >  } __attribute__ ((packed));
> >  
> > +struct dentry *btrfs_get_dentry(struct super_block *sb, u64
> objectid,
> > +				       u64 root_objectid, u32
> generation,
> > +				       int check_generation);
> > +struct dentry *btrfs_get_parent(struct dentry *child);
> > +
> >  #endif
> > diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
> > index 12ae31e1813e..be5350582955 100644
> > --- a/fs/btrfs/ioctl.c
> > +++ b/fs/btrfs/ioctl.c
> > @@ -28,6 +28,7 @@
> >  #include <linux/iversion.h>
> >  #include "ctree.h"
> >  #include "disk-io.h"
> > +#include "export.h"
> >  #include "transaction.h"
> >  #include "btrfs_inode.h"
> >  #include "print-tree.h"
> > @@ -2836,7 +2837,8 @@ static int
> btrfs_ioctl_get_subvol_rootref(struct file *file, void __user *argp)
> >  }
> >  
> >  static noinline int btrfs_ioctl_snap_destroy(struct file *file,
> > -					     void __user *arg)
> > +					     void __user *arg,
> > +					     bool destroy_v2)
> >  {
> >  	struct dentry *parent = file->f_path.dentry;
> >  	struct btrfs_fs_info *fs_info = btrfs_sb(parent->d_sb);
> > @@ -2845,34 +2847,114 @@ static noinline int
> btrfs_ioctl_snap_destroy(struct file *file,
> >  	struct inode *inode;
> >  	struct btrfs_root *root = BTRFS_I(dir)->root;
> >  	struct btrfs_root *dest = NULL;
> > -	struct btrfs_ioctl_vol_args *vol_args;
> > -	int namelen;
> > +	struct btrfs_ioctl_vol_args *vol_args = NULL;
> > +	struct btrfs_ioctl_vol_args_v2 *vol_args2 = NULL;
> > +	char *subvol_name, *subvol_name_ptr = NULL;
> > +	int subvol_namelen;
> >  	int err = 0;
> > +	bool destroy_parent = false;
> >  
> > -	if (!S_ISDIR(dir->i_mode))
> > -		return -ENOTDIR;
> > +	if (destroy_v2) {
> > +		vol_args2 = memdup_user(arg, sizeof(*vol_args2));
> > +		if (IS_ERR(vol_args2))
> > +			return PTR_ERR(vol_args2);
> >  
> > -	vol_args = memdup_user(arg, sizeof(*vol_args));
> > -	if (IS_ERR(vol_args))
> > -		return PTR_ERR(vol_args);
> > +		/*
> > +		 * If SPEC_BY_ID is not set, we are looking for the
> subvolume by
> > +		 * name, same as v1 currently does.
> > +		 */
> > +		if (!(vol_args2->flags & BTRFS_SUBVOL_SPEC_BY_ID)) {
> > +			vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
> > +			subvol_name = vol_args2->name;
> >  
> > -	vol_args->name[BTRFS_PATH_NAME_MAX] = '\0';
> > -	namelen = strlen(vol_args->name);
> > -	if (strchr(vol_args->name, '/') ||
> > -	    strncmp(vol_args->name, "..", namelen) == 0) {
> > -		err = -EINVAL;
> > -		goto out;
> > +			err = mnt_want_write_file(file);
> > +			if (err)
> > +				goto out;
> > +		} else {
> > +			if (vol_args2->subvolid <
> BTRFS_FIRST_FREE_OBJECTID) {
> > +				err = -EINVAL;
> > +				goto out;
> > +			}
> > +
> > +			err = mnt_want_write_file(file);
> > +			if (err)
> > +				goto out;
> > +
> > +			dentry = btrfs_get_dentry(fs_info->sb,
> > +					BTRFS_FIRST_FREE_OBJECTID,
> > +					vol_args2->subvolid, 0, 0);
> > +			if (IS_ERR(dentry)) {
> > +				err = PTR_ERR(dentry);
> > +				goto out_drop_write;
> > +			}
> > +
> > +			/*
> > +			 * Change the default parent since the
> subvolume being
> > +			 * deleted can be outside of the current mount
> point.
> > +			 */
> > +			parent = btrfs_get_parent(dentry);
> > +
> > +			/*
> > +			 * At this point dentry->d_name can point to
> '/' if the
> > +			 * subvolume we want to destroy is outsite of
> the
> > +			 * current mount point, so we need to released
> the
> > +			 * current dentry and execute the lookup to
> return a new
> > +			 * one with ->d_name pointing to the
> > +			 * <mount point>/subvol_name.
> > +			 */
> > +			dput(dentry);
> > +			if (IS_ERR(parent)) {
> > +				err = PTR_ERR(parent);
> > +				goto out_drop_write;
> > +			}
> > +			dir = d_inode(parent);
> > +
> > +			/* If v2 was used with SPEC_BY_ID, a new parent
> was
> > +			 * allocated since the subvolume can be outside
> of the
> > +			 * current moutn point. Later on we need to
> release this
> > +			 * new parent dentry.
> > +			 */
> > +			destroy_parent = true;
> > +
> > +			subvol_name_ptr =
> btrfs_get_subvol_name_from_objectid(fs_info,
> > +					vol_args2->subvolid);
> > +			if (IS_ERR(subvol_name_ptr)) {
> > +				err = PTR_ERR(subvol_name_ptr);
> > +				goto free_parent;
> > +			}
> > +			/* subvol_name_ptr is already NULL termined */
> > +			subvol_name = (char
> *)kbasename(subvol_name_ptr);
> > +		}
> > +	} else {
> > +		vol_args = memdup_user(arg, sizeof(*vol_args));
> > +		if (IS_ERR(vol_args))
> > +			return PTR_ERR(vol_args);
> > +
> > +		vol_args->name[BTRFS_PATH_NAME_MAX] = '\0';
> > +		subvol_name = vol_args->name;
> > +
> > +		err = mnt_want_write_file(file);
> > +		if (err)
> > +			goto out;
> >  	}
> >  
> > -	err = mnt_want_write_file(file);
> > -	if (err)
> > -		goto out;
> > +	subvol_namelen = strlen(subvol_name);
> >  
> > +	if (strchr(subvol_name, '/') ||
> > +	    strncmp(subvol_name, "..", subvol_namelen) == 0) {
> > +		err = -EINVAL;
> > +		goto free_subvol_name;
> > +	}
> > +
> > +	if (!S_ISDIR(dir->i_mode)) {
> > +		err = -ENOTDIR;
> > +		goto free_subvol_name;
> > +	}
> >  
> >  	err = down_write_killable_nested(&dir->i_rwsem,
> I_MUTEX_PARENT);
> >  	if (err == -EINTR)
> >  		goto out_drop_write;
> > -	dentry = lookup_one_len(vol_args->name, parent, namelen);
> > +	dentry = lookup_one_len(subvol_name, parent, subvol_namelen);
> >  	if (IS_ERR(dentry)) {
> >  		err = PTR_ERR(dentry);
> >  		goto out_unlock_dir;
> > @@ -2941,9 +3023,15 @@ static noinline int
> btrfs_ioctl_snap_destroy(struct file *file,
> >  	dput(dentry);
> >  out_unlock_dir:
> >  	inode_unlock(dir);
> > +free_subvol_name:
> > +	kfree(subvol_name_ptr);
> > +free_parent:
> > +	if (destroy_parent)
> > +		dput(parent);
> >  out_drop_write:
> >  	mnt_drop_write_file(file);
> >  out:
> > +	kfree(vol_args2);
> >  	kfree(vol_args);
> >  	return err;
> >  }
> > @@ -5464,7 +5552,9 @@ long btrfs_ioctl(struct file *file, unsigned
> int
> >  	case BTRFS_IOC_SUBVOL_CREATE_V2:
> >  		return btrfs_ioctl_snap_create_v2(file, argp, 1);
> >  	case BTRFS_IOC_SNAP_DESTROY:
> > -		return btrfs_ioctl_snap_destroy(file, argp);
> > +		return btrfs_ioctl_snap_destroy(file, argp, false);
> > +	case BTRFS_IOC_SNAP_DESTROY_V2:
> > +		return btrfs_ioctl_snap_destroy(file, argp, true);
> >  	case BTRFS_IOC_SUBVOL_GETFLAGS:
> >  		return btrfs_ioctl_subvol_getflags(file, argp);
> >  	case BTRFS_IOC_SUBVOL_SETFLAGS:
> > diff --git a/fs/btrfs/super.c b/fs/btrfs/super.c
> > index f452a94abdc3..649531e92a1d 100644
> > --- a/fs/btrfs/super.c
> > +++ b/fs/btrfs/super.c
> > @@ -1005,7 +1005,7 @@ static int btrfs_parse_subvol_options(const
> char *options, char **subvol_name,
> >  	return error;
> >  }
> >  
> > -static char *get_subvol_name_from_objectid(struct btrfs_fs_info
> *fs_info,
> > +char *btrfs_get_subvol_name_from_objectid(struct btrfs_fs_info
> *fs_info,
> >  					   u64 subvol_objectid)
> >  {
> >  	struct btrfs_root *root = fs_info->tree_root;
> > @@ -1417,7 +1417,7 @@ static struct dentry *mount_subvol(const char
> *subvol_name, u64 subvol_objectid,
> >  				goto out;
> >  			}
> >  		}
> > -		subvol_name =
> get_subvol_name_from_objectid(btrfs_sb(mnt->mnt_sb),
> > +		subvol_name =
> btrfs_get_subvol_name_from_objectid(btrfs_sb(mnt->mnt_sb),
> >  							    subvol_obje
> ctid);
> >  		if (IS_ERR(subvol_name)) {
> >  			root = ERR_CAST(subvol_name);
> > diff --git a/include/uapi/linux/btrfs.h
> b/include/uapi/linux/btrfs.h
> > index 7a8bc8b920f5..280f6ded2104 100644
> > --- a/include/uapi/linux/btrfs.h
> > +++ b/include/uapi/linux/btrfs.h
> > @@ -42,11 +42,14 @@ struct btrfs_ioctl_vol_args {
> >  
> >  #define BTRFS_DEVICE_SPEC_BY_ID		(1ULL << 3)
> >  
> > +#define BTRFS_SUBVOL_SPEC_BY_ID	(1ULL << 4)
> > +
> >  #define BTRFS_VOL_ARG_V2_FLAGS_SUPPORTED		\
> >  			(BTRFS_SUBVOL_CREATE_ASYNC |	\
> >  			BTRFS_SUBVOL_RDONLY |		\
> >  			BTRFS_SUBVOL_QGROUP_INHERIT |	\
> > -			BTRFS_DEVICE_SPEC_BY_ID)
> > +			BTRFS_DEVICE_SPEC_BY_ID |	\
> > +			BTRFS_SUBVOL_SPEC_BY_ID)
> >  
> >  #define BTRFS_FSID_SIZE 16
> >  #define BTRFS_UUID_SIZE 16
> > @@ -120,6 +123,7 @@ struct btrfs_ioctl_vol_args_v2 {
> >  	};
> >  	union {
> >  		char name[BTRFS_SUBVOL_NAME_MAX + 1];
> > +		__u64 subvolid;
> >  		__u64 devid;
> >  	};
> >  };
> > @@ -949,5 +953,7 @@ enum btrfs_err_code {
> >  				struct
> btrfs_ioctl_get_subvol_rootref_args)
> >  #define BTRFS_IOC_INO_LOOKUP_USER _IOWR(BTRFS_IOCTL_MAGIC, 62, \
> >  				struct
> btrfs_ioctl_ino_lookup_user_args)
> > +#define BTRFS_IOC_SNAP_DESTROY_V2 _IOW(BTRFS_IOCTL_MAGIC, 63, \
> > +				struct btrfs_ioctl_vol_args_v2)
> >  
> >  #endif /* _UAPI_LINUX_BTRFS_H */
> > -- 
> > 2.24.0
> > 
> 
> Hi Marcos,
> 
> We received a build report from the 0day bot when building with clang
> that appears legitimate if I am reading everything correctly.
> 
> ../fs/btrfs/ioctl.c:2867:4: warning: array index 4087 is past the end
> of the array (which contains 4040 elements) [-Warray-bounds]
>                         vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
>                         ^               ~~~~~~~~~~~~~~~~~~~
> ../include/uapi/linux/btrfs.h:125:3: note: array 'name' declared here
>                 char name[BTRFS_SUBVOL_NAME_MAX + 1];
>                 ^
> 1 warning generated.

Sure, I will send a new patch to address this warning after this one
gets merged, since this problem existed before this change. Thanks for
the report!

> 
> The full report can be viewed here:
> 
> https://groups.google.com/d/msg/clang-built-linux/YFcXVkPdkTY/EhB6grZ2BQAJ
> 
> Mind taking a look at it?
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45c807f4298b22eaa1a89741bee67721fa0b0f80.camel%40suse.de.

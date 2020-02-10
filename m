Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6WUQ7ZAKGQEZELAXZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B3843158646
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 00:42:51 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id g7sf4438837ybo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 15:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581378170; cv=pass;
        d=google.com; s=arc-20160816;
        b=uYG0EkfiPK70lqwl/32E7Aig8QxWTJC5xWB9atKEME9YSL42cpKdWv3k11S99O/W2Q
         7LUH6kEUUR9xjzPf0SwdvFbsKmdalc+V8SBpggCsPW8GozWj9EerPqB3JsRSpaRresqh
         tT441B5bvBjT+qL/F/7IjG4rhn/oQ1qcoDsipdExiMHCSYu5jX3RgkaFjEFOVpd6uWej
         P8+ElxaK5chb9nNuo7HTcLZaOLknJb8NR7Ze8UopLXRKUT2BYc7X/M+4pd12tFdskhzT
         dc90LSJ211kkb4xwyLKNRnlESO5WXHumxqwKw7aOc0DAoUQedZQZO9cxc581vMTb2kOf
         l98g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=G/5PAGXIDx/MosHeqse8Jr8ABPuHUbRYuuUYWwSyzi8=;
        b=dQu80BQLpA6aez4BmUpiLUpbqfz8b1A+XkgNmVYDQ3R960MNEgv1fPCBaHJYYTasuN
         neiMEBYzRRot1H/84pLNYvxblrU+hOARBUycdyiQlaZ52JSO7mO4gEgg070ROMcmtMZ4
         n7R2Ji8CUxTodDL2Zc7JAmIYNPb0PCaLQsidYRo8ppuw46SlVyYQVWQ77+iOljXJCnd1
         BCOiI2ucoHOx8bF4DjMYbrcMG2L/JicOzX8o94xKh3wYWhz6Q6foiSpWWZmmQH5pdzLX
         w5MddOpUj8HT5D7F9zEemCzL6rOeTUts8DG3AQrI48loeXEa9b2CUdg8XPNVbErXGpP7
         GJQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzYAgsV7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G/5PAGXIDx/MosHeqse8Jr8ABPuHUbRYuuUYWwSyzi8=;
        b=qyHSI5D0Tw2oEN50EW0ZOkxUlfx/TjzNc/PHBhOnCHja1J6FpsBHWG7Z7kwfRy/bTf
         ECrkAUy2YMBRVgZtsaeCi7QbhQ4I3/XalcJE4iNyKyq+S8Xh+pQKVdBZ83zHNvjflhUE
         MRyto+Yecjx3HBl8g8/Lq/A+FrobydPVD/zZoKs6BFj760LndLd/yhM3cDf8drOUcl3A
         1+ojfbR0Q79jIIX0ZyLK3ci3qOR5K9+vYbkdwSUdbufnd/tmo5Qn/MVGqDrjAZtNWq02
         ljR4lSCWdMewndZZ1GScqd+DZOGa200XOPh+Xg9r70eMmRaoD74I26O/1IkluWKPZpSW
         yCAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G/5PAGXIDx/MosHeqse8Jr8ABPuHUbRYuuUYWwSyzi8=;
        b=L2+/j88dWs8OZlNW9nKjuAKCs/zSWrSSc23GgIeUsKQokZy4jSMD1CDMiL0ZSAwuJs
         +wChS59pfaqdKZQec1K3jcc/Nq153umrU1S7KgXWTXQnwz2FyET3LiPBfZhtrfh5wqos
         iZfrOde1pTNJy7baIdoo5OnWGl4mOJzykEdk0kfj/9o4o9MdYShhDeRySoK4Vg2Um7Jo
         bFynmQOHUkNgMG8IwcU8Zixbg3gPXISFLv1H9Xs+zfHpfzJNIutFsogif8c9Rbp+pZG7
         UNK8L2f+h+JMAIpt9WMe+vstZPjNOAblAqeJbacQFJC4eA9USr+LYfx1nvUWzYrxbV3D
         gacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G/5PAGXIDx/MosHeqse8Jr8ABPuHUbRYuuUYWwSyzi8=;
        b=ek0uTZOd5RIomWf/yNUeqm0nMxVyygznXWOdAczc0rNRJuh2xezMwFXlal77Ih74m7
         2m5y7At/VZOghenY25hINIlt1LmS67Vw4ka4nbHKgB29jE0VCLdPpOXePVfsFzgDhJNX
         aqCGQM7Jbikw+KWtPcg5UzTgB02vBfBB3fdaMSkQGlS8PWxMYJjofkJUTKqFsL9SNnjd
         3FRM4Uj4ceGxDXt4C8oHhbCknelF+V98AKA+cwNH89yZGf/hG8x0DJawqY2pKmgn3rCw
         7Ry19enoI84oppnZa+Iq0puvrOsseNNdg+x9m6DGgAOuDDFEfjbbyf365o9A5AETSs1c
         HyyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCIbSfXp4jueR0LKdb2U8OIveuqfQQh9z4WmbyEzpSj4jIei7S
	9PllWiZ2GKv3PFKvLBfJbWQ=
X-Google-Smtp-Source: APXvYqxYgIOeaVv9ZYqPnvjCs3QtJHABirs4SuV2/KM4l+ih2axguvo+VHA44CQ3wIFNNvxsNZZ7kw==
X-Received: by 2002:a5b:2ca:: with SMTP id h10mr3639906ybp.229.1581378170480;
        Mon, 10 Feb 2020 15:42:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd4a:: with SMTP id p10ls1974283ybm.4.gmail; Mon, 10 Feb
 2020 15:42:50 -0800 (PST)
X-Received: by 2002:a25:c693:: with SMTP id k141mr3684552ybf.252.1581378170067;
        Mon, 10 Feb 2020 15:42:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581378170; cv=none;
        d=google.com; s=arc-20160816;
        b=rFTEGR/cfHPR+pMDRcaWfhx7wNuKACahsmFw7i+5bn9Wx/FBOBiKkgfPobYSRT4hWJ
         K3B8ICoSsfUl2/aIOByC5LPnVXv9s/v1sRxfSKZuxFukTAnPZVpiiI+0uKNMouJSMsDx
         X/jZwtyEuAN+Ctb0WZIvPfMtvMZdgZEDWvHIfjfmMgrF1eBBgwXoOJKBuN2wkfwjX6mH
         G6uQEtOl7HXjLOjqW0Uqce94JVD+w0nwKENP65QHoo9deLAyhYEh+IQpV3O+VEX+++5D
         6ERo92MVVKkd1WkZ1L04tPk1MCRwceKBSMd9qIhf5gKUA2IHMGSC/cSL2RO2Kqdrt1bp
         T3mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5qjhIT7BjF1BU4okdxA2B8JMjO5H25d7/AuXXGtzYGs=;
        b=OEanGCyYFSqhJeVKkVuRBt8ZmUWmp1ZUYCqOzyiw5FKyxVUOQgcrE1pLfVNcaWq2S+
         MHO7YjoeXbEF4T2qR1XskgjhIGEWsZxJaCMtoXizo0lZgqY7oM/vTQ+cPnZX+AwHH06D
         gklNDyNDHJqybkW0eJsdgQX0b5tz7s/305GsITnM9pDQgAk+DJG1CAHuX8Se2iZOQn/g
         XimIcY137as8dPnlZRyy6xq9grGjgNqiLSeTxLdy/wD4o6234iSahq3aas3st7lVSDzc
         Qi+bgRgQMoqTKdoGhJjA+7S9l2cF/4UT/6t4T2nXSKpvSq5guv4lJ6CUiiqdSrxi9LMJ
         7Iyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzYAgsV7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t82si106575ywb.2.2020.02.10.15.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 15:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id a15so8327247otf.1
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 15:42:50 -0800 (PST)
X-Received: by 2002:a9d:6c8d:: with SMTP id c13mr3052822otr.277.1581378169521;
        Mon, 10 Feb 2020 15:42:49 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t9sm581622otm.76.2020.02.10.15.42.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 Feb 2020 15:42:49 -0800 (PST)
Date: Mon, 10 Feb 2020 16:42:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv3] btrfs: Introduce new BTRFS_IOC_SNAP_DESTROY_V2 ioctl
Message-ID: <20200210234247.GA42667@ubuntu-x2-xlarge-x86>
References: <202002110752.yVTVX3YB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002110752.yVTVX3YB%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BzYAgsV7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Feb 11, 2020 at 07:04:32AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200207130546.6771-1-marcos.souza.org@gmail.com>
> References: <20200207130546.6771-1-marcos.souza.org@gmail.com>
> TO: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> CC: dsterba@suse.com, wqu@suse.com, linux-btrfs@vger.kernel.org, hch@infradead.org, josef@toxicpanda.com, Marcos Paulo de Souza <mpdesouza@suse.com>, Marcos Paulo de Souza <mpdesouza@suse.com>
> CC: Marcos Paulo de Souza <mpdesouza@suse.com>
> 
> Hi Marcos,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on v5.6-rc1]
> [also build test WARNING on next-20200210]
> [cannot apply to btrfs/next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Marcos-Paulo-de-Souza/btrfs-Introduce-new-BTRFS_IOC_SNAP_DESTROY_V2-ioctl/20200210-210646
> base:    bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9
> config: arm64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 4dcc029edbe4bd5e30d4f0cdcf123ea4ed2b6418)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/btrfs/ioctl.c:2867:4: warning: array index 4087 is past the end of the array (which contains 4040 elements) [-Warray-bounds]
>                            vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
>                            ^               ~~~~~~~~~~~~~~~~~~~
>    include/uapi/linux/btrfs.h:125:3: note: array 'name' declared here
>                    char name[BTRFS_SUBVOL_NAME_MAX + 1];
>                    ^
>    1 warning generated.
> 
> vim +2867 fs/btrfs/ioctl.c
> 
>   2838	
>   2839	static noinline int btrfs_ioctl_snap_destroy(struct file *file,
>   2840						     void __user *arg,
>   2841						     bool destroy_v2)
>   2842	{
>   2843		struct dentry *parent = file->f_path.dentry;
>   2844		struct btrfs_fs_info *fs_info = btrfs_sb(parent->d_sb);
>   2845		struct dentry *dentry;
>   2846		struct inode *dir = d_inode(parent);
>   2847		struct inode *inode;
>   2848		struct btrfs_root *root = BTRFS_I(dir)->root;
>   2849		struct btrfs_root *dest = NULL;
>   2850		struct btrfs_ioctl_vol_args *vol_args = NULL;
>   2851		struct btrfs_ioctl_vol_args_v2 *vol_args2 = NULL;
>   2852		char *subvol_name, *subvol_name_ptr = NULL;
>   2853		int subvol_namelen;
>   2854		int err = 0;
>   2855		bool destroy_parent = false;
>   2856	
>   2857		if (destroy_v2) {
>   2858			vol_args2 = memdup_user(arg, sizeof(*vol_args2));
>   2859			if (IS_ERR(vol_args2))
>   2860				return PTR_ERR(vol_args2);
>   2861	
>   2862			/*
>   2863			 * If SPEC_BY_ID is not set, we are looking for the subvolume by
>   2864			 * name, same as v1 currently does.
>   2865			 */
>   2866			if (!(vol_args2->flags & BTRFS_SUBVOL_SPEC_BY_ID)) {
> > 2867				vol_args2->name[BTRFS_PATH_NAME_MAX] = '\0';
>   2868				subvol_name = vol_args2->name;
>   2869	
>   2870				err = mnt_want_write_file(file);
>   2871				if (err)
>   2872					goto out;
>   2873			} else {
>   2874				if (vol_args2->subvolid < BTRFS_FIRST_FREE_OBJECTID) {
>   2875					err = -EINVAL;
>   2876					goto out;
>   2877				}
>   2878	
>   2879				err = mnt_want_write_file(file);
>   2880				if (err)
>   2881					goto out;
>   2882	
>   2883				dentry = btrfs_get_dentry(fs_info->sb,
>   2884						BTRFS_FIRST_FREE_OBJECTID,
>   2885						vol_args2->subvolid, 0, 0);
>   2886				if (IS_ERR(dentry)) {
>   2887					err = PTR_ERR(dentry);
>   2888					goto out_drop_write;
>   2889				}
>   2890	
>   2891				/*
>   2892				 * Change the default parent since the subvolume being
>   2893				 * deleted can be outside of the current mount point.
>   2894				 */
>   2895				parent = btrfs_get_parent(dentry);
>   2896	
>   2897				/*
>   2898				 * At this point dentry->d_name can point to '/' if the
>   2899				 * subvolume we want to destroy is outsite of the
>   2900				 * current mount point, so we need to released the
>   2901				 * current dentry and execute the lookup to return a new
>   2902				 * one with ->d_name pointing to the
>   2903				 * <mount point>/subvol_name.
>   2904				 */
>   2905				dput(dentry);
>   2906				if (IS_ERR(parent)) {
>   2907					err = PTR_ERR(parent);
>   2908					goto out_drop_write;
>   2909				}
>   2910				dir = d_inode(parent);
>   2911	
>   2912				/* If v2 was used with SPEC_BY_ID, a new parent was
>   2913				 * allocated since the subvolume can be outside of the
>   2914				 * current moutn point. Later on we need to release this
>   2915				 * new parent dentry.
>   2916				 */
>   2917				destroy_parent = true;
>   2918	
>   2919				subvol_name_ptr = btrfs_get_subvol_name_from_objectid(fs_info,
>   2920						vol_args2->subvolid);
>   2921				if (IS_ERR(subvol_name_ptr)) {
>   2922					err = PTR_ERR(subvol_name_ptr);
>   2923					goto free_parent;
>   2924				}
>   2925				/* subvol_name_ptr is already NULL termined */
>   2926				subvol_name = (char *)kbasename(subvol_name_ptr);
>   2927			}
>   2928		} else {
>   2929			vol_args = memdup_user(arg, sizeof(*vol_args));
>   2930			if (IS_ERR(vol_args))
>   2931				return PTR_ERR(vol_args);
>   2932	
>   2933			vol_args->name[BTRFS_PATH_NAME_MAX] = '\0';
>   2934			subvol_name = vol_args->name;
>   2935	
>   2936			err = mnt_want_write_file(file);
>   2937			if (err)
>   2938				goto out;
>   2939		}
>   2940	
>   2941		subvol_namelen = strlen(subvol_name);
>   2942	
>   2943		if (strchr(subvol_name, '/') ||
>   2944		    strncmp(subvol_name, "..", subvol_namelen) == 0) {
>   2945			err = -EINVAL;
>   2946			goto free_subvol_name;
>   2947		}
>   2948	
>   2949		if (!S_ISDIR(dir->i_mode)) {
>   2950			err = -ENOTDIR;
>   2951			goto free_subvol_name;
>   2952		}
>   2953	
>   2954		err = down_write_killable_nested(&dir->i_rwsem, I_MUTEX_PARENT);
>   2955		if (err == -EINTR)
>   2956			goto out_drop_write;
>   2957		dentry = lookup_one_len(subvol_name, parent, subvol_namelen);
>   2958		if (IS_ERR(dentry)) {
>   2959			err = PTR_ERR(dentry);
>   2960			goto out_unlock_dir;
>   2961		}
>   2962	
>   2963		if (d_really_is_negative(dentry)) {
>   2964			err = -ENOENT;
>   2965			goto out_dput;
>   2966		}
>   2967	
>   2968		inode = d_inode(dentry);
>   2969		dest = BTRFS_I(inode)->root;
>   2970		if (!capable(CAP_SYS_ADMIN)) {
>   2971			/*
>   2972			 * Regular user.  Only allow this with a special mount
>   2973			 * option, when the user has write+exec access to the
>   2974			 * subvol root, and when rmdir(2) would have been
>   2975			 * allowed.
>   2976			 *
>   2977			 * Note that this is _not_ check that the subvol is
>   2978			 * empty or doesn't contain data that we wouldn't
>   2979			 * otherwise be able to delete.
>   2980			 *
>   2981			 * Users who want to delete empty subvols should try
>   2982			 * rmdir(2).
>   2983			 */
>   2984			err = -EPERM;
>   2985			if (!btrfs_test_opt(fs_info, USER_SUBVOL_RM_ALLOWED))
>   2986				goto out_dput;
>   2987	
>   2988			/*
>   2989			 * Do not allow deletion if the parent dir is the same
>   2990			 * as the dir to be deleted.  That means the ioctl
>   2991			 * must be called on the dentry referencing the root
>   2992			 * of the subvol, not a random directory contained
>   2993			 * within it.
>   2994			 */
>   2995			err = -EINVAL;
>   2996			if (root == dest)
>   2997				goto out_dput;
>   2998	
>   2999			err = inode_permission(inode, MAY_WRITE | MAY_EXEC);
>   3000			if (err)
>   3001				goto out_dput;
>   3002		}
>   3003	
>   3004		/* check if subvolume may be deleted by a user */
>   3005		err = btrfs_may_delete(dir, dentry, 1);
>   3006		if (err)
>   3007			goto out_dput;
>   3008	
>   3009		if (btrfs_ino(BTRFS_I(inode)) != BTRFS_FIRST_FREE_OBJECTID) {
>   3010			err = -EINVAL;
>   3011			goto out_dput;
>   3012		}
>   3013	
>   3014		inode_lock(inode);
>   3015		err = btrfs_delete_subvolume(dir, dentry);
>   3016		inode_unlock(inode);
>   3017		if (!err) {
>   3018			fsnotify_rmdir(dir, dentry);
>   3019			d_delete(dentry);
>   3020		}
>   3021	
>   3022	out_dput:
>   3023		dput(dentry);
>   3024	out_unlock_dir:
>   3025		inode_unlock(dir);
>   3026	free_subvol_name:
>   3027		kfree(subvol_name_ptr);
>   3028	free_parent:
>   3029		if (destroy_parent)
>   3030			dput(parent);
>   3031	out_drop_write:
>   3032		mnt_drop_write_file(file);
>   3033	out:
>   3034		kfree(vol_args2);
>   3035		kfree(vol_args);
>   3036		return err;
>   3037	}
>   3038	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Reported to the mailing list:

https://lore.kernel.org/linux-btrfs/20200210234158.GA37636@ubuntu-x2-xlarge-x86/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210234247.GA42667%40ubuntu-x2-xlarge-x86.

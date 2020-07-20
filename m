Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3F3274AKGQEWGNYJ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDC2226DD8
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 20:09:50 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id l7sf11747213ioq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 11:09:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595268589; cv=pass;
        d=google.com; s=arc-20160816;
        b=AOZX1fZZ9bhfyFs/4+uaLah8WATZudKfU1XpbH3OF/msOP4CkTFbbvykfn6ocXA/gS
         ew4TuRe0yfcn2SBN3/IFMZ3zLS+Z8vqpR8mttC/9cZ+CBrCu7WJayWQ3zxN8sh41uPOP
         Qr17dGhvZF5b/so3kYXfvpqVrsNxCVXMsWHsZ6+7Rx6BpG2XmqF8dkSCmG3IgrZXkx7i
         PlnCoF6pVuP1deBgQ++9i7POsczsz0gr4YyP+l3e/2AvHVmpvTNsL4cgMuT/QM1o+5yt
         GiIBgj0VMWHXxm1xIyNdJen6oPNVOGuEIlot8LRPWXKtiHer9kLg3cxQM7ei44eVk/sx
         0EJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JWrVtxvrUVIBq4rtyDljVIIsQ86yobFPm81WUycEyVY=;
        b=fjSYKIBUDpvUGVXsE+EYD4KqBW6WdnA/ii+QQ/z+0xZQ/sFyHzhYcaZ6YymFm/4E5V
         8uybqdayPslzffby5kFoX0KsUJVhjECuTC1qlzBwCdfD2Stv2LsNikrgJNOQWrqGQV75
         MbPMlrXPOPiXYP7Fqv6tIRAcDrD1uqR7s1cjH2ek4oqO/5OGdpuSZsfRfS32uM/ndqcd
         HU7uUSU+s5s9Aa6Fk3XKnCLs3LBnKCo4Vt0Zme9TnjZcaQQc9PnOw7hddfOHPHwvzOkX
         umgJJm23Iv8T68/jhyWhlTDtGxNQ5gy5mLG/CNUVHFnXCts0wI++avDUgwXlzVnht5ax
         XGWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN8yesRP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JWrVtxvrUVIBq4rtyDljVIIsQ86yobFPm81WUycEyVY=;
        b=cLgdO7oUwWAuyvXwjKTyopJegqI3Y1/tOMhE4jxlp50kbhtOLIf4l8VEsncHwUIhup
         cRjVL4kCEvVkjwMbEF4+2aY9MxihwUlsLzj2Re+R29xI/0pFVPBz9NE4N4jGJxWNuvE0
         PaOEYI7Lmfai7DFPUFTGeuoVA/7LdSYqN/+m75RWTvolHWA7sKei5SGWE9AMD+Uroc2N
         BqSVrk1qdp7wiFDkv3A70PehoGyh/44O/biMpBncnxr0jrmlkNhuxUlpidMmtIbfNXEC
         TwQXGFfopizovZsubWLkJW6XR6VXbPWZC9YwD5h+6bpHhKaWyD5UPD0OWQb34W6xo3V7
         vmng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JWrVtxvrUVIBq4rtyDljVIIsQ86yobFPm81WUycEyVY=;
        b=GpsXhyi7pcGryMxrkrxBqE8rqJh+OMEjeZz22TkhW3UGQhvahCW1WzYyame6aWogvF
         ++7DSqkXdgK8bs+G3ZwlX36EF5edhAw+UEW3OJGgQYmt9Tm1AtW4mZi3tkaYcpBX+OCy
         t0FdNyHnr6iosJ6PcP+gvRecxHodyJ5BD1NRWCWqeS+KuJD6+YezeXZQYmfRbR74vUiL
         FQg5nCaiiSK1dYrL/MX1lTYesFymS6EaUNSuOydWX4lTgxWbMbVTTy2k8DAoY4iS2jok
         VjbYecHKpPbgoWDw77ehutWzekgyroxF4LL9HTSdm8OmPsz1W2jHoFXml1FAscemH5Z7
         0Q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JWrVtxvrUVIBq4rtyDljVIIsQ86yobFPm81WUycEyVY=;
        b=HUrKL1GrHEmzl0XyoFk96N1bqagcy3SL5dOKYjt+pgeEEdt4mrO4U5aHCR/1JrVK2n
         awFD0KaAdCTtqdxiqdpwOCaPa50blJ2vNQcDzOBhrPehnhb8v4Z1OMqJuFjjI0s8HoOp
         pDX3779YTmOT2M3PRZTQbtowRqEC5f+T6NWuxGMJ5boDrVC9NFVdTCcbAJiKdmtByYMK
         nyaagU+y8uoz7QvftxDZNkJuLsEkyGq/415FBARdutJe2HeGQ6W6oPs/CZk48q8hLUDp
         RlA6usCdmliPPXCYVJZoWX7v3gp1lRQgn2Z6Bx6WfmUQ/X1pDvneNwkmzV9BCvdDOgbV
         1v1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533srm2UFlYY88kM4qimFFnnpzkhpP0NHTMRhW1sYSsiLj2HP1dL
	PWcT43uCjFiK32PrHFARTNo=
X-Google-Smtp-Source: ABdhPJzV81giVFF58+nS0wq8uMQFFdNF/lww5iwzo99jvUPENb6Hxo3zVFJKOOxCbrKEt1m4oucSxw==
X-Received: by 2002:a92:d30b:: with SMTP id x11mr25307314ila.175.1595268588870;
        Mon, 20 Jul 2020 11:09:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1549:: with SMTP id h9ls3134958iow.4.gmail; Mon, 20
 Jul 2020 11:09:48 -0700 (PDT)
X-Received: by 2002:a05:6602:5c3:: with SMTP id w3mr19917266iox.3.1595268588561;
        Mon, 20 Jul 2020 11:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595268588; cv=none;
        d=google.com; s=arc-20160816;
        b=Ev2WoI3FJ3FFFeRz0I61or0IIShsXZHgW/w0Y6UvnMgOe3tN3UDULvE3jkQOAVy++c
         XmSJyUXVYc+/IfnhzuZ4bRUhwXwcF8IZl0NDcNkrf+hVCJqg+ZlboLEit31zQMaq+Q3Q
         gyqKNzE4Moz1vT2zXrij8vWllnNTitygfFGkcAiFrK5UcL9UmnNDb9Gak4GvWOHnOQL2
         X/YSngcyCF8WaMM7Pdu2BAbtzKcpBSNb4KFhMF+FLBaQRjv3t7jSdFpiejK6ty6YhdQ/
         6KpjmDNquR3muVj7RBQCTk/5NXiyoP0LulPCmyjVTqx3iiwm58dYutHa4asEDkbdfulX
         jwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dwEJsfwlCgYoOoc7ZO6uJZf/vr4ZXlXX4a+d3KSul78=;
        b=wQ+6rdr4KRI8rWnWEc6jA+2awfQAjw+B76mdHLpW914zaYFXWs2PUVoVDFLkFR4tyK
         ceIscwOIfRkY1b0tqFVQhU3qINWfQRixQN795b3LC43f6lS38lsy2TaGftCStHavPojN
         SQIX54HFNeiNUG3v07KD/Eqr7Y9mN//shOBqJR7Ejco7UKAQ3EMYMjkgIk2Sv71Qczn5
         PqbC2WaktReO6cSSblC1ROdoHZQaLKhG35/IHJudOaBfXGaa6Tf8r97g2Tx5UwJJI/GS
         Fl7XafPN7W/6DSPSFlfzaz/lOAha1ZMzOHoAAZpqeqVAIuCaQRkFRZYG4rOkMLQRpiAk
         QZNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN8yesRP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id z71si856477ilf.5.2020.07.20.11.09.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 11:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id j10so13868919qtq.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 11:09:48 -0700 (PDT)
X-Received: by 2002:aed:252c:: with SMTP id v41mr25356387qtc.234.1595268587842;
        Mon, 20 Jul 2020 11:09:47 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id x3sm274009qkd.62.2020.07.20.11.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 11:09:47 -0700 (PDT)
Date: Mon, 20 Jul 2020 11:09:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Cc: akpm@linux-foundation.org, freak07 <michalechner92@googlemail.com>,
	Anton Altaparmakov <anton@tuxera.com>,
	linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Message-ID: <20200720180945.GA6045@ubuntu-n2-xlarge-x86>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tN8yesRP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jul 18, 2020 at 01:25:13PM +0200, Luca Stefani wrote:
> Clang's Control Flow Integrity (CFI) is a security mechanism that can
> help prevent JOP chains, deployed extensively in downstream kernels
> used in Android.
> 
> It's deployment is hindered by mismatches in function signatures.  For
> this case, we make callbacks match their intended function signature,
> and cast parameters within them rather than casting the callback when
> passed as a parameter.
> 
> When running `mount -t ntfs ...` we observe the following trace:
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
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 27 ++++++++++++++-------------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 18 insertions(+), 19 deletions(-)
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
> index d4359a1df3d5..9bb9f0952b18 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,10 +30,10 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:		vfs inode which to test
> - * @na:		ntfs attribute which is being tested with
> + * @data:	data which is being tested with
>   *
>   * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
> - * inode @vi for equality with the ntfs attribute @na.
> + * inode @vi for equality with the ntfs attribute @data.
>   *
>   * If searching for the normal file/directory inode, set @na->type to AT_UNUSED.
>   * @na->name and @na->name_len are then ignored.
> @@ -43,8 +43,9 @@
>   * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>   * allowed to sleep.
>   */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
>  {
> +	ntfs_attr *na = (ntfs_attr *)data;
>  	ntfs_inode *ni;
>  
>  	if (vi->i_ino != na->mft_no)
> @@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:		vfs inode to initialize
> - * @na:		ntfs attribute which to initialize @vi to
> + * @data:	data which to initialize @vi to
>   *
> - * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
> + * Initialize the vfs inode @vi with the values from the ntfs attribute @data in
>   * order to enable ntfs_test_inode() to do its work.
>   *
>   * If initializing the normal file/directory inode, set @na->type to AT_UNUSED.
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
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720180945.GA6045%40ubuntu-n2-xlarge-x86.

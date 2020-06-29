Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTGC5H3QKGQEM54KNWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A825C20DD2E
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 23:46:53 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id h15sf11820463ioj.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 14:46:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593467212; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjiBEfThgF8I9pz/q3Lo6Fj4nJ1DHSI91uvE8OAeW7k4BUfCWshjZzneP/u+RiFzS8
         5aJQSDT5s1hYkyyaWjziA8qJlyma6ANokXLu3G3V9312Wi8MsSpJfQsT7HuocZNZFcQx
         rbqj+E6c5fsed3dWTsC/k1fAMCl2O+t+E8+6gBX/oz1rsX1MxILvedGgcHfResDY0RdZ
         D4AlubZpJthSlI5O6F0z2f1xbwX3GG6Ik7UG4NEjEX/gOWHO99rOLdGO4fxqEigsHw5b
         n/4H6tkbkpguxP4hBf12+1wwghZd9KL6lBqX9kS+RIGQsM7HLuvfLOQYKfM/KgyIy3rE
         yVyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gybNJasPsNOGoKQQA+ALa4S6N3mMz3TrA5Ge/y/+4xU=;
        b=s+GB+sDBqqriBE59heeccNa471VUXUvHihhEFAiHL2U1wtjD0w37Lwu+y9zIXn8Lrg
         mo9VLkv1RjdLkcMdpxIAdTm8IJVxYPl/vIee1rv02IM6cvSxqiUoTzR5TnOutJ/fYK1D
         wqUtHI9kaRIyJFuV2VqxK84vZxslaXxcdI9f1CKRsaLjUBxqA5G7m40f5dPUuu9BeR37
         o9UuffpPJ0+0zsb9MOV5v8zll3VllyGNTgzo6XXLlu62h4Mas6Ko++dSLcv3nm1+WuIF
         l+/H9dRq5aY415jfrjt11DdzTGgzxbC4yh/SrqAgZYVT+JC62VPDGtc35OiXANMMXaYp
         Azrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VRvSW+Uk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gybNJasPsNOGoKQQA+ALa4S6N3mMz3TrA5Ge/y/+4xU=;
        b=Zj7CCD7CE13p0DyRBEmAE+mRjOOnuUe/l3Dvn7tAcUsCZr85nSuaBrb0qG1Rl9Dq6F
         iNcU04HBauGbLbcCKhS9V8pUf1fkcgkvJlzKCGev6tiYoW1dUur6t+bRTJvRJN17tQM/
         BF/yi58Wmu+cWm1wD/reVkBwvpB5k5I59Nk8R+DYVQtapi6gDfI1sXRyOZq6dBVuevbW
         vuyn9cQn6Xq4CaEX4tXyQzwsriPt9pcPjwYoFmi+kYFbSuC2Q2eQTHMUw+HOetUmyj1z
         4h7A6/j33tYA2p0uBCQEApJ0pYVXUgwEN79WAEpTDN2AeHyLnowic2n0a1pTnXA835cY
         LNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gybNJasPsNOGoKQQA+ALa4S6N3mMz3TrA5Ge/y/+4xU=;
        b=kUH4RoxC7C7mJ/d+rVSbnad7IofydXy7Flplh7EZOTe0pTeWLF/GyhdHg3qExdPNkY
         eIfCRGcd/x1uXZvUPWqqbQwot/YJzVNFwxI7ByDxAFbkDc9D9lwW0K7eLZmMT1AFATfZ
         z35rvgLp18hT1UOjTGkYDB9lficyfzmd73T3/n6EIvdgOVZjsg0rrhfJ3gmzTahV6QBj
         Co3qul92qicEijbJYHihwtwUflErIhDGQohUgSBlvdnOfSsiC+80nk9+vsyHXNjh1ayu
         ofpt+SdQnwKyk3s6TDLFewysaW/FD+g5ekHGke9I9TH0CHKdIhgI5FSPdXyQcUBobtIk
         K+jg==
X-Gm-Message-State: AOAM5328OBkz5ZGIm6qT8otWd20LxSbXRBiRIryEs8iYecZ42X6jcjC/
	zjVekbb025XJbtYrz9x+Ex0=
X-Google-Smtp-Source: ABdhPJwZzu0qefYSGCgM5IPg7qfsIsxJI8xTJIjiO8s8uBkUHWcL/1oLCyW4xFdIzpf415m6RZ0DaA==
X-Received: by 2002:a92:db01:: with SMTP id b1mr17541193iln.249.1593467212177;
        Mon, 29 Jun 2020 14:46:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5812:: with SMTP id m18ls4910793ilb.2.gmail; Mon, 29 Jun
 2020 14:46:51 -0700 (PDT)
X-Received: by 2002:a05:6e02:1070:: with SMTP id q16mr16909210ilj.221.1593467211749;
        Mon, 29 Jun 2020 14:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593467211; cv=none;
        d=google.com; s=arc-20160816;
        b=IG1ESaQp14QDacpaPghaJ1nUFICJqqoF98UCxvVHHFIAZRsCAMccxhONwsFYMMfZv/
         i11Js77SORo5OLSIWqII5mtB4VLT4tM4zYUw9KbcdHV/Csf8FzJ/ITt4KsJBw1UQpsUb
         sBjTWkEiblZeBIEX4B8tdTBKHpcyXT4geU1N479TKNPSZbTleLkvvXLd5rbmX2TibdHh
         sV13jIx5JfXGUDS/kS3aTgJ2mN1v34QcONLNkQ3ku0rSuSgCPW+yjQk/6vg9GaH7utQq
         D/BpRtY/GDvASt9M3Yn/lBchzUJHOhdrA89ayellFx5epZjvMUs5m/ckpMPIGaPxL3s6
         4pmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xDU696YPFQFByaDgj4TaIBYY7b7GogdeGS2pZGLrlCo=;
        b=WoDBCslmXYOuH8UMmLrrOcOxdnvttKa/VlRLwNiV+YdoWaw8EvXzOMhhxuea7CGaRW
         Y4XBFA813ui3xuxPFj+B/ipHc/YBi/5Y3ajEJU18IL5lcKv5gtTJBRHwC/7F1XCu8LVD
         Ynj+Hz4i4MEGEXGncgPCEmG6djFtK8Ua++9+Kop0OdqTmiOEeaLkm5i33YlA9QnFS2h2
         /u7a7W1TwrXaPJyBLQ1jxYMZoBmQwWTIontiycMcpAkzU/KvZbes6O/HaNrRyGgwN0iy
         Qglhi7VC2Ba9spCvjHgOz+S0e7opbHvQSYx8iUm4Xc1DLh3IZv2nUqbws31gdKIDOyXI
         6Z0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VRvSW+Uk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q80si87129iod.0.2020.06.29.14.46.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 14:46:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d10so7612340pls.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 14:46:51 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr20001058pjc.101.1593467210715;
 Mon, 29 Jun 2020 14:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
In-Reply-To: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 14:46:39 -0700
Message-ID: <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
Subject: Re: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	freak07 <michalechner92@googlemail.com>, Anton Altaparmakov <anton@tuxera.com>, 
	linux-ntfs-dev@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VRvSW+Uk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Jun 27, 2020 at 12:02 PM Luca Stefani
<luca.stefani.ge1@gmail.com> wrote:
>
> If the kernel is built with CFI we hit a __cfi_check_fail
> while mounting a partition

Luca,
Since CFI is not yet upstream (is downstream in Android, blocked on
LTO patches currently working their way through upstreaming+code
review), it might help explain to reviewers what CFI *even is*.
Something like:

"""
Clang's Control Flow Integrity (CFI) is a security mechanism that can
help prevent JOP chains, deployed extensively in downstream kernels
used in Android.

It's deployment is hindered by mismatches in function signatures.  For
this case, we make callbacks match their intended function signature,
and cast parameters within them rather than casting the callback when
passed as a parameter.

When running `mount -t ntfs ...` we observe the following trace:
"""

I also always recommend setting an explicit `--to=` when sending
patches; some maintainers only know to take a look at patches if
they're in the To: list.  Maybe they have email filters on this.  You
can you `./script/get_maintainer.pl` on your patch file, or manually
check MAINTAINERS.  In this case, it looks like Anton is cc'ed at
least.

Since this patch modifies the type signature of callbacks to the
expected type, casting the callback's parameters instead; I'm happy
with this patch.  The callbacks never get invoked directly (not
explicitly called, only invoked indirectly), there is no argument for
loss of type safety (the interfaces are already lossy in that the
interface uses void* parameters).  I just would like the commit
message beefed up before I sign off.  Are you comfortable sending a
V2?

More on JOP/CFI:
https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf
> CFI has not seen wide deployment, likely due to concerns over performance, especially in the case of real-time enforcement.

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
>         na.type = AT_BITMAP;
>         na.name = I30;
>         na.name_len = 4;
> -       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);

Looks like the signature of ilookup5 is:

struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
     int (*test)(struct inode *, void *), void *data)

while ntfs_test_inode is:

int ntfs_test_inode(struct inode *vi, ntfs_attr *na)

while test_t is defined way below to:

typedef int (*test_t)(struct inode *, void *);


>         if (bmp_vi) {
>                 write_inode_now(bmp_vi, !datasync);
>                 iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..a5d3bebe7a85 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,7 +30,7 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:                vfs inode which to test
> - * @na:                ntfs attribute which is being tested with
> + * @data:              data which is being tested with
>   *
>   * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
>   * inode @vi for equality with the ntfs attribute @na.
> @@ -43,8 +43,9 @@
>   * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>   * allowed to sleep.
>   */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
>  {
> +       ntfs_attr *na = (ntfs_attr *)data;
>         ntfs_inode *ni;
>
>         if (vi->i_ino != na->mft_no)
> @@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:                vfs inode to initialize
> - * @na:                ntfs attribute which to initialize @vi to
> + * @data:              data which to initialize @vi to
>   *
>   * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
>   * order to enable ntfs_test_inode() to do its work.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>   * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>   * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>   */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>  {
> +       ntfs_attr *na = (ntfs_attr *)data;
>         ntfs_inode *ni = NTFS_I(vi);
>
>         vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>         return 0;
>  }
>
> -typedef int (*set_t)(struct inode *, void *);
>  static int ntfs_read_locked_inode(struct inode *vi);
>  static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>  static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>         na.name = NULL;
>         na.name_len = 0;
>
> -       vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>         na.name = name;
>         na.name_len = name_len;
>
> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>         na.name = name;
>         na.name_len = name_len;
>
> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
>         ATTR_TYPE type;
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
>                  * dirty code path of the inode dirty code path when writing
>                  * $MFT occurs.
>                  */
> -               vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +               vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>         }
>         if (vi) {
>                 ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>                 vi = igrab(mft_vi);
>                 BUG_ON(vi != mft_vi);
>         } else
> -               vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +               vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>                                 &na);
>         if (!vi) {
>                 /*
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200627190230.1191796-1-luca.stefani.ge1%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA%40mail.gmail.com.

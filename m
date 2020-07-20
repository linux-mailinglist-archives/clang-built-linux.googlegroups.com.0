Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2UE274AKGQEF4YR4NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A802922677E
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 18:12:27 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id l17sf1581413ybe.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 09:12:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595261546; cv=pass;
        d=google.com; s=arc-20160816;
        b=IsVrIdT+TVRCVkEoVxn/gCpu1Q2NslaEOt9E7d7C9avGCo56oG+69CzOrnvrvO3TVd
         P1mcKFGX7CIHRW6mqdZeW91j2McbDph7Tjj7jIZw3IYfwJwFGIJYhjBieUzoctpuuomi
         jzYnMlmobG/tYtQ6Aj7ncDPiVOvqmNvrn8lxHFV6IKOdAYTtsVunjdRu7oeVmi7ga6OB
         DKM61N+NS51lEPedVvRlrF1N+KXC4Dn4YhVgFGLDbHBHDuNfbcekKSM6aYLwZZR2ceQm
         isrVAOKfE4NVajxwzm9nIZ/vA+hEWckutM7deGP5VS0XQY1iVP5ABmkVA6f+HSm8KzS4
         yeJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MQ9tFZjrxdQTrgJi5AwXxq3fB+L6DJ28LlPsBV4DTpc=;
        b=sc8KzbpCAD2wbF0vG3TScQ/CpVvMQvlzltycoaY9RN63eZrqVUhEFsOZkwiU/ts3qe
         Br4XZ1eDGExu7M4iOSuEoP4qXWuFJwPIKQbVlMgUptfuoAEsTeLhf+Vtmc7Ga5wDXtm5
         p6vWBmop1aRJNXzRXA3XhxZuS4QAnOOB8M/ulieUl3xJ7t2PSMrYsO8X9quGfbpJ/6J9
         jEribjhDqJpgCrxoX2KEoEugvgSvZV1O2Z0MW6v6suaWGQGsWIJFBnDkzRM2+HMA4bEe
         enH+0SXfydyoPKI9ypLSXzzPYzgvTcKjmg+pnszpzRRHtD63jYT1Oi6J2eplS53XLqYr
         mXZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OJrAnC24;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQ9tFZjrxdQTrgJi5AwXxq3fB+L6DJ28LlPsBV4DTpc=;
        b=Eu3QBU1OmPp+Wv8sUF+fkGeQY5Qyjy8SgNYEXmxT2bAcmZh6K+4b8cTAijF+UpIz1l
         xvQbNqYYoCk9wrHTo2DbnE31zekz0Z9NzRBOotiEhDaE/yAB4Cnh/0q8q9StsvBgNopr
         zyXx5bVv6R55xqZtKRIvklJOjF7MpxO1VDAXesSoM8Rq3JqNSqN8nFFUH6mlHysDTnSq
         3hEFhkHqFw0vrCBY62XEHsS6WpFctk8IMBa4KtdYVWJO669OQKlrtahKSffOLjzZYlgr
         OsQ5HumE/CdB+CS0pSuH4MsA4Nzc1o1lSBLq2RDzNOeiHJxtKPSbQ+mDYKZl/SCfaFHu
         WJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQ9tFZjrxdQTrgJi5AwXxq3fB+L6DJ28LlPsBV4DTpc=;
        b=pFDayz5lKC2ypXDs9Jqq2fKolYHF3QBiGXsB3WyaljIRfiyflP2DSNkGy08g2hJRug
         b1oGEX7dml1kH46eYyMllrIA8EDtuUlRWr50g248zupPOarQuVBU/QYxj/9xzlJCtmng
         onokI2m14+z4jHSRrjcxXZwedjdGeeCX8GrJARVhxmYOIhEt+zY+FI28wmbc7tDYZ8Xd
         BA3kHAA87eziNGC/lKEguhySteByVtTezRQWqF30sm7foPKepPVmDfjQRhhJbxG5LF1l
         eZwBawYoCmrltmv8G2ipqwl3KDwTDA4/wTvVrqj76bxhwICKR5vWYQQpXDu1wQ1Zr4oU
         MkUA==
X-Gm-Message-State: AOAM532tqsUJkzZZkT4yDeQFQbaSiYj+GWOsyKPa18Egh9gwO8ik5g4d
	DKMYWrS6bOuNvPcNo+iCtV4=
X-Google-Smtp-Source: ABdhPJzIo/l/lZzc3J2/rZjMI6E5w+fYJMhMODGqlP6Ja20VovItq2Ld9xDV045JVsPsFIeBLSelaQ==
X-Received: by 2002:a25:4dc4:: with SMTP id a187mr30850145ybb.422.1595261546297;
        Mon, 20 Jul 2020 09:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b09b:: with SMTP id f27ls122015ybj.8.gmail; Mon, 20 Jul
 2020 09:12:25 -0700 (PDT)
X-Received: by 2002:a25:c711:: with SMTP id w17mr37721074ybe.109.1595261545880;
        Mon, 20 Jul 2020 09:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595261545; cv=none;
        d=google.com; s=arc-20160816;
        b=DS+0zHuhVLCDPubCv9VYQR+T0zULDAIbMGrsPuM+zjkfBKJFHbg+kGIN64q0rFXENo
         AHt3A/YIA6ZhbVIDMZfs/epwjLePLV7bTjmHcPemFBGb3veCaH3U9xJ3mJJGSjXEmoXC
         KGzTiqy9/vfQWBKP/6Y6Pi9Wdlj2uGZJFzZh2LLf05g+hUxrbqL/nuAz7e7Rhn701Bla
         2+lxb04b0UuS1sbRbVRIDXQh30OZTfDyPOpCWgK9lMUYQu5Rz3Jxe6HhJ5Gjle0RNfXr
         469Ydxq2DfgSs2uRheYSHqtDq7ZnYr9QCiTUaZEuh4qproeIbnt/NB0VkqPqgPWxpj6I
         EuPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2F4okR0544vetAlDfB7iTkE3QWvIeEOYCah5TZgQj2o=;
        b=a/7FOOM+ooAwdtUIw4opn0T0lQCRqfYUayirJTv9KuBd1QmyflB1L2ZuIi5csd+y6O
         FvbbX+zULK4cjrlzZ1INCxOKp/C5rnGjhDIGZh7b7n4te1Y/L+rtWBc1i0rOOnHgLMrr
         LLPd93ZI7qE269X3nXjj8z8he0RoG9UitOpGDT5fk1B24sqpSLXNqMUdk+oAlq97S175
         82VjMtpmVO2VxZ86Gj9O97KwXUhMn7qceHkvyM/dvwr4m4tVCOapequkpeZ0of9m9gjx
         lKJ15q5abSNxD00q+T+xlewPNu5J7ijlye74wxAKJNcqp4MJQx3HwYK7X8X28ukm6BRh
         Y+QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OJrAnC24;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n82si894311ybc.3.2020.07.20.09.12.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 09:12:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t6so8880606plo.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 09:12:25 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr170399pjb.32.1595261544607;
 Mon, 20 Jul 2020 09:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com> <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 20 Jul 2020 09:12:14 -0700
Message-ID: <CAKwvOd=wVeUuxcLThf0hr+CL0PhjLjUtXAqwrF9S6-qzfWOxDQ@mail.gmail.com>
Subject: Re: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, freak07 <michalechner92@googlemail.com>, 
	Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OJrAnC24;       spf=pass
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

On Sat, Jul 18, 2020 at 4:25 AM Luca Stefani <luca.stefani.ge1@gmail.com> wrote:
>
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

Make sure to set an explicit --to!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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
>         na.type = AT_BITMAP;
>         na.name = I30;
>         na.name_len = 4;
> -       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
>         if (bmp_vi) {
>                 write_inode_now(bmp_vi, !datasync);
>                 iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..9bb9f0952b18 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,10 +30,10 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:                vfs inode which to test
> - * @na:                ntfs attribute which is being tested with
> + * @data:      data which is being tested with
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
> +       ntfs_attr *na = (ntfs_attr *)data;
>         ntfs_inode *ni;
>
>         if (vi->i_ino != na->mft_no)
> @@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:                vfs inode to initialize
> - * @na:                ntfs attribute which to initialize @vi to
> + * @data:      data which to initialize @vi to
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
> 2.27.0
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwVeUuxcLThf0hr%2BCL0PhjLjUtXAqwrF9S6-qzfWOxDQ%40mail.gmail.com.

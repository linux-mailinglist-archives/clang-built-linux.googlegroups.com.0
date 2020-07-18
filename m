Return-Path: <clang-built-linux+bncBDZJBK6SRQDRBOWGZP4AKGQEIOJZ6FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D5799224B0D
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 13:55:38 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id l5sf11686135wml.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 04:55:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595073338; cv=pass;
        d=google.com; s=arc-20160816;
        b=UA0ofjuvpu/rxI7Pkoiw+W0NJ5ak/5ayjfQRQpxDFqqVn3z8b6hFCdwrHLOs4EW/kM
         7m9ZbUaeZJmyfWxeD97qCAXhvWYj3WE8Eaembe1w8EogP0Zgc/WuL+fQ2KVxpMav5Z0+
         zBoIwjrJ07Uwflse25LHN4ePGWmIRKs6UPxyLEBl8GXBugVaPjufPsBXzqKJ8XQMbdTX
         w86yNr7Pm0iFmhaz20FnMZi1ArcslglBeJFK3kabq8up10S7SWuHES9LTSCZZWbbrdqh
         JeY2lsoC7aB966HEXum1AllaM9qkL4lnO56IK1bC3tnbtACERp/zHAVUk2nFa/uwYSCt
         RZPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=qvnG0o2AZwv5z52NBHi0NuF5cJbHd9IBbPzdxHjLQpI=;
        b=RRORhdOpLwNcVcYd1tmx+QOFGgvvn8iIMtJu5gYo3fAULgfNCqiE0EfXfxQP0zYn6g
         7VbGp7i6UGtZ8ZhyAJM+AtWLLyZ7Ll7g9VhMqNd1t5D9/eelqjoqoeZRmum2MLDHFnFg
         KYtqDn7Ah1oJ9SreEvzAkvogWw19mmUSN/LVREagJgLtLm8wd4SiG2SZNNQYTq+UrtvX
         wWUCXB8r1DpJIPAsFsMRwmtK1O/ZNH6+yTyB//vN/n/R6MEP9iWj/JMY58c3BDErFhs7
         LlfliJme6q3Rrp88iw48xV1CfEwGLOyaT6nL3gssohSC6LHGQNoWK1r+7B/bd3oKNEX3
         Iocw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of anton@tuxera.com designates 82.197.21.90 as permitted sender) smtp.mailfrom=anton@tuxera.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qvnG0o2AZwv5z52NBHi0NuF5cJbHd9IBbPzdxHjLQpI=;
        b=QNTBpmlr9TRYCPnmNi1Dj4tv2ei4VcpcfYu7AaDj76IVILihBUDcsQFjgp2Q+PNZBB
         QP7ZVmjHndZ72X3qWoBv0o4CUO0SbCHJyDbmbwqkcqQeYxl+td2b6rVYvNWnMEVkXqoD
         jxaR3+2ilcTVf6TpKOMc1pkOcMcwQXJa01kx415i/Mrm6oWsD//v3OxgmMtPxBucVcSq
         9by9nnTG1B88IHb1WM7EU6nY5MlHtPKbFEABrD/GmjHp9muW9RqlDkJuDs+CZK2MPKh6
         ff6NCtyn+KnUVvBd76LpaIpMb6lV3RHs4pD5yGz+KeSJ3fJVa/6YsaF3pfxu60QPgQno
         J6Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qvnG0o2AZwv5z52NBHi0NuF5cJbHd9IBbPzdxHjLQpI=;
        b=Ew/j4v2n9gH0umQBBJteAn/eNspNaM4KoXm0GGDNNqdRmPaBXWUxwEof+lhewOMIcX
         k8GNAmCdrL8uhpRT1MoykNzr4FadfXCsh5Lg7tukaOxKOtusvJlwivQ84H44ieMYVzF8
         UbePW5pR2K0ooQ2FtCUHA7i5nSe5hkx1kq2aUc3Eh5el0E8v5lIXqBauG4W5ObIO8+V7
         5Wg74r+4UzHWG1+EqAo+DctwgYVmaw+gc+tu1yRsvae5qqExsvl/iMQN1mDJj289zVaD
         6Id/XuQqfc1zPYWC2Gw+z+SG3NaK7T+niZy/VUXPtxDWc5UB0ICzg4fYntnP/PnmaNGb
         uREg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TGITiubcsmbo1v78+0obHcIyfYOZHg+BTWcez1JVSUIAJqrdM
	Rpp4ZPKbnpWccOn/WbEiTwg=
X-Google-Smtp-Source: ABdhPJy9PZQslwVQRaLqSAVzsTtxV8bio6dy4/kIi18CEotJAOvcHvAModQcBY7NbTxUvN7LzRGTBw==
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr15032912wrm.92.1595073338570;
        Sat, 18 Jul 2020 04:55:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ece:: with SMTP id h197ls5046446wme.1.canary-gmail;
 Sat, 18 Jul 2020 04:55:38 -0700 (PDT)
X-Received: by 2002:a1c:2e57:: with SMTP id u84mr14272891wmu.52.1595073338068;
        Sat, 18 Jul 2020 04:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595073338; cv=none;
        d=google.com; s=arc-20160816;
        b=xMi8NKa19pC0wFG6kZ1TLWK7S8Z6F7RJHweKORv+Qdx9LzhmXS5ASXWvSQ523+jqS9
         KkkmTEqlMOZ8SIKGPRBjgqyYvRwo/Yna9pWtpDHQaUWE/lY+hx/fssiFyEPjsfZb65dy
         wRhRNdQQ/tJCbPAvkGQe+Ov7IfFlNdBLNHJmNyRtb3ZIzDKyi53PNPNYl8qTEqQb11R9
         I25m/rEnCJJombcAXxf+QZVU8wiBBQeO4SFsvYmwy2k8fwB3tVBCG8sLiWB6h0Mqgd2A
         MdVT9NB8Jf6mUwIDgOTjzP/UVsKCLmElJemijXptz76ybduxSJaOcgoSFMOlA6p/u4VD
         G4kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=L95QvFdNAtSvbQSTiAGcpuzObV9ZanvJfIutWNGxQvU=;
        b=rzapg/OJqv/7Lh1mUsmxkv7S/sNLv4AsxCJpTp1SIH7ft243DBuGUCNhvDkkHMittq
         jSbT+RVFtdkiVQYpRxuJh6wccp6OPjwIOv3Yk8oJLpezJoZA4scquJrnW6w5RZG+xxhS
         o0BDLFSniVuMWE19HL8RwmFCyXGYCQrC8G9Yl2d0sWFfruPxaEYMaOQiZRVwSw46lPXb
         sS2Z/s2Hc2msJoSQ066SQ0AMxGBPSVP953mANxGXJeyXazIt3BmS51oMGky76NrGf+oN
         9ADZQ7qfYItxVywCdjRO5ONtEsHV05Upcelb1VVvWDfrWhIp8pQmotmmDfIpmtPQ26Ky
         nUcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of anton@tuxera.com designates 82.197.21.90 as permitted sender) smtp.mailfrom=anton@tuxera.com
Received: from mgw-01.mpynet.fi (mgw-01.mpynet.fi. [82.197.21.90])
        by gmr-mx.google.com with ESMTPS id s130si534593wme.2.2020.07.18.04.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Jul 2020 04:55:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of anton@tuxera.com designates 82.197.21.90 as permitted sender) client-ip=82.197.21.90;
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
	by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 06IBt86M022075;
	Sat, 18 Jul 2020 14:55:36 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
	by mgw-01.mpynet.fi with ESMTP id 32bvr682u4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sat, 18 Jul 2020 14:55:35 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 18 Jul 2020 14:55:34 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Sat, 18 Jul 2020 14:55:34 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
CC: freak07 <michalechner92@googlemail.com>,
        "linux-ntfs-dev@lists.sourceforge.net"
	<linux-ntfs-dev@lists.sourceforge.net>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Luca Stefani
	<luca.stefani.ge1@gmail.com>
Subject: Re: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Topic: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Index: AQHWXPYd6q3TtZ3z0UGWdJJclBe4aqkNCHeA
Date: Sat, 18 Jul 2020 11:55:33 +0000
Message-ID: <77108A50-8D4D-4303-8C4B-80F463478484@tuxera.com>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.155.251.171]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <8FE74CCC138DEB4B96773477A5D7D94F@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-18_05:2020-07-17,2020-07-18 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 suspectscore=0 bulkscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007180091
X-Original-Sender: anton@tuxera.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of anton@tuxera.com designates 82.197.21.90 as permitted
 sender) smtp.mailfrom=anton@tuxera.com
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

Hi Andrew,

Please can you merge this patch?  Thanks a lot in advance!

Luca, thank you for the updated patch!

Best regards,

	Anton

> On 18 Jul 2020, at 12:25, Luca Stefani <luca.stefani.ge1@gmail.com> wrote:
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
> ---
> fs/ntfs/dir.c   |  2 +-
> fs/ntfs/inode.c | 27 ++++++++++++++-------------
> fs/ntfs/inode.h |  4 +---
> fs/ntfs/mft.c   |  4 ++--
> 4 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index 3c4811469ae8..e278bfc5ee7f 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
> 	na.type = AT_BITMAP;
> 	na.name = I30;
> 	na.name_len = 4;
> -	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
> 	if (bmp_vi) {
>  		write_inode_now(bmp_vi, !datasync);
> 		iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..9bb9f0952b18 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,10 +30,10 @@
> /**
>  * ntfs_test_inode - compare two (possibly fake) inodes for equality
>  * @vi:		vfs inode which to test
> - * @na:		ntfs attribute which is being tested with
> + * @data:	data which is being tested with
>  *
>  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
> - * inode @vi for equality with the ntfs attribute @na.
> + * inode @vi for equality with the ntfs attribute @data.
>  *
>  * If searching for the normal file/directory inode, set @na->type to AT_UNUSED.
>  * @na->name and @na->name_len are then ignored.
> @@ -43,8 +43,9 @@
>  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>  * allowed to sleep.
>  */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
> {
> +	ntfs_attr *na = (ntfs_attr *)data;
> 	ntfs_inode *ni;
> 
> 	if (vi->i_ino != na->mft_no)
> @@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> /**
>  * ntfs_init_locked_inode - initialize an inode
>  * @vi:		vfs inode to initialize
> - * @na:		ntfs attribute which to initialize @vi to
> + * @data:	data which to initialize @vi to
>  *
> - * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
> + * Initialize the vfs inode @vi with the values from the ntfs attribute @data in
>  * order to enable ntfs_test_inode() to do its work.
>  *
>  * If initializing the normal file/directory inode, set @na->type to AT_UNUSED.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>  */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
> {
> +	ntfs_attr *na = (ntfs_attr *)data;
> 	ntfs_inode *ni = NTFS_I(vi);
> 
> 	vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> 	return 0;
> }
> 
> -typedef int (*set_t)(struct inode *, void *);
> static int ntfs_read_locked_inode(struct inode *vi);
> static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
> static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
> 	na.name = NULL;
> 	na.name_len = 0;
> 
> -	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> 	na.name = name;
> 	na.name_len = name_len;
> 
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
> 	na.name = name;
> 	na.name_len = name_len;
> 
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
> 	ATTR_TYPE type;
> } ntfs_attr;
> 
> -typedef int (*test_t)(struct inode *, void *);
> -
> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
> +extern int ntfs_test_inode(struct inode *vi, void *data);
> 
> extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
> extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index fbb9f1bc623d..0d62cd5bb7f8 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
> 		 * dirty code path of the inode dirty code path when writing
> 		 * $MFT occurs.
> 		 */
> -		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
> 	}
> 	if (vi) {
> 		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
> 		vi = igrab(mft_vi);
> 		BUG_ON(vi != mft_vi);
> 	} else
> -		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
> 				&na);
> 	if (!vi) {
> 		/*
> -- 
> 2.27.0
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77108A50-8D4D-4303-8C4B-80F463478484%40tuxera.com.

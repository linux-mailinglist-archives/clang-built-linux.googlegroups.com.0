Return-Path: <clang-built-linux+bncBDZJBK6SRQDRBUFDS34AKGQETVSQ5EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E623821838F
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 11:28:48 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id b11sf48635547edx.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 02:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594200528; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z63yrodFcqs8/lF/3FhuXTLo41t4BoXuzp3bQyvbmkmEw18Zv5iO5868yoVp0ACBBm
         dlshz3/29mAU5sm5pLCO7DeR5DTJ+1JO6uAMliaOnTKX48bpKGNkDT57hO+yYrVaGjQV
         VymsQPvC162xT2RlDYpJqk7ook1zM6BkmTMWTqMMheohkOwUCbneMXbM1VZF/bAZRuC7
         XMmiiogKqyMsOrdFg+IHnHioIHspLEjz14UnxB/4i/y+8cO1cJxr39/ICE751ra+P4o0
         6bYNiBfcNzeenQ4Ti5TdYV+FtDSMeYhHoE7gWqMlWRGIMlDKsTSVl2rM66nArpHysmND
         3OTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=bRY+zD2ZvB/oNuMmaRq9x8AgxztL1oGx6G7LI19C7c0=;
        b=OX113ctCn3T4pWqMV36p5tFCalgOYQn9dsarOCCGpN4IKfyAKjanRF1yUV8Bjpuj0z
         p9caHPhUwFUH3+4cMCr+LWCaWtsJ5R2IeOcs+HsuHyOQ1MZFRZo17yjyZ8g0W0/z4Ifz
         eMomdF5g61APTb4obo2lys/Pi9OPjLLXkIlH/2/7jns43jGBimGaDkUo9auB/0/DwW5e
         o2jsLm+QnniL/72Z/qu3ooedEkvMpShhZsOSS2tnC/ecx0l0e1Wp4GrG6vx+KWMIb7pj
         FhM1Wy0OrvbzfYc+7UyVewFaG3E8tjQ88DxLWooGtEnt9z6R4W/w4NimPe3Fo0U8PZUJ
         Kdag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of anton@tuxera.com designates 82.197.21.91 as permitted sender) smtp.mailfrom=anton@tuxera.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bRY+zD2ZvB/oNuMmaRq9x8AgxztL1oGx6G7LI19C7c0=;
        b=ccN/5kBE4s6LZ3f+Rm0x5pp0BaFrHLGEaR9ZHJhtpwMQFk55UvVen+nMVDn/1q37NE
         xwHh35Jfk2rbCgZVQKWBoV5fmQGFkcYAG9hFlo2mx8s1Fj1I9/HcZDWmGeuLYiX2KYhv
         FVbNYjtsR9TGLRTRx98cE9u4S35broAWecYY7xfgt3KRHS7biJoyE3N+YYCUUkmcFIRp
         mt7EoEMySDrVYOKLm4nV3IbHrdY4PScadULVtSb7UAE8KF6+yUNfaNceKUduzXO6BL4l
         ZVR3u7FCVFG8rEnxVM0LTOKP1SW6PE6MA1YQovETo/+ldr2cFdQHR+HLB3CXHx+bXq9N
         AwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bRY+zD2ZvB/oNuMmaRq9x8AgxztL1oGx6G7LI19C7c0=;
        b=qc+GH4b/Rby0sCVNVJy7QMzVh0JnFcSXlcBanx7looqYQrKy5o2GisWL86d/rlcALh
         L2+944PTdtXFbGBwvuazROX/rxyeZ93b3DJXDCVE8qAeygIMT1jj1I+Cor8ojBwhBbRU
         4oVOLe9qsJSPcXA3HpJae4BXBGdoTozO07fzZBT8DuYViS7I5w+t1d2lIsVMd/rvnug+
         qv7ju9cw2xwozGWiWdJ3i0PVXL8pyxzL18PalCtKcdT/I1u444N6MaQsKe/3xnNz+oGo
         jS2p3KeXBgifFomZQm5SjKor4157k9yFwiAo+Z7XVlzOmwlU63Lm3dCuUfwO2n8byvqv
         a7/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J9dapfGhMZa3JBfU++J7EITmILm3x7XToebRHVrfUdAe+oyJW
	6KyMi8ZedUCg8yZxiZLTyEE=
X-Google-Smtp-Source: ABdhPJy2Myykjg0SmiRwTKdY7EZsmXHMSIB7XAI7xMdJ1/IFbqkzjs9C4G1uRFInvFlHLhp8r3otsw==
X-Received: by 2002:a17:906:6446:: with SMTP id l6mr33140136ejn.184.1594200528604;
        Wed, 08 Jul 2020 02:28:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11d1:: with SMTP id va17ls696413ejb.0.gmail; Wed, 08
 Jul 2020 02:28:48 -0700 (PDT)
X-Received: by 2002:a17:906:c002:: with SMTP id e2mr47422773ejz.244.1594200528064;
        Wed, 08 Jul 2020 02:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594200528; cv=none;
        d=google.com; s=arc-20160816;
        b=GiP9n3KBHOsXvomYErhefcrMgQ0pQr92fPwAwjIbFdUH18T42GK0BxPVphLqH4jVWH
         JyTNeTWED/cm7ws4cfh8kkKNvCQ6C8tk45h7aMtq2BICfCR9+YkswIY/9rj5bTGu6xAi
         FKrKEfApptr/2Xw3Y8wTShKPgGwz0XKl7kMlzDrQVR8RMRVuhqNYlxWyKyOdzhswb+kT
         386fd+RVoK+PLZe3YkvoClCV6yourAydgRmVHFPGpBwoBR7xXwAze2L4f7AQ81pr/fCx
         kykD3z4IER8RfpK6pAzJSP68BAYNaoxYc4DU8MhaKlX57uk91TkvOJxujFmnYgNf/K69
         L5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=2oGk62u1bMHJdmbcXnSvcHS/KMcS7DXKMv+1j+kmYLo=;
        b=WPTsR4V5HrgXVBB6upSPFVGD0+RyIUtph2xX2TBHdQsthJsc1LINpV1Rwu3UArEd9J
         JzZkWXaYCtG39b/TtlMIb2NtlxSFPemV/ytsWm0NaSjp11NkMNKOkuEHIkNRuZMMSCH6
         yTdd+5Eq4jGIuIvH4EZigd1DXao29W0OsJgDNQMrODnqQd+b1/BuWWnlVd6bkIxM7Wpo
         W9lgQgVds4CA0YCqkaPhxs214HHvNu/seB6wxTHQNAbL/hmo7uPUzGJd848lrOwH31FS
         17fU5UUUkW9DFLqS/Y9FLLbgF9Xa+UfXxWZw2vQjhZdbLcTbaAJlFx9pjK1ZBcr+tqU5
         Fb0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of anton@tuxera.com designates 82.197.21.91 as permitted sender) smtp.mailfrom=anton@tuxera.com
Received: from mgw-02.mpynet.fi (mgw-02.mpynet.fi. [82.197.21.91])
        by gmr-mx.google.com with ESMTPS id x21si848010eju.0.2020.07.08.02.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 02:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of anton@tuxera.com designates 82.197.21.91 as permitted sender) client-ip=82.197.21.91;
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
	by mgw-02.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 0689Mosc093817;
	Wed, 8 Jul 2020 12:28:45 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
	by mgw-02.mpynet.fi with ESMTP id 322dewmgn7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 08 Jul 2020 12:28:44 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Jul 2020 12:28:44 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Wed, 8 Jul 2020 12:28:44 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
CC: clang-built-linux <clang-built-linux@googlegroups.com>,
        freak07
	<michalechner92@googlemail.com>,
        "linux-ntfs-dev@lists.sourceforge.net"
	<linux-ntfs-dev@lists.sourceforge.net>,
        LKML <linux-kernel@vger.kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Nick Desaulniers
	<ndesaulniers@google.com>
Subject: Re: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Topic: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Index: AQHWTLWIk5EfUBFiEUSTit3kCmYXJajv8dOAgA1Wz4A=
Date: Wed, 8 Jul 2020 09:28:43 +0000
Message-ID: <8CDE123D-68C3-44E9-B8CC-7159E4640762@tuxera.com>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
In-Reply-To: <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.157.43.234]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <797207C2DA74744289BFE57326571F92@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-08_07:2020-07-08,2020-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 suspectscore=0 mlxlogscore=999
 mlxscore=0 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080068
X-Original-Sender: anton@tuxera.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of anton@tuxera.com designates 82.197.21.91 as permitted
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

Hi Luca,

Apologies for taking this long to respond.  I have to admit I was not familiar with CFI...  Your patch looks good but please could you update the commit message as suggested by Nick to include explanation of CFI?  You can then add:

Acked-by: Anton Altaparmakov <anton@tuxera.com>

When resending please CC: Andrew Morton <akpm@linux-foundation.org> so we can get it merged upstream.

Thanks a lot!

Best regards,

	Anton

> On 29 Jun 2020, at 22:46, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Sat, Jun 27, 2020 at 12:02 PM Luca Stefani
> <luca.stefani.ge1@gmail.com> wrote:
>> 
>> If the kernel is built with CFI we hit a __cfi_check_fail
>> while mounting a partition
> 
> Luca,
> Since CFI is not yet upstream (is downstream in Android, blocked on
> LTO patches currently working their way through upstreaming+code
> review), it might help explain to reviewers what CFI *even is*.
> Something like:
> 
> """
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
> """
> 
> I also always recommend setting an explicit `--to=` when sending
> patches; some maintainers only know to take a look at patches if
> they're in the To: list.  Maybe they have email filters on this.  You
> can you `./script/get_maintainer.pl` on your patch file, or manually
> check MAINTAINERS.  In this case, it looks like Anton is cc'ed at
> least.
> 
> Since this patch modifies the type signature of callbacks to the
> expected type, casting the callback's parameters instead; I'm happy
> with this patch.  The callbacks never get invoked directly (not
> explicitly called, only invoked indirectly), there is no argument for
> loss of type safety (the interfaces are already lossy in that the
> interface uses void* parameters).  I just would like the commit
> message beefed up before I sign off.  Are you comfortable sending a
> V2?
> 
> More on JOP/CFI:
> https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf
>> CFI has not seen wide deployment, likely due to concerns over performance, especially in the case of real-time enforcement.
> 
>> 
>> Call trace:
>> __cfi_check_fail+0x1c/0x24
>> name_to_dev_t+0x0/0x404
>> iget5_locked+0x594/0x5e8
>> ntfs_fill_super+0xbfc/0x43ec
>> mount_bdev+0x30c/0x3cc
>> ntfs_mount+0x18/0x24
>> mount_fs+0x1b0/0x380
>> vfs_kern_mount+0x90/0x398
>> do_mount+0x5d8/0x1a10
>> SyS_mount+0x108/0x144
>> el0_svc_naked+0x34/0x38
>> 
>> Fixing iget5_locked and ilookup5 callers seems enough
>> 
>> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
>> Tested-by: freak07 <michalechner92@googlemail.com>
>> ---
>> fs/ntfs/dir.c   |  2 +-
>> fs/ntfs/inode.c | 23 ++++++++++++-----------
>> fs/ntfs/inode.h |  4 +---
>> fs/ntfs/mft.c   |  4 ++--
>> 4 files changed, 16 insertions(+), 17 deletions(-)
>> 
>> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
>> index 3c4811469ae8..e278bfc5ee7f 100644
>> --- a/fs/ntfs/dir.c
>> +++ b/fs/ntfs/dir.c
>> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
>>        na.type = AT_BITMAP;
>>        na.name = I30;
>>        na.name_len = 4;
>> -       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
>> +       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
> 
> Looks like the signature of ilookup5 is:
> 
> struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
>     int (*test)(struct inode *, void *), void *data)
> 
> while ntfs_test_inode is:
> 
> int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> 
> while test_t is defined way below to:
> 
> typedef int (*test_t)(struct inode *, void *);
> 
> 
>>        if (bmp_vi) {
>>                write_inode_now(bmp_vi, !datasync);
>>                iput(bmp_vi);
>> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
>> index d4359a1df3d5..a5d3bebe7a85 100644
>> --- a/fs/ntfs/inode.c
>> +++ b/fs/ntfs/inode.c
>> @@ -30,7 +30,7 @@
>> /**
>>  * ntfs_test_inode - compare two (possibly fake) inodes for equality
>>  * @vi:                vfs inode which to test
>> - * @na:                ntfs attribute which is being tested with
>> + * @data:              data which is being tested with
>>  *
>>  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
>>  * inode @vi for equality with the ntfs attribute @na.
>> @@ -43,8 +43,9 @@
>>  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>>  * allowed to sleep.
>>  */
>> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>> +int ntfs_test_inode(struct inode *vi, void *data)
>> {
>> +       ntfs_attr *na = (ntfs_attr *)data;
>>        ntfs_inode *ni;
>> 
>>        if (vi->i_ino != na->mft_no)
>> @@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>> /**
>>  * ntfs_init_locked_inode - initialize an inode
>>  * @vi:                vfs inode to initialize
>> - * @na:                ntfs attribute which to initialize @vi to
>> + * @data:              data which to initialize @vi to
>>  *
>>  * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
>>  * order to enable ntfs_test_inode() to do its work.
>> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>>  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>>  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>>  */
>> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>> {
>> +       ntfs_attr *na = (ntfs_attr *)data;
>>        ntfs_inode *ni = NTFS_I(vi);
>> 
>>        vi->i_ino = na->mft_no;
>> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>>        return 0;
>> }
>> 
>> -typedef int (*set_t)(struct inode *, void *);
>> static int ntfs_read_locked_inode(struct inode *vi);
>> static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>> static int ntfs_read_locked_index_inode(struct inode *base_vi,
>> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>>        na.name = NULL;
>>        na.name_len = 0;
>> 
>> -       vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(sb, mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>>        na.name = name;
>>        na.name_len = name_len;
>> 
>> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>>        na.name = name;
>>        na.name_len = name_len;
>> 
>> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
>> index 98e670fbdd31..363e4e820673 100644
>> --- a/fs/ntfs/inode.h
>> +++ b/fs/ntfs/inode.h
>> @@ -253,9 +253,7 @@ typedef struct {
>>        ATTR_TYPE type;
>> } ntfs_attr;
>> 
>> -typedef int (*test_t)(struct inode *, void *);
>> -
>> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
>> +extern int ntfs_test_inode(struct inode *vi, void *data);
>> 
>> extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
>> extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
>> index fbb9f1bc623d..0d62cd5bb7f8 100644
>> --- a/fs/ntfs/mft.c
>> +++ b/fs/ntfs/mft.c
>> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>>                 * dirty code path of the inode dirty code path when writing
>>                 * $MFT occurs.
>>                 */
>> -               vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
>> +               vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>>        }
>>        if (vi) {
>>                ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
>> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>>                vi = igrab(mft_vi);
>>                BUG_ON(vi != mft_vi);
>>        } else
>> -               vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
>> +               vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>>                                &na);
>>        if (!vi) {
>>                /*
>> --
>> 2.26.2
>> 
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200627190230.1191796-1-luca.stefani.ge1%40gmail.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8CDE123D-68C3-44E9-B8CC-7159E4640762%40tuxera.com.

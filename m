Return-Path: <clang-built-linux+bncBDKPDS4R5ECRBNGEQD4QKGQEFHYEXPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C9E230AE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 15:03:50 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id y2sf246416oos.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 06:03:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595941428; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9hVLUPwA03jtVpSCKr31jUZXO4GKcRp0V24C4iWUXzQU/rljtF/67RrIqZCQH6cw6
         vQUAlFIytJqYmOtHFcxCWIcEHBLbzDFZdMXeR0IISS1ThktK4hxGtSsV6riCWr3SvmwH
         PxzTECWJIOpNg+tgwiQpOLViNReWFEZHAb9vNIifqJCwP1aopVR55WJcr/lZmt0AkAHz
         PnOVnEOoVd4Hd4Ds+h7mibid0ob0XEfVeQtlqP2BHPImKL0i7xcWG185bWUEkCiVKOJk
         QQVdp2j9XlDWd6TMnfjfK9cY+Xn8qZQAkYT4ToAjJjdUiMbk0QIObYVl+w1GNnrnh6/Z
         wuEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=/QyNEUqp71s5bZVzg7Mg7JM5BgxvZnz9CNRlkBQ8Og8=;
        b=s8u2WWpx/IiApr5zkzhNHEFpUFRGgSRMwF7HLPWOEEBC4W+UzRr6v5Pjv2C/zLOir/
         Qqe15UHifwgMqj/rb0vhzDv85q+9ELs3V7XnZH2Qx/GWwrhRlAfUNHU4KZbZ/7mEUFSe
         wwngPwtOaq7VaWssppwNsMDonCh5ITkYy8UvzS4evle7n/7PDSDqzdPW2wLmbm790YDb
         fxku+qKWwZdj3tEOEbJYxqQxsOuAcCVvldJiv2wMaiGAcC2Mh5rl+ou8aWhY09/CYtE0
         XvlBBlU7Yla0jlcdvrfJCYHelpMXh0GZTme+6iMUGwWbFCKjIK2SBzKIh8e9OCNwrJnR
         dA8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bytedance-com.20150623.gappssmtp.com header.s=20150623 header.b=fuVbdu4k;
       spf=pass (google.com: domain of songmuchun@bytedance.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=songmuchun@bytedance.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=bytedance.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/QyNEUqp71s5bZVzg7Mg7JM5BgxvZnz9CNRlkBQ8Og8=;
        b=OJUoT7Iq+LXx/P7b2HlY1IY8WAn3hC7t3B9yRXFb8Wdd8LLJdUKmnnA3VKo0wIHYwh
         kzaCHdXqmKinpmhXapBds7ecep+3Zzp6N7DGrSw6qbDU6EknNhvLBQj8VRy/LJvtRYpQ
         iHSxE5KEEsag2BsHaAYDLR7LVsG9HunaEy7cA7ATcb8WYd1NcqyST3/XJNgyx1FvtdrL
         oZUTApC0NMSyRIutvyFKetmHSf/rc2r+1c3MKVMymTqlo+sKHUNmYJlz+/lsIKtmiLu8
         PffXa9O6sYV+k+pzFgSd2s2D7f7rVnB3GaScxZkELa6B+YtjL+89evItT8L04x8q0YMJ
         3Dlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/QyNEUqp71s5bZVzg7Mg7JM5BgxvZnz9CNRlkBQ8Og8=;
        b=XETmbzpvtCP9fH9PtDcxrvC4bkr3/K3cNdQYnmEHZ7xHpDdv+Cwu6g+H7Cvil+L8+j
         UaMyn2LaPrBvPJjREfYZAYP+muNW/30LeubS6JYtlzbg3TDgaRTyj+aCXA81ZKGDt2O+
         B2FTin9jXnaPQA3vhUbBCUPICDJGz3w4Qo9+UowU0SwYS3iU75Xnw46TeTv31P2Ivmt/
         SmPxRfxMZscYWFp6TJ5tFCtVqEYVSzZkZPD2T8nHA+37nJwfoc3PxBmW3DoYp3tRRWIB
         NC3DCsUA1cF6M9NOLZhjQqTQV/oYopSWoc/dIuB/d9AKc8py7qz6e8PW+zFBsGAO8tk9
         r9Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IcQhlTeHWVLTYKKRuai48od4w4/YUJEkUXaxkRUK2zggNoex2
	ecbqFPBiY4NoM/WDvjEkkEE=
X-Google-Smtp-Source: ABdhPJw9+leUS7n6pCS5L+OLhAUwdpL+M/SamvE+2DlcF8KSUTseFBL7DEOhTGBOa26GeNp8uAuNfA==
X-Received: by 2002:a9d:ae9:: with SMTP id 96mr9863894otq.241.1595941428543;
        Tue, 28 Jul 2020 06:03:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls4028322otj.5.gmail; Tue,
 28 Jul 2020 06:03:48 -0700 (PDT)
X-Received: by 2002:a9d:801:: with SMTP id 1mr9944719oty.345.1595941428061;
        Tue, 28 Jul 2020 06:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595941428; cv=none;
        d=google.com; s=arc-20160816;
        b=NGtXcuccNJh1xoJ/4bN2EyinhYkFSAfPEX6IWMY7JCspJqa+jBb6mhPjqRJ0OS8htd
         vAlq+/z3ff+1+pM8Ym3Q8rboLEI6FNeLKxSjV3a9HlVMNVGYVO+BdsEkVHLTt6OjB1cj
         pCGg2x6edg+jiH4sdSWVPTp0T0QDSo/WQzjFPjlKdmpGdCV+WcDiqIXBUAbycrRW6dYY
         CXdKjsiwnYWxxgdp3CGCWJzLtskyOOBffg21ocPXMFbmofTJEfSxFh9eRjWXskQKrHrT
         jMsa9mVDPLS+MVHzN/w5llCyQRF59nvyFla33vn1Osshjwa5d6ch/mWHRRsJ5FzvJbVt
         dP4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LlxNk1zIi8yGHdhZuUAKBshbG8msBSfKJxj73MCTTLY=;
        b=HlY13xdYCCXDRsxYbC1PR8CW/AgkdNWMk1+B+23S+V5X2UiSYwrdM8nSeAkCCTC8LW
         jwyrQYePPG/3OomUxfvU5h8APZR/GdwyumeHBsvKJXqvzaJuLhtZsbUcKFMl03uVtGzP
         8sLgiafoyHfN5bKqDan6FubkNwK21NiHyBYgYAaCpt3DLkjQVUnUGqaf4zNFbHKO3znb
         ZFCGP9NUKbH/qLKNRfyLsDt2EY0lSyyMD6N+/1AztR69PxF6cfDy2ejipzaKb+AqHGUr
         0OVWUIkzBvnYShVM7HSvPhzE4WnWK7LRqgYbTM1hVxGdeH8DYu1FHNi3119W+Q7x1ckF
         UGgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@bytedance-com.20150623.gappssmtp.com header.s=20150623 header.b=fuVbdu4k;
       spf=pass (google.com: domain of songmuchun@bytedance.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=songmuchun@bytedance.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=bytedance.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r64si496300oor.2.2020.07.28.06.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 06:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of songmuchun@bytedance.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l12so776007pgt.13
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 06:03:48 -0700 (PDT)
X-Received: by 2002:a63:7e52:: with SMTP id o18mr1089996pgn.273.1595941427207;
 Tue, 28 Jul 2020 06:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200727134914.312934924@linuxfoundation.org> <CA+G9fYvBRONMYwX36Hcju4JA5TwstkT2Afyuy2DB1zQcBcc1CA@mail.gmail.com>
In-Reply-To: <CA+G9fYvBRONMYwX36Hcju4JA5TwstkT2Afyuy2DB1zQcBcc1CA@mail.gmail.com>
From: Muchun Song <songmuchun@bytedance.com>
Date: Tue, 28 Jul 2020 21:03:11 +0800
Message-ID: <CAMZfGtVV-u7K+Z0vFLkoKv1UOTfk=a9+r_6G4PYfGLywwnkm3Q@mail.gmail.com>
Subject: Re: [External] Re: [PATCH 4.19 00/86] 4.19.135-rc1 review
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, open list <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, Shuah Khan <shuah@kernel.org>, patches@kernelci.org, 
	Ben Hutchings <ben.hutchings@codethink.co.uk>, linux- stable <stable@vger.kernel.org>, 
	Hugh Dickins <hughd@google.com>, Christoph Lameter <cl@linux.com>, Roman Gushchin <guro@fb.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, linux-mm <linux-mm@kvack.org>, mm-commits@vger.kernel.org, 
	Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Shakeel Butt <shakeelb@google.com>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, 
	lkft-triage@lists.linaro.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: songmuchun@bytedance.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bytedance-com.20150623.gappssmtp.com header.s=20150623
 header.b=fuVbdu4k;       spf=pass (google.com: domain of songmuchun@bytedance.com
 designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=songmuchun@bytedance.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=bytedance.com
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

Thanks for your test. I have reviewed the patch:

[PATCH 4.19 76/86] mm: memcg/slab: fix memory leak at non-root
kmem_cache destroy

There is a backport problem and I have pointed out the problem in that emai=
l.

On Tue, Jul 28, 2020 at 4:34 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> On Mon, 27 Jul 2020 at 19:40, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 4.19.135 release.
> > There are 86 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Wed, 29 Jul 2020 13:48:51 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patc=
h-4.19.135-rc1.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stab=
le-rc.git linux-4.19.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> >
> > -------------
> > Pseudo-Shortlog of commits:
> <trim>
>
> Results from Linaro=E2=80=99s test farm.
> Regressions detected on x86_64.
>
> Boot failures on x86_64 devices running 4.19.135-rc1 kernel.
>
> Summary
> ------------------------------------------------------------------------
>
> kernel: 4.19.135-rc1
> git repo: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-st=
able-rc.git
> git branch: linux-4.19.y
> git commit: e11702667f84474535b156dbb194deffa0a6cdb4
> git describe: v4.19.134-87-ge11702667f84
> Test details: https://qa-reports.linaro.org/lkft/linux-stable-rc-4.19-oe/=
build/v4.19.134-87-ge11702667f84
>
> > Muchun Song <songmuchun@bytedance.com>
> >     mm: memcg/slab: fix memory leak at non-root kmem_cache destroy
>
> [    2.510884] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [    2.510884] WARNING: possible recursive locking detected
> [    2.510884] 4.19.135-rc1 #1 Not tainted
> [    2.510884] --------------------------------------------
> [    2.510884] swapper/0/1 is trying to acquire lock:
> [    2.510884] 0000000088703397 (slab_mutex){+.+.}, at:
> kmem_cache_destroy+0x9a/0x2b0
> [    2.510884]
> [    2.510884] but task is already holding lock:
> [    2.510884] 0000000088703397 (slab_mutex){+.+.}, at:
> kmem_cache_destroy+0x45/0x2b0
> [    2.510884]
> [    2.510884] other info that might help us debug this:
> [    2.510884]  Possible unsafe locking scenario:
> [    2.510884]
> [    2.510884]        CPU0
> [    2.510884]        ----
> [    2.510884]   lock(slab_mutex);
> [    2.510884]   lock(slab_mutex);
> [    2.510884]
> [    2.510884]  *** DEADLOCK ***
> [    2.510884]
> [    2.510884]  May be due to missing lock nesting notation
> [    2.510884]
> [    2.510884] 3 locks held by swapper/0/1:
> [    2.510884]  #0: 000000008702dddc (cpu_hotplug_lock.rw_sem){++++},
> at: kmem_cache_destroy+0x32/0x2b0
> [    2.510884]  #1: 0000000050103e4d (mem_hotplug_lock.rw_sem){++++},
> at: kmem_cache_destroy+0x37/0x2b0
> [    2.510884]  #2: 0000000088703397 (slab_mutex){+.+.}, at:
> kmem_cache_destroy+0x45/0x2b0
> [    2.510884]
> [    2.510884] stack backtrace:
> [    2.510884] CPU: 2 PID: 1 Comm: swapper/0 Not tainted 4.19.135-rc1 #1
> [    2.510884] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
> 2.0b 07/27/2017
> [    2.510884] Call Trace:
> [    2.510884]  dump_stack+0x7a/0xa5
> [    2.510884]  __lock_acquire+0x6f1/0x1380
> [    2.510884]  ? ret_from_fork+0x3a/0x50
> [    2.510884]  lock_acquire+0x95/0x190
> [    2.510884]  ? lock_acquire+0x95/0x190
> [    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
> [    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
> [    2.510884]  __mutex_lock+0x83/0x990
> [    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
> [    2.510884]  ? kmem_cache_destroy+0x60/0x2b0
> [    2.510884]  ? set_debug_rodata+0x17/0x17
> [    2.510884]  ? set_debug_rodata+0x17/0x17
> [    2.510884]  mutex_lock_nested+0x1b/0x20
> [    2.510884]  ? get_online_mems+0x5f/0x90
> [    2.510884]  ? mutex_lock_nested+0x1b/0x20
> [    2.510884]  kmem_cache_destroy+0x9a/0x2b0
> [    2.510884]  ? set_debug_rodata+0x17/0x17
> [    2.510884]  intel_iommu_init+0x11c6/0x1326
> [    2.510884]  ? kfree+0xc4/0x240
> [    2.510884]  ? lockdep_hardirqs_on+0xef/0x180
> [    2.510884]  ? kfree+0xc4/0x240
> [    2.510884]  ? trace_hardirqs_on+0x4c/0x100
> [    2.510884]  ? unpack_to_rootfs+0x272/0x29a
> [    2.510884]  ? e820__memblock_setup+0x64/0x64
> [    2.510884]  ? set_debug_rodata+0x17/0x17
> [    2.510884]  pci_iommu_init+0x1a/0x44
> [    2.510884]  ? e820__memblock_setup+0x64/0x64
> [    2.510884]  ? pci_iommu_init+0x1a/0x44
> [    2.510884]  do_one_initcall+0x61/0x2b4
> [    2.510884]  ? set_debug_rodata+0xa/0x17
> [    2.510884]  ? rcu_read_lock_sched_held+0x81/0x90
> [    2.510884]  kernel_init_freeable+0x1d8/0x270
> [    2.510884]  ? rest_init+0x190/0x190
> [    2.510884]  kernel_init+0xe/0x110
> [    2.510884]  ret_from_fork+0x3a/0x50
>
>
> Full test log:
> https://pastebin.com/PWkk0YaF
>
> --
> Linaro LKFT
> https://lkft.linaro.org



--
Yours,
Muchun

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMZfGtVV-u7K%2BZ0vFLkoKv1UOTfk%3Da9%2Br_6G4PYfGLywwnkm3Q=
%40mail.gmail.com.

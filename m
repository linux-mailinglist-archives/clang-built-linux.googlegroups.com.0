Return-Path: <clang-built-linux+bncBCT6537ZTEKRBBWG774AKGQEOQQSEHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEC2230577
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 10:34:15 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id p4sf4307616ile.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 01:34:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595925254; cv=pass;
        d=google.com; s=arc-20160816;
        b=CIfZ0T+Q6WaGP4r11doPsBr3stvBmKZk2vqBV0ulBvOjfaYRgaRFiR2H83Cxxzg06k
         quGLQOltYXxZCBj2XNJNK9/GJJTmSQJtUUMq+MAW5sYYim5XqUCPyicDeiY0RXInSfQY
         dePplCNmjp8zzXCfhMbE1mKSj/CxrLyC2Rz65gjr+1maAQU3kUaI4c69AkBA5BeOyAmz
         hv+cKGedcD3nVLRS/M3Q7rC4ZyhAgQgZoLcIiSdDJ+2YzHRNAOSA0rSsXIRO9raR/7pm
         5R6TdUMfw31RNIPSz43YSGSFvje7ql85kEwlOfImKfzlDN2MwyWVP1dJAYG2XgwASpao
         qUHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=gWK50cwgdBS4Jquw81cU3SoQ5sSpH4edoTLrsBPeiOs=;
        b=CLqJZ/c0Fk6KeNL/5TDWLKB1ehBEbvneR+lgnJSLGIyI+xn9cd4NzkhsTxg9/2Y6Li
         wqGWxo1PMjkPwKPx7TsfB6wKmHroIekQM86e+qNn+/eIUSjiNWd58fh56Obh2//o+SeN
         MZD9q/ydS1NCmkAYEFYGz6LES9iaOCUvyHcOgDI8iml/RtZY6PfrUwxjpDDzdYaECKVR
         u+pMJe63AZ8xTMlgqVR6L0YMaBKGaYDo98Ie5mMyYZRxLQ3azup+VBXW6OPNscyEkuDM
         EQ2uYAew7umXwYWMEyyPH64lzCY1nT7AAhR5ekhh7Xt3m7TysWLFvgPEAH2Dsg0DN9yP
         OS6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=g7VomaSM;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gWK50cwgdBS4Jquw81cU3SoQ5sSpH4edoTLrsBPeiOs=;
        b=ISGhPL2JSQ1ofpGRplv6KASkFQhIFCGTq1t7CteS4FdvTtWPg7+RoRusC97Lnj+GYn
         A7NpZwMltAnhldkrDegostFv6kZ87CGpR2eCgSqwuhapsd43dnobsXzqg5CJui2S2k9s
         vMOT6QyyxDno8CgINiFEmoEbDYFtjO2TQC1b5pSgmXWVTz0GEHjwNrhzhPpWkc16Ad6z
         bG6+HJeezNyWLaQngdKUfXSTIZz3k2RbaiEH/6vzq4tN6hIfUkXwWQ30GFqk8lQ5Faty
         Z5wvZ3SmHRmnf41lda82tkREhJMKCLxLnMTpgF9X8ydtJ/bx4WxxUSf3wcwpbfHXSaFG
         GA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gWK50cwgdBS4Jquw81cU3SoQ5sSpH4edoTLrsBPeiOs=;
        b=YrUz5fv7hp0eB81HRXdki/thfMTH+cfnFqs0yfbUtJU0lWPOgFe/8Z/aXFm+ON6fmG
         k8SG1S1Iv2yocv9aHbo/ssUfDVVWx8LuaufKJNtA2HbNFV61ioL6ttAa2LlmViXaPDcH
         FhnuQE4QsySHER7nbaUNJEXsBm4SgGLmz5oWsEEo5Xdx3X3nbM58a7PloEhYpzsWctNk
         RPJVkEfXA3YV1sUVo1pCIR7alDhV5fPTyo9Y/Rt+ckl2HYBg6KTnMwfEsU20TJFdCVEe
         jpG8qAi7PFBiujkAQ6S8LdP7CPuTtiDzF5gnQhZjVT3W1fAGEnlNuv7btNoFlx3gGULe
         UqeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IuQ+yZFcLAVQ/sHWnaIrOW4voZ42C2mYWp5R9tT0BPrcT+kT5
	RuFfJHMi9WdNJcr7QrGdaV4=
X-Google-Smtp-Source: ABdhPJxaVeXGbhDqfwrT9qe4CaHGIIFNeZg/E2s79o4U6laTdtRcZqtsQYXkdWU4f70QIMlWkkad3g==
X-Received: by 2002:a92:7a07:: with SMTP id v7mr18293185ilc.122.1595925254139;
        Tue, 28 Jul 2020 01:34:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:914a:: with SMTP id t71ls5002106ild.6.gmail; Tue, 28 Jul
 2020 01:34:13 -0700 (PDT)
X-Received: by 2002:a92:1f0f:: with SMTP id i15mr9819303ile.237.1595925253870;
        Tue, 28 Jul 2020 01:34:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595925253; cv=none;
        d=google.com; s=arc-20160816;
        b=e2AMSxKFDvinp/B8X9WKInNTiRzojy+y4P4qs8HoV9LTnJKeojUtAMEily58nbGodA
         OHaNvhf0Hcm+ZdUJjwjD4vzCUVC61eW1cw8ttG2KFxidW32osg0PA/8DTSl13XT5AsZ1
         8YeBYRp2prJT9k23Gz+JoK5i65kzsutwvvo2L0683Mb5ifOrW0UK+ueqyq9w1bKMpFHk
         5fG1Zwl3/9AeqNtjw+5ROsdhzZOI5Etpxh/70gHkrq99nXmRUHVBLs9en4nIqnrm8nFv
         YVnnEnvFhm29u0wsRR0lmqbWmrMXCLt/9/E/UdwwA6ReGfp9TUhv3LnH9EFQAH1pwl5N
         QZ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B0b9UMK24v6NX2X8zYI+BkJ3zJnFD1PM99BHGur3P6E=;
        b=tZMAusjV+a//4t83sg5tzuMgBmJVXUQFVzQhA/u8yktiocE5iHmob9sxhbxY/YgCeY
         JMQAaDyOCD89ACTBJIc2mqC5Ja585mKLgjmA8D0oQbxWlsHouo0N16ionfb4EZu9KKGe
         LMEWqjTKAGdeUqB1SU6Nh9WrVXxOkr93QCRGGFZPHKKKrGFBR29ltOjnBXtLCmaH00GQ
         xzv/NAOEx0Du4LpF23uXTD1JWN7rOAGMHwCjrJ65h9+1fFnEhfH/sejIkIZzpe2zoJBo
         YOSKSLsuHIyzCWMqREnemS0z076m9mMD0gx/HhmXMdyy3v0gbpv7ilOhqfeBcUKKA+Jw
         sTMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=g7VomaSM;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id z6si323004ioj.0.2020.07.28.01.34.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 01:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id i24so6239856uak.3
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 01:34:12 -0700 (PDT)
X-Received: by 2002:ab0:5963:: with SMTP id o32mr19079185uad.142.1595925252099;
 Tue, 28 Jul 2020 01:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200727134914.312934924@linuxfoundation.org>
In-Reply-To: <20200727134914.312934924@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 28 Jul 2020 14:04:00 +0530
Message-ID: <CA+G9fYvBRONMYwX36Hcju4JA5TwstkT2Afyuy2DB1zQcBcc1CA@mail.gmail.com>
Subject: Re: [PATCH 4.19 00/86] 4.19.135-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, songmuchun@bytedance.com
Cc: open list <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, Shuah Khan <shuah@kernel.org>, patches@kernelci.org, 
	Ben Hutchings <ben.hutchings@codethink.co.uk>, linux- stable <stable@vger.kernel.org>, 
	Hugh Dickins <hughd@google.com>, Christoph Lameter <cl@linux.com>, Roman Gushchin <guro@fb.com>, iamjoonsoo.kim@lge.com, 
	linux-mm <linux-mm@kvack.org>, mm-commits@vger.kernel.org, penberg@kernel.org, 
	rientjes@google.com, Shakeel Butt <shakeelb@google.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Arnd Bergmann <arnd@arndb.de>, lkft-triage@lists.linaro.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=g7VomaSM;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 27 Jul 2020 at 19:40, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 4.19.135 release.
> There are 86 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Wed, 29 Jul 2020 13:48:51 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-=
4.19.135-rc1.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable=
-rc.git linux-4.19.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h
>
> -------------
> Pseudo-Shortlog of commits:
<trim>

Results from Linaro=E2=80=99s test farm.
Regressions detected on x86_64.

Boot failures on x86_64 devices running 4.19.135-rc1 kernel.

Summary
------------------------------------------------------------------------

kernel: 4.19.135-rc1
git repo: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stab=
le-rc.git
git branch: linux-4.19.y
git commit: e11702667f84474535b156dbb194deffa0a6cdb4
git describe: v4.19.134-87-ge11702667f84
Test details: https://qa-reports.linaro.org/lkft/linux-stable-rc-4.19-oe/bu=
ild/v4.19.134-87-ge11702667f84

> Muchun Song <songmuchun@bytedance.com>
>     mm: memcg/slab: fix memory leak at non-root kmem_cache destroy

[    2.510884] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[    2.510884] WARNING: possible recursive locking detected
[    2.510884] 4.19.135-rc1 #1 Not tainted
[    2.510884] --------------------------------------------
[    2.510884] swapper/0/1 is trying to acquire lock:
[    2.510884] 0000000088703397 (slab_mutex){+.+.}, at:
kmem_cache_destroy+0x9a/0x2b0
[    2.510884]
[    2.510884] but task is already holding lock:
[    2.510884] 0000000088703397 (slab_mutex){+.+.}, at:
kmem_cache_destroy+0x45/0x2b0
[    2.510884]
[    2.510884] other info that might help us debug this:
[    2.510884]  Possible unsafe locking scenario:
[    2.510884]
[    2.510884]        CPU0
[    2.510884]        ----
[    2.510884]   lock(slab_mutex);
[    2.510884]   lock(slab_mutex);
[    2.510884]
[    2.510884]  *** DEADLOCK ***
[    2.510884]
[    2.510884]  May be due to missing lock nesting notation
[    2.510884]
[    2.510884] 3 locks held by swapper/0/1:
[    2.510884]  #0: 000000008702dddc (cpu_hotplug_lock.rw_sem){++++},
at: kmem_cache_destroy+0x32/0x2b0
[    2.510884]  #1: 0000000050103e4d (mem_hotplug_lock.rw_sem){++++},
at: kmem_cache_destroy+0x37/0x2b0
[    2.510884]  #2: 0000000088703397 (slab_mutex){+.+.}, at:
kmem_cache_destroy+0x45/0x2b0
[    2.510884]
[    2.510884] stack backtrace:
[    2.510884] CPU: 2 PID: 1 Comm: swapper/0 Not tainted 4.19.135-rc1 #1
[    2.510884] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
2.0b 07/27/2017
[    2.510884] Call Trace:
[    2.510884]  dump_stack+0x7a/0xa5
[    2.510884]  __lock_acquire+0x6f1/0x1380
[    2.510884]  ? ret_from_fork+0x3a/0x50
[    2.510884]  lock_acquire+0x95/0x190
[    2.510884]  ? lock_acquire+0x95/0x190
[    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
[    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
[    2.510884]  __mutex_lock+0x83/0x990
[    2.510884]  ? kmem_cache_destroy+0x9a/0x2b0
[    2.510884]  ? kmem_cache_destroy+0x60/0x2b0
[    2.510884]  ? set_debug_rodata+0x17/0x17
[    2.510884]  ? set_debug_rodata+0x17/0x17
[    2.510884]  mutex_lock_nested+0x1b/0x20
[    2.510884]  ? get_online_mems+0x5f/0x90
[    2.510884]  ? mutex_lock_nested+0x1b/0x20
[    2.510884]  kmem_cache_destroy+0x9a/0x2b0
[    2.510884]  ? set_debug_rodata+0x17/0x17
[    2.510884]  intel_iommu_init+0x11c6/0x1326
[    2.510884]  ? kfree+0xc4/0x240
[    2.510884]  ? lockdep_hardirqs_on+0xef/0x180
[    2.510884]  ? kfree+0xc4/0x240
[    2.510884]  ? trace_hardirqs_on+0x4c/0x100
[    2.510884]  ? unpack_to_rootfs+0x272/0x29a
[    2.510884]  ? e820__memblock_setup+0x64/0x64
[    2.510884]  ? set_debug_rodata+0x17/0x17
[    2.510884]  pci_iommu_init+0x1a/0x44
[    2.510884]  ? e820__memblock_setup+0x64/0x64
[    2.510884]  ? pci_iommu_init+0x1a/0x44
[    2.510884]  do_one_initcall+0x61/0x2b4
[    2.510884]  ? set_debug_rodata+0xa/0x17
[    2.510884]  ? rcu_read_lock_sched_held+0x81/0x90
[    2.510884]  kernel_init_freeable+0x1d8/0x270
[    2.510884]  ? rest_init+0x190/0x190
[    2.510884]  kernel_init+0xe/0x110
[    2.510884]  ret_from_fork+0x3a/0x50


Full test log:
https://pastebin.com/PWkk0YaF

--=20
Linaro LKFT
https://lkft.linaro.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BG9fYvBRONMYwX36Hcju4JA5TwstkT2Afyuy2DB1zQcBcc1CA%40m=
ail.gmail.com.

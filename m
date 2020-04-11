Return-Path: <clang-built-linux+bncBDN7FYMXXEORBCE7YT2AKGQEJD5A24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EE21A4CF1
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 02:30:12 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id b3sf3381223qte.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 17:30:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586565001; cv=pass;
        d=google.com; s=arc-20160816;
        b=qmBGqNMulFgEAtfD3V3fKjLjIcImPIxBbW9WMGsqPszwwOZI8Gs6lQkxBXmitSn+2S
         r/gKb7s2JJaBFwGvujn9Typ1DPTpx+YkiS5PeyttPJJ7lSGVmP9fEnskX6mPuRqkfK5L
         8zekNhSQiYMzP4XKNvGvgXWbazLP9gedlTzf7iYLoftj+jN5Og4ANXXFxErkuDA4yEHH
         9Umc70oamEYi2CJgQG7tTw5LvCI6Fr+kJ1osij0AWrQjsWqpZmd1fWWyH02DnZx1wuQo
         CXPa0cuC6lZl6DL+VKBphPo+RxQvczfB//jdLc5aIA4VmsJ2gvRzWvYZsHM8IYKJUjMk
         aYRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:to:subject:from:date:sender:dkim-signature
         :dkim-signature;
        bh=w6gK8SnyrNepoEEZw7S1XAM1cw+0fBkTq801E5r2D0A=;
        b=Wqny84FSwF3uE+koGUz1vaydm36IEXuIwKmGX5ahT2mlKQVknsH50wtpH/TBfn5odV
         UadepakICHJuslD21INo/NOM6/HcXzOVz0HwPIUyQld+JjQI/HHGyzbvwNm/behl9Yb8
         l3C8Yrd7eofhDl7kgqwdt3l4kSnJoy+EhVjZukoQMCAgFMMAqZ/MwSNlj2ceyuGuBQNl
         FTlolAqTGvf6vcQzQYn5LvEk8X9Maoc/zE5Jya5A1jg2ZTduaRGXzT77x+47sJkkX+jC
         ANisHNylSBtHAUZoEhXfuONr2d/Wnd8k0j7WPG7Vw/94oCLkaft3EDWPPc+PBMtFBAi6
         CC7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHKcRvaf;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w6gK8SnyrNepoEEZw7S1XAM1cw+0fBkTq801E5r2D0A=;
        b=oa0cEeb/CBYLFaBZ/yyz0bgZrXJd+ZTtO90DMT9Tx8H7QYx91LAK+Uhf+ymXvEZu9s
         zajJUhTdbbC8RXTJiEL6AheZpefNfXIVh2r0jrJmGxM5qZp14oNs22ZrHA/PXj5ge4cN
         TJKXhExxMEejK7+m2uWiHTmmnQvPRtGYaYTxXhpwXW+1JJnnAlSHsNmABXH9T95z1SjJ
         KsQQf5MV7G1RkC/m/A7+whE7JgKui77HcPzsAfvo0/ezIbmmtlftfJ2kBgf7eQsfQ//K
         YHs8WscbjZ0AnBzAHPqErHvPr5M0zc/5LklHGurhP+eHgDWucmWL3pH7u5pyV0ApRVsC
         UI6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:references:in-reply-to:mime-version:user-agent
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6gK8SnyrNepoEEZw7S1XAM1cw+0fBkTq801E5r2D0A=;
        b=LM3Pg7HLpQG0ww9fsdW2A95kGAZuNm3VutWcou/lholYiOqbKynSBF5r9Hdz4t1Aa9
         EIhGQnihNWHLpSEGZUIYRQ+wxlkCZcMlGJS21t/LdmbCFIiOYPsklLCMRpIJSlvscDRa
         hxIGisM5LxJZveOtsglY6BregzvuG4RR4+QCMDngnKpMhXmMxu2Ov0/fHv5LJfVGxgYR
         E29qQpsE91q6ltLN56Ur+hjE+Im+5h0H/Dp++oroEN6t7cqcOHRkGOvTryEL2uncBvIT
         6WiHWLlCaj9+BvWx+Y7atVYfU6BsYiYMgkCXiuXJ7qpHWZy24tzK3TO05GxuATdmcKEo
         zbUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6gK8SnyrNepoEEZw7S1XAM1cw+0fBkTq801E5r2D0A=;
        b=q+6CE3PavPKeu8e3XCMKhFOfiWW+wJbLTUd4RB+2pcqv2Po0LWo7RJNZ77D+sE5/WT
         4KHLK1z8hb0jQZ+2veIuNA5/6LOZZE/D8LMKaGOfwUYS5IxoQI7unFbjAKWkPxXwcseG
         54eKTCppclRMero+b11oUQwOGCr+tRXH1krIBLA5wWdgwgN1etXqYMulBDAMmRbtFlDO
         WboSyzIUaTp6uVXzPjyCJV/1Ezy/KDPwsxsYve98hCbmfBjjGuo4KrHA2ZHvKOxlPHcd
         qPWNPPtKQRu7qyD7G5zzZdR3WCUloZGUz1Y9WkuSqDsBj6itAbE/LX8QsjfDWeHc7vtt
         LF6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaMCRaClWMH57QKo/87SmdaHjI8aI6N781ppW8R/5PiW1pAu6Nv
	L3FTXiHXBCuJsevUoj0egLg=
X-Google-Smtp-Source: APiQypL8idoCc5SN8Hf0xPG7qh8BS0ZjAYP12AjBIWx73H5yXt6iONH6wdWerZv1o62C2U7S8GGXTQ==
X-Received: by 2002:a0c:9e45:: with SMTP id z5mr7640999qve.250.1586565000947;
        Fri, 10 Apr 2020 17:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5084:: with SMTP id e126ls9804962qkb.7.gmail; Fri, 10
 Apr 2020 17:30:00 -0700 (PDT)
X-Received: by 2002:ae9:f30f:: with SMTP id p15mr6436219qkg.178.1586565000486;
        Fri, 10 Apr 2020 17:30:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586565000; cv=none;
        d=google.com; s=arc-20160816;
        b=SyHYccuGzpv45dc53FM/vhK2XNvcddZx5YfccttfEy+3A7joeZJQolO9EQ7D38bwXa
         M6GzqMwRRrQCcvIkU6tI5HfxwpC67q2cfy8RTb4B9yIUl2HF6m81tGXpJxsIr5BTypMy
         rXzT17llW8v9yzxB9Q76RgjHAFb3q+qHJd7iODvEx4ht6+uljXlhCs61IdUPCUAGDt6A
         QtLFp1wufWxJyBUMFwhWg1yxDRocf32ZHKjMgLvvoJgw7flow6YvY2QfEnF12xqo7Iqi
         OHYi6b2J0ESqMV5WgjwVVEikuoi+VO+NHBx0fblW3wMO6ERimpzex+hIHSJ8pPkD265R
         XPZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:to:subject:from:date:dkim-signature;
        bh=aaKjpU9iJarIHkIt+wznu3DX79hsHU5tbzm52tqbQrE=;
        b=Cbh9cL0mFpK5IFXcmhFlYW8nyfzMJNhyUnsas0ctQUDeFTJFA2s0Z6HYu7+DpkwhDW
         vkDpJDC3h3ikUDNWYj12jgyJLY6K4qhWCbE4rIrctYXD39bvM+gGIoA0TB1LsUABlpOT
         WkfV2JsNYBUjQ5lvfgZDoP0y8lqrhVMHlzCgwuHP/mLTzJmUpBksqbr0Y71rkFuUCmDc
         xd/QIB6n88WVoqWqtHNOlPuSkbRVF72B7ydQK7FRqVO1nzezTM1BKOKG1u8lP+93dGWy
         zM1W2JBja025CuIz6BDFQymz+fkHJ+KTSBR8foaQc8J9bW8XDhfgAYnPQl3n1RPklhMc
         T/sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHKcRvaf;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e11si240092qtw.1.2020.04.10.17.30.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 17:30:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t4so1166486plq.12
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 17:30:00 -0700 (PDT)
X-Received: by 2002:a17:90a:f30e:: with SMTP id ca14mr8263255pjb.134.1586564999264;
        Fri, 10 Apr 2020 17:29:59 -0700 (PDT)
Received: from localhost (60-241-117-97.tpgi.com.au. [60.241.117.97])
        by smtp.gmail.com with ESMTPSA id y13sm2776027pfp.88.2020.04.10.17.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 17:29:58 -0700 (PDT)
Date: Sat, 11 Apr 2020 10:29:45 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
To: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	Nathan Chancellor <natechancellor@gmail.com>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1586564375.zt8lm9finh.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RHKcRvaf;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::643 as
 permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Nathan Chancellor's on April 11, 2020 6:59 am:
> Hi all,
> 
> Recently, our CI started running into several hangs when running the
> spinlock torture tests during a boot with QEMU 3.1.0 on
> powernv_defconfig and pseries_defconfig when compiled with Clang.
> 
> I initially bisected Linux and came down to commit 3282a3da25bd
> ("powerpc/64: Implement soft interrupt replay in C") [1], which seems to
> make sense. However, I realized I could not reproduce this in my local
> environment no matter how hard I tried, only in our Docker image. I then
> realized my environment's QEMU version was 4.2.0; I compiled 3.1.0 and
> was able to reproduce it then.
> 
> I bisected QEMU down to two commits: powernv_defconfig was fixed by [2]
> and pseries_defconfig was fixed by [3].

Looks like it might have previously been testing power8, now power9?
-cpu power8 might get it reproducing again.

> I ran 100 boots with our boot-qemu.sh script [4] and QEMU 3.1.0 failed
> approximately 80% of the time but 4.2.0 and 5.0.0-rc1 only failed 1% of
> the time [5]. GCC 9.3.0 built kernels failed approximately 3% of time
> [6].

Do they fail in the same way? Was the fail rate at 0% before upgrading
kernels?

> 
> Without access to real hardware, I cannot really say if there is a
> problem here. We are going to upgrade to QEMU 4.2.0 to fix it. This is
> more of an FYI so that there is some record of it outside of our issue
> tracker and so people can be aware of it in case it comes up somewhere
> else.

Thanks for this I'll try to reproduce. You're not running SMP guest?
Anything particular to run the lock torture test? This is just 
powernv_defconfig + CONFIG_LOCK_TORTURE_TEST=y ?

Thanks,
Nick

> 
> [1]: https://git.kernel.org/linus/3282a3da25bd63fdb7240bc35dbdefa4b1947005
> [2]: https://git.qemu.org/?p=qemu.git;a=commit;h=f30c843ced5055fde71d28d10beb15af97fdfe39
> [3]: https://git.qemu.org/?p=qemu.git;a=commit;h=34a6b015a98733a4b32881777dafd70156c5a322.
> [4]: https://github.com/ClangBuiltLinux/boot-utils/blob/5f49a87e272fbe967a8d26cf405cec15b024702c/boot-qemu.sh
> [5]: https://user-images.githubusercontent.com/11478138/78957618-b1842080-7a9a-11ea-8856-279c3dcc6c19.png
> [6]: https://user-images.githubusercontent.com/11478138/78955535-62d38800-7a94-11ea-9e61-9e3d8c068ace.png
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1586564375.zt8lm9finh.astroid%40bobo.none.

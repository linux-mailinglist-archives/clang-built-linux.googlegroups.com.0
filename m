Return-Path: <clang-built-linux+bncBCMIZB7QWENRB47E2L5QKGQE35I5JHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 886D927EF32
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:29:41 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id n19sf67731pjt.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601483380; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBinBOi+l2chBS8+/yfKY0YmqePrv+OPTmoNByRzz7N60eYuapvyfQ8xzyr4XVD4kW
         DcGGsRiwguoy89kaYoy/xfG6IXAiiAGsXIt+bQDlcinTFc2v0VWBM8jL+tk0uHKVA6QP
         ofCHm3HsXDsiyLvhH/JtOaXY5/bLNKj4Z8VLTdTvFOmTXJ+AfZac23HTHWsTXSv7jZE+
         0hpsq8bmyZle4njh/LfKoA6CvLZBPOwBNltFzBdA3YgMPKeq99CrglRbyWO6Jj9u26T8
         uW3qbKh0KYohWDst3TpX+AlGMOlEq5zWaUPEJL9jL67bSt8onVA/o3yF+Oe7WkqoAa3X
         SxmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yR5DyGrIWXiVo6HBpJ/wkj0lI9pc8DxqM439G3QMlLI=;
        b=CPYX6x+Y9Uq5EcqDIjme6nQF13RNeuT58zI7CcVJ1wkjZPDnkDgpggRg92SUmU4O7V
         xbgAI2ZrjrBve3UXw0VT2tY0aQ/q1LRk4s+HZYpqcBVTt2TxImc2LRqFR+6jIh/Me4cf
         KPkzu4md5PoaPPrKKR/IkNaJ8PxTeg30zJG7jN5hwwNyl4c8/6lcvzqz2TWco/XnhHAp
         WTNwZ9aUxMb29KtitaKtLgd3Hi13WzK/w0BJnRrbbybdooEqvH8qaPsNIddZV9xFxBV7
         N998ji+cniHk/zATfkwcIJAkeq92htWOaGCo+F1s4H8gJFCPmjyCEJvurqBPWif961Ta
         wZug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MThnJ+rh;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yR5DyGrIWXiVo6HBpJ/wkj0lI9pc8DxqM439G3QMlLI=;
        b=ObMUiVE4aKDHLrYLF0r1wirDTHTZcD2BIRolNmOIpKT1vKBSX8kASxLZ52zGxm1WkJ
         JTJ13ViOisnnL5Vti+WTej+27GpdpWDAU+GdORPqtARTnpgdhW3P7diX3eBaHGv8hU0F
         c/SpKOTNFtDbFjWBwl/LngRt8V5uRmKyvX+PBdHFbI0RUt9qokdYguOyp4vNTFQtncNN
         iLfxBeEJwlaB2TaRzqsj/cMfs0I0ksy/ZgKDzs0uNXo8r6fAg5Zycg0lPkNWrv3gUhrU
         Q5uVwaWgBOFiQyj9nLzrNeGon7aD6FynOoEpPmIwIq4gnGdz4P/BixEfCGYHzI5AR8k2
         /2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yR5DyGrIWXiVo6HBpJ/wkj0lI9pc8DxqM439G3QMlLI=;
        b=Il2tXKzsOOhsYTKZf+glyBRyfaZRZLVYra0EfJFxnTkuJsCPYQambzY8PDIxLdZ76s
         0yc4FZE3QKqJbexuIIfJyr/7W8+/wJNrjbBOWHMQu40VNBxuTuCsSHzJtZLaq4FjETCa
         D2/yrD5vaFGJg9dbH+yd69WmFrOq3fJ2r8fxsvYtCtVmcS999lTaGFTZf9++34k2V3Yy
         tn7I0he7w6p+2bAadf4wp+3YXvWWu+LRCVB+2dTnqbB4yvRvjgY+ThYotMBttSrRUYHd
         Uy7YnyIAOJ05Ls0fBX12kyzKjhi9qVP3bvk/SFNthiNG9CILJbD9Era0gXmkeWl7TIOD
         b20Q==
X-Gm-Message-State: AOAM532qpX8aDB4P3N0JGmYbZhZnUBwXfJ/yWak2Fx8qCH+0s7+dhnO8
	5iQWCaQjauKHLGm9tlytjT4=
X-Google-Smtp-Source: ABdhPJzESvPr52K/X4Y0DSGHygpi33W6yBJRKp50/UpWFkGC/R0+n8bbdBmvy4FrdUAkwqB8IFrw6w==
X-Received: by 2002:aa7:9059:0:b029:151:d725:e230 with SMTP id n25-20020aa790590000b0290151d725e230mr3033151pfo.77.1601483380126;
        Wed, 30 Sep 2020 09:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a412:: with SMTP id p18ls1245398plq.11.gmail; Wed,
 30 Sep 2020 09:29:39 -0700 (PDT)
X-Received: by 2002:a17:902:6bc1:b029:d0:cbe1:e76e with SMTP id m1-20020a1709026bc1b02900d0cbe1e76emr3099150plt.21.1601483379525;
        Wed, 30 Sep 2020 09:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601483379; cv=none;
        d=google.com; s=arc-20160816;
        b=NGKBwvW7r6OCQjMBbQQiREMZOMohH/C4ukuHAP9452jId5/jiqUKSq2U7YtVV/JKP6
         1EsiH2QyZNytw/luoym/iaBgnPBxpx4JHliF22jJRFh26mpS7TqNSyiM9ukS2VPqvZv8
         FtYp3Tb2Xd+PP6zYvG7cSdK49Umzg/FOenqGNEFUta+/CZwEOxri9le8OY/cZPcsvSrR
         3HdGLDNoUREqnQ4tSBu2kKW9q2/vplmyh5ymOgoRQWFX08ExTCVmXUH3m20ytWM1KgYs
         6lX3ItBCkE3syEnm/SttEPf8aysInZLlzZ9+gyL8z6eUb9QN/7Q9mrlNbFqjMRaMbKcr
         KW9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JY0B2dX8EdNzyATXC+SxwmmN5kC9QsWUQGW5TuYSORs=;
        b=gCK1eKdSYDYccpuv4WSvZCjDll+Gk+LVIMcYhyZFgfH5C3Na0yKjOL0L4RyYUrCOc5
         +G9NtlP4ph7GVQKCaEZx/PN2bjoxM/qt9k2F5FJ9UwbnEoDBIBHnJSRmpbnGBymIJJGr
         Z+D2wT0mQM8Eyp3g/sGowGJ8pyrWbTDknXoV6TiUqymhWajm9GMcZr9BO2D3RCHZSF1g
         /ZT1ao1ehA+WZe0U/XMNm3YHTPCCgWNHo5Nz3qL0ZWY4zoyEfN5qb02Y3K+PLczmLliW
         KHR+Ctqtn+dlFSehhNFWoLx575JP9vJvqghdVdMk2ER6z/pezMBleeQTk9c+Ovo3xWpM
         /O2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MThnJ+rh;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id oc11si10263pjb.1.2020.09.30.09.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id w12so2020085qki.6
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:29:39 -0700 (PDT)
X-Received: by 2002:a37:9c4f:: with SMTP id f76mr3481549qke.250.1601483378431;
 Wed, 30 Sep 2020 09:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200927145737.GA4746@zn.tnic> <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic> <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic> <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
 <20200930161711.GH6810@zn.tnic> <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
In-Reply-To: <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 18:29:26 +0200
Message-ID: <CACT4Y+ZKp9z90a9xF5cC-X5_7D8zZOoB+337Hh1rt5PysLfbJw@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MThnJ+rh;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Sep 30, 2020 at 6:23 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> > Hi,
> >
> > one more thing I just spotted. The default install of syzkaller here
> > runs the guest with this on the kernel command line:
> >
> > 2020/09/30 17:56:18 running command: qemu-system-x86_64 []string{"-m", "2048",
> > "-smp", "2", "-display", ... "-append", "earlyprintk=serial oops=panic ...
> >  nmi_watchdog=panic panic_on_warn=1 panic=1 ftrace_dump_on_oops=orig_cpu rodata=n
> >                                                                         ^^^^^^^^^^
> >
> > which basically leaves guest kernel's memory RW and it gets caught
> > immediately on vm boot by CONFIG_DEBUG_WX.
> >
> > This pretty much explains why kernel text can get corrupted with a stray
> > pointer write or so. So what's the use case for rodata=n?
> >
> > [    2.478136] Kernel memory protection disabled.
> >                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
>
> Ha!
>
> Here is the answer:
> https://github.com/google/syzkaller/blob/master/tools/create-gce-image.sh#L189
>
> # rodata=n: mark_rodata_ro becomes very slow with KASAN (lots of PGDs)
>
> I have some vague memory that there was some debug double checking
> that pages are indeed read-only and that debug check was slow, but it
> was always executed without rodata=n.


I don't see this is still the case. Diff between 2 boots:

[   11.985152][    T1] Freeing unused kernel image (initmem) memory: 3432K
[   11.986129][    T1] Write protecting the kernel read-only data: 147456k
[   11.990863][    T1] Freeing unused kernel image (text/rodata gap)
memory: 2012K
[   11.992797][    T1] Freeing unused kernel image (rodata/data gap)
memory: 1324K
[   11.993895][    T1] Run /sbin/init as init process

[   11.910396][    T1] Freeing unused kernel image (initmem) memory: 3432K
[   11.911277][    T1] Kernel memory protection disabled.
[   11.911984][    T1] Run /sbin/init as init process

Was it fixed at some point? Was it backported to stable?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZKp9z90a9xF5cC-X5_7D8zZOoB%2B337Hh1rt5PysLfbJw%40mail.gmail.com.

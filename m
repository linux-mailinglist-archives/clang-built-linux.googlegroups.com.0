Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRVZR32AKGQE4SE7VHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DEA199F4E
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 21:40:55 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id t12sf18577962oih.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 12:40:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585683654; cv=pass;
        d=google.com; s=arc-20160816;
        b=vl0fJtoEHS0s4UqFVoZeFZoXLG2jf5SnJcNCvoIz7ENUUEB2mSQ5FelzTzEt1uV0pp
         6yOhwpS+mBe3ivObNminLPtub9Z7oQXYvAnmXRFrnosbTdONZzOaTF0EC6yvsjF80936
         QHophB3ZRkjw2h1SCb0ovKBJ1ynQNixMZhng/xpVfLJMW2bPW27L9fIqH0G5LI6MFIz/
         ON560cBPF6yLVDPJWjixZu6s8Q2uT7bEBhUU+LaQcnXM2YoqQXmC23IBOWGrRjYBqraB
         809KGachfXFclLPFoihk8vH7yCLzKd6UK1GhmKxutUHZ8DPrzUYUratqIHXSRjY53Z1z
         TL8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bsj0rSE0Iicf6Bqehkjggu44AHLSeBElrUVIylfW+RQ=;
        b=PE9gdFKIodcgR7uIGfozLjiI3gVh+Q2A4o05dHAuuzpEXaQlZ0CF17DT4pKuZdvOLb
         ETBUdrufQesjGuAKr/ENOBRK2vTLuZvPz/M2YmtvTKGO/BuHSYavtMw5z3owzlkpiIjN
         tju9aBWv6l0bWpCl8j4GSpUgIFa2qnm36HXvvhUF0dXi+7+zIxZZm1JmQqpflRBIpj0e
         SLtdmicbhHOUnsJPjwYavNA4wX+iu3loqI5uD+VfCE0ZujpW6HWliSWwFn4L4Ft/Jrsq
         q8SwUSYRpr+rLOJEF8voAO182Pg9qeDpSgIQOCU0rn8IdlRS3FQWJS7bNm+FL6F9DhY6
         CLXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QVvuXjA6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bsj0rSE0Iicf6Bqehkjggu44AHLSeBElrUVIylfW+RQ=;
        b=GJspLVYX4aoMzBhzmXL1SN0G8nCDckv3xEoh2GRWKCGL/E1l5Qpp7m+CG8QSE219HW
         IOKSRblovMdZXgRc0EwnKVQgLeoO+qSuFR/p5mLnLAIL3RvF+PfKiLkLlxuy09MCYEbq
         PIS08guFzFHdSoRGqWGnHdBjshK7i3Hi++a7Y6M1Ax4vOFq6SFNBS5ZEG+SX6OiCvRG+
         8Jb3HSs9CIao6KbvXBDTkeRTxIUCPAnO3M1T3uAUdFPXlv9YEurr89SfhoMVaPMSkz2z
         O7ppzTIa3zX8Y783yI8+Y8ZFsG+4eERIMNviKrFUXPSEzUt+R8EURKAIhshCf1mFabMQ
         TzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bsj0rSE0Iicf6Bqehkjggu44AHLSeBElrUVIylfW+RQ=;
        b=GRn2n5iGLoBHi6+ZFNCRuF94T+hGZUewBo6XxlTRJ0utaSEuw01WSgTGjNxMPfOwkL
         pmotGNr9zZ7TH7CDOP98GXi7e391Q/ZgSoiwfV8JQAZHGSTStZmofZj+h1KrDhR/Gc+n
         /zyJdaJ+6R/On0LWFm7J7JrcPVOdyCp6MI7HmgS7kzCjNUY14ZcYm2Kqu+5Mf8z3x+vt
         ArF82jr7Qhd6elez/hBFxAy52tAhCq5tWjzARdLQhoFuFUGw+rLifsRxvW9VlhsOSs2o
         5ytMHqxZagA1BdNN7DWJp6NEETfpiD/rAz3Kn+v34EJrL04asA2r1+SsXWxaGkm9M/9x
         ZvPw==
X-Gm-Message-State: AGi0PuaFAqxAxeuX40JyFgGQ7PuVDBI4TpxgCuTMoc2HhrGTjJsobcVR
	1+VDT9/324t/TSOC4DfJQKw=
X-Google-Smtp-Source: APiQypLxaylan0Tm/8nub1y3SP9EdNGkEz4rB5IrmdeGra12iTR6nnyIBwrWPQBtYfzl//2/74pauQ==
X-Received: by 2002:aca:4e08:: with SMTP id c8mr369075oib.143.1585683654504;
        Tue, 31 Mar 2020 12:40:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls8327251ots.0.gmail; Tue, 31
 Mar 2020 12:40:54 -0700 (PDT)
X-Received: by 2002:a05:6830:55:: with SMTP id d21mr14647634otp.29.1585683654141;
        Tue, 31 Mar 2020 12:40:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585683654; cv=none;
        d=google.com; s=arc-20160816;
        b=FNiiXMTY9I+47gf5zpjiZHs45M6hHxWP79CNoQfXlEq1wyruSXyEloI8Hp5Ur3h/yT
         WO0Ch91GgDJsPUR9Ft60/BTAk4lIut9Id2xe7TqkeZbIUx/Jc1sMjDGHf3aTSgqxt+1H
         DGNkxxxxLMuyBcgZaiuJLs6N/K6e0iDGqgAlioPxnW/wbSfDLE60j3wJCgkNM7DZFs3z
         khT8b+SmgsC8Ial5WLDeNKQTXE+QW95kmMQLmGfagH2WuueRPnj6RHo6wBMgzZIUoiqd
         i6t4cpYBOVCWb3VwS90NGfdhHEzXXhSJ1j8ldw/oXJqzHJipXCbbSIJHUwUAUZBalqyn
         XahA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1k2Wmff8smQkle9ahxWlMJVScKrQOt29svFTAK1Lhr8=;
        b=LwRNtddmSGaZHdnbp+ES1gFbQBvuvWkuRY9XqfywguMhtFEF7BL2RdCE7SXTJW9Ic7
         Js7OcK8vrfxeWM1zZjjRU4F4EsvrC4nyb6a9Hwnr4fM85VYt8kFjXRB//9qQxuMUhyey
         N5bm35p044KnVxnX2UOM5zT/wb/J7hWVeb1uaI52hU1e/SVQqfvS3pC0jfs4wkc47I7t
         FAVxWg9CH6zqgEKPQbrednoLIINDmkmj3hv7RGEoyHnmtI4c2ZkYjI+7XrOVq78l6O6/
         uvJnXThMl0Lxn2KTQoMy5DXehwTqK2CbeZdsZ9o/nwdiqP2Z8HZRcUmGu9i5hSuXAREP
         VeQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QVvuXjA6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n5si301039otf.3.2020.03.31.12.40.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u65so615482pfb.4
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 12:40:54 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr19631475pfk.108.1585683653136;
 Tue, 31 Mar 2020 12:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86> <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com> <20200331193544.GA55810@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200331193544.GA55810@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Mar 2020 12:40:42 -0700
Message-ID: <CAKwvOdnY64uo=73P2qkJkMbFxPTX8v7gC0cfxFndpaqsQ_c-CQ@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QVvuXjA6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Mar 31, 2020 at 12:35 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Mar 31, 2020 at 11:39:27AM -0700, Nick Desaulniers wrote:
> > On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > In fact, the debian provides multiple versions of GCC.
> > > For example, my machine has
> > >
> > > masahiro@pug:~$ ls -1 /usr/bin/gcc-*
> > > /usr/bin/gcc-4.8
> > > /usr/bin/gcc-5
> > > /usr/bin/gcc-7
> > > /usr/bin/gcc-ar
> > > /usr/bin/gcc-ar-4.8
> > > /usr/bin/gcc-ar-5
> > > /usr/bin/gcc-ar-7
> > > /usr/bin/gcc-nm
> > > /usr/bin/gcc-nm-4.8
> > > /usr/bin/gcc-nm-5
> > > /usr/bin/gcc-nm-7
> > > /usr/bin/gcc-ranlib
> > > /usr/bin/gcc-ranlib-4.8
> > > /usr/bin/gcc-ranlib-5
> > > /usr/bin/gcc-ranlib-7
> > >
> > > But, nobody has suggested GCC_SUFFIX.
> > >
> > > So, I guess CROSS_COMPILE was enough to
> > > choose a specific tool version.
> >
> > Or no one was testing specific versions of gcc with more than one
> > installed.  I can ask the KernelCI folks next week if this is an issue
> > they face or have faced.
>
> Well gcc is just one tool, so specified CC=gcc-5 is not that
> complicated; it would get a lot more gnarly if one had different
> versions of binutils as well.

Have you had to test different releases of binutils yet? I have, and
it was not fun.  I don't even remember what I did but I recall it
being painful trying to get it to work.  (I think I finally solved it
via temporary symlink).  Speaking of, I should get back to those
dwarf-5 patches I started, now that binutils devs implemented every
missing feature I could find.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnY64uo%3D73P2qkJkMbFxPTX8v7gC0cfxFndpaqsQ_c-CQ%40mail.gmail.com.

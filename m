Return-Path: <clang-built-linux+bncBAABB36ERP2AKGQEDNXXPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9160F198C44
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 08:25:53 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id b3sf12708847qte.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 23:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585635951; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAZnjuYA4DuG+wZAIfDWZxTdddcv8YGLJla4NMOcZYTHMr1qRPKt9SHsO4r3CZGDGn
         C6wmohPrwfwIuBKKq2UEIxvMqIysPdbDF/RAcIW6bJTxmyopjKw0CtdedsU7VvUyawVx
         xK71oR0I9rs88DTqsREC6NpQ1YzhnzPoNugAdX0fitHKyMs+4OEJkrCchTmjYtPWQNCA
         YziyXGggxa+DqdJZIZxSuMutqin7YjV+i64PVWQWxyQOz7wkIkTeYH4Kz2MfCXJ7PXCH
         Pjm2Drcm7WQQfZFT1NbNrSKkxBk6r0pZEa/bQ97DrBmerKR7ssLKy53ptloBLK8LoqaD
         b8rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=DzeZYpFO2c/M/SvPa06VL6pPg14JAlVcD0kRslAaRZ8=;
        b=HB40tBg+tjPI5Jxt05x63wkCRrl+NfW7BrpNDYuWKIJ0DDdPxkzdxdK4P4YTCTcMB6
         nCZ66X4W2wNP1Jd+0hMZ4RKJhXzuk4o1DyaXUX2YtJ0zs6jKJEYCQ1eLkZIFVJ63PnWg
         JSFOLhd0azGf4CqpL6hw9+GbP/6ugYcOa06y/ynzap0+GS8OJNwXvysBPJjWpi/Gv+VN
         IKnwVS0l74gi/4pVfJ9tcY2fkzHL8GrgVx9OPSY2Kn6na83FDrDM9mSBDkYXLDscv37/
         X7aq9QCZjoefzkBfDKulAR1AtcfM6n7xJJuWHf2HC5IcM3gdlxXu3kfAmwgtCdmECG/e
         8cmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ya91m2S2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DzeZYpFO2c/M/SvPa06VL6pPg14JAlVcD0kRslAaRZ8=;
        b=ZzWHjNbmpVSQe9K//1zZSAutFN9P5MWtG/my1WsC+HC4FEhHnkRZKEqsPDOegtWgYM
         iV8N9evFRed1L7aRCTMHdVcSLFx3K/1A2sHsrKZiXK4JdxhM+V4Z4FLyVZj+QeDrJtHO
         UkdcJ1v4u1W2oPiMdcFJpdpRPxIuDzGvWsUS4YxQYxPsMDQjIUm2y2yTIryBeG6z1fD3
         kxHV0L2j3BR7OsxkhEmJHogCblo/8nML1qurWcN0p8PlaOyx1Fp2uPbWbOqCTietFZ58
         KhNj6uIskxc8Squfj2KmckdoChtupQCEf1uNHyKinZkf2caKsKwAtttCFltuqjQCplVb
         IFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzeZYpFO2c/M/SvPa06VL6pPg14JAlVcD0kRslAaRZ8=;
        b=UWfDHC3eH0Oc5uBhaAEjw5jRo9By1LXB6gRSYH0gtRejOVSuGcQN17+/H9NzA4ONdX
         M0x0kTkch9tnNwVCyTmhseXYeHLTQ3y2s1xNBDv8xcCBeyhs03grJlRL9OiWr8Ijq8Ia
         aYxmItLkv9USU5PT3f496+Fm68fI2HzX9DjxoJuvF3dt53nbp2w5MUsYGbP10nC+MZQS
         Jx2Qgv135w5SFeluL9cisZDncBPlqIj+mGmk+PeHUaOYygldVMvt9vTF0dtqlCkfN78O
         vG0PwgqtgSaFkq8Oyqz91YhEUzxmgKkUsOSlY+n4rBxUIMy+H40Z5n1KB7cpxGdIhMfZ
         mfuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1V8ZJbcRD9D8dDZoXkH2aw+6FoFCXsPLej468e15q7lLCtovbF
	vOBy3PpAAnQz/NCmu7E+QuQ=
X-Google-Smtp-Source: ADFU+vuVm3jWFrfqUqqcU7R+IfF7QdJNvPKqkZ0GM+3s4kh86HpvVdfgZupuPZ8XYiBHrTzTqOuzpA==
X-Received: by 2002:ae9:ee01:: with SMTP id i1mr3534902qkg.498.1585635951328;
        Mon, 30 Mar 2020 23:25:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:aa0c:: with SMTP id t12ls9992231qke.11.gmail; Mon, 30
 Mar 2020 23:25:51 -0700 (PDT)
X-Received: by 2002:a05:620a:cc1:: with SMTP id b1mr3669807qkj.202.1585635950988;
        Mon, 30 Mar 2020 23:25:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585635950; cv=none;
        d=google.com; s=arc-20160816;
        b=cWe7WMhEm4rdWuvEgUobeu3AeqkHD83DSWGUcngb3/L+H6z2LEh2is2f1d6eIDXHMV
         DJMrIuPhOxfGdP4VRV+T2JG2uvenadI/coY0Qeh3JxGJYqFkRcr9U5o/R6d5dwUCu2Z7
         jz7e9Cxr1I64MkodWYYMjVzVxd98JTNK4j7CohQv1BXbOFVVhhqPKZpwuFWSeK+dyr7n
         R3l6cwpHtU1LqHdwRAZvNcs/lIybhMrbxbsF4Uu1zBu/cHYETcNeAel1J86DfE/LxY52
         RsICnldJBPR+4cSrNXpM5yTb/fwZspI7w21X8TQ7Y3G62dUf6tX4/yfZ985j6iyXPOhK
         88AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=bhHDF/pmVptyuAoHUwFW/YtM1ZLRsyzSLz5SMFr9KSE=;
        b=OpZZc0ApU1AAmuaYRHlxS8+FtptscvDGdZH9eFuxWUv9ZCozFEgdIHI9rMKuCKonpj
         0fPvH3SGNXssNGVl1PwSnqrpCXbvw6XV9sKR1XBR5o1hB9wIyo3MXaXyDxKe102+eud6
         pSxtC7Nnh0Qewc8Jmrtx9ZnlJR4a1yl6jA+TVFsCX9S8Iu24eegXN5IDgdL7YIDmF0ld
         husIqjWqvbXch2AOXZ8IQQaDC+/bHYuDam9jQZ36RNuTUG+iI/Kie78sLFCgsW/ddJIw
         ibzp1tUxq24qhbDk9MN5jhrEyfoHBB17qzhZlnIDSikCzoxVOBcvOkp4/Zgnz+pC/jgM
         QGtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ya91m2S2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id p11si1217059qkh.3.2020.03.30.23.25.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 23:25:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 02V6PRYw017969
	for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 15:25:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02V6PRYw017969
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id k63so5403265vka.7
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 23:25:27 -0700 (PDT)
X-Received: by 2002:a1f:1786:: with SMTP id 128mr10407782vkx.26.1585635926362;
 Mon, 30 Mar 2020 23:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com> <20200330190312.GA32257@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200330190312.GA32257@ubuntu-m2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 31 Mar 2020 15:24:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
Message-ID: <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ya91m2S2;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Mar 31, 2020 at 4:03 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Mar 30, 2020 at 11:58:19AM -0700, Nick Desaulniers wrote:
> > On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > I also had planned to provide a single switch to change
> > > all the tool defaults to LLVM.
> > >
> > > So, supporting 'LLVM' is fine, but I'd rather want this
> > > look symmetrical, and easy to understand.
> > >
> > > CPP        = $(CC) -E
> > > ifneq ($(LLVM),)
> >
> > Yes, a simple if statement is much simpler than the overly complex patch I had.
> >
> > > CC         = $(LLVM_DIR)clang
> >
> > Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?
> >
> > Also, I think we need to support suffixed binaries, as debian
> > distributes these with version suffixes, as Nathan points out.  Or do
> > the debian packages install suffixed binaries AND path versioned
> > non-suffixed binaries?
>
> I think the idea here is that ultimately, the suffixed versions of clang
> that Debian has in /usr/bin are symlinks to binaries in
> /usr/lib/llvm-#/bin; as a result, a user could say
> LLVM_DIR=/usr/lib/llvm-#/bin/ and all of those tools would be picked up
> automatically. I am not really sure what is better.


I periodically build the latest llvm from the trunk,
and install it under my home directory.

So, I just thought it would be useful to
allow a user to specify the llvm directory.

Of course, I can do the equivalent by tweaking PATH, but
I hesitate to make the non-released version my default.



Having both LLVM_DIR and LLVM_SUFFIX seems verbose.

In fact, the debian provides multiple versions of GCC.
For example, my machine has

masahiro@pug:~$ ls -1 /usr/bin/gcc-*
/usr/bin/gcc-4.8
/usr/bin/gcc-5
/usr/bin/gcc-7
/usr/bin/gcc-ar
/usr/bin/gcc-ar-4.8
/usr/bin/gcc-ar-5
/usr/bin/gcc-ar-7
/usr/bin/gcc-nm
/usr/bin/gcc-nm-4.8
/usr/bin/gcc-nm-5
/usr/bin/gcc-nm-7
/usr/bin/gcc-ranlib
/usr/bin/gcc-ranlib-4.8
/usr/bin/gcc-ranlib-5
/usr/bin/gcc-ranlib-7

But, nobody has suggested GCC_SUFFIX.

So, I guess CROSS_COMPILE was enough to
choose a specific tool version.




> I'll try to have some other comments by later today/tonight.
>
> > > LD         = $(LLVM_DIR)ld.lld
> > > AR         = $(LLVM_DIR)llvm-ar
> > > NM         = $(LLVM_DIR)llvm-nm
> > > OBJCOPY    = $(LLVM_DIR)llvm-objcopy
> > > OBJDUMP    = $(LLVM_DIR)llvm-objdump
> > > READELF    = $(LLVM_DIR)llvm-readelf
> > > OBJSIZE    = $(LLVM_DIR)llvm-size
> > > STRIP      = $(LLVM_DIR)llvm-strip
> > > else
> > > CC         = $(CROSS_COMPILE)gcc
> > > LD         = $(CROSS_COMPILE)ld
> > > AR         = $(CROSS_COMPILE)ar
> > > NM         = $(CROSS_COMPILE)nm
> > > OBJCOPY    = $(CROSS_COMPILE)objcopy
> > > OBJDUMP    = $(CROSS_COMPILE)objdump
> > > READELF    = $(CROSS_COMPILE)readelf
> > > OBJSIZE    = $(CROSS_COMPILE)size
> > > STRIP      = $(CROSS_COMPILE)strip
> > > endif
> > >
> > >
> > >
> > > I attached two patches.
> > > Comments appreciated.
> >
> > I'm not sure the second one that recommends changing cc/c++ is the way
> > to go; I think it might harm hermeticity.
>
> Agreed. I do not modify my host system at all for this project, just
> relying on PATH modification. In theory, we can still override HOSTCC
> and HOSTCXX but that would defeat the purpose of that patch.
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330190312.GA32257%40ubuntu-m2-xlarge-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT1HoV5wUZRdeU0%2BP1nYAm2xQ4tpOG%2B7UtT4947QByakg%40mail.gmail.com.

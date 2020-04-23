Return-Path: <clang-built-linux+bncBAABB4WSQ32QKGQEURUQPLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DB21B5E17
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 16:43:00 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id p9sf5954517ioh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 07:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587652979; cv=pass;
        d=google.com; s=arc-20160816;
        b=cDd5Y3PkNYfdZ5/0YLf1zAH4whhuof65+RlHD82ST0wKWRl2MNnX3SlPv70fkf0ukw
         uDeNczgh1oEsHbd2B3Nhbg1kJFBctrYZgBGaumUL/CVIWRxcK1J4Beu/1THOOaN6IVZf
         VF2fF/Gffpxl4Ndxs6cJ35DmeaMDP7rPX/Y/wUjSUZbRAzmTIr+0JlSmaTJ4X+bfFh5X
         LR4m09WkKq8EMDc3zsRDlErJfo5mZ/G0ekkzy54cu3HStD1WyFjB5iotkUd/jejSPnhV
         iEKBXmJYM1BzjfirrGpjuypOuUeFlXtKUcfuFfVZkxuovD1FNKgpQRWTv155V8GJ37qd
         l8RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pyNHkdfuazCsufyYlKnGs/nS0SMZIY+SLET7FqrO7wQ=;
        b=HwY1Q02IWtKNtDuuDq1xR+tktR9THrdtf6L0ygU8mQISqRwokE/7IQlRcd5rUejBhF
         QdwqQ+TCJ+w5wfjuPh+L5XgM1F8RXv0uPm6TMi7KXNGyGsWrWjtXWeUoQ/1g1aNMYtmp
         Sj6fpWLb2R5DEFvGZR0XVGDjyafEYCREwok+smoLfNTNR/zDh38J/ypEYVPYhsrchjOF
         BbjMW0X7vTEXhqHtKEH66qEsjsQdC/Ur2hyZGkc+qtZsZdjmv4O5eGoV0HHR4wg5l/og
         1L5BUCcU2srM+XBtTM2+1ptxBf2FT+/kL01hhfFs4lPxcPWuNS0AmlSUwEUa9gDj85aW
         8ssQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=23X9GSV0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pyNHkdfuazCsufyYlKnGs/nS0SMZIY+SLET7FqrO7wQ=;
        b=SpGYHFxRv2F3cBj8zWqqYUAQUoZeuGpxjv4KsWieM05YWk4wWAyTJ0qz2f8MC3faLW
         bzWiKsriFClJXK142mA3+PnRixUHw0Z+uI9ogncnn1C2EQMG88waLIywCmTmrqRuGfkU
         yDab3rOghTxyfMOqx0f77Zv3rbu3SjCGZYQmZ+cWRG99UPzzQqNPv+IywnCbovM/iMUd
         lYuj5vAWK/cCMpJ/P7bRyuasAvGndifPB/y63pUR1KOfSIJR2hmna3FuPPnu0O44CR+P
         u9D/YFISMsQQYtJZMPfq2zQP0mXxJCa732Ffqv92t9i+0X7vgeP6BMYOq4dnVIZOc85X
         f3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pyNHkdfuazCsufyYlKnGs/nS0SMZIY+SLET7FqrO7wQ=;
        b=Ln3kK3VczhN53art6KoZvm1jb57e17KrBwdovy/R+bhcLpvGcHng36QiS1frfW9g7N
         XQx3TPEMAeiKqa0SNNEtkNWtDdMQtWFs34DnqKicULyYJLbK6XFOFVHQdBYuJltmqGwx
         rlAjIgQCHzqXF7o2cKkIGzUWviEKAJP9L0HbS1U+oX3nQHoaU9z/vAzXDuhH5fnsO35c
         b89JML2PmE91mlBiTqkH4uPUxKKi1Kl+Wxv8bKeWkNPaC4Td9E27VAvoSGFAo1GlDk4d
         +AYkAEUMqmhvWOq4eFVNO2EA7HorEBIe89p89lWf3jyWrjybFDQ1+6MuOuMeVy2sDayq
         zSuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYdhwBmeBiZbFHN/08Y/2cQPUDw6SZDrfELcjgt2BAuXoyeqIAr
	LwJlFHpw/n++s8mjRTCoDxo=
X-Google-Smtp-Source: APiQypLE44aCfFDwatgpqQRtI18qsqoV0Z5sfAQSbjvHBaIp4cKWrLrD7Iidb9nOZ7c3aWRJSsFfHA==
X-Received: by 2002:a92:d208:: with SMTP id y8mr3777332ily.1.1587652978954;
        Thu, 23 Apr 2020 07:42:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a05:: with SMTP id h5ls1257208ila.1.gmail; Thu, 23 Apr
 2020 07:42:58 -0700 (PDT)
X-Received: by 2002:a92:485b:: with SMTP id v88mr3718836ila.271.1587652978596;
        Thu, 23 Apr 2020 07:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587652978; cv=none;
        d=google.com; s=arc-20160816;
        b=ABk9UdSe5tKzRZ6wv5T0jCcdMiQH5nTJxYszz5BfEVwbEyXs/BDzywkbDXLACeBr2U
         BKvHZ69BbOt1p6aIkdJSBQB7KmXXWVZGENR8E1vdPeGMhENgo5K6oX50DGt12D15jksj
         BwlfJb9Yxd6is7wULSW+QDwoF8N0pdHMGh+N3P6ISEKd0z4RVPcw0xZ2EYtiJmAbsQex
         4tVFjje+nUDyc9TB3xyEJAZjHTAFdUovJFjIlkbBsTp1NFNP9ZqGviERRNn3Gpvyzt+j
         2hVNPKGkiP19f+BhYRw4Ix1jaDv1IDS/IQGDwidWGkLbVq2cEhQSh62FNsNkfW3XFAdS
         ax4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ZbrX8HgIq0QwRra2pCZbmne6rmEly6+QxtlCHSyKHGM=;
        b=0DHR9T5kSDB0O9MY0XaxKjWXxZ1z8Q5ockW+hEP9THHIgMN4WL6OHgry4nsW7OKZZL
         E5DqacwK9Ia0H4xVqfxAf3PiJXbi6QYviUv/U9oFPVfID2rzA/Scfv3aZlyZ07lAMTCu
         +NiFVEOkbV4HC+nCmui8KkOxi3Fdb/wTXx5wMmUyA7TimC9+pGHK1XHLlsqJTBaXsV4x
         OwKngD24eRzqRQYM77bFtcHn5FTAqY10QD7lc822vRGKbN+9sroG4itSAn/YYX6OIKf0
         ieQy1piHq9EDU3GSO6hH/6O1WN0rh88Vmo8X0ImQCa50dYHoY5S9woqnAa3ro8ermGkU
         88YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=23X9GSV0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id g17si301739ioe.0.2020.04.23.07.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 07:42:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 03NEgXqZ017542
	for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 23:42:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 03NEgXqZ017542
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id v24so5895885uak.0
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 07:42:34 -0700 (PDT)
X-Received: by 2002:a05:6102:240f:: with SMTP id j15mr3574415vsi.155.1587652953014;
 Thu, 23 Apr 2020 07:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419202128.20571-1-natechancellor@gmail.com> <20200419202128.20571-2-natechancellor@gmail.com>
 <CA+icZUVaLW+38WEJhqnfO7B_unHvrbSr0moKnfJ6zXGGA06CWQ@mail.gmail.com> <20200421024256.GA42179@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200421024256.GA42179@ubuntu-s3-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 23 Apr 2020 23:41:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT-rcfbri48rA8yNYN6ySvRUWg=DoppvrU9eerY5ckBVQ@mail.gmail.com>
Message-ID: <CAK7LNAT-rcfbri48rA8yNYN6ySvRUWg=DoppvrU9eerY5ckBVQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] MIPS: VDSO: Move disabling the VDSO logic to Kconfig
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=23X9GSV0;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Apr 21, 2020 at 11:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Apr 20, 2020 at 11:53:55AM +0200, Sedat Dilek wrote:
> > On Sun, Apr 19, 2020 at 10:21 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > After commit 9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig"), we
> > > have access to GNU ld's version at configuration time. As a result, we
> > > can make it clearer under what configuration circumstances the MIPS VDSO
> > > needs to be disabled.
> > >
> > > This is a prerequisite for getting rid of the MIPS VDSO binutils
> > > warning and linking the VDSO when LD is ld.lld. Wrapping the call to
> > > ld-ifversion with CONFIG_LD_IS_LLD does not work because the config
> > > values are wiped away during 'make clean'.
> > >
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >
> > > v1 -> v2:
> > >
> > > * New patch.
> > >
> > >  arch/mips/Kconfig         |  2 ++
> > >  arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
> > >  arch/mips/vdso/Makefile   | 30 ++----------------------------
> > >  arch/mips/vdso/vdso.lds.S |  2 +-
> > >  4 files changed, 23 insertions(+), 29 deletions(-)
> > >  create mode 100644 arch/mips/vdso/Kconfig
> > >
> > > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > > index 690718b3701a..45220e4b8a65 100644
> > > --- a/arch/mips/Kconfig
> > > +++ b/arch/mips/Kconfig
> > > @@ -3275,3 +3275,5 @@ endmenu
> > >  source "drivers/firmware/Kconfig"
> > >
> > >  source "arch/mips/kvm/Kconfig"
> > > +
> > > +source "arch/mips/vdso/Kconfig"
> > > diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
> > ...
> > > --- /dev/null
> > > +++ b/arch/mips/vdso/Kconfig
> > ...
> > > +config MIPS_DISABLE_VDSO
> > > +       def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
> > ...
> > > diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
> > ...
> > > --- a/arch/mips/vdso/vdso.lds.S
> > > +++ b/arch/mips/vdso/vdso.lds.S
> > ...
> > > -#ifndef DISABLE_MIPS_VDSO
> > > +#ifndef CONFIG_DISABLE_MIPS_VDSO
> >
> > Should be s/CONFIG_DISABLE_MIPS_VDSO/CONFIG_MIPS_DISABLE_VDSO ?
> >
> > - Sedat -
>
> Ugh yes, thank you much for pointing it out.
>
> I'll send a v3 once I get further feedback on the series.


I just wondered if we could raise the minimal binutils
version from 2.23 to 2.25, but it might be too aggressive...
I do not know.

Other than what Sedat pointed out, this looks good me.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT-rcfbri48rA8yNYN6ySvRUWg%3DDoppvrU9eerY5ckBVQ%40mail.gmail.com.

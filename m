Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBJUHTP7AKGQERNDFJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0472CAFF4
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 23:28:55 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id r15sf1612506pfg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 14:28:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606861734; cv=pass;
        d=google.com; s=arc-20160816;
        b=IYg9XAztEHvvW/pOWzjNJIbPw9HUX1zaPlWcwnvlKce9Xu7VlguuVe3r+FqUrWLct3
         hkVtjVpIkP7+ptHUd1W0Yi9eiMMCG3dQGr9r8EzxLNcTPBtpmQn8BKZjwlV5P3b4MNUx
         a6obplMNyXwcnAknnzg8smvwxPnkQ/NhP2NIts1BMmR7Ti2kDZJHBh9igG9yrABxhYzB
         MJwJodhtP5HssswmA9CYSApQiYXbwrbjxBZZkE8chyTt5Ou/VDul92nUGCucg/AJdoK9
         WfbuRYMG8PlodRXnKervPKSFSgrjGEnFuB5CLNQiOzH+BoQqVK7mqBv628SoPob7jbTr
         Qh5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ia268qUJJaYj29Hg/2MHJkjZUnQihR2u3QACEMDalWQ=;
        b=M+yykQxCvviHEzKLWzq00vxK0mSa360VR7g7ZWJUzL9bp386gn8DIXzxyRKUckM/IT
         /BzcAjqW7R/tyBgO3RDNhdXc2dWiVfC52xgWvqsY6JXUTM+qtF3o1krtiT8i7bHvCWCh
         YJXUjm5JTyaQlh0GXi2EMuIDa1hGjkLA0o3zIOk37AHrXAgc/lU6THpvKjbHUPl9j+Be
         amr24KoxYLeUeztRlUitb5yNR+Bn9OGfWHYqUrJnetr5usqyxa0/VGq5kBR/UIhyNvPN
         mBGcs0Q9q/x5YJ700HkGGslkJGw9TgdB37e9xdt6uw4p191US71QfVO2NKq7m1hhRopT
         EsiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ia268qUJJaYj29Hg/2MHJkjZUnQihR2u3QACEMDalWQ=;
        b=j/NAnQJZHHiDMBJ10urOxmyexTNxNnCfSGo/eMgRNmH9AavY8Ow8ZjdrtGGK1FK+Y2
         mgVd94gAa20qNdLVj3ucQEySGzbkzcYZpdxstISVVSj2cpjShyJfAUZBfDJTi5evQ1eR
         yvMNJYa15V5ZdCwPzvQzMR9i/jVvjDbjGTQZ5BKPAmZPzWNjil0vJKVaDo24HSU9ebQ/
         9asOK1i2m7K2FzknG4aIlxoEjB5aU3HG9A+4qCoqRWQDrif0YSpdBu3BE8+HROmgopeV
         GxvqOx65g24VfvC3RSyNqZRacnsKL1wWAaBInLinKa0uFgyXeSFmih3VV0SJe57nVYzJ
         HS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ia268qUJJaYj29Hg/2MHJkjZUnQihR2u3QACEMDalWQ=;
        b=kI+K6LUx+NDyO4Dzo/LCV/zgDW+yAJMSNaemU4VydplgObAX9YIglPYVVe27pCXHLC
         kuPLV6Cs5mfFNIcaHMDfOOvMGEyUHI0v3y0MMZJEvFNE2YLlSBxyGsF61ZiWrHYr9Otl
         uY06EQ59NjLRsX2ow+1IEydjfHsV9NkQrxm0/lHpiKH+O+ebmfn79hZmo+OSjN/2zZYR
         L0dOb3LtnCAsJxBzDXN3gt/TWxM/YJ0get3x7BRJChkccta1kY0VtHxobkruSJVGmMjC
         +/Eb/3m2akUq7Vjwl9cwU9n1wcEGhLTeyGR9DwFkshyKKaz9Dv4Gs+YeHNtfYyoBk6wN
         Vrjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319S5YP+6RcC0kk15dzppyKjaYOBMbJqJ195yRld9hC8MZYZ23A
	klq0nLV/qV2GselZzpZjcyY=
X-Google-Smtp-Source: ABdhPJy3yo0f0ozdbX8UcwIPBjeu6re49PE6C992ftOHsLy0Eb7yQp+r2l+qkpHoyW7sfzsIa9/o5g==
X-Received: by 2002:aa7:8014:0:b029:197:cd5c:3e6b with SMTP id j20-20020aa780140000b0290197cd5c3e6bmr4703652pfi.21.1606861734606;
        Tue, 01 Dec 2020 14:28:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls99331pld.4.gmail; Tue, 01
 Dec 2020 14:28:52 -0800 (PST)
X-Received: by 2002:a17:90a:9e5:: with SMTP id 92mr5067857pjo.176.1606861732340;
        Tue, 01 Dec 2020 14:28:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606861732; cv=none;
        d=google.com; s=arc-20160816;
        b=K4WMhAZ5QYeiCy8r+wSXF/CDTui8hpQ6WmSJGY5BSoXNJ/9cePvJK0DSMg0RJnS3lA
         fem3AOt3WtLOAMLsTus2zUQGVtNucsVdjBftU4w6u0LdBtTDj2M0FyzffHGCTenuVG01
         Wo6rS2R5pFFVhwXynduslpJHE3yQEVPmO3o2CR5iu77fv7lM8Bk+elpAafwT9NWw17pB
         b89MZkb76ksIy7XLVR7qK9l6n26XwgoHh7oJ3l+yFJf3t1umRIhC7hVc7tFbCQ8Zn3GO
         ufWeqhKeljK8pntvQqqkIr9qvOm1nJVLM01Dcdv22xXecrdYYlMc+JdKT6yThns8PFti
         VcZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0UUvWd5LRNKDkSBD/bToGFS8o2wIsFG6B56qGQqE5Ew=;
        b=kVEhWThAhySn1xn7vMOdbJLHznZaCkrDRs7VJWxh7bKiejzDhvI1xWJ+Ssvz4GQak0
         RIfTaPHUeBbyZsMd7bfMN7vhmZ8R/QeV3IASlBCXOgSjdAiT2X3+hvRH5l2nSamZwOVT
         3DUhf1vn9rty1obAyGPBrWXDJ3+tQNokYZtF8MDN0bym7AVnkqU3Jco0zNlDg6jVOvLi
         fOARoquhYRxjcT+mPSSBpLONoe0oNhCOqbU1nj/3ox4wSaMLtNUvFIRG3vYtN0qTHSos
         8K6l+LMrmb7k91Ee6bLWy6B54X4ahrwNOZVfHnBdYZeQ8NMIUlcLgucV/tRXszVp6+9D
         B2mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si59604plp.4.2020.12.01.14.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 14:28:51 -0800 (PST)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7ECC82087C;
	Tue,  1 Dec 2020 22:28:49 +0000 (UTC)
Date: Tue, 1 Dec 2020 22:28:47 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Rob Herring <robh@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 6272/9613] unittest.c:undefined reference to
 `of_dma_get_max_cpu_address'
Message-ID: <20201201222846.GA2646@gaia>
References: <202012011747.PIcmivAO-lkp@intel.com>
 <20201201122915.GC31404@gaia>
 <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Dec 01, 2020 at 01:13:38PM -0700, Rob Herring wrote:
> On Tue, Dec 1, 2020 at 5:29 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Tue, Dec 01, 2020 at 05:32:51PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> > > commit: 07d13a1d6120d453c3c1f020578693d072deded5 [6272/9613] of: unittest: Add test for of_dma_get_max_cpu_address()
> > > config: s390-randconfig-r034-20201201 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install s390 cross compiling tool for clang build
> > >         # apt-get install binutils-s390x-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=07d13a1d6120d453c3c1f020578693d072deded5
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 07d13a1d6120d453c3c1f020578693d072deded5
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
> > >    coherent.c:(.text+0xf8): undefined reference to `memunmap'
> > >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
> > >    coherent.c:(.text+0x174): undefined reference to `memremap'
> > >    s390x-linux-gnu-ld: coherent.c:(.text+0x344): undefined reference to `memunmap'
> > >    s390x-linux-gnu-ld: drivers/of/unittest.o: in function `of_unittest':
> > > >> unittest.c:(.init.text+0x120): undefined reference to `of_dma_get_max_cpu_address'
> >
> > Thanks for the report. I think it needs the diff below. If Rob/Nicolas
> > are ok with it, I'll add it to the arm64 tree (with some commit text):
> >
> > diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> > index 98cc0163301b..799125ef66fc 100644
> > --- a/drivers/of/unittest.c
> > +++ b/drivers/of/unittest.c
> > @@ -871,6 +871,7 @@ static void __init of_unittest_changeset(void)
> >
> >  static void __init of_unittest_dma_get_max_cpu_address(void)
> >  {
> > +#ifdef CONFIG_OF_ADDRESS
> 
>        if (!IS_ENABLED(CONFIG_OF_ADDRESS))
>                return;

I can change it. I saw two other instances of #ifdef style, so I went
with this.

> This once again makes me want to kill off HAS_IOMEM. Or at least
> always have a dummy ioremap() and friends for !HAS_IOMEM.

That's for a different patch series I guess ;).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201222846.GA2646%40gaia.

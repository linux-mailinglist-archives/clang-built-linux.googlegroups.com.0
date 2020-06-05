Return-Path: <clang-built-linux+bncBAABBKV45L3AKGQE5OP2T2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2DE1F0070
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:34:03 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id f21sf5188836otq.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:34:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591385642; cv=pass;
        d=google.com; s=arc-20160816;
        b=k61RRJ/fDh9WJdfkXpTq/7YWAOFM9Y+Z2uDyZ609XPKKKIG7lChKWj4jU811eJ8h9i
         uAo341qmBCwp3gPwVzVXwPnrWY1aokSrOUlHh5HQ4kqaOiLb3LWvNeU9Ml6HYIVfh3mf
         8yCwJq5BttnQWRkDJZIGjPSl9ceG+Lj5bjsHBu4ZxAmpTIB2z2bg4XGre06+29mMJ/R2
         RGQ25PTqPuRfUBKqpy6Yy8HRbANwCA9VKW26AREJmXcxnUBDVcu6pminK2X8wlnR1sjm
         caBMU3iVAAgIIxcpko3bxjQdwk+2efnFhy5ncop7L3GcntioGzr7Gl8u0DrJY23XUoXE
         zUbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=13wau4xTns0qaqsfE7JFQzQYbz2/55KofBRLsg1uebs=;
        b=wz/WkZ6MvHCl7kIA6l3/4y6oFruK18YTUzWTvSUQhwA3LB/ChaQmcEsqyyv0GhQL4c
         CsIkDAic0Wjv84oo+OIkKx1PMW4fOaUgluViOy3J1xKyX4hI/fYbi4MuHAY58UGo8EG/
         LQvqD/6l29BIS3qskbpfWFh521fL+IewtFNh9yvTcL1NODP3QBBNpdSaLrQbTSey8xP0
         JcYlpr9wBJREWPW8GL0IyllxIwtrZYhddB8o8PHievDt70jhoAwF96XQnEP23P5E4Sbr
         t5X342qBgstW+4DYStNathE2rIWoaKGlXXn7L4CjSCAAESRKXr7ET2mP2EkCX3QPbppD
         6GWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Zxv98AJq;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=13wau4xTns0qaqsfE7JFQzQYbz2/55KofBRLsg1uebs=;
        b=TfhFha2Jx1vG1xj2wMmIzwiWPp7lf7RcI1eEPewpS3ayCfTyQSaHdso7Fzo4RbdPYL
         hoBsPupNQAWnKgNXHmqdFQryNZeFgyiS6qhOQc4RKlP/VnV8Sx9/SSiO0z3Fm6vgGBZh
         6zWMC4pb3CKI+vVGtfrkmAmR8fuSZ3KFkQAzCAoMdx8YqWtrvNcwXQ+hFItxMUZJUAHW
         b6cPTtcivsHMfhtXN/lgJxg4OTr9Am/w9E0yMQ51/jrff4pWmTGsQpGQGWX0wDHS/5W4
         /weRU/l2hcm5V0p8PYw273OF2hs2VSpPpRfjUhzLGTYyB2YixrGqcoUjZeabJhgoJO/X
         Rn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=13wau4xTns0qaqsfE7JFQzQYbz2/55KofBRLsg1uebs=;
        b=JdDDPRd9Xuum73uTtSeJvT2OjT6dbxoIWRZtCr226IPxJHy6Hn6O1kuCtWMYdpRKUp
         iDOFpKcUUlO8JG3htLW3fqR0WD5HuO7gMy8khouDcF6RqEPdcDIVQyE/O0EpeDJBOwjl
         6ONU4PEmsuoREaswUQ5NH4zjOMxU0S0JBtGc8JXgyID06ky976hq8/OTUHW2h8Cilmi+
         p2meoJVX6Rrg6WlKsZ3fG9t0qlvfXxCIdWqONAPXpPpgwda+NlmNT/r24vWz9ETWe121
         n9f3u9RiQ1CAkaCE9T1U4dxOAsLFyqkC6c1kGfzuLll/Lr54OD9ixktEWO0+yCRoSqip
         lhSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ek6ADkbd30rWhMm+KmI01tyLLKW8Nz9xLaZAg8b/z6suUlP3q
	nEZaRBOGSVRuCCdAfzjlhVc=
X-Google-Smtp-Source: ABdhPJyLiKahXHahpuFfT5lqwXiTraaatdGSg2sgit9JOhYxSB4G3gnr3k1bIAn+qxFfBncj4Op3eQ==
X-Received: by 2002:aca:8d1:: with SMTP id 200mr3045309oii.174.1591385642470;
        Fri, 05 Jun 2020 12:34:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls1997845oig.0.gmail; Fri, 05 Jun
 2020 12:34:02 -0700 (PDT)
X-Received: by 2002:aca:4b4f:: with SMTP id y76mr3059020oia.34.1591385642131;
        Fri, 05 Jun 2020 12:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591385642; cv=none;
        d=google.com; s=arc-20160816;
        b=PBkjdvSxcucbL6XLtKZIPuqeBxE0oTlaAGUinz1lobjsv+SjY9ZD+dqOwPAvkKJLKw
         /n1mvXmi1lBAKOVi0Fim9k5DT3BnXiagQmKK2fX3Xw20s9Mju/LqcZN4eszGjZKdlcn4
         f6lNEjRjO+yMBBsSQ1yvv6Hy3wmw9AzRQqPCvPjTNXQepuVFCE2eDDdWCf7PmOisji/u
         YnRvVsuGaqRwD593TuiE6u2FCYBADtCvASOuZJ2Dlrur5AsyNzp8rCjSfx8FxHJDbpEA
         tON6AqB8joSapDvL5FDpJSfq3HNVqusIKBFztkZst8lE2GHk9fq9GvCqGqE8sX/K8vWb
         KIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RF7TJtY2ug5ZJSabo6o5Upal6psl5LvfgQuF/TuT+s0=;
        b=ATPZIWv6jyQQGAN5xY5xgPN6JrD0FvnFPm6gTnp04Ksb32BPKotmXk9YIg/yx9Wmup
         h7fyXpyMdaN6KaVIcjW76NZlI2rY0QhO4wMJFvl/l5y5KAOKb2/bBbkfj0BQWh8sPpid
         NZ/FGYu52kUA0xjq0onwwguTGjc31K0M/MTZ7YmZZZnvfv0LQVpAGdSyQ1XNfBTXNDzQ
         28TquaAzV5Fm5s2gN0EeZIvEuV0rqiInijTper6QBQhnoOwj/8XaL3Uz9DiJGB3OTP6w
         SVnH9M3cMwTrTwYKYOsDeCw/nTY/h+J6ozzpa86WmdtJgta86RMOetAbB8+wUTztl8ij
         AkWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Zxv98AJq;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k69si206535oih.3.2020.06.05.12.34.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net [107.3.166.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 29D40206FA;
	Fri,  5 Jun 2020 19:34:01 +0000 (UTC)
Date: Fri, 5 Jun 2020 12:33:59 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, linux-f2fs-devel@lists.sourceforge.net
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
Message-ID: <20200605193359.GK1373@sol.localdomain>
References: <202006051725.63EW72i7%lkp@intel.com>
 <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain>
 <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Zxv98AJq;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 05, 2020 at 09:45:43AM -0700, Nick Desaulniers wrote:
> On Fri, Jun 5, 2020 at 9:08 AM Eric Biggers <ebiggers@kernel.org> wrote:
> >
> > On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> > > Eric,
> > >
> > > Could you PTAL?
> > >
> > > On 06/05, kernel test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > > > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > > > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install powerpc64 cross compiling tool for clang build
> > > >         # apt-get install binutils-powerpc64-linux-gnu
> > > >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> >
> > I don't know what's causing this.  It doesn't look at all related to my commit,
> > and I don't see what's using so much stack in f2fs_fill_super().
> >
> > @kernel test robot: the directions given above don't actually work.
> > First I got an error due to powerpc64-linux-gnu-elfedit not existing.
> > So I had to build binutils for powerpc64 myself.
> >
> > Then I still got an error:
> >
> >         make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
> 
> If you have the config, then
> $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang -j71
> If you recompile with CONFIG_DEBUG_INFO, you can get the stack frame
> information. I wrote a tool to parse this for these cryptic warnings.
> https://github.com/ClangBuiltLinux/frame-larger-than

I can build the file and get the warning now, but the frame_larger_than.py
script doesn't work:

$ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang fs/f2fs/super.o
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CC [M]  fs/f2fs/super.o
fs/f2fs/super.c:3303:12: warning: stack frame size of 2064 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
           ^
1 warning generated.

$ python3 ~/src/frame-larger-than/frame_larger_than.py fs/f2fs/super.o f2fs_fill_super
failed to parse elf: Unsupported relocation type: 1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605193359.GK1373%40sol.localdomain.

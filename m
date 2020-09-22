Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBGP7VH5QKGQETZF3QEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7346B274C73
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 00:50:02 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id n13sf5316850ybk.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 15:50:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600815001; cv=pass;
        d=google.com; s=arc-20160816;
        b=YncU+A8cOEFNmyT+6DPm/dL6wkKNh5vosXd6iHNRtr3Io5Y6Fr6KtoVQVpuPnO9UgJ
         Bma44gLltzPjImjcFgr9s0bM3lg5DQRvP/xhOSqueY1VDsJ9gD7RCW8Y5l98HAMwqzUj
         /K5wD/IH1betxc7qsYUTS3oJprbq1ATN8DxyJHpS+Oo+VL/D/9jQLYUTk/odnoQEfqhp
         0s309e2wOA51a4Nv4wyw3lZCJviSHdQk8r2kkFGJljRjfj7dsy8LSFvjanjK+6Td9KGB
         KuR7TwqE5iHHPezcCvyB+3W6IgAn3Ad3NcGazLT9X+rJcgugXhduBQaE2nmnjSbD1N6V
         W20w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=vVazND06D1hgKWCDVMk+quoueW+LYQu3YLYN3t26Wbg=;
        b=nladxnyDkqjQtVosocWgeZs6VlwVIrIC9EHBR3Qd9jR2N6sL38Xdf6c0HDCFIkqTY4
         PhGuWcck9giXg05fp0g1ql1LopEby5K6sK/nuadzGBRHu3UWeBgnimiZYldogn5E88vT
         ZR3vsHIN31nSEQCi3Q6mzGTakss4xmhIIimOM8avgLerSvNND7/cTOmiddBjikGEAyB0
         ptV+W0ycRgY1dqjSN1bYZ7d+3grRjT0sN9x6N323GlAv6fLbuAEJWDNYt0Qq9fthZ9sr
         UQQ4wbv7E7JKz+vRHkfu1qLskswDIz4foWHseYTVzflqg82vxkrRPA+LAhKYBgXStTdU
         AU0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVazND06D1hgKWCDVMk+quoueW+LYQu3YLYN3t26Wbg=;
        b=XKxV5CEC+YoGYzhj+KF/qJ3BPaVWKv/H79M8bd+p412Lg01tK3T39fa0DHYlycgM3k
         8oMynu7elXWbJomaK50h5gxHrHHyIoYrIvsFXs0l1eI6Tl+uRwSLqY9oelItmhd5KPlM
         cP0xmWWhbJTuy/pdaJf5YZQaQQio+/Ppv+Cxagqi4ZZGIKa11nteRFlz/k1qYOyESjbq
         7wibmwAqi5zshRW7pXNgOWE8Vl7spDoyJwWInw5dmrWkivB0ph8uRjbVqIMQuvigPr7r
         5YhxTt88vsYuUvC5tZH14eM31/OXMrg7sNzUSHPVZNpMUt9tTcQ5OveKUQDupODpB9OC
         rqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVazND06D1hgKWCDVMk+quoueW+LYQu3YLYN3t26Wbg=;
        b=WX93agKyuB7Syk6mHwcvgpfkKnWN08lTeF0IrdS+/8RIr9+Y4rBVk/PmazIchNz+lg
         hHZ87gh3CiGwrZ6580FJReHbMleYYwD2cpYaAHZc1YCsXvH9ecVosoap2W3lwizmaKBT
         N9ABKhmRoIzQq43LN51xlWga3aBLTj2/+fBa8Vs6EkENIX33sF+ImBKKw3QcO6RBRVmH
         +jll6oQNC/qHvPrcGyluyFBBj6BIXoqJT88HaCMCYzS1iQbruRqxCg32gi2NppFg7W6t
         bJYUpaD90TIyU+CaSVvHx2I5VYcJ+Q2EGtDYy2As31BQo3jb05vtMG+N814KQpya1jC9
         slvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300pxXucQWTG/LAmcZuJ/7PouZGzZFGHK3gvQ0OH0X+bhrGGVDN
	TS6qkj4Njm1XvwDByNlUgKk=
X-Google-Smtp-Source: ABdhPJwggGj+LMmjupKK9Be1qtZl7rHavq1ZLTOzdEuVl6cXnlAxtDdNW54OKqNXQm3U7UJZsYJsOg==
X-Received: by 2002:a25:b981:: with SMTP id r1mr9937037ybg.98.1600815001313;
        Tue, 22 Sep 2020 15:50:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd89:: with SMTP id d131ls7898302ybf.9.gmail; Tue, 22
 Sep 2020 15:50:00 -0700 (PDT)
X-Received: by 2002:a25:21c5:: with SMTP id h188mr3257801ybh.37.1600815000753;
        Tue, 22 Sep 2020 15:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600815000; cv=none;
        d=google.com; s=arc-20160816;
        b=U8qm2ayr05VomXvKZjoH7HzeuQKpt1VdaD2RttuTJq9oSJCHy24+Fq+Vlcn0vanzv5
         3UaWmRCMic3ltvvNfhw23kBLUjqSQu8SZ4+LfRV6E8oNGaTV5/XO7EYADmM5l4NzKbOs
         T3Yxlfdx1ZkASrWX7/r89/mfdm25Dy+ASQ4NLhWuIAVzd2h+6WQ5tr8vnWG93dzr3/+h
         XVa2XNOHXOwEcmZeM3KvBrz7JFVZbz9jUDoGNsOQckLWgsRNS9YTnRkVyjMntzP2EKqT
         82CTSzweZcVFgvTfVYazzcXqwvD0OiBYaSX1X3nP/w3tAAUMHMANFgpjpYROyFV8z8ID
         XQ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=q6utSBBARjnXguka3xZN5Cp2/au2k9++KB6wvIkclPg=;
        b=m3QPydD43vhB9UEaFJB1OJyF3BONDXgkshGmg/wAGzshEBMBcTTJJwJr2FU/WJmw0Y
         yBXNXnC8flwHkImkoHZzqcmggrmuCPAR1DB7mkpNxACblPe3nYpfVXbi9ps/+2NebcVv
         IqO+XHfMnO4ZU/SAEUAYCetJxc9Tujp2DcWJ7dR2qVE7EUQYvnt0w7N4AH4vhfhanZ8G
         BV6weshExD0Dbl8yTf8fdMmoKYVL+IaMXx9FYPSj7nQoKLnLcTIliCrixNpJimPNZeat
         WjVE5bB8IZqRh+oCqqGgX2/0TYdVNSYVFdAXigc58jwmFY5mXk2NKYspVjbPLNY93Nhb
         BeoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id l203si803399ybf.0.2020.09.22.15.50.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Sep 2020 15:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: GPbXDqL8qM75SHXA2FUmnlbSKuCYCHPN6Z8kqfiXiJJBRgN2U2sqXVmCTI9yLymE8WleLUu0qb
 pKiTgZc23I4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="161656985"
X-IronPort-AV: E=Sophos;i="5.77,292,1596524400"; 
   d="scan'208";a="161656985"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2020 15:49:59 -0700
IronPort-SDR: i6x9349ReYHlZ1TG0BSTm0ej3RiMS8TT/uS4sEVhjzK6Rs4g2Cvkf7hWuH2uJIwvqdghsxJ1Vj
 ef96BbJxsHGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,292,1596524400"; 
   d="scan'208";a="510756692"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 22 Sep 2020 15:49:55 -0700
Date: Wed, 23 Sep 2020 06:46:22 +0800
From: Philip Li <philip.li@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org,
	David Howells <dhowells@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v12 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
Message-ID: <20200922224622.GA2140@intel.com>
References: <20200920163351.11293-5-James.Bottomley@HansenPartnership.com>
 <202009210844.KCwzdqmx%lkp@intel.com>
 <2d395d924b70fba7f1867eb83946497ce1f6eb47.camel@HansenPartnership.com>
 <CAKwvOd=yqYh9i1n84djbX_+8-4JbAUbRQL6FYnhugOocu+vCKg@mail.gmail.com>
 <a2bb4d02f6de58bc7660f9896a34313a0c84bfcc.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a2bb4d02f6de58bc7660f9896a34313a0c84bfcc.camel@HansenPartnership.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Sep 22, 2020 at 12:31:44PM -0700, James Bottomley wrote:
> On Tue, 2020-09-22 at 12:14 -0700, Nick Desaulniers wrote:
> > On Mon, Sep 21, 2020 at 2:31 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > On Mon, 2020-09-21 at 08:07 +0800, kernel test robot wrote:
> > > > Hi James,
> > > > 
> > > > I love your patch! Yet something to improve:
> > > > 
> > > > [auto build test ERROR on integrity/next-integrity]
> > > > [also build test ERROR on linus/master v5.9-rc5 next-20200918]
> > > > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > > > [If your patch is applied to the wrong git tree, kindly drop us a
> > > > note. And when submitting patch, we suggest to use '--base' as
> > > > documented in https://git-scm.com/docs/git-format-patch]
> > > > 
> > > > url:
> > > > https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-2-0-trusted-key-rework/20200921-003922
> > > > base:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-integrity.git
> > > > next-integrity
> > > > config: x86_64-randconfig-a003-20200921 (attached as .config)
> > > > compiler: clang version 12.0.0 (
> > > > https://github.com/llvm/llvm-project
> > > > f4e554180962aa6bc93678898b6933ea712bde50)
> > > > reproduce (this is a W=1 build):
> > > >         wget
> > > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > > -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install x86_64 cross compiling tool for clang build
> > > >         # apt-get install binutils-x86-64-linux-gnu
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang
> > > > make.cross
> > > > ARCH=x86_64
> > > > 
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > 
> > > > All errors (new ones prefixed by >>):
> > > > 
> > > > > > make[4]: *** No rule to make target 'security/keys/trusted-
> > > > > > keys/tpm2key.asn1.o', needed by 'security/keys/trusted-
> > > > > > keys/built-in.a'.
> > > >    make[4]: *** [scripts/Makefile.build:283:
> > > > security/keys/trusted-
> > > > keys/trusted_tpm2.o] Error 1
> > > >    make[4]: Target '__build' not remade because of errors.
> > > 
> > > So can I still add that tracking this down involved installing an
> > > entirely unnecessary ARM build environment, which was a huge effort
> > > I didn't need to do if you'd just provided the build log which
> > > fingered the ASN.1 compiler problem if you know what to look for.
> > 
> > Having a link to the build log artifact is a valid criticism.
> 
> Heh, I'm just annoyed because when I finally got the ARM environment
> installed and the problem replicated, I realised it could be reproduced
> with an x86 build ... just one that would never be useful in practice.
Hi James, sorry for the inconvenience, we will consider to add build log
in near future.

> 
> > > The reason for the problem is because ASN1 isn't selected in the
> > > Kconfig which causes the ASN.1 compiler not to be built.  The way
> > > our current build rules are structured causes the make rule for
> > > this simply to be skipped, which means you have to know to look for
> > > the absence of ASN.1 in the build log.  I propose adding this to
> > > the build rules, which produces the much more explicit:
> > > 
> > > /home/jejb/git/linux-build/scripts/Makefile.build:387: ***
> > > CONFIG_ASN1 must be defined for the asn1_compiler.  Stop.
> > > make[3]: *** [/home/jejb/git/linux-
> > > build/scripts/Makefile.build:505: security/keys/trusted-keys] Error
> > > 2
> > > 
> > > James
> > > 
> > > ---
> > > 
> > > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > > index a467b9323442..bca7003beac8 100644
> > > --- a/scripts/Makefile.build
> > > +++ b/scripts/Makefile.build
> > > @@ -382,6 +382,11 @@ quiet_cmd_asn1_compiler = ASN.1   $(basename
> > > $@).[ch]
> > >        cmd_asn1_compiler = $(objtree)/scripts/asn1_compiler $< \
> > >                                 $(basename $@).c $(basename $@).h
> > > 
> > > +ifndef CONFIG_ASN1
> > > +$(objtree)/scripts/asn1_compiler:
> > > +       $(error CONFIG_ASN1 must be defined for the asn1_compiler)
> > > +endif
> > > +
> > >  $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1
> > > $(objtree)/scripts/asn1_compiler
> > >         $(call cmd,asn1_compiler)
> > 
> > Is there a better way via Kconfig to gate whatever consumes
> > CONFIG_ASN1 on CONFIG_ASN1 being set, rather than erroring for
> > randconfig builds? I don't see how the diff would solve the case of
> > CI systems doing randconfig builds.
> 
> Well, no there's an actual bug: all consumers of asn1_compile need a
> select ASN1.  This was missing from the v12 patch and is now included
> in the v13 one.  This Makefile.build patch here was just to make the
> problem explicit in the 0day logs if it ever occurs again.
> 
> The reason it only showed up on arm32 is that pretty much only an
> embedded kernel is cut down enough to create a randconfig that doesn't
> pull in CRYPTO_RSA, which also selects ASN1 and hides the problem.
> 
> James
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922224622.GA2140%40intel.com.

Return-Path: <clang-built-linux+bncBAABBYPZRD5QKGQEFFQRNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314026C520
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 18:27:15 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id s204sf4219851pfs.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 09:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600273633; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/xTQPtnPOzduwwZdXafDDgHQ3sfhBe9aZbKFj8tLQgzXQVzBPm4Vwk0RU/sSGE3Pz
         y6Hb/pK+fH56rlbYtcFit16uPkvf6kriZWks5kqwqYdo+AtVxvS71LyEwhCUCcfvexHE
         msotfo/oZqcxDc0WKswmUR9A5XGBr2efxDtyPEnTDA5KsRrgqDQv40dpp8KYGgloGERr
         3c7JYRZRCbtH6u4honxN0uCnVXGLYDxIpqfCvCAL6WAz0tlX86Di9VrDpEop6sPjjoz7
         YFwdUC6XvvEVn5zMxQFlu7+xTdj/YVNa5Ul6NQEbcm/k6zmu51D4ihvERtAZPz1Bgq6u
         SeBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=bu3Mwk8XAkMw7TLJw+AFfsAYhSGJrAlmnPQhT0vZOkY=;
        b=Dl0cYQ1JI+of4izK+yO/QafY/F+qvNKiRv4CtorAwyFyEBEDzzROdHyfOFBwTSfkLB
         jxXMshE2DSYqDay6Qze3Bc0qWx14JDTPybKwGcTB310QgwGJNyERMJdoJ22+ZnPFVEdS
         zVqU+qZ4XiFlLSh51yWXqa+lZoD1cjv+FPZnYJbIrjdNcdvJUnauAz5AQ4sD/CeIiFcT
         DbjZ3hN/qZLrGxeoEetQN7Gp8dh1PThTGF++jyzVZQbtvNOgTLktRe4zcR4DgKHvuVJ3
         xyWj1uc7nL1N0n5TJCuSxH1McmUbiHhmcxOxI+VcwQ4mPrtKDdv7EibtkJKdT2DvK+tc
         mQlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bu3Mwk8XAkMw7TLJw+AFfsAYhSGJrAlmnPQhT0vZOkY=;
        b=XB60VrqmLzOs56IzsPc1WXdM1RFJA4YYzIDJ/QFJ7yiw6BbM2+s3G8FnqinXZ15604
         w2PRtOzFBn7Qq2wiaM2d2Kd0gA6tYrZquCpWhtUpahnWVxBdT4XJKfnboU83U4uKsVPq
         VKCZWL+45N4Uq6+2codQB4xFRA9sl6L16p8NR+nGqP/4zNoTyZylUy+lqld8teCJJptu
         GVtMIvRKH1UnFZJnjNucwmnG8p5tW2ki0PNstv9fBKLw5+nUKD9SoOiwV4FT14Y+zDmX
         ZJiyyXgOymL63gLo0hftTaJ7bt5+EtL8+FXc69WKJBtMtf0WaZzOiJNHKld8yJu2pIau
         tOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bu3Mwk8XAkMw7TLJw+AFfsAYhSGJrAlmnPQhT0vZOkY=;
        b=ekRiS0Rt17OGJC7SsYybu5haX52jOZ+8NU4GZybpdkErUPOVR7KAdSYafI4s9/RSWH
         VY8fOd58JRflKjs/77aYIKRN6QoAzH7OV4hPawt1douBhDjIPWh1OZjfUbbr8qxPfHYc
         kkgHOq6AX88+qQu1X/4GDExpF1w54a14CdusliF/D316XolBDTDKAnc4mE5wOHpi04eP
         xWmiF6GF448O4ShaSUlfRVmFYP2jy0ZR3IkfkOdCMVzwHUIgdy8S75vHv9kZmZEUDN30
         8Pzd6J9HQnh5P27Q6ApOqyZE4n3K719Y/SLv9XdIiu++/Ey9bzbnJm3Or3twQJyJ48zz
         4/kA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305+UW8SIis8tmLlLQtMFrx3YXxcJm5yIom/vsc3Wm6acK9Tefq
	KrZ8f6MvQ3ke5i6y4Alj+fk=
X-Google-Smtp-Source: ABdhPJyNja8huxDeYGeHtERn7rL0enjHaSwOAc1xxiKjhc6o3NsMLxPgup+THbdYwRlWHfotjjvjUg==
X-Received: by 2002:a17:902:8602:b029:d1:e5e7:be65 with SMTP id f2-20020a1709028602b02900d1e5e7be65mr6954379plo.63.1600273633332;
        Wed, 16 Sep 2020 09:27:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls962545pfc.3.gmail; Wed, 16 Sep
 2020 09:27:12 -0700 (PDT)
X-Received: by 2002:a63:4b47:: with SMTP id k7mr19494800pgl.437.1600273632793;
        Wed, 16 Sep 2020 09:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600273632; cv=none;
        d=google.com; s=arc-20160816;
        b=LEsO5PVhGOMuVJOcNqUXoVRW9p/HioWuA0B76Y/OgvbontlCODkt4WXH0tIzxgRyW5
         KnEWZ4hluQR83wqIzHPBTvpk1rmMQYGSjV2vP8KNEkE/ZEwE0TwxLqTIutwELRN5rGbL
         MoRe/dWKPI80Er1fAeDA3ZzI1wB+KpXMk0qzpLUJIEtVL2jzvPWF02djno83zZ6sYk28
         vXFxxh2zUt1DGFAt1UIqSiZKijJZHUYL2KplQU8/DH74qcr37stmrkFlRK5get55+IF/
         mITYLOqBdg5gTtemueyRXXkPAmthYHTwaBwtRjKfCv0tlS7ETWFNICphs8mmF3r7T3fQ
         eIKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=u2w9Zs0UIWmW4V+dzODVtuZy4NK28G+JgHqwW1DF/ro=;
        b=f3gH5V2us/8jrtUvIrNksQ3R2i3EDJ49V6TnvTwhDQoe31W78jPEY+YgeO4PTAy8Ta
         Bvh9fQBdBtSAQ+Rnw/OHnR866OF1mymFnaDFl87koqOMpcQ8+vpNM4Ibe3ASzWrn2KQ1
         0JuE3v0Hh/TknIQDQ+M3VrPk6nBfF17J+Lk8ZiJCitztyX/bFxc/YtMjlc6y9ILcwzlK
         9cQEQy2FcjTOH5unef0y2OCjag9nAPMQVgHsozW8aLxKXaT5DZmlVO1MHgxwaoVYM+bB
         fzTWB9XMkW01B8PvFrSCBASJZaGsPbybzNtDecsGMYZuUyotQeFhZQ/zb91Cb3J3xINq
         CFVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id mm16si274222pjb.2.2020.09.16.09.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 09:27:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: u+ltityy/z6jXnLdoP8UQwnJd6NtbI/+Cp4o0/pQr/XE+csPlsSnkFH8I2KTeVnwiC1ojiHm7S
 MyxT3WaSfIaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="221064279"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; 
   d="scan'208";a="221064279"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2020 09:27:12 -0700
IronPort-SDR: FIvyFKROnFtuDNmzXBPU2pkeO2gEwzdrYXSM4ShGzRB7hBNa/xHIaQcRReX9XCcvsyWY2w0IVi
 PNHGWT3xW+nQ==
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; 
   d="scan'208";a="451920217"
Received: from scusackx-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.45.87])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2020 09:27:09 -0700
Date: Wed, 16 Sep 2020 19:27:07 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org,
	David Howells <dhowells@redhat.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
Message-ID: <20200916162707.GF21026@linux.intel.com>
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
 <202009131413.8dt8QEc8%lkp@intel.com>
 <1600016571.7833.9.camel@HansenPartnership.com>
 <20200915091140.GC3612@linux.intel.com>
 <CAKwvOdnDJKPJ__sVKX2HmLUWyNPo=b0ccLvyBLyWoFfC0EFkiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnDJKPJ__sVKX2HmLUWyNPo=b0ccLvyBLyWoFfC0EFkiA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: jarkko.sakkinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Sep 15, 2020 at 01:20:20PM -0700, Nick Desaulniers wrote:
> On Tue, Sep 15, 2020 at 2:11 AM Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> >
> > On Sun, Sep 13, 2020 at 10:02:51AM -0700, James Bottomley wrote:
> > > On Sun, 2020-09-13 at 14:26 +0800, kernel test robot wrote:
> > > > Hi James,
> > > >
> > > > I love your patch! Yet something to improve:
> > > >
> > > > [auto build test ERROR on integrity/next-integrity]
> > > > [also build test ERROR on linus/master v5.9-rc4 next-20200911]
> > > > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > > > [If your patch is applied to the wrong git tree, kindly drop us a
> > > > note.
> > > > And when submitting patch, we suggest to use '--base' as documented
> > > > in
> > > > https://git-scm.com/docs/git-format-patch]
> > > >
> > > > url:    https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-
> > > > 2-0-trusted-key-rework/20200913-013201
> > > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-i
> > > > ntegrity.git next-integrity
> > > > config: arm-randconfig-r013-20200913 (attached as .config)
> 
> arm-randconfig ^  You'll need to download and gunzip then use the config file.
> 
> > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > > > 3170d54842655d6d936aae32b7d0bc92fce7f22e)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master
> > > > /sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install arm cross compiling tool for clang build
> > > >         # apt-get install binutils-arm-linux-gnueabi
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > > > ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All errors (new ones prefixed by >>):
> > > >
> > > > > > security/keys/trusted-keys/trusted_tpm2.c:19:10: fatal error:
> > > > > > 'tpm2key.asn1.h' file not found
> > > >
> > > >    #include "tpm2key.asn1.h"
> > > >             ^~~~~~~~~~~~~~~~
> > > >    1 error generated.
> > >
> > > Do you have the actual build log for this?  On x86 the build process
> > > builds any precursors first, which is the tpm2key.asn1.o, which
> > > generates that header file, so we see:
> > >
> > >   ASN.1   security/keys/trusted-keys/tpm2key.asn1.[ch]
> > >   CC [M]  security/keys/trusted-keys/trusted_tpm2.o
> > >   CC [M]  security/keys/trusted-keys/tpm2-policy.o
> > >   CC [M]  security/keys/trusted-keys/tpm2key.asn1.o
> > >   LD [M]  security/keys/trusted-keys/trusted.o
> > >
> > > Is ARM doing a lazier version of that?  In which case the fix might be
> > > to move trusted_tpm2.o to after tpm2key.asn1.o in the Makefile, this
> > > line:
> > >
> > > trusted-y += trusted_tpm2.o tpm2key.asn1.o
> > >
> > > James
> >
> > You can try to reproduce the arm build with BuildRoot. That's what I
> > usually do when bumping something like this with arm.
> 
> You shouldn't need buildroot for build failures (we use buildroot, for
> boot testing).
> 
> For an arm build, you should be able to cross compile with:
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang -j
> 
> (You can try without CC=clang first, may not be clang specific)
> (You should install arm-linux-gnueabihf-gcc and the same for binutils.
> Some distros have separate target triples without `hf` in them; either
> should be fine for the kernel as long as your invocation of make
> matches what you have installed).
> -- 
> Thanks,
> ~Nick Desaulniers

Hmm... How do I get a cross compiler in the first place for ARM?
I use BuildRoot just to get the cross compile chain.

The compiler that you use in your example is unfortunately not
preincluded to my Ubuntu installation...

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916162707.GF21026%40linux.intel.com.

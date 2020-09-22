Return-Path: <clang-built-linux+bncBDXO746SYYBRBJFCVH5QKGQESWGOCMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD69A274932
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 21:31:49 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id k13sf12167488pfh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 12:31:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600803108; cv=pass;
        d=google.com; s=arc-20160816;
        b=QoufF7n5iYw7w6kLGvvobSVzKLkqaxzj7HCNUX4q9qpz4o7HYZseVFBDIy35SwNNAh
         w9/eKbY7QY62o+P9JVIU9MKoxs6dP5Mt5uKxbPkenyNBvZNkvXEzAKQgFaQdPPMMJjm/
         GsIYBxcEG5v7kiCf6i+IoweV8/PhcMF0eR4GN3uyjksCUpzh36v9kVPVEXuifVgxZOLQ
         I0WfwxVBtX0X1qmAViW/V+yE7QgG49+FCEHK7QCaX39ktClFGIHmpwNYyiYs3eu7rAjq
         O0ent5bI4tnFJxOtGuqjDJAC+r1XlNDWcmTKwUHYsvbOWLrn7R637T5C2J4hqNK0Lb+j
         +jaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=1nwH2FLud6VbIxkAd5kzLnQN2pPghvpNAPI9iLHA66M=;
        b=sQMXVUl3ZNT4Fuk6Ra3EoJTYPM0CVJ/K5pP6hibagegQx5T4i3gngOFDkd97H6+0c3
         IQnXEy1Ahu/47bqyM7FWNuaF4x3qUwlsWvH8ui5vcknCC2n1ma0NXubrInNN31dbQ/74
         eYw1xNN8e8vsfHYP+TFZj1NWG+xSP7InAJSZQTtT4GgcWoywIldNk/UwOFIzAlSdtVfQ
         7z9SVG0g57TGd0zIor6p15BetnGZN8iuTeR3POEr2+ud1EIynbnioIIi8x1TF+sYj3Mm
         g+y0k2pqqoqxA3XMUiRpnZx/xLd97RyGYsfNVFIdTRLUo/wNgBhvPe6RdiT6sxmcpnQA
         gILQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rkY1h3Bw;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rkY1h3Bw;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1nwH2FLud6VbIxkAd5kzLnQN2pPghvpNAPI9iLHA66M=;
        b=c65f8eGGjbZeIPDHZYtcY7xOaZvl1RSp1LCNup7/p816/PE9aZ+D/RQYIg5cXKrWGC
         mqxa/qARZcPFTq/h7Rp5php61aQncd5PCx8FpOrVT4oMXIZfguM8No682PB0TLY/yYqp
         eOhn/znSo7XTy25LjimH4ouvGIhbmRN72gi4mo2jWR/XoZLIpBqqblJizDtofEthZcgO
         YX+LLAe1Dru2r+tDf8l7Zwj1CV/xV2GH7R0UyXXnhIBsyjS1a6mSzn/m17tfMWSjYK1V
         D3Tpu3n283emuYpQE8B4O3D76EQ+3d085mWtci/sAqzj2lkHtUIkyw6IZ7AQTc3PKl/m
         3Kjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nwH2FLud6VbIxkAd5kzLnQN2pPghvpNAPI9iLHA66M=;
        b=Fe7TSgL81Z4K/enTJA2bDI6ZgmBppZvpBVWGnguH7aIypvTiabeOyGCPHie28phnSw
         Q7qJgaGC1MnXbtwEa8RzTQTxFk7PJJexPEcWakxhsLqUv3uuzab3clHIYWIGvUD1HZ4V
         NF6uDuDwKeXBGQbl9QE+QaK82TzZElLnnpSglY7Septp5JL49zd9elMhxiJw3IeN/MMi
         NPk9TpNvF0bEltvqzI33C+tnB5Fr8TwW5CN6Jez/li9IzIEd4DZv4f7ZzEwnsAUcBf0b
         GQGWuHU2qNUHj3R8U6QQCg8Dc+wSfbzbSCzfDaD6gCf3+Ou6zimYdWDNZtGq6Tr5yBpQ
         Py9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OzpDSmSh6kJZUYrqhOaoj0thKwci7s5dXheG7Z4LReO/2fhaB
	swjGngIm7cBWF459OisJvok=
X-Google-Smtp-Source: ABdhPJwuQG2b2zPMcLwC5+xMMJMnrwkGaETZpq2igB0qTsFld5ZHC6UHY5liqgTCLboqLNOiXHwU0w==
X-Received: by 2002:a62:b40c:0:b029:142:6a8f:c2f8 with SMTP id h12-20020a62b40c0000b02901426a8fc2f8mr5481049pfn.32.1600803108342;
        Tue, 22 Sep 2020 12:31:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls3523536plf.4.gmail; Tue, 22
 Sep 2020 12:31:47 -0700 (PDT)
X-Received: by 2002:a17:902:fe84:b029:d1:e598:3ff6 with SMTP id x4-20020a170902fe84b02900d1e5983ff6mr6236564plm.48.1600803107722;
        Tue, 22 Sep 2020 12:31:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600803107; cv=none;
        d=google.com; s=arc-20160816;
        b=ZLVKhQ6MdlDOK4bNYuW9X1FEbKU4Rlyk3mdgq5SCIlWaZzCOnFPSMfonya03+aBMMq
         NwI/DBa/ke2V5wcX5kup5tr4lrV5Gr9aAg1YPFJVwR2sYWj+qDleKCXe1MjDdDm4/FEK
         0bWxh8KwBlLdf7ulZ5nZgZMAkPDVohBWbL6j7EQGUQWi7lPLiLpLimtldyTjJR/cEvbb
         22/KxFqtxxeZRsZRln9C2mHiSclhRUR4fvRxRiwRaPD9ztDlqZVECNEnK8P55kBEm34s
         M9T+7pfUP3WosdeMiXtvQNotnlhqDoAs4qqkAnXeGwoDaYteey4ZFKJCeqdGZCnN5x44
         uJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=5NNPqoLoL4Q18scVehkfR//Ac/bLmKiFX8RiV1K+E9c=;
        b=Md/Lifp1h0sZIqOxMv14eH3nKDWfBm2xfg7Vy4pPoddWFfP8HaXkk2ZvzLQfoFax1E
         ZXFB/EkbMd1tVm+K4mEcbdF8iVor+xve2fKt+ic1Y/Fte0yEkZcUL8lfpTfTbyMnQcGF
         dDMrD6ViVlbgfVKjGih8LYUGmXiwcFMCBmj2yWGj/oOfJxEZt2yGF7oxQv84m4rrgMBv
         ApiTXrgOc6PLm0UOaEUZrRmALVbjCLMoGaTQnjcvKu43rgZC0kOA9FnMQAXN8f9xFQT+
         ZlD6W7EFWlRWIFsuJEM2q/j21MTGUJX1Hby+idjJ1w18p7ZwJuaB8B28bF5rJHB/KKd3
         Mz4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rkY1h3Bw;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=rkY1h3Bw;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id mm16si273194pjb.2.2020.09.22.12.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 22 Sep 2020 12:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id B35AC8EE1C7;
	Tue, 22 Sep 2020 12:31:46 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uREMc2vhppC2; Tue, 22 Sep 2020 12:31:46 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id DF7FD8EE0E0;
	Tue, 22 Sep 2020 12:31:45 -0700 (PDT)
Message-ID: <a2bb4d02f6de58bc7660f9896a34313a0c84bfcc.camel@HansenPartnership.com>
Subject: Re: [PATCH v12 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
	 <masahiroy@kernel.org>, Philip Li <philip.li@intel.com>
Cc: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org, 
 kbuild-all@lists.01.org, clang-built-linux
 <clang-built-linux@googlegroups.com>,  Mimi Zohar <zohar@linux.ibm.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, David Woodhouse
 <dwmw2@infradead.org>, keyrings@vger.kernel.org, David Howells
 <dhowells@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Date: Tue, 22 Sep 2020 12:31:44 -0700
In-Reply-To: <CAKwvOd=yqYh9i1n84djbX_+8-4JbAUbRQL6FYnhugOocu+vCKg@mail.gmail.com>
References: <20200920163351.11293-5-James.Bottomley@HansenPartnership.com>
	 <202009210844.KCwzdqmx%lkp@intel.com>
	 <2d395d924b70fba7f1867eb83946497ce1f6eb47.camel@HansenPartnership.com>
	 <CAKwvOd=yqYh9i1n84djbX_+8-4JbAUbRQL6FYnhugOocu+vCKg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=rkY1h3Bw;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=rkY1h3Bw;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Tue, 2020-09-22 at 12:14 -0700, Nick Desaulniers wrote:
> On Mon, Sep 21, 2020 at 2:31 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Mon, 2020-09-21 at 08:07 +0800, kernel test robot wrote:
> > > Hi James,
> > > 
> > > I love your patch! Yet something to improve:
> > > 
> > > [auto build test ERROR on integrity/next-integrity]
> > > [also build test ERROR on linus/master v5.9-rc5 next-20200918]
> > > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > > [If your patch is applied to the wrong git tree, kindly drop us a
> > > note. And when submitting patch, we suggest to use '--base' as
> > > documented in https://git-scm.com/docs/git-format-patch]
> > > 
> > > url:
> > > https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-2-0-trusted-key-rework/20200921-003922
> > > base:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-integrity.git
> > > next-integrity
> > > config: x86_64-randconfig-a003-20200921 (attached as .config)
> > > compiler: clang version 12.0.0 (
> > > https://github.com/llvm/llvm-project
> > > f4e554180962aa6bc93678898b6933ea712bde50)
> > > reproduce (this is a W=1 build):
> > >         wget
> > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang
> > > make.cross
> > > ARCH=x86_64
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > > > > make[4]: *** No rule to make target 'security/keys/trusted-
> > > > > keys/tpm2key.asn1.o', needed by 'security/keys/trusted-
> > > > > keys/built-in.a'.
> > >    make[4]: *** [scripts/Makefile.build:283:
> > > security/keys/trusted-
> > > keys/trusted_tpm2.o] Error 1
> > >    make[4]: Target '__build' not remade because of errors.
> > 
> > So can I still add that tracking this down involved installing an
> > entirely unnecessary ARM build environment, which was a huge effort
> > I didn't need to do if you'd just provided the build log which
> > fingered the ASN.1 compiler problem if you know what to look for.
> 
> Having a link to the build log artifact is a valid criticism.

Heh, I'm just annoyed because when I finally got the ARM environment
installed and the problem replicated, I realised it could be reproduced
with an x86 build ... just one that would never be useful in practice.

> > The reason for the problem is because ASN1 isn't selected in the
> > Kconfig which causes the ASN.1 compiler not to be built.  The way
> > our current build rules are structured causes the make rule for
> > this simply to be skipped, which means you have to know to look for
> > the absence of ASN.1 in the build log.  I propose adding this to
> > the build rules, which produces the much more explicit:
> > 
> > /home/jejb/git/linux-build/scripts/Makefile.build:387: ***
> > CONFIG_ASN1 must be defined for the asn1_compiler.  Stop.
> > make[3]: *** [/home/jejb/git/linux-
> > build/scripts/Makefile.build:505: security/keys/trusted-keys] Error
> > 2
> > 
> > James
> > 
> > ---
> > 
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index a467b9323442..bca7003beac8 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -382,6 +382,11 @@ quiet_cmd_asn1_compiler = ASN.1   $(basename
> > $@).[ch]
> >        cmd_asn1_compiler = $(objtree)/scripts/asn1_compiler $< \
> >                                 $(basename $@).c $(basename $@).h
> > 
> > +ifndef CONFIG_ASN1
> > +$(objtree)/scripts/asn1_compiler:
> > +       $(error CONFIG_ASN1 must be defined for the asn1_compiler)
> > +endif
> > +
> >  $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1
> > $(objtree)/scripts/asn1_compiler
> >         $(call cmd,asn1_compiler)
> 
> Is there a better way via Kconfig to gate whatever consumes
> CONFIG_ASN1 on CONFIG_ASN1 being set, rather than erroring for
> randconfig builds? I don't see how the diff would solve the case of
> CI systems doing randconfig builds.

Well, no there's an actual bug: all consumers of asn1_compile need a
select ASN1.  This was missing from the v12 patch and is now included
in the v13 one.  This Makefile.build patch here was just to make the
problem explicit in the 0day logs if it ever occurs again.

The reason it only showed up on arm32 is that pretty much only an
embedded kernel is cut down enough to create a randconfig that doesn't
pull in CRYPTO_RSA, which also selects ASN1 and hides the problem.

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a2bb4d02f6de58bc7660f9896a34313a0c84bfcc.camel%40HansenPartnership.com.

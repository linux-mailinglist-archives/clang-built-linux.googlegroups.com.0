Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLULYHVQKGQEZCVCA7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AE43DA96F1
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 01:15:58 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id f63sf168332wma.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 16:15:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567638958; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZjTZgfavEYhTYUtpG49SfcoJDTwgrnOHk8998tbp+ew3NDcwEMk+b65VEeuCmcbOsk
         iX9rUHJHTMJF9N2lKIS3wdHJzVsA486UyIC++dRViE7yOcJlcO+F8ykIE3+5YwyDkeDG
         OsEyzAcZsO1Y6xoPU1yMBdLpbFbGeWDP8L0WsdV52XzEd2jx3hJo0Erl031rY0gXusPc
         EdY/cOBzjHX8XMTjdEFB6GuhC8xUiuO4i5aDk+RTZw1UBXdoqG/9mVbPpi5AoybIf6WU
         iP0EfWQI4LSxXVlXnJhaaczB08+BYaGUg9h4nv+ebDboInJtiT+/TAsYYynJRrVWfLuF
         N6Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=dCDmUOki2OJyeD89f8K+w8Kcm7EZki4U9msh2lNshkQ=;
        b=l7WlCPuEb19xdrzj269TLZOk+wITS3WnjeDR3zseOgT2l4Adlt+y6mMomZGzGijqQM
         VtUeHOCRhyMu3UIH3Du5YX8aD4zWgNOIbUYG7hXXkoZnD2lqYryHPIL6Wio7xj08ASjR
         +YO2YIAlIl1E52bdJhvbPVz7BXErVa45aMbzJU8ev8bsIex73B/YLftgA0WzgJX0HZ+6
         H7HxNfmJtm2YV4LYljF1YyZuMY8Xmq3oKUkc6eDTs/dZF56ZagPjV/pHAg33CNJTFfi7
         vwJNI0v36GJPzyAR9V/urupLGwIVDrSu1NGzPrjr8A3qOkN9ZRG1y08u6jswxWZdCKYq
         Zb1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="E0hH/5KZ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dCDmUOki2OJyeD89f8K+w8Kcm7EZki4U9msh2lNshkQ=;
        b=r7E5GRPfNeVbd8vSOSNeoBcsjDfvai2XPlzwPI0kgGoI+nLXZfQB/QVwBD6y5i/Xjv
         CGx9aQwMNIoVKYJru/EmDzmuQgpp3gF37jmHYS8dKYJHPeWzSFIz1sf4bnRc59TxuBeP
         eEZ3dW1ezwi77q1GT3dUP5fqAdTJKt9yzXb9XNZeDJgfHSWAhHIxX8mxCToAUEF2EZZY
         DmfYel8M1fYiYcFA3jZOnEtdgn6qrW1oCpUSXYUZgwoYEX70RS/2Imz3FV+xYnw1oD+g
         ZTTbKyc4/aFFiB0ugzv5wEzPukS4Jtzvsd8DCYMAoRDBtoQjmODFHbKRgAseC+7EhPsC
         tm2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dCDmUOki2OJyeD89f8K+w8Kcm7EZki4U9msh2lNshkQ=;
        b=SEbm6DWCQ9RKfwnKkF27AOLwnG0TjzkC9wTr+5lpuZTg5fJ5kQ+TYsneYec1Y6o7v0
         ghcG6bn1lPk3vOq6TD4YHaUuPUn5hmwRNIw5jP+/iOcU2UA61wRI3koXrCCdr7THS6J0
         3c8DVG2hR03/Tac1Q8YO6zcCU6DnPyEaRnB0xCBgRwIGDkx9OiVZIyu6DS4StOf2j+P/
         wsd2ys+ZkrjkFRH0tW8me4FDdY+DXm85RfFKDxFqe3RBTi6QIYSaLY9sRe+lZcE8Jvo+
         nT1ylQ9emBA6iBFwfIEMMmTSVn+y/ZiM0VjBaSb6tSxX7KxCuuI0gYDhztLqGtdbG/3E
         PjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dCDmUOki2OJyeD89f8K+w8Kcm7EZki4U9msh2lNshkQ=;
        b=Gp/mt4U/Xg6fGeqiSQE3EXfTK/VYje3svmjZvJ3HcPXLunPfRDl82ZSz1gQ4zsQs5P
         4glcb3PdSmoQsahTqPg5RHbBJp1Ue0ZEMPNOwuHpcnp+nvchHfahIhAy75MU91pp+QvW
         g7il3LBKaPUKVOpiCn/o792Qqf5Lt/7t6DXS90W+msgxFGuEJLy183IfI5xMdFl/eaG4
         KojjQQdtwUP1DxoONBt0DFwicELiI1+Mf1R3W4z76kPq0Atwxa+j8oO3yYCJivY6sGb1
         CKeD39+vUHDtC/hBPKTYAXxifC0gsEvmc/y33n5PVCsYSD6ltLsPhQsbI9GkDbhqx5CZ
         Vd0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOAyrDblfu4IXbDAcQCy1DG92B2PkQQbN2ID4vWDWBBLkQvPCK
	o1kl7VN2q8OW8p0pcO1bXPc=
X-Google-Smtp-Source: APXvYqzphNPU8lAI+Srun8t/IqhIY9norKXrn5eZcx2zz76PCB/7Syn6OiLDFc5QaFq+fSD5Hp7EaQ==
X-Received: by 2002:a7b:c045:: with SMTP id u5mr456340wmc.139.1567638958405;
        Wed, 04 Sep 2019 16:15:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls33024wrp.4.gmail; Wed, 04 Sep
 2019 16:15:58 -0700 (PDT)
X-Received: by 2002:adf:ed44:: with SMTP id u4mr99224wro.185.1567638957988;
        Wed, 04 Sep 2019 16:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567638957; cv=none;
        d=google.com; s=arc-20160816;
        b=KVZc33CyNKMj1jc5qBBfWnDEoaWSj+hnBE2Q/QZ1efc8MqUpPvm3u3K34mPP5pLrZY
         bQf5S6SvtNaxUoNgeZzTPdRqr1ItCnf0MqcXJdTj4RLoF99k1xiBddcMFu8gNWFmcp5c
         hSFHoBgaAAVx5mjSGBSMF0RbYP7/mbeZKM8toV5rv8Okqa1XwHmGb1Zl2yr3pto7EqWm
         h5J6/ZdNWW1FnuVaIAOfxpvYLP6NeacvOU6DerZHqEfNFAAUgtMSxzpxgCR+3Gl5fWQp
         a+g63MDt57o3BZpEyhWjvNQSxdJlfOhPhLvZZ4xM+dU6aW0JhMBSl04XfNIFciyQb3rj
         icHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D+jh77ZLgNensDYPn2dN2wL4k27PJ6BpfuVV6pgmL7g=;
        b=Jeh1gH1JNSG9EJkjykWAvCRTDtErE7AljcWD93SA+y7U73Nu5tswIWmGs+2HZ06ovQ
         fxP8qyQfMH/2Xj1CuOA3Xn/dIt5kAEy4y93S0UoxPhTlL30WbeJg67losMd0cgL+mgdj
         Vb3gYxhvQKgB+L/JZGp3iT1aoZc2oQuuH0Dkvu++wonW6fcPcPNY+pVtMFM/US6YPaZO
         DJfbZHppi+Hq9G0BXJ0JrsgZxa5gLONv67Iw99UzJPqniNI1+H3EL0jpu9Cu+nITaoju
         e/bv4TGv8of/L/QPl+/4MLwD9u6TFiiyMBtUjJCBgCiySCW4Slh/nXyAtkWP973JVvuQ
         J0Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="E0hH/5KZ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x4si5592wrv.3.2019.09.04.16.15.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 16:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id o184so572235wme.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 16:15:57 -0700 (PDT)
X-Received: by 2002:a7b:c766:: with SMTP id x6mr514054wmk.51.1567638957553;
        Wed, 04 Sep 2019 16:15:57 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z189sm788009wmc.25.2019.09.04.16.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 16:15:56 -0700 (PDT)
Date: Wed, 4 Sep 2019 16:15:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: David Laight <David.Laight@aculab.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190904231554.GA42450@archlinux-threadripper>
References: <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
 <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
 <20190903055553.GC60296@archlinux-threadripper>
 <20190903193128.GC9749@gate.crashing.org>
 <20190904002401.GA70635@archlinux-threadripper>
 <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com>
 <20190904130135.GN9749@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904130135.GN9749@gate.crashing.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="E0hH/5KZ";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Sep 04, 2019 at 08:01:35AM -0500, Segher Boessenkool wrote:
> On Wed, Sep 04, 2019 at 08:16:45AM +0000, David Laight wrote:
> > From: Nathan Chancellor [mailto:natechancellor@gmail.com]
> > > Fair enough so I guess we are back to just outright disabling the
> > > warning.
> > 
> > Just disabling the warning won't stop the compiler generating code
> > that breaks a 'user' implementation of setjmp().
> 
> Yeah.  I have a patch (will send in an hour or so) that enables the
> "returns_twice" attribute for setjmp (in <asm/setjmp.h>).  In testing
> (with GCC trunk) it showed no difference in code generation, but
> better save than sorry.
> 
> It also sets "noreturn" on longjmp, and that *does* help, it saves a
> hundred insns or so (all in xmon, no surprise there).
> 
> I don't think this will make LLVM shut up about this though.  And
> technically it is right: the C standard does say that in hosted mode
> setjmp is a reserved name and you need to include <setjmp.h> to access
> it (not <asm/setjmp.h>).

It does not fix the warning, I tested your patch.

> So why is the kernel compiled as hosted?  Does adding -ffreestanding
> hurt anything?  Is that actually supported on LLVM, on all relevant
> versions of it?  Does it shut up the warning there (if not, that would
> be an LLVM bug)?

It does fix this warning because -ffreestanding implies -fno-builtin,
which also solves the warning. LLVM has supported -ffreestanding since
at least 3.0.0. There are some parts of the kernel that are compiled
with this and it probably should be used in more places but it sounds
like there might be some good codegen improvements that are disabled
with it:

https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904231554.GA42450%40archlinux-threadripper.

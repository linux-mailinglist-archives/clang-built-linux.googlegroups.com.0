Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGG2UH6AKGQEHXBTELI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE0D28F5F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 17:39:06 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v10sf2321044pjy.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 08:39:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602776345; cv=pass;
        d=google.com; s=arc-20160816;
        b=bSnQ2Fq5mggVTnmmqGzQy5hW/myASVevmQP7UE6HhOXunGRlDeYCHnznss0V1XlP6p
         9jqW8aaHylz9f5Xm/Gba7NhoB3lQz9rBZ/DG+nnxRrnbnUGVclIytrjp2rVSPN7u9LBj
         GXOyXBhTYlEmovREOhGiUjsD+NM1U+BhGpbjr1x+mYKjTwBXwBKFwe8Dqw4Fd1GOuHZ0
         fYN1Q9zYskGfwsqCs4LuQaqfprLXG1vPJFMRWT4/IeZD9tlCI0FeIpGJn5H1YB1cEdBI
         SG1aDd5+OCSBkGacYn8dloErktj0kNotzw0vr3fLnwtG2kgP0gIxG8wPwI1J/M3cyDn0
         RraA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=y+tQbv1qC66IAtU7gCmM+Uo0dW4/xh9aYXya9ATeqIQ=;
        b=bd0O1drfdmXcbz/3AgMuNVB06mvM1LsEWsSZKlb8EwI4wsKVWWU5FAdBJcJlU4qQLA
         c/BJfbxyVMnCV5bp6sGAnyaphaB2o8i1/8iKDesnmORp43gxYtg1CJdOu4f3OkgEyRoy
         /UxdSyRoNu1VtA9q0F+fDSMujU0/ntp0juhkaEpW+YbbCpOs7G1P4FRmHDqxAGWGalVH
         xNCWWn/jMjFhb+nw71sbQqBYvcEJ5+I7PUt3ry5HkXRSNA9ufJ8xgI/keicsyUDpzL0a
         TO57eTlNRYfbGwhsZhe8tUT7viXwgaU563Zg2O3GTIdQ/8jMaWYUFWjPJIhXz008Ic/t
         zVsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L9Jw0LEZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y+tQbv1qC66IAtU7gCmM+Uo0dW4/xh9aYXya9ATeqIQ=;
        b=AlCr9yBXEDPNUsBuQlTXFH7C+bunsswgT4hArPO/OmtIYeBfUgoTfPiFfj19q5f4kW
         2Sm6aI6SxDlC9eYMP9XFgF63wQTODBadMe18nhpQqpF9wiwhAEXeIaYFzktzUymAuFru
         KQ+hTw7d/1tOGcsbYFpWWJl31cuklAj7CWdlXGwGVmDjsO9Fb+/InyrvbVW0WHFbID3D
         IYxmssjAv2B5tpJn2vwAU9sfhmnimuwe/Cr58kfUQpaKG/2vLvxkGdveA31Vj2RKXuJw
         ZE1BkpbeugaGce4eIt+XYj4vu5qWZnRieqT0BoC5AKOweM34N9wzgYmhIc5pQrUsEIMn
         pHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y+tQbv1qC66IAtU7gCmM+Uo0dW4/xh9aYXya9ATeqIQ=;
        b=DHwMJ3WlPIKadsyworJO5Qs82jbY4DOLA06J3u6CAidYHND3eVGxJ0l8NaCOuZ86aC
         pmkMSblaYBMThJwQfAkQx2112e/3mWmgFKvPK7W6jX4LpZ0ACznv3ojgnxa9B7sWRZ/I
         wdAvIugzMEDzJiwtK9OKaE3Nct5g8RB8tSwlnSuSgQeuOCHCMf2rIsQ4+xppJVRNyVfv
         WRNoiotUypB4nfkPmSGRUJASTJnZFXEJ8RQvJFvbGKBldKhQHo8mGOqkBaCIj7K9Y4lB
         WiqWxp9k6c620y0EAxJ1BJf49TZqsdIyeqVk9GuU9tMeolrFFs6ab4lP2dZhpjZaMFwW
         myJA==
X-Gm-Message-State: AOAM531BSrjG5v0j4YACykA1taQ2dQZx+wnoTtD+5WrJjkHF4sZBpzmv
	qqP+v0YUlBEwxaq2e9iiqhs=
X-Google-Smtp-Source: ABdhPJzLw2cMA+5Y8ub3BnyvL5xBPNXDjLVdWimjDHn0gNyKM7W4bkcVGBXfxANqAc7cBosXDTYDwA==
X-Received: by 2002:aa7:979b:0:b029:152:4223:1b47 with SMTP id o27-20020aa7979b0000b029015242231b47mr4584497pfp.44.1602776345065;
        Thu, 15 Oct 2020 08:39:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:941a:: with SMTP id m26ls1174297pge.10.gmail; Thu, 15
 Oct 2020 08:39:04 -0700 (PDT)
X-Received: by 2002:a65:4485:: with SMTP id l5mr1576927pgq.121.1602776344435;
        Thu, 15 Oct 2020 08:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602776344; cv=none;
        d=google.com; s=arc-20160816;
        b=gkHh3njiKXesQciFMoWVkjpTINTEEjBA7elUgFgGkHbFeTa6VV0r5EmTBa79Ofrpd1
         SwiGyrOnb7VmAOJTrg8S2z2hCqdFjdPx45J4mY/yvvOKV4alyijKR4WWCrmiOr02L6Kl
         fyPUUoPo3zdHElKaJkj/ofTZ77n1nj7Q6y7jQW3b8+MnUWf6awvT90LoOGGdW3kXDELj
         VfgM9zgIf5k1zUVg0C684Oe4lV1Eac1v6BkMIlw4Y2MjGgsTgvnkU4ZsRQ7IZpZsg19d
         N8fzfRZ5PsAYp9UmTVepLQ3QE0FVHV8baODawLFGh36H+IPm7a6UWb5H+ogbeAR7XdGt
         wZVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=4Slk8cn+BfeWlfZ9E0ny1/5HWw7JqKVPgKKusuTz/J0=;
        b=W0C0JPQT6rqP29emLkjxauKSVHNM7f7IOyJ1w8IyehMZuSPOnTu2Ed96JzT0oBDf4n
         j9pyJbHJQKTQdUNYvajLPHyDO+Mv7WIBj57CLMHuZ/6FglPJwJW0hf3mcIrhtZeI7c9H
         bevIozjgyhGTcW+BAqLvfHIkSnOcxKNx7coOy2qjDBpkIxY/WsRZ8wVGxCdTA6CO7fTI
         NzxcyIaWU1FsyOcuuz2aGRSAUZFpaETU5PokeOWUmvMFqOrn8daFjEBbFTufd/PgMpvs
         /cqlcrxJUpK7W2xcv7hkmLp0xdOyL8nlp2tWQ5BDasvT5cb2FLRGbE1Qq+oCGVgu0Rg3
         JW3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L9Jw0LEZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id m62si250539pgm.2.2020.10.15.08.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 08:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id n6so5026883ioc.12
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 08:39:04 -0700 (PDT)
X-Received: by 2002:a02:a802:: with SMTP id f2mr4080270jaj.47.1602776343776;
        Thu, 15 Oct 2020 08:39:03 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id e11sm2886026ioq.48.2020.10.15.08.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 08:39:03 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 15 Oct 2020 11:39:01 -0400
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Arvind Sankar' <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
Message-ID: <20201015153901.GA593731@rani.riverdale.lan>
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com>
 <20201015144515.GA572410@rani.riverdale.lan>
 <4a8c47b5eeb44b789abbb617f0a95993@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4a8c47b5eeb44b789abbb617f0a95993@AcuMS.aculab.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L9Jw0LEZ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Thu, Oct 15, 2020 at 03:24:09PM +0000, David Laight wrote:
> > I think the comment is unclear now that you bring it up, but the problem
> > it actually addresses is not that the data is held in registers: in the
> > sha256_transform() case mentioned in the commit message, for example,
> > the data is in fact in memory even before this change (it's a 256-byte
> > array), and that together with the memory clobber is enough for gcc to
> > assume that the asm might use it. But with clang, if the address of that
> > data has never escaped -- in this case the data is a local variable
> > whose address was never passed out of the function -- the compiler
> > assumes that the asm cannot possibly depend on that memory, because it
> > has no way of getting its address.
> 
> Ok, slightly different from what i thought.
> But the current comment is just wrong.

Should I fix up the comment in the same commit, or do a second one after
moving the macro?

> > i.e. something like:
> > 	static inline void barrier_data(void *ptr, size_t size)
> > 	{
> > 		asm volatile("" : "+m"(*(char (*)[size])ptr));
> 
> I think it has to be a struct with an array member?

I don't think so, this is actually an example in gcc's documentation:

  An x86 example where the string memory argument is of unknown length.

	asm("repne scasb"
	: "=c" (count), "+D" (p)
        : "m" (*(const char (*)[]) p), "0" (-1), "a" (0));

  If you know the above will only be reading a ten byte array then you
  could instead use a memory input like: "m" (*(const char (*)[10]) p).

> 
> > 	}
> > plus some magic to disable the VLA warning, otherwise it causes a build
> > error.
> 
> It shouldn't if the size is a compile time constant.
> And given this is an instruction to the compiler it better be.

Ah right. I saw the warning when playing with something else where size
could be constant or variable depending on the call.

> > 
> > With a memory clobber, the compiler has to keep x and y at different
> > addresses, since the first barrier_data() might have saved the address
> > of x.
> 
> Maybe "+m"(*ptr) : "r"(ptr) would work.

Nothing that can only modify what ptr points to could avoid this, since
that storage is dead after the barrier.

> OTOH a "memory" clobber at the bottom of a function isn't going to
> cause bloat.
> 
> The explicit ranged memory access (without "memory") probably has its
> uses - but only if the full "memory" clobber causes grief.
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015153901.GA593731%40rani.riverdale.lan.

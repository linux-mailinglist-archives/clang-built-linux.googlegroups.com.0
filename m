Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIHRYPVAKGQEOVU3KLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD94896C2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 07:26:56 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id h3sf440002wrw.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:26:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565587616; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZ/D7ly3KiMm/DEiLiqsCC/wsjscB65Gj+0l1kxSAl1n6R/Smo15oXtZ6cZMqSSWEr
         JtGCGHDQ6/5ZDLQTtYg1IrUswqe5YQXNlxV+VMJo5naYJmJx2pWPhngJw0+otxfLRpHr
         tInkvNroikPL9EeRWaI3rvKz8lXBwZnv5G7cW8TJBKFnW5zubAcS2nj/NoVIrbcULOkk
         DtzlT6nx61bh5O1VI8ZjPlkRbssmjnAW2q5Kzj80XzWEVlnpgNjPUdFpC9DSjQD/+aT0
         Xh+YWeZGuI4UVV8IerXdR7eGvotcsdzJ+IJDn6i2eY0aLl8XtJJ6A5p70x21aF4AYpAV
         0e5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=a5ycfvsmPvWr8vcFbwr4EiRxg8q6b4P6X9JodWWdkvc=;
        b=y1aF6oQzjcTzxyLeb5GxUBzbGkasxoNHB0AqNPpr+ucoHxIMMFs2jVStFLlLYB6Ndi
         UrURNM63fEZOBL+YabhIe4ex5W1c9FSjE4/uKu8nkOlMkPPc8g9fUoPFufgKLpRNdwvA
         pmoXAGZSKamYEMjTW2HC/96MxJbOuHNR0huwumjcgwFEQJHza3P6IaBPPtrBBs2WcT6g
         on8KXUM/IpcBWWnvl6nwoczyOiBWTwJmhOWWgF3S24XIjzrxKmYyAYwd3Gd8uDhNUAb2
         FvCWrVuunHcXPUb/LQurUHZzJbLPNaRnAfr4MOFgKzsagMwlcTjp71RH4gk1+OslmI82
         10bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f9XpAxW4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a5ycfvsmPvWr8vcFbwr4EiRxg8q6b4P6X9JodWWdkvc=;
        b=gIRVXrm8ZRC764sDLIwtq5dbVrZ+UnSPVv6y8Z4JkIr/JYbNelAAX8jFkMAzp9V+MZ
         bPazlNRbl3NSO8prNVkOZc3UrwpCGXSTohxniBwCkG2HFHa0e9OXeOE+un1vqfT/88Hs
         kqeobb2/ULnadgtstiGp0gBrGvM22E8V0Wf1Cg3L2qN9nBzXdcacmEcSlXlbiAiGnR2f
         yHu+a29oWjbob6yEgGOUVg1a8kZ1N2PlcGeaAdV5tMckw1K0730CN4P95LW5e7neGmlO
         m4d/txsHeGK7ACpKqUpCO98JBYh48mVCbRKwxBzCoLKxqlFh6aCh+1aCCqpkylsFypU9
         D6xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a5ycfvsmPvWr8vcFbwr4EiRxg8q6b4P6X9JodWWdkvc=;
        b=f2g2tKewqQhm2WwogeXYOHhL8QzYGhxePC6FTSE6TayDhHsNXwYlhiH6nAf3daz+4x
         yeOHgUg/RdWw7IFtwFjNdJwUObSLsEQ+hNCKT24WGTFpd9hO4H7BAvvp0SxZ0VCcTuPC
         SnoEIT05bfOEZKvB7YWXbcfLqftIPpLIi6lYpsxOE85Koe61iaiXNjkkG/Q14cmEuKnn
         V8nc5UB1xac4aPK0kVM+MQIOf87FX1ne2RI0zOZ5+sPbjks/1tYBETQoFfxkrNOyAelp
         9Ua7uncGHi47zKEe+0LaDE8mpEm0KmONHGMx/g66MKHtct4Nocze91is/yocktMS8/Ku
         eVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a5ycfvsmPvWr8vcFbwr4EiRxg8q6b4P6X9JodWWdkvc=;
        b=Mr8MnIw0i/ftCCPvClD6xvMZcMRH9LqpSvfK9WMf4utC9RsFC+PP3kZT/TK20zjOb3
         SdSLCOPRdXyPo0kXrXQL75i9Yxfxl9ha32T+QheFe9MjUZ8Ii6SLN1xFq0o6BEW//Zbj
         1teTYX/nrazvarzuZVaJR45H2fKEUMAojdTa/rbOZ0B4ILciMd7WpPAPQFdGX95VnhvS
         KPsATJavuikiGbmDzJ8+cZ22CiPLNc4k0GTqkvxQsjq/aIASLNsN/sq2xZ2quZXWClUJ
         5dR/DeGUCkTv50FdL4zPlKEv4UzIP9YGjw3/WexyPe0NIXw8EN46yLg9sAyR843HDagI
         pSBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcw4VtzIOsTtVWBEaB25GzqRJSeryjS/45XyhRhmDPKFTYKGyb
	zNKN8kG48B+uuaF8bAd6Lv0=
X-Google-Smtp-Source: APXvYqwTiIhS3hmsJVhyw2IsHAuTzpbb1Or1qLpRkh0a4VNCf/jcuclV0lnXJiTnQUtvXo4AOmMnOA==
X-Received: by 2002:adf:e848:: with SMTP id d8mr17046720wrn.94.1565587616092;
        Sun, 11 Aug 2019 22:26:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44b:: with SMTP id l11ls1024875wmi.0.canary-gmail; Sun,
 11 Aug 2019 22:26:55 -0700 (PDT)
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr26527522wmh.67.1565587615740;
        Sun, 11 Aug 2019 22:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565587615; cv=none;
        d=google.com; s=arc-20160816;
        b=QbLGNg2B2BNXeJg5VphcQD43lOb6iBZhpDFGEI9Yy4AutYaVZ4AGbgzfipgjtYUama
         5e8V3aJXRQNgl+uOfat4RAj6PtwC7BwLE66mqLUG/4mpF7zM/gM6Wx5pLzHj5bCOrPCA
         6YFM/gPdwmlEqFDqFPan8LsybC41YwsCTerUnWhDLolih5VFpclJx6BqUKjW2hpQ8RB1
         2NOmt3yQL+HAn/5cshgDaeOeH+2YcvuF2QhJ1Ux7TRIk7NfJie6kdT25ZhfdLINyVtFd
         aOZjiAwu1frmMT8jD8ByX8ofc7Og003zqtvpp/d0xT4h1EAXmg7KHpbFKq1RM6Jygf7n
         CmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OQM0ZOIQ1BSyIC7OgvYQ9aFeaUJwMYXx4azwY8i6euk=;
        b=AhHMw2t8j52EveeUOdu81m32ke78NEYj/XKhs+J/fnBLOK6gPMT0yQu2Mfs7xmDSfB
         LX58sy7e6jjIkN8EGujzLMFiduHA9xD6wbZbazKF80Qq96ZQb2ziXKT2up1QFakZEFMY
         ktm5PmyJa1gx+AfVYigmmhhfe7HKbkHxpNAj8ME+qkrlGMSoJ7TY1VysEzKISbV/rX/3
         ATk0ErsZ1jrARG0E6S5szix4/IzyepHd+b111/UEO10kAXQGRNmeUwYWoW8+h/SXjaSz
         cNdSPvhXOHMXQpUjgy0+uhfynsImF3PlP7VO+xA49xxc2Oqk0gXNAht1xpGQwh2EKlth
         agRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f9XpAxW4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e7si545118wru.1.2019.08.11.22.26.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 22:26:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id m125so6552964wmm.3
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 22:26:55 -0700 (PDT)
X-Received: by 2002:a1c:6145:: with SMTP id v66mr24893650wmb.42.1565587615182;
        Sun, 11 Aug 2019 22:26:55 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 39sm11003737wrc.45.2019.08.11.22.26.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 22:26:54 -0700 (PDT)
Date: Sun, 11 Aug 2019 22:26:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>,
	Jussi Kivilinna <jussi.kivilinna@iki.fi>,
	Andrew Morton <akpm@linux-foundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Message-ID: <20190812052653.GA47439@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <20190812052355.GA47342@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812052355.GA47342@archlinux-threadripper>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f9XpAxW4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 11, 2019 at 10:23:55PM -0700, Nathan Chancellor wrote:
> On Sun, Aug 11, 2019 at 08:31:18PM -0700, Nathan Chancellor wrote:
> > From: Vladimir Serbinenko <phcoder@gmail.com>
> > 
> > clang doesn't recognise =l / =h assembly operand specifiers but apparently
> > handles C version well.
> > 
> > lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> > inline asm context requiring an l-value: remove the cast or build with
> > -fheinous-gnu-extensions
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
> >         : "=l" ((USItype)(w0)), \
> >                 ~~~~~~~~~~^~~
> > lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> > in asm
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ^
> > lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
> >              "=h" ((USItype)(w1)) \
> >              ^
> > 2 errors generated.
> > 
> > Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/605
> > Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
> > Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
> > [jk: add changelog, rebase on libgcrypt repository, reformat changed
> >  line so it does not go over 80 characters]
> > Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>
> > [nc: Added build error and tags to commit message
> >      Added Vladimir's signoff with his permission
> >      Adjusted Jussi's comment to wrap at 73 characters
> >      Modified commit subject to mirror MIPS64 commit
> >      Removed space between defined and (__clang__)]
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  lib/mpi/longlong.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> > index 3bb6260d8f42..8a1507fc94dd 100644
> > --- a/lib/mpi/longlong.h
> > +++ b/lib/mpi/longlong.h
> > @@ -639,7 +639,8 @@ do { \
> >  	**************  MIPS  *****************
> >  	***************************************/
> >  #if defined(__mips__) && W_TYPE_SIZE == 32
> > -#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> > +#if defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> > +					      __GNUC_MINOR__ >= 4)
> >  #define umul_ppmm(w1, w0, u, v)			\
> >  do {						\
> >  	UDItype __ll = (UDItype)(u) * (v);	\
> > -- 
> > 2.23.0.rc2
> > 
> 
>  Hi Paul,
> 
>  I noticed you didn't pick up this patch with the other ones you
>  applied. I just wanted to make sure it wasn't because it was sent to
>  the wrong person. This set of files doesn't appear to have an owner in
>  MAINTAINERS, I guess based on git history either Andrew or Hubert (on
>  CC) pick up patches for this set of files? If I need to, I can resend
>  it to the proper people.
> 
>  Cheers,
>  Nathan

Sigh, actually add Andrew and Herbert and get his name right, sorry :(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812052653.GA47439%40archlinux-threadripper.

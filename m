Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYFY43VAKGQESW4L7OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 478DD918FD
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 20:43:45 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id j16sf4034282wrn.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 11:43:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566153825; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXcUw1hx20v9WcKOBG+z2wIMpMG6xVmY5UcVFrx8XsozZG4fHcEqcmi6gzBU51Ca8/
         9MntKYNX2VW4X206WUTvJWtrPvRI1CmGaTHVnp1pmXML0eAKdIjtB1/bP61d7XNqWBl6
         3ut/iyl6Luae4UZsWxtKGFVomxhUFq+E37erdSIzQcbvq8v2thdhgayoCIqYIRTWDfUI
         ZXFEJ6gCP9rRo3vTYv0tAZBbpeY3QmC3C//5TtOq6dsaLQjASNHxwtYc00vrfTnHVvFt
         DTBdUVH5KMmb51r68k69NBW6xl0LdHKiUXZfiZQRRlfPoxzBk6wnluSjUXkiyDYX7uo/
         9VVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=KC61H8kn9dYXWjGbxtC6sMNnKi5qmTxDM4YsxUnzR64=;
        b=jacS8xx7o2u8qFhxXZjYXawQO7LVLhG9qq7EEuB5SWNhP+XxqN379g8NmlFWpKWGdw
         3axqphEk5WuGQxKbvoiZnujnD3qGBBot06nElQz4jNOTLPuVUjHKMSClopGII4tq3h7i
         ka5gFCDkeGCEYJMMitfjvT2uyUihcQwu9YJqbvFUpafJoCuYz6JBaLv1NedXKcUUCtBx
         dXYbvJnTjHesc7LwCaym/T7o0fXoKAY79BNouaQcWJM+eWeP2F6HxsHmQRtRChX0kse5
         2urN5HC8HSpiBUr1TawKTfdg14GgR9zMPLtGqmT0eSwg0DQWpnbOajoM/v+/adPO9cIM
         OnjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNczk6eU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KC61H8kn9dYXWjGbxtC6sMNnKi5qmTxDM4YsxUnzR64=;
        b=WesyW0E4RXbllnCXCnoPKhl3wAuSRUOws7eC/K40ZACHRVpc9+QtQIG/PUNbLGXHBY
         0YkptQk3Q7Ywa/gC8MiUqipGtflICCOVLnQ64BHHsB3eKoz+WupT621Thm/8pWVZl4ss
         56z6w6CwlF+4P5ytSl6ydskJo+SXTXl0bsK1Q11BtKaSy6eGkHJQnLIQvfDc3hCig6OR
         +jXiJC2ndz2ce+dqxYbFx1K0Ix77mhPImtXHuoJRQxffXNeaVpA7iD7uTq9Z5GqzAjGa
         +fj9QiN6UTyYJX/DGiM3quhcXPxrs9qfh3fj4wH1/SLCLXghDGxu2urcEwxUQ7BZc6hj
         OKdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KC61H8kn9dYXWjGbxtC6sMNnKi5qmTxDM4YsxUnzR64=;
        b=urnvEdobn3oM+Nj+ZwECzf+ELl/USZtOOSsD7hxL6NjbBdy2OGZZud+OLMYp94c/7J
         /yavCvvu9prjtc3ZXlBiss5GvZat+7oqN/fEUSALQelpHOIKYelgiiAxkCnREtzYPJe3
         4mafCXCwTEnJTR+l/SCq1kqilMFLWHkV2rkVGoQTRN9+AcUuqEEckOu9nAjNjCHouSKZ
         lX7nr7sc2EB9v1riKONpmPKGN1jXXS3clbZaucM1+JUBrpwXEaJWPIZUhr1G1HG7xJ1N
         TExLAKOH+KGedWAQwN7gkMJK7rWDWlXJqdEbGFjxZsCptYvh+QoBp2//c6flmRXgQ22C
         YAiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KC61H8kn9dYXWjGbxtC6sMNnKi5qmTxDM4YsxUnzR64=;
        b=YjlOpYlosogwtBSPFpeG/y+FCnA7gakval2E5lfXyDxXXOnLhTRg8LMmPu1n6hgxam
         VIOKrfao7p8IE7Ke8V+jl2IwYVzqSqHd26VqiuieR7QscgWYedgQz5F4FGXa/CzYuUcW
         UbyaEigapmvK9GMF0LIABHLaYyQmg7BNAbRHejBEIHSyh7e7xwxwxk5dIQfNSAmO13oa
         I6SBO8H0IZILqHrGV6/y5g/cMF4ou8qNqh593/12x2L8Ynb/gq4V4QM62GiiCewsBSVn
         CRt6fyxx/JxxYpWJQmLq/7bWnE39qW7OwuP0xmnP+gmPX5lQZwCN8vpp3wa6TdU/jk9R
         R6fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUjiyGdScmzvyNkMGqMvXQ5qrtupZyEaG3a9uG8S+JmGpcrh6f
	Iae6G4R0pL9UX6EuhOAF8jo=
X-Google-Smtp-Source: APXvYqxK/+YkoOrtFapkSwLwnbLJkzu49EpQSc6rEH4mrP8B4PHhXPf2mLEjaRKjJQaWr//ufHamBg==
X-Received: by 2002:a5d:4d4c:: with SMTP id a12mr23466973wru.343.1566153824989;
        Sun, 18 Aug 2019 11:43:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3b05:: with SMTP id i5ls3224962wma.2.gmail; Sun, 18 Aug
 2019 11:43:44 -0700 (PDT)
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr16995134wmi.48.1566153824583;
        Sun, 18 Aug 2019 11:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566153824; cv=none;
        d=google.com; s=arc-20160816;
        b=mLCD9ypOYHRhSc4bzkaPm6kqI8XfP92G/9jECysTHxO5ithxixn2Ah62fMcerGE9tQ
         Hf9N0f9m+3IAvcfqyw85kRHe5GIc1roauCOMoTDlYDumc/C5HE4S9MicWlCPPcb3CzIs
         cxssu+YJToOG/+xpVJJskZTwyvHOW9ycSpHE/7sEcB079NAdmENbLt7m2LRoWoz7MAO2
         NiBITEdLSS0Mv06C3PX0JAAWPDoOQSPVOWxpjOA7cBn8J2TuXfrSoXvOJ+ca9b1DGgl9
         1wHa5WasNH/JZcMOMs6iKXblWz/OXFKvD8bLUogxtMwhiM7KJJGyqumaXTX14vXRS9iy
         ZaRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0CK+Y2zsIdvfbs/HayvWMRpWvdlab8WBL02QhMYqRsk=;
        b=yUZlwqMlivVtCcLfJbIjJPZp66AiqzGx+rTt2BK5tO1M7GmtdQLs2+MJf93TF58Iyw
         Okk3yokE+NhVdOb+GuQg0YXOELMZeK0no+nUnRMbLnVTHLTTHrXlYgHX9CuEZZXpI7SN
         omsd8XaBh3PYoY5MckRMJabhdqX0m0IXnsxgqrzJyy9LGiZ8UEnzDjy2Yk1L1//Rx9i9
         5l58lcVI+Foirsd3fL0QOAk5ZuH0WLMVr4mnGSNNPuuWpE8nu63rmxaWjCDDlIdZBVU+
         3MaxBJuU2qazlQsM7MrVp/gA0doY7fATHHhs0eSXHN0Z1RU3nCdEEZmsDSqTBuTSKbPd
         DEbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNczk6eU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e23si402207wmh.0.2019.08.18.11.43.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 11:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 10so1121315wmp.3
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 11:43:44 -0700 (PDT)
X-Received: by 2002:a1c:1f4e:: with SMTP id f75mr16298964wmf.137.1566153823955;
        Sun, 18 Aug 2019 11:43:43 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n9sm2476870wrx.76.2019.08.18.11.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 11:43:43 -0700 (PDT)
Date: Sun, 18 Aug 2019 11:43:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nathan Huckleberry <nhuck@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] kbuild: Require W=1 for -Wimplicit-fallthrough with
 clang
Message-ID: <20190818184341.GA6262@archlinux-threadripper>
References: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
 <20190815225844.145726-1-nhuck@google.com>
 <CAK7LNATsA0foyeaE2W3xe=_Hkf9S=q0eD5WHqwPXkMw8udkDPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNATsA0foyeaE2W3xe=_Hkf9S=q0eD5WHqwPXkMw8udkDPg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hNczk6eU;       spf=pass
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

On Mon, Aug 19, 2019 at 01:43:08AM +0900, Masahiro Yamada wrote:
> Hi.
> 
> On Fri, Aug 16, 2019 at 7:59 AM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > Clang is updating to support -Wimplicit-fallthrough on C
> > https://reviews.llvm.org/D64838. Since clang does not
> > support the comment version of fallthrough annotations
> > this update causes an additional 50k warnings. Most
> > of these warnings (>49k) are duplicates from header files.
> >
> > This patch is intended to be reverted after the warnings
> > have been cleaned up.
> >
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> > Changes v1->v2
> > * Move code to preexisting ifdef
> >  scripts/Makefile.extrawarn | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > index a74ce2e3c33e..95973a1ee999 100644
> > --- a/scripts/Makefile.extrawarn
> > +++ b/scripts/Makefile.extrawarn
> > @@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
> >  KBUILD_CFLAGS += -Wno-format
> >  KBUILD_CFLAGS += -Wno-sign-compare
> >  KBUILD_CFLAGS += -Wno-format-zero-length
> > +KBUILD_CFLAGS += $(call cc-option,-Wno-implicit-fallthrough)
> >  endif
> >  endif
> > --
> > 2.23.0.rc1.153.gdeed80330f-goog
> >
> 
> 
> Perhaps, is the following even cleaner?
> 
> 
> 
> diff --git a/Makefile b/Makefile
> index 1b23f95db176..cebc6bf5372e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -751,6 +751,9 @@ else
>  # These warnings generated too much noise in a regular build.
>  # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
>  KBUILD_CFLAGS += -Wno-unused-but-set-variable
> +
> +# Warn about unmarked fall-throughs in switch statement.
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>  endif
> 
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
> @@ -845,9 +848,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC)
> -print-file-name=include)
>  # warn about C99 declaration after statement
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
> 
> -# Warn about unmarked fall-throughs in switch statement.
> -KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> -
>  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
>  KBUILD_CFLAGS += -Wvla
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

I like this more than anything suggested so far. I think a comment
should be added regarding why this is only enabled for GCC right now but
that is pretty easy to revert once we have figured out the right course
of action.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190818184341.GA6262%40archlinux-threadripper.

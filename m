Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAFN73WAKGQE36A5YRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB9D322A
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:37:22 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id z13sf5628308pfr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:37:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570739840; cv=pass;
        d=google.com; s=arc-20160816;
        b=yALmVrK+RJ+GIfpqFZFWVL9rp3MfDetfJSg0f9dX8WeVI/QUQcfw5RGvI4QXQt7piO
         rQbOty6pGBd1O6b+yagqOKPbGV7UnxPT7OuYglPicbZ5vtNv12Tqt0Db/GC2WT90TTmK
         UX3inroHh08J22WW/XlOerbRAKCr3pP31HsFkzdC/kCJocqWP0P0q5uZ2iilbBIm6KS6
         RkgtfjdsbtMK/BZB1slt4Oo5V+aIDhFPcTO3PtOdWd/lQprAqaLLZxQxxI/NSrD+t1AV
         Kl7lUmENa5kMh8O7/GSeHxisWWVvWc5Jh29wEp5arwiBeroRT0u6XyO0/EFacukvH1CK
         lxtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8mSHjgKz5kn91qt5zWSGhUFFSJ2eIoPr/dSsNgLVK3s=;
        b=f0o0uSbv458hQ2SaBBQ1KTf7oaMYdW1JU/Uc6x8KGOYHSDpNEM6PgTjVLhWcGY8N6z
         gGhsGDnFjp24or4RI3FneiNbH/+uULH/hiMV8oTDTfEJE79udCK74dWQBSFcY+0naVaE
         HAQZGFSPkcfL/TRVaznRKlI43AGYfaV7Hq2s4Xj0yaoimMonTE7eThmn9Xi+TxTdoMwz
         oAA7eAzzVB77Ul+HDJO8QSC2QTnx6Sn/dbrO4BzjnikiftWFjqqjpqYC2DLdTw9xlmz5
         XIVx+leDmLYfhqqT9k3Po1hZaCLWXsz3lbgwzEYBXV/mj4vde8ZG0rgDU1XsDTKBR9JF
         iTUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WrQxU5tF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8mSHjgKz5kn91qt5zWSGhUFFSJ2eIoPr/dSsNgLVK3s=;
        b=aAzdUIaP85Pfe1t1TA7SCoAsvCJiqVaLhzCCSyM+yVzX5x1VhSi6/UTysh45Uh9ZK4
         GLdHx2E1WeIP/1qKJwiOewjtARnwjGgZcRxFHPxujqlsEiXsZKJKPDoKuHzmsDKDhDa6
         8qFJzioURVqTBZdSMQv6bXPmdeSiw6RNB727ZQ7s3Yz7vGEF6C7OOjq9rdMTebZV4+mj
         5qOEMbdR8xXofD/rB7hVTP13POwW93EhdJQd+s9llxTRwyvhpyfzql1SBdC1/o8ha9UM
         OziGoiPPJ4Q6RsbCp2L/ZLzf2X50b1jooSKoe1bH/dEKGlG4CZE3a0Ls7JVq9ocoaB82
         Fr1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8mSHjgKz5kn91qt5zWSGhUFFSJ2eIoPr/dSsNgLVK3s=;
        b=Svlq6g/bkivRvU8GsOi9XedBWxyPXN2/3ab3JcGrAGQ2zEQ9gcWD4P4HAMTbBvexkl
         YrHwJj+1MkTnYi5D2jIS788vMVG5CNIO10flYFVYKkqdqkfW602NO/VeaW62UBJD8hkt
         gRpQCoHeMCkgFxyRHLJVTuvjpBqEtbzgduoANmwhCgBSvJMeYEGqumCi/8QNy13ccgu/
         vrw3PC5bHArUq5HDzrZPMRkUhGeJZlab8nxqzLZSucv5DCEBSwkXnFM01DE6WNxtajrp
         G6lHsJwT7TpZ0zydtFuv+vsttMZZcSjaarHuySXwtwi51FwAkAWScX4Pi9ZbK8QFBMRb
         T1NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqJeySfkrUdCiZb5KV+J8MOx25Q7qZZA/PK7PL7nj+9PPuequ1
	ouwNq9ZGVJS8ZzBNg5BcG40=
X-Google-Smtp-Source: APXvYqxw/ru7ZK9fF9ljYYNqVSQEkBP8HJMKKd8g9NzmiSQM16a84wN6CECyEdTTWEh70Kp/eueCuw==
X-Received: by 2002:a17:902:8346:: with SMTP id z6mr495826pln.280.1570739840743;
        Thu, 10 Oct 2019 13:37:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8dc2:: with SMTP id j2ls1477860pfr.8.gmail; Thu, 10 Oct
 2019 13:37:20 -0700 (PDT)
X-Received: by 2002:a65:464b:: with SMTP id k11mr13378583pgr.263.1570739840257;
        Thu, 10 Oct 2019 13:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570739840; cv=none;
        d=google.com; s=arc-20160816;
        b=ISQBWgjDx4aU6uszs+Vi3kF7hhJlHFin1mhRZuw3CZP7WgozNC2tlSAa35I7/qQkhI
         V3vpUJlLwOF+ESIS+LqUSmHQA/1Y5zPC1CubMMU3Auw9rPzaBYPVB6JzWY/0ifs0b2Iy
         oFyezvmM/z6POhWMDU0fAhpTO4YUSJ/aVWjPj1FfNn8fud3v3rWoJ3UgUz06i21mh58/
         coQr56uLnFdbtFJiT6CrBTN3uJcW+aOLRbAxlNa6CwqZzxy8rtnPPWpQrAn0+WlevDt0
         tsLNxaymZVWCehlZTXdndVBrSx0ME1QASkytcZccPSF9BzKvU0RZG/pYhyevP8CdDQ94
         dClQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pMZW5vPXBLhM8tBCY8rJcYa/z4xJ5M13bp7cRgtTWOI=;
        b=BwVTWqPEvjvJTaBGmge6oItOhgpRDQEkAP+g4/1PPTY5gzZXnaSsFR637jd3/gXqIT
         ZGi2bT6WlAoylwg5Tk7tJBZGc00XnQ7RdgBDNCjODYLiKQ72JXuJOdjOl3JWwGREv5o4
         2L9atveLJ2m7BwXIaVBGj/p0UnvlqnFRoy0O329/sny1lnnjVvt+YOAiGNYwAIq88pvN
         v6Nx7q6h2nDEeUYvBTi09JmukmrQKYZ8L4Eqoc2yrKokmgDnh13W49XFVhacCsJRt3Tc
         qtO6ckAF67iRa19555jmpah/jrxcWCJTJj5pXuJh1qAyxwY9Oi9neRNx4Wytiy3MmaSV
         +MJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WrQxU5tF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id br8si893945pjb.3.2019.10.10.13.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id r1so3201296pgj.12
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 13:37:20 -0700 (PDT)
X-Received: by 2002:a63:a54d:: with SMTP id r13mr12919802pgu.353.1570739839786;
        Thu, 10 Oct 2019 13:37:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b3sm5077563pjp.13.2019.10.10.13.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 13:37:19 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:37:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joe Perches <joe@perches.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
Message-ID: <201910101334.7E09211F@keescook>
References: <cover.1570292505.git.joe@perches.com>
 <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
 <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WrQxU5tF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Oct 05, 2019 at 07:17:36PM +0200, Miguel Ojeda wrote:
> Hi Joe,
> 
> On Sat, Oct 5, 2019 at 6:46 PM Joe Perches <joe@perches.com> wrote:
> >
> > Reserve the pseudo keyword 'fallthrough' for the ability to convert the
> > various case block /* fallthrough */ style comments to appear to be an
> > actual reserved word with the same gcc case block missing fallthrough
> > warning capability.
> >
> > All switch/case blocks now must end in one of:
> >
> >         break;
> >         fallthrough;
> >         goto <label>;
> >         return [expression];
> >         continue;
> >
> > fallthough is gcc's __attribute__((__fallthrough__)) which was introduced
> > in gcc version 7..
> 
> Nits: double period, missing "r" in fallthough.
> 
> > fallthrough devolves to an empty "do {} while (0)" if the compiler
> > version (any version less than gcc 7) does not support the attribute.
> 
> Perhaps add a short note why (empty statement warnings maybe? I don't
> remember them but it was months ago so maybe it changed).
> 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> 
> Please add Dan's Suggested-by and copy the things I wrote in the
> commit message when I proposed this:
> 
>   https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4

Perhaps just take this patch directly with Miguel's authorship into the
series and tweak the __fallthrough to fallthrough in subject and body.

-Kees

> 
> > ---
> >  include/linux/compiler_attributes.h | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> > index 6b318efd8a74..cdf016596659 100644
> > --- a/include/linux/compiler_attributes.h
> > +++ b/include/linux/compiler_attributes.h
> > @@ -40,6 +40,7 @@
> >  # define __GCC4_has_attribute___noclone__             1
> >  # define __GCC4_has_attribute___nonstring__           0
> >  # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
> > +# define __GCC4_has_attribute___fallthrough__         0
> 
> This goes after __externally_visible__.
> 
> >  #endif
> >
> >  /*
> > @@ -185,6 +186,22 @@
> >  # define __noclone
> >  #endif
> >
> > +/*
> > + * Add the pseudo keyword 'fallthrough' so case statement blocks
> > + * must end with any of these keywords:
> > + *   break;
> > + *   fallthrough;
> > + *   goto <label>;
> > + *   return [expression];
> > + *
> > + *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes
> 
> This also goes after __externally_visible__.
> 
> Please add:
> 
>   * Optional: only supported since gcc >= 7.1
>   * Optional: only supported since clang >= 10
>   * Optional: not supported by icc
> 
> As well as:
> 
>   clang: https://clang.llvm.org/docs/AttributeReference.html#fallthrough
> 
> See how I did it in the link above:
> 
>   https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4
> 
> > + */
> > +#if __has_attribute(__fallthrough__)
> > +# define fallthrough                    __attribute__((__fallthrough__))
> > +#else
> > +# define fallthrough                    do {} while (0)  /* fallthrough */
> > +#endif
> > +
> >  /*
> >   * Note the missing underscores.
> >   *
> > --
> > 2.15.0
> >
> 
> Cheers,
> Miguel

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910101334.7E09211F%40keescook.

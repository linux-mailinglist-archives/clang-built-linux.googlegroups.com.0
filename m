Return-Path: <clang-built-linux+bncBCIO53XE7YHBBN4NUP6AKGQEHLG57DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 351F528FAFF
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 00:01:28 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id p17sf136856ilb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 15:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602799287; cv=pass;
        d=google.com; s=arc-20160816;
        b=AnmOy4uyDlp7elKXAaiKavluM6FS27lV7cKGZzwqM9Tom8iIwCCCq9XidSMWgm1iF4
         Kj8//uWE8nMD5jFiT1j/GpTBa8Z02kisfTvGhB01Br1wBFTI1AxGVdzmuGc0cKIllrIN
         cg9gbypDCpxJz+UZD051FzJFFOPVkfMPQk8KQejO0sPOR9cGBy9ozL5DDv6CDGjh5ljV
         LwugL7rAjRq2RDDWbipY/R5Bwo9EFpzOZBANlBhbxdoq1spb3cOUBXFwhV32qForwKdI
         gD2dcvS4Hqguw71AKd+C2+6bRsZWPhKp9iJ6pBqxJkNPnhv2heYsy3HfeJMzFwZ5rEiv
         33MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=vgdaFK2XP65EDipFZ964WMvyCjrBUhji/UnRmOeKojA=;
        b=pqwtTLxopk35QokaqncfrfTK3qYKKxKwSHySCkS03nevXYs5j0lhikiqHya93QZSEw
         IWNcmoC9am15LEsVQqLLsxxnbwVECKsuNoBcr9Iof4xq1sFZoVCJTYd5pvRxD/J8XvjV
         CmyZiFAWlzITDeLVzQgAWqZIPPoZtZOI7ovU1fsj2y0d3BdH+aq9jN3wHY6sE33VtqSx
         NE/v/ZNsn+EDtWu/z0QZZLlyvVi3YLd++k85wIZcrURuguobrmzgFNi6CkAPIWZiNh2i
         WBjBw42g7v4z2yH5/uU+5AmRmRyBrin/7Aas2UhgvaO7UUaTaSWTd+K90Jr/lUSduKjV
         u/Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5v+MJP2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vgdaFK2XP65EDipFZ964WMvyCjrBUhji/UnRmOeKojA=;
        b=araS6b57e3RIjt5PD4ka2o6hstaLOL1pTH5OIZidBwzOTLoB3wtICmNCx5KL1C909z
         lQeZPxtgcfFQefsGgZSTvqAECDzopeNQgu2Cy+WxpePd5s38POBMfP1l17ojlgYfOMKi
         kHRQFsVBzzefDU0pEXYdUfHZxZClupVI8VnT9pwY7vIDuJLmD+nabm2Sef+G8a0+nTRN
         QzA4NB5FAg+54Ma0RR1xMGvVoELaQe+ilOupIXk5bkI/ZHtZuHdqtg/2Q8VTrGa1S/6I
         ZOd/KBSthuaLF59kQ+WFTMuqoERmzzUU4Ae5UzMfIrcVBRKPlISWVJhXf76H9mSADiue
         i2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vgdaFK2XP65EDipFZ964WMvyCjrBUhji/UnRmOeKojA=;
        b=UCBaXMCzfG/mp7ykQLjYYOz/bK7l9/tiKo1fQOzTjSgF8YkRpdLLV8qhe2oXUtkVat
         Ignv4xWCdSNq5K4e4BEYSWLZTW2M+SpC9Y08uzn67IvdZJoztxWTRE7jZrSy5sQLc77U
         bZKNGsukbkbDvfkJBdBgaCikY0YwHI50hxt2mFIFGeC+/INybzsOLQV/1nf2qiifJu+m
         DON3G6/+dgytvfWP46YcLvYRf+U+Tc0Lv6ZVgHQ3p3H3Qus4KT9X+o/wztpVfzsgbWrJ
         Ia0GpTAUl19kQXSAQZrJk6vt9dy+LLEKoPzXz1yoBHflcdsy1ivs5M9cLyd00VDRJhPN
         NdFw==
X-Gm-Message-State: AOAM533NyXzThb898wvHRNLlEKTYyVdMIvXoY/odDaLkSBc1SDthcC+k
	6gtUom7FfetfOQz4pV4WUaI=
X-Google-Smtp-Source: ABdhPJzQTlZHtmF/eyH2UDx8OwGyz66AJbW6l3LSea9su1SAkWGcAHXcgYXq8MR08dS+Mxp5S3gZWg==
X-Received: by 2002:a92:99cb:: with SMTP id t72mr481738ilk.172.1602799287199;
        Thu, 15 Oct 2020 15:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls40806ilb.6.gmail; Thu, 15 Oct
 2020 15:01:26 -0700 (PDT)
X-Received: by 2002:a05:6e02:6c6:: with SMTP id p6mr461064ils.91.1602799286763;
        Thu, 15 Oct 2020 15:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602799286; cv=none;
        d=google.com; s=arc-20160816;
        b=byFgHRgr17RfgzNAczN430kbeBFw9UNGbcZ2kc8TQUwSKVwhphfKgNcwF4GFydr0we
         2Q+BogkXTC7gbpN+8VEV8Ke5Ac8MT7K4fdSgJB9kLuXoncZib6i81rvhY1/jHJfq2wHb
         ppa+dlY5URo/W9kzkE5X79nYAOrPW09eEJaroLG1mFp81dP4t63i+ezkr5rZkxdhwnS2
         IqXejR1h79D2RFXZSZOvDMHLTwKQisqMBQhaRINyed/OYYxAbA+Gmxz7NEt6dWXvW9Zn
         D7bzoZQoLCPttUh1Jgd0P+9KmHxpxrlrg8ZPEJ6Ts5+5Lwy5oxsk7LUA+lIYFYTsjk7G
         NJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=mzwJk/1YT7Qs2X5Zd056Q/R8AqhXJAI5UxwwaHjH+vs=;
        b=e8z7G7ZVxkljEjvtoLSfheLh+JPE8VNPWeam3AHKI8uy2l2WXQ6tm6wBvxGMwilsA+
         Pl73Ogb6aUxYwzWYCAea/ICCoSHL0vJawpT3Z/Oq9Cgia70UP1oLbYl27LqS2nur4hyd
         0R4tDHe8ZCC9xYld6c2GQ1iTn2/s/kushUYJZL4DBFzuTeMpi1LnkNYgfxGW8nHkwf2q
         wbgiaxuSpQ5arj6PcUrD7QWCAEV3kjGnj9UA1toOtoXeuWfDk5h9EdwTrIeGQyy1oVgP
         mj96rclIfgXATax9WpMnNh2xC002rqwcLc3aizULvTuPRzsrobj4raP5/DPdxKjtD9dQ
         q9Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q5v+MJP2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id d25si19555ioz.2.2020.10.15.15.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 15:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k6so1116419ior.2
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 15:01:26 -0700 (PDT)
X-Received: by 2002:a6b:1497:: with SMTP id 145mr205044iou.202.1602799286358;
        Thu, 15 Oct 2020 15:01:26 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id h14sm267428ilc.38.2020.10.15.15.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 15:01:25 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 15 Oct 2020 18:01:23 -0400
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Arvind Sankar' <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] compiler.h: Clarify comment about the need for
 barrier_data()
Message-ID: <20201015220123.GA919128@rani.riverdale.lan>
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
 <20201015181340.653004-1-nivedita@alum.mit.edu>
 <72958fd25e33490181b0df9413ec08b4@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <72958fd25e33490181b0df9413ec08b4@AcuMS.aculab.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q5v+MJP2;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d41
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

On Thu, Oct 15, 2020 at 09:09:11PM +0000, David Laight wrote:
> From: Arvind Sankar
> > Sent: 15 October 2020 19:14
> > 
> > Be clear about @ptr vs the variable that @ptr points to, and add some
> > more details as to why the special barrier_data() macro is required.
> > 
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > ---
> >  include/linux/compiler.h | 33 ++++++++++++++++++++++-----------
> >  1 file changed, 22 insertions(+), 11 deletions(-)
> > 
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 93035d7fee0d..d8cee7c8968d 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -86,17 +86,28 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > 
> >  #ifndef barrier_data
> >  /*
> > - * This version is i.e. to prevent dead stores elimination on @ptr
> > - * where gcc and llvm may behave differently when otherwise using
> > - * normal barrier(): while gcc behavior gets along with a normal
> > - * barrier(), llvm needs an explicit input variable to be assumed
> > - * clobbered. The issue is as follows: while the inline asm might
> > - * access any memory it wants, the compiler could have fit all of
> > - * @ptr into memory registers instead, and since @ptr never escaped
> > - * from that, it proved that the inline asm wasn't touching any of
> > - * it. This version works well with both compilers, i.e. we're telling
> > - * the compiler that the inline asm absolutely may see the contents
> > - * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> > + * This version is to prevent dead stores elimination on @ptr where gcc and
> > + * llvm may behave differently when otherwise using normal barrier(): while gcc
> > + * behavior gets along with a normal barrier(), llvm needs an explicit input
> > + * variable to be assumed clobbered.
> > + *
> > + * Its primary use is in implementing memzero_explicit(), which is used for
> > + * clearing temporary data that may contain secrets.
> > + *
> > + * The issue is as follows: while the inline asm might access any memory it
> > + * wants, the compiler could have fit all of the variable that @ptr points to
> > + * into registers instead, and if @ptr never escaped from the function, it
> > + * proved that the inline asm wasn't touching any of it. gcc only eliminates
> > + * dead stores if the variable was actually allocated in registers, but llvm
> > + * reasons that the variable _could_ have been in registers, so the inline asm
> > + * can't reliably access it anyway, and eliminates dead stores even if the
> > + * variable is actually in memory.
> 
> I think I'd just say something like:
> 
> Although the compiler must assume a "memory" clobber may affect all
> memory, local variables (on stack) cannot actually be visible to the
> asm unless their address has been passed to an external function.
> So the compiler may assume such variables cannot be affected by
> a normal asm volatile(::"memory") barrier().
> Passing the address of the local variables to the asm barrier
> is enough to tell the compiler that the asm can 'see' the variables
> (and spill anything held in registers to the stack) so that
> the "memory" clobber has the expected effect.
> 
> This is necessary to get llvm to do a memset() of on-stack data
> at the end of a function to clear memory that contains secrets.
> 
> 	David

I think it's helpful to have the more detailed explanation about
register variables -- at first glance, it's a bit mystifying as to why
the compiler would think that the asm can't access the stack. Spilling
registers to the stack is actually an undesirable side-effect of the
workaround.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015220123.GA919128%40rani.riverdale.lan.

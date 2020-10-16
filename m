Return-Path: <clang-built-linux+bncBCIO53XE7YHBBF5XU36AKGQEWSPTPXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F992905EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 15:09:44 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 31sf1315441pgt.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 06:09:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602853783; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHayYFzPXYYlNftCB69/HYOmXjxF0RUbv1+FSBqKdRlbyntzUXvhRSJ39rCRzMTh6z
         G4gvv0rhhd0IaTPirbsVOin0op5ceBMJAa9ipl4wvk+yQ9CFLeY8TEzFuDlDwLlOeibS
         JD+wqnCsgmJ+z1L0Fmu4w+078gHAXZpedikylioCSEEkzmKWqjTmpf6tnDIR2IKmmfkB
         A+xIWA/WmMMlpcZC/Du4YDvRDE1RY9QpT//dAEZNFNumITGheqPqT7+1o0W7Ip9d6s5w
         p7FbTwaj3WrbpIzfFplw6q6hos0UjF63NP21AbhpwSXL24C6RDPBHX5udsbcg2/1JiS8
         A+7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=bvK0ZoUo4XPM9B3961NULmj52ju+3suoNJwYqWxND88=;
        b=ylkLp+lPH3E0KD7rElewBwVPxIp3N3n17th0i3OeL+OdrV5j43gh8s8kodg4vc7VeN
         KQGtu83e66Igm4NqoAmi23QWFqnVX9AbZTCjFH4lpFs5wixQ3ecO/n7x/47qoj+tAv/R
         1rs+DJqOzeFCYYCnwHDigEzmgik0LI1FP96WDDiFV6hn9t3BZz+/W6EinP23QioqtAY2
         /OtUuODLM4o2E7XsvRn49gmAOG+ojX48RrnJm+ytbCAmBCLfCuM3/mxDUu/Qm4+DSFVI
         WEeorbQEw6jVh0K0bUHunrsEcWTltb2VHzUK07HDsl+4O0gkWwLKiyVVLt6xljVMW8NP
         FFTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l5JkWgGp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bvK0ZoUo4XPM9B3961NULmj52ju+3suoNJwYqWxND88=;
        b=IeOWKxu18DXXHb9kcXGSt/St9t8s3XlNNcckgC0MlLWN2DSDUw946eSDmxkZqGTx3Y
         koUqk1ZhRX7XF8V2ZU1yTozFR1bDysjJDXjllkLFxiGf47ggLWim4hGsX6/qIBFDzXLC
         dMl51BMJ7zen05WcShxTwNNlOPazqfYJRqJtxMSTUgo3eTs9sBoXZqhmjlwcbX0rVstv
         fRQT8zcbD1MbogYkuzimAe05Jdc1OSZBy2jeh8zT90btOayPHgduB5cln8l0H9w7sOup
         ycNa4JTsg51sSVhPBWGDypl5sRxu1wegLoxgXSWeylgLzQj2+D69GidrCHoUtwgtq4xL
         0hTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bvK0ZoUo4XPM9B3961NULmj52ju+3suoNJwYqWxND88=;
        b=BeH2KamWNBdRCqrd9ZiDIbIV33DLsSXpJdSzEQ7P7obA9HnVwO2j7MEUZY+O3Km5sh
         WR9pj9S472ksdS57Inf8F/meHfLPVkhVWE8TcxMWRgm1iWzfJOgTIMCrG5AuyheuvL8z
         A+sIdWJDoeeW42dI8787GZKRtARzAM0vHROL0j+CIZMXR5rtJhU5wDwffU03VEqgR0r5
         Vjo5qwhNtK1D6MbqJtJagEFyuiddoS9lBqe5aySiX2Og5YUU3DTwxGmXWRAmvmIEOdqA
         xcoItBaYqXs/tFxa/zp63BmJckpxv/t5Bz6bg4Fi+qhvE+D6mNZJSh4s4M/1lc9a6o8P
         UxBA==
X-Gm-Message-State: AOAM530BPMjMGZvokbtBIut8BDhiNL/TMqSBwzL6ddNnpXLY+mRI5eKq
	VqjPQpFVuNSgj2SnSMkZ58g=
X-Google-Smtp-Source: ABdhPJwecueO24XsKaZvkHgl+rmrxzW6wakYPgvcnmHKgI6HeKqQ7pVmaFh0FqFYDHO6YYcTEMO7JQ==
X-Received: by 2002:aa7:8429:0:b029:155:d4ac:3914 with SMTP id q9-20020aa784290000b0290155d4ac3914mr3847281pfn.33.1602853783290;
        Fri, 16 Oct 2020 06:09:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1365963pjs.2.canary-gmail;
 Fri, 16 Oct 2020 06:09:42 -0700 (PDT)
X-Received: by 2002:a17:90a:7d06:: with SMTP id g6mr3943837pjl.113.1602853782694;
        Fri, 16 Oct 2020 06:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602853782; cv=none;
        d=google.com; s=arc-20160816;
        b=w+FvvWjrYVlhtHGzYEGrRaVxg/fgq8lK6whUZOJeA3N4Vst/whq5+jEU4qLn8Eux1x
         fZ0OIDKXgVnuEOzooE9QZvBCgAZbMg2po95j4nzI7uPsnUhpDEOsAxAaA83T/quJVyb7
         +poXzmn7Lyq9+Gjlfw4Qi1ATLRSvPkY24sXACnBu61N08hsp4JhxCiqlOvqCiViAPWPG
         3a2fXa65va5Go25NFjnIFzaxf6+WCdW5awxsV/MOCnGcBRzEASfxhrUhT2IOBz3K/wlb
         uRS/jbB9s1gwlRsjEYT4e3oEwS/WGjt4DlY9TEUIMdd3ZZ9VDTLSnzO2IfR4CtKlax9i
         LwKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Yp8oGC1qLJa3fVmY6JrC1L9UJhRc84mqlHy8af6Cn50=;
        b=ProLNpYGBA+mupPVbqAr6GdjEEqRrEHFlpfFi1rdlQL3ZXeFLl5tknGTeBQy0bw30j
         a6NM/PCkoVCk8G+Hil/4XRGfKWyVFV46/+BIdgnZTncCOCAF8/Y3tkC26aKhYnoqj+s/
         lrBNpHPUejPrvUvF3z9o66Zyv2h5BJDUgnDJNGNjAwYyywVIiIVjKlk8RiUmMCfFjw74
         aNSitE5fez2HpD41ptQt3XNuRtP8XJbwtEBNUaghSClCVuIb4u8SMIQAXmn7GGF6DKFh
         nO40uFm+iivs0j6alub+tFfNgAgC0mUwP8Y6IHVZayyDLdGyuFWogNz85Zpepqvz6ghW
         YPPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l5JkWgGp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id f189si127774pgc.4.2020.10.16.06.09.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 06:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id d20so3648594iop.10
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 06:09:42 -0700 (PDT)
X-Received: by 2002:a05:6602:c2:: with SMTP id z2mr2246377ioe.81.1602853781839;
        Fri, 16 Oct 2020 06:09:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id h14sm1980212ilc.38.2020.10.16.06.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 06:09:41 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 16 Oct 2020 09:09:39 -0400
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
Message-ID: <20201016130939.GB1040839@rani.riverdale.lan>
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
 <20201015181340.653004-1-nivedita@alum.mit.edu>
 <72958fd25e33490181b0df9413ec08b4@AcuMS.aculab.com>
 <20201015220123.GA919128@rani.riverdale.lan>
 <407e91d1d36d48faa8bbdfe4f51033ad@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <407e91d1d36d48faa8bbdfe4f51033ad@AcuMS.aculab.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l5JkWgGp;       spf=pass
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

On Fri, Oct 16, 2020 at 08:13:44AM +0000, David Laight wrote:
> From: Arvind Sankar
> > Sent: 15 October 2020 23:01
> ,,,
> > I think it's helpful to have the more detailed explanation about
> > register variables -- at first glance, it's a bit mystifying as to why
> > the compiler would think that the asm can't access the stack. Spilling
> > registers to the stack is actually an undesirable side-effect of the
> > workaround.
> 
> That is the very bit that just confuses things.
> The data the memzero_explictit() is trying to clear is (probably)
> on-stack already - it won't be in registers.
> 

Are you saying the explanation is confusing things?

What I think is confusing is the fact that the compiler believes that an
asm with a memory clobber cannot access a variable that happens to be in
memory, and the comment is explaining how the compiler came to that
conclusion. The comment is already saying that this applies to LLVM
(unlike GCC) even if the variable isn't actually in registers.

> If it were in registers you wouldn't need the memset().

There's obviously no guarantee of where the compiler decided to keep the
variables. This isn't so clear-cut: for SHA, there is a 256-byte array
that you can be pretty sure will be in memory, but there are also 10 u32
variables which may or may not be in registers depending on how many
registers the arch has and how clever the compiler was in allocating
them.

> 
> Actually I suspect that the memset() is inlined so that is
> just assigns zeros to all the variables.
> This will be done using 'virtual registers' that cache the
> on-stack value.
> You then need to do something to force the instructions to flush
> the 'virtual registers' back to stack to be generated.

This is definitely getting too much into the weeds. What the compiler
knows is that memset does nothing other than writing to the variable,
and if the variable is never used after that, then the memset can be
eliminated.  Whether the memset ends up getting inlined or not is not
relevant here: clang doesn't inline it, for eg.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201016130939.GB1040839%40rani.riverdale.lan.

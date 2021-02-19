Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4XQYCAQMGQENETMSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FDF320135
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 23:15:15 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id u9sf1043619qvp.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 14:15:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613772914; cv=pass;
        d=google.com; s=arc-20160816;
        b=YD3KRNDwNncYRTpfd5ai6FcSOjatzr4I6CzVuyeBwl7v4gk4rgf7K8HPx+3jdBPs9W
         I7fVpmBdA+8As+MK9nB9hZwOljucUi9eGlrcchpxW1ztHJJQqZEVePLAtk5CBFbazgMf
         aUrwYoQY+5wH7AnXpb1DKJDybq0wbreLX9DkI9m5sboDyZ58CVGSr311xa2w9CbY/pq6
         vPCNSKJmgGJWVXdS9XfGBQM8rqdEcL+Cl7dRAKClDVrmJuqnTVq8jkcvH+lUpK/NiKXe
         BE+tK7an66eN7P5FLS5eug1tmzmw/if9jXgLmJqpQflhNJeRoOpt+nKMDxYi8cRGkZjQ
         YE5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ffxa7T6R952sB1gPGbtnDD2uNUgzt23+Gr0H8DB5MaA=;
        b=FBJIhE7+odK+lFgBdrGL9Sp5e36v3j3w07iuvg7k+4tZnWRnLUGVFEUxcg6A5xxem+
         r4a4xcaj1cg+aI3PQh5qKL/E9wD5sTjPHGNFcvLSH4gkYsVPf1ftywsjCzialltnYiWl
         en5XD4E6tfPAtBbhGso3CnPEJJ5x96XN4HBc597VDUoph3ixMVMxvGr4/MeATL4KPzvZ
         VSMt0Be/T9o0u14W3KIQKnlAU4ZDfaJg7FjoDzEmbk69MxtuxOKrbXA7rg/4a+wcdmyv
         uFudqUT3s+YYAMTg0K39x972ZA0yIKx3zsujc1CTJBtIxoFGD7nwK0dALfsyDyIO/jBK
         +OWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sabOmR8u;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ffxa7T6R952sB1gPGbtnDD2uNUgzt23+Gr0H8DB5MaA=;
        b=f3py+QqeqBXTXIJmAUG5lhhey4jJQa2zwqqf3AN3MEx3y1Og5R+ibj6CxayEUahPFJ
         yOclLTPnz6H0wbMj6H2a5mbxvyr0+dqBZQNuMXTnbYKOcse9bZF5n4NJ9mtb/6WXMGlS
         cT8dHTZK0Q55KoPQN5mj2fHxP9KwfHdXWRBJyRrLDWk9QIrOpHjpvNSJjaosZ6IYAEls
         tAV8O/DPrwTSpRg5vACh4wc2ioNnzGKeLViLYjWYVTR3F7zcnuf0RHRtdrIdasRbX9S/
         KI/4AmZHw4GUHZpPmJ6mn98SMI9QAK5cK0h+5Tz22YbIMGv+N5/Uu2J+IflRaiOjBBmk
         MShA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ffxa7T6R952sB1gPGbtnDD2uNUgzt23+Gr0H8DB5MaA=;
        b=rWPNkJTor6GEdrVs9mGthebnUW6re1iWAhShBm7nuv7rIsl1Vh4R8TKoiBBux0krbX
         4/Tjk7a3gfNqAobMLJxbrnKMorNGTsyUV9olKbbyK+TPpF2gF4SYWqnlCEFNuH95oJUP
         yWgHnrHl01CatIkylfsALpzqo/zJdgnUQSqGrIuDb2vvNiLLOVPqUHHgd05eeWOUPJp2
         3ZBVamla86dK95Nzqna8cQqN5iqawBRTJhroAc+Oh3gdnv/howZfxHO/R8fUQfPByUrg
         UhCwI+N+3FsYx59Mi7B8+zLJgYzKsn15CkQUK5hb9VJHhknk8Z7GF3SqQb2sfBH16exv
         Jp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ffxa7T6R952sB1gPGbtnDD2uNUgzt23+Gr0H8DB5MaA=;
        b=per7updotaXbR0U1WvL756HAp5cTgrXa8uZXQstOTOZH9SyLEYg8tiTNcHrZNHEMcN
         wG7IrViqb7+vTUsB5yrGpRU9aETRcCXISfB1Wk6Bc6vwUusoMGF+x1E45s+QWZgzfTf8
         iOxHFOYbD/dWegJva6sjzDORPJ2MK8WL1bTlHuFuV0WK0mLy82L9rzzYUkXIQJ8YhcWQ
         /tt5dmQIbjJnSPKgPaNGuRQjut7BTdts2942JxZ3kCTVCke16kbgcKhqb5pjArXEF2Lf
         nqE9qkuSJ83qa3zlpT3wgvu2EnakAiBcweC76tsWUN8oOSHDZHZVYJvddY3fDLvjH170
         6pYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R+NE5eft6lQOeM9tjdOxCZpxxo+wIGpSQXIQSWUgqvAIk3vPx
	WX2kZ59uGS4iI4FnLokc+RA=
X-Google-Smtp-Source: ABdhPJwaoaaR5H9UpLCcb087JOXpm+lRK1Ewow0ePl3s5kLzFzHBUJ67/2ziu0o5esjhZV4HysuAwA==
X-Received: by 2002:a05:620a:2218:: with SMTP id m24mr11680296qkh.169.1613772914104;
        Fri, 19 Feb 2021 14:15:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d01:: with SMTP id g1ls5349904qke.6.gmail; Fri, 19 Feb
 2021 14:15:13 -0800 (PST)
X-Received: by 2002:a05:620a:110b:: with SMTP id o11mr11674779qkk.133.1613772913762;
        Fri, 19 Feb 2021 14:15:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613772913; cv=none;
        d=google.com; s=arc-20160816;
        b=XwsT2cwhSgfDYfN3iEkt4r12BdJZcD8yEunURL3sxuyKusK714EVzPfJ/nRsnNuPaQ
         AZdT8kwBm3tvwHktLbJBrIfDeLh/GTCt1DlI6sMDGN4gRPqk+xcbqigDzUew0111SiOJ
         lxtJhhig87etk6txVdjnSpjDbU7Y0Ixcsm2WGmAj/qEHcEkR7JV38MYnuBuT6jocMl/E
         JfvSB6aJKvUgJE+eElBpDbR0bSzt+z/c2oXWO5iwgax8hNQzIDYqlGM8+9wXWp84sw6g
         XOeLhHNabwkB1twBWfIQeiqA9jKM8E4Fao1gxdotUfdZN//vbZuhvTbT1jHKRzhbG/5/
         lHNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l3fHQW5S8vOkKjC/kgnaDz56MlV7mhkQi7D+wo977qc=;
        b=vmP14AdQVtlNbNcrT7S2sKp90KSkQHSWVm4g+UXhNt+FgBANlTinWOP5tG4QDD9Cjs
         Y5ATadgHKIHEp3M4luw/lW1u8fCrcB3XRUB05720Ep9WF0R48BfyqQUnU7OLuGr+3T+q
         25h+tEmJrLKixois3bRA9C6dXO6UIw/xuiOFHWNmrV73PtvhaQf4bb9QqYKteT5zYgPk
         Cg0TgkOKHVa9aT4/XvNdle6cfvvttaffO4FObVKJXkS5Sz7OISx1fFvYvc35z8IxQmjW
         XUVka5UAhk7LX77Fu4FUxlYPy+4rujKZ9bOu/MVck+d8CzmKVLRCH/3eUbXTpRgwTn4a
         N4iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sabOmR8u;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id p21si741800qkh.6.2021.02.19.14.15.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 14:15:13 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id m188so6938934yba.13
        for <clang-built-linux@googlegroups.com>; Fri, 19 Feb 2021 14:15:13 -0800 (PST)
X-Received: by 2002:a25:cdc5:: with SMTP id d188mr17600822ybf.422.1613772913535;
 Fri, 19 Feb 2021 14:15:13 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org> <CAKwvOdmNz7PEZGJW5=FaQiWcShYUBMeo--_JS6JU94bUN9HagQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmNz7PEZGJW5=FaQiWcShYUBMeo--_JS6JU94bUN9HagQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 19 Feb 2021 23:15:02 +0100
Message-ID: <CANiq72mZPUMipvF6+Dft2XgqqbSRTnAA32P2XM9373i_nq4UNg@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sabOmR8u;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Feb 19, 2021 at 10:45 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> That said, I'm fine disabling this warning; there's a separate error
> for redefining a typedef to a different underlying type.  That's
> what's useful IMO, this one really is not.
>
> This warning doesn't really provide any value to us in the kernel; I
> would guess the intent was to be helpful to code expected to be
> portable across different -std=*

It seems it would also be useful to sport unintended cases, e.g.:

  - Collisions on short identifiers (that by chance typedef to the same type).
  - Copy-pasting and forgetting to remove the original definition
(i.e. it should have be cut-pasting instead).
  - Double inclusion of headers (with missing or broken #ifdef guards).

Those may be providing value in the kernel. In particular, if we don't
see any warning at the moment, it means those cases are not happening
now anywhere, so we would be weakening things.

Having said that, I don't see the original patch, so perhaps I am
missing something.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mZPUMipvF6%2BDft2XgqqbSRTnAA32P2XM9373i_nq4UNg%40mail.gmail.com.

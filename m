Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJMBYGAQMGQEBM3G4JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D8117320177
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 23:50:13 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id p12sf3536307edw.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 14:50:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613775013; cv=pass;
        d=google.com; s=arc-20160816;
        b=MV4kp60LLB7oDrNW1BAS8favD2G5FCMvmq8aCUcCh1p7plHmy2nezB6ozJ1hAL4E0Y
         msz9CZrIBsI8uexkLryGE6HNAFrr27Z+1vt5TZFQK+PPnU+fov+ce12nDWS+eT5uRwWG
         TdXWmPWzAY8HYczY5IUkIJ/X37tG91whdiMTzysCgX+FETGcZwjKxUNGrZCutvkr5+zl
         ulvkX+YH3y6VqE+7aCge39KIoktv1j83ae9VKlO4wpBdwT8lAAmlIKJfs9y6PPaqqGNH
         WYsKcREjtcTPcmPxqdXuXBPPVf8IYeiEo3+uMDEe97qd/ykzOEMPpq2pfCVhnPVjKEgc
         CTKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WXQhBwEB6YiLE2Asjf2m/IhBEMJfezBHSit84Y8r/bE=;
        b=SmF/gRiFDYEL5s8TSHPFlOtU0uAwFeyYlJ4xtx8N+F6l2VHBrck9vG6RfvKkzpIiF8
         L1fxORMcs2V0yvmlrnG/Y67tmB+PWVuVTtUkESBhKHL1iUU/8saSsLixj6Nl5OCHt8Ar
         ZZ8DuAUCzbszkwiKsFliYzBHXAhqsOUjpibLWCE3TTVKTyaIv8hq0PkoQlzjh6wMZ59H
         t+tiGxs1+GjKss0jIYIZqRuN05xXvYzSEptnh1VuwuehnhBtXp5rJQlm6HYbwUYoD42t
         6RsO6b52xKvanWVcdoj76+VD6JXon4HwZ9sYM8uPm7Cx1ph4wxk4mvNkxCCIYrKJntG4
         3X4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HMLSUQGE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXQhBwEB6YiLE2Asjf2m/IhBEMJfezBHSit84Y8r/bE=;
        b=WQRFXUEUEpNG5X09alAzwHPgT1o5/0RXdBTzAJby7QD9N2OPnCLgUWjhDiLwcaKFl8
         oWS2vBoTmXfVC5f8RswWqdfreedqkBxtxy9MecQEbfj0TvuM87H98nIByzUakb86sksL
         3L17lLcnk2vXoXh96Ur+tiTdVB6VD2Mqh/au0gBfCTa3X+OwlmTDr3XftDApY/BsFuMG
         c7vsSrYBneu/Kb17kyMauelZVIXuhrym+zIIhc7UYMaBy7YuQ61owhp19WnSA+2Gmjxd
         vO4DNB+8DiJWRxk5qewLTlNIRIHsJt3INNxI1o79GJHNhUOcCXPFIBYPZE4dkJZBjD+c
         7fUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXQhBwEB6YiLE2Asjf2m/IhBEMJfezBHSit84Y8r/bE=;
        b=dHgylQemfotRV4J/M7QutVJMfIaUk7LcxdGy7Enq5Sv+tR3AgW1wIkNXWlB581j7Lq
         mczB+8Gbt3erR4iFQ7ZMRM8lbqmdTjxsfW9CRX6tR9tf7la1ynhYgjNc6NsEFr4XtPcF
         FN8/btC6lzSkjUI+oNm2smSbE5+QpCM0Wgd0H0G/uembxe5c8JD6+VPj3QHhg6wakn6W
         RvUSnj5CCJZZGhICHchPysiICsrAUZWa0qXSHiQYdl3v2J1fwq4Giwa9UClqeYJwHxep
         bmKGHuqcCJnWbDYkoqzbFH2cGU+9Sup2LK/74FzQcxe4YHck8cNHqVn3haEXQNZQn1C4
         D6oQ==
X-Gm-Message-State: AOAM533t2JQQrNs8MPio1jx2ACW0TYZHYLKzsXi9ZbaQbim8R/ZDyZ7g
	zTGqpefYD1niUaPX6JdLmB0=
X-Google-Smtp-Source: ABdhPJwyqn8FcBPUWTI/6xdo+g6KEnLobjDX/HY3mIctxo4Yd95nABN89p2OrZUhQZL0HHxm95hrNw==
X-Received: by 2002:a17:907:728b:: with SMTP id dt11mr10659982ejc.321.1613775013594;
        Fri, 19 Feb 2021 14:50:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:b24:: with SMTP id bo4ls1272055edb.1.gmail; Fri, 19
 Feb 2021 14:50:12 -0800 (PST)
X-Received: by 2002:a05:6402:14c9:: with SMTP id f9mr11757682edx.90.1613775012827;
        Fri, 19 Feb 2021 14:50:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613775012; cv=none;
        d=google.com; s=arc-20160816;
        b=fW7YkdRtNwa3jv/6POXhMm+s+NUr04rulG1Ilj3B4Ug7ObNq64GZY2axIXwsX4syJ3
         R16OV82o8MBrLnR7pcU8fZPumpKN3dyzEoaVD0Mm7t6rCRhCRYI3zExt2IAgjwEYNKW2
         IrhyPxYJQGcveqeyO3J+nR11tX2tDBS5T0yRWU2RC9CwsT9UyMQ/rcaaevkdF9ylbAIH
         tHuFvBFDkjNCxNHH/gSQSFJBkwNXQfHV6jg/ta3ZuuJBHMLTRd26V2yWdulQd6b4M0Od
         6m/XeUGGceP17AevtRaTK04kHSNxUS15L3V7GL1U9miWLFz8vowVtch8kFO6IYcBns0L
         pUUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oyson8qnHukkq90OL0eTHX8FyQF7k/QZ/j/OxDJwbX8=;
        b=inAyUiATc4mrQnFvaM4cIeuJ+fL873uwUTnQgjhg1lojBNBpeUQ0EOLsDzlEnAELHB
         f3822GucM4KNmJ2yntyEYu2AHX34tw3ZpqBJnM3g3Je/9zzVp/4rmddttVeSyqiGlnzW
         Vj4E1zJ57Q7v4Us57UXoUEt6uR3tg86YGTF7XnSAgZHJbZJ5FOHjZWei8jhK5NG2VRbp
         QRu/ZFb4aXhmyrsbDbOH9hCW0xc+Q7v4dkkUDAyTZUTOnyj8BAUVOXPkGCMbvQXofXnI
         vOoERLygFCxneWrcycowTNAeZ1CDmiscv5D+V/WjgzQM58inTJgxG63Qu0b7SFIGE6c4
         htiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HMLSUQGE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id ds3si48104ejc.1.2021.02.19.14.50.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 14:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id r23so30263421ljh.1
        for <clang-built-linux@googlegroups.com>; Fri, 19 Feb 2021 14:50:12 -0800 (PST)
X-Received: by 2002:a19:f11d:: with SMTP id p29mr2304784lfh.547.1613775009472;
 Fri, 19 Feb 2021 14:50:09 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org> <CAKwvOdmNz7PEZGJW5=FaQiWcShYUBMeo--_JS6JU94bUN9HagQ@mail.gmail.com>
 <CANiq72mZPUMipvF6+Dft2XgqqbSRTnAA32P2XM9373i_nq4UNg@mail.gmail.com>
In-Reply-To: <CANiq72mZPUMipvF6+Dft2XgqqbSRTnAA32P2XM9373i_nq4UNg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Feb 2021 14:49:58 -0800
Message-ID: <CAKwvOdmo+5oBGcLsboZDQo_qtT9uusXjD5OPtu8isRuUUZ+ysw@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HMLSUQGE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Feb 19, 2021 at 2:15 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, Feb 19, 2021 at 10:45 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > That said, I'm fine disabling this warning; there's a separate error
> > for redefining a typedef to a different underlying type.  That's
> > what's useful IMO, this one really is not.
> >
> > This warning doesn't really provide any value to us in the kernel; I
> > would guess the intent was to be helpful to code expected to be
> > portable across different -std=*
>
> It seems it would also be useful to sport unintended cases, e.g.:
>
>   - Collisions on short identifiers (that by chance typedef to the same type).
>   - Copy-pasting and forgetting to remove the original definition
> (i.e. it should have be cut-pasting instead).
>   - Double inclusion of headers (with missing or broken #ifdef guards).

(There is a separate warning flag for broken header guards,
-Wheader-guard:
https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aissue+label%3A-Wheader-guard+is%3Aclosed)

What happens should the kernel move to gnu11, as discussed once GCC
5.1+ becomes the minimum supported version for all arches?
https://lore.kernel.org/lkml/CAHk-=whnKkj5CSbj-uG_MVVUsPZ6ppd_MFhZf_kpXDkh2MAVRA@mail.gmail.com/

Then the warning will not fire, since it's only really meant to help C
code be portable between -std=c11.

(Another change to clang could be to move this flag into the
-Wpedantic group, which is only really meant for from guarding against
the use of non-ISO C functionality, but that still would require
disabling the warning for older but supported versions of clang).

>
> Those may be providing value in the kernel. In particular, if we don't
> see any warning at the moment, it means those cases are not happening
> now anywhere, so we would be weakening things.
>
> Having said that, I don't see the original patch, so perhaps I am
> missing something.

https://lore.kernel.org/linux-mm/20210215204909.3824509-1-willy@infradead.org/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmo%2B5oBGcLsboZDQo_qtT9uusXjD5OPtu8isRuUUZ%2Bysw%40mail.gmail.com.

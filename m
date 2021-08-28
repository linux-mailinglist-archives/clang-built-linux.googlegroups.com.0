Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBTHXVKEQMGQERDAXGHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B493FA7F1
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 00:42:20 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id r4-20020a1c4404000000b002e728beb9fbsf7887551wma.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 15:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630190540; cv=pass;
        d=google.com; s=arc-20160816;
        b=kB1dhSTNWzxl1cjR7Q17QbJwJ6hOt90C2W1d9gpWtBwScWS4dRGjm7vWwFTFpAD/bH
         HsWiWgVHDTCkbDxHd25QA8RltPH2O204T0p/JMLmj6+pZu3KR2OWwVa/oIieMM5CDQwG
         K+maifHfB/3bu27jem1CyAVuRAqk6mFuPiNd2KCS9Yu1JCY/caF2hAM8MHSla+yB1uCC
         bJG+gSldHuTIDwNYq+23shcLwkf+4Gs+rbJ4EVlGCuPYQPfsww4CXrsC1SB4aJkOC3pF
         q6D7jYaBDaDECgKOtn8mPuN/rGHKSVzSPngsFHPqqL3niWNar9do5BEh/FINLl6MHEZu
         ga3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zYmCgSQ35BsblT12Z8skO3a1HULt6a8Br9TZ6jkAfUc=;
        b=Kzicbx5/9gtKz2t+QnjPKJYyz7BWyYqyhKvUHV6ZxunMPcQ7Iq4swLb7ThuPp00RfD
         7LJZIDmhiq6BsG+Lmy83fmMdmirzakAHzxK7Jk7Og7qozlwgNQYK0v3XwbANgsGQ9EmN
         MBu8wugeLO3syDVkWOwV/mvcdSN87pI1WKu6wStW4NQz4ZhKmm03gR2mqWYuUSjaKCzj
         6dpN5m1Nxl/z/C+8rOYh14jKdD2xTdLQ8tAYBHoi123EGWziZjwb0AMjOf8Y4XlZyFT9
         LuH6eidhopcJaXF27RyphL0gXFsizLjC4M691bQbxvxIX5028Fy/qUnz4ixL3BMpId4P
         eAZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=e2yUHNCL;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zYmCgSQ35BsblT12Z8skO3a1HULt6a8Br9TZ6jkAfUc=;
        b=TkrqOwD4x4KZDsADfJDWC7U0s5j2iKNal+l2Ekdbl4q2IV1noO/G4uDPEJFCHjvwGZ
         YoMaVtWDZ27adBiR4pXz2O6zNIPeNDotiOnOu3iQuqMxlIuAkh6j8Ws6XahFOPvsOKPu
         mU8ukaTTVAmiIMmH61bOP3WaFK+SFTDNT2BDordu9VlfWaySbvr3n0CV4MO9u/btkjir
         htWf43S2aC1e3w92BhTlVYqfin6mpYay8nIJWFzCg6fiFn5kGIvbvs/GDeObM51OethL
         NWWVJivapr5/uN5rddalTo8KIKdh4ik1/ELiZYodYgK8vjOKMMbdsAy810xW9hUyqttp
         jDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zYmCgSQ35BsblT12Z8skO3a1HULt6a8Br9TZ6jkAfUc=;
        b=OFhcnACZnlSpQv1dE6KuvTzFl+1Cpwp4M5dpvKp/5EdK+4dln3B2NehtIuIhqI3kPs
         myLjApLJSnR1XqCdxNoai60uNPXsUWWlZN5lIbUJ1V3GyC8a5KCodYixoSo6GFourlLL
         AzN4IfYrjN44BPx8H/Pa7sfIdM0vIfxJWznv3sv/vpd4DhjIouZPcUs4/BxyK9ARYfio
         UzKJHvzGwHEUw3xK5oM6O9HW3qzpiFPtsObM+Nvsy8PNG+Yj294zlKsFq5bb0CM2Pnuk
         rIqcIPQLrJiC9AS4zrsx7mJbiliqKJj0V4KXtH4uNgZBYqcF9KIKIkaCmdUGMH+Emk2n
         5+XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JzODQaPrixpZnBC0VLq7ghKHos56f9gaWXeWrbzbD5HAvw3sF
	MzsWy37yqQlu7VCoJ53S80o=
X-Google-Smtp-Source: ABdhPJxgY0MLbX3EnAfel/P0haMWQXVgxLipaDAhgCj4x8oCy1iJjvRPzpVeqx2pToyKj5u3LP8vLQ==
X-Received: by 2002:a7b:c255:: with SMTP id b21mr15075730wmj.44.1630190540610;
        Sat, 28 Aug 2021 15:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6251:: with SMTP id m17ls5766622wrv.1.gmail; Sat, 28 Aug
 2021 15:42:19 -0700 (PDT)
X-Received: by 2002:a5d:47cd:: with SMTP id o13mr18235680wrc.246.1630190539658;
        Sat, 28 Aug 2021 15:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630190539; cv=none;
        d=google.com; s=arc-20160816;
        b=ajGystH2fbnJkmPERHeg7CLhCGFzmQKSVJsVGr4p2LlnO4PbyUCtUyOSKr2yW7NHlr
         JC9/T90SojDnZ2Da0J4/yX4WZhYBV7XmdWlbWYcFuk0hPZm3a7qaC6yHB1UMLimCojrx
         GRuKiN6e6ELbs/KhAKStXui0siJ3VeHKi7ndKwIzcu1aMvj8US24MjXdmSBDuPqMLz2g
         gHCFAepcP1chIYaEfk/QvJ1bPo5pxYPQvlbwmbnXsaxum6mHsV/ln21PXLV3whgSDbQw
         h408/IFhaJeBPVSH7e0cwu8LldIoTTwWASwhXKzzNtYRTDuR7y4rqbEyBGVTHl1aCUd6
         29Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tATFryy8IbVQ7zFRsdwauFI696FYi9bPAk8OEvLPFAQ=;
        b=tewndXixWerpvxrTmISKoQwiLaJK+pLx3eGakPKkdoBd8bMTBaurOAZSkMExD8qfqX
         pCXh1+jkpzBHsYFkDw2gsyz7GJ8ZDc5K9AcAucqWw1O3gtnzB5PXmDk3hoWwPcELUm2x
         N/YqjmQlc+RSNaYwrYqCsPxOQeA0Js1Qp2q5mvV/4vOpIxeKsipiDCx9N8k+MUheXFXJ
         SFq6y5mkQgXMw7MFHN37Vkg8eHgmxaPtvqLnfkK7okHEO7zCJdOeLtWsbLfQ7x1v4Rbc
         8KjXvACRvlPXvsHB3n027J6G8A19Vu+eXaoLLYhzNUE7IKpJMno6ehWGXFWJ61l92K0l
         w85g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=e2yUHNCL;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id i4si553913wrc.3.2021.08.28.15.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 15:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id j4so22566446lfg.9
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 15:42:19 -0700 (PDT)
X-Received: by 2002:ac2:5d27:: with SMTP id i7mr11850594lfb.488.1630190538782;
        Sat, 28 Aug 2021 15:42:18 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id a9sm1211337ljq.51.2021.08.28.15.42.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 15:42:17 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id y6so18484270lje.2
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 15:42:17 -0700 (PDT)
X-Received: by 2002:a05:651c:1144:: with SMTP id h4mr13508655ljo.48.1630190537443;
 Sat, 28 Aug 2021 15:42:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
 <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 28 Aug 2021 15:42:01 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjVuxnqQXSP53zBtTN-o8k4tcvFtVi=AkYt+KAuc5KNOg@mail.gmail.com>
Message-ID: <CAHk-=wjVuxnqQXSP53zBtTN-o8k4tcvFtVi=AkYt+KAuc5KNOg@mail.gmail.com>
Subject: Re: Nasty clang loop unrolling..
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	craig.topper@sifive.com, Philip Reames <philip@switchbackcompilers.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=e2yUHNCL;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Aug 28, 2021 at 1:29 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> > So it turns out that s390 had a bug due to its own private 'strncpy()'
> > being broken and not doing the insane thing that strncpy() is defined
> > to do.
>
> Like continuing to zero the rest of the buffer up to n?

Right.

> > This is the whole function with #pragma nounroll (ie "sane"):
> > [ .. snip snip .. ]
> >
> > and honestly, that's perfectly fine. It's very much what the code
> > does. It's 44 bytes, it fits in one cacheline, it's not horrible. It's
> > not what I would have done by hand, and clang seems a bit too eager to
> > move the loop end test to the top of the loop, but whatever. I see
> > nothing that makes me go "that's horrible".
>
> For the loop test, I know that clang will "rotate" loops in an attempt
> to have one canonical loop form.

Yeah, I've seen it before. I think it makes the end result harder to
read and less intuitive, and it seems to generate more silly
branch-arounds, but I doubt that odd loop rotation behavior matters
much.

> > Now, admittedly it's not particularly *smart* either - you could turn
> > the conditional "branch over a single constant add" into a computed
> > add instead

Note that the loop rotation and the lack of turning a conditional into
a computed add are just small details - suggestions on how the code
generation could _actually_ have been improved, instead of how clang
instead actively made it worse.

And note how this function *really* doesn't matter from a performance
standpoint on its own. So again, the "arithmetic vs conditional" is
just a comment on the basic code generation, but the worry is just
that the kernel really doesn't want a compiler that blows up functions
by this kind of big factor for no gain.

Because the real question is how to turn off the bad behavior:

> > What clang actually generates bears very little resemblance to either
> > the above simple and short, or the "clever and one conditional branch
> > shorter" version.
> >
> > What clang actually generates is this horror:

because while it doesn't matter if it were just this one case, I
suspect that one case is just the one I happened to look at.

Because I can find "-fno-unroll-loops" as an option, and it does fix
the problem.

But I am surprised that clang did this bogus thing at -O2, and I get
the feeling that there is some actual problem going on.

You say:

> For clang, we will do limited unrolling at -O2, and very aggressive
> unrolling at -O3; if a loop can be fully unrolled, we're likely to do
> so at -O3, with a much smaller or more conservative unroll at -O2.

so clearly there are different heuristics for unrolling than just
"don't unroll at all". And I wouldn't want to disable the *sane* kind
of unrolling of small constant loop counts.

I tried compiling the whole kernel with -fno-unroll-loops, and I do
see a number of functions that change in size quite noticeably.

I may have done something wrong, but "do_check" (the bpf verifier)
went from 45002 bytes to 33632 bytes when I asked clang not to unroll
loops.

A few functions grew, so there may be some other code generation issue
going on (ie maybe it then inlines differently too).

My comparison was truly stupid:

  #generate the 'size' file
   objdump -j .text --syms ~/vmlinux |
       grep '^fff' | cut -c32- |
       while read i name; do echo $name $((0x0$i)); done > size

   # then, using 'size' and 'newsize' files, show
   # the function size differences
   join size newsize | while read name old new;
         do echo $((new-old)) $name; done | sort -n | less -S

so it's not like I did any real analysis. I checked a few surprising
cases, and to pick another example, "__mmdrop()" has this code:

        for (i = 0; i < NR_MM_COUNTERS; i++) {
                long x = atomic_long_read(&mm->rss_stat.count[i]);

                if (unlikely(x))
                        pr_alert("BUG: Bad rss-counter state mm:%p
type:%s val:%ld\n",
                                 mm, resident_page_types[i], x);
        }

and clang will just duplicate the code NR_MM_COUNTERS (four) times.
Which is what I'd _ask_ for, if the loop body was just one or two
instructions, but when it's a debug function with a function call...

So it does look like loop unrolling can make a noticeable size
difference, and I suspect it's all basically a complete waste.

How bad is -fno-unroll-loops? Is there some subtler way to avoid the
bad cases? I can find the option when I google for it, but nothing
actually useful about when it's enabled, or what the different
optimization level heuristics are.

Is there some way to do it only for the loop unrolling for the truly
obvious "this doesn't actually expand the code, because the loop body
is pretty much the same size as the conditional"

         Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjVuxnqQXSP53zBtTN-o8k4tcvFtVi%3DAkYt%2BKAuc5KNOg%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYVN7XUQKGQEYMJTNJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id B451E799ED
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:28:19 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id n4sf33304304plp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:28:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564432098; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSzv3lvIwT+Y5l/lUX8fIYqC2a8C3J09AL9O49Oz1RiMRJpqxRmYSrXM68gE3uVSnu
         tHe49TxjtwtnAQHAJK1Qc4XGgb/hiv88Wu5acX70wrNbtMV6umZglfv0wK3LlquOu5XO
         fSkNhEBDlz5KPYwK6x05DHMd1Hdt9MVm6WyagPM3KF89I1Vti+dowPuR5fbv9+p2/P8W
         ql8lIqZ3xfacNGRVWOfOeohOSZe8IDulbaSvBSzJdjzSp5qekSun/71s+fd+LqsHaXtM
         Te1RD2OLgH+qvioIPzA5k7KOLz5Xrfp+bXLXATNhpKFZBz5bqjm0uFTl7tsjiZ+3juhy
         pQ3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=B6LiD4S6wzoag9lPhE0FYyOxID3g8Cj9O6nj47i0Z5I=;
        b=hwOsSwpQdjsr4b8evHDOtmUs1dArUDSwmb66nXn1K0f4uHwaVVAS/LDnJIw7CY9KO7
         nnzE4gZWjMmyKI5V+YjClF5CMEVtDQF0JnUDc0d1gDTIHfS2m/+QW2dih7H/fEIUAwo0
         Dhudh/sDKXUY6tlgIIQ6RYiaoN8bmXAfqXpVBcv4wo1NosX+Qz/0DiDsjqEamCs9WtdE
         jt0PYunQknzz3PDPQVx+IwGgPG1NpJbg8EqTvwS3Q1XxM+DQBgq+xb1ZU02J66RTWIXL
         sQKRFfTksuBrsNKWoI2/mRqnqGkWwW0zwrk06P7lZ/aFMnBiwVO6MPvQkiu3IKcqRJSy
         LLQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WnPAv7gR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B6LiD4S6wzoag9lPhE0FYyOxID3g8Cj9O6nj47i0Z5I=;
        b=gelUK5qORmIq2NKJcx2G0oHzhlLsyi/pBaQ28CVbegzpgSn1nHOhShlkbQsgEfTlFO
         Tqj97yUAsAOJ7iE4eLFDXV6UVNHuO8swA6qgtdb1S+GNvMEokBQLisz8KeaFlAzIzkRe
         laMcaQAfXMbHJaWmEvL9AfDPxZ08GBkR/IT6nrS2aZJ/TgPdDRW0aOQ/Fvu75PWWY6rO
         CZRWZg2pqL+oRsnhd1mgXuT2ad5iEP7DPnbGaSSGpqYdBpkNCsX+olDmuM9E+kx9hZdv
         RvxkoVtU6v9udx+eVHJlcZWSUse906I0voAvfkWJr5//78qdNAyNgVnbj+e3mJfvVC4m
         wxDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B6LiD4S6wzoag9lPhE0FYyOxID3g8Cj9O6nj47i0Z5I=;
        b=AXR+o11gJgSvQVHu2BOqMiIsbc6bDkZ3llNKHHTANBdCuNxffGgc9K/DpakH1nziBj
         94y/ExR21H0iilkkg3QgyJzKcVBsWEGISbFQR0qppvQ8x4srfUPnytoYoxRZPTYVafIN
         ww3C7PY96OxDi8mgFtJvKv0nxJUs495mQcqKVTJL4WOLhdvc3r2xe7DmqccXcsCBvCkR
         aF1SsK2SxzU6Hgo2WXzcMXxzvhUwBYEdtHp9SRn/SPh5kJWvmyJUCuiw0E6osT6EeHqb
         a34hYzETpfPgJfOl3ZxUAm7j6DbwuFPq/4cc2I4DeyrMhO1lawMZU8ZHHkuLpswRQGBE
         zNDg==
X-Gm-Message-State: APjAAAXmpYZYT/nLlsqyjTHhYe7z4OFEXulw93pByFRvPaeobYSbGKtx
	Ue8whkPU6sd1lBr7SoOSM/M=
X-Google-Smtp-Source: APXvYqx9qOP8WaPpz6HqtOId6iCmwzI7sFrmPI0en1FR71uNgI6EMi5W4sumWXICuWxm58IP4zh9bA==
X-Received: by 2002:a17:902:7288:: with SMTP id d8mr28059312pll.133.1564432098441;
        Mon, 29 Jul 2019 13:28:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea10:: with SMTP id t16ls8348726pfh.5.gmail; Mon, 29 Jul
 2019 13:28:18 -0700 (PDT)
X-Received: by 2002:a63:fe52:: with SMTP id x18mr105251331pgj.344.1564432098082;
        Mon, 29 Jul 2019 13:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564432098; cv=none;
        d=google.com; s=arc-20160816;
        b=Xc/uB5Jnb7tZDa3S+Wah4U0xnuRE4nb2DLIaOfy4qsGYfWTbZL+Zi30+uHMCf/kEuN
         kwxPzD7sY8rRuG1Ny271VPWB14KsGyGeuHXtzlc3pCVZmfoiT7L7jcg+qxNjQhFBkvGa
         v5WVMpZDr1Q+EAvOL6Pzbt5fjkq9hNHSOKKJC8dVmBVi5Q8KIQf9gTc1twbnkLnp10nL
         ZnC+mS4d3wbpCBds06XG4PTthF/MYxDDE09CeY8WaavJsjU2qrVBrLxPxassww2wHmmz
         I25Zksq7BdOQpqV7EyZ12V1b6JWxk7IWrSCpWGauRW8R7VpudHpBuNFV6DDFfWFngyYc
         vPYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y1z+oU927gvd6PfHaT54CHvo6q52oyAkltdUcawl8mU=;
        b=AJCTE37x7rXm0UbsQi1QY/iKHl+77PM3n4PrJQGkv9otjrMOsQjnjPtZPmeDvx0r77
         84+v/KvgHEFK9cAceaFS0kWuPLFVwSD6/6pGQflrD8D1ayFkor9nwTttAHLejlxZi+Gq
         PpenIJ1/4KrPd282X5NmojwuBa+krDrmrxAatdIz8ITBlox8ERAc2+IThC45epiTrEaB
         zfgRbvjgV8FJPE66eF9NZfMcaDW+MIQJ1Jz3GJHoMEpClNRcNpZApM3nbyg0FUWLVX3q
         m+G2COXxLnHaDKt3cMKuy1jHRu6ymYR69nOTWHk50UOVpCbb34IB7k9ybjaUokUeWfKM
         pv7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WnPAv7gR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b22si2344201plz.1.2019.07.29.13.28.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id c3so5454473pfa.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:28:18 -0700 (PDT)
X-Received: by 2002:a62:2c8e:: with SMTP id s136mr38828948pfs.3.1564432097105;
 Mon, 29 Jul 2019 13:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper>
 <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org>
 <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper>
 <20190721180150.GN20882@gate.crashing.org> <20190722024140.GA55142@archlinux-threadripper>
 <20190722061940.GZ20882@gate.crashing.org> <CAKwvOd=KRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg@mail.gmail.com>
 <20190722175817.GE20882@gate.crashing.org> <CAKwvOdkzBt=tTk+26dp+QsCStMUJ0_v5Mpjy2TOXPw1mu71itg@mail.gmail.com>
In-Reply-To: <CAKwvOdkzBt=tTk+26dp+QsCStMUJ0_v5Mpjy2TOXPw1mu71itg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 13:28:04 -0700
Message-ID: <CAKwvOd=knc1i+RBzJ2YTVKn3W3EzCeEnCfy3983WE6L5-V4x8A@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, James Y Knight <jyknight@google.com>, 
	Joel Stanley <joel@jms.id.au>, dja@axtens.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WnPAv7gR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Jul 25, 2019 at 2:30 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jul 22, 2019 at 10:58 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > On Mon, Jul 22, 2019 at 10:21:07AM -0700, Nick Desaulniers wrote:
> > > On Sun, Jul 21, 2019 at 11:19 PM Segher Boessenkool
> > > <segher@kernel.crashing.org> wrote:
> > > > On Sun, Jul 21, 2019 at 07:41:40PM -0700, Nathan Chancellor wrote:
> > > > > On Sun, Jul 21, 2019 at 01:01:50PM -0500, Segher Boessenkool wrote:
> > > > > > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> > > > > > > 0000017c clear_user_page:
> > > > > > >      17c: 94 21 ff f0                     stwu 1, -16(1)
> > > > > > >      180: 38 80 00 80                     li 4, 128
> > > > > > >      184: 38 63 ff e0                     addi 3, 3, -32
> > > > > > >      188: 7c 89 03 a6                     mtctr 4
> > > > > > >      18c: 38 81 00 0f                     addi 4, 1, 15
> > > > > > >      190: 8c c3 00 20                     lbzu 6, 32(3)
> > > > > > >      194: 98 c1 00 0f                     stb 6, 15(1)
> > > > > > >      198: 7c 00 27 ec                     dcbz 0, 4
> > > > > > >      19c: 42 00 ff f4                     bdnz .+65524
> > > > > >
> > > > > > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > > > > > work.  It's copying a byte from each target cache line to the stack,
> > > > > > and then does clears the cache line containing that byte on the stack.
> > > > > >
> > > > > > I *guess* this is about "Z" and not about "%y", but you'll have to ask
> > > > > > the clang people.
> > > > > >
> > > > > > Or it may be that they do not treat inline asm operands as lvalues
> > > > > > properly?  That rings some bells.  Yeah that looks like it.
> > > >
> > > > The code is
> > > >   __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
> > > >
> > > > so yeah it looks like clang took that  *(u8 *)addr  as rvalue, and
> > > > stored that in stack, and then used *that* as memory.
> > >
> > > What's the %y modifier supposed to mean here?
> >
> > It prints a memory address for an indexed operand.
> >
> > If you write just "%0" it prints addresses that are a single register
> > as "0(r3)" instead of "0,r3".  Some instructions do not allow offset
> > form.
> >
> > > addr is in the list of
> > > inputs, so what's wrong with using it as an rvalue?
> >
> > It seems to use *(u8 *)addr as rvalue.  Asm operands are lvalues.  It
> > matters a lot for memory operands.
>
> Hmm...not sure that's specified behavior.  Anyways, I've filed:
> https://bugs.llvm.org/show_bug.cgi?id=42762
> to see if folks more familiar with LLVM's ppc backend have some more thoughts.
>
> I recommend considering reverting commit 6c5875843b87 ("powerpc:
> slightly improve cache helpers") until the issue is resolved in clang,
> otherwise I'll probably just turn off our CI builds of PPC32 for the
> time being.

Started a new thread: https://lkml.org/lkml/2019/7/29/1483
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dknc1i%2BRBzJ2YTVKn3W3EzCeEnCfy3983WE6L5-V4x8A%40mail.gmail.com.

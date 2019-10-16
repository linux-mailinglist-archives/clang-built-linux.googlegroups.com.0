Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRGET3WQKGQE2WNHZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 89745DA1E7
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:05:41 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 63sf342776ybv.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:05:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571267140; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJ4HcaLdTryztDS21/sUuCNfyUvezg04MWdG/xE6zsTSOwFGXnZswSzJiLod0GoqYr
         BiersrSCVasjzksGViQWdHn0sPeEoIBDKHiubYFz+GxXVURynif+CSGvMeNkUIrQGnLF
         uOe/y2NOl+HbJgqiwuj3BxS1R6XS9FG7aVgaShMMSeK7loUzDZSCsMDrFY28PrjTKQHs
         tm4JVYB1yK29fXN4vSTq3c8+1rLdDP2r3BJxROrDpl1tELItiDPWQFzzub0u92BxVurF
         tLYXnOX3btToXhMkzsedQeinxeuQmU6crTeMcqMcRq9zc6N/biGlTsWTzti03B7lZp9Q
         lS+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eUxqurkM2LBtg+oL1rc2exsZFfTnly7u1/2DQCLA8+E=;
        b=CeTZ0fIUdtbKINvLBDyVsIvRq1dovsmXnR7VyS9fYekuWODrWQTYmq4O7vG87u7rkJ
         DJBvqHy6e35iqEj36nPzeAJ8kV6kjBx+Djdbx+sZpLBtYhpD4Fa9j7D8qe8RLIWf9jLO
         6runQhNnQvoC64DGnTskJ/LkKiEcxW9aN6okumE0aFSYvymuaFBDMt6M89k8iIr4QyXH
         4p4hNN2HkkG46uo0Ivccti3BAAskbZkkSafoeayydun55pWaXCMkVvoLCxRO1lRf2dTU
         waveBDE8rgEgenpku4o9Yw1bj5HWogdIEjf8RXneUet4V49cMAJNxiVymOovRVz2JpgG
         rYLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j5ZVArQN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eUxqurkM2LBtg+oL1rc2exsZFfTnly7u1/2DQCLA8+E=;
        b=R2C5/ge9j0zuLfm4WUsXY7wcLPJkzzJUCSNVGKX2xy0jwEb107aKi1qTlYiho0IbeN
         XXu6RdNfQQrD3zaKIgQG0HYkjQBA+kh8+awYEVAgLLnyJfYYDXo0QlJdquFSCmpcEdvP
         nY0z8/WqUeg5MQV0h7exMNNKOxUkPcCayfP3FQBFyn59pyHQdq0X4v6XHg8UHIXcT7Z5
         Jm8fS4PzYViHsB5zwRUNiV7WhNIqo/Z4+JPHvrLr3GvJPgSxDivqrXCmP4OCT/4EJHeu
         TIq4R3PcyUzNAX5N64y4c7eo01gFmAsLyaeWqijShYOdDKXgvmXsmDF5W+W6z9dzeU8X
         BDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eUxqurkM2LBtg+oL1rc2exsZFfTnly7u1/2DQCLA8+E=;
        b=IO4VZI4derxKpknOxP3rS0VCHk2a4NRS3orlNJqW7o3q0LSmzA4vRsLYW212Clh4Pz
         7WPhtiYRsMqoIYJvx+9y0KO0Iimz5I5BeJTho6IRHwe/V9WA62YWj1BgqH1s6H3YuQCx
         x5GsqTNeGTpGkfWb754W3yxNbDMZWPZjcTJyQU8axqkO6zGvcmRu999bF0XGqdaxyfqL
         AT1JAwgJ15oiQM7ePzVutYUa0HnH9yO0FdVM4q76eJixqc+gou+rMf/qfrIaH4qVCNgf
         vXlYxeWEppEmelSsQNvn3w8KzX6L0ncFHWPP388UFXJkvazlC0JdIEQDhsDuWDfHJbZu
         dL8g==
X-Gm-Message-State: APjAAAXHNrsznnsb9JdoYBnuOPIb4f93N3OXBXv3Z38TxgRuPUB3oqnC
	v1nv3o8jTIq+3NLYlUOGitc=
X-Google-Smtp-Source: APXvYqxEV9q46pz85yQOrdPgDhqSWxGfuhFy1szCGlrjJwRYuEptYcRqyR1A4TjoKnlw4f2Kd+1Y9A==
X-Received: by 2002:a81:bd05:: with SMTP id b5mr610745ywi.243.1571267140554;
        Wed, 16 Oct 2019 16:05:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:c442:: with SMTP id s2ls65824ywj.9.gmail; Wed, 16 Oct
 2019 16:05:40 -0700 (PDT)
X-Received: by 2002:a81:1701:: with SMTP id 1mr604340ywx.267.1571267140225;
        Wed, 16 Oct 2019 16:05:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571267140; cv=none;
        d=google.com; s=arc-20160816;
        b=brVReBmU4kgvCzvBJEiQcAtpowSz8F7gNHrMhBzeum2L7GBBrfr5Hop1Zqb+vSkwEF
         AZtaoa4SDKDBfOx+eV/c/9QDvaR+Hh+pyB/nTLasyZ05D7ODowgow32bVrHcm0IIAwFd
         4L5p5KMOZ5TojUDDC28VGCiMiHuLFiCqMBSdjhOcb2J6D79GXVqRJTarYx6wcta4s/jX
         rQT93VXkmPPlV7+d/dQhRzdgeyU8vExu0SQpl6VAE97Ja0n+8ovwUu+jTv2IV5Sn9svR
         NBdvH/W1RSLCmrI3VDk/paMdUQNBiaQ1ynIhSVoDqIwWoyX1C2qzA+YsUM35KnmoWCbD
         bqmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dvr2k2cesqfqWN6XGDafc/ENwBi4+yjAQQmmpnGGw1M=;
        b=gziCC82TfjxiuzOtO6MNMvDjwqJsYBUj7ruDWkpLCs/IZHLgI3Z7S2Y2cTv/6X0h6n
         fPaj/eJAr6XunXzZV8UNePGf9EcyieW36xBtiKGKXs6P80qIQstT98HwvKuZU1IvJI77
         hgs5jVYyY30Gj1aj96SclhwNGN0+L8YXrNtCCFcJUnExmtiGenGGaUmFUiKqo3xDFJTF
         U5+Y1D27in6q+L9ma3LXTqGyLTHFZkOnC6dGdT7rATwfBFEmCNoyjDQRAY1sevzJ+QY/
         Ir6IFmXi4IEuFKWhq9BUg1fByHsiAATUVynVNGOgl+xOOcmpjobe2F9zha+KNy6bDLNl
         3RoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j5ZVArQN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id g203si18995ywc.5.2019.10.16.16.05.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:05:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p30so138314pgl.2
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:05:40 -0700 (PDT)
X-Received: by 2002:a63:5448:: with SMTP id e8mr679797pgm.10.1571267138767;
 Wed, 16 Oct 2019 16:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
 <20191015202636.GA1671072@rani> <CAKwvOd=yGXMwdoxKCD2gcEgevozf41jVmqCkW7CU=Xvd7mqtjw@mail.gmail.com>
 <20191016185500.GA2674383@rani>
In-Reply-To: <20191016185500.GA2674383@rani>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Oct 2019 16:05:27 -0700
Message-ID: <CAKwvOdkXDyqMA-mOz_PE9x0V0ePtA9uFcJS+1ibpBqde6MXX4g@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>, 
	"Wentland, Harry" <Harry.Wentland@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>, 
	"yshuiv7@gmail.com" <yshuiv7@gmail.com>, "andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	"S, Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j5ZVArQN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Oct 16, 2019 at 11:55 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Oct 15, 2019 at 06:51:26PM -0700, Nick Desaulniers wrote:
> > On Tue, Oct 15, 2019 at 1:26 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Oct 15, 2019 at 11:05:56AM -0700, Nick Desaulniers wrote:
> > > > Hmmm...I would have liked to remove it outright, as it is an ABI
> > > > mismatch that is likely to result in instability and non-fun-to-debug
> > > > runtime issues in the future.  I suspect my patch does work for GCC
> > > > 7.1+.  The question is: Do we want to either:
> > > > 1. mark AMDGPU broken for GCC < 7.1, or
> > > > 2. continue supporting it via stack alignment mismatch?
> > > >
> > > > 2 is brittle, and may break at any point in the future, but if it's
> > > > working for someone it does make me feel bad to outright disable it.
> > > > What I'd image 2 looks like is (psuedo code in a Makefile):
> > > >
> > > > if CC_IS_GCC && GCC_VERSION < 7.1:
> > > >   set stack alignment to 16B and hope for the best
> > > >
> > > > So my diff would be amended to keep the stack alignment flags, but
> > > > only to support GCC < 7.1.  And that assumes my change compiles with
> > > > GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> > > > feel even more confident if someone with hardware to test on and GCC
> > > > 7.1+ could boot test).
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> > >
> > > If we do keep it, would adding -mstackrealign make it more robust?
> > > That's simple and will only add the alignment to functions that require
> > > 16-byte alignment (at least on gcc).
> >
> > I think there's also `-mincoming-stack-boundary=`.
> > https://github.com/ClangBuiltLinux/linux/issues/735#issuecomment-540038017
>
> Yes, but -mstackrealign looks like it's supported by clang as well.

Good to know, but I want less duct tape, not more.

> >
> > >
> > > Alternative is to use
> > > __attribute__((force_align_arg_pointer)) on functions that might be
> > > called from 8-byte-aligned code.
> >
> > Which is hard to automate and easy to forget.  Likely a large diff to fix today.
>
> Right, this is a no-go, esp to just fix old compilers.
> >
> > >
> > > It looks like -mstackrealign should work from gcc 5.3 onwards.
> >
> > The kernel would generally like to support GCC 4.9+.
> >
> > There's plenty of different ways to keep layering on duct tape and
> > bailing wire to support differing ABIs, but that's just adding
> > technical debt that will have to be repaid one day.  That's why the
> > cleanest solution IMO is mark the driver broken for old toolchains,
> > and use a code-base-consistent stack alignment.  Bending over
> > backwards to support old toolchains means accepting stack alignment
> > mismatches, which is in the "unspecified behavior" ring of the
> > "undefined behavior" Venn diagram.  I have the same opinion on relying
> > on explicitly undefined behavior.
> >
> > I'll send patches for fixing up Clang, but please consider my strong
> > advice to generally avoid stack alignment mismatches, regardless of
> > compiler.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> What I suggested was in reference to your proposal for dropping the
> -mpreferred-stack-boundary=4 for modern compilers, but keeping it for
> <7.1. -mstackrealign would at least let 5.3 onwards be less likely to
> break (and it doesn't error before then, I think it just doesn't
> actually do anything, so no worse than now at least).
>
> Simply dropping support for <7.1 would be cleanest, yes, but it sounds
> like people don't want to go that far.

That's fair.  I've included your suggestions in the commit message of
02/03 of a series I just sent but forgot to in reply to this thread:
https://lkml.org/lkml/2019/10/16/1700

Also, I do appreciate the suggestions and understand the value of brainstorming.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXDyqMA-mOz_PE9x0V0ePtA9uFcJS%2B1ibpBqde6MXX4g%40mail.gmail.com.

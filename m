Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBSNU6H3QKGQEHLNIKIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8A210868
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 11:41:30 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id n129sf4073026vkn.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 02:41:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593596489; cv=pass;
        d=google.com; s=arc-20160816;
        b=ff+O8OM1ukjDERV4AKLKg0+9J/Uec/kBJ6qT/kxiWcguqpD8zHi1ZrooWPVRpCmZJA
         VDHLn1qMLf1IG17qJTTZUhiOxXgN2WP58TKuascB83jNbdRus2nVSLWP+oQc9ZX/yPrZ
         TdMMtHPhAzbMpeFpuqjN4EgTwhvaom+5gTrfJnc4BhXRlZm3yUESP5/8XlMZkCq2pSZ7
         KL2HlMKOjfzDAxmPNc4ebzI2ffQn9mSfWoNLvcsyK8YhZrjnK4elJsuDE6/0jrKl2DKt
         4tfnLHFfmJsfIUaoHZHcWeeUfNHD0g7QVcRdqPx7DLk04fTEEVSz05K/FCiXJVrr53Uo
         +fUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+xNeYQGfT1m+t+zOOsElMPgluG9paoEj2c+2Q5rstUU=;
        b=wfQzN5J9j9DQlWPABhWygSDK83M/qJPMhhxDs7GVgfu6+pG0N77xLvghf8XgN4pL7o
         6SNBHHd7eEDa3WdU2HcfSDTsPjNk5OBIfZIEI2+2CA9DI9Y6yJ3wzrZABD+/hkTsICco
         upfuru1l4gdny/DVlJTQMt+JESHvZx/6OZ14YfGf8NhoqAeV2JubMIp4SPbQxeJzQbOp
         zDNB4yyEc1cj3wRMIVkjNkJzhOfdYEoMCvKMa3evjFqjRvGqN3WsA/oQIOkA23yw+rK6
         aUfqXz522fzWWz1GekDxEW0T+rFu+WYCo9p0uBGOUGtANtKHJIJ8F7O9nQVHrwZwNGc3
         pHjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7o1FK36;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xNeYQGfT1m+t+zOOsElMPgluG9paoEj2c+2Q5rstUU=;
        b=tcO6giUg/WBJ5p1bWQOJi10uNIgwa3mnNG/TOI1DifZJ7rGgWJKmOVSFzUX0aqL/u9
         3AsMnDEYjROsBTcLwQhjjZFfVfOy0XJRRnNsOdZFwPGeL04ESBa737wQpybMHBst7G0d
         /SEnWKj8kB6x0hLrK+2EcNzJnKXXWWX/cprMjbJlt09pz+ywNWHNE2u3ZGBXsQrxAg1N
         jv4IeQ3qqWwEUNwequfn7M63GADInKHTsMTUzd4KuHYHQuY2Bex0FCFo6i1o+7ZnEPGt
         oPmW/o0Jf5jPc5YLQVGuKhTo4r6m6ty8pWFHtp2TP6ELAK7mswmqsStDa4nNQMtK1WuU
         mqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xNeYQGfT1m+t+zOOsElMPgluG9paoEj2c+2Q5rstUU=;
        b=ZhK7fJfv+7M5ViV8Uz7DNv4icku86lcNxqoRpo/Ri3MNeoDbpWDYbKd79oHnl3nwzT
         s80+8rl1pclZX8o6lrY3OpC4vRpH+L+PX0IjIup3OOpqKVARwIGzM5lAhmi3QFBy/ZAu
         v2Sz6rF0M0Htokse7OU9neNtjmMRbnRif5Avu0kwsMIzV9lO9/3VeQpbZlStoOVqX6Hi
         axckeyMfgyHVBOiSL55FhfquLAYrEzCAJr0PGKpwYedK1w0YQ3um50dcgc22iqidq1dE
         j1UrgS8G4v6WAok7awSFefT93+gWp0Vvel57Sx/OfhDFi5dHV8/uwKw2+b/716369FQO
         HX0Q==
X-Gm-Message-State: AOAM532KuItUD8NyxXGi7MNr8M80KhkABRxxQlAsjK/X+2wXVL8DjQFS
	Iqdlz+5+0QzirZnkW0kmXL4=
X-Google-Smtp-Source: ABdhPJxymJGL5/IRp529CMe28M7ENqwXTmnJlxA3g5S9JQ6Jlt7NswDs/zIJ1B0xuG8d5Ya9iWluwg==
X-Received: by 2002:ab0:6f08:: with SMTP id r8mr20661294uah.111.1593596489757;
        Wed, 01 Jul 2020 02:41:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a14a:: with SMTP id k71ls98496vke.10.gmail; Wed, 01 Jul
 2020 02:41:29 -0700 (PDT)
X-Received: by 2002:a05:6122:104c:: with SMTP id z12mr15673654vkn.37.1593596489411;
        Wed, 01 Jul 2020 02:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593596489; cv=none;
        d=google.com; s=arc-20160816;
        b=Ut6/3QN+NDnStiuAO5FIlmeiz5QjcYREj//Rvre4ysWzzX9DLjW5h7JjSkwvWkyv3/
         k/0ZSJnmj+PouyFg+pARy1p3Sym+ZAZX9knwQIE2bYTEuHFVrvCSBrfFXtPs+O3HmTwi
         j4fR7jwFRsLZDrrAiKkC+5wE1xr3ve0Qdvxz992hwLHCeSGZrFhs0DJWUjvR2EKA+aGy
         elho36moQb9ngvvmqFFYNDatdzEMI2maJVpPDmzoF37+bEf0NFpwNHHQpPOVEWiRlpsS
         HAkp/AKpHM50WKVDVvONLNCf8HynGt3+MFyqyIUXa3NEVBWGZQRNgYJC+dS6pQOXjEmQ
         mehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K9iKD+F/OF6s9Kp12TelhQnccbvpriP6YsVg5s2kKxg=;
        b=Zev+Fe0nbpiKCRnGRkO+Gg8ImRa7Ie+VU3OL/WfBm5grlcQkZNOqMifuCHpQwPI8Zv
         7M/vMlws88c3EzjvBTvKWx+OwL6rwb4kvg1DYA9WQlq3+nfVk8Os2KVc7edQWOeqZK3C
         fb3ZS7xf8plerqWoB75TtFse3jCX9tlr2QWy3H4WQsbiC/PiYD1ou0qqb38SyRyzesQ7
         hEcvaAY8KJtNSLiFwy0xMb7678y3g9H7CxsfCt18JpH+KdZP385lcrPi4uOrh9TIXiwU
         geOpTKpBhBXgt3k9h1YMFZG46oSfR0iT9ulArU8W6PaUsfANfaMZTpIF5kc7lh8W5sGw
         rhAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7o1FK36;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id t13si34712vsn.2.2020.07.01.02.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 02:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id 127so1192841ooc.9
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 02:41:29 -0700 (PDT)
X-Received: by 2002:a4a:2d54:: with SMTP id s20mr22003435oof.14.1593596488545;
 Wed, 01 Jul 2020 02:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net> <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net> <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net> <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net> <20200630203016.GI9247@paulmck-ThinkPad-P72>
In-Reply-To: <20200630203016.GI9247@paulmck-ThinkPad-P72>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jul 2020 11:41:17 +0200
Message-ID: <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: "Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H7o1FK36;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 30 Jun 2020 at 22:30, Paul E. McKenney <paulmck@kernel.org> wrote:
> On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> > On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:

> > > First of all, I agree with the concerns, but not because of LTO.
> > >
> > > To set the stage better, and summarize the fundamental problem again:
> > > we're in the unfortunate situation that no compiler today has a way to
> > > _efficiently_ deal with C11's memory_order_consume
> > > [https://lwn.net/Articles/588300/]. If we did, we could just use that
> > > and be done with it. But, sadly, that doesn't seem possible right now --
> > > compilers just say consume==acquire.
> >
> > I'm not convinced C11 memory_order_consume would actually work for us,
> > even if it would work. That is, given:
> >
> >   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> >
> > only pointers can have consume, but like I pointed out, we have code
> > that relies on dependent loads from integers.
>
> I agree that C11 memory_order_consume is not normally what we want,
> given that it is universally promoted to memory_order_acquire.
>
> However, dependent loads from integers are, if anything, more difficult
> to defend from the compiler than are control dependencies.  This applies
> doubly to integers that are used to index two-element arrays, in which
> case you are just asking the compiler to destroy your dependent loads
> by converting them into control dependencies.
>
> > > Will suggests doing the same in the
> > > kernel: https://lkml.kernel.org/r/20200630173734.14057-19-will@kernel.org
> >
> > PowerPC would need a similar thing, it too will not preserve causality
> > for control dependecies.
> >
> > > What we're most worried about right now is the existence of compiler
> > > transformations that could break data dependencies by e.g. turning them
> > > into control dependencies.
> >
> > Correct.
> >
> > > If this is a real worry, I don't think LTO is the magical feature that
> > > will uncover those optimizations. If these compiler transformations are
> > > real, they also exist in a normal build!
> >
> > Agreed, _however_ with the caveat that LTO could make them more common.
> >
> > After all, with whole program analysis, the compiler might be able to
> > more easily determine that our pointer @ptr is only ever assigned the
> > values of &A, &B or &C, while without that visibility it would not be
> > able to determine this.
> >
> > Once it knows @ptr has a limited number of determined values, the
> > conversion into control dependencies becomes much more likely.
>
> Which would of course break dependent loads.
>
> > > And if we are worried about them, we need to stop relying on dependent
> > > load ordering across the board; or switch to -O0 for everything.
> > > Clearly, we don't want either.
> >
> > Agreed.
> >
> > > Why do we think LTO is special?
> >
> > As argued above, whole-program analysis would make it more likely. But I
> > agree the fundamental problem exists independent from LTO.
> >
> > > But as far as we can tell, there is no evidence of the dreaded "data
> > > dependency to control dependency" conversion with LTO that isn't there
> > > in non-LTO builds, if it's even there at all. Has the data to control
> > > dependency conversion been encountered in the wild? If not, is the
> > > resulting reaction an overreaction? If so, we need to be careful blaming
> > > LTO for something that it isn't even guilty of.
> >
> > It is mostly paranoia; in a large part driven by the fact that even if
> > such a conversion were to be done, it could go a very long time without
> > actually causing problems, and longer still for such problems to be
> > traced back to such an 'optimization'.
> >
> > That is, the collective hurt from debugging too many ordering issues.
> >
> > > So, we are probably better off untangling LTO from the story:
> > >
> > > 1. LTO or no LTO does not matter. The LTO series should not get tangled
> > >    up with memory model issues.
> > >
> > > 2. The memory model question and problems need to be answered and
> > >    addressed separately.
> > >
> > > Thoughts?
> >
> > How hard would it be to creates something that analyzes a build and
> > looks for all 'dependent load -> control dependency' transformations
> > headed by a volatile (and/or from asm) load and issues a warning for
> > them?

I was thinking about this, but in the context of the "auto-promote to
acquire" which you didn't like. Issuing a warning should certainly be
simpler.

I think there is no one place where we know these transformations
happen, but rather, need to analyze the IR before transformations,
take note of all the dependent loads headed by volatile+asm, and then
run an analysis after optimizations checking the dependencies are
still there.

> > This would give us an indication of how valuable this transformation is
> > for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
> > I know.
>
> This could be quite useful!

We might then even be able to say, "if you get this warning, turn on
CONFIG_ACQUIRE_READ_DEPENDENCIES" (or however the option will be
named). Or some other tricks, like automatically recompile the TU
where this happens with the option. But again, this is not something
that should specifically block LTO, because if we have this, we'll
need to turn it on for everything.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNP%2B7TtE0WPU%3DnX5zs3T2%2B4hPkkm08meUm2VDVY3RgsHDw%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFPBTD6AKGQEFLABVSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id A03B328D6B0
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 00:56:23 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id x3sf612730pgo.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 15:56:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602629781; cv=pass;
        d=google.com; s=arc-20160816;
        b=qqzCI4D4o4Ovpx/Pll4x6t+OfX2JSVJepFMMlyYprjWRdfIcTCpaqUSviUmI8oLucb
         +kyKlXYJyXA6gmQVoTYFxgZ5pjpEqX2kopMM3rk12om50N/uNdFDBpAJ+PVOB25CPOoK
         G9HKyihoyP1AJzwBLtRR5AaCgdR6yFN1vUmmrTU/bwa9ecS8qtUkeFrUSY7qCRsYMqGL
         8KX8ZWrTSrZIOuz1On0b4+uKSXZ1s5Votht0917cPT7z4g3xekMK/O9CvNZ8PjS9XKXs
         4XAwTAFc05S5/u9HplxgUyzEGrDycHDxUbLeTRoBvedM1D6MpDWbapSu8IcP3eePehBy
         GJUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1B08ndUNjhBc5hZsSwpYSQtvSpLSjshOQcbCV3CHoCM=;
        b=f10zjReQ9eid+nAj5xpzpOeIvhndMyIXJRU1aCJMPxexbSlyByEaPFItqtQ9SbG01g
         co21cUQYpiDRMDchx616rpDyipG4QtrYNW9klowRtNwL6xInO7L3zQNO76dYjjMndfw5
         5E+u30uFhLT2evVjcLoR4SxiWvxRLyolRyCh3syl3DRn0kws/njOiU/TsDrE8YJGP0cD
         TtHeaUaGf9LFiwzIb3NXGgR4oclxWFWTRe5teS+AxQ6hHp/mNeA9OYVo/hfhWNDM/gHU
         StrVEoL1hDmqvPmqTfTkK1O4+3bodAnk7TY7VRC+AZJwNXIChJsGQn+x/0qNbmBRK3cB
         7YAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdpis0sr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1B08ndUNjhBc5hZsSwpYSQtvSpLSjshOQcbCV3CHoCM=;
        b=ZMRAVVSB0W3kyTxfh1aEegnWZIQ/xZxNMyNrWNDD7Nf6nN3A8t+uv/z7rLcQOkmDhF
         ZlcZuIb85BLLq77shiqbeZ8pmJBycE8pUQpyBzTe8q7kO2Ihq8RcRn1NrEoot2K32xzV
         71KMjXbf9gSlf5gPxynuvAAYRGBOFsCFYNDEdc62+jjs0VL1dz28udcQ19MNg3rie1Z9
         X3ObTxFQXtv229e0arl4ndHrVIjHZSy7MEsj1EX0OEhmST7dd81fzjdy01IZPr01Iusw
         UU9cQUScliyEb/VwpIOlhrB/5hiFc2edh89/MHpuaEqVfmbY4mtghJzEGmDeoyHC73r8
         n9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1B08ndUNjhBc5hZsSwpYSQtvSpLSjshOQcbCV3CHoCM=;
        b=k5SltFGOdFCJ4cGlPp7FdvU77xLlWOnXVUFzz4kUrme1Gfgd+fRBiTMf34kuhjUSp+
         d5v/3quGVSM2s2R/YmIIiQb68JWmYrPrtnHulw/I1B44BhykX+1BvezbgotRJbvbH/yD
         EUaudN2RrL/tk8fJP25ZouT46/EHy6AaVA3pW5y34hwQRj/4oW0lUZ1S9CrQI6CjIdGg
         MgQ9X6GILTaQXFln24rF37zpzU86hFWiaBgMXgEoQIHN8+fwpGwAmsGRv4EnR8sLTDQy
         KMa4wvuWGTDKIP4mmQKEI0RDrciMqKcmbnIfo3zdegN5TULX8it6eou2XH0RbDEStAE6
         ltFA==
X-Gm-Message-State: AOAM533Gay3dcRJztHz0IYmsbVSqfx1thF3/1TKs72sG+z1d8Q3Za6pv
	mnzvHf0VP0y0Qfo0qD4xSTA=
X-Google-Smtp-Source: ABdhPJy1rm+1MuPHYmjJFjRLCzyeeyHpQYcDcw2iwQkH9jyGNJwoKPZkWxJjoO/FalLuNFL/s5erCQ==
X-Received: by 2002:a17:90a:6984:: with SMTP id s4mr617686pjj.206.1602629781659;
        Tue, 13 Oct 2020 15:56:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f993:: with SMTP id cq19ls211932pjb.0.gmail; Tue, 13
 Oct 2020 15:56:21 -0700 (PDT)
X-Received: by 2002:a17:90b:4b08:: with SMTP id lx8mr574680pjb.211.1602629781137;
        Tue, 13 Oct 2020 15:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602629781; cv=none;
        d=google.com; s=arc-20160816;
        b=KVyjC1Fs8PyDeaJzDN4Y/GibeinQXqheAViorFfZNhMmyT2vT/c1ujkQPQMPZPU476
         S2t3SSdINHsOTNdawmC82ChpY5cmJXfNJPulrg9inUMZYrz/0ioBeJ0WBCt8uu+7pKUx
         tfUn6UBbpdd8IhscxzGRih2DRPqQtI3NGqXvJiI6kBDZnvre6gBlUKwrzj5DkX2dKRsy
         emGOwLTEYrKu69gpAMCGYJfkMOI87iUaJh6AycxOB+VqqIrgEkjhqzT9bpgI0bk21hE/
         9kKrez7ddtXr06xllKCvsJtxEnAebWIcvNemonIk5xMDYw83ll9diPWYDq977Q0IApHH
         TydA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rDMoJN83Dku18zH5wHCbvoU/fSD4X5asBCZjJeZXhT0=;
        b=qIr+gGdb9Q+OouoywqAmJozSssr2N93aucxx9g5Vl2HgE4NuOcdHbjs2QBg8x7Se/L
         8GzWkBkY1ZODIcJC7H6ds7ckiYxz2NLafaCvYqS2WrLrOzydyoqSOvdSIL5hJMVHL6oZ
         ycpMscO0861QxAOpLbE3K7SkF2+Ug88TuVXhDxfRNBQGCUIlnCYfwAM37JPenWuYhRSq
         7KFX9yjKpO8hRTLJDJ1QqkeSpyMuhz6s8zmYSCzCVuLcX+07NGVe/N67W8zleDc7tc0X
         n9L4QXAzDUo+GZeToyoVXV3xqltvGu5JJn5WNVJxj7iFvsD6N7Q9BqKUGZPvOnTzCkg+
         yZ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdpis0sr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a6si44937pjw.3.2020.10.13.15.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 15:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id az3so324374pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 15:56:21 -0700 (PDT)
X-Received: by 2002:a17:90a:3b48:: with SMTP id t8mr615136pjf.32.1602629780628;
 Tue, 13 Oct 2020 15:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200928224854.3224862-1-natechancellor@gmail.com>
 <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
 <CAFP8O3J_Yn8SVD8RR=P5qv=NjdLT0s6JQQM8gWFU-2n0=b1uZg@mail.gmail.com>
 <202010121426.A5FA5E59@keescook> <20201013032607.GA2091780@ubuntu-m3-large-x86>
In-Reply-To: <20201013032607.GA2091780@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Oct 2020 15:56:08 -0700
Message-ID: <CAKwvOdnM4UHFy1jrnfoKPG_S6CQpWMTCpuxTkbN+_AGe2Ov0SQ@mail.gmail.com>
Subject: Re: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab sections
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Ingo Molnar <mingo@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mdpis0sr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Oct 12, 2020 at 8:26 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Oct 12, 2020 at 02:26:52PM -0700, Kees Cook wrote:
> > On Mon, Oct 12, 2020 at 02:22:03PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > On Mon, Oct 12, 2020 at 2:11 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > Please submit to:
> > > > https://www.arm.linux.org.uk/developer/patches/add.php
>
> This should go through the tip tree (hence sending it straight to Ingo)
> since the patch that this fixes was there. I guess it does not
> necessarily matter now that the breakage is in mainline but basing a
> set of patches on a non -rc tag is a little taboo I thought so not sure
> it is appropriate to go through Russell for now. It is up to the
> maintainers though, I will submit it wherever it needs to go.

Ah got it, yeah I don't really care which tree this goes up in.

>
> > > > >
> > > > > Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement=
")
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1152
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > > ---
> > > > >  arch/arm/kernel/vmlinux.lds.S | 4 ++++
> > > > >  1 file changed, 4 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmli=
nux.lds.S
> > > > > index 5f4922e858d0..a2c0d96b0580 100644
> > > > > --- a/arch/arm/kernel/vmlinux.lds.S
> > > > > +++ b/arch/arm/kernel/vmlinux.lds.S
> > > > > @@ -40,6 +40,10 @@ SECTIONS
> > > > >                 ARM_DISCARD
> > > > >  #ifndef CONFIG_SMP_ON_UP
> > > > >                 *(.alt.smp.init)
> > > > > +#endif
> > > > > +#ifndef CONFIG_ARM_UNWIND
> > > > > +               *(.ARM.exidx*)
> > > >
> > > > I don't think we need the wildcard, as without this line, I see:
> > > >
> > > > ld.lld: warning: <internal>:(.ARM.exidx) is being placed in '.ARM.e=
xidx'
> > >
> > > We may need the wildcard if there are -ffunction-sections builds.
> > > In clang, .ARM.exidx* cannot be removed even with -fno-unwind-tables
> > > -fno-exceptions.
> >
> > Does it need to be:
> >
> >       *(.ARM.exidx) *(.ARM.exidx.*)
> >       *(.ARM.extab) *(.ARM.extab.*)
> >
> > ?
>
> I tested the patch and saw no warnings with what I sent. I can change it
> to that if it is more proper though!

We don't have LTO working on 32b ARM yet, so I'm not worried about
-ffunction-sections for this (yet).  The ld.bfd linker scripts didn't
seem to use the non-wildcard and wildcard suggestion; just the
wildcarded.  (Maybe they have the same "bug?")  I'm happy to revisit
though if we plan to get LTO up and running on 32b ARM.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnM4UHFy1jrnfoKPG_S6CQpWMTCpuxTkbN%2B_AGe2Ov0SQ%40m=
ail.gmail.com.

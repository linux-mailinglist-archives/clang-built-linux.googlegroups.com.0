Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOH55LVQKGQELQCXK6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE37B1609
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 23:55:05 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id l2sf3241609vsn.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 14:55:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568325305; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpaBo+tomXGLTMx609hy9g/yq1Q+nH3i+bgV4y8AeIv5b+vWSA0hiG+Y7/JZGD4pRI
         mVnF0c573Z02iNLdZSrkeVEKeG/mQVbTnLI09Gq99EIcXKO/yf9kqDkWrInhxx1suQLA
         Dx4FYhB07Pc0Dk0kVSkbqK3G7hO62oSGO/JEMU3T/dg51549WvfstedIpe9Ks8NVwUXB
         P4vqBUsjQecpsc57RBZ76z5019n+/KnwbRfL80WpNCyZjvFiTJCmyh9baEOBQI3W7dtS
         6rcPjXthuGakcxXMe93HxwHuaAH4pHe0XAstHakg02yZYTSvNgc5Fbs2KJS4087V8A8I
         7BiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iO7haF5EwU6gkrtbXBRbZJyb3pDWcnW0+uSE+xGquac=;
        b=VVFXn9v3gWCFonkULlhQyO0wG1zR64F6ZuMvT2774lhr//kguKBskStv7WicoOZJLg
         QvY6BIraBMsqYBq9JxrZeeOSnuYLFnRATWjlcqcnF6TPVElhU1lPX2rOgLUVoUu+L/sE
         CIjNjVphDVCEJDTKcTQH/ISsZe8m6sEO9LUNdXIa9OU+/mgpiWP5tPSNEVWxIyUsCrxj
         1NMI7gg04cp2ddZpyVCabcKwnsOtCNnmg+y5kO78WrvoAQM2L6l4+ObOuDTdpqe3VXbM
         NYh+/qsoKDxqG7d7IMY6Yx79WfmEJ7WDcU19oNPGDJP0KscbMTDuzzS7tZ+j2z7cudrY
         DThQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s8n5v4gJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iO7haF5EwU6gkrtbXBRbZJyb3pDWcnW0+uSE+xGquac=;
        b=Wxd7Y6u9d2BXAz6xAtNAvO0vTJOYvsZK8mcSEc0wC3v1kdo9smUXCIFMCvfm7DHbhH
         rq268uzgzsRTbYkGeeSCFRLKPwfVPIGIwBtf98DJfxM253a4OXguw/FA9SX7yc4So46I
         p+faVIKjBlFoJhD/v5URmsFrpKaS7CVWQjwSmfmVmidA26gIwm1oX068xWlcLz3mlF4p
         3WhTnI4KwUyhkfHyQiYqLu4aEr/e9dikvd/stnC6Y8Jh/9shvgVuoeyr1AqdawNojd/T
         shiMYkKoDSd335nwYNT0TA4vD1hvTddCetPmncGEwqM1kDrA8iKLJOaYlVAPqOJpnO7A
         BESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iO7haF5EwU6gkrtbXBRbZJyb3pDWcnW0+uSE+xGquac=;
        b=NArxdTBu3BQQvWWSJ/Avqwk+QB2Nr311U41P2IazTMt5O30V5uOMSjJP/9MpdcfQLh
         N/EHNWOF3ft64Ii0TkV4dELYSY4swU81IsJxBq/k07mBTufFI8BYtt0J9lykbqu5kw/g
         0qmLZ12ZExx8J1s9tHuZefrOdLqEpKgYOkvu3F8+yYKSJD8w+OtDmtiDkjXgaDke7Jh4
         PPCO70We0RA4cEjowsxiJoPjxkD48dtw+i9Yk/3WLdjeNPnualSm9m5s5FRnUdd+gS/0
         AJYBFsmi7ysHTyleIZ1c0ljDwhq/c44VQWUAEJRlvi7EhVntoFX/CGFNerGINMw9xHkY
         W50Q==
X-Gm-Message-State: APjAAAVu3iM1N47PqzVyNW7DPaq2YLWPftBVh0Y5d8cdx3wiCGD/OJPd
	KWK3uR4XHg42jYaoMMnx0YM=
X-Google-Smtp-Source: APXvYqwnsee2lsLPVameonMUe+GFfvsKqAEY/APkuxdkf5KQ4xEpuv55M6YY4XFQl1pAmaXewRxzcA==
X-Received: by 2002:ac5:c185:: with SMTP id z5mr21620456vkb.18.1568325304821;
        Thu, 12 Sep 2019 14:55:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c485:: with SMTP id d5ls2686328vsk.13.gmail; Thu, 12 Sep
 2019 14:55:04 -0700 (PDT)
X-Received: by 2002:a67:6147:: with SMTP id v68mr25013282vsb.233.1568325304588;
        Thu, 12 Sep 2019 14:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568325304; cv=none;
        d=google.com; s=arc-20160816;
        b=DWZPasAhF+94SjMvxcLW9l2x1E7clixWLiogTpto4v+d7PK3d0h5FFSmX9Mdy2W3A3
         0nBnb3vtZGlxbmFZi37sUcWbhdgc68nXHUkT+OJSIl/up1T/FWhWMie5ApHJJt2kOsdZ
         gNN4S7CxqXs2L06sLOYiVmZe0FoiOjHBD1eDMyclFHxFfNXVFMXhlNg019GeQs209eKF
         pjriV3HWvIEjyZbb2YLAGEavtPsm3JcOCJPM7nQKZHauVPPfQ4XdKQ7eGmahFCtro+ox
         GdQ7VNSkgZGAZ1m4Ny4ZtjZLdYtA7nnV11ZnV1tn/KtKUbG+HrW8Dev00zlgjaI56687
         6qGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=snhh3ykH84aIZLs5Gz+CeA40AYib79sbAfk5ZyhaI70=;
        b=rNcQp1QazbNwxiWvKGdVIjefUbeph1SAy+VGFEkOjft0Az0+ZB3MbT1eM5vqt5TuDi
         IXMf8CN1gj2pMcvFtea6fM9fKZmMGKl2YRbaXkty2hKwMbeeuq5MgoHqOQkDUwfJyjQn
         LcpDrW43eZfTAhyEhMUC5YJAGzZ7AOx0b15PwdL8ZvsNrvuftqIWbg6zyzbjwav7ZcEU
         /zP6ysafuN18Ak3kk7h9lHovn+XXREHIq3xV3nQlQ42qaDJdQTPU+NY2etZbbid4vdQT
         q7y9wvVzoafNGe6Lz5KO4H3DousL047wPWxcUQlHDjn0eo+/UaKHqaEQ4G2sboeeMJV+
         XJ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s8n5v4gJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y23si1295753vsn.1.2019.09.12.14.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 14:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w22so16804439pfi.9
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 14:55:04 -0700 (PDT)
X-Received: by 2002:a17:90a:ac13:: with SMTP id o19mr990839pjq.134.1568325303149;
 Thu, 12 Sep 2019 14:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
 <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
 <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
 <20190907001411.GG9749@gate.crashing.org> <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
 <20190907131127.GH9749@gate.crashing.org>
In-Reply-To: <20190907131127.GH9749@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 14:54:50 -0700
Message-ID: <CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s8n5v4gJ;       spf=pass
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

On Sat, Sep 7, 2019 at 6:11 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Sep 06, 2019 at 06:04:54PM -0700, Nick Desaulniers wrote:
> > On Fri, Sep 6, 2019 at 5:14 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Fri, Sep 06, 2019 at 04:42:58PM -0700, Nick Desaulniers via gcc-patches wrote:
> > > > Just to prove my point about version checks being brittle, it looks
> > > > like Rasmus' version check isn't even right.  GCC supported `asm
> > > > inline` back in the 8.3 release, not 9.1 as in this patch:
> > >
> > > Yes, I backported it so that it is available in 7.5, 8.3, and 9.1, so
> > > that more users will have this available sooner.  (7.5 has not been
> > > released yet, but asm inline has been supported in GCC 7 since Jan 2
> > > this year).
> >
> > Ah, ok that makes sense.
> >
> > How would you even write a version check for that?
>
> I wouldn't.  Please stop using that straw man.  I'm not saying version
> checks are good, or useful for most things.  I am saying they are not.

Then please help Rasmus with a suggestion on how best to detect and
safely make use of the feature you implemented.  As is, the patch in
question is using version checks.

>
> Predefined compiler symbols to do version checking (of a feature) is
> just a lesser instance of the same problem though.  (And it causes its
> own more or less obvious problems as well).
>
> > > > Or was it "broken" until 9.1?  Lord knows, as `asm inline` wasn't in
> > > > any release notes or bug reports I can find:
> > >
> > > https://gcc.gnu.org/ml/gcc-patches/2019-02/msg01143.html
> > >
> > > It never was accepted, and I dropped the ball.
> >
> > Ah, ok, that's fine, so documentation was at least written.  Tracking
> > when and where patches land (or don't) is difficult when patch files
> > are emailed around.  I try to keep track of when and where our kernel
> > patches land, but I frequently drop the ball there.
>
> I keep track of most things just fine...  But the release notes are part
> of our web content, which is in a separate CVS repository (still nicer
> than SVN :-) ), and since I don't use it very often it falls outside of
> all my normal procedures.
>
> > your preference).  I'm already subscribed to more mailing lists than I
> > have time to read.
> >
> > > But I'll try to remember, sure.
> > > Not that I am involved in all such discussions myself, mind.
> >
> > But you _did_ implement `asm inline`. ;)
>
> That started as just
>
> +       /* If this asm is asm inline, count anything as minimum size.  */
> +       if (gimple_asm_inline_p (as_a <gasm *> (stmt)))
> +         count = MIN (1, count);
>
> (in estimate_num_insns) but then things ballooned.  Like such things do.

So I'm not convinced this GNU C extension solves the problem it's
described to be used for.  I agree that current implementations in
multiple compilers is imprecise, and leads to developer headaches.  I
think `asm inline` will help in cases where vanilla `asm`
overestimates the size of inline assembly, but I also think it will be
just as bad as vanilla `asm` in cases where the size is
underestimated.

I have seen instances where instruction selection fails to select the
appropriate way to branch when inline asm size is misjudged, resulting
in un-encodeable jumps (as in the branch target is too far to be
encoded in the number of bits of a single jump/branch instruction).
And the use of .pushsection/.popsection assembler directives and
__attribute__((section())) attributes complicates the accounting
further, as you can then place code from the inline assembly in a
different section than the function itself (so that inline assembly
doesn't affect the function's size, and the implications on inlining
the function).  That would cause vanilla `asm` to overestimate size.
(I suspect variable length encoded instruction sets also suffer from
misaccounting).

Short of invoking the assembler itself, and then matching the byte
size of generated code section that matches the function's section,
can you accurately describe the size of inline assembly.  .macro and
.rept assembler directives really complicate estimates and can cause
vanilla `asm` to underestimate size.

I agree that current implementations in multiple compilers is
imprecise, and leads to developer headaches.  Rather than give
developers the ability to choose between 2 different heuristics that
are both imprecise, why not make the existing heuristic (ie. vanilla
`asm`) more precise in its measure?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w%40mail.gmail.com.

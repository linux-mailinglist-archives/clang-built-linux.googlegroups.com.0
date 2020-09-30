Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIH72L5QKGQEMBBO37A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E99D227F07B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 19:25:53 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id s4sf2083078ilj.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 10:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601486753; cv=pass;
        d=google.com; s=arc-20160816;
        b=aRpMF8wiRpnmNR6+MrlwnsH/pnzYbGcp3jngS8mXycSzuWDkAouW0iOZBmPhZalSnS
         1B29np6gep1FePhKkNb8J96hMtGmoE8WKDH3JlPE9IQQsqKQ81f0BgxqMgmy8w7uuxqK
         Y52AX7uGlWjgK65lKgSOiZuJBLsVslQDNSmiGtOQb9XIMGn7rXV9kyZRecbictElMuq5
         lEEA/4UrboPcsUk8Vz8+T+cK2Ag9HNfqo3WDOwPcUEOImNem4stcjctrmJ9E45cNzkdB
         tyaLhyoKByhdbxPPv6Iw5xM9eMKF5Fy8EngMAbkMTJmm/EIcuVFnMRpgvWCaYLQuU7EG
         izPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TbcVpXrEMyVDQWx0ZHzM+zRYbmr5Q10F0DY2WabfTrA=;
        b=y2as0kBi7sDXTnfqR+v18U5luJKAFmtjFF5a5Wv6sX3muQMhMpZzpPfKoZvSqTcuRa
         2pZLPHJYJjr1/Wbhb8jQBk+q8QzQuaTLpKe3hQ1CaGQGN5AmktBKbm2Ww1NoGiP7P6KY
         P2vSeLpj9xKCdeMe293gxsD8oUNJEaoA34JnMEoWm2APNKbrFq6Csq0gEgWoWgQ5cSUW
         +7uuluOEDxAMX4Wyw591x8XmDZaTeId49bXe2bZagFG2EvzXrzY/4eip3p+fMdiGuBqE
         mNArI20driBf+DmL32JMMMNpgMgpgYF+H0V6PzMNM/O4rO59jbkSloVSZbdNcz6R29qe
         zvog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey0Oc7kl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbcVpXrEMyVDQWx0ZHzM+zRYbmr5Q10F0DY2WabfTrA=;
        b=MIDQFCItQtxEDu3m0ZDDzH08itvmZdc92gF51tnxTcVhiPYhTVUUdD1yCV45y/AwGs
         TCCwRY6CWGyK42HB+FMwZYUhRuytKyzpSAviYRa8Ttny+4Fbq1VNPJF2NSMBPu/0ygDN
         djzK2eKDJUsUALHlGfi1XbsSdHj29nXD2oAuG7yx4r1gTZy96Gzh/Vy7GIh6fWcytyCj
         STRWeUGrw+Gyv14qejxPDTnyUq1q6O6o9OJiFShC8nj5d0HDsaom2DWAwln8u2ANIdfi
         /A+GFaitqPanMeoA3cWTtzTK/mdpoLPo/lHO8RxIVKp1c14VBWylAr8qeYU3FkM8pxLb
         mnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbcVpXrEMyVDQWx0ZHzM+zRYbmr5Q10F0DY2WabfTrA=;
        b=rAHXGTQMAIwwuLjNzDKB7qxykZEwnbNnXLLO7xWt0IZ6iM7bHL50y1V9vmqSEDfIp3
         TnsycDqWshpsZ3730z76kbL2Wn60cXK3F+uHKhYB2JuVDMHXpyCamiVI+4ICA/xOaMNZ
         H7xkP51V+RikXNi9DoruI4GHgMbEW4sM9/X86zzZy5Ci0XTBs6+drmz3/Isyd8UxlAQE
         mOjc+HLQIgUroPF/RjYQIiJX8/WN5Xw80cYBIq7umbgx7qSPQtfdIKKBTa3ww67afQHP
         MwAM2xbtilEcAoKYKY1/xwIAjmF39VQj4JgdydVpMpA2dpAJH35EKgh9+EbHNqCHIyG+
         ifLQ==
X-Gm-Message-State: AOAM530N6JuXTB4LZvQifF8Bxjg04MISRnFSt0ePVBEtc44m7KnXXtm6
	2z4NoCpTWOq7mIPHQAbWA6o=
X-Google-Smtp-Source: ABdhPJw7T6dXD3Y/ndlbv/XdsHpwkhBTXLCmXws8s5iJvUR0d2F11eZ0/nf0wFDvkqF6bycEPQq8Mg==
X-Received: by 2002:a6b:8fc9:: with SMTP id r192mr2484677iod.24.1601486752694;
        Wed, 30 Sep 2020 10:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1655:: with SMTP id a21ls303460jat.2.gmail; Wed, 30
 Sep 2020 10:25:52 -0700 (PDT)
X-Received: by 2002:a05:6638:2185:: with SMTP id s5mr2902902jaj.120.1601486752310;
        Wed, 30 Sep 2020 10:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601486752; cv=none;
        d=google.com; s=arc-20160816;
        b=jobZ0LezGhRxnhMZBsZBPcqpz918wYn2Vtw0s/O3w112KBrXKqqVg3aObFvg6eMTG/
         4V0k2+Yo4BWvb9CDOLvpDh5zTKAcopuIa2+Zi2xeAolHyHhlpp6iaAeoTRnwZC6N/ccw
         7GuTztly9MCfLB8HVflCDZPQm3SCHeU1VEp8GCng838IB36ChGeXD77rhD4zI7jOg3nO
         wnYTg72F00pVCPI6f5i74DhLKtyAgA8PlKglvagWxfmFqIkcHBbUnZNua3OKJyqugPu6
         S9fjflRgRT+JafVpd9mFoMp0f+PnmR2xss2u6X0i2obN9od+1XlL6YnSVHjlEQ8lVERP
         2uAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0nfehHdUPTyFK6XAv2rP7KrvsGMS/er2RZ8KJpBo5Yc=;
        b=sGn9ku0F+/XPvICekM4Q5g34CT8NvP4aTSm772InMLnPCejhvnZwk+pXlFA7Y2QjCb
         yXW7dd+cllMwWZlaeksn9PhCibyVmxZVdjZI5S4INef+fyRBm4IJyhzshq/4k12msYHD
         z/5SHVzfsXhSaPQLvOYKDohEbB0L1zxX0f1g82D1kXNXG3S69G2jz0bGz5sgkyXo+bKm
         PHaY4yc/XNHs3Sw9LZGwLGpaEodrf5fSs78ePNDaodxgLAUE8BZL3JgkD8jq36eqOLkT
         q0owp9zZD75jwjaf6StA93ZMhUpul63DsOxH2vzH7Os4Ft1/umqNp52hT/8T8Oms1oF2
         0BIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ey0Oc7kl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y1si204479ilj.2.2020.09.30.10.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 10:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id x16so1501753pgj.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 10:25:52 -0700 (PDT)
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr3293347pfl.15.1601486751602; Wed, 30
 Sep 2020 10:25:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
 <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
 <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
 <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com> <CAKwvOdkiSLidxNxWUxCrJ_rPogORt=aGDHTkbO=yJn0FPevbpw@mail.gmail.com>
In-Reply-To: <CAKwvOdkiSLidxNxWUxCrJ_rPogORt=aGDHTkbO=yJn0FPevbpw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 10:25:40 -0700
Message-ID: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: Linus Torvalds <torvalds@linux-foundation.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nick Clifton <nickc@redhat.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	postmaster@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ey0Oc7kl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

Does anyone know who's behind postmaster@vger.kernel.org?  Maybe I can
email them directly if perhaps they don't check this email often?
(Benefit of the doubt)

On Tue, Sep 15, 2020 at 1:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hello postmaster,
> Any thoughts on linux-toolchains@vger.kernel.org?
>
> On Wed, Aug 26, 2020 at 3:14 AM Nick Clifton <nickc@redhat.com> wrote:
> >
> > Hi Guys,
> >
> > >>>> Would it be possible to setup:
> > >>>> linux-tooling@vger.kernel.org
> >
> > >>> s/linux-tooling/linux-toolchains (better plural toolchains)
> >
> > >> FWIW FreeBSD names it "freebsd-toolchain".
> > >> NetBSD names it "tech-toolchain".
> > >>
> > >> I'd slightly prefer the singular form.
> >
> > > OK with singular form.
> > >
> > > I was thinking of GNU and LLVM toolchain*s* - that's why the plural.
> >
> > Personally I prefer the plural too, but it is not a big issue.
> >
> > I am however delighted that it looks like this idea will go ahead.
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA%40mail.gmail.com.

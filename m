Return-Path: <clang-built-linux+bncBDYJPJO25UGBB56RQT5QKGQEGQHFKBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id D380226AEDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:50:00 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id i6sf1961410plt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:50:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600202999; cv=pass;
        d=google.com; s=arc-20160816;
        b=uPRoSdFATOoCgSER6FM1e/L1q0jcl33i4dnU5Yw6kKJlJhQ9R2bqOvDjarE4zNlbiD
         as6zOT9DHGjL3B8kMHLd56ern8UlW6pn4txwQ8mQ3k0y9dFDW0WeWV/GD0XJTdtOW2mZ
         DbUkLq78XPDNYkqMGSphmA7HYifYqXgF3N+MzBGYIw0aehawHBlufz37uMsO+0/8D4rH
         iBN/6TypHDswY9GUygmW78QzUPRrMit4mXhLUZ7ricRYZZyc2zg52sT/jr85fLT/NEns
         zooXNrtwQP1oPPKPHJupzMStsBrbFccUAJj6vwa9d6fzhkuq62z6N/M3N+nDRxlFIWAg
         n6JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1daGVVskG9L5HGt+vTP7iuTSRUFRYEGXFP7sFgdz5A4=;
        b=Rn5h7ijOX2O8wrgAU6uREaA42sGWbvOBI3H7+SUvufUHBZn7qtASYIfLOiswEizX/B
         ZfIxARHVVQvIqD84khAcXzb9q1DWln7R/doksVbY8KY49o+z7+KZohC/kJCEB6MAQuPv
         a2SRFYCCGR9ROX9ZfsFbhag5BPks3FR/id2nzLU53ZGGQcrervHCMxZqw1ShGN8po+LT
         XghXMhi51ttvc2r/Duges1j1BoKhHEmhCLn9Y01zeizsrcSdB1CjwQ/P/rcxnjwDvxCj
         ufVK9VKEJVeIUvZ9eeVbCPWo/B53WEVVnkGQ+iOeWJlTCIkbQ0E6Fyhx093gQ7cKWMFW
         a9wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eKmxCli6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1daGVVskG9L5HGt+vTP7iuTSRUFRYEGXFP7sFgdz5A4=;
        b=UDrCnmFJlc4t9JjqRRRs8fc7nR5hZewuMiowe/BKjqUDigSNfnDlL8au6XbvwNC11m
         scqgeqKTJpkOkGqAYngDG3CNGqQ6ldKb+zmHctwJtUrLCAZpFKuNPKC+DHTM8wGyJKnN
         pJrN2gTGVHVsfAXKQtjxyRI5yOvnK0l8oL2UEMZxtieCjQ5pvZC7FV11BbHZhgJe9gXY
         HKY5GMzfM785Ot5PvHQMUOLHIQ9n0axvNNSsOE4tmMVk4goKZk0rmAKeZJIN/0hHewlJ
         n9sezmQHPF4G+OIBfAJCmAgpGCc2qNfxHcHpDkvvpP96C+aDf8IKd0L9mwUt0AkTGgBm
         IldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1daGVVskG9L5HGt+vTP7iuTSRUFRYEGXFP7sFgdz5A4=;
        b=CP6cZqqRmfDBRJrubL5XZUeYgJ1XRDKduUkLqgqA7rmNVrQ2KWfu+As3WCe204DwNM
         qac69D4S9xFpXq4M5XXr/b2/NF1AppldLPVp8t84hVWgw0gThnTSdxfTzETsErbe5ej2
         8kbAtDfA+yIH4bmih/XJoVJVHWq877BxjsN+flG5uUCgMagMT+1tdPN18BIi7+Fxywcx
         WngVqoDcxRTxF3al0qH2AGZbYAB3II52t7M/VHSFxP7Vd7oiBGhudc0DYmCbRsB3olql
         yNiA8I2rbfynY8gfsbr7H9xHJn+lWr5g618VsIAo3A6coXLJJVat5e1ObdRO3VDqmLvX
         yOiw==
X-Gm-Message-State: AOAM532PmzuNT7YEeEhcYqG8bgtVxsIHcsEjXPmjNQ5hRSq0AOUX73i/
	JaLN+uIsn2gsFIfRh1hmw64=
X-Google-Smtp-Source: ABdhPJx3sHNIonJ/5c+y3+M9eMRoJA3k1Vqlhw9S/SGhDWNhjAVUWJyXwHJLwoKHzGHQGzQQrHp4dg==
X-Received: by 2002:a63:2f43:: with SMTP id v64mr11850399pgv.69.1600202999526;
        Tue, 15 Sep 2020 13:49:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls117681pfc.3.gmail; Tue, 15 Sep
 2020 13:49:59 -0700 (PDT)
X-Received: by 2002:aa7:8597:0:b029:142:2501:39ff with SMTP id w23-20020aa785970000b0290142250139ffmr3563138pfn.78.1600202998988;
        Tue, 15 Sep 2020 13:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600202998; cv=none;
        d=google.com; s=arc-20160816;
        b=U8bSk08IbBzuxKhkesx3SjbVrz6HTvwtZJvVEJtVKOgzZ1WRFASDxSH5woG73fhklf
         v9UypgF4isBiHBGz9g5o2bUX/rbO83QjRW7Y4zb4peFGuh+8XasGxRrKNwokMwpHPNIz
         wnqtfUivUVbDKfBvFRzhoaVp9DUlqsLVrBmY1qgFgCR4LebiTuDsk4CvdFgn4yvxmEIg
         pqn3ptrTpihKNYU5nh1DpqWGelLDLIlmkmbLBVgbZcWgzuT1j6aHkZ0civUU85EPWASF
         kOF2yI9zqNntvdBTEV+lB/D7wuVc16ot16um+vfC1gRZTvZmXP1+Gb6lBn3ZPLTVkDWH
         2oiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KQN0ednkgp1zJbGZ3MuZGCQdVZKsdpv3cYQ+zMKOR/U=;
        b=w+iPxeuvhfhfjvhT5MTl8XgiA1wp252vEsNw5FkNn2ItTOsOkf5fdSJRDHt/8DtcxH
         eHus5RoiUxMc169CwnJ2RDKS9CT7w9ru+8jQZ5u+nWliomsJAhWcWC6VuIcg8HvHi3MY
         9sWSemu+LvKJrVb+osH1M0uMTNlm7VEqC7D/0HuwpKv3BLf38caINfvSM+PbaumZVNMF
         dTbE1hVqa2kdPQ+B923w9H43T2uz6j2/VTVhyjMw/kyK1ALpxTJR11oZScnV8PiJgD+P
         wRsffGPdY3HRnrh1nqQRNem0ZD/jlt0tDLxokPzid+u58OagXoxBSMHjbkm+uGTqzkkG
         9yGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eKmxCli6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y1si39909pjv.0.2020.09.15.13.49.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id l126so2656401pfd.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 13:49:58 -0700 (PDT)
X-Received: by 2002:a63:7882:: with SMTP id t124mr6286483pgc.381.1600202998459;
 Tue, 15 Sep 2020 13:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
 <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
 <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com> <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com>
In-Reply-To: <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 13:49:46 -0700
Message-ID: <CAKwvOdkiSLidxNxWUxCrJ_rPogORt=aGDHTkbO=yJn0FPevbpw@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: postmaster@vger.kernel.org
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nick Clifton <nickc@redhat.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eKmxCli6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

Hello postmaster,
Any thoughts on linux-toolchains@vger.kernel.org?

On Wed, Aug 26, 2020 at 3:14 AM Nick Clifton <nickc@redhat.com> wrote:
>
> Hi Guys,
>
> >>>> Would it be possible to setup:
> >>>> linux-tooling@vger.kernel.org
>
> >>> s/linux-tooling/linux-toolchains (better plural toolchains)
>
> >> FWIW FreeBSD names it "freebsd-toolchain".
> >> NetBSD names it "tech-toolchain".
> >>
> >> I'd slightly prefer the singular form.
>
> > OK with singular form.
> >
> > I was thinking of GNU and LLVM toolchain*s* - that's why the plural.
>
> Personally I prefer the plural too, but it is not a big issue.
>
> I am however delighted that it looks like this idea will go ahead.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkiSLidxNxWUxCrJ_rPogORt%3DaGDHTkbO%3DyJn0FPevbpw%40mail.gmail.com.

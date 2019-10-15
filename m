Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6OYTDWQKGQEQSNE35I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E91D0D8108
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 22:30:50 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id i28sf16798048pfq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 13:30:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571171449; cv=pass;
        d=google.com; s=arc-20160816;
        b=byOxrzsknOk5YeMFBvy0aIANy1z5EG5jkN+OVVLkW32+V7nWnzYgZfaE5xflPoPz+V
         mNEd2vSFSoEpB8YW4BwbHUgcsKGswmjG1rRMNcQWR6ziXV/Ycvfg32SpnXOCkgot6FWm
         qF0iwJhi36jtf3xuTN79pGrg3g/WJUVoc0f0PvbCEckChRfRp1YM9MHuSvvuB8iCm+XT
         axgaLo38Wod567hDS8+GlnnZ7pJ7VDy/iI1RUPwkceyXb+oCuQvcyykrwCLBMD0Bw6DF
         wLeFaPl3vbpYC6tG17DXxede7pC/0PL69F0yHDGDWTtojyi4yZoZkJ1UFaKGN1rKmXMX
         gUsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fpaxEUAm92A78d4zRL0OvAGpofxZGi0IUwqccym10cs=;
        b=qLI5jR1CtBU/KvPym0jtDMlt6QtLcuPXVrw5/HRFEd11vR8t1nV4KrofS7kHoG4sdQ
         0DSNGr2mhWrIOgC01twd8xAqGmsloTmr2/U4zkB/b66/slaqCn4hoTOBMDEHZUtYVwwc
         U0Ftv64ZmoqNjRd74Sktcmg22swambXB5aN0zSD8bOJAifvHfvwrwtJB3nUuSudldgWj
         5xADdrDxz5jDAXX0cTy08FSeJlIR9HUGbuEU2ypIyofa+3IU4moOlJ2YPZidkoPCySwh
         w9EnvxprriCgUdNp3TIGB1zN2TktzLcyWYcixtnla0YH2vH7269dgSswWMshzUwVAoC3
         4zwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IyN/hBPF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpaxEUAm92A78d4zRL0OvAGpofxZGi0IUwqccym10cs=;
        b=B0WuPOFvhe+zG8g0VjrRHEDpoOIYpDgu9a9V6ZHLiOsDvUIKksWETADNR3CJbcD2n9
         bFcJ9GkynD9/Nsu25rwdXDVn7I+XubDRiYhK36gs0q5F9QTKZMpb7gVLyks8AmQUjzv+
         +2MTnvi7OwQ48E0QJ4gxSrHIuHSmyZiQy1ZulXi7ms1Qc6L4gpiiGb33wYSKMRhCIiZP
         XiFI1Y9DDmdEA2EUPlPHTtpA1W9q174CcvGgHa89ADiTW7QFTGRiJuKQxMbDE64oB7NI
         z0e305whq7lsmRHBXXTQ2oPGj38jHOS74ljgwMxp93d6sOuMTK6GbXGw/2PI3yEYYJ0b
         m+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpaxEUAm92A78d4zRL0OvAGpofxZGi0IUwqccym10cs=;
        b=hOIp1vkSqhq9EX+fuhfLaIILxyXzb/T+M7UfIibUh1d6PUz/RWr/cbfDcTCC9Xl6Pf
         kO5A0g8qAv5Log1nvGT45oqg/xQnQZtj/pmUfY021eu/L9UqgLFEr94YtYodiLJf3XF6
         kVRseSuNwVp7Xif7xalpzdcMbRMDE3Jw7XRMlEHg1Gqs29t3AYsZ5nN0ucj4USXh1ohz
         j3RzCeFGudi2iNE7+qZ/gLhDzZi9X16RoFGabxprvp5YLzl6CkyNuZzbnCVo91BWA0FU
         xQXfrqD4hynYgExAZ7V3H3ADDbT3PKZ0e18otP138SkpVU0eKtYiE6sJgpLpsRdLS7gO
         MA6Q==
X-Gm-Message-State: APjAAAWlKB/7xM3hpWsas2deBBDXArrIrI4vTa/UdNyyn/388ogERKmp
	kZG7FsVpox8Mma+SGZOEUNc=
X-Google-Smtp-Source: APXvYqxIiltr6cuz2ryfKgO5HV7yaT2e2ztLIoxr6d/VwyNeWXpB1FmXLzUaT2H4lOgFUZ5IaLReZQ==
X-Received: by 2002:a63:383:: with SMTP id 125mr40925379pgd.41.1571171449392;
        Tue, 15 Oct 2019 13:30:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls5165531pgr.12.gmail; Tue, 15
 Oct 2019 13:30:49 -0700 (PDT)
X-Received: by 2002:a65:4942:: with SMTP id q2mr41652119pgs.315.1571171448888;
        Tue, 15 Oct 2019 13:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571171448; cv=none;
        d=google.com; s=arc-20160816;
        b=wJDEVECZwerZtqRdfDfThcXGCb9Ncdmpnn+/LbUknTKVP/RRuIEsp4GDD0gK3u1/98
         F3x2zHjgF5YIXoK4Z9tCz+8PYn+P/jsVFPJxcONbbzeRF+JRFE6CR6g7c7Po7dunYRxI
         KnBaXL9Lvos3M8DFeTvs+1BRmgzZK/48bEqp6iCSWqbXIFj0H1537sD/P/nhwECG0p86
         7gWlAcUiGX3eyiIl6tljK3zGeioUxoS5CAM0NCVICda5qnrSoM+OZqspEV30OyZja6OY
         hxx8R31cgwoakwTTxVI0dY2jt/CKVfXIF/AusXPHL3ZzQVveFMIzm7R3g6d78k6aPN4E
         8erw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hzk1qvTErm6MzlmjU++xwNdwuPNSLvMppNGGRMZH7Og=;
        b=n7UJjHyJ3O3WXWKEOW5J7EBrGV8PGZiZHArGnjaqxdpDUMKcisAQvLU0W7Uz+v4ocv
         7ELULoO/Nnt0uoI0mmLyQZGJ67lzcS4g+s75avKEORUP44USVsqMnV+11tGpKIXHk/Jz
         N/6BwFwbhzPmmRfivXfpdxmhcJoRIWUDKh8z5z6Ji3IfHcgmcjzEUyShaKFacw+afZhm
         YNa8GK4A5kXzCggB5sZsh0l1O1sW1x5neROlakaLTZfb3bp7EJx2FAjJKiFwpT0c8iwT
         LVCJsbBROL9IuYDHAbWIVapnB9OxUasgl3oqDXKV5RivvtwPkzjL8xDZpqZ7BDsIVqqz
         8Jyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IyN/hBPF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x137si682123pfd.1.2019.10.15.13.30.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p30so12845629pgl.2
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 13:30:48 -0700 (PDT)
X-Received: by 2002:a62:ee01:: with SMTP id e1mr41183643pfi.3.1571171448200;
 Tue, 15 Oct 2019 13:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com> <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
In-Reply-To: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 13:30:36 -0700
Message-ID: <CAKwvOdnAKNRH7NeOjCDN-ZayE2id_3=FtC5gh0UwoRNpQOaRDg@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IyN/hBPF";       spf=pass
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

On Mon, Oct 14, 2019 at 5:00 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Oct 07, 2019 at 04:47:20PM -0700, Sami Tolvanen wrote:
> > On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > Should the definition of the ALTERNATIVE macro
> > > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > > patch to not pass `1` as the final parameter?
> >
> > No, that's the default value for cfg in case the caller omits the
> > parameter, and it's still needed.
> >
> > > I get one error on linux-next that looks related:
> > > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > > -j71 arch/arm64/kvm/
> > > ...
> >
> > This patch only touches the inline assembly version (i.e. when
> > compiling without -no-integrated-as), while with AS=clang you are
> > using clang also for stand-alone assembly code. I believe some
> > additional work is needed before we can do that.
>
> Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?

I don't think so.

> afaict, you have to hack the top-level Makefile for that.

That's right.

$ make CC=clang

sets `-no-integrated-as` in the top level Makefile, unless `AS=clang`
was specified.  So today it's either Clang for inline+out of line, or
GAS for both, but we don't support mixing and matching (ie. GAS for
inline, Clang for out of line, or vice versa).

But older LTS kernels probably don't have the patch that ties the two
together, so Sami's patch addresses the removal of `-no-integrated-as`
for inline assembly (IIUC).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAKNRH7NeOjCDN-ZayE2id_3%3DFtC5gh0UwoRNpQOaRDg%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBB7Y3SDQMGQEUBKJY5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F7D3D03B3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:11:35 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id j25-20020aa7ca590000b029039c88110440sf11460664edt.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626815495; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOT1sWqPn0dVenCZo9j7h7iq3BR81V1vq0rWBozK/2bUgxwwXlalV46cxkLb9u1AX1
         ekCJa3QZjqi/B5f2v1QtMj5YhqJMt5TZILeuozcdcrRFl+YgijdScXWR/kcDIf2RBZ2v
         e9FPOS2z2HX5eAW+y0Zrr4CVMa5CN5hBp6s98ytQ8uF3ykbQpd9tbVdmWj5OOUltqGuw
         LY0Zoau54fev7dY5EwjJ+biL6K38MWHg70p/jbr8SF97ITuaMbWtVAHgGaZSYh5QceLC
         I6SdP0vOpkI0xukE3rX1QItmRjDE+uA5jpCiLxpvQ7xIHtN/0y4R6DSLttHBtLU6NA/7
         4HFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nX7gy7WsMwyPj4RGBrFNqpWG6NUAPM8ge2AajAeXgKE=;
        b=pZ7tpOwRhSqQmNICh0sCprBto1+U4W05D+bcejhxi5ehwZ2yPEL10i6BGCnEBUzilZ
         4RXIxBeF2L1GfIrKZAHim3w6pHAAEDpel1vm7DJPwa7yIxhnHYtrYG9dK91N/GTx+PcA
         m+zDpW68kk2Bb/EiuLQIXuYwULqvSM6KaedIUOh7GH2ERdOsQDtKO5ANPuQJZaVXsjmf
         /XWxSwg7M3J3+obb8U90DHogXDr2xyk46JKkNqu1lS7Okfg147Pw9BWSqS/Yt9H0NcZh
         kwX2qeR4klPEfQo0RWVRnUbSsyQ9DJXVnipnXEmoLUohKJBAksVdJM6dmHyr1kLL7xXA
         /1HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=XQbW4ZTf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nX7gy7WsMwyPj4RGBrFNqpWG6NUAPM8ge2AajAeXgKE=;
        b=M9OnJiNdud+DtN87qg2TjgkHFUEuP/rBY6sIF9oCUtPXxmiKzBeBstAaDEcjoqlQpP
         WmesTti7OXvkzmVsLaa29Jw4LoetwsRmi76fhQW69fAcIGiHKFe9ir6qvfAvT1blNWRk
         wvgpVbqAskF7QE54rMSnwo7Jso3xKpI4x36+UhGX9+/wItRhKnPL80FLH/3yNCjDpnAT
         6i7oPLBO6ROPSPju/ZM0fjO7Mb8aMC/bYiT4OPZS+08eWzssC4oXaTz4HWGUoRUgpz0Q
         bOCQPtoxfJcnU/C1QepBvIttH1dhFLiZFNo/SJxIqsstb/+O03hZQg3I7Bc3lLm8rPPB
         BakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nX7gy7WsMwyPj4RGBrFNqpWG6NUAPM8ge2AajAeXgKE=;
        b=ZmBgb4J9PuxKEDNW9zuD9tfH6sEY5S7UUL2XqSwzHrUuzuEQ8tRpDs4MMYVHRKUIop
         9wV5/b/g6wMwpG+yAg/kfk/efTNIljuaHHxuJlvIKYmEU9SaRAdc183YKLoU+zEXsVS9
         TO2c2qkXTRyv0ZTcxveyahTHKIVEDtXjBKDHQ4uOK4MSWnl71Yd7QIbuH/kqpP9l8LY6
         mkxhjBCABsIATJt/do6gEc5ri8sUYhn0N2a+3X1R30FcXctygTm8bClfQVCfb656Aa5f
         JiPxEW65pUu/7mqnnn0Q3H2HYvpYUwMyVJu1c6IdqbVFnjG6txr2Aar5R2oDkx/0LYhL
         zQeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302YxNw/nm29WoXA2VG+JOT94JzpGigxXZwrtqTVcvaEEmTFt4e
	Rw8Y17wyYmYNFkRsqNOHaIU=
X-Google-Smtp-Source: ABdhPJzn0Gq+j6Nan0mVkgLVEAX4RhB0Lb/zm4pSRnJs1N6UEtxCktODj+fcxyZl7dFGZlBuOO9soA==
X-Received: by 2002:a17:907:7808:: with SMTP id la8mr35112486ejc.13.1626815495487;
        Tue, 20 Jul 2021 14:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:2283:: with SMTP id cw3ls175864edb.3.gmail; Tue, 20
 Jul 2021 14:11:34 -0700 (PDT)
X-Received: by 2002:a05:6402:2317:: with SMTP id l23mr43522226eda.265.1626815494459;
        Tue, 20 Jul 2021 14:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626815494; cv=none;
        d=google.com; s=arc-20160816;
        b=Gi0Zt43o3HO53jRat7tXDtgBndUpPZY1NSk0fFpcxF3cAz8Iv0xHJp7dxsQqX7U4tX
         /Yf/JWeI4FQ0UKT5vPLCBkt8D3eq6SW6V63S/PZVIDLIxtpB2UWpdNfOfkJIiqcKTzR9
         0Bms6v0wjoovRr0Lys/iToGIbu17zbu+JjQUNylP8bsPsHeORxUkugRqc5oy309aonuz
         gWu/I6p8s+3g1YHNRKTjoASDZ5VfiE+dpHaRmrBo6SF8r+PpnU9MMF42vXpBxZzI6ZD6
         lzZ8ulj0i6bOaICejpugHUJhsdbllNJefL8LiQt7hIIcYIek2KEetJb/qiT4+OY/LXWT
         tF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+VH/k2Wu9OUzA+EFcoMXodKgYXPRRgkgoLXFJfyCQtg=;
        b=aSuLM/iFKGHKkOTupOVR1TioE6BBIneowXzqccgOZP92aRa1iCFQasYMDUEMWmUhjE
         Ih5QpyR2OfBRnMO89xSWgwoLrJlWeeLBY6xBfszaX0FmCd4z/lRGT4LzpCncK2OxdTHR
         b2YKufuASG8ZQEU1LigZv0DXRQC4XKuPat5cqeKyjzoDnXDp9X1ZjrgB2Ekybvan0bm8
         l0VYcLEx0AZtS6f6h05HAHEPSwIi6f43xhlAxphu4qhbcKsIgdTGNgG07nxaVDcBz4wo
         k268j8CHNUSLPfCpPbUSpzQlb2qAscNaREylf/GlMEQVW1EwfgoMM7PfTHgvv605/lqU
         S4iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=XQbW4ZTf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id d26si265628edr.3.2021.07.20.14.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id f30so75363lfj.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:11:34 -0700 (PDT)
X-Received: by 2002:a19:fc03:: with SMTP id a3mr23773067lfi.327.1626815493610;
        Tue, 20 Jul 2021 14:11:33 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id i27sm1739227lfl.50.2021.07.20.14.11.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:11:32 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id 8so20586lfp.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:11:32 -0700 (PDT)
X-Received: by 2002:a05:6512:3f82:: with SMTP id x2mr21979284lfa.421.1626815492489;
 Tue, 20 Jul 2021 14:11:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com> <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com>
In-Reply-To: <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Jul 2021 14:11:16 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjDdDPDa6mfoC-QM=NZULsmQfcUbF2RdwMq0J4Ztm+UAw@mail.gmail.com>
Message-ID: <CAHk-=wjDdDPDa6mfoC-QM=NZULsmQfcUbF2RdwMq0J4Ztm+UAw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=XQbW4ZTf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jul 20, 2021 at 1:52 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> >     -CC = $(CROSS_COMPILE)gcc
> >     +CC = $(CROSS_COMPILE)clang
>
> So you haven't been using LLD... :( (imagine using more than one
> thread to link, and being faster than ld.gold)

I started out just building my own clang - nothing else.

And now that I'm using the distro clang, the linker isn't even _close_
to a performance issue. Since clang is a big, slow, bloated pig.

I posted profiles and performance numbers of clang being three times
slower than gcc, and it was all just clang itself, not the linker. All
due to insanely expensive startup costs.

I suspect a lot of clang users build bloated C++ code where the time
to compile a single object file is so big that the startup costs don't
even show up. But for the (fairly) lean C kernel header files that
don't bring in millions of lines of headers for some template library,
startup costs are a big deal.

So honestly, I don't care at all about "imagine being faster than ld.gold".

I can only _dream_ of clang itself not being 3x slower than gcc.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjDdDPDa6mfoC-QM%3DNZULsmQfcUbF2RdwMq0J4Ztm%2BUAw%40mail.gmail.com.

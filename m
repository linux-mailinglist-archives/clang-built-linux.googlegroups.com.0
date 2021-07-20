Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBVFV3WDQMGQESUQKQVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2045A3D051D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 01:23:01 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id 5-20020a05651c12c5b0290193ec0f79cesf203683lje.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 16:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626823380; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVUVnla5g3wAarm+se8eBk5BsIPAjdtAzFBIwvmAQtikSSZ4Ag/CGwpBqd016hRlMt
         DUkWcGWdeuWl2Xhp2ds08ZDkhq45TDlu8pjYLKXru8SyILUvtMXSJ98cj5ezj9ap7jqK
         PxCbfgLbM5abknIM913T49HhHco46fBn2wE+0jj8seB0tm9dBzdzhsCV6DpnyF6AZdIa
         stNTaBYvbkEyKAzDGQs0IwG7Zd6Y5xsb4s11ViYjk+3AI3Al5zEjewFcAcO4Y/LE5fSv
         j0JCg/G8oa/jDKUiOkNE/6ji91C5iz6oRTJrSBv+h27Xb0OCBbd+E92bFWBI0cZ7LpSn
         MOjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=phfW+AOZvahv/D1RTjmGAQbuAWRBmeK8Q8R/nMPoA+U=;
        b=d+kRgpsK7tFWbb6GT0VV2k7cCySybKjtPcbbHx2CmQxsSvvv5XLKbTMfrBineDBxDZ
         y6I81Ik3rgtIgiJWXrS+GQMzcd/Y86kcHB2Zr9xMfW5ISLp+Rr0ROGgaYEJL5HHjkKIu
         fYmP6GSeW8hkK0/AGkZHUitQM19Q2kA6DmsOcRrGg6tZWgban4LT8F2cXQGqFwDkdlOq
         MS6wwsQao4RKqYfj4rltGumkzTA5J08Ei9L+fAX/JSy7zfpwxJ+WNrYyfyIN5EzIUCrf
         oTsq4XImyNYh7eK7sXUGi3Y4xeo3dmaPLI/YmiIMd2/0G94q1MvGkOPHNqh+ciOFba4z
         10GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=VOZraKhM;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=phfW+AOZvahv/D1RTjmGAQbuAWRBmeK8Q8R/nMPoA+U=;
        b=hIGButdDFc0RjrFNqA7HpAwqNrszOcDGjlxa6utxTIBPpfkglTiyxtgOPqzwInS7tS
         +TPLhPin8EYuT2OFCwx1Eu+1hSlOq6r8GaSlmpnHYJdyGTOCeMd9PV/kuJHKVp3oO9a6
         /LQIXjwE4EgWlxk11cwewTyQEgyuYGVim4kSzTgB6bIK2K+Zh3FnRxHbWfs3TE8fKHQQ
         zwPD0asYtNUv2QDc9tO90cX4NxvPXsuXEvZ0PYdh3VtzgvNlNYuXtCmkKMkczhtZVUb1
         VR5LThS36C2IKh4YR5Q9ckNHlnR0YeftmMA3yXk3GGGvo4RFFLMFQgCrZrmkvhcpG1CD
         TqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=phfW+AOZvahv/D1RTjmGAQbuAWRBmeK8Q8R/nMPoA+U=;
        b=hTv5aQ3QKxM5/XYyf0XrDZrvFZAbHscHvDGgBS6OTsEechKD0U7f1+jf5CEJyO/UXO
         CCuCPQOJsciQEgDwTAx9JrmuuDBs4uyX36CUFwkVNoGIJBxvvmLNYG7CXAFIB1Rour5I
         tMNxZab5pONRDeitWJMW3dNY2z2i/x1KedBoTRB4iSaPi3EsPgt+Q94rWWK/Z3iG4JjC
         gELsgwpxtLpg9upzU8E1CA2CQM3lIxh7T0BEkaIN5sTbmQxvlgjWSZD3MlZp97GPePn8
         WQI5v3ljUAM/OMSPJV49x7PtTir7zoRF2Ztx3fRu6tHXOulaC+Wyzm/N9MxCKY+2QNgg
         X9bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305Lqpm9y9tD3QvIjVz8cFBAg0ygv3ox4RaclksMdmIF+6HtOt0
	31UAqbcUSTairGr0hwfOv5U=
X-Google-Smtp-Source: ABdhPJwVNUHFFKhK76FZzNviDy7mf3DZ8aP9U9t6AzBlgxMuCvMxy5T8WbpKPgGQbFAo/huWXWHm9w==
X-Received: by 2002:a19:711b:: with SMTP id m27mr23684970lfc.247.1626823380690;
        Tue, 20 Jul 2021 16:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8999:: with SMTP id c25ls39918lji.5.gmail; Tue, 20 Jul
 2021 16:22:59 -0700 (PDT)
X-Received: by 2002:a2e:6e0b:: with SMTP id j11mr28935072ljc.464.1626823379563;
        Tue, 20 Jul 2021 16:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626823379; cv=none;
        d=google.com; s=arc-20160816;
        b=NEtS18hVB/Px8xLAGwKJMqLcFltkbZqH6lj0bzUsS7JyOF/Fqv2Qa8re0565Q0a6/Z
         heuiU10II9K633G3c3eQNnFSCyAYXIXWUsXf/z43eIdO6MIGLLzxS3keYgBUOefD0zfW
         Rk2EV4FEvATKfGt0If0ySAs+eJPl00dCD4XE3DPtBs9KHXjSVPgxrz9FjyvFfnTj0cmV
         YcQoFru6ad8m3LPJ2h6aEZHsbkLWRxAqWBJRIjzfig7Xm5d0Rnn6I3D5KR3XcWbC+rvm
         HF1LxEIkP2nyLoORmcdTr7TZwPsBUr/f2AsspeK0XnD8J/ZEOxbGPGZYTHBUfi+BKVes
         GlHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9UMNLgXsjce3FCFX2HrFE+hubu4C2zganX9QHeWUC5k=;
        b=BhsHQIJ+eWQx38MoqNA+g7udfWH9ghArElLIoFnt9vp6LXOmHfjJIM6tHmi0+QGrPq
         AdYKl+ERGyB8ngfvLxCvNfgDKbcQ/DoGElnbcF8n452JUFlTCnwoAdrvL9a6LMM8leY7
         Ldiq1OqakGzKboMBrso78veHYiSf7y7HAc9p2NYrdL53ZgvQ3giKdHOHI7jFzl9UDIjY
         lsbdkWITzQVDJ5VrBqE1A66zoaj75LL2S3zLVMXYZCExctKhgLiAl6xvuhW2SxC5uYP/
         crSwmxnAo4is2qofd9Wom3I3POVD3TU+2S66enU2N+Ew0U5e1BbWUYV6/Q2Xkdh+VUmM
         2R/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=VOZraKhM;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id c40si789657lfv.12.2021.07.20.16.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 16:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id e14so547937ljo.7
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 16:22:59 -0700 (PDT)
X-Received: by 2002:a2e:3508:: with SMTP id z8mr28554215ljz.7.1626823379186;
        Tue, 20 Jul 2021 16:22:59 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id e7sm1765775lft.30.2021.07.20.16.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 16:22:58 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id y42so465359lfa.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 16:22:58 -0700 (PDT)
X-Received: by 2002:a05:6512:404:: with SMTP id u4mr23082408lfk.40.1626823377989;
 Tue, 20 Jul 2021 16:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
 <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com> <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
In-Reply-To: <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Jul 2021 16:22:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj-TkHtkxSOLDzXhThvRCrRys3fo4T9=mtbUy+9kBGe4Q@mail.gmail.com>
Message-ID: <CAHk-=wj-TkHtkxSOLDzXhThvRCrRys3fo4T9=mtbUy+9kBGe4Q@mail.gmail.com>
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
 header.i=@linux-foundation.org header.s=google header.b=VOZraKhM;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jul 20, 2021 at 4:19 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> There are probably better ways to do this

Oh. In particular, it probably should use a '?=' in order to allow
overriding, and not expanding that $(shell git config..) thing every
time $(CC) is used.

Or something. I didn't really think about those things very much.
Think of that patch - as so many of my patches - as a starting point
and a "how about something like this".

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj-TkHtkxSOLDzXhThvRCrRys3fo4T9%3DmtbUy%2B9kBGe4Q%40mail.gmail.com.

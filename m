Return-Path: <clang-built-linux+bncBDAMN6NI5EERBBFX6GBQMGQELVT4VRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 22444363690
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 18:17:09 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id t14-20020adff04e0000b0290103307c23e1sf7635321wro.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 09:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618762628; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/zVT+YiT4qNEKsG/hKlzGKGOrQhfDwQR0+ILteQQmmCMvS8NOMqsWLKPt/sf9KSTy
         L/52e21MNSGjeaK4ff/QKFzpNv86Opm4rW5LdfFaHJJfU92Js7JvZdy1hncYFQkFZsbx
         ucKTmdckbxCCPoJe+Jx5st6Z8q3IU6roJQ1toy3PyK6e4PfdUUnEbPiNDTH3sZH+BRJ5
         U2Yz6xqqnKOfMNvfeEeQxBdbCxxv/QqsJPPWpyWGxXcZjKBQL91c+W96SuFf4LD+CV9f
         6k+fB4ZOP8N1E0eiuKcy/3d7O6NK3JUBTFZGw+J9c5RTgUfpPREew5ppDcH7m2CyW4zg
         QNXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=M1XaLBMzcnPXVn8Yr/GhutPl0HMIdDIzNy6wB/XzXY4=;
        b=SvZV+8ueJxsU/CcfbRmnyjA1udNCkvzM+mvy1cXfmeze2IXdXeHCxbwEaht7LOnO+i
         e+/UruBdRocdCkkaYc0+RUpLlrIY8MtnWG+OKLqMs8/fyYaNb+Hr7RsU4p3UMO4NCdZ8
         aDvupQT9Fk+PqMcTv4CGyyzcn+LZBUuc6hvYgHwEdyJi9jh8vZfO2DyoFu6QMfKcxjdQ
         f5x3hZ0ZK2uSKENLMGR7OwGgc0/rEWNWKRoUMG1HvMmEk0488tUYkhs/FGrPxQXyUWk1
         ENMncPFfel49JNKy2Tt8lWpk/9ORcJOmn8xq1LzZQ2M3lCt1x0P9dc14Q6fz0DGqHHJ+
         vChQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=rjgvKYr9;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M1XaLBMzcnPXVn8Yr/GhutPl0HMIdDIzNy6wB/XzXY4=;
        b=AOGetHn3lBS9J9gRQbXBjDGiJcdpv7DMdEVoAGp3vmUHF1Ml4D6hUYeIXtKcuIrKz9
         5Ao8OD4I5vAKEzSw0aiXJVh7coeO5jF0gwCcH4FjV1VAs6TCzckII66BbGFDh2GbWzyu
         +eC2kRZHe/HvlQs3vHJjBvb/g9d9PC2yKxI8ZEiu8iQc/0MwFNuSwfA2tXIyvXm0f7h+
         Oz62a3n/fwGZ6DMzOmiGxxgaP10CWaZK2gt66cxE+3wxtbAUi+HXmPUu/jUVGZD4oQzX
         5DoQX/djVTyurEk4yw3+cX5DdUOBkNuI8DduOWwdln07iwCoTFRaXI7tkd5PLhi82E0B
         xWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M1XaLBMzcnPXVn8Yr/GhutPl0HMIdDIzNy6wB/XzXY4=;
        b=Vjq78338C/oZtY95z1SATeiJzFlnAse8l3KsIciPDKhT6h28k+RlRk6cdtEQUqEakT
         tJzY78WdH+we3AuNj957sD9ZNLxz2RM02nU2Hui0+/0SDk2t7eaHqMqoEBYStPGzRsQH
         246+mmaAjWHVD9K1kqGaBV012sWgQ/igcoaf590fhLBgTqaobA2dm0zN5oMbVGEKslr8
         O15D04Jvv3wTdX96KKwqfsADg6j834eyyQtvDF53Cmk/AiBBdBlCkLGW23bpT8ZATswK
         /uSEfP+rspBgvoUQFr4FRUCodnS0zh3iRIdEZzx0pd0O+jB7f1C1C1RJGxfwgYZAedio
         p64Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tsXiTGEZSNXGtgmXLVPE5zQb8342NM0JgcIdhhfPWK4j+LBdx
	PU8ptpydNWEhHqvJHRaiGJo=
X-Google-Smtp-Source: ABdhPJz1KSZ4MavkEMFNDxUEUUwidmTEnjePeUotuENig05Gtkn7CAic4DbhNw1s/+s7gNOfJ2A0ng==
X-Received: by 2002:a5d:66cf:: with SMTP id k15mr9913258wrw.404.1618762628843;
        Sun, 18 Apr 2021 09:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls6711708wmp.1.gmail; Sun, 18
 Apr 2021 09:17:08 -0700 (PDT)
X-Received: by 2002:a05:600c:350f:: with SMTP id h15mr16972930wmq.181.1618762628013;
        Sun, 18 Apr 2021 09:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618762628; cv=none;
        d=google.com; s=arc-20160816;
        b=N0aH32m5MMa1+1PzcO7NNSkB1XIoEpON16+dfe1gTOTHugM/FY/sdXq1AsEQr3iXse
         4c+bo8ATbcLG22qIw+zlQpmUxxKjre35cF7ens0A5BzQOFUypPTt7z0KPQOwalCJwSne
         pOuxScoT5aCoiTSOQkKhavGi7C0CqTolWgUihX3PnmeUbWW+fzh1IngZcflFWU0C/bJe
         eV5ulAutIurads856QRBpNMiQiDiNy/TWmMMU6z4PJYKweIMMJotUENnb4FfVykRBbug
         1EJVxoJGVHTrzSsdnVbk55KNfm+g7HikssjSwyHFbgvOG9LEg1VMne4hqC7cwmJ9UBJF
         RRzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Ei/Yss7OFKyCWpzQUujDkbmPdYqeOzmRTpmtbyzHOFs=;
        b=kHpcmqqEge2UGDawFFOBMeeog32SlNfihXfSCBxXPfotz3uSqRBCE7ba1eKdFrYn86
         NkiJHokNV/Xar+Vd8R82N8DCZPx0zC92LZIhd6co68TrsFYxm6pDM4iUKLr6ssXIdezG
         ZxXcl3Z3Jt8aXpjCu8yLo6e1ecIqxSCNwrex4hxSjc4ickRs++vpONUT+yVOhvrY4Vx2
         b9IgPjSVXR8Rvp4A3z0Hkz+QfBohxy5Yf2ygox2ghmRu9gZuF5OAnEAYO+3g/gserjdj
         2iIERYBl5jlXS8E+Iby12eH0yVlUixPDW6+tZLgCYM1Y9lYRnnymXa/uBktx7BjxqcT+
         +Yjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=rjgvKYr9;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id p65si1028536wmp.0.2021.04.18.09.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 09:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Cc: Andy Lutomirski <luto@kernel.org>, Kees Cook <keescook@chromium.org>, David Laight <David.Laight@aculab.com>, Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
In-Reply-To: <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic> <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com> <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com> <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com> <202104161601.CFB2CCF84F@keescook> <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com> <877dl0sc2m.ffs@nanos.tec.linutronix.de> <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
Date: Sun, 18 Apr 2021 18:17:06 +0200
Message-ID: <871rb7sh31.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=rjgvKYr9;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Sat, Apr 17 2021 at 17:11, Andy Lutomirski wrote:
> On Sat, Apr 17, 2021 at 4:53 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>> which works for
>>
>>       foo = function_nocfi(bar);
>
> I agree in general.  But right now, we have, in asm/proto.h:
>
> void entry_SYSCALL_64(void);
>
> and that's pure nonsense.  Depending on your point of view,
> entry_SYSCALL_64 is a symbol that resolves to an integer or it's an
> array of bytes containing instructions, but it is most definitely not
> a function void (void).  So, regardless of any CFI stuff, I propose
> that we standardize our handling of prototypes of symbols that are
> opaque to the C compiler.  Here are a couple of choices:
>
> Easy one:
>
> extern u8 entry_SYSCALL_64[];
>
> Slightly more complicated:
>
> struct opaque_symbol;
> extern struct opaque_symbol entry_SYSCALL_64;
>
> The opaque_symbol variant avoids any possible confusion over the weird
> status of arrays in C, and it's hard to misuse, since struct
> opaque_symbol is an incomplete type.

Makes sense.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rb7sh31.ffs%40nanos.tec.linutronix.de.

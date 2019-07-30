Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFVJQHVAKGQEDCRYZDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8417AB06
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 16:30:49 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id b188sf16928877vsc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 07:30:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564497047; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9evBQHbsgLxxMdBFaR15GQNgnrOW3TYXGZbABhxXDBSCaEbLchBucNsRQ7Yf51T4Y
         IOdSwzuXhBBHgXn7dokdcHK7dHd4gR7S7zeKs4gRCVQFQiJzoO1X+vwBOgMizTQOHJwL
         me24B5c82so1drO2RqMh8s+L/h4tmOqjbjyPTthB1ePxUvLB0ChTpejNkfqK3TYrN6wT
         X5/RNM5WxztU9gv4ah3hS3gKe8W63K7utiffQGcd26Wuk7qVXl+q7xA8JkZE0fXlK768
         qlCKyOhMXtO29e44R1JoPbOPkRtBD1Lnu7ebT8J51eVET/sJV/kRglnqVPMHO83dQ/wO
         4LWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4a+Elqve5a2bLodIEQctvFBzcxz1qEDfrYq73RziKkQ=;
        b=HhxvnMcQE1EvxX7ArbtVCL0VMx176AOd2p3HCayzJDODAs5DrOHbLfQogBrJR+s+J9
         jcGL0aKVf5oZCPGVy6oU++zTE4uZDpdRy84eCpTPPBgRKeEpc8FwWMObxocIDlY8SBzZ
         1wFFbvQTmH7mzHWAam92VJ1+xBuRht3cyDgfdzQd4lMTOpw7opG02Wy2cJJDSH2/LSlX
         sC8BFCap9nfvi5ANedT4DzPnpH3caiCzVNBe2cRP53K7asME2yMH5LIh52Z+iR0L4is7
         0A5vm2M+9fKmU+rYlPypuLg8TtqWEFIPTg3ypd2LXAsWcv9PXmfpYDNrQ+8KMGd3LNKk
         BKDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4a+Elqve5a2bLodIEQctvFBzcxz1qEDfrYq73RziKkQ=;
        b=mw99GhXrgQRZsjWpSUYJ9rcngd5uL6nSdtFlbjWtLCGBfJ9lXyORfDLuy/5t+sR1tD
         xw/VsEHI43eiZAxdzK2gajHX0I2mCVxVzT/GmGMRIF8OHSIHDA6nNTTSRQngfKjAEgH1
         9j+/G3/PuMbdMZ/yvP18ExgtKMgpMWERjbNVdEdv3BUwavHKI8UEf1YWK6lpWm++x81S
         Lo5ek0457wLGdQEFiCtvmgOlDz1xDGeJkuZrNDEOLuWDRZjp0eLF6kB4zFB1ajfDyiDY
         no2n2zdmBVOvvzStatAveEyaHDyLrXI6fnNu1I4s2gUMYrnC1pbjd/nV3Rc+x461dZgT
         xAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4a+Elqve5a2bLodIEQctvFBzcxz1qEDfrYq73RziKkQ=;
        b=IjLT/KwYV5NCoSoN+9XR+mmaEtvyHf1woX4d55Jd+yEYbjCOnbWUtean9hV11mbbx/
         OwqSsrIER16grbUvYsPc749SOD6V4O3+4LdI2vIV+2C0jZ2EQW2nupmcZwhovVjZIGHm
         EhNWM4Bis27auIDHNu4AYtngmG8Jy7yICgKraC/K++GveyrCiL+1112+homficu0qjPg
         JuRpCSblSVCnSFysQLi1g2YU2//sQwSdXPeOrLUPoOQOiLV4fkqPfDSPkbL4mCuFXSAJ
         G0IzzOPGoOtd00FuDDxoYGyvvnfX0ChT9QXnaKN/wAQqnwebXx+EvecosoIJeL8xR1gY
         rG2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURJiSI4ga2devDxQ82XhZcdAl7AZqkl2riHtmqLMkiJtX5ElJ9
	y4qb9JCZF+F1ZZU1pvwBJwM=
X-Google-Smtp-Source: APXvYqzgqgVV4+r4K04jNc2DXRk9K5muj26KnglL4IF7YpSyOMB0w0jFwPpGo1S8Qm60DId2Evxeew==
X-Received: by 2002:a67:8d07:: with SMTP id p7mr73969806vsd.90.1564497046904;
        Tue, 30 Jul 2019 07:30:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8944:: with SMTP id l65ls8353621vsd.0.gmail; Tue, 30 Jul
 2019 07:30:46 -0700 (PDT)
X-Received: by 2002:a67:8a46:: with SMTP id m67mr73469105vsd.160.1564497046551;
        Tue, 30 Jul 2019 07:30:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564497046; cv=none;
        d=google.com; s=arc-20160816;
        b=cFQKNdQGdVd+5ZnANyzN0NI8VHGHFvs/vW3KVCaRY4eZyvMUpzn4LO1Pj7u0h4H8QV
         GMu1tXigq4431Fip/4pz4x9o1cuhYD7sDmQ9OZwporLw7m8oURUUQUSjxVVfC5gBUUFH
         aBAOxcPJ79+Wff/XWjEAKW71CH1g98VmCSMvMve/rAlLWTPBkZL2BM6b1JJjcCnZEtqO
         UxeG19MK6N2YapkbsTasOBefDH1Y8uPF1BSiztPZGH3/wm1ydTBA3mkkF/Hk7wGaWtXN
         HYtOlAlrt1fvKTwSZ3ZfiQfPe0ZvJTmCO0YiYOfzIMVlaVcL323T1J14vaM4hPdugY8U
         bYow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=S6k3LBxNyc8SfDfnGl8aFZmpFQ+XfoOprX/ZJ6nWfjo=;
        b=YrIy2mpPaNCQ4FFCKmqvzh+JqFEMU81fbZSkThyF9Lmti8kiaDyV05wHtpRpo+RIdl
         YIs4vFLQKyAZSt8YcSljLS1SuXZmQqDgh53ZwyDXtSofneQxuzfxrKw/eYyo7Kd/Y7Xu
         gv/7s/rNRlC8t086uOt/L0Lr1ROOc+3HRH/IxmrLZG+CDvYIGh/YyAh2V7o0eJe1WFWf
         QXiQaWkCrBiVG8/nNFV3TiimtddV9GDKpDXq3hy8nFYa94nyJ0g0RLYwbLPQNLIif+J6
         Pl10PjjP7skVrg+kdIQOX382yM0JvIeLqPFK3GFwMbs5wa2gxdMJHzlOtOfs3EJKO4C+
         ptew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id z67si3128761vsb.1.2019.07.30.07.30.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 07:30:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id a15so63194441qtn.7
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 07:30:46 -0700 (PDT)
X-Received: by 2002:aed:33a4:: with SMTP id v33mr79757414qtd.18.1564497045891;
 Tue, 30 Jul 2019 07:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org>
 <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com> <20190730134856.GO31406@gate.crashing.org>
In-Reply-To: <20190730134856.GO31406@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 16:30:29 +0200
Message-ID: <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, christophe leroy <christophe.leroy@c-s.fr>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Jul 30, 2019 at 3:49 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Jul 30, 2019 at 09:34:28AM +0200, Arnd Bergmann wrote:
> > Upon a second look, I think the issue is that the "Z" is an input argument
> > when it should be an output. clang decides that it can make a copy of the
> > input and pass that into the inline asm. This is not the most efficient
> > way, but it seems entirely correct according to the constraints.
>
> Most dcb* (and all icb*) do not change the memory pointed to.  The
> memory is an input here, logically as well, and that is obvious.

Ah, right. I had only thought of dcbz here, but you are right that using
an output makes little sense for the others.

readl() is another example where powerpc currently uses "Z" for an
input, which illustrates this even better.

> > Changing it to an output "=Z" constraint seems to make it work:
> >
> > https://godbolt.org/z/FwEqHf
> >
> > Clang still doesn't use the optimum form, but it passes the correct pointer.
>
> As I said many times already, LLVM does not seem to treat all asm
> operands as lvalues.  That is a bug.  And it is critical for memory
> operands for example, as should be obvious if you look at at for a few
> seconds (you pass *that* memory, not a copy of it).  The thing you pass
> has an identity.  It's an lvalue.  This is true for *all* inline asm
> operands, not just output operands and memory operands, but it is most
> obvious there.

From experimentation, I would guess that llvm handles "m" correctly, but
not "Z". See https://godbolt.org/z/uqfDx_ for another example.

> Or, LLVM might have a bug elsewhere.
>
> Either way, the asm is fine, and it has worked fine in GCC since
> forever.  Changing this constraint to be an output constraint would
> just be obfuscation (we could change *all* operands to *everything* to
> be inout ("+") constraints, and it won't affect correctness, just the
> reader's sanity).

I would still argue that for dcbz specifically, an output makes more
sense than an input, but as you say that does not solve the others.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2755_6xq453C2AePLW8BeQk_Jg%3DHfjB_F-zyVMnQDfdg%40mail.gmail.com.

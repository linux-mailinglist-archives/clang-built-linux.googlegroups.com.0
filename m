Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6O62L2AKGQEQYRRV2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFBE1A6C0E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 20:29:15 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id b14sf9201501pgi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 11:29:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586802553; cv=pass;
        d=google.com; s=arc-20160816;
        b=VaKzqNvNjoMc3BPWozWFGSvn+8mMwhw3228r3WSwp/pX9Wg8Xb8m6MWDRHNsoIUWGP
         CuTZxCUGeOkwGZ7jpVFK5Vaan+nYpp4+sbtw1liaTI0C7Fl5J21GwulMsMmDeCOac4dO
         +IPqeId6xKNe4RkkfYEaPKK9ttdifqlqpXv/qIEkkHnV+xR0URQO8mZk6hNczcJqxZfB
         0iv01u1C3x1zXV9H2MgPte2ZapUvSaw6DQRQMwFzR0hmOL7lS16n+EGOjm8VqM5dUZDf
         ARPXC5vokFFLjPZGwjmObIXdw2BYi/CS7rNVuzLzPvdNdSmgP51pUlmd16bziENxDdOo
         o+2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sGJGnSs/icRRORtevzLLhUCNaaxWzjK/hxILBmagIPs=;
        b=bjr/lpelqoQSQvfw1ytMkAB2nNjsjwietpJjZZwj4qVPX1N5kvLm541yiTrQO31Fc/
         QttSyvIz7lAIoacVNeRrCmxsXGIVAT91SyiAwhlsyKcS4XuDLqPos40VCPDBWvb/a6QM
         TFIvB8d9JPKYUsNevlTbJ+V3ge+qWM0OUm/7H5pZZf1K0uiif8lUOdQOzbOB+8BTNwez
         Rg4QTPtn+i7hOiEsBzHrWmvLTJNS4R/T10uRzqZm6gbfYcMZbTcF7eh88Nomj6jkeFX0
         bkG2SKaaNMCmZhGuIbbNNPWK/KH2lFwlxlVP5G7LJ/qJlYtUS39BAFVrD4obzlnUf7u8
         4Hzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KzdcNdOF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sGJGnSs/icRRORtevzLLhUCNaaxWzjK/hxILBmagIPs=;
        b=I2bMZ4vxiIsVBy3b8qZAjPbUdW9kXiNb3yowK79kFTWotQezsU4aD/6LnEq0t6HAHK
         lnKR87fXlJ4AWHTwGM9v0ORMgwqHdgB1PxryTX0GtqoUwzkkcXTyaAg9MvmQhxRiSRIP
         lyARokW78qSG95sTDt/krwK21FVgxXVJgTY8xDlxMDoQ7DqDhMO70mn2dkZxZVtiz2DH
         BSaaTGiWMt+OntnlXT9NhQi1mftGCo18Z2fDgkj3e1Q/Fu5XwA8rb833RqLnVwiVdQiY
         xuvXapJJlEF+zIXZq1lYpiU/gDtzFLw6CA+8fBGfi8nuRvUQC7Bk6i4AmlErAQBjuN2P
         qY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sGJGnSs/icRRORtevzLLhUCNaaxWzjK/hxILBmagIPs=;
        b=GqAC3DVr7rEKTBDdXzzy6bzEQ7A1EGMQzU6PzTGJs+GwkNKlAwvI513ql6eR+gjMl0
         uIEMR47qp0Frheqi6vPp8KrUeWJ10bk3n8c69cdHlfZW4A15psesc5q1XPEiSi1bS+EU
         Z4NYEL7FI2EPXfCNCUL0Uz58UlsAacSEKJI67Xuf5zuvkW8NZFQVKx1lO6zT2YK3NVrV
         eGO5TprFmzqDqabKneYtt1YmiTxcI/GkeZq+iEys3Z79QQqX1BOdQc9IRdBBJU3dQl/5
         bFSeo6UZtxNxKsFB6HsLpsnW98WJhIAgrFILBqWjc5vX1jr2rL9Xf6NZqKMe1id1UtFY
         c4NQ==
X-Gm-Message-State: AGi0Puab5VWHpoGkk5RGbBKZ9XJ8BCcdYHtUBAvKJFlqwZQ6eGPJ7+EB
	zbZLfHEfxzxzoRN3fbXLOiY=
X-Google-Smtp-Source: APiQypL65PzdVXY9xcpehZN0tD6IGbyW9HFLuaVE7LadRugnFdzP+tD4W0ikDdnGfpNleyA1ChgLFw==
X-Received: by 2002:a17:90a:e28e:: with SMTP id d14mr5137414pjz.29.1586802553345;
        Mon, 13 Apr 2020 11:29:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:23ce:: with SMTP id md14ls1212637pjb.1.canary-gmail;
 Mon, 13 Apr 2020 11:29:13 -0700 (PDT)
X-Received: by 2002:a17:90a:94c8:: with SMTP id j8mr23838364pjw.155.1586802552929;
        Mon, 13 Apr 2020 11:29:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586802552; cv=none;
        d=google.com; s=arc-20160816;
        b=E81/NufkCcTgsLf0Hv3NEaLFo1pDvF0raMuhdtfqLLmXqKhJE1g6Cq4dNPV/xSrsG5
         WhSWpVD+J3AUNU3j1jDtpEfOxsdfu3xrwNTPqcf2AyLiNgO6j80pPrsmSEW1Gxz59gDL
         SiZlv27LehgjUG89F0rcKeBS1A8AN7raJDAdx2q/N1Qq2iejlowG/3+eUeyC9yy1XDrx
         yTSWxH3NH85HyYetES5xwVr82AGXyL0yS0X7EDHTFyHPbCxSYktgYcCT6rtVtjAMQG+B
         c4Rl+LS+NpF4rJOIqkSmLtJhk5eeRdHwfz+fi5tLXPKUYwSi4jjZgzGNNojCBkxviuUo
         fMQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=okqkFQ9Y/XR2Uylj/PBU9rQT9Y97Xsyzid6BJbXKYDw=;
        b=uS0zHVWtwk6tzNtCifdfTUkh8vQc4Ec56dyfeRhKGbFwDLpvaD2vuvTZUV3t1x3SBL
         K/cV25qpAXxSl1ouSC28y/OG2yojZO8VygEfRQO8AcvK9Sgh015b8mbA0KgjG6aEgZ0l
         53KpODW2a4oFjRS/olAv8J3qpMlwfWU5PtETI8XqeKH0ItEy97c1BajKSOyJY8EV1IlT
         LqukeTF71RR1gXrCmrjLO4EmdcTMgm8Zth1iODr6Ya3S8HhdKHRPoae7iCCgc+/8LX1U
         R3DlURzx7FDUVCNDZZsCSKAQbANxoNLW1amB6vt4xFdgGwg7VRwQW8GQanvNOtoJXoF1
         SdJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KzdcNdOF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c207si612997pfc.3.2020.04.13.11.29.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 11:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t11so2874375pgg.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 11:29:12 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr18865698pfa.39.1586802552376;
 Mon, 13 Apr 2020 11:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200407190558.196865-1-caij2003@gmail.com>
In-Reply-To: <20200407190558.196865-1-caij2003@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 11:29:00 -0700
Message-ID: <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
Subject: Re: [PATCH] ARM: replace the sole use of a symbol with its definition
To: Jian Cai <caij2003@gmail.com>
Cc: Manoj Gupta <manojgupta@google.com>, Stefan Agner <stefan@agner.ch>, 
	Russell King <linux@armlinux.org.uk>, Enrico Weigelt <info@metux.net>, 
	Kate Stewart <kstewart@linuxfoundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KzdcNdOF;       spf=pass
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

On Tue, Apr 7, 2020 at 12:09 PM Jian Cai <caij2003@gmail.com> wrote:
>
> ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
> involving another symbol. The macro gets expanded twice when
> arch/arm/kernel/sleep.S is assembled, creating a scenario where
> up_b_offset is set to another expression involving symbols while its
> current value is based on symbols. LLVM integrated assembler does not
> allow such cases, and based on the documentation of binutils, "Values
> that are based on expressions involving other symbols are allowed, but
> some targets may restrict this to only being done once per assembly", so
> it may be better to avoid such cases as it is not clearly stated which
> targets should support or disallow them. The fix in this case is simple,
> as up_b_offset has only one use, so we can replace the use with the
> definition and get rid of up_b_offset.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>

Probably didn't need the extra parens, but it's fine (unless another
reviewer would like a v2).  Maybe Stefan has some thoughts?
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Please add Link tags if these correspond to issues in our link
tracker, they help us track when and where patches land.
Link: https://github.com/ClangBuiltLinux/linux/issues/920

> ---
>  arch/arm/include/asm/assembler.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 99929122dad7..adee13126c62 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -269,10 +269,9 @@
>         .endif                                                  ;\
>         .popsection
>  #define ALT_UP_B(label)                                        \
> -       .equ    up_b_offset, label - 9998b                      ;\
>         .pushsection ".alt.smp.init", "a"                       ;\
>         .long   9998b                                           ;\
> -       W(b)    . + up_b_offset                                 ;\
> +       W(b)    . + (label - 9998b)                                     ;\
>         .popsection
>  #else
>  #define ALT_SMP(instr...)
> --
> 2.26.0.292.g33ef6b2f38-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR%2BAWLLp8RZK2zHGsw%40mail.gmail.com.

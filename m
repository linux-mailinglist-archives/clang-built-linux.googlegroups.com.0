Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIFQ7PZAKGQEP6ZBDEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id DB218178586
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 23:20:17 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id x124sf1285507vkf.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 14:20:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583274016; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJK4JyN2ZnhOZpZczf+RaM6uR4OJIzUP3PFVeLdaLzEkzv/H7+fAgn7vw185jqFakL
         KkL0PkL9sjG8QLTofiCIJzHsRHbSdnia+cdvJylHYHz5lKdIKrNR1bT7kJb35cVxNQg4
         KKImVLFvi2ZWefglzXPyQQ8TWCzKJqDtQMG9O3x/fn/Q6dXib3IaabkP7V9LrG12Ql+a
         ZsZ6re6yosfUvrSOpIyl/bK0CSN5Zxwy8OrDc+X5x3Xa1Ae80dauC7lvGYZZBsaRCNIQ
         AK75991bmm3EWcjANSJs3OKyKbu1Ciq1WnRh4kzlXahWWy5GOclwC2QTtmnpqgqrvMV4
         yl4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bUZutpSOY+BV+9hCZNBAMnE8g3TFjeyIO3fmZqj5ZP4=;
        b=pFz/Azx+wdVsR8E9mUj9l71lnsALqUXpvZ63+tuNFox1oSf67yvoNj2cALIga7JiBu
         b1bapSgBgqomhCKaDHwaoRRBxKWa42FcIUxAYEinhNdlDxCPHX5pN+Xd1FmtDYxrSu2q
         NEEqgXcsyHHsZaoCzb9a5GDCfjQzbOFN8CRjusUl7Bf53c6BxAYN2veAzsZoi1+l/8Ax
         ImyBeCgdLN7/Zu1FM8zouDTiX4b0srm7xlR4aYX18jRAlgH/FxZk3MF5kOyyCYwF2QJ4
         s5c+ONHnHPoOAgFbDaYzo579OIQ20v6OfARmitD8HuZ0Ihb/YAOYkJDu76PhI4Z5nQBJ
         YfgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JoEYFdqH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUZutpSOY+BV+9hCZNBAMnE8g3TFjeyIO3fmZqj5ZP4=;
        b=Y5fK/l4Tn/DJSMbl7A7jwd2LwNRGTqUr+a3tYG6m5qN3nsfCX7iVyHk9rxjML0qbBL
         58VwdP1ISk/3D2dr17d+mEDDFGwGlW/ZKUmJ9AU7joFfh7f894nLH2foiSpbVzkrxO3C
         WtLD2LlzO7YAxOvjovhOYXIPOLDDHnD5ddNJq02HM/hr+0MpXJjm4F0m9qHsfUfvrKvF
         gbWrmymOn+Y98e5aAhJYhc2sMY5hMiWU1ZiPq888QzFE6xEFE1lfxnAkurny4XIb8lXA
         IwqTAKDbqt8aYHtnCvKcj2eHZwnOOHgZEBFzsPAcmGJEKNn2FzfHjzQHrQTERaLBfGHG
         QPlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUZutpSOY+BV+9hCZNBAMnE8g3TFjeyIO3fmZqj5ZP4=;
        b=Ig3YzsPoFwFODr85L5wKmpKdU/VlaqpiJ8elfnhi3wvsz43HJuWQ7TJG3srQ+IX/I0
         /laXpEq0mRHgiURaOkI29wrXB/HGC0KuGOCr2GYV3M4o1jdr8ojOsCYk/u0nHKDtCNvw
         COkY8OPKiB2suuTkUFD/u9s+419gdQHAM7dpSaIEJ5tsDToqKc+fyUH+z94H6bWJ80he
         SAk7qNsB6AOFszEHZ7i8OB6xjuQM1V+0ak8RbdYVt1fBthfFWCdUuOvuTCP4h7vCYH+P
         va0gvQohtxfkqpNAhmJ/uBYXDPSNtrFDd3PoRBzGYJyBvUr7qMSmX2j/fHMmK64oybms
         +dSw==
X-Gm-Message-State: ANhLgQ29Bl+KkriXB2eLF5d1IJjk/Jo4HNRQ8aKUugpcf1rUj6b7qyQN
	qSllEs8Z3nM8Nh1aVWXcipI=
X-Google-Smtp-Source: ADFU+vuH8P0B7V6nZltBqP/L3zABKRGiZixSGIupdXpfSoWzLVO3Av6zzKvBTx9GiustKbrgDXLvpA==
X-Received: by 2002:ac5:c297:: with SMTP id h23mr4084406vkk.92.1583274016323;
        Tue, 03 Mar 2020 14:20:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:eb05:: with SMTP id a5ls675556vso.6.gmail; Tue, 03 Mar
 2020 14:20:15 -0800 (PST)
X-Received: by 2002:a05:6102:363:: with SMTP id f3mr102295vsa.170.1583274015923;
        Tue, 03 Mar 2020 14:20:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583274015; cv=none;
        d=google.com; s=arc-20160816;
        b=nFpjA2KynBrzw+E1RMDoCjWILqyiPJ0fOWFK+kCnuHiUYmrYkpSA6hnnh58A2ZqLKv
         W1b7WThK6s6dOl4jaU3wLArlrOFNvVBbBrAPT/tDXpVyqGuQzA0uvc7jXideYSc1O75G
         NakDJWwI1zBRr0rK61eLTUGxt9PFOH5ehVkpO2GCVexdq3RPYcobUoQovpUoFrYiZ1mN
         /OwszIMYaaQdXLIYS8h7I8DxZHGHgsDFjCbuMr19E9A1AiuA35O9E/WQm69CQce+APsG
         SldCKKpuReWI+1zCMZK82nfRnun1iChZRfKQNQQ7f63qPfTbIOh0s0Xvp/VHfKbMNYX0
         gS2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A0VgoCajNQtcqmr3sAxZ7zwAICIrcd2LUoNAPqwJhMc=;
        b=y5V7G9Hm59VEHSpSoDVy/xWGMh3HSbOZM4c1pbyo4qJTfM7dM9Ax80eo+ivWAihLSS
         Dyu+Hr5JTWhZjzBsVLGrs2xMErwZ1rXdYqjBXmZXd6Noa9YKc7F0YjrEAO+MXULcyzle
         C9nuagjYOnFDIrPU9ja85D/oYrj7WrnRmqJH/rMlU+4nkKBqg0iT1GBCKp7Vs9QL+ZZj
         ty6G2AmpCAefmcgY4zxzXhIRLqTUjV2xN7aPFysU/B2j0f1/GnJOKas31lj3ZFihBACK
         s17sXqfmgvBA2h5/k/65to4R7GQ416sT85v+cy2XoVUJJyVEuD/1T9A+cYK52DXwqgd5
         Ap+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JoEYFdqH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s74si369vkb.5.2020.03.03.14.20.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 14:20:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id p14so2218200pfn.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 14:20:15 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr6303201pfa.165.1583274014576;
 Tue, 03 Mar 2020 14:20:14 -0800 (PST)
MIME-Version: 1.0
References: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
In-Reply-To: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Mar 2020 14:20:03 -0800
Message-ID: <CAKwvOdmvOq9X3zR17TsEZpJ83BYC1vX=pYMPyZ6Db3xeHUxzag@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers
 are referenced
To: Stefan Agner <stefan@agner.ch>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Russell King <linux@armlinux.org.uk>, Manoj Gupta <manojgupta@google.com>, 
	Jian Cai <jiancai@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard.Biesheuvel@arm.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JoEYFdqH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Sun, Mar 1, 2020 at 3:37 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Building ARMv7 with Clang's integrated assembler leads to errors such
> as:
> arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
>  t3l .req d16
>           ^
>
> Since no FPU has selected yet Clang considers d16 not a valid register.
> Moving the FPU directive on-top allows Clang to parse the registers and
> allows to successfully build this file with Clang's integrated assembler.

Certainly a side effect of having a single pass assembler...This does
fix what otherwise looks like a slew of errors for us, thanks for the
patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>



>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/crypto/ghash-ce-core.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
> index 534c9647726d..9f51e3fa4526 100644
> --- a/arch/arm/crypto/ghash-ce-core.S
> +++ b/arch/arm/crypto/ghash-ce-core.S
> @@ -8,6 +8,9 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> +       .arch           armv8-a
> +       .fpu            crypto-neon-fp-armv8
> +
>         SHASH           .req    q0
>         T1              .req    q1
>         XL              .req    q2
> @@ -88,8 +91,6 @@
>         T3_H            .req    d17
>
>         .text
> -       .arch           armv8-a
> -       .fpu            crypto-neon-fp-armv8
>
>         .macro          __pmull_p64, rd, rn, rm, b1, b2, b3, b4
>         vmull.p64       \rd, \rn, \rm
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan%40agner.ch.



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmvOq9X3zR17TsEZpJ83BYC1vX%3DpYMPyZ6Db3xeHUxzag%40mail.gmail.com.

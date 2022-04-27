Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6FEU2JQMGQENLLOJCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 444335121E7
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 20:59:05 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id b24-20020a50e798000000b0041631767675sf1455167edn.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 11:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651085945; cv=pass;
        d=google.com; s=arc-20160816;
        b=JshKlmrbmyNGGjLFOWE4Sl5iPPIIKKEpHOTsYwo9eelaK4qWLQA1bI3wJeQdVnEzhB
         0vklaXL5Hkd2Fkgl09dYU4KioXonxb4Un8lNoDJxJw/hbjq7413oQcTEeQ+ewAapiwdt
         g8m8Y6SxDUmg0OCP3nevmcMtOFzJZ6KuKm6LHphiU6P4W9X3yZtO3Ac5VXfb2IESd7dN
         iccWupcEbZneTx01VvowLzHBI/Fqu3ZiU3zzDqlYDHj9F1yj4Yf6D3xJ1TFksQXOFpVD
         PHtGk6difruxDDc/updpDqAU0BqZIWsM0o8R660gQu6WgbI3lzKL9sWw0bkCPgR0v7pM
         KP7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xpDQWAHyfBCU/Ml92BKAAQTtIKopin19eO7w8/4nYKE=;
        b=p/nbUAKrK1Dk9T9zVEzsWfkImAKWew2Hq3O6ytTVCSqoC9Cn53mmMCm4VLzjFNVr9R
         QGG4Ye7yB4X3ddQyjDJULqsnfLgxPLYYg2VmD3THq5PD1a0Bhbl+mlXNMGPlL/NjZisu
         U76LgQgVqK0bkH+KMMGcZNZOTvmXOpF9JrOyCdqNlCgC3lgqqvBugGRzSigR9wsxCOhK
         3XZFLUYNAauSpTx1mrRrHBstLSkkGfoJtO2SsM0KXeu5RsSy/9nrdR2YHkCjYQ9XM3ah
         +dCdY8iwmJXfs2YxPkiWPcyIkS801iZvtu+p6YfINfZKRfjumcMMyzuwCA4uYX4RxFMd
         FzYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=H5RNu8cV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xpDQWAHyfBCU/Ml92BKAAQTtIKopin19eO7w8/4nYKE=;
        b=lqrW62RkaTShqD0PWTk0dIPZh2K0iz3bPnO0pI3RjqGteb6CF2KwAJhVYqfiuEAeyV
         UYZGhITdfhxCpBSv06Jm3JMZYjp09WVdgNI2w2YdTh7LzXhmzTAqbQjCvJUkYu3gopKP
         hFBzOSY7+PWw+tREHoT1VOlHNIghl/zDPZvWu5N2LRieHSUwnv4SgEQ5LPId8uQvv+dz
         gZEQWkw0TDm3fyoiAdXSZx0oMPyIS26Xkho70IfFLAAwYc228oIFhoBcyLFNjDbh90pD
         /0wkauJnXLvecMYS1bKsfcVFI6KRWNnbpiKfCKtbtmnr6+vmGj7ASONHQ/FebXTV28+l
         0dJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xpDQWAHyfBCU/Ml92BKAAQTtIKopin19eO7w8/4nYKE=;
        b=twRhE6wBbjqUa6gZAKTz9yIM09iT4rpGgXOh+53XOXchaljo/mrO2JkcqraIBsIj4z
         K+3pD5dW3Fbv6ql2hqA4jVFgzvVXV2QHd/dtHqdoqdYr6axLrF/G844itq9S+6HnZ34B
         bYwL+iIozsmAowZZ617/GMQ4nWl/fuaGLazLyXIDinCtoAYstjyC7tQDS4fGaeVVUAcs
         NPNgQK4JQeTxZZzEn7Y5Y7zgr5d92YQuNfO3A9UNQM0xa3UrMpZTW/vjplrbXJDLQMtx
         0goiC8wifJfjehc6/P2ly/HdEd3+ZyYpufhe5P65CZtiPhTZOKL90IadERQmOLwbeR/D
         7EGw==
X-Gm-Message-State: AOAM531wuuyIEgYindUmlu8Q1F5ovavtlHg0uw0J75i01k4jm8lusb4p
	zaF/avTiYWOmXXIKZ9p5XRc=
X-Google-Smtp-Source: ABdhPJyUIOlFxx4hyqgqKyncNNH1+BoRz1efuXFsLlzUY4mAEwCoCaxzk6EeTTOJ8XMDm43bvrfwIw==
X-Received: by 2002:a17:907:7f0f:b0:6f0:24b6:3f6d with SMTP id qf15-20020a1709077f0f00b006f024b63f6dmr27611282ejc.254.1651085944750;
        Wed, 27 Apr 2022 11:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:7b8d:b0:6f3:a9c3:6052 with SMTP id
 ne13-20020a1709077b8d00b006f3a9c36052ls4046574ejc.0.gmail; Wed, 27 Apr 2022
 11:59:03 -0700 (PDT)
X-Received: by 2002:a17:907:6289:b0:6e0:eb0c:8ee7 with SMTP id nd9-20020a170907628900b006e0eb0c8ee7mr26454896ejc.245.1651085943748;
        Wed, 27 Apr 2022 11:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651085943; cv=none;
        d=google.com; s=arc-20160816;
        b=e90nFtbYJ4dpeZ5DpCeYnB4zDFZHuPP5upqCDVwfQAsZL8b+C4aliUo6GzT3WSOHXM
         PvrkbjZLtoypKkx7Xn/KTcS0qn2xAWXmU/vc3KRLqHKklhnJ5PMFR6peOWfP2+3+JAcL
         4ZditOMvynSMJu+ZB+hOaMa4Ra5pWoR2ZtGv6zG1cFCfXqddFtgvpAlKmzKKD1pC0PO9
         UQGoyMUXNe7uFlir17DuMGkc/bY3ame7/S/V+jwqblg1Zii5aVYrjLMoQDmc2jXEavCj
         1etmyqL6b+VpuoPlAJcNvcVmuSDpFwmPBFs0zPQjfKbmwJonsUZrAHLVbKqOUFs3XWFh
         CGCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9IumVUa0ydFEog+2D/KGlBaYuZIIc/+ya7CxXVIuaRk=;
        b=skK5rQjHz8Nsdk8Y5RZaipIf4LKFqV0F2qX4VV5692cESUx0kfWsczA++nYiuChxpn
         yzfLkXwhjJeIpreWTqKQerVeeclOicF+kL3UkndF0ge5G9krY2S5wxotdJY9k2qS9vGl
         nMCqGHAWE5vy3yTf8PyuFtw17f/rBJti3zcjMnFl2h+4gTT9Sff/RSfWL9brwH9mSVL1
         33snkcQ8qkvYSxhRXdoQ2Hu7eLhtg0J39qM06LL9xGzZEeY92VJSfl0gML/siCW2Iabw
         BY1mNO1owD/n8DMhoYV3Klva/FCSIwFmUD4RnWBOx/jvPqsfalKLbxV13D34/6owMezn
         0JZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=H5RNu8cV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id ca7-20020aa7cd67000000b00425b0722545si118095edb.3.2022.04.27.11.59.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 11:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id p12so4778051lfs.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 11:59:03 -0700 (PDT)
X-Received: by 2002:ac2:5223:0:b0:448:5100:e427 with SMTP id
 i3-20020ac25223000000b004485100e427mr21389557lfl.87.1651085943019; Wed, 27
 Apr 2022 11:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-2-ardb@kernel.org>
In-Reply-To: <20220427171241.2426592-2-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Apr 2022 11:58:51 -0700
Message-ID: <CAKwvOdkzrTRK9y6zmGqqmZM8RvTktomDkUh7CMop0+fAr1Y8hg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] arm64: jump_label: use more precise asm constraints
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	will@kernel.org, catalin.marinas@arm.com, keescook@chromium.org, 
	mark.rutland@arm.com, nathan@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=H5RNu8cV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

On Wed, Apr 27, 2022 at 10:13 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> In order to set bit #0 of the struct static_key pointer in the the jump
> label struct, we currently cast the pointer to char[], and take the
> address of either the 0th or 1st array member, depending on the value of
> 'branch'. This works but creates problems with -fpie code generation:
> GCC complains about the constraint being unsatisfiable, and Clang
> miscompiles the code in a way that causes stability issues (immediate
> panic on 'attempt to kill init')

Any more info on the "miscompile?" Perhaps worth an upstream bug report?

>
> So instead, pass the struct static_key reference and the 'branch'
> immediate individually, in a way that satisfies both GCC and Clang (GCC
> wants the 'S' constraint, whereas Clang wants the 'i' constraint for
> argument %0)

Anything we can do to improve Clang's handling of S constraints?
https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Constraints
>> An absolute symbolic address or a label reference

>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/include/asm/jump_label.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
> index cea441b6aa5d..f741bbacf175 100644
> --- a/arch/arm64/include/asm/jump_label.h
> +++ b/arch/arm64/include/asm/jump_label.h
> @@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
>                  "      .pushsection    __jump_table, \"aw\"    \n\t"
>                  "      .align          3                       \n\t"
>                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> -                "      .quad           %c0 - .                 \n\t"
> +                "      .quad           %c0 - . + %1            \n\t"

If %1 is "i" constrained, then I think we can use the %c output
template for it as well?
https://gcc.gnu.org/onlinedocs/gccint/Output-Template.html

Is the expression clearer if we keep the `- .` at the end of each expression?

>                  "      .popsection                             \n\t"
> -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> +                :  :  "Si"(key), "i"(branch) :  : l_yes);
>
>         return false;
>  l_yes:
> @@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
>                  "      .pushsection    __jump_table, \"aw\"    \n\t"
>                  "      .align          3                       \n\t"
>                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> -                "      .quad           %c0 - .                 \n\t"
> +                "      .quad           %c0 - . + %1            \n\t"
>                  "      .popsection                             \n\t"
> -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> +                :  :  "Si"(key), "i"(branch) :  : l_yes);
>
>         return false;
>  l_yes:
> --
> 2.30.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzrTRK9y6zmGqqmZM8RvTktomDkUh7CMop0%2BfAr1Y8hg%40mail.gmail.com.

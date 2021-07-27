Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEQQGEAMGQEJ6XQTVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB043D7C9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:53:33 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c16-20020aa7d6100000b02903bc4c2a387bsf198041edr.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:53:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627408413; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+7uDBIgTMkfn0kyZg/pasnSMQn4bnZfwB0x71TApl9SulxXUcoTHc74ai1U+NX9pQ
         6ZMJuezra4vyHqwNwVyRegOSMmWs6xhcTfYrYg1hcxg+jRum8Ge2cDybv/Vr3mZ7ElVW
         I0y++UFPkh4pU093iWM2Hnbvqo1fL6aBiRDx1TuGL7KWsR6PIHsh2iEE24atdNFSqNNF
         LsyZRi61CFjB1ly+g/GhbuYeqMHpz/Z3qaQZSH6C+B/JNaxJMPKt7v7k1OJA4BXscnwe
         iT8lCnEgIWmEZGbe5VGco5UPIOCcg7yJeFpjq9HacPDzJddUV/W7Ai7n0Ulb0sXSyrZ2
         WEig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wjILRtW54+tdc6gycU2VY8dwxTU7i40ZMZ7itmYhA4g=;
        b=x+ThqE8Nh3GZP+ntGieziLroy3Ayhu9KTtkXjkVLJLPEBH7sY8U6TK8JiCdJ4hRSnL
         rPrfybNZN8eFhJerdruJ1KdBPxVaErKNpM6e5vVkSOSAc6pYGXUVGN8fikVYmFJFC5DF
         GNuHNN1fMWAJxdqgsjYU88LH9GvVKW7bq6QodadHm8TCwt12QQkJXD7H3NObSaNTPSHL
         RbNnjVMmv5+ULKizBz+KxvuhqbI0gUVKtoIH4tHpcvs9Xj2woov5nrji+OtPibcd7+ZY
         xuHd6bgpIEyWbBbvHK8Fusn48zyXT5YoJrSvvVLB2XPTBOBKczL1lhmBeSSvZ1C4ycoe
         QG+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V2PLR/CA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjILRtW54+tdc6gycU2VY8dwxTU7i40ZMZ7itmYhA4g=;
        b=Sx+NLid3F8AD2BCD7S+aQ7Dx/sHz+ZrrkzufLfpj2xIbnTt6ZOqTcCeqwks6zBH8P9
         ucF5/yIffABrC/jJm/G08mZQt7a/m6ZNrsIgEZBb8THk8hhpTtodOsZhjUE5RN5rEGZi
         MOcxhPzvgtcw6XCBnTCfbv7tltgDDeHMmXb8KJbHuWZS1qChS+oWDZ8UfxrZUA6f4a/w
         vxG+jK5F9sQAg2uxsn4kNCyCI46eI97w47C+4OrCKqmdpOWqTBia0IMrXn3mT9G2bAAA
         HBY8BVfQnRa6uJR3aRaBIypABYscksrj93HuWfCQNI9TJarCrotHITV33TFeO2tilsiT
         GklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjILRtW54+tdc6gycU2VY8dwxTU7i40ZMZ7itmYhA4g=;
        b=nGeL0h0rg6KTBLiVQ5bc5BJZzquQuvr8iDs2AGgPZyYVCLcvMcHHIECuCOvO9NhZRE
         A1ZzZ5r8m/c2IS0AdJF8bWCqjYhSEEtanYVqv+5AH9TigNT6ydKoMjn/adLa9Bnzz+Sa
         KB8WI+fchCfsAj2/mTttBmwmAPvBAhq9OWeRcF/lw1okqfQI3DScLP8JYCdRBMH28lEf
         GxAL2czYJDp2sIRTaobsKZDgoxTJ8aKwNwbd3+x+mtQPmrz7gZeKqYhb0vrWMXITsw16
         rD9y7XQqZTBljyAnpFAT5Z9JyT3oncKy2lOhfRqlSsol/bpJg2UhJWGEv7pfG+4KWyhL
         /gHQ==
X-Gm-Message-State: AOAM530TGYk/6MZdfMk7iJf+m11kKb1Wwqr7+BuJdHBpWIqdYnW80BSp
	l+bv9aCL+CGS4ZKsmA++Rro=
X-Google-Smtp-Source: ABdhPJwobhlxiinEp3H4NynE5/pkcCaTVRCAKy9LsBUGysdeOnqG3NZkTGc/83W5/rz6RyJCcqYnrg==
X-Received: by 2002:a17:906:2b58:: with SMTP id b24mr22055862ejg.141.1627408413046;
        Tue, 27 Jul 2021 10:53:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1062581eds.2.gmail; Tue, 27 Jul
 2021 10:53:32 -0700 (PDT)
X-Received: by 2002:aa7:d48f:: with SMTP id b15mr29623419edr.271.1627408412143;
        Tue, 27 Jul 2021 10:53:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627408412; cv=none;
        d=google.com; s=arc-20160816;
        b=aeod31UTJzDYWscCS6kJ3+GFAHbrdTsQfdXOl1F0C/apFx1sIfCPktO0+FIGvSR6t/
         EsvvQWmMOmpgCFcO/PpyVRPGGVVWzHpJbc3Q0qtJptfWbRHBgdwcjT2q2EpoXq8DPQdO
         sHTCxrlP8sAD+Ty3QNHga0QYh9VINWqnZPN29RHzJuKBf55hjKIabT3hTdEfXzNDDIaR
         vewLTqhgzwIwcCD8UBd0Y6trLgPhwJiru9WX8R7deGX5tLllJsrMY7bglvcrUmvqJ5pm
         6CqXtkk2vYpVAqSebUDZKIgzKSp46k2MIYrhqPbjbE9Y2H5vD/2CZIQZqRwaLNOeDDt8
         1aAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Awr/4hVZSQpR09EKl8Cxh+0W9sPXqPB7mEdVNsZFybE=;
        b=kPnkpkPu6iwtRhBSG4DOVvON51VBW5Z8aIeZvL0CZYPzqsrO/hKV9HNr3Y+Z0c+rze
         vR4NVv1aHmX6oPfPTYul3o2qpn4m/8YSVS2LP755Huh4VXx3EzmyAtsRwH4ms5JWXWiM
         mcqLMk/YCS7T/ADFj7TwVdSuJJmB0oMMQ0MRR5efAp/GA3Q9dOkTxHqfEDk0XA9jj3Cq
         iAqz9xnFBDf0crUQfxDxvtnrQdM29q10tqLqwd8RLRgqAjOGxifEjDRbGRbx6HsR9DG6
         dcxkfiODZnAIWeA9E97YlHK5JulVJoCXf6u0efoI7V7nuZuU52+XWw8McwZgoD9EgpgN
         F+IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V2PLR/CA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id d26si211415edr.3.2021.07.27.10.53.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:53:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id z2so23218543lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 10:53:32 -0700 (PDT)
X-Received: by 2002:ac2:596a:: with SMTP id h10mr10205722lfp.374.1627408411608;
 Tue, 27 Jul 2021 10:53:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr> <20210727141119.19812-2-pavo.banicevic@sartura.hr>
In-Reply-To: <20210727141119.19812-2-pavo.banicevic@sartura.hr>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 10:53:20 -0700
Message-ID: <CAKwvOdkwwXV9rN6bzRs_+hbq5thHNSbEtqwOZ7340a79=NqjSg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm: include: asm: swab: mask rev16 instruction for clang
To: Pavo Banicevic <pavo.banicevic@sartura.hr>, Arnd Bergmann <arnd@linaro.org>
Cc: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, 
	andrii@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com, 
	john.fastabend@gmail.com, kpsingh@kernel.org, nathan@kernel.org, 
	ivan.khoronzhuk@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, matt.redfearn@mips.com, mingo@kernel.org, 
	dvlasenk@redhat.com, juraj.vijtiuk@sartura.hr, robert.marko@sartura.hr, 
	luka.perkov@sartura.hr, jakov.petrina@sartura.hr
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="V2PLR/CA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Tue, Jul 27, 2021 at 7:12 AM Pavo Banicevic
<pavo.banicevic@sartura.hr> wrote:
>
> From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>
> The samples/bpf with clang -emit-llvm reuses linux headers to build
> bpf samples, and this w/a only for samples (samples/bpf/Makefile
> CLANG-bpf).
>
> It allows to build samples/bpf for arm bpf using clang.
> In another way clang -emit-llvm generates errors like:
>
> CLANG-bpf  samples/bpf/tc_l2_redirect_kern.o
> <inline asm>:1:2: error: invalid register/token name
> rev16 r3, r0
>
> This decision is arguable, probably there is another way, but
> it doesn't have impact on samples/bpf, so it's easier just ignore
> it for clang, at least for now.

NACK

The way to fix these is to sort out the header includes, not turning
off arbitrary things that are used by the actual kernel build for 32b
ARM.

>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  arch/arm/include/asm/swab.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
> index c6051823048b..a9fd9cd33d5e 100644
> --- a/arch/arm/include/asm/swab.h
> +++ b/arch/arm/include/asm/swab.h
> @@ -25,8 +25,11 @@ static inline __attribute_const__ __u32 __arch_swahb32(__u32 x)
>         __asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
>         return x;
>  }
> +
> +#ifndef __clang__
>  #define __arch_swahb32 __arch_swahb32
>  #define __arch_swab16(x) ((__u16)__arch_swahb32(x))
> +#endif
>
>  static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
>  {
> --
> 2.32.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkwwXV9rN6bzRs_%2Bhbq5thHNSbEtqwOZ7340a79%3DNqjSg%40mail.gmail.com.

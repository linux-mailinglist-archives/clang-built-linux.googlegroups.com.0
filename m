Return-Path: <clang-built-linux+bncBCMIZB7QWENRBI67UX6AKGQEIEWGR6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 38804290260
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 12:02:13 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id z9sf247105vsl.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 03:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602842532; cv=pass;
        d=google.com; s=arc-20160816;
        b=fIf4pYiqQIUHP5V3nzmyV1kATD1ELH1C/YQUYPOCPX1UC9E5SJV0oBiTkykpqm7nqe
         K8X+Evt/chkmKtQwAzmjHseQI/CW69zpouDH2U1JhbX6NRknDvG8x8uAsyaiH8A5OUBS
         QrafeIxgHt60dh1ZMcnE7pQMo0uyauz6wQRwPtv2KLHjNp7DawbIn5lHxS7YpQhi6B/J
         teS1dgAtVLBznpSNesjIrVBH7AyDCF0wrFLK1JyqyDC45EnOuNGIslYrd1qWa1bxUjGD
         RZDdCF0RV444h16oejkgc9T926NsqyzcmcZQ+S4B9rXvoLL3HLYLURWk+Y03NdeNETPY
         SNeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hyacEJZctGZ/cGj8L7jSRziAr7/Wz1mSYa2/KsAbVTQ=;
        b=Ht3zgj9TuSV8hJBwlIOSuAIBK/DXyaHsaz0W1yzwtChbpTujCGWvCSseUIUnmGkF3A
         3AmRa/7nysa8FJVHxogLy0Kv1BvHV6XUzP3AeX/PXdFNe6Zr57UOja2mPc3HEKyL8q6V
         pEJqcPWOMx0O38Y4e15IrweVaQ6+MSQhLF01jC9UU4YccvsbnGzVfrN+ztwNZkhvw3Zj
         GwYitcGSbR4QHrGPxryBzQmzYFyG5nnZYzEFCV+kR/RCXyu7C0ft3ZK2rUYrEVMh7AeM
         ZFzFtTz4+JIfxeodCgRwPCOt8atVEYwEt38+7gYkuoOJwdn7SJjEjRAZQ74yfH+3eNHV
         PAdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gmRsZdVd;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyacEJZctGZ/cGj8L7jSRziAr7/Wz1mSYa2/KsAbVTQ=;
        b=CxybEpIk7cPCc+dO6XKJ08oAKdlnEGU5OOwXlgbmtW3gnEGdAhKuEU1q5gtdb1/S/2
         gJkN9kuS7rhITnavtkyG97p2W2eQPEZ+25uzBSyG/MoOj98MOyfTCETCmHC3ZnRw9jxc
         Eiou6yD8WQyk7qYgP/iUkckV+KefjLh5afNwMyjQK0laZJvslNAYHLLYxGR34Xj3pHnR
         n7WyqVISDhwR9EXp3FXiDadta32uByaEp2iyZHCQ0LIS3xfjXgDN8ILR/bWYP9wcicnt
         Ua3Q9Ts2bKQmpugwWKvTdE5wb9bXywc3C29zq+9JxArVA0mtvqKK2VrwcmvqUiyxPhr5
         Wb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyacEJZctGZ/cGj8L7jSRziAr7/Wz1mSYa2/KsAbVTQ=;
        b=TLMDbMRYyE/rshSUSW9iHZRPt6gEeLK+kwhXBHinE/IH+MIhWT8nafemSpQumlsA8o
         Fqbmeit4T6UqNtoq1/0ynx8xwf2iaWabZQDZ6PcnMnKY0ermBf3Q6XeAcsev/4r0Ztal
         uGlcJ0B2k71tw/QZJ4uGH39+eKgaXdCA1YkY6SIlqBuvtBHU8xIUAck6YyxOLCUsAwS6
         MyrFb+eZqTVHAfY9t6lVwDJNoTe/51JGLJwfPCx9a56Oz7pcR2nLbPExeAukl4UGDhcQ
         9dHFSzijcTW5ArPuHQwWnexbBUG6BinReKT/WHVl5t4eOC8NT5Vx8heFuNS3nbMMbXZW
         +aaw==
X-Gm-Message-State: AOAM532uqE37ti4PAo2LJh1bfT3ali87tlLV+Fgb9c7r2EMcCRCUeayJ
	jZMfIKzswzxOKOqPAzBvwgM=
X-Google-Smtp-Source: ABdhPJz/7pKANTbCJ6THSYH58RslfBhKzO995ntO5pi1s1Z8nXTcE+WN2Hfeni3YXSk328N6mSHjjw==
X-Received: by 2002:a67:e9cd:: with SMTP id q13mr1171482vso.18.1602842532087;
        Fri, 16 Oct 2020 03:02:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9e47:: with SMTP id h68ls106237vke.7.gmail; Fri, 16 Oct
 2020 03:02:11 -0700 (PDT)
X-Received: by 2002:a1f:95c4:: with SMTP id x187mr1655841vkd.10.1602842531530;
        Fri, 16 Oct 2020 03:02:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602842531; cv=none;
        d=google.com; s=arc-20160816;
        b=D3WtRWjSEzs8rxZ7KiaiSSgOTGuxtix4E5bVQMsjgfKuCTLzKQaLQCNAdVwjgNL+fP
         23JX4VQQi3q8wgG5SYImEt2ecxp5HKvLA3GbKAUBgfqZ+pHkEqYndHuDFa/9AIw5niIf
         vjUby8AKOS6M0FIPrm8X9yqDJhtx0t9obQEEYKrwZ8ovZwW/m31QCISJbx5KC2wx+LU8
         5dthyzwzdzxLoBZmSICfzV3COKryj2w/ikXv4yfPoVVkfiyUv6y0DSL1ohcJjdWxvtaR
         UneUFRWwt+Zy9+7BkFAOlUcB+Np3k6yHsZm97rtLt6tAF02UBjAspstT9l6eZBCSamKd
         ucfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q5hznCWbN2DaTOgUt13z28rEQC2UnuGCG3yomhJgsaI=;
        b=aoQ6HzX/abQK4VZylb2DfIg/DeKIgu2cyDYoL3yQALrVSRIYbMurMRargk7s+AW+py
         KFvHXST1zNhaR+LjUbEjPRr4WbPhJ7XG0+pnRxZbUa3tHMY+jqSUsE1hF4Q9t+F1V+B4
         VbY8tvD8/lB5Gd29P5Cch8T26qrHHjoY5cNgL2DEs+/q+nREd+3FUuXjmAA5/YuqJ7AR
         ieuoOaa4+Sb210Sxg8V5huBJ35EfZIwRmuwjEHG62BVJN03P2OsjFer4xp3veC2urwq3
         PSk+iAa8zf8FTJlW0Pzx+g3DNezxckvhslv8RvzVl5CYQG/q7MNyWgVHEBATg7iIiHcx
         tAQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gmRsZdVd;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id v18si116577uat.1.2020.10.16.03.02.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 03:02:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c2so1455239qkf.10
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 03:02:11 -0700 (PDT)
X-Received: by 2002:a37:9301:: with SMTP id v1mr3116984qkd.350.1602842530773;
 Fri, 16 Oct 2020 03:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064f6cd05b1a04a2c@google.com> <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
 <20201015175819.GB3336735@gmail.com> <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
 <9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel@perches.com> <CACT4Y+bt6Y9k=tJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw@mail.gmail.com>
In-Reply-To: <CACT4Y+bt6Y9k=tJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Oct 2020 12:01:55 +0200
Message-ID: <CACT4Y+bEWUfxtYZrE_hN+2LFRY612_g02iBYvYjWoQhOEacpWA@mail.gmail.com>
Subject: Re: WARNING in __rate_control_send_low
To: Joe Perches <joe@perches.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Eric Biggers <ebiggers@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, syzkaller <syzkaller@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gmRsZdVd;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Oct 16, 2020 at 11:56 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Oct 15, 2020 at 10:21 PM Joe Perches <joe@perches.com> wrote:
> >
> > On Thu, 2020-10-15 at 11:02 -0700, Nick Desaulniers wrote:
> > > Joe, would it be possible to distinguish between get_maintainer.pl
> > > matching this on a patch file vs. -f <input>.c?
> >
> > Lots of things are possible.  I think it unreasonable though
> > so if you want it, it's up to you to implement...
>
> Interesting. Looking at the current list of K: in MAINTAINERS (below).
> I think some of the entries were added with the same idea. Definitely
> "bpf", and I think we got similar complaints in the past for it.
> I think it may also apply to mentions of some APIs -- e.g. you have a
> widely used API, and you want to be CCed on patches that
> use/add/change the API, but you don't want to be CCed on all bugs in
> the all the files that use any of the API...
> I wonder if K: should be skipped at all for the bug reporting use case
> of get_maintainers.pl? People generally list their files/dirs
> explicitly.

There is --no-keywords for this.
It may default to 0 with -f, but we could also disable it explicitly
in syzkaller.
Eric, do you think we should do it?

> K: nds32
> K: mediatek
> K: bpf
> K: csky
> K: \b(?i:clang|llvm)\b
> K: \bdma_(?:buf|fence|resv)\b
> K: \b(ABS|SYN)_MT_
> K: "nxp,tda998x"
> K: of_overlay_notifier_
> K: (?i)pidfd
> K: (?i)clone3
> K: \b(clone_args|kernel_clone_args)\b
> K: \b(pstore|ramoops)
> K: pwm_(config|apply_state|ops)
> K: \b(?:devm_|of_)?reset_control(?:ler_[a-z]+|_[a-z_]+)?\b
> K: riscv
> K: \bsecure_computing
> K: \bTIF_SECCOMP\b
> K: phylink\.h|struct\s+phylink|\.phylink|>phylink_|phylink_(autoneg|clear|connect|create|destroy|disconnect|ethtool|helper|mac|mii|of|set|start|stop|test|validate)
> K: [^@]sifive
> K: fu540
> K: ^Subject:.*(?i)trivial
> K: regulator_get_optional
> K: xdp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbEWUfxtYZrE_hN%2B2LFRY612_g02iBYvYjWoQhOEacpWA%40mail.gmail.com.

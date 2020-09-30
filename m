Return-Path: <clang-built-linux+bncBDYJPJO25UGBB47W2P5QKGQEXSO34MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F527F451
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:41:09 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id y6sf301307pjb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:41:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601502067; cv=pass;
        d=google.com; s=arc-20160816;
        b=q//ZdJmr1/IpEJpKZ75scxnhGNXMQyf5XIwSD+Nw2W2l+GODfmaJVUE1x9CiRByEsk
         QXcZsDLYBiM7w8euTw749GNVvTQBgZncDJaW8osOYDtTJ97sNAlaDWjRuyrz8JRBaEhd
         xRPc+VbEwJBwCOxEQfH25njAw1kSjoAqLNUv6aewLZLdcHI+ADJm4hMjYJ5jlipvCWWX
         GczDhQs8klKR39kgxzKNbJZZGTtqx05H92aCTkJqnSLqYqcdVc/atU34Kgl6Wglt4zT3
         XCLHxMjtRrXq0n8m0LI0qjmg/Cr1KxcWRQra8+25Jk9Ur989IPKbtNMPIxgAy4msgVoO
         KQKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Cb7G7QRXEyPOtrKCgcTmcGgawl6IZzH0iE9q7p9FiCo=;
        b=GxEBW3Gtbw1TAEDjwdVjWl6IOh+2SYkBYb20jaw6nEdGxkexu+WpuHFr/Pro56vGen
         LkuwhfhtIyVX3KsyRiwbipxVGXzRTXthFY1Unk9WrHEmfK2zrlEwuAAqE6hEaI9oe1Kf
         n16O9XjxQzkgUEMlYlqUdiA5e6JYgjRByyjwYJUnTLNIuEB6iOj19krGpFe87dBMVFQ2
         A9u/C+rxA1z9l414zEQPd7fO/sWVkl9Iab77BrPv0Zf3/IiSp1mKEjvqBHolX2aIL7d2
         wY0KSpNDcHQFBTAXeeC0oQYixrgeo75ZBJip46cT9FUZv8n6+uqdmTgNkAsC+Y389zS0
         Tc5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kbGgM2Os;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cb7G7QRXEyPOtrKCgcTmcGgawl6IZzH0iE9q7p9FiCo=;
        b=TkejcUIh+UmOeXZYiv710CVs7bhWAkdWKBkxoR57ySTE0Z9+5mgZwA5Kc53byAizWJ
         55DuTaneo72ZsX8lA8KgMQKVaEFc8cXe/9VwaVmKTefKEwGqyQHyFqp3n9EGEhfPW9Np
         28wMimjqvQSGfhXJTIFYOzfEK+96NGl+jBe2owxcBDcZWdF+IZqtLncH5hePaaBD0Hz2
         uYWpPTyWQ4JjVpUper8JnrSdcmk+QzM1U7a/rn1Gpd6uPstK5zTItVZV5VD1e8TXVf3X
         EeR3qENkOzeFvUP7I+R+5F49Aqi/gVfDHLPIGrw7/iWms9Y75lyuDeWRTkg2o6f3SZfg
         BLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cb7G7QRXEyPOtrKCgcTmcGgawl6IZzH0iE9q7p9FiCo=;
        b=r4UY4jsJJimKfggeY5/NuCAe8nu13psHrjzAYP1ikxLFb/DtyfXKS6soqNs7ewBMyU
         /vzOn2N7lWTQDlqN88fgkU1baiHD0Hsa1HGNhmxa9moJQoiYZMzVTImPjUZH9NmZrxbp
         PTiufw4lwwqCopi+nMM0iX4UTsaoeZm1TClVuEAKoskeBKuv0ea0FoJO2jjAASA1D1jd
         hIMegjYSQtEakeEgqp+KXo/JYS1uk/EzbWHPzayTTa8YalF0671jJ51XBbPboJFLXAC2
         W/dnURDmVVn7di/TxMDPwX8Mle4BtmIOypnP02d44GHzUTT545ZR+7BWF2kq7QHCWg3A
         ZIMA==
X-Gm-Message-State: AOAM5314NbR0KlrcMsNbDc/qAjAfqFaLyc7BGS13/TWAsEHggcHRE3p6
	k2pFaA32rUY7J+yziTsRthk=
X-Google-Smtp-Source: ABdhPJz1gQzvHTDLCYNxhChcfKs0ekoQrYbHnxpr0GU1IDEiVAbB+g1/APh/EM58omI1GXg6cJVmew==
X-Received: by 2002:a63:ff63:: with SMTP id s35mr3648572pgk.14.1601502067311;
        Wed, 30 Sep 2020 14:41:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:95ac:: with SMTP id a12ls1309403pfk.5.gmail; Wed, 30 Sep
 2020 14:41:06 -0700 (PDT)
X-Received: by 2002:a63:2e42:: with SMTP id u63mr3626769pgu.292.1601502066720;
        Wed, 30 Sep 2020 14:41:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601502066; cv=none;
        d=google.com; s=arc-20160816;
        b=0bFYzfFQJ1fUfRDczMZNJcnyYfD5axQCMck73gsNkx8o7sOodp474m2pxt5gidwSxe
         LfYrQ99IeDBoBW+FDCJN52ijyv8FkcIEf66P5MbUWDMS4G9bQyNDoTXDVUIt/bwrnjDt
         LkOLgLPA5Cok+ohaalk3Yg8ObFqD72GBgPhTAMksvkG/MbpQSMYnli23wYEeXaiFnWd+
         qAcjQFhxR3xxW2g1hlSCCrcwhjHr/5oqSw1hI62NyyvhXd8mVyNfz0TIv+jvBKHaiWIU
         MRBbvLosA6i32NadULlL/WLTyZJaTv/ehI5b83eE5A2J3qCQJtynS35IsInIy45W9Qcq
         agaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ne0Tvj0LHDNoNtT3tCH3e2zAqdrRlJSiwY/+6OCzSRk=;
        b=FN0Kt587Src+V3wo92zZqcuuCDi1pw9q1t5SrYymU2gGkin8FzLLt4SKgFGqcBao2b
         bMfiaKe+OkR5bxpNTDVo315NzjeSlNta/f0x+/hDE8Vc88vJojfFNPeIvo4z35Lmbiqc
         4n1ujyXU0vI5rmVFpuYGK+By3Rn1WQyR5tA379/J+JZfXbfMl75xv7cvCELc/p2UVkgy
         lOPL7ZybhimsQ+aCFwIPXMrlfEJwuj3o7YUi9pM9to2S4BJ4Y/UpB4CWF0XEIvHPhxxw
         sxIypUgHT7YFV7Fx6t596V/2hhJz0GGzRRTJ5VVpGQfAH8hOFlUxOj+yVGZLWsekBd6z
         Ouzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kbGgM2Os;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id mj1si270746pjb.3.2020.09.30.14.41.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id y14so2001695pgf.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 14:41:06 -0700 (PDT)
X-Received: by 2002:a17:902:c40d:b029:d2:93e8:1f4b with SMTP id
 k13-20020a170902c40db02900d293e81f4bmr4285228plk.29.1601502066090; Wed, 30
 Sep 2020 14:41:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com> <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
In-Reply-To: <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 14:40:54 -0700
Message-ID: <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kbGgM2Os;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Sep 30, 2020 at 12:16 PM Joe Perches <joe@perches.com> wrote:
>
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.
>
> Remove the quote operator # from compiler_attributes.h __section macro.
>
> Convert all unquoted __section(foo) uses to quoted __section("foo").
> Also convert __attribute__((section("foo"))) uses to __section("foo")
> even if the __attribute__ has multiple list entry forms.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>
> This is the current output from the script against next-20200930
> attached in this link:
>
> https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com/
>
> It might be useful to run the script immediately before
> the next -rc1.

$ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
powernv_defconfig
$ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
...
arch/powerpc/boot/main.c:193:44: error: expected ';' after top level declarator
static char cmdline[BOOT_COMMAND_LINE_SIZE]
                                           ^
                                           ;
$ git blame arch/powerpc/boot/main.c -L 193 | head -n2
a2dd5da77f2cc arch/powerpc/boot/main.c (Anton Blanchard
2014-04-14 21:54:05 +1000 193) static char
cmdline[BOOT_COMMAND_LINE_SIZE]
9d04187c25477 arch/powerpc/boot/main.c (Joe Perches
2020-09-30 12:16:43 -0700 194)   __section("__builtin_cmdline");

Looks like arch/powerpc/boot/main.c doesn't include
compiler_attributes.h? Preprocessing it doesn't expand __section as
expected.  I think scripts/Makefile.lib's c_flags injects this via
-include flag.

(x86_64, arm, and arm64 defconfigs worked fine for me otherwise).

https://lore.kernel.org/lkml/46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhyvTpY6pHT%2BCLSsBFuKRWsXucjbwN_tyJAsryZXvG1A%40mail.gmail.com.

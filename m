Return-Path: <clang-built-linux+bncBDRZHGH43YJRBWNO4PWAKGQEJ75ML3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E53C5CCBC3
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 19:48:09 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id b90sf2499270ljf.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 10:48:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570297689; cv=pass;
        d=google.com; s=arc-20160816;
        b=QACZJzXUxH68AnMOsSDGbHvWh6URyU02LpMO/1FdgDq111KJFxymFeGWicfA71ZqRq
         pfLr2FanoKbi2U3BPEhd1Y4dNke43XfiBL029XWIGhIk91ycjtycyVBJftWvW9j3xJUU
         PNFgcOSJPQDYDhE3m/Q1OSZeZmigXW1vxzUa7MtT6AVfjFFVyk5wCuDpRjlJisHeM/n5
         PoTly8jNAcW8wAs7NW7nMMV8YEZeu8KbsGgCcNIQnc3C7mbcfGByoDP15tyJjT6I+H+h
         73ypYb2S8ajJPG5jYAto2gRYyFaMvYn6la2mUJG9uRxlXKJNekWTYwWkfs/R4+tjgl6m
         6Ajg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ulUFlIfP2IjTnjGSDaGyNvtHKHJx9VQ+JjhmdR4r87s=;
        b=e9igGRxdOHf+EUxJq64fzQXPifY+r+EeD85izuLhCCvUUgVCp/aLYVXCMcdFgAmLYF
         sCEFFHlijjIAlNavJ97zXH3f7pmFoIFtSbFNwvHwVnvVC7jsLIXo0lAyuDYHAGu4Nl3d
         PlDJk1uSyt5TqcNzgWitkqkvfTcQ5cPHMBliPRtl+QYk4PDVP8FhhXIZwJnwIwZtavFk
         hDZUyk1gRSNv6Y1TzhexKHC3sOu7+yf8vGaUhlYItwBzWBpyu503MmVUlC9Hi9RNnyvv
         s85IduFeUYFy+oKoat5LP8hpJyjco9FSGBOfTZ3M1hLc22/oPtC9x2vZwkxitfVJPnbF
         fwgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtTkvCMs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulUFlIfP2IjTnjGSDaGyNvtHKHJx9VQ+JjhmdR4r87s=;
        b=ojwbw/UvzyNP3c9raLkFaHrdcwdUis9BaH/irpIXwIeFeDnvRkNOi+jLSPJvnxNg1b
         gxhJ+BujpPWqIoWC62z/b21G0an2vP2Co+1eNBBFK78MdAErnXawb4WzWDGQsgW36Rod
         LvcNsk/j7jMf930Syooigk8jreQWK7xUScChXAW8l1kte7d8k78botoTohQZG4cOsCaX
         6zFHu+qlvJf3OJShK5CqCs9DiF/gv+EX+r7Nb10oPTXbVEEvycpjFdPInpsuDSs9HYom
         K3sXOJ5iuMbEABvQMANOz6Uaa65H+XQDUDdLLpgLdqwIkAJWNzyNQmJZFXkCXHYmc0h6
         wAhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulUFlIfP2IjTnjGSDaGyNvtHKHJx9VQ+JjhmdR4r87s=;
        b=c3hqLMQCpvrHNZh8NFBgwDEBl+l5RhlIT3L30XFg45d66d/pgWS2rEKXP3mvr/wgWl
         N+j6kCKhXWzp2ydt5GzyuBKJ0WcQSVepE58m+kc6maQIfd5CVU9diHrryJIws2ahPhEw
         eS0HBuyHi4jbSjCCIN77UV+T93IT0+7yMJY0lYJyzK7PI8lLhmYQKCL//OfIdMFAhUsz
         F8fg+ttY594XE/BEY4GNXJiGErZ1XHDSRTmbCP72WycSDxhLdd6lQEj920Yg9qtjQ4g8
         p5o+12GJiavjQKSdED7QJUBSJjW2Mj4iyMvHhBN7ofDnjYVG9ZmB+IVwTd1eHKtGo4qT
         7lAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulUFlIfP2IjTnjGSDaGyNvtHKHJx9VQ+JjhmdR4r87s=;
        b=XltU4OjhYltypwSWij+2RDGgK8dOyqro9zSzBBU7ReORg1P68VI0DHMTdsAgKoRAKz
         Sctvc4L3E14dpSvEAsmVEb/SlBHrrovfYi8xmXihfOwDull0tIRJwFAcMWbPvIDXhrP3
         PXTuv0M+P14cB48jJldjCSzZYp6LJsHY3eQNi+EjF27nSv7gs+bB5K1WfKoHuf5u6MEd
         rInaCkvRQC5sd3oWNaI/CanwxcKvs0eRpqkLKoOn3Zy3fdBlA/bEp/DGBpRGvEeriFY3
         p8emij32XmA7DC0ilxKeyO6bm24q6epZl3yWFuZ+zQEUdun5PWJRP2VVa3m3sxxUbOwA
         CWXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLNx8bs3uJMbJmIozuFB0YTw8k9S+B3QFxp6pmPm3M2wGZsID/
	7J1HqlBI9CcihUsw71RTQMg=
X-Google-Smtp-Source: APXvYqyNvurFm6VU3EeRxg5nTRJ43YeiFsmf1mXmlBGXOb/0z65rAffg6bkhG9IaqqfMiIjwzQR/kA==
X-Received: by 2002:a2e:b0f4:: with SMTP id h20mr13120911ljl.10.1570297689536;
        Sat, 05 Oct 2019 10:48:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:428b:: with SMTP id p133ls1189842lfa.6.gmail; Sat, 05
 Oct 2019 10:48:08 -0700 (PDT)
X-Received: by 2002:ac2:4149:: with SMTP id c9mr12368072lfi.128.1570297688860;
        Sat, 05 Oct 2019 10:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570297688; cv=none;
        d=google.com; s=arc-20160816;
        b=n+zDtXF3HBR3dGOCl76dC2UuQxsGWy2sHoiXzpgLJcDSJXXBbS1Y/d1oXkB0UQPB3r
         JDzKfFq0vCA2HrgAYf6SwUnBGWeDsIHDDXH0aK5Vm6Mcc2jvDnWgAOfyRBu4bNGKwMyL
         CvWbQskWPoxU/XP9x0fizMGQMHIKHztisid8LNIpbrTqotPHRJ6NuGzX2YZwPH8aNGtw
         56MQlua87dZ3DDu9Ka9dixnpykFBnOQjZzGSbVIFAB+Ws3lRWaYI/DJUfRzkHw0nvQHY
         BMLVQdmGbagbI7akkcPZHk6c0/NItN1fomEGmuNdxqrVhG7XDmveARE/e77KoMPmBKDT
         xFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zZNhhY18FkUYxvdXBrS9itssQiFFzeLtJaoj2JXXqAk=;
        b=KD7Pdz4fKpPnROhQfXw4lsqq/rgMdoovO+E9Lufjy6LMkiI7XEYAYiqjDaiEkJ0vHS
         qyAItEmzyGK6gTrmmrgwXSXqQuqYbRNEITHLVznRmDv8FUekI2VNvWW1QLTkxWP3BIu6
         ri1UMLyKphE20LrAG0OB9UeTsD1TRrN8A/vQEDnFbegSjQ6r20dsF4XSbyQtpeZdMpWo
         j0hNV9WnyNbrxZRx3XT/+Ti8Nlw7q7ygctMPmE+JOotBgNJNjdZelkJLNvHOTVJTuQh9
         wUBLvp0cIobDouwgHIX4KpvIQJSqvs+KceLxqN9epooiaA0mmF0SticfzZ8lcDCNM7+7
         ukDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtTkvCMs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c25si700413lji.2.2019.10.05.10.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2019 10:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y23so9595031lje.9
        for <clang-built-linux@googlegroups.com>; Sat, 05 Oct 2019 10:48:08 -0700 (PDT)
X-Received: by 2002:a2e:2d5:: with SMTP id y82mr13655515lje.230.1570297688612;
 Sat, 05 Oct 2019 10:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <09a42c7275afa7e6e9e3fc57a15122201fccd6f7.1570292505.git.joe@perches.com>
In-Reply-To: <09a42c7275afa7e6e9e3fc57a15122201fccd6f7.1570292505.git.joe@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 5 Oct 2019 19:47:57 +0200
Message-ID: <CANiq72=KMcYmcHL442OKwDBJj3czey-XtjtOBTLqh_HAsoJAzA@mail.gmail.com>
Subject: Re: [PATCH 3/4] Documentation/process: Add fallthrough pseudo-keyword
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jtTkvCMs;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Oct 5, 2019 at 6:47 PM Joe Perches <joe@perches.com> wrote:
>
> diff --git a/Documentation/process/deprecated.rst b/Documentation/process/deprecated.rst
> index 56280e108d5a..a0ffdc8daef3 100644
> --- a/Documentation/process/deprecated.rst
> +++ b/Documentation/process/deprecated.rst
> @@ -122,14 +122,27 @@ memory adjacent to the stack (when built without `CONFIG_VMAP_STACK=y`)
>
>  Implicit switch case fall-through
>  ---------------------------------
> -The C language allows switch cases to "fall through" when
> -a "break" statement is missing at the end of a case. This,
> -however, introduces ambiguity in the code, as it's not always
> -clear if the missing break is intentional or a bug. As there
> -have been a long list of flaws `due to missing "break" statements
> +The C language allows switch cases to "fall-through" when a "break" statement
> +is missing at the end of a case. This, however, introduces ambiguity in the
> +code, as it's not always clear if the missing break is intentional or a bug.
> +
> +As there have been a long list of flaws `due to missing "break" statements
>  <https://cwe.mitre.org/data/definitions/484.html>`_, we no longer allow
> -"implicit fall-through". In order to identify an intentional fall-through
> -case, we have adopted the marking used by static analyzers: a comment
> -saying `/* Fall through */`. Once the C++17 `__attribute__((fallthrough))`
> -is more widely handled by C compilers, static analyzers, and IDEs, we can
> -switch to using that instead.
> +"implicit fall-through".
> +
> +In order to identify intentional fall-through cases, we have adopted a
> +pseudo-keyword macro 'fallthrough' which expands to gcc's extension
> +__attribute__((__fallthrough__)).  `Statement Attributes
> +<https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html>`_
> +
> +When the C17/C18  [[fallthrough]] syntax is more commonly supported by

Note that C17/C18 does not have [[fallthrough]]. C++17 introduced it,
as it is mentioned above. I would keep the
__attribute__((fallthrough)) -> [[fallthrough]] change you did,
though, since that is indeed the standard syntax (given the paragraph
references C++17).

I was told by Aaron Ballman (who is proposing them for C) that it is
more or less likely that it becomes standardized in C2x. However, it
is still not added to the draft (other attributes are already,
though). See N2268 and N2269:

    http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2268.pdf (fallthrough)
    http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2269.pdf
(attributes in general)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DKMcYmcHL442OKwDBJj3czey-XtjtOBTLqh_HAsoJAzA%40mail.gmail.com.

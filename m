Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6N6UD7AKGQEX3CB5FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9D62CCA59
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 00:12:59 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 89sf41530uar.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 15:12:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606950778; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2ZfaToTNIS8fH+O+eMDwWN8KPhg5mQNMCgsWqSlSQ1gAqk1Vri3wXe8XUSiAIhHDf
         ndARx0k3H4FwDfxf1ay8imt6bip4Ycmh0zwZiSy5byPGXyc/XRmMTztR5vOQ4QUr6Wit
         yREbqVvUgxyK0+sxEmsocl/7WlYuJZyF2S98RdaqWKyM6mbJApPtKXNIxLgc3fWW6hlG
         G6CW8aPt1g3U0un3UaRUxUGUCaCGANI5uBSkv3li/EQLucTALPQ7FuTFbacmQ9z89ctk
         L/fS3YCvM2hdvNZOFF35dti/tzb9aTqZ2gLEAscQMWOe5VIyfu8dWlArkXkU6VNK5dSC
         pf7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0/2Qy2pPQvTpm3MGbH1ojBDv/wZP0aY5Vq5/cmhsfIw=;
        b=iH17KK9qILHCVRQ/QhbTdomzyKGdHbKkv/Mwn4A1HxHTEagVcoUnj5zBBoXthZUp+Q
         FBfekQiNf51IK/EemhqKJOl9leTVtK4RLXfUkRHwK03hmZDQwdlhr7aVSULGVj7Tzwve
         pgJgR0Ueb5VxNxZO55pcRFRTnTDZB6mYfGAG05Gq+4GuGnjtrhrXpPejhO8HDcUCoi6I
         pdVxNhvgDQR5LUSYAcN3TdUyirWxbt1PovMrxSP7ki+So1huHPAhA8Lgem8c5zyw6Yna
         ni18tbkLM063rOggDiMFAAVKHkiYJBr6dbjOuz5QLvKjnDNw7ICbRAKFaGhKpQps61lm
         PBLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=exzlbbka;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/2Qy2pPQvTpm3MGbH1ojBDv/wZP0aY5Vq5/cmhsfIw=;
        b=DbXvNkHG6RbBgHJ/x74MXeMqdXJXkZA6YM8TynJMQLZpHCgphx5YHuBsHeaq/JQdOj
         RkdCHCpffXxU7or26pBQNjpBvaY18metvlsQyNgHrUDkB6cYy3BonACvjjCVHdrYR8MK
         Iw+BjRgnI4X6bgzbQiygDMcRORVndopJrpof7+mtJ/+AsKQA3Q/ITvg8rDjLfuLTiaU6
         diNC7+caRQ6rIcyAa/xvEMFbq1pVlKw1HYZWEbS+udVZGHS8q0z3WvPD8IcOUwsyCZa0
         4Ig3lf27tmIAs8CXPs54BTOxVBFc9cKhoMq9i/1UmkmEy1fxT3otqq4nugku55jEBkt5
         /ajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/2Qy2pPQvTpm3MGbH1ojBDv/wZP0aY5Vq5/cmhsfIw=;
        b=Bx/qfKjxXmsUG3OiIZCRdXFW9iu2ZRI6zoW8RtD0U6pQYcCBTwuqtKjj6qRdHm4S8F
         bT28bMTwQkye8Uvw/cua8AGCDKou/hpwI67uD9sySY8wHCkuJQy6D9vdwRj9qW5LzW0c
         Ict9y8N4m0NMGb+OXLYRu9Jw7BWSMYpOsuMLqu9nMeNEiULc2FrzG6aIkNOrCoDzd9ex
         I0hRflc2Au2kEZ8PAdTCsyjjBxVLRdsO5nqFSVcTM08D3iZgx49hp3Z0KjVeF6M8uaaW
         WeFFU6MFb6YX9ECJqqAhJU0P2yQoJ/4r6k0hbPug549Mg1G3QPeXC1zStqHF7qJhfVCH
         ADbQ==
X-Gm-Message-State: AOAM531yZXq0lGeJIMgkqqxHn7lUs4Z6T090mw2TZNLlceesutseM9Kx
	Vi1aF5zgfP2UmaDGH/1pF/s=
X-Google-Smtp-Source: ABdhPJxZc0oTRquHpA+WAYaQEwaHqDcS2vmwCF6WHaOszjEA3m3Etc3a0su8r2CzB1jyPY9A6aydlg==
X-Received: by 2002:a9f:36e7:: with SMTP id p94mr438016uap.71.1606950777851;
        Wed, 02 Dec 2020 15:12:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:681a:: with SMTP id z26ls294270uar.3.gmail; Wed, 02 Dec
 2020 15:12:57 -0800 (PST)
X-Received: by 2002:ab0:596a:: with SMTP id o39mr442908uad.123.1606950777500;
        Wed, 02 Dec 2020 15:12:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606950777; cv=none;
        d=google.com; s=arc-20160816;
        b=Yg+OReRNQjHJiFG+gRFaLBg0pGTC+dm33XJW+c23m2Bi8w5NHd9IHBbQBE5/8nzQv0
         A8biYL3uoJgfvRN2I8aJugUdF9jBsgyCvIj2R/5jbVOF+/bjd9ka8OvYJl7+9jQp5rNd
         J73Rp3DBh/Qu+0M5nujrI+UrYsM+TaEh7pS8B85RIWmfyTMzC0a17Nvpwv4LWt4Dsfvv
         okKChMN6W6fGMPhfFj1EFy+4TI/hQYlCksiRjeQstLwiG6AvlRSt3dtN4JbxnBo+NwsQ
         OQzlVZCWgQJpW7d+aSCpE9m5fvsx4tS7vESs5cJknLeyR3oOlobLyIM01M3DoK51ebrA
         Y+yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j9jFBwpHjkjyo4ON7zUJq2rQs7RnEAe0e25us37bEaw=;
        b=oTEbrwyS1fTVYr+s2SlpoFZdlhJbajZ5CXXjZy0FoxU0+kpUwOGPR4VFcACUy1Bxz4
         Zc3Aa1QKFi6mTGzhkpcwN2i8ulAGznJ05k/SExju9sqCwWHgk0GjwS7ImIWCX4VMIvbb
         3J/NNYR4tgY0LtjbU3EHK3E6VghMsxvLOr59Ah/fIbhvpXQlkhiRihtA5LG4uC4wvD5F
         6ROAFO4lkB2WztaWhFz3oT/j/ecyGwdnDjhqhuBBBDMGISQ4vdc+zlo3c89/TDgzi1nt
         9sOjUMD9H47qxC3Y5nQfs4TYMGYF76yErE8negjdCzHTnare0tgKVox1kVS+9wpk6S6H
         MG/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=exzlbbka;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y127si8880vsc.0.2020.12.02.15.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 15:12:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x24so14844pfn.6
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 15:12:57 -0800 (PST)
X-Received: by 2002:a63:8f4f:: with SMTP id r15mr488662pgn.381.1606950776375;
 Wed, 02 Dec 2020 15:12:56 -0800 (PST)
MIME-Version: 1.0
References: <20201201032748.486928-1-masahiroy@kernel.org> <CAK7LNAR+rWTku5Lz+by3vEzsWNsdOpO30phkdwCvzJf28aXiUw@mail.gmail.com>
In-Reply-To: <CAK7LNAR+rWTku5Lz+by3vEzsWNsdOpO30phkdwCvzJf28aXiUw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 15:12:44 -0800
Message-ID: <CAKwvOdnRDC8tYx4H4ueTv44-+rdwevv+PNyEifzUcjqOjQTA8w@mail.gmail.com>
Subject: Re: [PATCH] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Fangrui Song <maskray@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Peter Enderborg <peter.enderborg@sony.com>, 
	Randy Dunlap <rdunlap@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"peterz@infradead.org" <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=exzlbbka;       spf=pass
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

On Mon, Nov 30, 2020 at 7:42 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Dec 1, 2020 at 12:29 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> >
> > You can see it at https://godbolt.org/z/6ed1oW

(this link misses -gdwarf-4 for clang, but I think that's ok)

> >
> >   For gcc 4.5.3 pane,    line 37:    .value 0x4
> >   For clang 10.0.1 pane, line 117:   .short 4
> >
> > Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> > version, this cc-option is unneeded.
> >
> > Note
> > ----
> >
> > CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> >
> > As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> >
> >   ifdef CONFIG_DEBUG_INFO_DWARF4
> >   DEBUG_CFLAGS    += -gdwarf-4
> >   endif
> >
> > This flag is used when compiling *.c files.
> >
> > On the other hand, the assembler is always given -gdwarf-2.
> >
> >   KBUILD_AFLAGS   += -Wa,-gdwarf-2
> >
> > Hence, the debug info that comes from *.S files is always DWARF v2.
> > This is simply because GAS supported only -gdwarf-2 for a long time.
> >
> > Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> > And, also we have Clang integrated assembler. So, the debug info
> > for *.S files might be improved if we want.
> >
> > In my understanding, the current code is intentional, not a bug.
> >
> > [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  lib/Kconfig.debug | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index cb8ef4fd0d02..7f80c25497a1 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
> >
> >  config DEBUG_INFO_DWARF4
> >         bool "Generate dwarf4 debuginfo"
> > -       depends on $(cc-option,-gdwarf-4)
> >         help
> >           Generate dwarf4 debug info. This requires recent versions
> >           of gcc and gdb. It makes the debug information larger.
> > --
> > 2.27.
>
>
> Maybe, this can be squashed into Nick's patch.

I have no preference.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

(I'll reroll this into my DWARFv5 series either way, but when/how you
merge this doesn't matter to me)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnRDC8tYx4H4ueTv44-%2Brdwevv%2BPNyEifzUcjqOjQTA8w%40mail.gmail.com.

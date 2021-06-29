Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBSEV52DAMGQEMU6HSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id BDACA3B79A4
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 23:04:08 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id e21-20020a2e81950000b029017ac3a6b044sf1958545ljg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 14:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625000648; cv=pass;
        d=google.com; s=arc-20160816;
        b=M9IF6fULES8KuqUQZaGF9F/8h+cPlKkGt652Sdtm9yvgdUtV7YjBZ749FNjnma2FiH
         yabPhtnA6Xc0lpOjd/dj5k+qazBjtQrSJWghFILrUQ2yqmJbiSP098DIts4RqhqowklF
         WOfD2jG51JGYECKafjsUX36ef74lz0z/04ouakUj0dlYieQgfEKFqD4ihGchZDNqT+Ns
         7VGz0fjjdmC11Q829ACzKtE7xog8bsMxxxq9cNi6e+UuyR6YVTuciaAhbEL4hMFqkNr1
         Pf2sjIi8PRQv8ZJlH3oHNU5owFx4UEKXr3+Pu6VypeurDkCdebCjhowvk6HcJVmtesOO
         yr/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/0lrc6zy1IIPaQ+pY0ol0gHSuEfThZDsWJxu0TKDMVA=;
        b=rpiVn0+RjGbifchNAZzhPcOdv/tQVb0Nb0ahUoMXzeOJgQJ1ZPPOUvZfMJEzXgYmVu
         AOP49TPVRViFokcuhd3TGbPJytfcq5o+iQWQiTzLEcaLHrXvbiBTeFSOJzcQHH7V2RCl
         XOGHNYGtVoju9W+KJ1VsGhO+G6DotZbVLhwAJ4l6HmaXkw+oxSMnskWtGxa8oHMrmN6S
         6uAgorEdSxN5IcKRYMQAZLGGFKXNirpLrGb/9qV11DOVRSmxbKT304K7le9Zj0ktyppu
         W217RBwqoieOgBZMOou/G7h6lOMrxLu0ljg6nwQNxvjlUISuCkq8E251PpAUYZC4wRbw
         SYfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=RuY0ceOg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/0lrc6zy1IIPaQ+pY0ol0gHSuEfThZDsWJxu0TKDMVA=;
        b=byYOQhqzbDj5iCjRqF6/pVOD4SvXIsAuWcufM++tRJgwDY7W0QGBHQyVIKPY2BicuQ
         Od1qL4VzF+O5Ezp91E5MQpL5g1Gz/PXZ6k+boaAkl9lV1qGpF57638CLZ8Rkw8Ku0PdL
         ZA6pWPCfwjZuHG8Wf8cUyTcGieqHe679CKSBl8p9e+XXhw8eWryZYv2F5EReFkinBvcG
         utTPUet1UVC36OuNem2k+hLG5ihk3qkR8+JDtceJo1P3jlVmZ0NupI+rUsme21MxGomt
         4WCH6NsQS2J8rOelwyVu8khYttrQRdhq97B3iWi5Tam9rR4bnqRncciP56SndHWSw9WD
         GiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/0lrc6zy1IIPaQ+pY0ol0gHSuEfThZDsWJxu0TKDMVA=;
        b=DpgiZsoL2WNrd4Lv1LNcpniW8X5O8eNMemKj/G/sFSf1VD9eP44gOQmNHquFB62EKr
         v2xjp8gQK3ewXIuOIYXg8kRf3yjHa+7nEiHNbxvEZ1QY1eFZrlru3mJ0dWlOGMeUfsN3
         7nMTNDZzFnvnszW1w0uO0gumgD5dk37YQqJSqlSPvuTt5jQmkyloeeRQFrKd5Jj/UO3a
         bH2ozwuhFuJZSUWfpJ+pCgrz3D/ji5kTjp4rc7kWp6bx5wWAVYtJFopQp2JKAG1kyE9C
         hj90ZZrIVu7z35Zw5WoGUfJ8TIALP8usqWxYNY/TH9sNdb7Isoo99zq7ahZCC3H2Ydjv
         gzgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531np8E/uBg3yA875BkcGDu3UF3foWGlzfcPsbZPAVcXvs+K6EOi
	ia71AQHAAtLkqa6QuxOG1XM=
X-Google-Smtp-Source: ABdhPJxl/ZDL2sfrXWZyA4POwV9ogT/mpifEYkrBUC0e8YLUzvnOvxBszsxhulxe69zymnQGpQ8yhQ==
X-Received: by 2002:a2e:954a:: with SMTP id t10mr5336418ljh.469.1625000648276;
        Tue, 29 Jun 2021 14:04:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc1c:: with SMTP id b28ls6938ljf.4.gmail; Tue, 29 Jun
 2021 14:04:07 -0700 (PDT)
X-Received: by 2002:a2e:584a:: with SMTP id x10mr5446447ljd.170.1625000647034;
        Tue, 29 Jun 2021 14:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625000647; cv=none;
        d=google.com; s=arc-20160816;
        b=GbPmshm+0TvTVwvNaMgnv/HzgfuBxdGy8n78L6JRbJ1IAUOcrarzxsj0y8EI+5twqK
         m/IJmDqaFeuNd+t+9Kq7wmIbHwfhH1iHcsCG13cHjgcDEgDA0EdCHi6RjZJn78wawt2O
         jzmYrQBrM2P+g28D6hrUGxe+qM55gEadBO3RCUEfiCEbYjMdGcJlum42XdGOYyVtp3Ok
         WXA6zwxAjcPuAhjxPYGtj4VAR0MYPxkchmSOqj57iIQ6FtWSbtAadBanQrbkNtZ37Ujc
         4l5XK+7X0pF9xvjIVWZPaqA+nqYDEmF+3RKn6J9TLyzWp01wsJ2la2N1ut1cVNyy3fic
         jiUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z68yuR9mPAdIwSsk7cMq6l77qF3ZIgmICtFInZAkh5I=;
        b=B1gDw1Jgo8N/+FfkUiTgyFa7KQMzR/X9up7KBGpX9b2nKijmH9m2a8z1bf4JgPMMlm
         ShjFK0r4Ct0w9+oORZoMwIAAXQ4Ftga9pZfRZMCwABt0Be5ST3CCtar/lu3phO5zyxes
         tuvxnFk8xKwc0Z6GjIROpdxCu12M28qclgR33o7f39isI7qOCv+UmuVaqMLlFLK1J+PB
         G5VcGr5Sm/NyxNKfO4uBMv6jKyPC+CEPNC0tPcsGbRP2hmZbZ1pauASw5NMPVZCbe3OA
         MeghiT/B19OhRp53ppvN6dsxd9Jb+sHB2QDc2nQ/yOkYzlA0tTHoEYWIoJOIZcxnwA9t
         CwkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=RuY0ceOg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id j7si943730ljc.1.2021.06.29.14.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 14:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id u25so17280670ljj.11
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 14:04:07 -0700 (PDT)
X-Received: by 2002:a2e:8708:: with SMTP id m8mr5381941lji.244.1625000646441;
        Tue, 29 Jun 2021 14:04:06 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id g22sm834053lfr.227.2021.06.29.14.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 14:04:05 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id u13so812334lfk.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 14:04:05 -0700 (PDT)
X-Received: by 2002:a05:6512:557:: with SMTP id h23mr24898653lfl.253.1625000644827;
 Tue, 29 Jun 2021 14:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
In-Reply-To: <202106291311.20AB10D04@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 29 Jun 2021 14:03:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
Message-ID: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>, 
	Bill Wendling <wcw@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=RuY0ceOg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > And it causes the kernel to be bigger and run slower.
>
> Right -- that's expected. It's not designed to be the final kernel
> someone uses. :)

Well, from what I've seen, you actually want to run real loads in
production environments for PGO to actually be anything but a bogus
"performance benchmarks only" kind of thing.

Of course, "performance benchmarks only" is very traditional, and
we've seen that used over and over in the past in this industry. That
doesn't make it _right_, though.

And if you actually want to have it usable in production environments,
you really should strive to run code as closely as possible to a
production kernel too.

You'd want to run something that you can sample over time, and in
production, not something that you have to build a special kernels for
that then gets used for a benchmark run, but can't be kept in
production because it performs so much worse.

Real proper profiles will tell you what *really* matters - and if you
don't have enough samples to give you good information, then that
particular code clearly is not important enough to waste PGO on.

This is not all that dissimilar to using gprof information for
traditional - manual - optimizations.

Sure, instrumented gprof output is better than nothing, but it is
*hugely* worse than actual proper sampled profiles that actually show
what matters for performance (as opposed to what runs a lot - the two
are not necessarily all that closely correlated, with cache misses
being a thing).

And I really hate how pretty much all of the PGO support seems to be
just about this inferior method of getting the data.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwg8M2DyA%3DbWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg%40mail.gmail.com.

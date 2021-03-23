Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYOI46BAMGQE5RC265Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id A303B345E7F
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 13:51:51 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id d15sf320257uap.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 05:51:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616503905; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhcczxJpjQiP6FVROJ6+EdVpIu26C9UOJINStf3YLUwkZ4ENMOIhTRH9FCq6P43S3U
         jJNGwvx9B0VNWYm9tvfj28vlpBLKbj1D5bI5+3SmrbgIfDItGS/K6xAgWIvNTb7gt/au
         p0O8ObHzxyRvSPwgkU2Vd3Wvatcl3U6xuZBFxozrqmpx+U1WYjLV1jBFOxC7P6vwn7Wj
         hxNqZ/gDeiWtNKQfXw8NTcZw+80idGZb9eVIOWLVBbwmmHFLBcaag3oFDKH3pSKBvDHg
         0wSI/N0nt+PqSo4iViAqrcDlCcgnj5z38ifcCII+dt7rDv4GXeDMOrYPIvwtIvf9emuZ
         VJtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2Umxjf0VTpRS+wgNql2iBigl8tvWVwbHgwad4+56pio=;
        b=zfjuymkIXFH5uVvpz5q+3RGIoXf3nN7Lrrk/zIYU8vTV5tTGcqweqSrAnU5lWstuTM
         F3D56YHGOp3ejhhYNLWTzG/LMksgAOKdg3+luq05ClPTj1mxMUUtC00qwtDjf/Ca62Io
         aiJhfsHZLj02dKE/m6R1TQviDWx3r4eDshZc0Jalup9OIjMdxJZTmowLouA/8V/f1et7
         +AvB5utc9iGFMlldcsLwEGtoSo68xY57ElodAm5XQpc0aZ+V/VMkxwDWVciLSV4Kzmb/
         YzvxYpSKBLS9X7wuh0svDRdQA+O6oruddhVJQIYu4pvku4Sw9Zi2CzMprLgwtXjHNmbt
         NiXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fd41GIP8;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Umxjf0VTpRS+wgNql2iBigl8tvWVwbHgwad4+56pio=;
        b=rAnyERpqKOr6kBGT3n86oc8rYQuBw++sA5coV6VwhP/Q/Yp/N2OYPsj/aR9CkHdvEu
         tYSdbK4rMne9rioBiDgiwLdqJujZNZSkyOa2rsdZWf0/bniOG8rEWOK4NbcwqGPR6q2u
         o3VPFl1+RFXerDj4GhV3cUyF8j5jrZdIngZJQCT1QoMpLSeCKK7lOwxGN37oz+N5PjKV
         P5Qe2V5jjEBLJURxO0XshtI2DylaWwPHjHWj5uiLYn6cfaENJPtF1PCqLjAwXAvNvMGF
         DusFDhtx794irGHcMVXe19BDB4b1OJ1EhZl2k2HkASPll6sQx+gTudlDrAVDgz+pLuUD
         13ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Umxjf0VTpRS+wgNql2iBigl8tvWVwbHgwad4+56pio=;
        b=AosJ8XBZWl/6YG0hn6hPM3wkag2FtzFZ4IN9uQBiLMHRH5Do+tbQxqJIfRFoPmiEOu
         TLGjaC39LbP1c0OYrBhRk0wh8qV2HITnPiatSfKBrrEiLxeVoyVVfeL/qr4ucP/Qyi+m
         jdsHoLP8Q048VtEaEOXGjgeV/v4ay9pdBvnk2GL88a8lrFVjpaNgYZgXx9GkkxHeO9n+
         SIVmr+AgcHuWhJ3U4+hlIARuSw1poPYLXK3bjM9eWogBm1ya+p5UHxQsdp3ePcQJVRYR
         5fW8WHVhBv5YznLghsC+pHHm2ph2JtpbkIbt1aqRtxkRl+/eRhf0/mmUwfvlkvfo7X42
         T+1w==
X-Gm-Message-State: AOAM5305RqYDAfnMHpneiKK9gC4JA/iDeZ2bjzcebZl80xjsrIVvEFtb
	r5mxWuAolVt+aMmf7WDchFg=
X-Google-Smtp-Source: ABdhPJyhVlewTa2Qra2J/dKlMEsbMnRO6FUmdTuv6icIGegLsCQcEm0HDWvJKzDTvGLvI2etpuACPg==
X-Received: by 2002:ab0:461:: with SMTP id 88mr3114427uav.80.1616503905511;
        Tue, 23 Mar 2021 05:51:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:150a:: with SMTP id o10ls525950uae.2.gmail; Tue, 23 Mar
 2021 05:51:44 -0700 (PDT)
X-Received: by 2002:ab0:7859:: with SMTP id y25mr2880754uaq.101.1616503904648;
        Tue, 23 Mar 2021 05:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616503904; cv=none;
        d=google.com; s=arc-20160816;
        b=tPyw1ncS2Pa3MqlMQkNgedpYHnb3vtDBDpZvrZAyBnRkdPvmycsSa6HeSmVZnRrufd
         2e55/kTJLUzbfx54/gI/qV8KoLBDrhjPoL5TIZ9U/El+iWQB5gyLypCoLFxQ+XDIAAYF
         Q0t8HQ36M4p5kV+yQ7pZzwKpR4eGegw9d80HhiTxPL8OO8Ire76cWbu5hazmVS/GSeYA
         zMDf3MmqPdGWNr3fk1k9bWuTRsXtUz5mVN9jQNNHPcM7sWbPkhHNiXQcEeowk2eOdAxK
         xaox+eo5ilplBLAe1jKPXTwEFW5qdy9L/GcJk1h3zGG8YG6uxxZUNkdlVIBXQ8VbLboQ
         kMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IAmVG/HBeCtgkbLWnwaUrodtWDBlDiqTMm626xAgpp8=;
        b=aDmP7ZXoPT4oMthNVldB05zOulPD9/EAQPVzsOVWLn2IoSzbbVrFh07Si16u4atvHU
         bpu/MrYY1+4MHAq02y3Iie0zxJM0k0z4YcxhGDj4DdnUI8liR1lhtkk+/tr5UEWLFRca
         +YGjHGdXd6VaHXyWkLUKiRdL+FRpDDuNcypwD3wFma9n8qMnyAjMXntjxYn0z8n0ZETH
         QG2fIfNQG8i1pzw+AMe89tdn+HFqy4XkoHvLLMya17eKGXBogTxuSw2NYsxNUDMM3NaK
         vrkUw9Q7VQY0Wflje+cfSlAIgWR5wG6DXaDh0goTUk6aO7EBWPWTM/73px7DocBOquPc
         yLfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fd41GIP8;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id d23si879098vsq.1.2021.03.23.05.51.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 05:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id i81so15382155oif.6
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 05:51:44 -0700 (PDT)
X-Received: by 2002:aca:44d6:: with SMTP id r205mr3166533oia.172.1616503903973;
 Tue, 23 Mar 2021 05:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210323124112.1229772-1-arnd@kernel.org>
In-Reply-To: <20210323124112.1229772-1-arnd@kernel.org>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 13:51:32 +0100
Message-ID: <CANpmjNM8D+yp==DmKP0aa+g6=P38o0v6gd7y5iV52yyDUv91qw@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix hwasan build for gcc
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Andrey Ryabinin <ryabinin.a.a@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@gmail.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fd41GIP8;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 23 Mar 2021 at 13:41, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
> possible to enable CONFIG_KASAN_SW_TAGS.
>
> Unfortunately this fails to build at the moment, because the
> corresponding command line arguments use llvm specific syntax.
>
> Change it to use the cc-param macro instead, which works on both
> clang and gcc.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Marco Elver <elver@google.com>

Although I think you need to rebase against either -mm or -next,
because there have been changes to the CONFIG_KASAN_STACK variable.

> ---
>  scripts/Makefile.kasan | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> index 1e000cc2e7b4..0a2789783d1b 100644
> --- a/scripts/Makefile.kasan
> +++ b/scripts/Makefile.kasan
> @@ -36,14 +36,14 @@ endif # CONFIG_KASAN_GENERIC
>  ifdef CONFIG_KASAN_SW_TAGS
>
>  ifdef CONFIG_KASAN_INLINE
> -    instrumentation_flags := -mllvm -hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET)
> +    instrumentation_flags := $(call cc-param,hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET))
>  else
> -    instrumentation_flags := -mllvm -hwasan-instrument-with-calls=1
> +    instrumentation_flags := $(call cc-param,hwasan-instrument-with-calls=1)
>  endif
>
>  CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
> -               -mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
> -               -mllvm -hwasan-use-short-granules=0 \
> +               $(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
> +               $(call cc-param,hwasan-use-short-granules=0) \
>                 $(instrumentation_flags)
>
>  endif # CONFIG_KASAN_SW_TAGS
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNM8D%2Byp%3D%3DDmKP0aa%2Bg6%3DP38o0v6gd7y5iV52yyDUv91qw%40mail.gmail.com.

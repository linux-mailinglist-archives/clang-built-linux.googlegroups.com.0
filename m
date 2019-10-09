Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQWC7HWAKGQEZBSY4DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 501B7D1BCB
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 00:37:56 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id x10sf2991601pfr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 15:37:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570660675; cv=pass;
        d=google.com; s=arc-20160816;
        b=hRWZpH2iftGisIqbk12sLHJpp6uKcrob+1gXOKYIAdh9KJNTr+avkNnDkDYLmKot1K
         pKGGSHTLrm7xugc7yOpd6WsYvaG0+7JFi60HhTVUchpzDrpGmZQFahgAedvwxcyn/FpL
         0+HHKzjKKrGohy8WPHpBtZNHbqGJVBt5pZJgqLQLOxAQbt4317HiPsFI4LiCX6fV07SY
         /iGkN+NgllLV3ahSAI6Yb2lEvC90eBLuvPGSPRpMwy5KokQE6R6LhQFXnCJeKZ/YMqKW
         7dI9HC0XIPAefg5xIRX62iL+egRs7URDPRqsd15f+/tgxxEIm3h45Lf7MgZKKUm2JV5p
         ywug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GesKYe8+8JihLEE05FyqS8AIHZfyqZR/wr4ZLyYko+k=;
        b=RBDLyl4wgIG63x3uoVbFZvnH2PXp+3FHdKZ0LpmAfUDatkRjMyYM3FiEiGbbu50HC7
         zabQW0D/WMcYdPr3Mqb8Bl/+Xz1WkrZSvH6paydxHl9gU20vuxXG2X54z+4Lo7yLitbS
         OAd3gv4vLitb+RTYSR2PawcR1dCXt6F2VWD6UnYRqaB8PwKVROniKFydbZ9Iwc228TZ8
         bj/0uMJM4JmDhY9Kvy445SgXN7ECyOr+OiaOzwx2BYqe/J32TwHHkR7BMLbf1hERyjbr
         IUDgYdeLgqwJYtnFB6//hXWHegEYq/qdA+PE5vr8lKMRfBEAdqzXTophC0lTnxi5BP3K
         btVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjDCFFNt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GesKYe8+8JihLEE05FyqS8AIHZfyqZR/wr4ZLyYko+k=;
        b=Yubs79OqQvowMw4ctkKuPavO/9P/rJAAidY6RAwyNFTVKfk+l+6gCLqgXKdHcwi1WH
         LdTQ7GvxDCNSvyonqKKQo360aWZ3ZZ5Nvl6CwDLr3vMKoIgMBv+ZZGMSiQhXQdcavz6b
         KoZhu/yzQ4Dy30jDzbaEsCvhfGn0c0K9nO9HKEPZqhXlewEz+5aVziIRwHYxgkQfUpJy
         TPi2LvvfA3sGcSQLD77CMg4tC+BYqCVhR97vHCX3/aRy3+AiuF7Md3asXJucC8X7YUeU
         zgLYSGvf9t5ERxc4sLualxvvTCQRmh3wXR/P/Nzgqp+a9E2kW+kIpQfCgTfzIulNF6WK
         ckHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GesKYe8+8JihLEE05FyqS8AIHZfyqZR/wr4ZLyYko+k=;
        b=VtAANukq5s8NudVUfQKRvdbueHbL/JMaDBGp7PrX870NoPlmc8DgUTFSnIQodJsnbs
         polI7zLX8bh5zsuriteZz2sjWDGFHYWV/0U/Vknev3WdMxZ00ytA5jPA7ZCfvzigpD2H
         9WcWwW12CbQWuqad7hMnxfUkST/DTZz60XDBnC+jnSV+YUihwDkMg9TPYWuUtleAMAvq
         szh2ee5inp1M3NTSvdN2uR0r6WaWznNV0TtLAAFwgUkbFJuOUpMH/P0vi7mRw8jVoxr7
         2kxKHJA1gxpYImMGYm1c8Os0qLl84gBynAWYBi6JUjIBjwoDomzcVZaB9f/IG9EL++7A
         OT9w==
X-Gm-Message-State: APjAAAVeFv35bY29yTIo/SErYqNIiZzOw1ORZxHlQqC7wtkfifCam6gp
	x/E1tOTuRtsLbkxiLaplaiE=
X-Google-Smtp-Source: APXvYqz9BJ7s5en0CZ61RRZYV5jEWP0I3yjhagSZE1ynKFLRpkh/wiJ6xj8lHyzycBePsN4q+a7s7w==
X-Received: by 2002:a17:902:b288:: with SMTP id u8mr5267328plr.119.1570660674948;
        Wed, 09 Oct 2019 15:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1103:: with SMTP id g3ls376822pgl.11.gmail; Wed, 09 Oct
 2019 15:37:54 -0700 (PDT)
X-Received: by 2002:a62:ed01:: with SMTP id u1mr6433566pfh.54.1570660674519;
        Wed, 09 Oct 2019 15:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570660674; cv=none;
        d=google.com; s=arc-20160816;
        b=KKP06tU1cc/1LIub1iQLsLh3nfkxeZ6bpdn6XvEZiB0Pzh84x/8D5QW4KqiTQK1cTs
         vhITr8Nr3UGAyC2WayU/azhleloA7flYc528zOU4iPdsTE1UJNqd1f1hHDEK6KLYrpSn
         ouFop8gIzjMWUjETmkLG8Up3gIpAjtf2u1t04mmZ145WmRHeESnX1TIEJIPE7FA5+5CA
         RAGeSaGJNqtH/2YUL4aqfNfw47ZWNI6L+er28Yi/lgLOYRzFzdt4me1eggMEK2fpQPI8
         /ZSfCV/wyTiQwM0EwsgimXESwfzJ33UvCMKqTlAQJkNeunzMQnjfclJtrDJpd1MXfW20
         AeAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7hfShCs30Z7AfEHrmZa+2z/hnrcGihWEf8CO0VbMhkw=;
        b=j80MynO2/KcJoq/9K5a2p5qynpnr0bJ67tyCanAf2apQQBMTaK9bOfG5jrZaZxZmTL
         HTFuWrxXt6Ci6cuFc8SAcUvHjPljQLb75e2hcFEVAynqU0LBp17VKa3I0S76iQ6JWuSD
         ao8qUwnoFx5wsRBGnTVde3qFSc7IaIr6QAorl3FVNPhp1TCedT50bUvSBViccbj/NQ5l
         o0IoRrvinvWiYJHc/AMPh6hdXjrRXWvCTKXTdNcRn4RQTdTo61EF0JR8eDPnUYfn86Oz
         W6dBGSoJ3BMuMNHWsdqmTLzSLCISRaZoLNHLMnOkvLHZEBl27ymG6pbTG4sUWtPUjA0o
         62Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjDCFFNt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q141si361686pfc.4.2019.10.09.15.37.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 15:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id b8so2325285pgm.13
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 15:37:54 -0700 (PDT)
X-Received: by 2002:a17:90a:b285:: with SMTP id c5mr6833625pjr.123.1570660673665;
 Wed, 09 Oct 2019 15:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
In-Reply-To: <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Oct 2019 15:37:42 -0700
Message-ID: <CAKwvOdm+u9ijMdfPQVZYU3tQCuhMePsvmKXA_kyyAaQUu2y5gA@mail.gmail.com>
Subject: Re: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in
 various ways
To: Joe Perches <joe@perches.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BjDCFFNt;       spf=pass
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

On Sat, Oct 5, 2019 at 9:47 AM Joe Perches <joe@perches.com> wrote:
>
> Trivial tool to reformat source code in various ways.
>
> This is an old tool that was recently updated to convert /* fallthrough */
> style comments to the new pseudo-keyword fallthrough;
>
> Typical command line use is:
>     $ perl scripts/cvt_style --convert=fallthrough <file list>

It would be cool to include the treewide onliner from your cover sheet
in this commit message, as I find myself flipping between that and
this, otherwise the recommended onliner will be lost to LKML (instead
of being lost to git log). Or in the usage comment at the top of the
script.

>
> Available conversions:
>         all
>         printk_to_pr_level
>         printk_KERN_DEBUG_to_pr_debug
>         dev_printk_to_dev_level
>         dev_printk_KERN_DEBUG_to_dev_dbg
>         sdev_printk_to_sdev_level
>         sdev_printk_KERN_DEBUG_to_sdev_dbg
>         coalesce_formats
>         cuddle_open_brace
>         cuddle_else

I think some of these could use examples of what they do. I can't read
perl (as we've previously established :P) and I'm not sure what it
means to cuddle open braces or elses, though they do sound nice.

>         deparenthesize_returns
>         space_after_KERN_level
>         space_after_if_while_for_switch
>         space_after_for_semicolons
>         space_after_comma
>         space_before_pointer
>         space_around_trigraph
>         leading_spaces_to_tabs
>         coalesce_semicolons
>         remove_trailing_whitespace
>         remove_whitespace_before_quoted_newline
>         remove_whitespace_before_trailing_semicolon
>         remove_whitespace_before_bracket
>         remove_parenthesis_whitespace
>         remove_single_statement_braces
>         remove_whitespace_after_cast
>         hoist_assigns_from_if
>         convert_c99_comments
>         remove_private_data_casts
>         remove_static_initializations_to_0
>         remove_true_false_comparisons
>         remove_NULL_comparisons
>         remove_trailing_if_semicolons

To Miguel's comment about clang-format, it looks like you can do:

Use -style="{key: value, ...}" to set specific
                              parameters, e.g.:
                                -style="{BasedOnStyle: llvm, IndentWidth: 8}"

via: https://clang.llvm.org/docs/ClangFormat.html
which might make some nice one liners for some of these.


>         network_comments
>         remove_switchforwhileif_semicolons
>         detab_else_return
>         remove_while_while
>         fallthrough
> Additional conversions which may not work well:
>         (enable individually or with --convert=all --broken)
>         move_labels_to_column_1
>         space_around_logical_tests
>         space_around_assign
>         space_around_arithmetic
>         CamelCase_to_camel_case

s/camel_case/snake_case/

I'll give the script a run later this week and report back if I can
find any errors in the resulting build, as in the previous patch
series. Thanks for the work on this.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2Bu9ijMdfPQVZYU3tQCuhMePsvmKXA_kyyAaQUu2y5gA%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBGLQH5AKGQEBGIZ2BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BA24E41D
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:23:33 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id r6sf441814ual.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598055812; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKbMyQ7ROrs3znCMRHd3SK8LQGjZRcJs52sIq0CsI1Phx7bOUtA9Ax9LsLBj1jrK+b
         uYTRfcqwKRqNUZ/AyT3wFPCyRqOpwPB4AXEkeRv4ab8ALw4JfiVVJY758UTuyK0rL215
         L+pBkWsJ9ejk+XdiR7uljXHO2dnEsAA4sELYQEh9ye8fy4WDP+dMLtuBls5uKv7JujmR
         Ql0HW26LA47Zb+DZG6ibMpdArMaVNwb7z9o0wWz6CY2+MLhWyCC6Vmq/OK4JnTvbwIc9
         TmWm3XONsKO+FOKdWq7CRVSm820MzpN7nxF2H/jeL+oQgbQxMDMAWXN8F6wEhVlf9+1P
         KZJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rGFSw8mYuNSoYlATfl4nX8HLOGnJncPHC7nbda/6108=;
        b=YNSHVuG6BSN4/h9qZekkWOIectpjHTA+P1n/BtrN8C8VeRG/nHiKQoaq/biaZNGl0s
         Xi7weYVPDLLobQhj9zG6RMufkNN6nmvfzrqM6d3owmM8nXIoSDeMsTvCZCzd7gi3iaoz
         +/Xfk6wdQ3eniV/64DFE/3ifi6/fUXiEIpZTUIKwW/Fx943wfKVKTus7KN5iFvdGiRhM
         BfHVUBPtW2t4XzmuH4p02999m61sGKX3mYnWxj3sjTIXIP4FcVOkAL9aA7D17LNijs+6
         ZgaHtJSSFRGVH9lt+6P7W1qLSxghwQEjaQPAkONKgmcJ2Ul7UH/vdvTYho9ghCRahl+i
         GMZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sIu0gzev;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGFSw8mYuNSoYlATfl4nX8HLOGnJncPHC7nbda/6108=;
        b=Z/ZZVVSNKlG+/jOXdch+IE6qSfhn7Y6IBw7HMDLn4UAsT7kpjzUoWt0TGhvCKqfKiK
         HtIf/rXPXsNnBuizVeWFXLuQewRDjsd0Kf77TjR4alaKDfSXQpJEOXmBDXnjlXymgh1S
         9M/UNNgRqnXRe2Ja9uo0kRj6p9C7AN99TajphG4BeBxWCxNQmX8hW+TTnxADN271OgyZ
         Rk1mJn4ZifD8Gp5HlWDNbVmj/Mmw+8cuXzXzlvXl7YfzsNhvrK1AtGog30r9p0rDNelC
         djbw7To0oV/rzSK8tNmYR9TjYluBIn/ol00V06B3eueAWxiGcJjUDB14LnxGEtYZsiIY
         qPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGFSw8mYuNSoYlATfl4nX8HLOGnJncPHC7nbda/6108=;
        b=b1U83DFFR75vsXaA1xN6WqbaT5jkwp8isAT9Cuy0P4tleWoyj89d49Ug3hX6WVVUu0
         PkcOi2A35K4ku/s63GmFgS0dSZJBrIKGdNFaih88TN4AixhfP6Oesb7wseg3iBMblM0S
         tONrnJ9WZz5EHEqgUnzCH4SYugwwKjRUSw1TTLtxmm2KqxvOCBtJT8hV8nBoH9zJDgly
         /1jZzbwLcJgsf2R7K+hpa+ILX6tg0gO+MX78Yzp5imSTkXmVmP89vJKz7YTkMqyA+3r6
         bGsBTqbI82zUCQLbhnV0piKJkrnoPT74frS5Kt4y4JCRegcuC8MTOZdR7s5QYbXf6FdP
         0x6w==
X-Gm-Message-State: AOAM533roWasRrAuJcuDRXjohRbHG8VMgBuMo6zcgWxKdDe9w7k5CGeW
	To805lnX5EmCHRjTo35SrE4=
X-Google-Smtp-Source: ABdhPJxdttkLHbmzKYvRDvtZ9mjQmlXwWV2U/VQ5oUIitWBu0xQwHSi9iT17nZ9PodP9adxF11OUGw==
X-Received: by 2002:ab0:1c14:: with SMTP id a20mr3275089uaj.129.1598055812313;
        Fri, 21 Aug 2020 17:23:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd9a:: with SMTP id i26ls470915vsk.6.gmail; Fri, 21 Aug
 2020 17:23:32 -0700 (PDT)
X-Received: by 2002:a67:eb53:: with SMTP id x19mr3758663vso.214.1598055811955;
        Fri, 21 Aug 2020 17:23:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598055811; cv=none;
        d=google.com; s=arc-20160816;
        b=xH3kOL5ha3q5WjUX4keocPisL0FhxQ7dC/rP1ric2FkdFMXhDw2RyNl6pE0Gq0l56b
         pD8F5lmQZwm0KCJKM/lr3bksb+SE8TLCQH0MKeYMWm6YkJolffobNRWuyCeBVfBK9rlY
         F8JcS/JBTzl/nzsBC0vZ7ke2HCLmjsoXIjhkcBEiW71x578KoBOTR903fJ/5HI4hVE96
         gkxSn3B7BOVpqYhJaRScPn1EeYaHQU6Ladhr6Sd83dXaAL90mFqIa911LJbZU7fSFYU6
         /syPGeXKQTrAvFgIWwFx2dnIycQHAXTG1N/mcRg4LnPkSNO/92MKH9Ht6v8/qQFQhyZo
         6EFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lVdLiKM9f5DmQ4nw1uLUhU7UpsX2vw3oOdD0OyADK/0=;
        b=CuL6F1Hyl1HimtviXHCM1Sm5x7djEzJeFOvkXpuSfVSvRMjTbQ3HyOR8bUpz0nUF4d
         ilyAaZwIGkIgGFqRe+vTvoBXt3ddKuK7XW1tknTwuPtUeTewvSJVPyTAdeXcYHDNU8Ce
         aQGGcXVeB4il3uKB1Bw6VVmAFNnRJnpGKbNBjEjndVph7D2pvB+0Kl4yd5VZ6Jp2j+7F
         6JpZpivLJTW04kje3jeoHeSBVMhz0hQfh74BT4DY4YJnLEl6kiWSuIaWlzJddqDX4dD7
         39+n2ct3OG8y7Ury3tdLtsEhkTjVSpD7hmlDk92ZKmhzKi/4hhGD2tbDcSzrDYROKafq
         dY2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sIu0gzev;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id y3si271882vke.2.2020.08.21.17.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id t6so1508658pjr.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:23:31 -0700 (PDT)
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr4181251plr.119.1598055810741;
 Fri, 21 Aug 2020 17:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-3-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:23:19 -0700
Message-ID: <CAKwvOdkz3asVBpi63yj94OMLnkU5q3rqA80trVXwyoDDcPs9QA@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] gen_compile_commands: use choices for --log_levels option
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sIu0gzev;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Use 'choices' instead of the own code to check if the given parameter
> is valid.
>
> I also simplified the help message because, with 'choices', --help
> shows the list of valid parameters:
>
>   --log_level {DEBUG,INFO,WARNING,ERROR,CRITICAL}
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - New patch
>
>  scripts/gen_compile_commands.py | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 1bcf33a93cb9..535248cf2d7e 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -45,24 +45,18 @@ def parse_arguments():
>                     'compile_commands.json in the search directory)')
>      parser.add_argument('-o', '--output', type=str, help=output_help)
>
> -    log_level_help = ('The level of log messages to produce (one of ' +
> -                      ', '.join(_VALID_LOG_LEVELS) + '; defaults to ' +
> +    log_level_help = ('the level of log messages to produce (defaults to ' +
>                        _DEFAULT_LOG_LEVEL + ')')
> -    parser.add_argument(
> -        '--log_level', type=str, default=_DEFAULT_LOG_LEVEL,
> -        help=log_level_help)
> +    parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
> +                        default=_DEFAULT_LOG_LEVEL, help=log_level_help)
>
>      args = parser.parse_args()
>
> -    log_level = args.log_level
> -    if log_level not in _VALID_LOG_LEVELS:
> -        raise ValueError('%s is not a valid log level' % log_level)
> -
>      directory = args.directory or os.getcwd()
>      output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
>      directory = os.path.abspath(directory)
>
> -    return log_level, directory, output
> +    return args.log_level, directory, output
>
>
>  def process_line(root_directory, file_directory, command_prefix, relative_path):
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkz3asVBpi63yj94OMLnkU5q3rqA80trVXwyoDDcPs9QA%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM6J2H4QKGQE67BL7VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEA32430A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 23:52:52 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id ei10sf2951409pjb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 14:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597269171; cv=pass;
        d=google.com; s=arc-20160816;
        b=yFUih2PuvQMguK8QPBuwcU8v3eMSgBe6NbilPlOUFxq3P5f84UEXnb/Q1uPCWsQw4u
         NonYRi3YArechX5vEtAZl/zzXdwEYYTbzCFMg2dXmtWcJMJd9/OHG96X8cuVzE9BVO5M
         OCH3y9vVmM7Q5WITMVW2snt3MCZ4HqSNi3AQg8JNeWauk8+NrRYhbV8yXcrowv066BwF
         2+Lj64xepeC215QRUFIzYWuED5h6QnHI+dtCdzC+75xXxqQNpRjKZn2Rp4B5n8BfIeWT
         ZKo271p3w/3iVOLXIahqM7V5d1vj8HyAKTAQA5yEJnA5z2ThlD3Um9GQ5QplhtO6T79z
         HkQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4cT1nbHFC4N70YXwgi599PIZELlzoOils2IpLMkCrSg=;
        b=J7uyC31DeJ0P0T6EWTKF/6YXT8NL+Cokjl9lmAnR0PMshb8hsJyeVr6cfeYGJDjtIx
         WfNV5kYr8Dh7SsCPKf4ot/1Nu5ln0oxBdwLVKupludJRHKKjf3jsYxpjuIdtEUn1z69a
         +WwMF8yyIJlgr4vjKyFOoKzV16sYSqrCIGM0YYJkulEg8aX5kqXV6PgpU0z8t/DdHgnZ
         NlN22R5uft5F0s4JpLoFUhMBI4WSZSDAFZoOSgKTA6xNft+QXAgzHdoq/ChhNZArOoA6
         g0krd1uMJzX8o6EBBp5IsN/72k8NbKY771mF7YxxT5ruw87f/gFevBwxfJIEDGnrxub7
         0BOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pnsWam0W;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cT1nbHFC4N70YXwgi599PIZELlzoOils2IpLMkCrSg=;
        b=sLtHkOP1GXNm2quVV7vA2FIvrEa6UhPBxUSd4bQrtWZuMbWfiYY5udmHGqqxt6Dpxv
         qPnSyaI1CiORMI+cCGnRN8WJI73rh5loYqkQYPeekhSZDjk/xnYuUGsV82sctKL/Y1Tw
         6ModYJwsaa+m/b+1WT5Z9DyQ2GBscKZ4duDnxF1lF8U0Bl3gREenlR+Sy55oHKcDJWoz
         KU6i4KTjG+wJ3ZFUjc8+Tx18oUejaIXmCN1LDvlGohx9UuWh+4Q32H3GOo+53e1aeuFp
         aE+nKsCAUF1V+jCBnv7K28w5DRjECzNWdJUaYQMySPPLjgcQLkJeEgw6JNDz7QFV8smD
         EQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cT1nbHFC4N70YXwgi599PIZELlzoOils2IpLMkCrSg=;
        b=YFOIEwi7a/H2BK2wiqLw8qQm9Nm9JAbUTFzgJJ8EO4ux4rlBHeugXSJwO6zBBk4ZcI
         tcEZDjEPVm9q+EwbRveC0iFINzdewS0WCCUPg980Ez87w1yWFYxwsuOF71CGhIgT5dsU
         R+GqYBAB8oHuZWEweyuEiDC8nSnKTU3tqNOuJYDMwmkLM7v6aN2tRLBch1Ua2Dat2Maf
         nGjo3LZFCneWJU7c9LhjbL1nLXQj0ZUz/84UutGsgqXwONFAW7mb79B+NiHYBULu7p5W
         CIO2OGhnwsREVfB7feJwFLLqW8hhX+EQbiXTkJCq6LIsPZDmFMlISVuhOTle1MX706o2
         S1Ag==
X-Gm-Message-State: AOAM5320CIOTXly9y16/fPZ/KQeR7cCLfy0s8ZihQ6NMJKXiXUpezmA7
	RpBICBjDC9PikLV1QttQLxo=
X-Google-Smtp-Source: ABdhPJzyxqXJTSrYtK+51fmbJCP+v9kqzQn+RcBz+MC3dmoeCvmfiJPoYHrNJR+nBt1UMBgsrMTo3w==
X-Received: by 2002:a17:90a:d195:: with SMTP id fu21mr2031426pjb.100.1597269171136;
        Wed, 12 Aug 2020 14:52:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls1232935pfs.9.gmail; Wed, 12 Aug
 2020 14:52:50 -0700 (PDT)
X-Received: by 2002:a65:5201:: with SMTP id o1mr994587pgp.404.1597269170791;
        Wed, 12 Aug 2020 14:52:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597269170; cv=none;
        d=google.com; s=arc-20160816;
        b=QSgs1GdE5Udp8hSRt1oRRpks1skOR065181S51sTkcwtlIqPtiIlWerlaag03zvfjN
         nXilmeT5RNUiMrj2k5M6+b2bQPDsFggE43KFqaQaprSVdIxs5Nz9ATkUo1wSD3rsHmxW
         wAonz1tAJCUEkvObg3Mu5d736rYz1e1PWFGRBi30DXPPk1HE38pGK4g/lW36U+rDsPSG
         Y1zRqg3pT1TCDzaqIahSUSyjTWd1zrUaIFn6G4t4xnu2RYj0VEILeKOfEcOJYFcVFPmx
         HCxapfhmRe5NDyrV0b9wZTIGzzlIf3Onec8EQmy6sPF+3tQD9CL7dpObXfmxLjfwD1Sn
         nRUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wCbQE1eRz9aMBbIfwDa2a9ZzzYzoMclcPd3bcmvTf+U=;
        b=t26g3H1vvGPJvPQZv8mXEo4X8Gl38gRkVoX1/TCR85bC2TOfIhCl5QoI9owBbw6RFK
         JR6vCawWf1Bj+NA1qZyO2IctaMTTQBU00Y42LFINVSiqv15djiVtY4cVRUuY+A/dG8Vk
         oI+3ZNgahK2eYSpewaBcG8k2uo4wlCc/8NMJj+HTrHcRnXvN5yNQftkb1Pm4DRSznYMy
         zdkWGYeD0fN8dgT1s9SPFYDvDV+c86kV4rzxYPfxXnf7gKPc5lPDHxlw5he6Bhkbzq5l
         fxRxV7W5dW0093UUy2P98aN1mVH6DbUUy6gEqU66djyegMj4VPE2IN/AXXYdVLI43pib
         iUbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pnsWam0W;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x18si261877pgx.2.2020.08.12.14.52.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 14:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 17so1691912pfw.9
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 14:52:50 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr1056708pgh.263.1597269170150;
 Wed, 12 Aug 2020 14:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org> <20200812173958.2307251-2-masahiroy@kernel.org>
In-Reply-To: <20200812173958.2307251-2-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 14:52:39 -0700
Message-ID: <CAKwvOdktQgf3pT-9j5Lo3oKQ=sRdTL0XvPto9j-8NASA6fcSvw@mail.gmail.com>
Subject: Re: [PATCH 1/3] gen_compile_commands: parse only the first line of
 .*.cmd files
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pnsWam0W;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 12, 2020 at 10:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> After the allmodconfig build, this script takes about 5 sec on my
> machine. Most of the run-time is consumed for needless regex matching.
>
> We know the format of .*.cmd file; the first line is the build command.
> There is no need to parse the remaining.
>
> With this optimization, now it runs in about 1 sec with the allmodconfig
> build.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Before your patch, my x86_64 allmodconfig:
$ /usr/bin/time -v ./scripts/gen_compile_commands.py
...
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:08.35
...
After:
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:02.10

So it's a nice speedup.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
small nit below:

> ---
>
>  scripts/gen_compile_commands.py | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index c458696ef3a7..19c7338740e7 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -125,11 +125,9 @@ def main():
>              filepath = os.path.join(dirpath, filename)
>
>              with open(filepath, 'rt') as f:
> -                for line in f:
> -                    result = line_matcher.match(line)
> -                    if not result:
> -                        continue
> -
> +                line = f.readline()
> +                result = line_matcher.match(line)

If `line` is not referenced beyond the following statement, consider
combining the two statement into one:
result = line_matcher.match(f.readline())

> +                if result:
>                      try:
>                          entry = process_line(directory, dirpath,
>                                               result.group(1), result.group(2))
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdktQgf3pT-9j5Lo3oKQ%3DsRdTL0XvPto9j-8NASA6fcSvw%40mail.gmail.com.

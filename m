Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4GNQH5AKGQEDHFHBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0E124E423
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:29:37 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id r13sf448436uap.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598056176; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBiFiVL//zC80C7w+d6ABWOs5kqGfwEoFjJE+GxwJzcnwc4yL/qTDN0WOVgmEuqWkV
         WwbNFY4qHoCGanhhOTsahWThERNtaVJnrDWVXzviQMHW85Z6zTRG8N+qE7fmsOogYpyH
         zQJy8eK1vOJxD/cqPKM5GCGYX4bZYhIT6DjRGuLnEL6COQ3VPAjpcDS3Z3vZw1mgTKi2
         Z8DCUjFY+z75B7whUj0GKk04deF2fHiOgdtxBr0mMkQcvsYy2dOjDRx1Kg9yCpW1GFr1
         XpV9D6YqCDVYjaeMkICFsY1x4LAcQmBDlzMQeOUae735WWdmCMsMB3tnSuZgj4fcIOJv
         R8Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JNVp+Cfh3mklpncz5st9KYCWXo9Sai5teDI2kxt8RlY=;
        b=sjEFZWwxUEejakjNR2+5EC9/PNEtPSy/GvKAbS6RZNWDfg1zrMm4azR7rGqPISs2Or
         HF3kisab5t0eu3bBlVLbv6jQukguOTTu4Su2wzradnMIfTWNr8VcuEQmxrPJIp12JNA+
         R6Vo4YiM4gsh4EdFyAvdoel0Y0r2Mkc+jmDI4+DDNxmOWRELZE4M+uHYjDcNG9Q8YM/H
         EjpuMgkHTJB6qEi+wplmnZac/kPKRoErdmCeDZQ6hGfNNMUOY1CJaGtVSkhl+OrLRoS1
         YGMtxwT6PL2japDE/rh2yL0TF2+R6laky2wjEEf83BnzDOsTIfNee8kRkwh4PfhnWolr
         Feuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7GFhujl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JNVp+Cfh3mklpncz5st9KYCWXo9Sai5teDI2kxt8RlY=;
        b=msFU5/BvRvaQg8a+AGUyrj6xaVUMvwwBOHGf6qQxTxzgeJHxrvgcVH9yu2WQgIXzdK
         ocjVq6HBbkEQvPmn5VHbpVsAs0vRCqany5CmZuB4XVfNkgqce4PdOIAaRdz03MCPtlJV
         ljMpojSQEcGopVnVGfXHoRuRtRPGPsPu5iqXWXXMntl8TbmMbt3EukZ9lzdEVv/mh9fv
         eotDAYRjmxsbp0oh2VdMhAHxDVHYL6nK9YVMR3kCbV2BLfymnnI6DkraHfN59n9p6JBt
         Hq59aBbNSW5rtvmv4JBZds57vtYWVkuX0Kyg0CFYxGbZRunQkmUrVFu/dNRQKaCN4tjA
         aMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JNVp+Cfh3mklpncz5st9KYCWXo9Sai5teDI2kxt8RlY=;
        b=jxGsk3tuVC+FZgvtbSZln5mpuL/cfh5hXxxpPlyrXUE+56UxSukH8G6XbN7KTP8so8
         eOMhZbe4lbdVJIblqIV1JiEQFLENRxDPGJDctEDMUjW9OEqbN8htAzgrg55NaAsV4HI8
         XPtnnorEWZGOLzSY4KuqYF81uKkOog4wAVWyY8nXEbaiU6YdFX4+Ij7w3UI5Xeo6GaOv
         YuH5tu8emd7eW8tpT5GU5jUBhKKSN5mlgpm9gkVdm4LhZ6VUnHDHiZsdnX8MHmhPNEmI
         3OTe5WGQoQaPTVg9s1VOOtsm/nibPT24uvpgPeYrjKIv0L4xkSwsOMN0cYBXrORE/JwP
         bcfA==
X-Gm-Message-State: AOAM533ANFCK7qTs5GuCONvSsrdb+VxX/lvcur8JBddc/p7nbwK6QjVn
	b0R6CM1Iy0CXhlPUkjYDtYo=
X-Google-Smtp-Source: ABdhPJxmTupmRSkUmPKz3nzGi3Wqzu0NU2rkYRRW2LlXg8qizW6tgDYQcArQPcEpp/rD47flaDWXlA==
X-Received: by 2002:a67:6001:: with SMTP id u1mr3563963vsb.43.1598056176121;
        Fri, 21 Aug 2020 17:29:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f415:: with SMTP id p21ls472398vsn.7.gmail; Fri, 21 Aug
 2020 17:29:35 -0700 (PDT)
X-Received: by 2002:a67:f597:: with SMTP id i23mr3347840vso.36.1598056175779;
        Fri, 21 Aug 2020 17:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598056175; cv=none;
        d=google.com; s=arc-20160816;
        b=w2WDFbbdJdAer0s9PSHwATtzzFZBwB5TTLu9s48YNpNOOB9dDePtKCSwA+5xesydIM
         09PmrCR7w4R2aGKaplvPA05I2nq+H9+5enMzTb1ElV+AXFMCzE/NdIhDHen8AQEU6Mqr
         nFcfxLlGOBF1566csQ/oWB+mg0JmUQaJt5TrBD9b20HjAvgozPUiczZt6Fi+bsUsPFqj
         j86KFJm463kHEYjbrTMwDLbCffttplhPSnYm2w14LsGR75kcHU50I61Garc3N0Jk/WyL
         wwFUi4pBqO5wLFVxrkAMqQE/itY/OvrM2XHuNVJXyWIqKzrUoCdYYpQy6tmVjRTBFhL+
         9ikw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JLtyurL4mpiA5R+UunejNWPDeFw/A4442WcoR6JSjoE=;
        b=Qq/GqPgGG/L9aVQQAPaEHbsRVT3grqJAsLUJaQ1ei+saz277+bnlPC2+MkhMWZdEwL
         /IoqNhVrQdpitoifhTJnvxI/1FwXSwkrEB8iZO4CQXDAMNxHASPnzPLa4Fgn/KO033wc
         w1A25TK60NYClICLxhchr3W/NY3pwa2T4mu/qnvZjR12fnCKo31Nszz3WWMVxwYJdlS0
         FVWYfHDV6MAhzZCh42Kbbl2RGIZIkmyHGQee0cPTx2kNt37QC5upDQIwEU9D2bNGyAj9
         UOFbXMcQNZ3xHO3hjWtI6LigzKKrcoR9tPRZQyHBcUA6nR21n9UsBJIFARlU6QyKKz9L
         KcjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7GFhujl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y3si272581vke.2.2020.08.21.17.29.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r11so1852307pfl.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:29:35 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr4123156pgh.263.1598056175162;
 Fri, 21 Aug 2020 17:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-5-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-5-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:29:23 -0700
Message-ID: <CAKwvOdnCZ7ao55Zdh3qkJQzudOwhkPFPOY802Emx3o7GMDdCwA@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] gen_compile_commands: reword the help message of
 -d option
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o7GFhujl;       spf=pass
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I think the help message of the -d option is somewhat misleading.
>
>   Path to the kernel source directory to search (defaults to the working directory)
>
> The part "kernel source directory" is the source of the confusion.
> Some people misunderstand as if this script did not support separate
> output directories.
>
> Actually, this script also works for out-of-tree builds. You can
> use the -d option to point to the object output directory, not to
> the source directory. It should match to the O= option used in the
> previous kernel build, and then appears in the "directory" field of
> compile_commands.json.
>
> Reword the help message.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2:
>   - New patch
>
>  scripts/gen_compile_commands.py | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 1b9899892d99..5f6318da01a2 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -31,13 +31,13 @@ def parse_arguments():
>
>      Returns:
>          log_level: A logging level to filter log output.
> -        directory: The directory to search for .cmd files.
> +        directory: The work directory where the objects were built

Punctuation (add a period `.`).

>          output: Where to write the compile-commands JSON file.
>      """
>      usage = 'Creates a compile_commands.json database from kernel .cmd files'
>      parser = argparse.ArgumentParser(description=usage)
>
> -    directory_help = ('Path to the kernel source directory to search '
> +    directory_help = ('specify the output directory used for the kernel build '

Capitalization (specify -> Specify)

With that:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                        '(defaults to the working directory)')
>      parser.add_argument('-d', '--directory', type=str, help=directory_help)
>
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnCZ7ao55Zdh3qkJQzudOwhkPFPOY802Emx3o7GMDdCwA%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUWCSX4QKGQEOMFEJDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFD9235267
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 14:34:28 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 65sf24296797plf.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 05:34:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596285267; cv=pass;
        d=google.com; s=arc-20160816;
        b=GuWAASgVmiQsBXP0kll8dlQ+S0B+klUBn2m5Wr8ud9YsS7vQdLo37YUeZYqECXd8Tq
         m9HjG6IBN/4CmO+RUTAvUJN6im5hhPpRfSLYrb/IPql99D7REZoaH/xvCsguEiwp2T5d
         WhnJPz8b3K0inJZl59hodrfldtaFC0k7FU+prX8syk9uF0ITZyq5LXvEd6ysm1b3T8wE
         pOcDUbHAMC3llBXHmk7eir+i+bsuR/+LsoYCdRajHYb7H0bprEf0hil6dS+4ZKfxwG6M
         HzuCS3bit42wLjT4ei6ivw64UNAjdVBsgHusTEJ9ZkIEGkm5V11eEBqqaPhSNTZ57i2q
         CjEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=EuZtp6mU4ZFuDvpS/c4CQC3pWioE8tbJSyM5AIy4ZbE=;
        b=FbkP568H7s0ZhCo/bsJak+9pUzq5iBKSptnmKblxx3+O9TJmu9ygu8z8oabwTIHq7d
         KJRT8zdgBOM0b/SQEcJwt+SBZIoXn9L5Xac6taEz3FlYOtWstY7u3kw6O9qWOLMyfCmU
         u9h3ACafov5dGmwYGOKtGAvofS8ai8XfOmjr0nYUxW8js2iYJ3e4inE5R8CTi4wOJcEu
         sE9WFSiCpnOcf5PAWqrhZnKtKkipbq2zzjWgUiiWik3idDfV3S4i5bk70kD68Wj60Dxy
         VFK4RhHZawISbxVYi6xmxOc6VjSdwBu0PWCNN8fbLazAniV0D0cbcbgHwJD0tKwPpHcG
         og3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QSIXbanb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EuZtp6mU4ZFuDvpS/c4CQC3pWioE8tbJSyM5AIy4ZbE=;
        b=EUYKhQqBi+rMba5cMNPjVcZTDLFwJyB7gA7dBKsJMn5EXUQ6sZOAsS5XayBR27gbnQ
         U96Rjzo+GGcMyrFRpOcD5a9ro1zFWnHoqr5QvjEc59af3N0a1hjXJDhoc+CgZ3+ceIWq
         VTPRtNMwACHd1hMwe0hBJRgyezqPJPG7fYtg+BTKCC+qPd4UiDyhwkM9nh7Rk2OkCtVP
         TXLid2+en5Enj42RpGtPvZpwHgmxtSOs8cxpNxVo+oLlWkVXjalBzxYf3DjpGP1WAXFk
         /CiTcmOAtNVx69p/HiXxR8zzEnGCgV4VbAl4Z8EkCttcZjuH4rAa/9wNuu1Si6l8zNJs
         I7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EuZtp6mU4ZFuDvpS/c4CQC3pWioE8tbJSyM5AIy4ZbE=;
        b=DQXDKaq5FMSgkM7FO6RoifdIajkRz2l8kMQ0dgxWM+7CYOG/6ED0krTfS0aliNSJk7
         7HiNUepZ1K4i4qo/Mv2bRSgscbMi4VdqcRfnQz1Q00+8uhrWv0/i++wJmnochC7p8xo2
         PG9M3uz8LkKumG+eSacPlB31oytJjErdog0zoKwKSUsHWjKkprHq2Gw9DMOTgyeXy1wq
         jCkbR00+UykWTEVYEtEKCeW78kKPiCIU1KZmKGyXk8FZLIrl8/Hwhv0wnxMmvSNuf+AZ
         DcvSiRygYMTIAxvn7VhXtUjjKqGMrMZ16pQure67f+5cW43vM59SUTSB9y3tipYJX8yA
         Iq4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532auQnocbtTaMWhctw9wNb5maTwDDjSmzUL3qj7UJR8ByjSUiS0
	2NTiBtjTF3kNl9LXohuidIk=
X-Google-Smtp-Source: ABdhPJyrMVc3/vyp8FB8/271RepFxu/oIrWL9jI1AZy3NzMPDbmpsj3PEqbrLxVuSp+w0lyrGmb7Iw==
X-Received: by 2002:a17:902:900a:: with SMTP id a10mr5912260plp.203.1596285266993;
        Sat, 01 Aug 2020 05:34:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a102:: with SMTP id b2ls3916039pff.8.gmail; Sat, 01 Aug
 2020 05:34:26 -0700 (PDT)
X-Received: by 2002:a63:5613:: with SMTP id k19mr8001066pgb.424.1596285266548;
        Sat, 01 Aug 2020 05:34:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596285266; cv=none;
        d=google.com; s=arc-20160816;
        b=ri1F+zXE3edNCin2Vei3rZvJ2INvmiMCIijm3MfMRhasHxHoVx7Nzju+O8+TIKuPMd
         qhWGTmrzL+wP5voLjrUmWzFeJ20N8fvXzwpcpVCt35kR2BQOu6352KsG6s2RhoUqgckE
         QZkySb0ioIXhinRs+92TpZ7kqAnbN7VoNf13WNTdVDNErAftFkOOoDHhXhtBuNld/xTp
         gehmfoX2cvtftnsjFmtpJEwxokLXHAHo/x1yVZ7i3/92PzibHS1UBAaTJ0vGnsWBhf1B
         WMBfMsXJ2DBeaOmy0qcioMKWu6e8enOxEBUbQ2n7i+ztLKZWr4hGtKm9exYeeGjvpq6a
         9sFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=L+wjmNkKDft8GKG9TLffZw2+e6y2VA945fN99WOCg5k=;
        b=07nATY4C0+wpyj1N216rlu6WZSjTIt0R4a4wspChvd8pxS5iK/5DdmeO5skuomiv5b
         lg2LgqqreHOhkaZk3uXvIjRW5KvOy5JiOAcoNTDjdwpIn/nF5MXU9h1g9JfAxNlw/twz
         KaeqdWdG95236VTWyHObYiEiCVv49hYpL6j+kqoOBBZ9PVo85+3QWfVw7jAUlH4Z0sbP
         yBXqaeVI/0QyGUmNiwkYPHid4TmACkG6IjFYOhrJUCNxBz3pWipWH5HnTt9DP8N2Ftbo
         xFN+B3NGMuyW3OFf5yYcjmG6Uhxu0YkYuvHlLLlopemN1pAAKUQjmLXVfXjabgia4XPp
         tC+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QSIXbanb;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id g18si738707pfi.1.2020.08.01.05.34.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Aug 2020 05:34:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 071CXkvY021971
	for <clang-built-linux@googlegroups.com>; Sat, 1 Aug 2020 21:33:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 071CXkvY021971
X-Nifty-SrcIP: [209.85.222.42]
Received: by mail-ua1-f42.google.com with SMTP id q68so7469872uaq.0
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 05:33:46 -0700 (PDT)
X-Received: by 2002:ab0:5b91:: with SMTP id y17mr5816923uae.95.1596285225231;
 Sat, 01 Aug 2020 05:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200719194602.61387-1-grandmaster@al2klimov.de>
In-Reply-To: <20200719194602.61387-1-grandmaster@al2klimov.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 1 Aug 2020 21:33:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQywudK9hJLeAT+Z3HWt4bgR+Tf3PWWtqkc7LT=eKBMyA@mail.gmail.com>
Message-ID: <CAK7LNAQywudK9hJLeAT+Z3HWt4bgR+Tf3PWWtqkc7LT=eKBMyA@mail.gmail.com>
Subject: Re: [PATCH for v5.9] kbuild: Replace HTTP links with HTTPS ones
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QSIXbanb;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jul 20, 2020 at 4:46 AM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
>
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---

Applied to linux-kbuild. Thanks.



>  Continuing my work started at 93431e0607e5.
>  See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
>  (Actually letting a shell for loop submit all this stuff for me.)
>
>  If there are any URLs to be removed completely
>  or at least not (just) HTTPSified:
>  Just clearly say so and I'll *undo my change*.
>  See also: https://lkml.org/lkml/2020/6/27/64
>
>  If there are any valid, but yet not changed URLs:
>  See: https://lkml.org/lkml/2020/6/26/837
>
>  If you apply the patch, please let me know.
>
>  Sorry again to all maintainers who complained about subject lines.
>  Now I realized that you want an actually perfect prefixes,
>  not just subsystem ones.
>  I tried my best...
>  And yes, *I could* (at least half-)automate it.
>  Impossible is nothing! :)
>
>
>  Documentation/kbuild/Kconfig.recursion-issue-02 |  2 +-
>  Documentation/kbuild/kconfig-language.rst       | 14 +++++++-------
>  Documentation/kbuild/llvm.rst                   |  2 +-
>  scripts/package/mkdebian                        |  2 +-
>  scripts/package/mkspec                          |  2 +-
>  5 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/Documentation/kbuild/Kconfig.recursion-issue-02 b/Documentation/kbuild/Kconfig.recursion-issue-02
> index b9fd56c4b57e..df245fd7670d 100644
> --- a/Documentation/kbuild/Kconfig.recursion-issue-02
> +++ b/Documentation/kbuild/Kconfig.recursion-issue-02
> @@ -42,7 +42,7 @@
>  # "select FW_LOADER" [0], in the end the simple alternative solution to this
>  # problem consisted on matching semantics with newly introduced features.
>  #
> -# [0] http://lkml.kernel.org/r/1432241149-8762-1-git-send-email-mcgrof@do-not-panic.com
> +# [0] https://lkml.kernel.org/r/1432241149-8762-1-git-send-email-mcgrof@do-not-panic.com
>
>  mainmenu "Simple example to demo cumulative kconfig recursive dependency implication"
>
> diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
> index a1601ec3317b..41bee6a171e3 100644
> --- a/Documentation/kbuild/kconfig-language.rst
> +++ b/Documentation/kbuild/kconfig-language.rst
> @@ -688,10 +688,10 @@ and real world requirements were not well understood. As it stands though
>  only reverse engineering techniques have been used to deduce semantics from
>  variability modeling languages such as Kconfig [3]_.
>
> -.. [0] http://www.eng.uwaterloo.ca/~shshe/kconfig_semantics.pdf
> -.. [1] http://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
> -.. [2] http://gsd.uwaterloo.ca/sites/default/files/ase241-berger_0.pdf
> -.. [3] http://gsd.uwaterloo.ca/sites/default/files/icse2011.pdf
> +.. [0] https://www.eng.uwaterloo.ca/~shshe/kconfig_semantics.pdf
> +.. [1] https://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
> +.. [2] https://gsd.uwaterloo.ca/sites/default/files/ase241-berger_0.pdf
> +.. [3] https://gsd.uwaterloo.ca/sites/default/files/icse2011.pdf
>
>  Full SAT solver for Kconfig
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
> @@ -710,10 +710,10 @@ such efforts somehow on Kconfig. There is enough interest from mentors of
>  existing projects to not only help advise how to integrate this work upstream
>  but also help maintain it long term. Interested developers should visit:
>
> -http://kernelnewbies.org/KernelProjects/kconfig-sat
> +https://kernelnewbies.org/KernelProjects/kconfig-sat
>
> -.. [4] http://www.cs.cornell.edu/~sabhar/chapters/SATSolvers-KR-Handbook.pdf
> -.. [5] http://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
> +.. [4] https://www.cs.cornell.edu/~sabhar/chapters/SATSolvers-KR-Handbook.pdf
> +.. [5] https://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
>  .. [6] https://cados.cs.fau.de
>  .. [7] https://vamos.cs.fau.de
>  .. [8] https://undertaker.cs.fau.de
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index c776b6eee969..2aac50b97921 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -76,7 +76,7 @@ Getting Help
>  Getting LLVM
>  -------------
>
> -- http://releases.llvm.org/download.html
> +- https://releases.llvm.org/download.html
>  - https://github.com/llvm/llvm-project
>  - https://llvm.org/docs/GettingStarted.html
>  - https://llvm.org/docs/CMake.html
> diff --git a/scripts/package/mkdebian b/scripts/package/mkdebian
> index df1adbfb8ead..48fbd3d0284a 100755
> --- a/scripts/package/mkdebian
> +++ b/scripts/package/mkdebian
> @@ -175,7 +175,7 @@ Section: kernel
>  Priority: optional
>  Maintainer: $maintainer
>  Build-Depends: bc, rsync, kmod, cpio, bison, flex | flex:native $extra_build_depends
> -Homepage: http://www.kernel.org/
> +Homepage: https://www.kernel.org/
>
>  Package: $packagename
>  Architecture: $debarch
> diff --git a/scripts/package/mkspec b/scripts/package/mkspec
> index 8640c278f1aa..7c477ca7dc98 100755
> --- a/scripts/package/mkspec
> +++ b/scripts/package/mkspec
> @@ -46,7 +46,7 @@ sed -e '/^DEL/d' -e 's/^\t*//' <<EOF
>         License: GPL
>         Group: System Environment/Kernel
>         Vendor: The Linux Community
> -       URL: http://www.kernel.org
> +       URL: https://www.kernel.org
>  $S     Source: kernel-$__KERNELRELEASE.tar.gz
>         Provides: $PROVIDES
>         %define __spec_install_post /usr/lib/rpm/brp-compress || :
> --
> 2.27.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQywudK9hJLeAT%2BZ3HWt4bgR%2BTf3PWWtqkc7LT%3DeKBMyA%40mail.gmail.com.

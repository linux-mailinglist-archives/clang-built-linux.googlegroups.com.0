Return-Path: <clang-built-linux+bncBCS6NPVSS4JBB2UX4KEAMGQETXZ675A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D443EC6FD
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 05:37:15 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id s8-20020a0564025208b02903bd8539e1casf6928898edd.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 20:37:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628998635; cv=pass;
        d=google.com; s=arc-20160816;
        b=z9euDGEDIqaMWswvhwSs/9gqBOmzqLSwThCi2cp6nSabhnpZnHn9jB+Wk9X95hAnmh
         vGbN0xNd8R5ldn1FwOJKT6aSTwpME6s9cg9TZApG6d0mwdyEQvIiJs3cg4QZHHfeRH6P
         2OT+yKAVJlToeQlKB9DTqa0x0ApU8UyBw4zLT5zTNTtZ98rkljvrzaFHezCrZ3soVSzx
         lCGRCLrdzoJDZX0Jf3XHnQlw8C2e7dURduhVDqwZaSotXAQLgga0QP3NZ6ZO6tJfT0Yx
         YkldMUED6mDMUv0LykyVZj+p0OnfktREFEDIMqIQe2vpRiauddHlUAn+OF8FHEj7Rjm2
         5zZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=txM+pPlgSLL/WMpwJB/3kwCFwRKXQUrJ8fRFtT//HJ0=;
        b=jKKXCHtgNfMloKT9MlT0zmch4xtugDOF94n61uLA7ljqbAss3eXhAoy0bLmNyK++hO
         o/xKkH9xmLIchzsIYFRFzUQCvgfzZ6elO25eU5AxYgvU2lhErU30uaHX2uySKh+jdI9e
         8TJF4/hKoRHHX8F8Bbdli/+PY9O9YMui28RHTM80xuFCjYeTVFYNlM0lD1tdeEDkWj5m
         NrLP5vuAG/0MOEcRrAKDw3RXD78gUdhR1BGEjUhGVKNtxEJH7nhdiFF2HPh9GBEpkC2w
         zIvZFUbdIquTRh/vL2J9a05bgSvBNPaX4IcHtajTQ2kUeL60eXOj2aAjDS/96FE9pguv
         tWSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=LBITQQa3;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=OW0wUQ6r;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txM+pPlgSLL/WMpwJB/3kwCFwRKXQUrJ8fRFtT//HJ0=;
        b=ZrZqEUAYEqEfVbmasTrR3epvTmLK8YHKqNQ8XOIve8OVttl4yqTVY4R9yxxEu84QXO
         Y6NL3BBC1aeX7cuw3IquFYdJIYXn9XQ1XtBl9S2UXzt1SUC1MjN4RNg62klfUG2FD5z2
         HaiUJY/D4qDD0A5w7FQaJuOvHcGWlvIPJF3q6Ja3faoQzTOz4lQobQmmC9s1z80mwMxx
         jWdnOy9ZVsPzZYYJM7etb4ieWSCWOaLM1gsMO7l8/Qko0VyLIIMsLNuf1eRUFqGckIbu
         E2efMIkBayjJkICkpJv02g5JpOWJlAl/XaMr+cCcZLrR6nHbksj+0Zhkq+t2AepiNBwv
         jQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txM+pPlgSLL/WMpwJB/3kwCFwRKXQUrJ8fRFtT//HJ0=;
        b=Je0QuCUhZX4shHRVNWnAcf/yHBoBK1NYPMsb+hZOlgJqnvCBFNQPtVz3JJTL/kklgx
         5bly5Z1QCF+NATx4nwiJD+4KkYK42SyUWlYpH3E9Tl4/N2viJkOG853OLW8COfNzZB07
         riAWNLAsx+PxrE49P5ZGaukBmwj3LoCHvcaYvvvo8IM503iy0jQdd8IupWB8QOHpBhZ9
         /UxponGUzleUqcMJM6av87IjjYQDZcpSQXW+f5BCIBWzxnvLzfTh/2M+xuXB1KjvakOy
         vmywIDR+nllm1TpWgnL+uZUgVEmk+VwFC80KinUeQuVLStcYXvKj/UzCSlwVTZkTCP4D
         UsTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533er6Isd0uDAenwEASX3OD4/0JaK32LfgxVUPXEn6SrBbemp+kU
	AJoLlBATogflDvjGMFJU0X0=
X-Google-Smtp-Source: ABdhPJyxUD+sx+0TLigs1QopbX4tM50aJbHUh9KWOTu3++Vg0TB6wm164GGxbqOQwoRJdXgD4cNZuw==
X-Received: by 2002:aa7:d90f:: with SMTP id a15mr12052843edr.9.1628998635160;
        Sat, 14 Aug 2021 20:37:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b88b:: with SMTP id hb11ls2296334ejb.8.gmail; Sat,
 14 Aug 2021 20:37:14 -0700 (PDT)
X-Received: by 2002:a17:906:e245:: with SMTP id gq5mr9784334ejb.121.1628998634193;
        Sat, 14 Aug 2021 20:37:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628998634; cv=none;
        d=google.com; s=arc-20160816;
        b=s0cg66sGR/obRe8Qzl7cAKEgFNDMdNCPO8zfmdAVgusL4H+qodBkv769s1MF+K/wLG
         Knt8bgbbWPDdB8DE+qmEimpNF8i3Ea/AuRWjwK3fsBG3nYYelkgXKZrWtC71D5DaUaRH
         6g/YORXhHIT1DeJZidUQTTRZpzdtyyVCSD/kBI7euJnmZOmmlpB5r5Gs+1XcUi0NV9m7
         8fo4ymSIZDvqqT9b09nnc4zpf6wB81nHSJN3VbrSyCRQXlMUtk3BZIUUie5J8u3VJ/IF
         scTEv3D8YOZe3Xila/pB8487f/RvC8eTv0gIHlDjcSs0A/tMKEeT0ZGjcU/vbYLx5n8P
         GHow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=cjgaA6ZXP82MGHp3PbWy/rGpf55v9LE1snaVoTAgyJc=;
        b=EzZcAa/4NS9penG5qfldysxI26Rrs+Az7JJeY8ThDIToxMVlfy+bX1ZhTbbYk48cOK
         ikJsIGlTbuLSEB5tnz7XYwq+KtGo7B38+PzR0vUxDCTZOKzlCpCiKW7HMo7Ko/SFU9k/
         IkxdxmXMr1Xcs+N7w7WF5lVwSC/3qvByJL6zmnN6XtvL4OygTymhkeHmi/V8ct3KDAth
         bJLSKdtc4oBwXAYxxhvyvkUfhdj++6YMDozXmKnk2/gGpGIt11qiu4FLrckyve9GrP8f
         vTF+M+GT7N24uNINiCtYJDx7iGZJKv7HlutKodDdUnFWGqb90Yfdc17ynnApVraKgXjf
         65Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=LBITQQa3;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=OW0wUQ6r;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com. [173.228.157.52])
        by gmr-mx.google.com with ESMTPS id y8si10799edd.2.2021.08.14.20.37.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 20:37:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 7A085150947;
	Sat, 14 Aug 2021 23:37:12 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 651CE150945;
	Sat, 14 Aug 2021 23:37:12 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [96.21.170.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 49CE2150944;
	Sat, 14 Aug 2021 23:37:09 -0400 (EDT)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 9FAD92DA0098;
	Sat, 14 Aug 2021 23:37:07 -0400 (EDT)
Date: Sat, 14 Aug 2021 23:37:07 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Masahiro Yamada <masahiroy@kernel.org>
cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: Fix 'no symbols' warning when
 CONFIG_TRIM_UNUSD_KSYMS=y
In-Reply-To: <20210814234102.2315551-1-masahiroy@kernel.org>
Message-ID: <r3rr2q2-1o70-o012-4ns1-or1qrs665753@syhkavp.arg>
References: <20210814234102.2315551-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 11E7D40E-FD7A-11EB-9ADE-D5C30F5B5667-78420484!pb-smtp20.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=LBITQQa3;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=OW0wUQ6r;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Sun, 15 Aug 2021, Masahiro Yamada wrote:

> When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this:
> 
>   nm: arch/x86/entry/vdso/vdso32/note.o: no symbols
> 
> $NM (both GNU nm and llvm-nm) warns when no symbol is found in the
> object. Suppress the stderr.
> 
> Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/gen_ksymdeps.sh | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
> index 1324986e1362..5493124e8ee6 100755
> --- a/scripts/gen_ksymdeps.sh
> +++ b/scripts/gen_ksymdeps.sh
> @@ -4,7 +4,10 @@
>  set -e
>  
>  # List of exported symbols
> -ksyms=$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
> +#
> +# If the object has no symbol, $NM warns 'no symbols'.
> +# Suppress the stdout.
> +ksyms=$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)

You mean stderr.


Nicolas


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/r3rr2q2-1o70-o012-4ns1-or1qrs665753%40syhkavp.arg.

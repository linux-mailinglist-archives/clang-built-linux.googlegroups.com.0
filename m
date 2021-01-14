Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKXK777QKGQE7K45ZEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEE52F5B6D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:39:24 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id l7sf3707769qvp.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:39:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610609963; cv=pass;
        d=google.com; s=arc-20160816;
        b=uUxEuf2TIO+GnZUZyrVjUUVVqigbxCzJHXdPpITF+BLGb6yP5a976QzqBx4O/+QNyU
         vaH//ydZ0gzoGznGFCCVmhCM73G9pKuujEe/xlT9CJ2txuJMKmNxAB+thdrxQejEMaeV
         HfebcZoOKJ/KOvV2ZEqMyPF6Qqw916p7qvaxaFEmkFPbXMi4Ap36rv0krDvV4YZscgdw
         snuApwBmk29PkGneRxuVP+FHqffuXMhEXQKqUOpvSPblfIvKdsSKQY73po08VuuXvvsw
         UZdrxDm28yKyAcTKR3vIrZHkcmng0vilVRgkh1apiK5SNLqm3ye2dR8XLDf5dn48CCkP
         naYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=L8jnvcXmuN1ITt4zbyMdQR2crCdCnANdyfnAQyyXzUg=;
        b=bOVPnHAcYNF6lNha13SlPbjQZrf5KNY+fAMybUkcmB97nyGAXvAVd5bnpgqHmjtvBv
         lwHiBPdZtr3THzM8cTh/Wahzv+CPgBR6jNqpoLYgJIbEi5hz/nB4Ol4WqgceYOcvCBxh
         T5uT2k21tm7HFzLWnlrVgMkrfcbRFejfeu5E7AlJW7jxd0/2VDWfnnmYaMp8cJW82FeS
         u1yNT6oHn+o8XPn1n62Gu0XsOphM2QvpxXQ/9va6V4v5TOpVrKKRqwYo1OhL0C0RAq3w
         UT6d/nUpxjtnohYMoIloDq6z34Id2N8NzBFTPZ5RnPh6aUXPSjJGbf0Aka8j2F25triD
         hjBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZyONW5l;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L8jnvcXmuN1ITt4zbyMdQR2crCdCnANdyfnAQyyXzUg=;
        b=H50pfW419BVFwlKWVT78yAyxepzUSOGF3Su5LBcv+5DA9fPb3FT+MYU+dRfOjzDgpA
         lwZRVUjfvkayBAlbtbSaJ1hFYqc+C+JduuV3c4h+EBAWL6K7zTVUNK7PiChcQ7KCRFw3
         HP36JUxxjaxzFwBSpQuezywtP9zDaSOn322IJ9ZWQ2fEZDGnJx4naG0KfsTGe/JnVWbq
         qfDs4fCsco7oX8jsbw1qqyw8S8GDzhuL3x9XcZDQcC9m0fRlEAcuL2ZrcOwUiIwomSVs
         l5PhXDQWd12WVvKaSAd4fMDUOghMU6KqwdnPvfEQ3QM8Xot3ZaT0C9cgpp0uh/v/gdOd
         BoYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8jnvcXmuN1ITt4zbyMdQR2crCdCnANdyfnAQyyXzUg=;
        b=gu/cny1qqokeREmqsaGCeX8BTJ3VsY4fATkgi8w8QtkSDxV4NKRA2FcUtHXHjC6TeK
         zdtfffvMayefjtNN8rLNdrWbWaAO3x0WhCClxAClCFld8AHbSkGGfY2oRv0b7nmV0xGd
         ZD0ucSYFDmoz39smDJMlbg6GrcngFZFvL5U/Biq5HQF/5dyxS+8EZFP0k3AqYpfjmHXF
         9QX48B49U95xE4vAW4bA59QV56CMnuiM3TfRQT/pbEQPtq50IDLuRG5Bd6mi0tm2Rbsp
         2+B35P1KvCITDopcauoT8kwMewDv7Icp8kwIqOUt1KuAQVk8TJ8Filaxj9lX+brQeB2/
         lnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8jnvcXmuN1ITt4zbyMdQR2crCdCnANdyfnAQyyXzUg=;
        b=VYHkR9Uq1BexRrAI51axnfUmlPrkp5pkO+DzR5MCbpfhwkUrPgNvlPs+O36tqLKitY
         oBIMqeXrwDmnnZIQge1qKM/b0sz3FiVqc3ciRpEaAi5Zcvy41y5XBwnKN5+n917OS3po
         zMkUO3t82T2zrpB/tQiEwI7iAUpYr/eCgj6gkiobpHvTMa0x6RvhEJWCvruwp+y1E/jL
         KlhDbWb3gJQkkxf1xH02TfivrTbjwLSr8gqAUMzhWt/nWtXZacAjLSLKhrPKX7ajWHOQ
         WX2hxfo9hDEs/N/V27L/uSgQYcta4mz8rfd8djObE3NuTmDMOH0IG3XDtdabxcXSqAeO
         3c7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NEZZFKWu/1hcgWjrUgO2qU0rnh4hIOCFg454pj1NLDPP0KTRp
	X8GC7Ht+lnLXH/cvTPUzBEQ=
X-Google-Smtp-Source: ABdhPJyMmoGOqKjIuDybNvCyZS4hcOrUvMstndgORK5LZGuiodqfeaRQvcOyUJzJQ2UQRDpRb+90iA==
X-Received: by 2002:a25:854a:: with SMTP id f10mr8478202ybn.510.1610609962917;
        Wed, 13 Jan 2021 23:39:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:42d2:: with SMTP id p201ls549654yba.8.gmail; Wed, 13 Jan
 2021 23:39:22 -0800 (PST)
X-Received: by 2002:a25:b9c7:: with SMTP id y7mr8652258ybj.251.1610609962479;
        Wed, 13 Jan 2021 23:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610609962; cv=none;
        d=google.com; s=arc-20160816;
        b=JJ97EYkXxWGIPkYhCbESwUCA1ukvhaLmTod67zGQk7Gx5LqkEUd03lNKwTAjmbXEyP
         7jTe+Li1VUntsXDofSuhGU/44+MR2vkF8/i7/E6d72CCSTtGpdtoCA5syEiL0yt0si1u
         ox7FLmYisuy/rE24Zp66LETQKJtAT0MVdLfBjiuTz492YQegJ0nXS/aDy66viSGybrZH
         NKBs8cqxfa8xzDE2X1wlMEfQLB7OquPgiQ5s/1Xk42YdT95GgLl0+da5d5sJ4YQKUZ/3
         BDo/EhGg0h+fQNI8x4giZHOGLYmcL9w/IjXRYDBoRNaH5Um1wSK9J8CLYCItgb+v9Zgs
         SMNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pDkl50wKKXvlnFEMyoCOA4eiXkVtCkofqFa11F/2prs=;
        b=VbITYgrvIXZVlWEMr3dfQtDHogGZpb+PVC6T8dAzUQvcQqwJOA0Ef5qdC0BnB3DjcT
         X6fpfHuIKoekIf6LBVgYx5TJNKuP6pHi9CnLLp/AdiyDkmXG9vg0IINDf5NVH5bFsyQD
         lr3YIlqr8jRMdsXGTVlxBXIuv2gR6soycoFC/MLAQB6TUHZLaKU4mPNnW9Vv2VxT1Bqs
         67FWZrwlw+8dbmldTiJi5PEWBql2pcrfvnaatQLwcc4Wdz+UtnHWUsaoDE5EMHBlmBbj
         52HlASQUJtTPHX5U/0GAA4N5xVPX4KaIOZoUSB28MVjTN1kZBOoEjKiHS0O8ldV2QOZa
         KEZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZyONW5l;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id i70si320895ybg.1.2021.01.13.23.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 23:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id n4so9319815iow.12
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 23:39:22 -0800 (PST)
X-Received: by 2002:a92:d990:: with SMTP id r16mr5718971iln.10.1610609962241;
 Wed, 13 Jan 2021 23:39:22 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com>
In-Reply-To: <20210114003447.7363-1-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 08:39:11 +0100
Message-ID: <CA+icZUXyqRH_bR5xjwZ_GvHp8xoWOqJtCORBX34NX0y9u2JYcQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LZyONW5l;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 14, 2021 at 1:35 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> The most common question around building the Linux kernel with clang is
> "does it work?" and the answer has always been "it depends on your
> architecture, configuration, and LLVM version" with no hard answers for
> users wanting to experiment. LLVM support has significantly improved
> over the past couple of years, resulting in more architectures and
> configurations supported, and continuous integration has made it easier
> to see what works and what does not.
>
> Add a section that goes over what architectures are supported in the
> current kernel version, how they should be built (with just clang or the
> LLVM utilities as well), and the level of support they receive. This
> will make it easier for people to try out building their kernel with
> LLVM and reporting issues that come about from it.
>

Thanks, this was overdue and is definitely helpful for users and developers.

For x86 64bit:

   Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

Together with "[PATCH] kbuild: check the minimum compiler version in
Kconfig" this looks very good to me.

/o\
- Sedat -

[1] https://marc.info/?t=161059811000001&r=1&w=2

> Suggested-by: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  Documentation/kbuild/llvm.rst | 44 +++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 21c847890d03..b18401d2ba82 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -63,6 +63,50 @@ They can be enabled individually. The full list of the parameters: ::
>  Currently, the integrated assembler is disabled by default. You can pass
>  ``LLVM_IAS=1`` to enable it.
>
> +Supported Architectures
> +-----------------------
> +
> +LLVM does not target all of the architectures that Linux supports and
> +just because a target is supported in LLVM does not mean that the kernel
> +will build or work without any issues. Below is a general summary of
> +architectures that currently work with ``CC=clang`` or ``LLVM=1``. Level
> +of support corresponds to "S" values in the MAINTAINERS files. If an
> +architecture is not present, it either means that LLVM does not target
> +it or there are known issues. Using the latest stable version of LLVM or
> +even the development tree will generally yield the best results.
> +An architecture's ``defconfig`` is generally expected to work well,
> +certain configurations may have problems that have not been uncovered
> +yet. Bug reports are always welcome at the issue tracker below!
> +
> +.. list-table::
> +   :widths: 10 10 10
> +   :header-rows: 1
> +
> +   * - Architecture
> +     - Level of support
> +     - ``make`` command
> +   * - arm
> +     - Supported
> +     - ``LLVM=1``
> +   * - arm64
> +     - Supported
> +     - ``LLVM=1``
> +   * - mips
> +     - Maintained
> +     - ``CC=clang``
> +   * - powerpc
> +     - Maintained
> +     - ``CC=clang``
> +   * - riscv
> +     - Maintained
> +     - ``CC=clang``
> +   * - s390
> +     - Maintained
> +     - ``CC=clang``
> +   * - x86
> +     - Supported
> +     - ``LLVM=1``
> +
>  Getting Help
>  ------------
>
>
> base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
> --
> 2.30.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114003447.7363-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXyqRH_bR5xjwZ_GvHp8xoWOqJtCORBX34NX0y9u2JYcQ%40mail.gmail.com.

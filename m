Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUOPQ6AQMGQEO73CF2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB7F3145B7
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 02:39:30 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id r20sf13963909ljg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 17:39:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612834769; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzsjyShKuIVQb1QyCz9rvBkYbPddQ0eudiymNigVrlSk5UKIZzUynbDnEY7tHIWA89
         zUXX/I5T4rIUozf3C9MFQskMCeyjBmymJJOCLB+iVfZ2yZEaWu/3JjM8mXaERHUModZc
         HxVejl2TLarVfvMnqkY8NmW/ISEeUHlgIfnFL6ApKJWJo+IkdpX20zNsAAkZ7X6r+tDz
         ae7KZcypCOtGGC9uS1iqrhSkU5hVF1scQY0LCj3Z+1q7rBx1UGj50lizX+HN9ypayaw+
         /cziNYei16/L9/3jRCtsL9cMm3mVV6knV4B11zFQvmiaO/i3zPh4tYopjHxlIuTAfbFe
         PlYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G7tPJdUO6QXMF7TjYr49opaXZWERVgfxJvmUjOdoccY=;
        b=lG0MdBFf0Hn84OYNMWkOo5iJLM9T2zLY1mCil7/VWhZdR6zEJg8+9Ys7OO9Qgrhgip
         sJ10lciyGnoOrSVjHfb+iCZzaQVdggsJduJUEXLxhw2vxNSxc1DZJDxqycMKg9Aw0aVR
         zELyGbVGRw3DLHnUEDLM8mLsTF+sdwkO9rqNPrf+NQabZigb2SktHm6O74DRzvutNORE
         EB6GE26tnwiM5PjBUn1kBGfgpEMEEB4WFffcgmmtnmwNvWsFSTATGlkKnO85l5kJewnA
         s0Dgaz4+w0p2hQ69hNUaquuMMequdbN1CRn1CG2ZrzDsjq3dTMRwmWPVIG/ob0jJeBeD
         fcPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A9C7faio;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G7tPJdUO6QXMF7TjYr49opaXZWERVgfxJvmUjOdoccY=;
        b=q+3hGaA7ViXqn5QdS/65bkWdAgG7mEuMwd7dAkCVJ8OuHfdHyML78NkDscO7wlf+sX
         NBFIfrn7cRH6505E7LO0p8s8/mMzdeULU6A8sQnJ/BN45zqAbZkz6xiiEkw8cLA7zfV3
         e922ALPBLAgvM7ZRt91+4/nkHHLY/0qqnqsQoyzJBneIQ1LQQsSo/KItDSdCTZ+dSJdZ
         l2d5If5HHTWtcBzBj+7JmlMVdUpW4C5Lg587TjNIWTnRARGduuPa7ESuykMMjsAzLDj9
         /B3ixTXsoPD7QMKZ9sMhzlhx2gPahSW1SqTRnzKVcUrGw7d1+kDNRWl82xDKF8dgPo0N
         5nBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G7tPJdUO6QXMF7TjYr49opaXZWERVgfxJvmUjOdoccY=;
        b=OCGoPofZ4abiFqeLJ+9KkR3XEM5EH2yUBIUXhGklxRAZzog13hXyWSpMpwy3gimMO5
         Nex+8ZmbHn/q+XOVPNLELvflCqvWyQR+F5ZAZTdbIj37P0nqPvwIaofn7/aFwgaTkUUU
         4zUwSwnjPKzNINxeBMHGELLSTSLCG5UIitEPC1HvjXbKpPxFcPIt7ylYOjwnGE+domn5
         lAE9yWdCEy1ztodnGv8sn+7rCelVFiD1vBlUFK3uwXWmbdZmFac3AFkTQXE1mhrGle3t
         cyDzPHFL0EOU5ZJviye5QuvK8GR+GaMrvWygk/qZOz2JRULL1GIF24khOyey67KS4sqC
         Y/7A==
X-Gm-Message-State: AOAM533TqIoxtsRfXBxve7GS19YixiakyA1sdPU+LZkREW3ab9SBjgiL
	Vxe9BGMliGCon6PU6kRRtFw=
X-Google-Smtp-Source: ABdhPJzMNL+bc3YBsWpzuU9YuiQyUc3gtDD8kNZJEa8575M6Ky3XVjGeCsLT45R0BR36S+GrbOl2gg==
X-Received: by 2002:a05:651c:482:: with SMTP id s2mr13106575ljc.193.1612834769568;
        Mon, 08 Feb 2021 17:39:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls586208lfp.0.gmail; Mon, 08 Feb
 2021 17:39:28 -0800 (PST)
X-Received: by 2002:a19:7f95:: with SMTP id a143mr6314250lfd.419.1612834768630;
        Mon, 08 Feb 2021 17:39:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612834768; cv=none;
        d=google.com; s=arc-20160816;
        b=LVVQCXs8qKZ0zG8mTWesmATUqXsrNlhR6iv0SBRoqnW1oqoPmFS1YyYOWFZE08ffde
         yCpN4kEHSkYh9BCtL58ivkpMr6F6mGg4+zxS+ixDoIJ+aFuiKkLNnGafOr6i5X5Z9Qr7
         PE/HoyGtvq2NpEB/l2brpmesgTaqa5VfQXnNbuBHaj7dB8DowZ6fLFufT6q/86PYBWO3
         1mu5Gyp1lBQVp1B7DUqv3797eMrNMBmOdO1s1pqzli0AO42KBCxkPStp5xdCPfU6GEno
         sNo2hme03TIdQRP6phX4VcjP4tUf0fcsStFzTCPKgfloVmaYKl8SYSnjFMTK0h3cfawe
         9f9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lVJrtVbOEkQeZbesRKYhsTkz4bxOuNAN5R8eee3+3BA=;
        b=opmCXB3JZ9/YtbwD/3aJzcJ/fWw6CUTqQRtYdW+g6Nz314QlbXYTDmN/D82vG3PMYa
         uzBKjE4RqW/qME3u2bQ8XBXTlzI7HAm9LQ0elIEv7fGGt03zcEKVmu42+4/bOxumNsdK
         jh5437QA4qdsJKlTddVbORYvjq/0RYsQ5Fq3w/uDEH/S0Rf5NHm7eWpxGcMCEfdWQSEy
         qrV9RcJznYwhwquR/7FHs2leaTdzkosjR6uwhUiQmER31jWIST83vNiUk0IrjGx4SGqv
         NFTPjgrgQg4aLSTt1wsSnQTj3NZ9148WtW+IYI/JExZBUn78tpbmvQbAaeFITbJITB/J
         iy0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A9C7faio;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id c6si1080421ljk.2.2021.02.08.17.39.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 17:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id d24so6734638lfs.8
        for <clang-built-linux@googlegroups.com>; Mon, 08 Feb 2021 17:39:28 -0800 (PST)
X-Received: by 2002:ac2:5e90:: with SMTP id b16mr11605061lfq.122.1612834768181;
 Mon, 08 Feb 2021 17:39:28 -0800 (PST)
MIME-Version: 1.0
References: <20210202022441.1451389-1-nathan@kernel.org> <20210209005719.803608-1-nathan@kernel.org>
In-Reply-To: <20210209005719.803608-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Feb 2021 17:39:16 -0800
Message-ID: <CAKwvOdkwoF8OqSY0mJbPh658N3QBPHARgiHP6K3H+=gPT6+R8g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Make CPU_BIG_ENDIAN depend on ld.bfd or ld.lld 13.0.0+
To: Nathan Chancellor <nathan@kernel.org>, Fangrui Song <maskray@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A9C7faio;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Mon, Feb 8, 2021 at 4:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> depends on !LD_IS_LLD"), ld.lld prior to 13.0.0 does not properly
> support aarch64 big endian, leading to the following build error when
> CONFIG_CPU_BIG_ENDIAN is selected:
>
> ld.lld: error: unknown emulation: aarch64linuxb
>
> This has been resolved in LLVM 13. To avoid errors like this, only allow
> CONFIG_CPU_BIG_ENDIAN to be selected if using ld.bfd or ld.lld 13.0.0
> and newer.
>
> While we are here, the indentation of this symbol used spaces since its
> introduction in commit a872013d6d03 ("arm64: kconfig: allow
> CPU_BIG_ENDIAN to be selected"). Change it to tabs to be consistent with
> kernel coding style.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/380
> Link: https://github.com/ClangBuiltLinux/linux/issues/1288
> Link: https://github.com/llvm/llvm-project/commit/7605a9a009b5fa3bdac07e3131c8d82f6d08feb7
> Link: https://github.com/llvm/llvm-project/commit/eea34aae2e74e9b6fbdd5b95f479bc7f397bf387
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

LGTM, thanks for implementing BE support for aarch64 in LLD, Fangrui!
(And Nathan for the kernel patch+testing)
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Conditionally disable CONFIG_CPU_BIG_ENDIAN for older versions of
>   ld.lld now that proper support has been added to ld.lld 13+ (thanks to
>   the quick work of Fangrui Song).
>
>  arch/arm64/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index f39568b28ec1..912da4e2ab59 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -952,8 +952,9 @@ choice
>           that is selected here.
>
>  config CPU_BIG_ENDIAN
> -       bool "Build big-endian kernel"
> -       help
> +       bool "Build big-endian kernel"
> +       depends on !LD_IS_LLD || LLD_VERSION >= 130000
> +       help
>           Say Y if you plan on running a kernel with a big-endian userspace.
>
>  config CPU_LITTLE_ENDIAN
>
> base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
> --
> 2.30.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkwoF8OqSY0mJbPh658N3QBPHARgiHP6K3H%2B%3DgPT6%2BR8g%40mail.gmail.com.

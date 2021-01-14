Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTFY737QKGQE2HLTNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAA72F55C3
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 02:20:14 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id g7sf2314183pji.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 17:20:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610587213; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5r/gXkczc7At3RDTGfxsVbVr9JmqIsl9cdOTrNOA0cCmnMOBPG4Rj2VR0mMykBjFI
         kJfezNQUYh18uHe0y6/aLFqVFF2YsB7IdAbvZmaKaQf2MNjfLuP+uRXnJrDGao+qoqMf
         vNlmxdnJMyirjFWM25Ae+PiQ/ICe1KffLdv6D8ekmp0JmmowIM9kIjIpCOZSKiw/ri2F
         umn6AaodGkc5+IRdDgX0IY4nCJI6m5gzTIPxJi/OzjRkhqVOp/0ZiC8kDKi9u8wGbwIf
         /n0AADEOQptN8sZWo+NQYdflQ5pYywgU/RcNwW5B1YhWaz7r/nMYh5JU6MKfVkBJATsk
         k4QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RQT/bKrqaMkATdNkq26qlupDk8uTonxe8fKdWkNO+w0=;
        b=OChz4WefJJecDwdU5oggfFc7IQEv0Fp7Rg3V74nFD68xOsfW556u+oeP7+w7g+2DYX
         9J4HLv1AJ8Tt0RdQfZjgJr4BYbn15Ty6fgkmTUgPaQ6SqfsQmTf9x65NJ+h5lgKiemNZ
         Ch/2pH84zjnSaL4YD+dzOUDgVgbXfu0GDGUohmrLq7HWjQrEIwDYabAF1hhSJKGX8/8C
         Foy/EKTYj45T1SGh8Ud8bVo4TOFOu0ZVyfUzDzvda3IbE1CKe/EjtOFTVBdwvGvbFXlv
         VBE3Fn8KdttJqtW/780Nd0d1mVaMh9e82F6IjUYCXkjg3NeK4NvdCd+FQ2Rt8NZp8EAj
         UAIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=djIUI+EE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQT/bKrqaMkATdNkq26qlupDk8uTonxe8fKdWkNO+w0=;
        b=LJteWqjgTBQe5WY8vfzDjvZfPFJm7nBIyL+8p86RcaYxNM9toG9/9jQDrHJxWBkGj4
         ILPhKCtx/CkuyNWkDOIwPOs8r1AbALJR36aJmYFut/y0tFFjagPXWPFfkT8X5lAgRVOd
         It3VFzjLtVx4XgrhQ9Tq0UkYDAiQD9pu4e7+LnaVLfSugv2zVZbFg266Q9u0zd0sOrUX
         t5epK0YBIOfga9c54Mh2G+9a59ITIYj1Q+h6CNoN1dazXEcO/PxJtt9wQLMOs5nJwVVw
         V7UfxNFJNIs1NKMq3TLKmIZOBz8Ffe9F/DFUV9zay+5kLNF59vgyuV7EgNLvUhk0A/se
         3v0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQT/bKrqaMkATdNkq26qlupDk8uTonxe8fKdWkNO+w0=;
        b=frMnEGA+pzZ6Vg64L2M8Elxa6FEjbImRfWHIZh8vWDZOkdR4F6l6Gof41y+kSWW6lw
         0Cr8hIqrRLESlzC/YVzirNAvTt/zaFJjI9xt4uSjMOa4lNyFVcCft6N/ZuTgMCTmLvcS
         5R+Aa60/7Pu2w6Ir6onl+CnGGEFs046z/6syWv7fZc2TZkGMqnvAivxpTACDB0kKQaC3
         uJkaOsSAGYW/1MA0TxeiZlp8lpa+q1WWGIlvM5E52UAhrLh6bMDLLTD7NnfJdfCWRPy7
         BiX9GNZxITuXGT6szVzOffc4sGqa+v9T1zasXnjKoSPK49mc9/pY9wnB21e5RzlBbbgq
         E9MA==
X-Gm-Message-State: AOAM531gookMw3WjKmw6/I84kEE+91vMxS07pS9NbXRI4GWj/iI7kdtQ
	D02ch6tpDqAF9X56ROC2klc=
X-Google-Smtp-Source: ABdhPJy+f99aMOdJEItbX/YQmWV8PUx8hAYLuWoRru/CMhUYMsqqopYKRZO3zwDM6UkTScSYT0us4w==
X-Received: by 2002:a17:902:868a:b029:da:ea50:d55f with SMTP id g10-20020a170902868ab02900daea50d55fmr5197845plo.84.1610587213047;
        Wed, 13 Jan 2021 17:20:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7310:: with SMTP id o16ls1507554pgc.4.gmail; Wed, 13 Jan
 2021 17:20:12 -0800 (PST)
X-Received: by 2002:a62:1816:0:b029:1ae:6d39:b92e with SMTP id 22-20020a6218160000b02901ae6d39b92emr4768259pfy.81.1610587212427;
        Wed, 13 Jan 2021 17:20:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610587212; cv=none;
        d=google.com; s=arc-20160816;
        b=w9krS/xgyOX82OzycmsiNLgDRpxn3MhvtXN+lQb/xXZMlMyNs0WKGlHnYHflcsfEep
         AIsIpRxPVmvvCB5XHBsbjn0PNsWVc+QE2gjV+M3mUIHODc+bao3tS+0uaG7RcTn3gUOZ
         4TMs79Vtl/eyEKNa78cTltiVZeL1PnM9GQgSG9VY8JyD19FnbggLwGKxGrJDxk0zlg9c
         l9BzHWcwNfUvwC0goOWsg6OBiTcGmWKjmZu0veYEFc+4kTqykNdCNAtVtYRuwle+uAH/
         Sno0l7LiuY1RdWW3Zw/gCIoVAKnw3S6YF056weCKGFXuIBUHB/W4BYym1zcXpA9HopSO
         AI+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XrnFQm3yxmGSlxVmkfzcamv4pi81tiqdYqSnRQXjXoY=;
        b=yx1ajHPpLw5dU4cUX+nVyZ4oAs0KAUrUtgL0ucQSxkzmvVARUkVvp9zsbsgc/+o39V
         ECenxfAXJPRNrVii/wD8NBRYC29yh++sIo5fxJVXcQIAtnxcGqsH43kvzE3xjCRjRP/C
         o1lbSnkfcFaOsKM/q67UR/X/6tvAKiHVgyPNRJQ6buJS+22dwIPCNFwKl+f2ZkOaRHgh
         Ha1e/ZHHwJEtNXqE7Yh9PCHLkHFk2nzSy+MFUccoRFVSKTljS0VFw7UD3Prc0gUeJzqP
         g5S65EMshfGSuZMvswWWi4Ql8NWiaXgyba0w4pCSMmvnSfa6CogWpx055CykmiA2xMmQ
         8y+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=djIUI+EE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 13si232497pgf.0.2021.01.13.17.20.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 17:20:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id v3so2064677plz.13
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 17:20:12 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr5031901pld.29.1610587211830; Wed, 13
 Jan 2021 17:20:11 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com>
In-Reply-To: <20210114003447.7363-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 17:19:59 -0800
Message-ID: <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Nathan Chancellor <natechancellor@gmail.com>, Jonathan Corbet <corbet@lwn.net>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=djIUI+EE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

Patch looks fine, but `make -j htmldocs` seems to be taking forever
for me so I can't render it. Is this a known issue?

$ make -j htmldocs
  SPHINX  htmldocs --> file:///android0/linux-next/Documentation/output
make[2]: Nothing to be done for 'html'.
WARNING: The kernel documentation build process
        support for Sphinx v3.0 and above is brand new. Be prepared for
        possible issues in the generated output.
        Warning: The Sphinx 'sphinx_rtd_theme' HTML theme was not
found. Make sure you have the theme installed to produce pretty HTML
output. Falling back to the default theme.
enabling CJK for LaTeX builder
./drivers/usb/dwc3/core.h:1259: warning: Function parameter or member
'gadget_max_speed' not described in 'dwc3'
./drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:340: warning:
Incorrect use of kernel-doc format:          *
@active_vblank_irq_count
./drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:379: warning:
Function parameter or member 'active_vblank_irq_count' not described
in 'amdgpu_display_manager'
./include/linux/rcupdate.h:884: warning: Excess function parameter
'ptr' description in 'kfree_rcu'
./include/linux/rcupdate.h:884: warning: Excess function parameter
'rhf' description in 'kfree_rcu'

<seems like no updates from here>

On Wed, Jan 13, 2021 at 4:35 PM Nathan Chancellor
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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg%40mail.gmail.com.

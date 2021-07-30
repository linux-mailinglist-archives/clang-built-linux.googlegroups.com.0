Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6UOSKEAMGQEUT53EVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 738A63DC17D
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 01:13:00 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id f3-20020a5ec7030000b029054f7bfa6d64sf6699655iop.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 16:13:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627686779; cv=pass;
        d=google.com; s=arc-20160816;
        b=ch3aXqAqsRV8CYfa8EboQAlANDcwtCu1WZOgQvR7wA/Is2VU3ulZSYmA74Ua2u0uDq
         yzxlLOUwgdgThldj5RCNbuAEtCvSl+wX3b/sIKpmCzvFNcj94UXgcmWONdMhAfw86iru
         EdiqWyVMiIAlmF/pXUoah9tiTXk/cCVB8qDWWOtKq2iBuJnLgCefJVFfqfiIoJZTQKwI
         Yo/X8hVVjZQ40TCiopt4aQVCPuDnORG01JJcZTR6s5a0abUTiK4NOM+AoORQe5ZNs6Pa
         VSi8HemgVp35DWReAeO2aG6bJ6EBojiVyJLfDXw+K+F9HoU9676JkkLlRf9vSSRxKqfU
         Mp3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qhaSsd3vLf1vbusc8L2GMFP2ApSA8SJMcjP/8WCQuHI=;
        b=qsAgK7U61PFoeASUKCJJaJ3O0bfJSNkTNt68KSe8Inv5q98IlQLWuPduJKPbBpLFV8
         Ga0zhAaw64b2a/93Wd05QlaLfRWU3iS66BC76fHjQFFQoxZYNKRED/BprXGL4y6Tqsgk
         VPZUBV9jWzI6efJWknYsSxZT4FqpUWffS9v7nxAO0D7x0fd0fDYsQAbuLzcBxIaeN0Ht
         nP1WBwf5ZISRbdbOewszDLz9pwzsNeCTQXnVqG6AsnaMwU5DXyvxI7IDviFsA6H5yQuW
         qP99bHDnTiZ6vvHjQvDi3w9C/SrR6Qj8MQwobhvNxCG0fIov6wOuWBjeLiMP28TuVMqW
         8t1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e40z75Cv;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qhaSsd3vLf1vbusc8L2GMFP2ApSA8SJMcjP/8WCQuHI=;
        b=HAC5kMAfO3+X23Qw4rXVVoVdvJy9ADRpr9UBR48sP7q1ejKVLdsyFmehYIikYzGUqG
         7Q1Kli8l34XV/jVa7w/ytcX9GPo6C2NotIOR8AcvqlVlNNeJ3aUj/kZaT/Nib0WtL1dE
         LQYitpCxRgP3j8SbF3bHOsrwJSfHyrQg9BQsIbX4VzsFobls5w25+rAo4H2/E2q+FgMh
         n3IGOtusojPONwQKyr8ynmw7L4YG2xTEvBCIn6ARqePqfs7TR1eXvdODo8A3m4eIi77S
         SAbahwuxcHnQhvMGFezg6PPBTW1PFwttRXESYYDIF+lNsqbad7v9VTsP4Q8LI/mBbTdD
         IekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhaSsd3vLf1vbusc8L2GMFP2ApSA8SJMcjP/8WCQuHI=;
        b=FxKm31QCZ6R45wX5TW8tjOAfLCAnOhiJ9hJDXq+oqBd7RviT186YWww5c5pLhrPDDh
         xXzbn/09W8dY/Qs7etWgsK/yWktePB/MJIAGx1pomDHqK18aQIqKzp8DP5dOU4GhyMB7
         hnvaTfJkUjmy0SLrF2u88zLzVGoTFpSPnlKQQ0B9OIjV/khxq/8AD4iovSDCh4rZ02Xy
         kUDtCuZg83ewBOZ4b4mfD/9jTj87C2mqb0qy7rdY2/QeC825g/28BoM8kj/uZBeIEbJ5
         XBuQgrPvZPXMeFPGzxgqwGPOI+YIH+LMw5NfXHeZfKL6VIj00+PUVDXQI/YQJolBUApw
         LnIA==
X-Gm-Message-State: AOAM531JZBXyXPH1J1jseknhMqVKaEuAy9EPlPhVZeuQKZiSMaFjRzhU
	kTwQPPWFftQt/LSkTpCVoR4=
X-Google-Smtp-Source: ABdhPJzCs9JcG0mX6zqBzLsG3BlWwN7e/UtZwEzL/QqZAVthp0Ozz1qG8UPgzEFfeLZkRzLQXn16SA==
X-Received: by 2002:a02:11c6:: with SMTP id 189mr3961018jaf.20.1627686779009;
        Fri, 30 Jul 2021 16:12:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:141:: with SMTP id y1ls413737jao.2.gmail; Fri, 30
 Jul 2021 16:12:58 -0700 (PDT)
X-Received: by 2002:a05:6638:2516:: with SMTP id v22mr3938876jat.144.1627686778693;
        Fri, 30 Jul 2021 16:12:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627686778; cv=none;
        d=google.com; s=arc-20160816;
        b=yE0r/iclDmlj610OESOwaGNw5tq2fhz3v9/Xc6mVbyxZc4OGr2x6T5IJ94hTiK49XQ
         kNLD3p81GMgiV8/XK7+HY8kqSQ+8AmgacdzMwO/r+RU6PnALNW7jfkL6r/HKqCEw4ToM
         AVp9xcrGQa7t9J0Wsn6AQHGoeKn/IMCpb+BUSmfQ1uXAqnoPodRlehbwDpRMraLzCzKE
         zlw85jpodcBu+aHYyuH+vKdaK731WL193Vej1oetUtWqFtfEYunD2WuM3EmZwl214J9U
         fxj+vgKTJ3fjrr3f1YVfE2cekiPUw9TmEh4QeSS3zlh0KeScu9k+AZPso+wsIgN0sM+U
         /nsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rF7mbISoz19dUz/oW6jxXI568yNQq5pNBLha/PiCGUk=;
        b=hP5++K91f8T0p5cK7ffzWtjbgwg8VabPUf7b+Rb1x7k3OCS3XvmXZ430QY08FSWgCy
         hVF6WjjYSLs5jLnpF6axTZqKBFa+TmUBwv7aaOlonJKKJ19nRb2Ej4RzPryM3qnOheu8
         TEomsGJgU+BzeaWwHuzOyEnlag5EsdvfYSnrTRm7hTOFE21AuqmIwFmKKVJR1uoIwI/3
         YZZUOQu+vKn9j3YJ0idlYNhSD5NzzRryHTKSRGI88ikZ1BQAMcfzub/iOw8xoPRzG9vo
         YU6ulrTX2pEFvUsZgbdrRNcZpgefFopiCQU50ZU5Kq9Z4zdqaKFgYUgXVfUe0ZOa2WHW
         R6WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e40z75Cv;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id e12si145418ile.4.2021.07.30.16.12.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 16:12:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id d1so12888764pll.1
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 16:12:58 -0700 (PDT)
X-Received: by 2002:a63:d757:: with SMTP id w23mr4312873pgi.434.1627686777969;
        Fri, 30 Jul 2021 16:12:57 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:160:995:7f22:dc59])
        by smtp.gmail.com with ESMTPSA id j15sm3487012pfh.194.2021.07.30.16.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 16:12:57 -0700 (PDT)
Date: Fri, 30 Jul 2021 16:12:52 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Christoph Hellwig <hch@infradead.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v5 3/3] Documentation/llvm: update CROSS_COMPILE
 inferencing
Message-ID: <20210730231252.r6fi6c3i6obbcgfi@google.com>
References: <20210730215708.276437-1-ndesaulniers@google.com>
 <20210730215708.276437-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210730215708.276437-4-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e40z75Cv;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-07-30, Nick Desaulniers wrote:
>As noted by Masahiro, document how we can generally infer CROSS_COMPILE
>(and the more specific details about --target and --prefix) based on
>ARCH.
>
>Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
> 1 file changed, 17 insertions(+)
>
>diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
>index b18401d2ba82..4292f0686316 100644
>--- a/Documentation/kbuild/llvm.rst
>+++ b/Documentation/kbuild/llvm.rst
>@@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> Currently, the integrated assembler is disabled by default. You can pass
> ``LLVM_IAS=1`` to enable it.
>
>+Omitting CROSS_COMPILE
>+----------------------
>+
>+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
>+
>+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
>+``--prefix=<path>`` to search for the GNU assembler.

and the GNU linker.

Reviewed-by: Fangrui Song <maskray@google.com>

>+If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
>+from ``ARCH``.
>+
>+That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
>+
>+For example, to cross-compile the arm64 kernel::
>+
>+	ARCH=arm64 make LLVM=1 LLVM_IAS=1

Is  ARCH=arm64 make LLVM=1 LLVM_IAS=1

preferred over

   make ARCH=arm64 LLVM=1 LLVM_IAS=1

?

> Supported Architectures
> -----------------------
>
>-- 
>2.32.0.554.ge1b32706d8-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730231252.r6fi6c3i6obbcgfi%40google.com.

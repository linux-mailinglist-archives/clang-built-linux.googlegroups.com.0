Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE6KY3VAKGQE6ZRTEAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9B48A4CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:42:44 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id c133sf5992848ybf.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:42:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565631764; cv=pass;
        d=google.com; s=arc-20160816;
        b=vHE3JE/xacRZ3sDdcEzGjAHnqR0RcitNqIgLa+xdBlzH6aDDa2ZVZSrD/ghHGmgsiW
         4Yhi0GqDslUbCZia4ofIqsi2CxGPUaL98isuPZqef/fMk0ORin/ZEscxRZDgc0o9OLir
         VJvj87h0smz0z/voZIH6JGkCUoYeUQtqpkcj/BeaEotd0tgDZ5Q+Est4sPqVsFOTXGE3
         xh0PJxyz+P2jTGjovzOq14265eXXmTdSFQxaYbgGJe5jq0FUpbhWYEDc0JQKcwL/3WZX
         tBO9yI6mOUiy2AHYwCt0dFxT3CFbyg541thrbbMy+LoIedWZAcJsgch9+WfBAJXAp2ap
         6kKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SbS06Ds9wW0aanfQcrbMSxqN154LP4G6msjCwk77+w0=;
        b=ZR8c7QyVposGvs6NI0AsxboPimFaM1RVoNc+liVxjPiMSvT3pKTLwaC4DRRSvlLtzy
         7PSNhXF6YZZJ6qD6rdtlQotM6IVSP8ghl7NB6b8LxoyFmHVVnDEj2hDPVshnvYJyTiVW
         xrhcfIjcrEuugMcHyZrmKI1Bly7z4EP843YUMF37RzMxba4ASUC1OIABBRv1AL8o0hOi
         6NMj2XN3GgkFmEZmXVN+ZKR6fEefZHFoKFtRdGgzaWKrLs0d5dZ1pvf04d2HtmJ0TE9I
         CpMrbEIUw61DMVezXk66bDuIVBrGbnn7hFxKiPWsxf58WfU5i06ze9/rDCWkpAXUJYIs
         3gbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SokAhW9T;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbS06Ds9wW0aanfQcrbMSxqN154LP4G6msjCwk77+w0=;
        b=ZCXhHMWU/ZCeKP2VMg7Mquo0aIM0Q6KydbRiPa6DifX7JYcL9CqT42ShV62hHSebGl
         1P7jCR9ky4aPq6PUz7/UpcvobyAzjvfpITgO7XrudhsQMVITc83bYp4aCPTsxgH0ebq5
         /UdN4cDg0E2vGeeonEEpaJetb2CRndgUARmybhz8bevzicJ8Aq141jY1UM0AhYjCfR3N
         uv87RoTmawC/LZcI8syJi3pjXOUt3T2RqoCQ3aLWyRJkMQZahyn+l0xP9kx6/sQRRZpY
         ll66h/7U3tnaY0LAdW1i19cVMs2MXlEGN+IOpt9fCufsTzpbNPQqAXAhG89Oei7Pnbuy
         fXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbS06Ds9wW0aanfQcrbMSxqN154LP4G6msjCwk77+w0=;
        b=K6uIdqT3iWvrMsjuEDXzTfMOBxR0JBAiyyMyQAZhxR2uV+/XSr9S+qgwiK7+vh6UN5
         Xg2cwIRXfKVC5d18AgdFTw0QqsslMUc6aw3AXvxX+o1KFgkE06e5KAR4fKy437dbtitl
         XjVlweKofGefeTHSlo6IDe3wwutFg8E4b/c82PhFXRBZNUWMYU1B5mHZp8yq4a6SjAX6
         S9mxK34Owf3kZfKE1VJjIQHEWQ3g+z6UhPaqLWB7cHss3SBF4oVLdD8zQmgyMrN+SDBa
         Ck8DT+UZpUEylvvhvzPF0k5EaFvirQxJUHBA7UsuDHGD82vi+0Sj/grrvkgP7CMsEFja
         azkw==
X-Gm-Message-State: APjAAAUduu95DuVKSZcERNXzXj/cCauTo/IR3sBxUcI/alGTNWTa5Irn
	muBAy6anhvCTaxLg7DAZNY8=
X-Google-Smtp-Source: APXvYqxniNCVs/LnC5WvgB3m8lSmP0u+5xumSG/U/bm1Ge4ueLQRptMxKsopjMJIsBRP2D0W0vLgeQ==
X-Received: by 2002:a25:810d:: with SMTP id o13mr25240673ybk.422.1565631763927;
        Mon, 12 Aug 2019 10:42:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7105:: with SMTP id m5ls518826ybc.8.gmail; Mon, 12 Aug
 2019 10:42:43 -0700 (PDT)
X-Received: by 2002:a25:7d05:: with SMTP id y5mr25754164ybc.472.1565631763655;
        Mon, 12 Aug 2019 10:42:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565631763; cv=none;
        d=google.com; s=arc-20160816;
        b=RyoWKR02gZIR+DOeDaQiXwBVG4HQZwWVt4Xs0uYL2dp1lVjvqLR1BT2IKqrli+csip
         3zEtdLI4QCqaXuZpUFPIzyIU/bD5SLAxY+9L2BKYDQZUx+FxnM8XEHPog+GkO2vjNOdV
         qsSbCHtvgfE5tQFneUpSg/TKcenKYH/w0QjWXEoggTALO1oRbJiDkswk5++XEdIHUIlN
         Dq+BW8dc0OTp2zTY7o547J+aKLcY2hQUDH5tY2+MJi7lKuPLJO2GmsbX0zZUpPx4VGvI
         N8e73uLtt2hbuXNFd+2qjtvNW2q5YxXa3cCsY4+MWOwdCsoE54SZFe2cMlsQIQPeRPTy
         HDZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lh/TAVkIHkjw7wbFiAXoulegggwXhgu3dpeEPlXbbTY=;
        b=HbQ7ppVTHkltNVLqYxpxaZEgqK/QAJvVbZRyr7ffraEWWtYrRIgjmqAD4S81A00Jl9
         U6aL1sOc3bUOOoZdBBJUKlHV2/RTfOUnfWTTqrtL++d+QyGewsvM1hz3B+WfEtO4jBHY
         JCsxQgVpcQ1AWmFjX97Z3nPlIOMNyab3I7T14IDrRVcCmvSSdCarlEXMluKFZ13VWxVQ
         8YKruWdfOBu26c1P2/gv8OKXe8R+Q2NzIC0IJEyOP7/6jJ+XCZiR2dfTLSJsfRbfxFsS
         hydNBdzbn7xsY+Lf03L/6mK72U+wDZdMPb2lqHnQnSfoAYND8A9HycH0npT+7XoXxnXo
         EbCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SokAhW9T;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v127si4571459ywv.2.2019.08.12.10.42.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:42:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 196so2875931pfz.8
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:42:43 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr30756736pgk.10.1565631762244;
 Mon, 12 Aug 2019 10:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190812033120.43013-1-natechancellor@gmail.com> <20190812033120.43013-5-natechancellor@gmail.com>
In-Reply-To: <20190812033120.43013-5-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:42:31 -0700
Message-ID: <CAKwvOd=BYmsExYeOQmuEJ-Yybgqd_22vQ_WwU0jEXTXAaKpQVw@mail.gmail.com>
Subject: Re: [PATCH 4/5] lib/mpi: Fix for building for MIPS64 with Clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>, 
	James Hogan <jhogan@kernel.org>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Werner Koch <wk@gnupg.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SokAhW9T;       spf=pass
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

On Sun, Aug 11, 2019 at 8:31 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> From: Werner Koch <wk@gnupg.org>
>
> * mpi/longlong.h [MIPS64][__clang__]: Use the C version like we
> already do for 32 bit MIPS
>
> clang errors:
>
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions

Reminds me of:
https://github.com/ClangBuiltLinux/linux/commit/7b7c1df2883dd4393592859758c3e76207da8b1d

>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
>
> Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Link: https://github.com/gpg/libgcrypt/commit/e7ae0ae243c8978a67c802169183187d88557be8
> Signed-off-by: Werner Koch <wk@gnupg.org>
> [nc: Added build error and tags to commit message
>      Modified subject line
>      Removed GnuPG-bug-id
>      Removed space between defined and (__clang__)]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/mpi/longlong.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 8a1507fc94dd..5636e6a09f7a 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -688,7 +688,8 @@ do {                                                                        \
>                  : "d" ((UDItype)(u)),                                  \
>                    "d" ((UDItype)(v)));                                 \
>  } while (0)
> -#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> +#elif defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> +                                               __GNUC_MINOR__ >= 4)

So the minimum supported version of GCC to build the kernel is
currently 4.6, so we can clean up a lot more here.  I'd remove the
check, and delete the #elif and #else implementations.

>  #define umul_ppmm(w1, w0, u, v) \
>  do {                                                                   \
>         typedef unsigned int __ll_UTItype __attribute__((mode(TI)));    \
> --
> 2.23.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DBYmsExYeOQmuEJ-Yybgqd_22vQ_WwU0jEXTXAaKpQVw%40mail.gmail.com.

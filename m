Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYHKX73QKGQEXUMTMAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B399202DC8
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 02:03:44 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id v24sf8610014wmh.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 17:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592784224; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cp1h9ez/sD3vJdD/mPLbLDutstOyATtF4YDo3bmBwKLCIh6jBWOimatfkGnh4RkLnl
         hoOBI3y3J5ZIlLUVvfJCMZSVsOyg7/V3d/pOKOYrzLRZOVmwsFjcsLHu0e5EMp3JO++H
         ag7eUaAqzE2cbhEN5L3zT0lmRS3NI31NPm9Becck5zVwopzzZQWE03+xlbDZGNI7RRN4
         p9DAtl+UOtQPd91Z9Rq7ajQbbkgcH4g7hRfc8YY9kydD2qWtEIZ0Z1drPIadU5nCB3Cf
         Mx9ahNcBCFGJj8spsAeEyTpO2EfPZVDPtC168KvlmQmPgZmLIgSyIhPyGnsloh2m4IO3
         97nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GVrEg7hk2BA541dvomLfncj0y9a2NaMYjbqbv2ol7A8=;
        b=stiaTL7K5O4uT+/zkB50TEkiCWSedm0Fux+5NLmJIadTrg2tavS7wSxeN80GC4VCGY
         vhVA/K9Ukqktm3znjrmNieM85ALnpp67Vus0axPvJ8D9qHWZ2L0CnxI0BhZDJn7e942F
         sUWhjUth1lqehNU+DWU7EfOrN10UgdumNIVvFc9s8Udor2lmAj1ITp1dX/SjjWhkLsPc
         uZ7k9ExWJAqXU6BZWqqsDr/iCsc0EjdKXKjpSQMN2TMiSYphW6owNfeQnPJTrpuIIpPE
         vIvgSdLCUdDp8984XjBYJe8FisvG7152SyV2PPhohJ1m8SA4eaX+cFy3D91EK42CFXR5
         d5sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWkqkt7i;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVrEg7hk2BA541dvomLfncj0y9a2NaMYjbqbv2ol7A8=;
        b=Pb2Xy4TqUMQBdHscWMI3x2WG4ZOGNVPoofbhXTfbRsCRM0XJ1XMDoB5m9xEiz67MI+
         xMAV7ENP+J9FTFrM0McZcj4AajsifvPNIHVXVnbgEAwdNABaNR8DvXAjP1IUv2HpVNsL
         zTUQmdnxfHRNx3NSnCCd7zGY18n+YYCJJ/V5WGg/CIH064PGojxwnSfDml6FK004lBep
         Pp3oKQvKohkcHUKRxcCVoO+fccv6LZ1ZLgTnY464S7mPSfYB2UUp9RYAB69yjrOzjzyu
         f2uUUJ2zF1mguNq+XUw5SpnrbPERAl01VsBxUevoNKNJo3CxFl4bXWGf+zCxgmOOs2Lq
         qN+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVrEg7hk2BA541dvomLfncj0y9a2NaMYjbqbv2ol7A8=;
        b=dw3RQU5scGhSF4ZSzu5KHlFB8gyatW3ZhBF4wxEnIwn4CZzmy4OlqDAIvg8G62GXyA
         MImIUhBmObNc8FmLKuUpdwaB65ZJR+C6Yyy2ma4BSELc1+4ty1VyYueWX2TTmZUHl8YE
         9j/tq3E7fWiRgHiTQRZvS82XZZlDHTeykk00JTdJBW9eOrUv9Vb45qvQ3Pvzf6XvXbk3
         On9R/pEkNz7PmoSY2yAnl5AqRi8d6LHuo1m5H3SWXBZiJmQQjAcD18pL/IGpn63Z5vMs
         SKDxhxwvov0UKRGBRFrZN/aTCgYcapMsrp2OGKQIItUpi92p242qx0aiPrgkpedOQkIo
         agTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVrEg7hk2BA541dvomLfncj0y9a2NaMYjbqbv2ol7A8=;
        b=MEAXubdqif23eNIJn+7GkhQzCIuwN8mD0zlFX/Rlp+BdYn4fXDlH9vbo3KOzz7gtiz
         zLWabXlFux3GZ9kkB6qZI67GN7HIKtA5pDZg0mfbkEGdfY1aTjiLrlrP3XIU3a0UuCw2
         yQYcuWAT++nPa7EgjeCenTrO+6p96fumuTI/StNfZpXW92YWV5wkWYqDGsd9f29joPS5
         5ILMd/y71tnQEakEzqEICWBYiVl92Du3BACMIBJqALq9wmnoRbrwJOP6IrYEbw+fVNT6
         YGLu22Fj7kseELlJBSKPFr9UiPh73XdXM/NRQixyR5em1YA67KEZsYU071ObUZlXO3Tk
         LAlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aIErxYD2be4+CdVfwxo8orwp8sOlLCMfoQsRUM+Fz5kb2dkl0
	gBrI/BAd37bQPITapiDi/yY=
X-Google-Smtp-Source: ABdhPJx1pOUyNcCTEDqbmBJJfXn3rpd6LO7dc8nDHCmcPggVCpJakeMeq6o73QuVQ6Mb0NZVI0hy4A==
X-Received: by 2002:a1c:e355:: with SMTP id a82mr4229155wmh.165.1592784224207;
        Sun, 21 Jun 2020 17:03:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls3058812wrc.2.gmail; Sun, 21 Jun
 2020 17:03:43 -0700 (PDT)
X-Received: by 2002:adf:b608:: with SMTP id f8mr15223272wre.363.1592784223691;
        Sun, 21 Jun 2020 17:03:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592784223; cv=none;
        d=google.com; s=arc-20160816;
        b=TpBW2vDSu1eMEbkT49FlTmLJFE5WODpxl+OYkcH9a5XP31URWRj8RD6aZ22dlK/KDi
         qEPooqCkM+ZwhLXxecCgsdibB0xQnfn+EVoX9rRcdGsKKQjDRP/dwWZCZ2EVQfkmpF80
         f2vCKXuRa2yXENslI+T0XbC5XETefhqZ6MoL4WMbWs80MSyPrQ4xt1+thP5V1HNrEM8D
         d3A8dJtEWOQ5FRAm8+s2z1eyzo+WH3rigyHeBKTweNTficKJmdKex9NC0ul1H053yzzk
         CXPzpUfwL1XLpLUHdZbHaWIvHsU2VIb+AFrnw9RNtMx88ZZNX2xFJ2JYefIB4BlcTCuf
         ZItg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8iQjccibNsODBxIPRVwtnty0pnVq+FPlTnqtaVf/zvo=;
        b=HPBx3IMrNVEtO5zDYkjPR6N+OWqcRNst+Qxql7d59XcUKaiV402ktNhoiZbfuHgG1K
         vKVWhOdKqE7psHSaIy+z1OIRI0S1+kXDUkKkmudffGU0HKWyNn/Fj8EUQqB2k8DBzBEP
         rAAzU+e3dZfoSOiYRXEOi9o+Kb0+LHG8NTY7QullqrczhACinvnInBnSijF29N/aXfCq
         b8okFGqTi7djBqfTrVfrvXxh6Q0n8OZkHSh3rYTiKO1MppBAgXcnJGTWTxm9kRgV7oL6
         M/YloieELjuHBKe9DQzHkgZTfaqhUBpf6J3PtbBVtzOVwsA5VR1JPE7rCnOXGhxWB7ep
         5lcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWkqkt7i;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id g141si284551wmg.0.2020.06.21.17.03.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 17:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id n23so17241615ljh.7
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jun 2020 17:03:43 -0700 (PDT)
X-Received: by 2002:a2e:a544:: with SMTP id e4mr7716310ljn.264.1592784223211;
 Sun, 21 Jun 2020 17:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
 <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
 <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
 <CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O=DyVngs3xno5e9W7Q@mail.gmail.com>
 <b4646ed22573568c0953d272514ab3b701e54faa.camel@perches.com>
 <CANiq72=58t3T0VckOOm7jAnwaxdEK2zbrWeQw-bXifmOq86BCA@mail.gmail.com> <42da4b47dd3aaee77e65550df30e548dd23580cd.camel@perches.com>
In-Reply-To: <42da4b47dd3aaee77e65550df30e548dd23580cd.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 22 Jun 2020 02:03:32 +0200
Message-ID: <CANiq72m1E1=7yVz=jrDJWBtLZzDsi0ygFvZaHrOk_EbKdbf38A@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Joe Perches <joe@perches.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gWkqkt7i;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Joe,

I didn't forget about this -- I was playing the other day with
`ColumnLimit: 0` and the new options up to LLVM 11 to see what we
could do... See below.

On Thu, Jun 11, 2020 at 9:26 PM Joe Perches <joe@perches.com> wrote:
>
> Hey again Miguel:
>
> A little script and some statistics:
>
> Today about 6% of all code lines are > 80 columns
>
> Oddities like the ~3% of all lines with 113 and 121 columns
> are machine generated.
>
> So realistically, < 3% of code is > 80 columns.

The data you show is very useful, thanks! Of course, the current set
of lines tends to be < 80 columns given the previous strongly
preferred limit, but I would expect that % to grow in the future.

By the way, the 20% figure I mentioned was w.r.t. the previous set of
lines that were already over 80 columns (not w.r.t. the total set).

Regarding the changes: `ColumnLimit: 0` could be a good compromise
(which makes `clang-format` respect as much as possible the current
line breaks) to let developers have more leeway. They would still get
warnings from your `checkpatch` etc. On the other hand, making
formatting dependent on the previous state is not something I am a fan
of, particularly for long-term efforts to move to `clang-format`
"completely".

I guess users of `clang-format` should speak up (w.r.t. `ColumnLimit:
100`, `ColumnLimit: 0` or no change). At the end of the day, this is
still just a tool and not enforced, and they can still override it, so
if people start submitting code with 200-wide lines, well, they still
can :-) Otherwise, let's leave it as it is for the moment and see what
is the output of the script in, say, a year.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m1E1%3D7yVz%3DjrDJWBtLZzDsi0ygFvZaHrOk_EbKdbf38A%40mail.gmail.com.

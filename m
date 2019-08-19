Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3OH5PVAKGQEBLQZFOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E51D94C42
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:01:18 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id s18sf5607997wrt.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:01:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237678; cv=pass;
        d=google.com; s=arc-20160816;
        b=P/Z8KJ48LlHFJf1twMVwGF12hJ7gBLGBCXOABblE+IMmd8SPJLDO+zwFsSUB4Ca9Ql
         xeAyXETWEEuukFqn8E330YFtGTIFPnoMOm8VN+2GFPPiFB6K3oF9hAZJV+j/S+ZRGjKc
         8GJ6a6FxodCgGUp45FoKwB5/icUGpGNXPhDdcXUPROHNtMyveGrYU0VVfGN6K9eMsIQW
         TYokXcDRQL70iYbUl55au4Se5pJPbVJMvvE1diLGlhjtsDOy0zV7xoIxwseQ9KrrEdrM
         81fESNFLjASIcw5WievSgJXMWnvLTDcwW8018NN/9rXnwKb2yXFmpbYTk4brozBmkM3P
         watA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=z/cKGrYxL0LlHnOHnSaXlabhg/X1/CYzlsKoVRUq8+o=;
        b=VIst6hpIeGBIWF/R7N/KsrKhct51jRd6nTwc/KxXm7fqVzfUf4ANaRXPkbzpL0DPtE
         nXiPPXpMQpCEEfO77MLOO8bwSB2aSiRloNqoEoIL/updXGbBAwD3sygHan9GnpI0ZljN
         XEDRPbptbKp+X7X6iXchOnBWCdsGSpZgfsFm7lBHZusphoygs8C/A52pSSB+DDAraV96
         hpPSiu/7ewJVxSVsYgmWYJTb7PIsUTgmU9AABMi57zqR1eClmpUsiSgkYUa8XmvcBOwB
         B9LFOvQk94TBYN74qWjgY5k/bAFvEemHRgpFDR4g8+K19nhRF2ys+3HQX1fcF48RY2Xk
         ZsGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eezivLK+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z/cKGrYxL0LlHnOHnSaXlabhg/X1/CYzlsKoVRUq8+o=;
        b=mR6dH9Bkha+QG/EWFOX9YeOtQ2fnyCwkNlm7HEjw7PpZHRIxohKiPu3xvKt4xpR59U
         QoipCu5pnqKWdDkrs5z2rqiwczgA8kxlAU7xFZXGvHKexFjWvsWv099WjG25dioQCtTk
         PJPYscDlMSJfVVwmeFBds1Ui7xaZnpOpRH5HHB1SRleyA34T/kkiln1UqIZFnSj5a2uO
         NHuNKuKYHsUcO98XBPdkMnoBZhLa7ybbrUTfXKRCh9R0+rCFNDBnFDr+hgX2VwCExJ6A
         WP/MBDNJm+pFcORJDNv5IhFkjP8Vn6OrbzAANgSsKw+G5mLV4EHwKevyDAEIZ+dWPhIo
         Xjnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/cKGrYxL0LlHnOHnSaXlabhg/X1/CYzlsKoVRUq8+o=;
        b=noTvJgS/S9GnpV/RxUUsXvFMbwjlc3o3hYvvpWtqQOeX8hSMbIFABbbmtaOl4dB61s
         S+T4dzkm/7W+Re2EbcgBhl+dOwsYtdflVMNSvPqTBxd5AnbNurBKzAsDjv9M3jLnisuj
         I3shZse7NB9JMOLR9e1uGSCZDyBZ70Zyil/r8JyahCPGcOCEpRguzqNfthoUeBh+osXg
         k5cAI7k0dyPoQnz07IWQL91hA0m7oCeuDLx3rY+yIJ+zZ+HCn5laHLiV9YIlLcqJ9nHa
         IDhHxv9fTXJsdQqLf5g228854SMCbRpCZcbRf++i+RR/QxMVcaiI3LLg4tnOwYmzE9wT
         jb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/cKGrYxL0LlHnOHnSaXlabhg/X1/CYzlsKoVRUq8+o=;
        b=X6AJRWLC3ETrwhazTeo0YtkF0MiULpTMeKNLBf4zoRE9giba2m7NLb1SZdXJ4Cwqzj
         ri/Pon53JxF6rrm3RpYcwVMejli4BD9IqKgbhpWgqFo42K5CQuh4mWK07ErAuxYjs0bn
         PvRvns0gPtr6T9qDLB5SEjt3/m9r6N34I1548aNAv4pruZou6JyRY3bhUpRo3XQq3VKh
         ocxQ2f43r1y7pz3Z+I6vu+fPjSnlsQQs7IVpn41f2SwYE2aSGEbCtVkA5a4E/PJC84Sy
         h84TzMhZCGohiRqGca0QUy+2AIGEukigwtShWfS9gruRY8Zwj1Kxbl6zsokUnlwSsN5N
         Jz6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlx967XrbdfQSCAuRSjRwsflYFMaSFUwhpFB3f5voyDnfX7aOs
	P/SmfYu5YgurERsaU1svBrM=
X-Google-Smtp-Source: APXvYqxScjk+yastF9SmZ/RPfGMgZXEcGhgVcFzXbMz9CSs6vxGMlT67QjZ/tq1OiWIJO2g4fJgHcQ==
X-Received: by 2002:a05:6000:152:: with SMTP id r18mr30568484wrx.41.1566237678035;
        Mon, 19 Aug 2019 11:01:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls104495wmi.0.gmail; Mon, 19 Aug
 2019 11:01:17 -0700 (PDT)
X-Received: by 2002:a7b:cbc6:: with SMTP id n6mr22586225wmi.6.1566237677591;
        Mon, 19 Aug 2019 11:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237677; cv=none;
        d=google.com; s=arc-20160816;
        b=g7BlqySq+hCvQdKp3uzzrFhBuSPjHeV1sBnXRxwqPoVafju1YIS2Utvgij/Nz3s8x3
         460tGfV/CBcGEDU05vBJYM0GWZUPE77ZPNSsUCvQPy+evuxTMzwp6M1mTzN4mDiuTw5A
         fDpMSs4kRwUQUYmYEYuFehUSEF/k/DVEttlVRYkBEfRZVW6uzwoiVwV3MdNb1n1428Rb
         OvUAA9V4FeP1ih4Bsvsa2o9VPHcTZrXA5EjpVFeGsZIr97JjVExdd2d/7DDOGfmHbO+k
         +bbObXHJ4FdH7BxL2LEpxgtsrpDH1Fh9xZKjYSOqlrV7lE2I8vC3I6uOjWMzy5S5zB3t
         PXkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HUbQ6TJbRJd3FylO8z/DeJHcTNlZONXDa2YpJWPmkCM=;
        b=ojMGKUbqACQE0z+RCCN7+m5RimYuvP3hA3UZdMtqvJMEkP5GrBJB7KcU0Z57YU6jUj
         getOA5HcrvfQkaXHf3eIarRS/O7VE7EIDbo4Sy2wxGyiYJirEKvXL5b8LwfhDL/y8K4H
         joyPrmZwEpSw1gEoFrc1Q1mOe2fyVq+ZTV64pvCAwoB1Anu+YJOGKYmyHiYielDtM3qj
         pc0ee26uA6BFIWs+Fuigu7jFRjt0+GpbSqIri0RqWd8Adiyv6xX8fr9QD6eMZhAu1xqb
         UYlbgaTsJYmRWma8fFsP6swkqrWMpx/Mcq56U55cQN4DvFTrAx6KxsMZdjasRno4p2C/
         09gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eezivLK+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e23si501671wmh.0.2019.08.19.11.01.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 11:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r3so9664970wrt.3
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 11:01:17 -0700 (PDT)
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr27553471wrw.353.1566237677269;
 Mon, 19 Aug 2019 11:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-16-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-16-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 20:01:03 +0200
Message-ID: <CA+icZUVvkz2AK6KMdQrOrCvuzUc=6jrQYRzzLk+=CSDY=ezKMA@mail.gmail.com>
Subject: Re: [PATCH 16/16] compiler_attributes.h: add note about __section
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, jpoimboe@redhat.com, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eezivLK+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441
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

On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The antipattern described can be found with:
> $ grep -e __section\(\" -r -e __section__\(\"
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> [ Linux v5.3-rc5 ]

Patchset "for-5.3/x86-section-name-escaping":

include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

Thanks.

- Sedat -

> ---
>  include/linux/compiler_attributes.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index 6b318efd8a74..f8c008d7f616 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -225,6 +225,16 @@
>  #define __pure                          __attribute__((__pure__))
>
>  /*
> + *  Note: Since this macro makes use of the "stringification operator" `#`, a
> + *        quoted string literal should not be passed to it. eg.
> + *        prefer:
> + *        __section(.foo)
> + *        to:
> + *        __section(".foo")
> + *        unless the section name is dynamically built up, in which case the
> + *        verbose __attribute__((__section__(".foo" x))) should be preferred.
> + *        See also: https://bugs.llvm.org/show_bug.cgi?id=42950
> + *
>   *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
>   *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
>   * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVvkz2AK6KMdQrOrCvuzUc%3D6jrQYRzzLk%2B%3DCSDY%3DezKMA%40mail.gmail.com.

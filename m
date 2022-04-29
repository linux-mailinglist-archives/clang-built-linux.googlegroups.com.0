Return-Path: <clang-built-linux+bncBCS7XUWOUULBBO43V2JQMGQEOJWK7WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 466ED5142D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 09:03:25 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id b1-20020a05660214c100b006572ddc92f7sf6102914iow.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 00:03:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651215804; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jotx5utfYhx0TfKTcDoVtJWWOGcNHMG2jKFSaABRuQpl1ZzFGdAUb6qb0MDDFn6AQl
         XNJvIJDlhR9OadDpAzWxozsC+Su/mjHO1JxgjZqTFVSXkLWLmAyxfzk2+lkKIX1EMh5w
         Mvxlgidebhhuzzc+xQYztR04YCNHGq+DIPtNkBlbKWAOxpRJFxoMTnIoTw9QurQImQUy
         hj+5KvJ/szYY46HJWUPc07Wle27LDAlnd4jUlsKIKjiric1BhTvgyhtZKfkzbTnAU2hf
         eY8nukj6B0hVOfTZPbb4iK0N9+qx+Px6ZYJcSRKngERWURB0wuF9aGx4tM/TAlFBoV99
         F7VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9Wx44lZaVoqIdbiZoDEXa/8TFFhu8xRhrTU+4A2HHto=;
        b=bZlzddGnmL9BLOl1X6vIslUeK8ZRLeRbCIpGJa+xphToij05hqLzGvU+78h9Q6wGDd
         mhNFUAB76+fOMLV8qYSkrUpCBTFJVJjEbeDuvravECm47kM2Pipm+016P/aYsAfkS9fd
         Ju78xwNHb2kq8NKMO4amnZyad4IRYAT4mYAnszFI9qppXeGGxiUxoO/t7Wbj+KL5QmsU
         JvmGmE4WKx1iUyPUYDsqSXEolTvu54Gqq0RpeBwAMXmuGgFQsSVKii/i6TLsNw3IGLtD
         jUiGHRgR+WHxKPJ9UMBLFEMr/kWbW7+p0VQf9YJBWiwSbq1AcWOLJ8bOH6rin92EduBy
         0VYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=lvRQ0Ck1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9Wx44lZaVoqIdbiZoDEXa/8TFFhu8xRhrTU+4A2HHto=;
        b=NL2QpKMTFeoM5KU7QtVkga/Ty9iACnMO5aDBge67jgsywMF9W0328AUe1fYYhFPF3d
         7lon/xvRG/ydqE8QB2oYDUmkl533Rfzq1FIWE799NzdNE6xkapPM4mVZ+e9Nh1E5OXBN
         1XAKNE+LOspwwzkbF89SZD1UavSRojsyawumIHwvcVNQ9JBsLPSe2c7KWBmZR8jO8YXF
         vqG4Ydg3oJiraQPmLKVwsfNcxHKo1V/PTvlZ6MewRFFwR1+tspuKS7rodRHl9B1AiNOm
         oNtK3ae8hAbsNyRgzOVILbk1B9yVV3yIMTyDmfLPDaabtabfzRfanyUOo+ADtQC8EvrZ
         9Pwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Wx44lZaVoqIdbiZoDEXa/8TFFhu8xRhrTU+4A2HHto=;
        b=L2+g0QP47/jQXXFGgYeD/NNoymHq0DkZiGp+Zw6jHk9sNyhubye5VXdUHh0EV5Snod
         DP6keO/2UFgp3N5eeuhJNT1OJk2/t9K3YZTLX95IzAgSUV0N2oxqw61Fgkop98HWhkqc
         nk/s8sZZer2cKGjAL5QbYXndnb36cnDzYnxufyA+aVxi60rIWZBDvPT9uGa+TzhbAIDv
         hAn0bUQXJxAeoOsBDCWVTmqhOzQxe0zfNGzszE9cfQWaLjWzpD9rDIzHrrYSHoJ7KyQB
         4ygH7h3FoYQlIUQPsafT2zO1YQo5eICu4cwlpC0jytEddaNZf4pgmVgjPee7elAjxPPw
         6xHg==
X-Gm-Message-State: AOAM530TIL0TcSrhiq3Yp929agCXzOCG0rK6byb09rzBNAx3CA+8J0ma
	yCL4zvlsY8kLG28XsFn6JgQ=
X-Google-Smtp-Source: ABdhPJwMTpEQCGj/znGt4V5C/qmraIh2tynQmauEoD4LgyLiD8ZAfMBxdvqYFBxe96oZJRcG1HlQZA==
X-Received: by 2002:a02:a815:0:b0:32a:f654:47b8 with SMTP id f21-20020a02a815000000b0032af65447b8mr10208716jaj.129.1651215803945;
        Fri, 29 Apr 2022 00:03:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:174b:b0:2cd:a678:3a90 with SMTP id
 y11-20020a056e02174b00b002cda6783a90ls432006ill.3.gmail; Fri, 29 Apr 2022
 00:03:23 -0700 (PDT)
X-Received: by 2002:a05:6e02:16ce:b0:2cc:5bd5:80e5 with SMTP id 14-20020a056e0216ce00b002cc5bd580e5mr14520788ilx.3.1651215803524;
        Fri, 29 Apr 2022 00:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651215803; cv=none;
        d=google.com; s=arc-20160816;
        b=JYFw/E8Pmz+SSjWkwvm43KZL+T/lZ0oi1vb7hf8bXDE/2I/KkwnaHlSIErirY1/Shg
         qH1LLMJgS0lRBAfIcE4D7Pp1eekm46ZRNHUrAJowBEpyjFhsjRRi64rf0IK8+Fgyu8PX
         2b/6Reg/mnTYk38i3snggpOm7hFOpjkRCo7plJranPD2aYyy0uex83m1xydcPqyylIX6
         uzykvGs3l2j0ZRuB3a4KfIMIEHFjHJ+krjvulB7k6mB8X4Gxb/WhZAmTKT/DCvwfNijw
         A+czg+cJaELBAXaoaOlJFKp5tckR5BI8I0+kMkmENuzjYHcsNxDrjfQde+eks+OiaCZs
         VwLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4wvnN7n76Q5CJ1km3GToxqpfStI18BwcbKOj3pGf1ac=;
        b=VzTPiGqbD6KC27cdslcKlWqR6B0QpZS25nDkNrw0WTQ+Zm9PTeWYOLy4wuk1D6kXnu
         s8TsV9YLmdKzyACI63uDrkhYgOAldAYWj9H/P89M5ierYhiZF/PsTp2hgIVU9iznBDzN
         1kbjEiNlaPZsldtitM8nxsDZAi4axF+LT02hu2zvYnlN/hcpOFJZLsdJL17mIEBdjeJc
         y2TzVi8RUfuyPJkotQB+maOXxwJ1YsY6H36zFGhRcDaUeV9bZzenqNGJcbRR0cnRYs2+
         7dUhv6Ji0Edm9ZvDuD+ZiMJtXTuJXMHPaZf++TP80lBOg1y4IrOHVee8rGvZyjiUK3FE
         VHTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=lvRQ0Ck1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id u12-20020a02c94c000000b0032660e40518si684523jao.4.2022.04.29.00.03.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 00:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id h12so6361969plf.12
        for <clang-built-linux@googlegroups.com>; Fri, 29 Apr 2022 00:03:23 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:b0:1d9:88b2:1995 with SMTP id np7-20020a17090b4c4700b001d988b21995mr2429772pjb.80.1651215802914;
        Fri, 29 Apr 2022 00:03:22 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:fb4f:b611:3fdd:bd70])
        by smtp.gmail.com with ESMTPSA id s22-20020a17090a5d1600b001d954837197sm13228702pji.22.2022.04.29.00.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 00:03:22 -0700 (PDT)
Date: Fri, 29 Apr 2022 00:03:18 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
Message-ID: <20220429070318.iwj3j5lpfkw4t7g2@google.com>
References: <20220427171241.2426592-1-ardb@kernel.org>
 <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com>
 <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com>
 <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
 <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=lvRQ0Ck1;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636
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

On 2022-04-28, Ard Biesheuvel wrote:
>On Thu, 28 Apr 2022 at 20:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> On Wed, Apr 27, 2022 at 11:57 PM Fangrui Song <maskray@google.com> wrote:
>> >
>> > On 2022-04-28, Ard Biesheuvel wrote:
>> > >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
>> > >>
>> > >> On 2022-04-27, Ard Biesheuvel wrote:
>> > >> >Fortunately, we can convince the compiler to handle this in a way that
>> > >> >is a bit more suitable for freestanding binaries such as the kernel, by
>> > >> >setting the 'hidden' visibility #pragma, which informs the compiler that
>> > >> >symbol preemption or CoW footprint are of no concern to us, and so
>> > >> >PC-relative references that are resolved at link time are perfectly
>> > >> >fine.
>> > >>
>> > >> Agree
>> > >>
>> > >
>> > >The only unfortunate thing is that -fvisibility=hidden does not give
>> > >us the behavior we want, and we are forced to use the #pragma instead.
>> >
>> > Right. For a very long time there had been no option controlling the
>> > access mode for undefined symbols (-fvisibility= is for defined
>> > symbols).
>> >
>> > I added -fdirect-access-external-data to Clang which supports
>> > many architectures (x86, aarch64, arm, riscv, ...).
>> > GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
>> >
>> > The use of `#pragma GCC visibility push(hidden)` looks good as a
>> > portable solution.
>>
>> Portable, sure, which is fine for now.
>>
>> But there's just something about injecting a header into ever TU via
>> -include in order to set a pragma and that there's such pragmas
>> effecting codegen that makes my skin crawl.
>>
>> Perhaps we can come up with a formal feature request for toolchain
>> vendors for an actual command line flag?
>>
>> Does the pragma have the same effect as
>> `-fdirect-access-external-data`/`-mdirect-extern-access`, or wvisould
>> this feature request look like yet another distinct flag?

`#pragma GCC visibility push(hidden)` is very similar to
-fvisibility=hidden -fdirect-access-external-data with Clang.
In Clang there are only two differences:

   // TLS initial-exec model with -fdirect-access-external-data;
   // TLS local-exec model with `#pragma GCC visibility push(hidden)`
   extern __thread int var;
   int foo() { return var; }

   // hidden visibility suppresses -fno-plt.
   // -fdirect-access-external-data / GCC -mdirect-extern-access doesn't suppress -fno-plt.
   extern int bar();
   int foo() { return bar() + 2; }


The kernel uses neither TLS nor -fno-plt, so -fvisibility=hidden
-fdirect-access-external-data can replace `#pragma GCC visibility
push(hidden)`.

>I agree that this is rather nasty. What I don't understand is why
>-fvisibility=hidden gives different behavior to begin with, or why
>-ffreestanding -fpie builds don't default to hidden visibility for
>symbol declarations as well as definitions.

-ffreestanding doesn't mean there is no DSO. A libc implementation (e.g.
musl) may use -ffreestanding to avoid libc dependencies from the host
environment. It may ship several shared objects and export multiple symbols.
Implied -fvisibility=hidden will get in the way.

There is a merit to make options orthogonal.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220429070318.iwj3j5lpfkw4t7g2%40google.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5DZT6QKGQEVLXYOQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E1A2B556D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 00:57:28 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id z198sf6728137vkd.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 15:57:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605571047; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5GIZBVpw1Kw7plXwwewZOW8sqpRCpJyZHZUwLTC0NkEcOSxXJyAJaf+KaukbQx6EB
         Z6e7TLcCPxdM2guKm9dlYMO9D84UEOxPJlO3LUG1H1uzwT498smxq7gVoaVuuBqa5zhz
         9yCgptIAx05bQkbMHwFIV3mTfFclxa8vHHkv81N80BoHxXWnTevFNTy3bYphMZqvltJF
         we7wRmwnxJb3MKb6QKqBAwgkBmt5pqFdXxFEQXjvlK4VoL9KLE0qZqCFytbB6wjoGAVn
         zbscF4LIeeSBHGps6SYzNMkGy8nV799glSz3ZEj/8K9QvkXF4s3Cd8dKFl+x2j0a/yq4
         Zi9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sUIQawmxy0Iv1AQ7L7sODS/C/Z1QCObloa5tIWvcOI8=;
        b=RLYjmUNz4tB+19inUcTqx7CifzCVjtGfF5rOC9TEYiS/vYCcDjqF1IDv9qZCo/aI/9
         /gNhKsYuJ7gNO1exNoiCnOzHVCkbae4WA58Mw3kcKY/XOCS1sEvJEGhPndOFtn3oCkCC
         pJkL9D/glKwa7IfklxJiUtbRM8GuvIdUNbzP2phDN7/8ZdEIC5AsLMpuoYBub+DNiEfS
         7IRvgty7zbBb5wHRJquumpnAzjjyvrdPQs4EeCgPydHJwuT87UdYQc0fAi30gZfrvFn7
         Hj0yMp7VcATao126EjqFkwBPR0awJ9WiOZ+FhZt3nWCzaO5i9OyZ20YrasYkWL8J5WZk
         YHLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lFTcJP55;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sUIQawmxy0Iv1AQ7L7sODS/C/Z1QCObloa5tIWvcOI8=;
        b=IeZpJ7hbxpXfSeOvQckDMpbBy9h6qp2n/DnxKWzY5rPNkbTHKYlY+793mY9rXG0VYQ
         6CQ7CEdub3H/FHT0JLpfLzYumuu4+3YnCLQlM7f/Kz8msuBBsyy4XROiZQ7N/7OGbNK9
         9H6gu6NfxluFAhBKtFU8EtnUNBvqIlNBICFL8xZga3Yi+EzTpfp0WM9ZXxCfKTbg4VF0
         quUIPSRk4SFwlzYng7E99O6MnaHCibklYpdFjzbKrn9g0ukCjB7EaEROsZTgk/4TL09z
         Ecx88G9Ln1s7CrmJysC4BEqJtayve+7CmWsUZsOJJEKKTmGOsbleChb5XZtIJvkzJl/h
         Deug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sUIQawmxy0Iv1AQ7L7sODS/C/Z1QCObloa5tIWvcOI8=;
        b=h3ju63CuJwdMN/P0I3tBzLVxhuOe/GKUEli7gIdqhXSKIASX/ZV89IDDVj0KASwCr1
         i2fn6kNMdhwSPArxhuBlFy3c/iOBUhi7Avn3x0w+VlfRg+Qbc5VXdjpHy6P+1AJj/N1z
         B+tXo47KuOekNzHQOe+JQ41KKMwNAU/BVniezJjyYLR8tQEMu3Aq6IFKmadmbfjMjShI
         lz9NHw4NrthoDuGQsK4B9hdP5Xd59pUAG1nDdYb6HhRhlaHV5YIthKC3jStVfMnkmge5
         WWM/LRKznTFRxHrJNRQdaw05O6iS/MozzU7mR7Wxz8MvxbYEiKk5cy+RtO2X6zA+9qZs
         TTWQ==
X-Gm-Message-State: AOAM533ub5gAYklxizNXKLAvvnFEXUr14f9FIrOIGYmR1vBeIPDjC5hB
	b8CC3selxiPfMzVT1o0OkNE=
X-Google-Smtp-Source: ABdhPJxwBLkjMFSnEz7lXPaBbcguB113T/DGNVsliz3PgEXRv9FnnYFN0MHsnBYp5jiJaguS0XNeEQ==
X-Received: by 2002:a1f:5547:: with SMTP id j68mr9381047vkb.13.1605571047759;
        Mon, 16 Nov 2020 15:57:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5adb:: with SMTP id x27ls1056828uae.1.gmail; Mon, 16 Nov
 2020 15:57:27 -0800 (PST)
X-Received: by 2002:ab0:24d5:: with SMTP id k21mr10568290uan.137.1605571047319;
        Mon, 16 Nov 2020 15:57:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605571047; cv=none;
        d=google.com; s=arc-20160816;
        b=Dt9oa15f8sPa/cPNEqAZHSj+AU8bpmVrJukxxYjveTMVZtxFzNAoE81TTI1qy0OJKe
         ZXsW2upqBJP/eVt8uzl6O6V5STsO4TmkJM+sI487lC/xOLxo4ChzY17Re55opsYhw4fB
         7K4utPVg4/Gid5gKbjx4hjhqwyr7xdOGg0OiXNVl8eFNmFC/Vl840pi6d4XagkMp8Hww
         sEIRRtKDjLyM2VW+bB0igY5p/0l1LVBZDQnuQxALY2H4kW+tIfeUqg1780gLXSttio+Y
         7uwmKL/xHNfv5zzpwFhh0syIOXiUvSo7CUcN6j12/P/IejQ6FSpBjIrK/7hM+TdRHMlS
         60JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cR87GzgLplLYYtt6pW9B01e5X23kwe+vdHFL/d5LTJs=;
        b=dB4p1THz2U8l0ulJK5Csy9iesoRCMLcfIEovqCKnPZ/eCAyrq9MuO98yqkPoz/pB3r
         zQyXMBN6zQWNZEGvDqaZsLA41ipm49KSTTd2/4pNCQ/pUIb1yMjqP3TygpOUf0ldaFCi
         XM8eCUfZN84Yx7Wy7of5R0w9TmSHCH1JoLIjH8dYxnFrQUGb0GjRxZZcIgvDdQPaLf73
         dZZuKxlI3jeWyjXm/KsDD0hQWVQt/85hDoYf7/5z84DVrq3odg2iU4q8jGosJrtMqNGl
         ZO6fKkFEpSe109EAzJhf6EB0zMofMOcYUVpVSy9J19HJ+SuEGPVj7AacoZ1eGKaXjF9K
         5bxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lFTcJP55;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b16si1526792vkn.5.2020.11.16.15.57.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 15:57:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id w14so15700593pfd.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 15:57:27 -0800 (PST)
X-Received: by 2002:a17:90b:d91:: with SMTP id bg17mr1435828pjb.25.1605571046846;
 Mon, 16 Nov 2020 15:57:26 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
 <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com> <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com>
In-Reply-To: <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 15:57:16 -0800
Message-ID: <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Anders Roxell <anders.roxell@linaro.org>, 
	=?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lFTcJP55;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Mon, Nov 16, 2020 at 9:45 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Hi Arnd,
>
> > Adding the clangbuiltlinux list, Brian and Nick.
> >
> > It looks like the problem is that Brian's cleanup series is only
> > applied on mainline kernels (5.9+) but not the stable ones.
> >
> > Is this the only problem that prevents us from using clang for
> > i386 5.4 kernels?
> >
> > If you apply these patches, do you run into other problems as
> > well?
>
> No.
> The below listed patches are cherry-picked into my local stable rc 5.4 branch
> and i386 clang-10 build is successful.
>
> Build tested i386 + clang-10 - PASS
> Build tested x86_64 + clang-10 - PASS
>
> >
> > c94055fe93c8 x86/percpu: Clean up percpu_stable_op()
> > ebcd580bed4a x86/percpu: Clean up percpu_cmpxchg_op()
> > 73ca542fbabb x86/percpu: Clean up percpu_xchg_op()
> > bbff583b84a1 x86/percpu: Clean up percpu_add_return_op()
> > e4d16defbbde x86/percpu: Remove "e" constraint from XADD
> > 33e5614a435f x86/percpu: Clean up percpu_add_op()
> > bb631e300284 x86/percpu: Clean up percpu_from_op()
> > c175acc14719 x86/percpu: Clean up percpu_to_op()
> > 6865dc3ae93b x86/percpu: Introduce size abstraction macros
> >
> > It may be a stretch to have these applied to v5.4.y, but maybe
> > there is some other way.
>
> We need to find a way to apply these patches into stable 5.4 branch.

If those all cherry pick cleanly; I don't view them as super high risk
to request stable to pick them up.  As Arnd notes, we only very
recently got i386 to build with Clang (thanks to Brian's series, and
others' work); I'm personally curious though, what's the use case for
5.4+i386+clang?  If it's anything Android related, I'm curious whether
4.19 might be of interest, too? (That will probably be much more
painful to retroactively support).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dgzo1eWADp%2By0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA%40mail.gmail.com.

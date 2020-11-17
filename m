Return-Path: <clang-built-linux+bncBDYJPJO25UGBBENV2D6QKGQEYT36FIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id D27562B6DAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 19:46:42 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id x4sf995392pjj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 10:46:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605638801; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7NQ09nHsIeDzKbhlsI6h+89YQro2Yu3iySfBQWlOe7swJscLwJ3dOb/3ZuxX7J1mc
         DJEo0sCkMAM640yX8DV7DBlS6SQ5oTqbgpK63RbOT/Zq/otAdEg1NSxYFshTUiszz2EB
         5IjqPCX0goZpf/1siG+ETu5gcM2AtkFhGdNdQyQqSFzrGQp7qMeCH4Wa498ZTES/UOPu
         NNZWgserlCyEm5BBKRz51lpQbz1q68gs5/wVqzA8xKd7/t8mMpcZhXq8OAUpSc/LTc7n
         LKUpnKiPJmkxroSnJgQooPF/K0r6Jnn7JyDjNbAI3p069ITmg2mWhLlboclmaAX21VMl
         Tnww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WGia2sIAnRQGG17IUx0Q7WwDgQRemRfzEl3B/SxxxUU=;
        b=A9xt8od9BVLrpQAnmMiKJe/EHUDvLHrUxpoTsQ6us331VfleUNYiJpo9Ns8rSjS6T7
         3wSBFgaIS+0aN2gAQR+IlzAh/z/kugzzlpaB7mElSrZ4YDBxJT4LUQVlXEfkWLH2X/lM
         eR06myUASDol6LZX+D0GK2AJId5w1ATDaMB8KcmGvwQ1VnyiRwN+MHc0nRj0Gd3tyWyL
         pR6R2ykZVuVb80diTQMDgoLXgAczZQUXRuaf07CWfF04abSZJ63ijARcnVSkWV3ZcSpd
         NNknPV2OkU1saMt2IAarqd9XWGFqGuVPAoHqZ1DjL9kyfhG7ckSVycg0UQjXYvpIob08
         jDJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qeAL7FLy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WGia2sIAnRQGG17IUx0Q7WwDgQRemRfzEl3B/SxxxUU=;
        b=YYwwGaO1lIW/bWPye1IzwzbdsQCJu8qFTOkAwVDV/YE8ivGjBdcJK6shCqpku+BX3a
         +dvIt9H7KORNN14OO9/u6KQopfLF/2jOsa9s8xTtnJsBn1shf7L7gFY3OqQv6j4dKjP9
         OsDZKOmHAPsw6A6YUMyLY2/SQSLmOajiO2o7fvaiKclJoZf47RvesdKV8Yn88dklqyqo
         O4vhLNglsZ1oFGXblEs5/YK65xS8dwezhMrdUvbgSxDwHwKQrYSyDZCOcrGH+Z+PLiFQ
         l36vs2ZITORDI8zS7PMVWdrCkj3Np8kGGOeo1SUp/lSjMFzqikuHrVybbCALVir5fIGR
         llKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WGia2sIAnRQGG17IUx0Q7WwDgQRemRfzEl3B/SxxxUU=;
        b=CQRPYzpeYfuGbDwI05E3u8cvDMxD0mrSTdASo5hGkbsNdMGxVucSe8NzatHmztYcjT
         rwFNjBmDrrLjOkLetYnObs5Ds8zm9JLkojnw4CBfEHDRuHYsDU3HSJvh7Xpv6M5d/P1G
         Gw7HKsVh70tQj04WnnHINZv0SkP8WVdCMlApMd3fP476rL1REwUoshWpXo7p8aPV+wo7
         DZtvCaN+la+1a/+v+r4/IwUU+fDOsM8yTZg1bZl8chXSNcHXuMty7/LjTh1Pj4cMWWLc
         aN66bP2d8N212e1epzGj4rDf3TgB6eFcoAol7Ja51yas1VXCe2XiBwUmBUCjFq9tDBwa
         8udg==
X-Gm-Message-State: AOAM5316R/0igLIQK5KRCLmQb0V0m95P+ySTdCj6osu88F/EFWFPRwbF
	2grEfGCU5La/sXXqYyRi8OM=
X-Google-Smtp-Source: ABdhPJyUa3Y3cA9dci5gTEiMAtiDweY0XylhXd3BOqkJaWVJj3oOMxdihkvvEYDgh9a2OyWlq74/Yw==
X-Received: by 2002:a17:90a:c796:: with SMTP id gn22mr422060pjb.234.1605638801573;
        Tue, 17 Nov 2020 10:46:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3152:: with SMTP id x79ls3431937pgx.11.gmail; Tue, 17
 Nov 2020 10:46:41 -0800 (PST)
X-Received: by 2002:a63:1845:: with SMTP id 5mr4619147pgy.393.1605638801011;
        Tue, 17 Nov 2020 10:46:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605638801; cv=none;
        d=google.com; s=arc-20160816;
        b=dPBMvz/zr/630FJ0qpRhJOvCVaCVt7OUm264ZN7WReJ8x+USyFFruzr2G2ylMU8YR+
         zZ7eti3EmqXzF5eCXaZUKJzUjsALv88Lk51nOU0abmhaGkV/wwt/n7YQKtm2D9HXLJIl
         BZDzDGmprt0KQqJRuuWb33xwRnvkmNoZhXSFI0MSfEiXh9Cy6XcUHjhHtcyF/SWgQkEh
         eh7i7Is/XXWkmuwm3h2nyzoM26n1ZIvESlYEu9yO5H19X8CzjI6RtfPGPbRX+jlpwpIC
         b7Ww4UySO9LRdN0C9IZK2rNpH6HSHY0+xAinpS/dmslpu2IcIkeXTmzBwn4TjFjl212p
         AQ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PbPU/gVFpRBjfHHgn0CIOWxdoQu0ENZU+XM77WCwy8Q=;
        b=Kr+3vCj37z3ADMd/AM+khQrWOX1a9Do/VoHBGjf/S3YGEx1MrJZZ6P7OvnFKwthrhg
         2i8ucIwGVaKjwh/FGz2aMGxABjktn6RaJ3wkfIG/GuryRX/l0LhVAONV4rduOHYxxssR
         F1ShXPUCkQD4yvloT8898fxu2VIo6ctVMaaHm5Tz7SqfQoYIRqAPGAC56F+vVdWYW9LL
         4bFqJ4zdluJ75XCsxsrd38zzoTrpBYWfgkh2eEctsL6J2azdPDQrDY1A9Ik8xYPKEVU6
         qZ0ypBgrJu0onenRozGho7qxT3lDcMtdJEZCmwBUC3WP9mTHzr26AW/vVyeIsaQ1AXmr
         6+IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qeAL7FLy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o24si268435pjt.3.2020.11.17.10.46.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 10:46:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id q34so426052pgb.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 10:46:40 -0800 (PST)
X-Received: by 2002:a62:870c:0:b029:18b:d345:70f3 with SMTP id
 i12-20020a62870c0000b029018bd34570f3mr730164pfe.30.1605638800507; Tue, 17 Nov
 2020 10:46:40 -0800 (PST)
MIME-Version: 1.0
References: <20201104013447.GA21728@kapsi.fi> <20201117030427.61981-1-jhubbard@nvidia.com>
In-Reply-To: <20201117030427.61981-1-jhubbard@nvidia.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 10:46:29 -0800
Message-ID: <CAKwvOdkEFPYmH+JFC5a0+whb_1H84gS1WU5FVpV071Bc4mhiCQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
To: John Hubbard <jhubbard@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: jarkko.sakkinen@iki.fi, Andrey Konovalov <andreyknvl@google.com>, 
	Alexei Starovoitov <ast@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Marco Elver <elver@google.com>, 
	Jarkko Sakkinen <jarkko@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qeAL7FLy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Nov 16, 2020 at 7:04 PM John Hubbard <jhubbard@nvidia.com> wrote:
>
> Hi,
>
> I just ran into this and it's a real pain to figure out, because even
> with the very latest Fedora 33 on my test machine, which provides clang
> version 11.0.0:

Hi John,
Thanks for the report.  The patch was picked up by AKPM and is in the -mm tree:
https://ozlabs.org/~akpm/mmots/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkEFPYmH%2BJFC5a0%2Bwhb_1H84gS1WU5FVpV071Bc4mhiCQ%40mail.gmail.com.

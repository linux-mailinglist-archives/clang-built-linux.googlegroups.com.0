Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBBNS52DAMGQEZHBMUNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBFC3B7A3D
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 00:04:53 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id n11-20020a05600c3b8bb02901ec5ef98aa0sf180374wms.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 15:04:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625004293; cv=pass;
        d=google.com; s=arc-20160816;
        b=FiLBQjFIGiD9TiFm7vlNAnaVIyDx6u7gy91/WuJrxWbLX3UK3Ihn9+tNcO8NpGnmiV
         DYpCwiGQglfyyLmP13N+bfG9gihShWXMxe1pHl3FbQurbb6CliyI7JP1dOL8LeL8DRvr
         0t34My0KVQLxhCW7W4lppbJa74tMz7KC9GM/0vpldZmIbOEt6lnHJpnJ2lnaC+tENKKM
         4obxK2KugAWcdDWa4LYod9vu9cMUCZm9k6B0jlLGzejBc42mQxBke5EwEIO2z0E6bgn6
         u/ZTFT+giVvhEjQ2vDylj8clywIvCZg6JpZ8FxwnAiQp6qrFUmyJilll67sqc2fIRANi
         APlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=knDnXuu+FHCbdK4lOyoPfMFRiLz6+7K5Wr5SXoOBGTA=;
        b=W9t5GrrC9Qo/cRKNmRczRKMss58luN3P/y0lkPsggZmwMJiWVGbIJxFooqyTZrV2fy
         loCj79AwcrxU99Rn6TNWsgJOZWM6MHpyxK+rsILT35giUcQduGg3DYxfZREVITL6hkfK
         HJrCaWP6gWTOM4w/eHDhQDUuVyDwXyPfhKUnwUbb4Z+X76pCbW1lJ/ITlK6pzyqQZm2t
         SHyX9YSykNeauXPDjS1N9ia4kGtgSG7fIc0t0aX7Cs2YUH7xQL2oBUgLRpw/Dm4bEiwY
         p+7fx9gFfXRRxpKgAyB10DFugQF4ChaQfeXL+ONj1wb18YQdI8vr/vEVBK1Om+e4q4DA
         TaUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=fvKRMzIg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=knDnXuu+FHCbdK4lOyoPfMFRiLz6+7K5Wr5SXoOBGTA=;
        b=euIY8bgxqoBAalNybMV3AI9JBl6N/mBd+YRqFugo36tkVFMQzqyX1PGC+S1UUeAt3C
         wngm32u4tBMknpGwyUmiY+ExSTnWnKIRx5DIQpxwg6UjPoL5CBdxzRYAs90jEWqn/QPG
         wtXEV2/6outPS83MGrL/i+jJlmXU3/PuheDTgBWK6SaImHCrWK8Cd0zELD4vockBAhCE
         aYPQ4wtPjZ8AxorISY9LEDp9LSwbUCGkLxWenuN4kssUzDb+8WtPk3+EBiJM7PvEk68M
         vxLnwjHpRkh3OMzOaCdaqbFks5OKizodtmFq+bc9qYrXeO1CXd4y6zab5WjZ2QT4cObQ
         uKXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=knDnXuu+FHCbdK4lOyoPfMFRiLz6+7K5Wr5SXoOBGTA=;
        b=JYa4MaWKrKTTH1d8Mh6ZNQFgdcXJxMAM8gp8w3pTXqXIC1xHlhhLHQQLw94NhIc7HJ
         Srr0TEROibl42kLqVfWWSTrwb9UAkI8Mazi1eiZOYjNfdv/8ObCByWTD7/MAmi1X3xRk
         QSzskaQ0pi5jAjgITT9/92IebmGApRuzQuzwO9Prc10yU0CPgKBNqR1LMzCzlTMWpoEv
         DLC0RDLtfZ6zNwxHV72ZecX6v7FS+0hWh+QmB1bh5vcad7UCn5qXL/2d1Xg/DvUFPP+u
         f6+XuJ30Is0CtTqev3a/DsxLn7wkWCc6xmFZBuuKryPtYlO99hh88XVmU5meYLnATshp
         Yozw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/aTMpNOiLqoylRautYIPpdkPN7W6uTarrXk3CyMDYPZRbzP58
	ZH8+IK6MYNtU36VrfeT6rpE=
X-Google-Smtp-Source: ABdhPJxod1bk6P+GBx31FF6L6G7DFbNKqwY06UOEXyATEN8rykxtG2H7+NgBOADqgQInCGp7wyq3bg==
X-Received: by 2002:a7b:c8d1:: with SMTP id f17mr960198wml.141.1625004293435;
        Tue, 29 Jun 2021 15:04:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:69c7:: with SMTP id s7ls214579wrw.1.gmail; Tue, 29 Jun
 2021 15:04:52 -0700 (PDT)
X-Received: by 2002:adf:82f1:: with SMTP id 104mr15493333wrc.306.1625004292445;
        Tue, 29 Jun 2021 15:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625004292; cv=none;
        d=google.com; s=arc-20160816;
        b=KfIbfFa1Yg4OFCjMOjGrs2BpQ04JDd6xVVAgYSAAN86M3ilj2x0sJr3ukNUR+uIXux
         xMeKYzbh6cwMt2433McxxTzm/U+EJAPMi/NxrdLOkSyUqOwz7a26K2B+vXvJCeRqvg0u
         hAi8kr9DdREHv+mUjHFm8V0TfP//cJrPRHrlTUmm/XZ5E/UriR2BQr4Q0zJ/hYIPnYjw
         /dw0EQBIq36hOeVWICxtvrkya31lPIdG9fX3Bej4Owy1K8Rh/i3nZvIDSW/Ol0elZCVv
         z/+jmmlu49QlC2kRw1xXqQ9kTMlt5l8AYTsKH59B7GJrtNQBYC/MHnoV95qWq8qY/eMJ
         kYAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Kpsr/FtbpsGhngyVxXXIyq1SDK1oPHQRTq+LLV3RKrw=;
        b=RWFoacttnXdZiD8BQjX+cP1vwHlxIjKQSrAKy2nX9aGagGVjj+kbPgI0jwokM0/gIN
         GXsx1q68k9eIvG0A8hHA6TqAZs4fJYiov9FQMeCiVcw0Th2/5imQv2DF/gxguKEMlw82
         JAHzhTn0g/+XdWrWV7ZHxPlFE5HqpyQ/Tlu8nLpR6MVU1B2r44wM46upR0ocidoWhGFj
         i0jg9EikMzejiJ4TJYFeuG9WlvWYo4CPOFInOMRtgZed42dRHj6nRBbyDz2uvmiLdgdY
         U6xfKsi5K6nkjdgEGOLOivOK091yzMOLXk63g3+Uy03ph1N9hSwdRQEch5wNwRWAl6Tz
         ZiBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=fvKRMzIg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id v4si753401wrg.2.2021.06.29.15.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 15:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id k10so975922lfv.13
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 15:04:52 -0700 (PDT)
X-Received: by 2002:ac2:592e:: with SMTP id v14mr24388976lfi.146.1625004291852;
        Tue, 29 Jun 2021 15:04:51 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id s10sm1741272lfr.123.2021.06.29.15.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 15:04:51 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id a6so260572ljq.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 15:04:51 -0700 (PDT)
X-Received: by 2002:a05:651c:32e:: with SMTP id b14mr5398881ljp.251.1625003885865;
 Tue, 29 Jun 2021 14:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg@mail.gmail.com>
In-Reply-To: <CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 29 Jun 2021 14:57:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wioxa9Ur6u+pd7shoRSHqMWn9UFKaR9D4ymj8Er2LYFFg@mail.gmail.com>
Message-ID: <CAHk-=wioxa9Ur6u+pd7shoRSHqMWn9UFKaR9D4ymj8Er2LYFFg@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>, 
	Bill Wendling <wcw@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=fvKRMzIg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jun 29, 2021 at 2:27 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Right now we're having trouble with hardware performance counters on
> non-intel chips; I don't think we have working LBR equivalents on AMD
> until zen3, and our ETM based samples on ARM are hung up on a few last
> minute issues requiring new hardware (from multiple different chipset
> vendors).

I agree that perf profiling works best on Intel. The AMD perf side
works ok in Zen 2 from what I've seen, but needs to be a full-system
profile ("perf record -a") to use the better options, and ARM is..

But with x86 ranging from "excellent" to "usable", and ARM hopefully
being at least close to getting better proper profile data, I really
think it's the way forward, with instrumentation being a band-aid at
best.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwioxa9Ur6u%2Bpd7shoRSHqMWn9UFKaR9D4ymj8Er2LYFFg%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBDFAZ6EQMGQEF6QM7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEA2400CD9
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 21:59:09 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id b29-20020a2ebc1d000000b001ba014dfa94sf886081ljf.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 12:59:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630785549; cv=pass;
        d=google.com; s=arc-20160816;
        b=CMlLX6jtpvItqEDBPhdZg86JD48YAZj/CFecxI8EPMCfUQDiVWP4CPf/+NdkdsWY0J
         Nr5uG19IAC2A299vQcBNoRbXR4nQJiwY9V3zrqg4wj3dHdUrIeYUVU5dG6FeBCBoum/F
         7cisAnuO3LbMYdTDEfqesCHE0DWgxXvj6x6U0SU++X2XGdmBot2vONgVXRlfthz42JY0
         yvYUpyHBN65onir2QTNv1mRklUktZgFnDeCvDg2LUC8PI8wPtncuqFrd5CcdT63UAy0R
         L2bIY8JpHZRvdfcHW+lFGgoVqI2TMplVxg70BijtMt+kfT+hJXmTA1+rhDptxlqjxrEg
         BoNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Qo44LGV4c0g3FG43VtgYqkl9jbI3u58BGn/UyQrtnKk=;
        b=iKyLgX5W5oZTED+6QfYFgNNMJVpMW2ve3n2CvnPAxi2RPQHGQNTOuXEtTGJhBKVVSC
         5811bq5/0vRLbL/IWWLp54WvsiS4HypRzGkySXtQ5Mmg9TCrWUibF7oueLHMomI8HbnU
         lqGNpZ8iRtWM1F5moXdgRKjw07nDGh3cUeOtExK2ZhTEX89PiRvQLHYfkGVvH8IZumU5
         MeUCHA9f+UoSdKH07gZAKktCNk0lyiPqIVdwv1t0vajViD5NgBcWhIgi91EDgHSd7Mkl
         VEPtId676P3y5aQ/ZxjcTNkgomrvU6yjnH18VAbXFe/3QUYts+l2rJJ/WylaP8oTqwrp
         J4Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KbVKhyqG;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qo44LGV4c0g3FG43VtgYqkl9jbI3u58BGn/UyQrtnKk=;
        b=OdYKTPjNOqvB9fnREIbOzYaLIcnGZMgRPQKhiSwhC3OhHo5Q4xeqXqUHO2d2xkJUp4
         QEu0bvHvG2SskS7BwR/k4Zt5U6CwmMQACpWbUjHm9ogsJWYwfz3T6pPEChE5OS7IWisF
         9Mabqjh2wiP3xL5Jx/jBYzCt5N54nIZxBlCTHC9AUmCp0D8EFA7q6H33oGWV8sfBirtX
         4TAZ7sILXY3Ia/Al75i4ftaMjC3FkiIi/Lfw9fymvYDdP57OLxVdBLRYmnha3IM7AMfw
         Mjt3VX5zovVLgoQhUojC87HJaHQlWKO8VpahyVnKbVhwVNGp1kD1KdelhATeGX/Oe6kl
         xSrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qo44LGV4c0g3FG43VtgYqkl9jbI3u58BGn/UyQrtnKk=;
        b=T7H/PLJFLJo8qpoaNZD/GKY94mVbXdl3LkX2n6lluv9EUxRDFruRvoQlumdmGSJ387
         UQ5M5x/wIYmzfsX5rzuwNRqcDApKt6YC1cCJ6oNn1Zea00Usk/Uaw2V2aZd6cG+gPK4E
         01frugRU7MG7Um8LCBX9LfGgu4fDVw/MPEEpsxSoGucdwQTsGKZitgAiAuG555Ouc78s
         6HaNbpx0e2KTNHkViO1QtwnhEb5pDz0Zw4DQ2iawMn+ZWEQQEpQAzjt36GMFeFAfIPF7
         egdf6DvXSi3yxI8uCHR5KVIyck6cv3jvTg1cCOQ2rUhRz+ss2bN1UDxtty5MQmkuxWvF
         yqKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IPi1KnZJGmTR7hlyTtRQzuJ8F/vXZ65GWxvzkWbEoIXdxLRCB
	1JdtjzG169v0G+Gy33ea2G0=
X-Google-Smtp-Source: ABdhPJz5J4UciY1SKr0xMfwHJ2tsF5kW2TennoLoggLrVaFfF+WaQaDa4J0AcaSNWstZ64ApFIhXYA==
X-Received: by 2002:ac2:54a4:: with SMTP id w4mr4016449lfk.133.1630785549282;
        Sat, 04 Sep 2021 12:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3ba:: with SMTP id v26ls1138445lfp.3.gmail; Sat, 04
 Sep 2021 12:59:08 -0700 (PDT)
X-Received: by 2002:ac2:5fe7:: with SMTP id s7mr3815667lfg.666.1630785547963;
        Sat, 04 Sep 2021 12:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630785547; cv=none;
        d=google.com; s=arc-20160816;
        b=BuR7f5wUGBR2Rbt9NxBoQfpwTVP649aAvD2bPo6sQe0HM0Vej+PnQmH4vzlWzUvo8p
         4LNzZfnD8aFTuZ8u8UWLwN261HBRa18s/QVIwhHWuF4XrJHmPaplzMPCGQz87u5A1L1A
         ks78agxSyx9fFo3sk3Zx1cMVCZ71zX2or63m4ViwJ2NfMEslKU7fLKdO5q0lMh+OgUiq
         E3kKVn7s/apMwmL/VeLnqqWsS3r9biTdAL8V5zi3TgDJrCtjsmGundApIhjr0tHafD5+
         Fku/wnjjpZf97AHBlRD6KVHv2vkzRdKcTMdmvmvJS7jlTl1FawhgYYQl9GEE9vQxYZpP
         VXoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mJYg48y01Ixecv219BnfLeDPB5wbBC3ssZt6PfPcF54=;
        b=ea9fsjlUtktVe8nyyg/uoGd/+DwxYglOJVvwCWaKjv891N9HiQN4HXJeyIlDgSio6S
         OFMzUWr5xTdzRxcDRjLysbPnijzGXINFzfmZ5qq7JNpZaKjk2o72wNguco+ESBclZFen
         UMhCeNvioOFjghjN67Gbe9MhTKO06mn0hIIylvjc3OYZX0cjld3AADgWxklOX0priSJv
         wxya9TgvcuNXmuR6m6H5aJveE9/0V+tuuur4Ik1i+YfOKKAarrRfnwud5MO661Qrn/oZ
         YDYg4G9kxbtL9Rle4How0TQlBIXEOXWIz8cjiMXS9sFgvtLNk373XC2htFHClZP9v+ju
         3lqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KbVKhyqG;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id h13si166835ljj.7.2021.09.04.12.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Sep 2021 12:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id i28so4222110ljm.7
        for <clang-built-linux@googlegroups.com>; Sat, 04 Sep 2021 12:59:07 -0700 (PDT)
X-Received: by 2002:a2e:978c:: with SMTP id y12mr3828238lji.295.1630785547371;
        Sat, 04 Sep 2021 12:59:07 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id c22sm318951lfm.113.2021.09.04.12.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Sep 2021 12:59:06 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id p38so5332714lfa.0
        for <clang-built-linux@googlegroups.com>; Sat, 04 Sep 2021 12:59:06 -0700 (PDT)
X-Received: by 2002:a05:6512:3da5:: with SMTP id k37mr3993613lfv.655.1630785546572;
 Sat, 04 Sep 2021 12:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com> <20210904191531.GS1583@gate.crashing.org>
In-Reply-To: <20210904191531.GS1583@gate.crashing.org>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Sat, 4 Sep 2021 12:58:50 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
Message-ID: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Florian Weimer <fweimer@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=KbVKhyqG;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Sep 4, 2021 at 12:18 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> And the C standard requires you to use these headers to use some
> features of the C language

That's really the point here: we don't care AT ALL.

The C standard headers are simply not relevant for the kernel. Never
have been, never will be.

We care about the low-level compiler infrastructure, not the standard C headers.

Those standards are designed for - and try to cater to - a completely
different audience.

We do atomics, and we do not care at all about the mis-designed C++
standard atomics.

We do our own type system, and again, we don't care at all about the C
"official" type system and odd name rules that change from one version
to the other.

That has always been the case.

We generally *cannot* use the system header files, because they bring
in things that the kernel simply cannot handle.

That's entirely obvious for things like <stdio.h>, but it's actually
true even for other things.

> You also need <stdint.h> and <stddef.h>.

No, you really don't.

We avoid those intentionally, and always have. Because the system
header files have never been a good match.

Now, <stdarg.h> is actually special for the kernel, exactly because
unlike other header files, that one really ended up being something
that historically wasn't exposed in any other way and wasn't doable
sanely inside the kernel.

But it does look like gcc and clang have both ended up exposing the
interfaces the same way, using the __buildin_xyz model to just wrap
the standard names in a namespace-clean way.

That really wasn't historically true. Back in the bad old days of
varargs etc, you literally had "va_list" be a "char *" and the
accessor functions were magic macros that updated things by hand by
the size of the arguments etc...

So <stdarg.h> is historically very very special, and tied to compiler
implementation details.

In ways that a lot of other "standard C header files" very much are
*not* - many of those are about the types that the system provides.

And in fact often the kernel is the *source* and definition of parts of them.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwjc1rxah3xt8mKN%3DaCxQigjy3-hEf4xh_Y-r%3DMXAKVrag%40mail.gmail.com.

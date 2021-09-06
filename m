Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBO5K3KEQMGQE6NADH6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 78145402147
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 00:25:00 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id a17-20020a2e7f11000000b001dbbb444489sf3983705ljd.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 15:25:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630967100; cv=pass;
        d=google.com; s=arc-20160816;
        b=ag23iQhhU25e2BxJtRmbeIa4KpNkDuhQCD5/ici87YtmgLky8VAsKNJPYf58tu3L8L
         0MryaOvMdWGdQxE2Fb/7nIND09n19PFvh7wHMWMiSlsAtB7kq+orq+sqSlZMm8VDT8l/
         JA0qUc9ykwKND1ao/OloYdwx9P3cKVRv7M9vl8yw9RrIPXsbJs+pMD08OEf/UjlxBSDS
         T0U3vr2x4Hx2s1afrvh4p4doMKZ3UMeC622y+Nnei2Csb7iDm9m67g4yXsaWlVyys2e0
         Qt0CBC1pnl/oXKM1OdRI6d0v3AtyEG1eeORNvzHv+FXHbdiKaCunlB7nixGiiFEhOoIx
         u9ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nWCUEYOiTd1wMawNOWxGbuEJQryrQpOWC5CldGicYB8=;
        b=AJGAApgi4g95XzC191dU6hDHoodGaw01H75mIuim81I9mN4e7/PAxefUP1tjK6NACc
         0awDUnwK20Y2rAwPGDina/Iw+Xg+JLB9kbMbIMZuMHZBXGRA4nta50vGEM4cLphrdXWh
         K7FcmPxSH2rXTEj/hGDYqzNbsFQIGP/qBjUinxZOuSNpOiAx69XDaTe/DEWRP9PJz2R8
         tniYvDhTrDxjQPqpnYR9Slgmic4lzUVmrzua5/CytuZ26cAvn9+5+prIkaIREWMe0If3
         QnS8geGVK/zpk/zr8oINx/cdTjvMSyyoCnqwLD+S4NgKTK3tH5Yc6atWXbSMqLkZxF1i
         2rYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=D5wOQF1J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nWCUEYOiTd1wMawNOWxGbuEJQryrQpOWC5CldGicYB8=;
        b=O4xoFWoSMlniJOf5wly5o2TmjKKLQW2K1/s46yDaHy5J86Nyhk/qzBdoo/mj/WIwQJ
         zlaiN7rXBtr6mbyWEC85O7fE/GMcM5D/Ux+xNta/D0zkOdd0DA8xW3NyGKUCYcPXm2iz
         acneewy9NYaoSIi9aeb1BwG/09p8RiVX5odUBBxpV+SiZrVYYk5/xmw+ze26Xf0Qd8zj
         tQANGI6cQXYKmyEV6WZuFqZaQPa7ZsnvnuHJh0ItU6LKw6yHJsfuPL8z5+ASys1+rK5r
         LdYnk+qtJ5XQ+WTlv/4lCmGD7cEuES5HzitYGwfTIF+nOYnLGVdpuQaIDORyUJ3ey97l
         m+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nWCUEYOiTd1wMawNOWxGbuEJQryrQpOWC5CldGicYB8=;
        b=JvxiqiYEi/9siuRK4+WWpyUzEozRddCrien2cLlNh83AxnxjMxskvlSqPbiiQHR2kc
         whpZJAea9cPgkmn0CxKMDLJnQfbKRNR0bzFGb20ZE+nYZgKGIR1ChkfVp2uMPCSk3Gxa
         sKq5jvPAa26oCnxY3nK5vEzbRYF1y8Glv0Vxlb85JPigMMMEdkd5YhYBcIcRPhkA7WrV
         Gn0ggkDeSg5B7hVF6081W4UueV7pERgkGjFrflpWHSCGpefoRHSGvcGr7/h0NrtmYvZi
         BLbhuQ/xOOzHan4RAWtrkiJWaTeGxFS+3AmUj4rCdSuthZgVumIvEAg5PQVC47oTTIaK
         m04Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530c7NRNiRrmsIP4RxUvNU6erQj1DBffpT2PnLhKpbT21swAkNVf
	28otj2SPfLFQoE5IvPfAxL0=
X-Google-Smtp-Source: ABdhPJw5f0ECrLVw1b31F8MULCzqleLtUnC9T6MvsG96REGtfq6JNtS04NokJAa1nTICd6pCGg8WCA==
X-Received: by 2002:a2e:96c7:: with SMTP id d7mr12448888ljj.191.1630967099962;
        Mon, 06 Sep 2021 15:24:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2119:: with SMTP id a25ls1288280ljq.9.gmail; Mon,
 06 Sep 2021 15:24:59 -0700 (PDT)
X-Received: by 2002:a05:651c:106f:: with SMTP id y15mr12809696ljm.309.1630967098943;
        Mon, 06 Sep 2021 15:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630967098; cv=none;
        d=google.com; s=arc-20160816;
        b=x+0/Cod1j8gNWuehb6VqxLXJ92h3NpwV91RdW7n4kNYdIlTTctOiWX7+59qFn0EJ/B
         XD46vWIy7FRuzGM+YZRz9Yh/p8dLIiUScbzQbw6XoxeZoSHXGGgxF1VFQMMEBa5e4APc
         TMRkNHfpAxbFmKLfNW6yYYMTLoZmq4TgExMkqJMMTWalstJANg9DvUvWThv1n2IL1cfv
         ArkV817/BcLERI2jQlPdejp7aadDzdPtXJzw12pKyEArRnBF7zJu4bsy2+zMEaOv/z3+
         CBCJKPRV1vtjEQv+PSGG9gUXsUdiN4QaW1JopXS54g23Ym4hF0jUXY58P/zFjnNQkFws
         uBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=djkX2LEeT3p1G5IHevNmOqztMBJt0/G4rH/Ybx5oPXc=;
        b=IRhnKvA4ecYEocGETmjREbd4rssQ/Pp58J8OqXQc3GeOH6VAUmwDuW9t9IeoqGgKI2
         DLK14a5AfwlnmU4Gcxz2GJYke7JSP4gx0RVYf5aigr5KSa+MBWaAaHj3GANNQ75pqxMm
         SzRBYhU3gg/qacuZa+LZZeJj1IxrvwHQjRjqjUZltn/rqhb6uH6P9XwwCREV8z4KVJ9i
         UTlaiEeF0SfpNHjE5tVKxjWAJNMtKTZtA+18EzOq4m7vkRuEHSS+41zsgti+bqOfXEdc
         tDklyNh0/7xQ6U51V7j6nUC6vjhL6S8/aWVCudzCJW8Y82EnTn2x3f4wHutNITW8jZA0
         xiiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=D5wOQF1J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id l20si326102lfg.9.2021.09.06.15.24.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 15:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id w4so13358370ljh.13
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 15:24:58 -0700 (PDT)
X-Received: by 2002:a2e:b803:: with SMTP id u3mr12359320ljo.55.1630967098205;
        Mon, 06 Sep 2021 15:24:58 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id n4sm1176265lji.100.2021.09.06.15.24.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 15:24:57 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id x27so15688673lfu.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 15:24:57 -0700 (PDT)
X-Received: by 2002:a05:6512:34c3:: with SMTP id w3mr10565547lfr.173.1630967096954;
 Mon, 06 Sep 2021 15:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org>
 <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
 <20210906215218.GA920497@tucnak>
In-Reply-To: <20210906215218.GA920497@tucnak>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 6 Sep 2021 15:24:41 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiKy45R2vMHhjr16_Q+iYea-70byuj=mHLvp1GURqdYPA@mail.gmail.com>
Message-ID: <CAHk-=wiKy45R2vMHhjr16_Q+iYea-70byuj=mHLvp1GURqdYPA@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Jakub Jelinek <jakub@redhat.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Florian Weimer <fweimer@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=D5wOQF1J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
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

On Mon, Sep 6, 2021 at 2:52 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> It is actually not that bad, stdlib.h is indeed included there because of 2
> intrinsics out of more than 5000 and when one doesn't need those, just
> #define _MM_MALLOC_H_INCLUDED

.. and on clang?

In other words, your suggestion is unworkable, and actively works
against the whole point of "use standard headers". It's a joke. And
not in a good way.

There, I think you have to undefine __STDC_HOSTED__. Maybe by using
-ffreestanding?

Except if you use -ffreestanding, you lose some very bvasic
functionality (*), so we don't do that except for very special code
(our 16-bit realmode code does it, for example, and some very
low-level library implementations).

Just face the facts. Those header files weren't designed for the
kernel, and we've done all the special x86 FPU stuff using inline
asms.

Which is fine. But it all just proves your arguments about "you guys
have to use our header files" to be just a pipe dream, and not true.

The compiler header files may in some very limited situations be
usable. But in the general case? No.

And they should very much *not*at*all* be considered some kind of
sacred "this is the only way to do things". Because that is clearly
not true, and has *never* been true.

The usable header files are the odd special case, not the general case.

Really.

Is it really so hard to just admit that the kernel shouldn't use those
headers? When we have 30 years of experience in doing exactly that?

                  Linus

(*) iirc, with -ffreestanding gcc doesn't do all the basic memcpy()
optimizations. But I forget the exact details.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiKy45R2vMHhjr16_Q%2BiYea-70byuj%3DmHLvp1GURqdYPA%40mail.gmail.com.

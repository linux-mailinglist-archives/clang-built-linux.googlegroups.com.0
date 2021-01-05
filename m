Return-Path: <clang-built-linux+bncBAABBIHB2D7QKGQE65VZZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 399ED2EA737
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 10:25:54 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id g6sf7629267vsq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 01:25:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609838753; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOUp8xRmQ2wTTc7PTfGX9liRYZNGvJib2Vfpdad0qZhyMoVKmnRptux/IyvpWR5kRZ
         Z6RoyeWk8wdahYtdnqpsM8LLuc8BEZIL3H2WdJYiX3UTi9F4I9ql9uP3j86gkqrDEhnV
         R50iIbvduntSj0PNJhWJfxbHIuDnZBM0ww9ofYrXda9w9EjmwY/lbcoBC73NfAZgXOsW
         +sDIf4vBQlf84xYdvk+YyK1Tq1uHPH2nl1IW4ba6ri0aDYVkZQKHpiSRMXDV8jI9VoWJ
         3KwVhtF03vvHLlmx1SOhwpDRy3oA+dPBiz+H95HWbxFaRwIoPD0Q00I9vY0VwTjBu8Oc
         0RbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=C6MtHUy/Hm6WxNTSvLrVjUDeWbRXrqvRfEf0Len1KMA=;
        b=O8wIjmVYAxtpw2zdHbpB045Qg6YivQRtPjjX5MAJ5WrVMnXArqK5QtSHfWoLy4HjIE
         89UnzZlTTe8DBxxlvSE3zxbR9Ky/VpU98utoAX8xws45wydCyvM7R+eNtQatVGaKsFnN
         RmHRevCSQFgKLULZ2eSFKWVBSAHBDtdqNLh+0zwlZQ/5PkJDtszoag1jJmXHbdvJD9i8
         wr5s2Fjc9zBPo2CixCDCeWbQC1Sz7p4NOs2+Bn55ogtrdR8REfTjkTqYziFK93o5Ok/Z
         3RXuIHIPqplU173cLppwrTqecLrfapySchaPVap6HXKfEtBF9QNgHvVrAM4kyzflsj6T
         lfdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Z/71uaSm";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6MtHUy/Hm6WxNTSvLrVjUDeWbRXrqvRfEf0Len1KMA=;
        b=OHKUrA3dSkMaWr1SIR78YY3jZuq6wBnszRSyUsQyI7u+NvjrBWRwUoLZutOnnCzvGj
         BPFGiflcY52K3MlRRU7RhOeqvM9PcR1PN+v4S+I/1FrXcTwj3FxPayxSSlxm7Flqs8Nf
         lrMHOKKzYP3BS+WVMTi9InoqwnnDpM3ZK94gBKvHtEA1y9oz6fMA3anyw2Ap+DhV+vBy
         zHDS3KQcew56ze0ShHMmtKm75r40jC3TgCl7ut5ZQBPQAn+fv02SR3KSjd9aikT+yjPN
         j6YGAo0hXPqgYfK6QKog2soyN83wEzkJKr682hOJD6VMHuCVNUeGlWztTHZac/xnBu4U
         jGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6MtHUy/Hm6WxNTSvLrVjUDeWbRXrqvRfEf0Len1KMA=;
        b=Z/qxZAQZk5AsRSZv7yy0fCek18PUq5Vzs7clg2ocNcIRd06ttWo1liwPG/AkUkvSHr
         TRckz3FC1H83AGfkg9nsBAo7ziMAN4fahpZmq6siNmx06u+LvXY3KfXqzU0iC9Xk1r1O
         bTan4iJgjvwg3cxW/UEfzFcMa1dvzLPgBFdTjqsY0Ao5NY5DInsYp05nMfE22OJXvKzD
         p21NRtgg7f9SHN2f0L69Strwfa2Vo4EPDshiH260+2IlsMsm2V8N39BAsg+mNCrChgzG
         kjklNafMeh/BSL/TINd8HScs5u3b0szT2RnARbCx+JFji4BYKV0gOAWRjxwdhX7tvVHW
         p3Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xTdCQmDSdJz8vjZFUd94jgsJgySo5MrzVATRe4YzrqjMbTE0h
	DVhvh2FhzfvUGiysUjYrrrk=
X-Google-Smtp-Source: ABdhPJyrIMmiYKULfhoMXOhOl+rYgIuHwrjqgfhOx7ZTzflnP3cRJ4WTCEzU+z1jMwQIw/hBYn2rLw==
X-Received: by 2002:a9f:356b:: with SMTP id o98mr47830259uao.40.1609838752951;
        Tue, 05 Jan 2021 01:25:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7485:: with SMTP id n5ls5727287uap.6.gmail; Tue, 05 Jan
 2021 01:25:52 -0800 (PST)
X-Received: by 2002:ab0:1d95:: with SMTP id l21mr44046611uak.138.1609838752582;
        Tue, 05 Jan 2021 01:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609838752; cv=none;
        d=google.com; s=arc-20160816;
        b=Hmi4mmfLw/IV/8i1P1ySEEvXQs7TErYz+NHPTQVXW7nZKSy4943ybjbJGnl0iws4zT
         Gon5+qERjly6be0u8gWK0cAxiEuaNX8j2IHIEiY/1+E5O43Ais+YFf4Z+nbWma25lJck
         hGMbIdjXKSmBfz5r1d4hPVwL/O0XOwprf4rXRk1dJBQpdEMfpunGnT6gz5tkV25r0OdV
         bG7e8g3j7LvhpmOKvk6dzUlpn1B+Se6/hJlWupOv4ti7MnHT6M/MTeoi68wW6cXSqXQg
         3O0b3yGNKM3/WpmobWjzkzRbVVakwy0kQai5qmCIkUbBE2WtWePoU/MOmX/7BbD2mHoQ
         WJtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HkAC+sQU2caKDXYpVORe5giEwVf8AvsRrkNW4cn2Lo0=;
        b=p8R1VVO+l4uQT7D8V0yzAE1BkcyUFO0x5k5CRp1mSdQTpwyMmYwXWfhHghc6196qqC
         tTnEFrUHI/2bmiLHQsERgzmvb50udvQlQH5So8seDvNoYAR60kvO6Ffh92SG8EPSJHTF
         y2U3C4GwnK2gOKZTLsJMTLgMm4StXdqwgy2fPBCykiaACagGG9rHiF9TiEmTL0RKZ1xU
         FeySfdPG+ThD8l4T2szfp5RVClymxFNzRABsdpn+Dp+zjGX9JFnaxizJbahmdTBDOlwc
         SdRRS8oLvWNPSDgFbz8zH1KUh990Q+SWbWMAj1XODoLbtowGsIJFume2PWgb1moeT6os
         f9FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Z/71uaSm";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g3si4011007vkl.1.2021.01.05.01.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 01:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1055C225AC
	for <clang-built-linux@googlegroups.com>; Tue,  5 Jan 2021 09:25:51 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id 9so35340688oiq.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 01:25:51 -0800 (PST)
X-Received: by 2002:aca:e103:: with SMTP id y3mr1948395oig.11.1609838750247;
 Tue, 05 Jan 2021 01:25:50 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86>
In-Reply-To: <20210104223336.GA2562866@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 5 Jan 2021 10:25:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
Message-ID: <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Z/71uaSm";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jan 4, 2021 at 11:33 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> > On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Building ubsan kernels even for compile-testing introduced these
> > > warnings in my randconfig environment:
> > >
> > > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > > static void blake2b_compress(struct blake2b_state *S,
> > > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> > >
> > > Further testing showed that this is caused by
> > > -fsanitize=unsigned-integer-overflow.
> > >
> > > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > > architectures, so better ensure this never happens by making this
> > > option gcc-only.
>
> This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
> sent a patch for [1], along with a couple of other issues I see such as:

I'm fairly sure I still saw that BUILD_BUG() even after I had applied this
patch, I would guess that one just depends on inlining decisions that
are influenced by all kinds of compiler options including
-fsanitize=unsigned-integer-overflow, so it becomes less likely.

I'll revert my other patch in the randconfig tree to see if it comes back.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3J1HGia3cPy%2BArFQGzQWj1gy8bx7DdjnRFE%3D1%2BJmsrKw%40mail.gmail.com.

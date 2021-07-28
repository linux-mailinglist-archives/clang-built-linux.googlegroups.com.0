Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS7OQKEAMGQEKATXYVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B03D859C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:47:56 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id q3-20020a056e0220e3b029020d99b97ad3sf659237ilv.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:47:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627436875; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahfnN24i/x+4tMwp2pNC+tCl0d1ps52jY8wQ/19WYrs1uRx07rWFFBDpPy6gxZDvcZ
         6MltmdK5bv2GZVJzQf8stc+14hxsZSIGk9M8FXE7OlTjBHmU2EX/ms6DKSM0Z/VEyJun
         ssRrVLNFWcJTHsiAtKLjTfSyw6+z8/wNAuCwWp2KNPfX4z+mJhk4WN3A5Et7NLXKB96A
         /dazHjXAMp1KYFn+YY+e6AlCnsy4Is92wGOCINxS4q9ZjkOKJ6hyxGJw6y6B3Nc80Ptv
         UL3GfFTvJNCgLGajh5gbVpYe3Auwu7GaQpbW+mtJCjkABJh+WkATh+VcT/oR6hQjDQR5
         hZmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dVh0OgJgpIr45lqsgObFTlLEqyv6fX6NYfnBi25u4nc=;
        b=yiLy5/NR+A72x7BpEcJHHLHh82cH9m95iSK5V+f8AwC5yv/eKHCW51L6vAtXo2yw/T
         TsgMyOz8FOgRZ7fdIQ7pjjaaHuZDNu7JCtSFxJUJAgWYS45kDvAQoS8irpHclMZZZHzB
         faUchXQjrJsvW9RQ/mJZTCu1H8KnLTumLlUrv/G4UPHGlTnrPQ2iZRhPWFx9w0DBp7Kf
         MQ/P3DTx1chiwJOnZv+0kD7C3e5GFI7QOU6PYdhOKyyAahHgLQmOo9pGF/HBAu8KlNJ9
         Avxttug68hTVONNx1e+qEJR94MhdMB7k1yHD5YSXPbYzRW5bV0ciiPmUmBcNwczy4fkC
         hHkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ULjzXag2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVh0OgJgpIr45lqsgObFTlLEqyv6fX6NYfnBi25u4nc=;
        b=iz0IuwCnTDm4Y53gkVgNCIkNHwpMqt81lvl34X1ScdeL97YkjEun1MQB8lB+ed19v/
         vYzFGC9mMzLznJiH/aFYaFBRywMeNsNpBGb7qGbHXWZufqOweIdGE8fPvPB7O9emOxBb
         Q5VXA2scwUeAMK0r3LAMHCpmkJjx7ZsSp4AkWsfQCcEvAcdtRg3xMelZWWXR3LujGs1L
         QZvX4meVg8IlKSTJ0ihSNzjXIJuY3ClcY8BeB7XG3FfVM5ta8IsggpRnui4ofD8LRPc2
         fT77JykHc+pTCtpXXDZ3zzhTPuhv+CylSKwK6aj4/42lNvr5wV9GqHe7ASAxgJ/nQkeC
         0PVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dVh0OgJgpIr45lqsgObFTlLEqyv6fX6NYfnBi25u4nc=;
        b=say5qzuLxfba3xXJ78UQPvSZONvTAyz8k19abS7aYXU35qhjgcCxrsN8D7hEbUXxPH
         q/8aaOFLotjFmaR0UO/snGeriN+O8It2x9mnJrPSO30nq8/S7aUfiLsF61+XtcZcT7Rr
         QlluZoYDhfRcEQhlo0+rREm5GKKE4P8rKdPvmjNWLwxXELLZqxhD84CPQ4OOwdZMa+a/
         XMmgn0kUYI9Iu2M5l+IExHmEVCiHpYrKgbk0FRFoNYAH78Qk/tDEwoIDVbWWbHohCd1Q
         0ZbxmzBz2jddH3QfOQiOmMjAnzS8m/sH/DR6xTMs0xfL8ynWTemMBc87gYDA/MgecBAv
         r0TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MftMbupNVHM+sPIR8fP/cNr0t2EG0sY3dUbvI1/ufZlG5jOSo
	S6lLZXOugc/LGL5jyqCUaoM=
X-Google-Smtp-Source: ABdhPJxXGnwNxSNixcqBg/Wx/eRAZAi0E0b8/pf09jZhkLkuwgHbW+33wXgpwHTSg/ctj9A2oTY25w==
X-Received: by 2002:a05:6602:134b:: with SMTP id i11mr11812088iov.81.1627436875184;
        Tue, 27 Jul 2021 18:47:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1608:: with SMTP id t8ls150184ilu.2.gmail; Tue, 27
 Jul 2021 18:47:54 -0700 (PDT)
X-Received: by 2002:a92:d441:: with SMTP id r1mr18627596ilm.106.1627436874822;
        Tue, 27 Jul 2021 18:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627436874; cv=none;
        d=google.com; s=arc-20160816;
        b=rw0NSDXtDWifxy2/S4kqLDyie1lPDFCpq+asGEjd+YC8aD6DtPc4iDKa73e8/sZsBn
         KZD6GndaNx9w0AloWfLeT4eWdCi4X1Fj5fxDoif73Lii/Kj+p1Q8aD08miOvhLQkgDxr
         OPr074T+koCks2W4DJGjDXGGiXc86I+2M31qFfzXwsdlnT4PHxFqD0nooGRnEUZyj6Yd
         6ZiZZ0CfK07n7ehrKApymSdlgG4AsH9Lt0COmIygGuPilLW2c5P++UV/YzNWM44aMZeE
         GJ2bwjMIza+NZMIEuavtB7HXNrh3fvZQobnKmEnTaO1OBiyYqnEYJt0Nyw6NSvcRi+aw
         PUyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b56RRYUTS03XICd8fA2qtUp0AUHb/enzxmkYpgfS6mQ=;
        b=O1cm3vHj+O5XUl66W0IMSGbaGJJ4uuv6JGamSlaNClBUVhckjsqgVnPB4YF3TDYB/P
         gz+pq9/MMxZQ5Ba3ox7BmJNG4zLnWmvDVgR2BlQRZGsv+3Ba3EuvNFeVdkG32pgkt3gK
         I5bm803Ky7+OHu0LwV5ak2FdaIhjssDVoSiPTx1eN2Ifeooj802S3aX8ryXfVRCwat3Q
         C77A30z3Jf9PSI9Nt94YZTP5Xk28KsBVBtHoMI9kox4y6606zffXTykKclyYtwxxnE8E
         RBZkWDzDIWs3yjEaoT6aInbUz9NxbBHHgpWA7Z/wYXn9TtSIW/4UtrP4PhCNLK/YwHB7
         PzYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ULjzXag2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id q5si330650iof.0.2021.07.27.18.47.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 18:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so7608629pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 18:47:54 -0700 (PDT)
X-Received: by 2002:a17:90a:8c8a:: with SMTP id b10mr15819262pjo.23.1627436874109;
        Tue, 27 Jul 2021 18:47:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 30sm5933732pgq.31.2021.07.27.18.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 18:47:53 -0700 (PDT)
Date: Tue, 27 Jul 2021 18:47:52 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 34/64] fortify: Detect struct member overflows in
 memcpy() at compile-time
Message-ID: <202107271830.3DB03F3CF@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-35-keescook@chromium.org>
 <CAKwvOdknit8DtWaFvLupmNEebjbwVa6R3xiGc2D4AqB_6+i52g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdknit8DtWaFvLupmNEebjbwVa6R3xiGc2D4AqB_6+i52g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ULjzXag2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jul 27, 2021 at 03:43:27PM -0700, Nick Desaulniers wrote:
> On Tue, Jul 27, 2021 at 2:17 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > To accelerate the review of potential run-time false positives, it's
> > also worth noting that it is possible to partially automate checking
> > by examining memcpy() buffer argument fields to see if they have
> > a neighboring. It is reasonable to expect that the vast majority of
> 
> a neighboring...field?

Whoops, sorry, this should say "array member". I've fixed this to read:

  To accelerate the review of potential run-time false positives, it's
  also worth noting that it is possible to partially automate checking
  by examining the memcpy() buffer argument to check for the destination
  struct member having a neighboring array member. It is reasonable to
  expect that the vast majority of run-time false positives would look like
  the already evaluated and fixed compile-time false positives, where the
  most common pattern is neighboring arrays. (And, FWIW, several of the
  compile-time fixes were actual bugs.)

> > diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> > index 7e67d02764db..5e79e626172b 100644
> > --- a/include/linux/fortify-string.h
> > +++ b/include/linux/fortify-string.h
> > @@ -2,13 +2,17 @@
> >  #ifndef _LINUX_FORTIFY_STRING_H_
> >  #define _LINUX_FORTIFY_STRING_H_
> >
> > +#include <linux/bug.h>
> 
> What are you using from linux/bug.h here?

Thanks; yes, that should have been added in patch 64, when the WARN_ONCE()
use is introduced:
https://lore.kernel.org/lkml/20210727205855.411487-65-keescook@chromium.org/

> > [...]
> > +#define __fortify_memcpy_chk(p, q, size, p_size, q_size,               \
> > +                            p_size_field, q_size_field, op) ({         \
> > +       size_t __fortify_size = (size_t)(size);                         \
> > +       fortify_memcpy_chk(__fortify_size, p_size, q_size,              \
> > +                          p_size_field, q_size_field, #op);            \
> > +       __underlying_##op(p, q, __fortify_size);                        \
> > +})
> > +
> > +/*
> > + * __builtin_object_size() must be captured here to avoid evaluating argument
> > + * side-effects further into the macro layers.
> > + */
> > +#define memcpy(p, q, s)  __fortify_memcpy_chk(p, q, s,                 \
> > +               __builtin_object_size(p, 0), __builtin_object_size(q, 0), \
> > +               __builtin_object_size(p, 1), __builtin_object_size(q, 1), \
> > +               memcpy)
> 
> Are there other macro expansion sites for `__fortify_memcpy_chk`,
> perhaps later in this series? I don't understand why `memcpy` is
> passed as `func` to `fortify_panic()` rather than continuing to use
> `__func__`?

Yes, memmove() follows exactly the same pattern. Rather than refactoring
the declaration in that patch, this felt cleaner.
https://lore.kernel.org/lkml/20210727205855.411487-36-keescook@chromium.org/

> > [...]
> >   * @count: The number of bytes to copy
> >   * @pad: Character to use for padding if space is left in destination.
> >   */
> > -static inline void memcpy_and_pad(void *dest, size_t dest_len,
> > -                                 const void *src, size_t count, int pad)
> > +static __always_inline void memcpy_and_pad(void *dest, size_t dest_len,
> > +                                          const void *src, size_t count,
> > +                                          int pad)
> 
> Why __always_inline here?

Without it, we run the risk of it being made out of line, and
potentially losing access to the __builtin_object_size() checking of
arguments. Though given some of the Clang bugs, it's possible this needs
to be strictly converted into a macro.

> > [...]
> >  #ifdef CONFIG_FORTIFY_SOURCE
> > +/* These are placeholders for fortify compile-time warnings. */
> > +void __read_overflow2_field(void) { }
> > +EXPORT_SYMBOL(__read_overflow2_field);
> > +void __write_overflow_field(void) { }
> > +EXPORT_SYMBOL(__write_overflow_field);
> > +
> 
> Don't we rely on these being undefined for Clang to produce a linkage
> failure (until https://reviews.llvm.org/D106030 has landed)?  By
> providing a symbol definition we can link against, I don't think
> __compiletime_{warning|error} will warn at all with Clang?

This was intentional because I explicitly do not want to break the build
for new warnings, and there is no way currently for Clang to _warn_
(rather than fail to link). This could be adjusted to break only Clang's
builds, but at this point, it seemed best.

> > [...]
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#define TEST   \
> > +       memcpy(instance.buf, large, sizeof(instance.buf) + 1)
> > +
> > +#include "test_fortify.h"
> > --
> 
> I haven't read the whole series yet, but I assume test_fortify.h was
> provided earlier in the series?

Yup, it's part of the compile-time tests in patch 32:
https://lore.kernel.org/lkml/20210727205855.411487-33-keescook@chromium.org/

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107271830.3DB03F3CF%40keescook.

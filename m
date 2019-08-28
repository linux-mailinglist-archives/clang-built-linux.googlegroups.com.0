Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK44TTVQKGQETPQ4E7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEBA0E37
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 01:28:44 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id l14sf1689023qke.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567034923; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDUU+Fz65XboeP3xEB7+3jmzox1iZQR/5xH0oz3hTZkhlYWTgJkwKeze3dpMBx681O
         a1GjKVh+iM4usuTj65iomhiWpaQHwieIt4HfT232whuC8CLB96MZBvwG7AYhnyt1M4gB
         qruDMOSwXWsMDUXJXrdWpN++dn7yuJ+xU+tky+WnDBtnaTNF+cRFZir/5+cx12TF3hqp
         yLa4jQusBrQpDi7kFiDV0IUWGtDePWGZz9xFsAFgQvQKoUyxRp5kbvggK6dCkkxjDFva
         /tV3uoss66CC159fxuJgqeeFPbMtQyEc9vTIc4R3ZNTYzIKlRbVMrQR0EbqsRjsRvgMZ
         dp1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FXE9jQ53sCZ2u5DLRP/tU7y1xLXN/UAqNardA/oVlgw=;
        b=BxAm2HcYVMhuj6K9r4tYdB/w9UzcdzQbGRsIKOtq7/l8Xvf8pMngK7/oCfiP+NZI5z
         6qzoP/wiMln8e6JU4LLtcg0K93uwpHUweTmA2OBhD91B8s8H2BGGFgwG7MNKZ6ByeTNO
         pTCLpMINAbUIn17dyMBm1QuFi+pQKfCslqIFM49HWViEwUYXbWOx+nRs/DMzb3AUqO/W
         MdcoiAWw028CzcgKZMDgIK5PqIqU/Ojsgpp33IeosMX+puJsXSy24rZi4sSbgDMsjZw2
         OIBbWYoJzVE8DgTxChUcePow4nhnJB+WC+N9WoK9gWgM6eHFW7lbQ3ZZML4XKXDBcsmF
         VvjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XMtLwACj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FXE9jQ53sCZ2u5DLRP/tU7y1xLXN/UAqNardA/oVlgw=;
        b=jZEroY5bTAYqqMbsf9iI5T+YId4BRfKRZs3/+y2mTUmCrpwB61CVUhaEwNOGlr+6uF
         t5SEaXUUjW+2uzyr4hbOwzPAClH+FJ51R2AcasT7xNgNlYdArkTv6xQs/D0fBoz6+Ogn
         V4Quq/rsQIaOvXE0JOC8E8BtCrmGVhX5EztLj5c7rqyP7BsSA3VKMMwy/M1snV5uog66
         xfwa/a2mQWcD+SA2nsLeLmMvXUVxGW2RSLVKjQrcRaLdbh155OqZbA70bGiztB/PxHMi
         7fNrXM1BKrhc7+njXSVRvydovAypGv35eikiH07jgoB6kCCmxptOuIgbhLzKOsxQiTdm
         e/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FXE9jQ53sCZ2u5DLRP/tU7y1xLXN/UAqNardA/oVlgw=;
        b=NoSWrsEwL1s0ntiIXpkeBM5ArDb+u3jbEO2Kx1dv+sv4ysihKSKbkm4/LnWx2LSWnR
         8ELBwIzDxrXxAcW44NmF3Q+Uxqqgds16UXP4qDqxoVNJWLw0tRiFAHaywoH+Rml31EgV
         LJEWJwbhbsJn+HWXdTWTdbYE9JAHvJU2aqAS9W78CMjAKrO6pMWGsCj1EBh81PjB8/Yq
         Sq84T76rBP9e0iw/5rnfAd7V9rbfLiKr8fOi7Eq5x020tutAIkxAUSftfiUUorpLvm0O
         TG8wo9SYO7VmCgkwCq/8UvGQ0Tg0FUVFJ4xMT8PomRFaNUFJk6QY9oUeDZrX4oD5qBfp
         8VRA==
X-Gm-Message-State: APjAAAXhucLPhtXrbxaqthGqYRELKs2jXs+MS/63r25PGPacqp8vuEGs
	E4ARkRraVad4KS2+9Kmx0qc=
X-Google-Smtp-Source: APXvYqwQhBagUUj2S/moNEr6GyplS/bAOpWZIm2t26axUsaf2dtWXyIkxyu5ejGmOuCx2tfDzv4pJg==
X-Received: by 2002:ac8:45ca:: with SMTP id e10mr7160633qto.15.1567034923451;
        Wed, 28 Aug 2019 16:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:670e:: with SMTP id e14ls164639qtp.5.gmail; Wed, 28 Aug
 2019 16:28:43 -0700 (PDT)
X-Received: by 2002:ac8:4803:: with SMTP id g3mr7137678qtq.226.1567034923255;
        Wed, 28 Aug 2019 16:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567034923; cv=none;
        d=google.com; s=arc-20160816;
        b=EOXIOBv8+fJEzq9v1rmqh87yOo1JMMs38pIrM2G3c1BJq8Sz+P83z7hYub0iIB3ZtU
         9WxypwUqxUPoRNhnWsJWYclfCNS9QxE/3FInfiv6lcCcAWIaxvC6DcwZelLHD/D1ixiA
         lL5tQ+yrdq+ecbf92TNqZlMIL5/oLWPC8k+ZEGQC6ZqD/tfR7SeqTwxvS8UrMmaAPzsG
         b2Ruwu/PdD42FcwpFvZ/QEJPxEXUff20MrzDyAikJ9A8TysNwR3UBlIo/QM87Q/yy3es
         iazQVgJliYUr0509aS9A4TuC70PIyDQVMCqCLdxZeKnL7dl8gzpNEDUTx4DVC2rcYmEL
         h79g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+XyfWMjZjslCIkbHpIEJO6yFk4GM8tJmlHzY8WN3VpE=;
        b=CYl/8eWnSee0whRjldB/E5tzzw1UIE8n6YK9y4C2Ra6Y599HR/l7WnccyK1OWJUsjU
         NKixd/iDZozauIsFATg1oI35tkng6lp3VTR9KKxfDtU6lpH8ecyPX7TlazRkiW4Yr+1G
         mnjKlGQRu8A/GOtD9n4vmYqcXqVMexRwTYVwWKEySPbUoh7aGUseKqFbSODwwv/ROrYz
         gk/H6WXECalGTMfNqBX9zLTpbY2irbo7eZ+izBnOmfCdpDGUaYYmb9WHXNRQ1PCPr4nB
         OljM0h+V1KIab2UDfXYdMMF3rjc159Lj3tLgtO6RX47h/RDf7RJcbZmFDPBXz5HObyZs
         CHxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XMtLwACj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 37si48859qtv.2.2019.08.28.16.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 16:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id d1so532238pgp.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 16:28:43 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr5724062pgb.263.1567034921605;
 Wed, 28 Aug 2019 16:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com> <20190828182017.GB127646@archlinux-threadripper>
In-Reply-To: <20190828182017.GB127646@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 16:28:30 -0700
Message-ID: <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Sven Schnelle <svens@stackframe.org>, 
	Xiaozhou Liu <liuxiaozhou@bytedance.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XMtLwACj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Aug 28, 2019 at 11:20 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 02:54:25PM +0900, Masahiro Yamada wrote:
> > GCC and Clang have different policy for -Wunused-function; GCC does not
> > warn unused static inline functions at all whereas Clang does if they
> > are defined in source files instead of included headers although it has
> > been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> > warning for unused static inline functions").
> >
> > We often miss to delete unused functions where 'static inline' is used
> > in *.c files since there is no tool to detect them. Unused code remains
> > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > core: remove unused rdev_get_supply()").
> >
> > Let's remove __maybe_unused from the inline macro to allow Clang to
> > start finding unused static inline functions. For now, we do this only
> > for W=1 build since it is not a good idea to sprinkle warnings for the
> > normal build.
> >
> > My initial attempt was to add -Wno-unused-function for no W=1 build
> > (https://lore.kernel.org/patchwork/patch/1120594/)
> >
> > Nathan Chancellor pointed out that would weaken Clang's checks since
> > we would no longer get -Wunused-function without W=1. It is true GCC
> > would detect unused static non-inline functions, but it would weaken
> > Clang as a standalone compiler at least.

Got it. No problem.

> >
> > Here is a counter implementation. The current problem is, W=... only
> > controls compiler flags, which are globally effective. There is no way
> > to narrow the scope to only 'static inline' functions.
> >
> > This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> > When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> > the 'inline' macro.
> >
> > This makes the code a bit uglier, so personally I do not want to carry
> > this forever. If we can manage to fix most of the warnings, we can
> > drop this entirely, then enable -Wunused-function all the time.

How many warnings?

> >
> > If you contribute to code clean-up, please run "make CC=clang W=1"
> > and check -Wunused-function warnings. You will find lots of unused
> > functions.
> >
> > Some of them are false-positives because the call-sites are disabled
> > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > unused-function warnings because it is intended to be a hint for the
> > compiler optimization. I prefer #ifdef around the definition, or
> > __maybe_unused if #ifdef would make the code too ugly.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> I can still see warnings from static unused functions and with W=1, I
> see plenty more. I agree that this is uglier because of the
> __inline_maybe_unused but I think this is better for regular developers.
> I will try to work on these unused-function warnings!

How many are we talking here?

>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>

This is getting kind of messy.  I was more ok when the goal seemed to
be simplifying the definition of `inline`, but this is worse IMO.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dr5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw%40mail.gmail.com.

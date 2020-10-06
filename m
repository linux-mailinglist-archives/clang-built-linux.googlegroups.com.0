Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTEQ6D5QKGQEZOMNPHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3162845BD
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 08:01:49 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id j207sf5262249pfd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 23:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601964108; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0F9SVsSU9Qv1ZHYElxRIzfKay4QVj8uyPJ8o5bqcA8QV4oTti0bgHsJdcEzvEviKD
         YwMdmZOT/HWn6LMfE/+oyM6mipj0AnlxFTinCXnlCZfMjnmZ+Qzz2dTzknlTBGJcCBeM
         vYBAHsU+sKJKXjHD4uMtKcu38BS+eyTCw5edXvXEL4x8ZMuwOWHoTT9LecVZbLXTWi8m
         EPHooZET5g1xgzCTEbnOK2/JovdRiUprkeox+Y9oDIXBgFx1LNiy0+gGzZf1yKWk1D5d
         KITXB+buW0uMdUpHq0TAG5TQ5b2tTxu67yZ8/uAVshRQBoc3KFgECKgzBGPWrN7efZ1H
         weBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RidWx2BBpvY0nxDSQeNTJ34liC2zDVJdSsq7vfJo6uc=;
        b=sy6DO70A+r3z9E/4POVHmz87S8kDwdzeFGCj6Uq4E12JNDZRXZriCNbeGGCbZg1VXj
         +Hp3amtwgiJzsWOSsZjPt4o3DEwtRnHajQiy0QuEAT3JeIWW6ZhxQsgFQfrnGMhdFjhl
         8V9XCi0gc902hUcpRyq8+fGFKDycNVfEjEn0ZSo+ZwYEiFfAhajT6rRiUsYzKE2UXxM9
         tp0DHeqnpN8ZKwcxeSTPoh/XpU0+CB1yQb2+Ln/3QhBnxCm9IPYAB4M0vT8P5rhscdo6
         GUh27P9Iw2FXCBqU/asyRklPTI/JeMRo13sYOg0JI1HlkQGyCWlIURMdG+ZOlXzc4kOm
         E0pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i7jY2Ub8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RidWx2BBpvY0nxDSQeNTJ34liC2zDVJdSsq7vfJo6uc=;
        b=OvN9xhE86/3jUWKAyfGKrXgnGfBxNyaiTohM/KMX33JpAECPXELTPYaeaUyjq9Jb9o
         6ka36F9UlBpg20eu6yp2ybw7lkaH3l4Y2IWidQsZZkOETdcSz4EBDu1dOhSfsb3XEtwi
         kSfk2elt9CNo8DhpGIVA4EfB2mk2Qc6GDvLXo0aFhK51zosErKn5YHNgUai917KKUYoU
         MhOd9er5kT7m+pem18TjP/0aXti/vS1FU1VEoRaIIUc54yb2uOjBF2pGQkMCtRx+eJt0
         l6rAkq4LXtTR4zIl0kU6m38eYP/29GC5CJT2OtjoMJv2mBZxFnuBkbe5DG02Zwnr9gOf
         TvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RidWx2BBpvY0nxDSQeNTJ34liC2zDVJdSsq7vfJo6uc=;
        b=p2uZZJBhmG6kHGhZQ39SC+AJBav8ZSCSKa6s1wuus08len0wNSa+BrzwYYlbkNK79L
         aWFOqE3aFpx8C03XmbrAMWVXof7rcbJkaO/hGTwDPoEM4lOUGTJAbGmdDvgqFJwtWCth
         Y+gcsGIEZyc0Aco6Zn5A0T11+OKhCq2d9pATtM2blYlPnmpkELsCJJRjj6YRHXV9Yvri
         hONZtS5Xax40lZrL7owUxI6TvC+KNacu7dCv7uj96AYhbLP+XyF9KV1Tb4trKFlQcGbL
         7O1fl7kEoAzO1hcJRsq0gwUWhbkTHFnwIjQ81LdUE6+h5Nr8bK0qkXTfMafBsx0YxPNR
         +4NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RpvVPWmrtAZcY7mDvqRY6kIZAmGHOoEuDpTlIrQsyhVrMwd0W
	/52RnIOraxA1iw7Ba94AltM=
X-Google-Smtp-Source: ABdhPJy01Sef0r/8Q6jhUOdOhLCKCJcAIVUpa/WH4huildaBhQwPoOjjo4maiwaKP1V4WOWT1/w/RQ==
X-Received: by 2002:a17:90a:be11:: with SMTP id a17mr2746225pjs.181.1601964108451;
        Mon, 05 Oct 2020 23:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls4437477pgi.11.gmail; Mon, 05
 Oct 2020 23:01:47 -0700 (PDT)
X-Received: by 2002:a63:f104:: with SMTP id f4mr2762128pgi.365.1601964107882;
        Mon, 05 Oct 2020 23:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601964107; cv=none;
        d=google.com; s=arc-20160816;
        b=F+SZ9qOmO/zpO2orwrckTvIzJxgkn7mLYq4jwpfD8jdV6EdoJAGOdEh/YtxKk4oYwi
         989k2H4pMFYYuD1iYDaW2KhC4PaMm5wfPJlXI2tW0o+hat9NY9oXMwIPOT3rdk+s5KP6
         V0IGoqYK+bYnUk1hq1aMIykO163j6k9tpc8cbhX8lRAd972VA0IQAH0EtdK/S9N4lDip
         vLqHGkskNWXyk1rNc0/80BDMZh1noSqR8WOnI0Qycr5+jSONdtrHJP9mlg8tifp/LxjK
         Xwy3v99SK2wc9p30BaHXoZF1XZ2VSuebY7yuQNOiKBaOUrqEcKGbsdXgDnlz8u9SjNQU
         rDzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BXyFah0M1LT/tl5rtZLB+bxtBhQm6vlhUicSg4mgrDQ=;
        b=ogAgnVhRsc0AHkA/fqxG4aNj7AGS1J5vnptShmLgVFxIBbE9JCKUjHJlceyQuLcNQQ
         W8nRSJ0kVIlrSvjYBQF9TmHzwoEbjsB0xfJTnmp80qBjd3NWHW+6ySluGR6xgp7pO7Fm
         PqbhDEzZWbyp+KwfpzFesoSwCzwDJMPN9XfQun1+C3SCWLMyiUYgLqP6/kDZE49wX+0e
         SE6dyKO+5WXhxRkoYo9uhNcZXPLqSKVn8EYjT+Jf5WUb2tmuC32ogEC+fGMcKt6V6jO8
         5nXnDgWo1Zf+NoykFJw2HyioQVxWYhrPLsmW18IPUCVAHx+UCYY5sjSP4MdCOZ1PqkqG
         IJuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i7jY2Ub8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id m62si221847pgm.2.2020.10.05.23.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 23:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id az3so1033299pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 23:01:47 -0700 (PDT)
X-Received: by 2002:a17:902:9008:b029:d3:b4d2:9a2 with SMTP id a8-20020a1709029008b02900d3b4d209a2mr1824586plp.15.1601964107582;
        Mon, 05 Oct 2020 23:01:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h2sm2060779pfk.90.2020.10.05.23.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 23:01:45 -0700 (PDT)
Date: Mon, 5 Oct 2020 23:01:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] ubsan: Move cc-option tests into Kconfig
Message-ID: <202010052258.96765BC83@keescook>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-2-keescook@chromium.org>
 <20201004070847.GA1650@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201004070847.GA1650@Ryzen-9-3900X.localdomain>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=i7jY2Ub8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Sun, Oct 04, 2020 at 12:08:47AM -0700, Nathan Chancellor wrote:
> On Fri, Oct 02, 2020 at 03:15:24PM -0700, Kees Cook wrote:
> > Instead of doing if/endif blocks with cc-option calls in the UBSAN
> > Makefile, move all the tests into Kconfig and use the Makefile to
> > collect the results.
> > 
> > Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
> 
> I tested menuconfig to make sure all the flags when CONFIG_UBSAN_MISC is
> flipped.
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Awesome, thank you!

> One comment below.
> 
> > [...]
> > diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> > index 9716dab06bc7..72862da47baf 100644
> > --- a/scripts/Makefile.ubsan
> > +++ b/scripts/Makefile.ubsan
> > @@ -1,37 +1,21 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  
> > -export CFLAGS_UBSAN :=
> > +# -fsanitize=* options makes GCC less smart than usual and
> > +# increases the number of 'maybe-uninitialized' false-positives.
> > +ubsan-cflags-$(CONFIG_UBSAN) += $(call cc-disable-warning, maybe-uninitialized)
> 
> Is this just to force -Wno-maybe-uninitialized even when W=2?
> -Wmaybe-uninitialized is already disabled globally after
> commit 78a5255ffb6a ("Stop the ad-hoc games with
> -Wno-maybe-initialized"). I feel like it might be worth a comment in
> case that changes in the future but maybe that is a bit much.
> 
> > [...]
> > -      # -fsanitize=* options makes GCC less smart than usual and
> > -      # increase number of 'maybe-uninitialized false-positives
> > -      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)

It's just a direct copying of the existing logic, but into the new
"ubsan-cflags-y" style. But yes, AFAICT, that was the intent when it was
added in commit a76bcf557ef4 ("Kbuild: enable -Wmaybe-uninitialized
warning for "make W=1"").

So for this patch, I kept the logic as it was.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010052258.96765BC83%40keescook.

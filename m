Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWVQVP7AKGQEZ5KS4AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FBB2CF816
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 01:46:20 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id l7sf4539592pgq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 16:46:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607129179; cv=pass;
        d=google.com; s=arc-20160816;
        b=DK24oB/FD1oEf1JfAzt65UEv5elBD6B/vzdqOh/O2/Yxsb33RchsgFuqVL9f4v7Lzw
         iyWVN8phDHn+5Bgzjth0b6jLch9SlkvVB+xPXnWS9byV0qOGmrt1WkJYX05FxeFk966B
         yW3ht6FqvVP528lwZw5AeqSrZx4jfEnalvovqWThOTqLQkjoUhzC7TaoD53Mj+R319TH
         /EC5N3nIplkJ6A509VhrQmFk9IaiJns9mgvZwXtKJa18+a4eqx0DeaGQBGIz9xlLDbMi
         sIMoLggXARYG+hfu0SPeF54SI4/OAp6KhbyV2BfX1TplTPsejNxV1bb5rP/rEc+0gsRU
         qxXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dQS6sXTgXtHpJnuMoKqGKlRYmZ5hdDlES6WLscoU9Ic=;
        b=nbjxd5U4yDaEagkL7SmYRB+4L8txhLMIsfEbklMs0Eu8Eg9XFQQukM5U6bYzHr0oNv
         4sKNKH6Dek9y+Mx18/YYLGVtUG57eWrkGhWQ7Ad9ebvoCfMbl2VvayOFz75ynZJGhQ7c
         bgRidncd52qdu0uW8HCnwcxCHAb8zoqXNILQAInNNTv03Tj73sLYZ5hvkT17gxHGqQxJ
         Gaxj2KvwCiFCBorY01QZmK/Yp2CQHpDEhCOm4AMvLfCFKWYMmL+4tWNeDrInDKQmwCLr
         leq7f22hSMLe0qmWirtAh1TrIXhKjrHRmnpw2VVwAyFTSjB51Oe8tquh/mzU4kKohOHY
         YBzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="DY8G/wum";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dQS6sXTgXtHpJnuMoKqGKlRYmZ5hdDlES6WLscoU9Ic=;
        b=ka5xXMtsy7osHobnmaztYsLl8uTanD2JiBs8TkpYyAYl2vnVZV0YmqPaGdTyyeQo6V
         XyXOFTQiiSCfD/oCKKEDIg3S+Of56Ls6KOk7bk37poNfu3SAeyx7XTZfN91bMwxINWRC
         BIePAVAVIJecQ9Y0u+uDIBoKF6P1MbV5sXAqvSoE93eIrrrT0jUiTAbt1stURvaiePh+
         kB2xv1XyF65Kz3uVGc9Qep0JYbGwGyaYCe7CdWEmGQvMSuTt+N67rmpjYbhhiW04Y3bT
         Tt9m0QtYVwJkKRliWXzrkMaWVdSyEAHdj3xlZlQUv4NSEQW8A0CB53pRDCKRBufZPLmP
         7HLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dQS6sXTgXtHpJnuMoKqGKlRYmZ5hdDlES6WLscoU9Ic=;
        b=LQQDStyjCVqHZcwjnPwNxZTmg/1gXIRNd+n4eo0DlWvM2ZOoy0qKTxzhdBhLLxwqZD
         l3jTph0cF/GGut/W4RrD8eWiX+F4pHqnwsd4dXmm6kJcIFFcSHWrq/+8wkxMRk0JvoYq
         NF6b+040LZsW2UFGPOcZTCvza+66tHerZtq9XpzpjjSht7oCI4y6Ei6AUUeDqGEVz2Xv
         lYYPne7U4Ve/kqXXMaO9yfuOJIL75Z9SHhRVhOfdCl6hCtMstEtyeO6NnWrfukXCiCN6
         qBznomHyw5c9DnDbvWRMtHLcr8O92VKaG+VxItkWlk8QwMz7s//uDc+hjujiZABgMh1O
         KnSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330ZQ2n8GIsF/rkIn/ibF8f4ZK1UcjaypJh91Q0OHvnQyRxW1tk
	jLbJ82B865Chyp3P6sFrqDc=
X-Google-Smtp-Source: ABdhPJy2NdnWYn0XHfoPYSAZp2po96QU9n3JCPjoFyaJIW5DRILT8kaO8cabRJF7RN58a5dH7Ep3Cg==
X-Received: by 2002:a17:90a:cb13:: with SMTP id z19mr6505427pjt.18.1607129179068;
        Fri, 04 Dec 2020 16:46:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8508:: with SMTP id bj8ls5049668plb.2.gmail; Fri, 04
 Dec 2020 16:46:18 -0800 (PST)
X-Received: by 2002:a17:902:900a:b029:d7:d966:1a44 with SMTP id a10-20020a170902900ab02900d7d9661a44mr6230040plp.8.1607129178480;
        Fri, 04 Dec 2020 16:46:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607129178; cv=none;
        d=google.com; s=arc-20160816;
        b=FA5xS4UScjcYAHE2EXRsxhq47ttK4HYyb+KQicZg/NMhJWY17ktWpcAST7wBgXfTYe
         VQSrx7+pVu3gBo+IwQ977i2xDnS+cCLA8zLCxaD/8aaqgtUgy2e2ZGIODBi7RGZwgpAR
         2FLGfUphRukv+NcwOgQfeFWxU3wX9V5B1JcrbZsR6NcLt6Pl9hiyrqiYppB9u94umOfE
         Lu4gJB7V2CoWCIVA1AWZ3pam4nfdWe5k1U+4P5J8aKiJWpRVVaMouhfugvhKhSSA/EU7
         n/Vdh5oY7uOE7/WaqrBt0lYRhwIY8MiR4gn2aB+mq5SypQ9Oiad8Q/O+xIhsyX457z2S
         jdSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=asXm/R3o12OEmZ60Ws/uh356OUWd4t72k3bkv592RHE=;
        b=JUD/EUdMspi3o7+jIYLe/1L/YpI6YkmRdYjwfs2ecKlE5CxdXHdVKM+R7qsamJg758
         /ze2hJ/n3zoqMn4ZuJLVi+lxYpemmEstESefvDDCb9UuyTBzPwpF1WvTaGvP0OgwAX0s
         swsWLpuGKLWHgHBfMdTM5RwCWoE6FWC91WJRy+Hyy8SyqKgJBGAgncu9hDgfEiYiMfiz
         hDDcZ6Bx2026A6KXYzMf3jpWxosei4rxaHZXk2sOH0/2QVlB1ZEkfu//1lxh17bI/JyS
         WZVkxPcAzoJ0stPyZtfFXbGzMuNid7eZSVRGXJ139bxgXS5zXiAQgHmEitkSUtJaqj8h
         i0VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="DY8G/wum";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d1si327306pjo.1.2020.12.04.16.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 16:46:18 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e23so4545356pgk.12
        for <clang-built-linux@googlegroups.com>; Fri, 04 Dec 2020 16:46:18 -0800 (PST)
X-Received: by 2002:a62:27c3:0:b029:196:63f6:cfac with SMTP id n186-20020a6227c30000b029019663f6cfacmr6132838pfn.75.1607129178208;
        Fri, 04 Dec 2020 16:46:18 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k189sm6844098pfd.99.2020.12.04.16.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Dec 2020 16:46:17 -0800 (PST)
Date: Fri, 4 Dec 2020 16:46:16 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/7] ubsan: Enable for all*config builds
Message-ID: <202012041643.CB4EEED17@keescook>
References: <20201203004437.389959-1-keescook@chromium.org>
 <20201203004437.389959-6-keescook@chromium.org>
 <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="DY8G/wum";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Thu, Dec 03, 2020 at 09:51:40AM +0100, Arnd Bergmann wrote:
> On Thu, Dec 3, 2020 at 1:44 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > With UBSAN_OBJECT_SIZE disabled for GCC, only UBSAN_ALIGNMENT remained
> > a noisy UBSAN option. Disable it for COMPILE_TEST so the rest of UBSAN
> > can be used for full all*config builds or other large combinations.
> >
> > Link: https://lore.kernel.org/lkml/CAHk-=wgXW=YLxGN0QVpp-1w5GDd2pf1W-FqY15poKzoVfik2qA@mail.gmail.com/
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Have you checked if this has a notable impact on allmodconfig compile speed
> with gcc or clang? I think I've seen significant increases in build times before
> with this, but I don't remember the actual magnitude.
> 
> Making it 20% slower would probably be ok, but making it twice as slow might
> be too much.

For an x86_64 gcc allmodconfig before, I was seeing around 6m2s. After,
I'm seeing around 6m17s, so that's about 8% longer build time.

I will double-check clang...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012041643.CB4EEED17%40keescook.

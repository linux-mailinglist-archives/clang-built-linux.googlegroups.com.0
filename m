Return-Path: <clang-built-linux+bncBDYJPJO25UGBBION4H6AKGQE6WAMSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E2B29C67D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 19:27:47 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id h20sf1398588plr.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 11:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603823266; cv=pass;
        d=google.com; s=arc-20160816;
        b=wts9EzVgIeDUzpKe+lj+D4aeGo+5u7xPytQ9LuUS4nnron0LxVoCwc0KJ6ZS2D9jxK
         0AgE3jGDmS57X6W5Ux/CWKRzHz5PVEOoc8jvTQqNNItrzFvuYtDmOEWmoZRC8anvsWSU
         o0vUkJn0pdSaPJ1hXqwq1vf606qH9yA2m+teJPbp/BOpa8rdi2ITVZnQWYUsih7mFtcy
         Ou/yp0Kd2LOtnS6GP/+5l3h6NKw/LAZpv6gz4mDgpsno8tbU1slUJb/okb8vUYBKfyhC
         l3/NLSRgh936eOhJ0ejVOk2Di0yfa/yXpRfeIAzKMkourNeHPl6m9Yn4Q3tzABFp12eg
         h7qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZXmH1hCoifnEnMLjX5FRTkAr1hJp5mUP1A1JDRweMhg=;
        b=LIQyxp+pa+tT9H6s8VMkdxq7D/i/FmptmwZOccVHzuEfJ+qY0fWJ+plkb0QZIEhRJj
         Trpz3DiKvI3h0CNxu1YlukzkzwNwbADDA6GIveH7VlLBHovid45a5j6irig8kEVoK9cf
         HBkH59KIGfN2IvihL9yZ+Xaxd/IagM2Pf+yQUv5QGc7OvUKq0Ex1hqJrd9V15Xfx+bIO
         ojtyasckwNapZf5hFlrUwX9wuh6ItFUOvhimD0xbvEiv9CLN36Di2Aa/jLpbWPb2RD9C
         mJINWhilvOv07/gfeAd1pw0dikjqzhORzBLXAWO9ktqdD3byq3+rxwXwgwqXOEtiDtrp
         XLLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DUlvCZgv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZXmH1hCoifnEnMLjX5FRTkAr1hJp5mUP1A1JDRweMhg=;
        b=H45QbRwi29oJzsED9X5gaft9HZ+qXWvZsbVz/K9dnzP4Ut5QXY4nHacU27f58NECPA
         vj16a1gWL+Dkh5MKehV50uIcvetzxg1KbVzuoQ+GWtC8N9h2NHMWbMj79PTIDVxjYfR/
         yXs5BR4oePznZLDUOre2k2wBD4x/hPQA1kDaGXUiDxjqB3wX/W628TYuS+CPPCEoN3Hb
         +zqeBc9vXbadcBXRKW4sjOySqAZ+Fb+hTBx/qpk/GFTWr0khgdKcxPYRy+qWXzqIYMoF
         cRzn/77dUftL4CcvG5qd9pPyVvS7zBPbbcnH8derJz2YLA3NpUhnDxjf6aTGIVaodtiw
         WPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZXmH1hCoifnEnMLjX5FRTkAr1hJp5mUP1A1JDRweMhg=;
        b=KArcqNb8kOrlSdkXIq4PV7nonQI5EgJhZLmuZxbwtzVh80EwzQtOjC4livr1yb3EXY
         LswEkGFm9aqxfeDONaZePQ2qarcPZ1p2enxAUbxNIifWh27+Eovz7+v8JbfETK6MLrmf
         RcE4GKzfPV9jWw2sVCnFJpIUiA8EZ46jDxrjg4v3i/fX5sJ6y+pkX0kpoqOEo0IWTAmp
         bSMTUjlOurMJATwm0DiSKOoVnCxyShgXtXqrHSCd+/HcIFOwGaxPg3nHgxJ1TFZ6loq0
         MAL2mNSN07B5/ESE/gtZ2hh3sFdWoprwOM0+xKMF2EPBx3P+N1CGtnTbBkL/dnVy7k5T
         uBeg==
X-Gm-Message-State: AOAM5304GLOsMv6cW7lmv2LFHyzs/lPdVfGw6ONuONIn1bC39AdovbTF
	v4CaRVWYjwo09Tbt/B3TYUk=
X-Google-Smtp-Source: ABdhPJzZCWNRtQm2hQfxKEYV2Dm829j88ano/JP+ue44eBulVN5ALMRSKfHp24iBvVBKpgQzsyiyqQ==
X-Received: by 2002:aa7:8805:0:b029:160:b5d:b279 with SMTP id c5-20020aa788050000b02901600b5db279mr3471300pfo.63.1603823266134;
        Tue, 27 Oct 2020 11:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls1111989pll.7.gmail; Tue, 27
 Oct 2020 11:27:45 -0700 (PDT)
X-Received: by 2002:a17:902:8343:b029:d5:b4f4:2a10 with SMTP id z3-20020a1709028343b02900d5b4f42a10mr3643089pln.46.1603823265479;
        Tue, 27 Oct 2020 11:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603823265; cv=none;
        d=google.com; s=arc-20160816;
        b=PzhNK39OF2zTMSQCyilsKjDzGGSo54AQ2Xa32ty9Y9Z8CixwHGtNh1IIIm2sWx9zzd
         ArMHzfcl1EIwEGAikMZlDRw2eqitSfaochJATVI69XnKtXJELGGwGl04xyzPFXCLr9Sy
         GTUkcIKsnHzjUe0pJBvwNeez4iqWVhHKBwRgz8KJyvVkuUpYtYxkXUlmiVt1gzRFpnm7
         IZIMgST1/HjhTZ0E0/iUet3hmlnIe3um/SpSiI0dlqDVI4t8MCZ++z1ktk5dJAVd/DVb
         uQp5I1+JQhrfFVEMOpoP15Vf3NPk3oW2SGjg0ldrqNZ8qWsN3fTF35Gi+u12pltxTHBA
         7sQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3xxssZMfhcCk5+/sXgaGkrrOB6SC6L3pBY/sM5t9/hU=;
        b=LgOMok7scqyXMw89agpiOOJtPjRXMXNvp1sHiLZn+Gp/2KTNF8pJ6BomiGo7QTj3a2
         M7ovzWKbKGSEYSOqY8MbMZoj8hYUnIkVbJH/57Xw7AxDHWgQSsWe5XQSS1TKFpMFA2Qd
         XaGDposjadpYxw+nj6zk+hZSiFBsK2V2VzAn75OWAuFn6cdvueKlKlOYYxnBVUC9wCZX
         NCLP155bMyjPFkQX3n5gjPmSJN7GBrlQz7wW9NNn9E9tFFgzrqMOxtymJ64U8wyXNuez
         cuQBD5EF2352ZwEikveJ8qKfj2ziugHHHyN9SaQww5v0dKyp9lCrduesJM4QOY3JxItt
         H6Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DUlvCZgv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id v8si181195pgj.1.2020.10.27.11.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 11:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id x23so1207996plr.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 11:27:45 -0700 (PDT)
X-Received: by 2002:a17:902:c24b:b029:d3:f3e6:1915 with SMTP id
 11-20020a170902c24bb02900d3f3e61915mr3731085plg.56.1603823264821; Tue, 27 Oct
 2020 11:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <20201027151132.14066-1-ardb@kernel.org>
In-Reply-To: <20201027151132.14066-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 11:27:33 -0700
Message-ID: <CAKwvOd=XHAGotJ38o=hZTwi89XvCyshaUtWezZQ-k6aRT20xwQ@mail.gmail.com>
Subject: Re: [PATCH] module: use hidden visibility for weak symbol references
To: Ard Biesheuvel <ardb@kernel.org>, Fangrui Song <maskray@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Jessica Yu <jeyu@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DUlvCZgv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

+ Fangrui

On Tue, Oct 27, 2020 at 8:11 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Geert reports that commit be2881824ae9eb92 ("arm64/build: Assert for
> unwanted sections") results in build errors on arm64 for configurations
> that have CONFIG_MODULES disabled.
>
> The commit in question added ASSERT()s to the arm64 linker script to
> ensure that linker generated sections such as .got, .plt etc are empty,
> but as it turns out, there are corner cases where the linker does emit
> content into those sections. More specifically, weak references to
> function symbols (which can remain unsatisfied, and can therefore not
> be emitted as relative references) will be emitted as GOT and PLT
> entries when linking the kernel in PIE mode (which is the case when
> CONFIG_RELOCATABLE is enabled, which is on by default).
>
> What happens is that code such as
>
>         struct device *(*fn)(struct device *dev);
>         struct device *iommu_device;
>
>         fn = symbol_get(mdev_get_iommu_device);
>         if (fn) {
>                 iommu_device = fn(dev);
>
> essentially gets converted into the following when CONFIG_MODULES is off:
>
>         struct device *iommu_device;
>
>         if (&mdev_get_iommu_device) {
>                 iommu_device = mdev_get_iommu_device(dev);
>
> where mdev_get_iommu_device is emitted as a weak symbol reference into
> the object file. The first reference is decorated with an ordinary
> ABS64 data relocation (which yields 0x0 if the reference remains
> unsatisfied). However, the indirect call is turned into a direct call
> covered by a R_AARCH64_CALL26 relocation, which is converted into a
> call via a PLT entry taking the target address from the associated
> GOT entry.
>
> Given that such GOT and PLT entries are unnecessary for fully linked
> binaries such as the kernel, let's give these weak symbol references
> hidden visibility, so that the linker knows that the weak reference
> via R_AARCH64_CALL26 can simply remain unsatisfied.
>
> Cc: Jessica Yu <jeyu@kernel.org>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  include/linux/module.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/module.h b/include/linux/module.h
> index 7ccdf87f376f..6264617bab4d 100644
> --- a/include/linux/module.h
> +++ b/include/linux/module.h
> @@ -740,7 +740,7 @@ static inline bool within_module(unsigned long addr, const struct module *mod)
>  }
>
>  /* Get/put a kernel symbol (calls should be symmetric) */
> -#define symbol_get(x) ({ extern typeof(x) x __attribute__((weak)); &(x); })
> +#define symbol_get(x) ({ extern typeof(x) x __attribute__((weak,visibility("hidden"))); &(x); })
>  #define symbol_put(x) do { } while (0)
>  #define symbol_put_addr(x) do { } while (0)
>
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXHAGotJ38o%3DhZTwi89XvCyshaUtWezZQ-k6aRT20xwQ%40mail.gmail.com.

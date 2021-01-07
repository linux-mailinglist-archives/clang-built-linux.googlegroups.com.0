Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBDWW3H7QKGQEGG5FSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E562EC7DE
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 02:59:43 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id f19sf3813977qtx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 17:59:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609984782; cv=pass;
        d=google.com; s=arc-20160816;
        b=tO29WEgRH+LYxoXCqYEbNQFNU9Pv9KY5EhBqRlzRyTVqNWQ3WeOnYqyNLfdSaCrK03
         K8d2Tr8B+ZZf6ae1kHGGvGLYCs9IYuZ3ffSNzr0nqR3qGFLERzdAs4NK9RUH4kA1PPmP
         Q1zWFc/Jmz9ixvG6/3u4hJQb8EFrIg0ElX4oBED6Ri8I75kBGFJOKes78+axQvPXHiiW
         vR96JVc219ZvrL6TYwtRok7yb1sJMSl4hT+WGWmtSmOdVYMFPoUYH4nIr37Z14klWpaT
         U20CoUKKV18mg6Qwkx/ibfpjqqqpT+qUc2AA8YHb6NklYIY1RtbNd4FibLlLRKXP5wGt
         j2pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JBCOagqF1HS4t3R/dlGAuapYB/7ftW+G+M7SG+oc5yc=;
        b=zIgSVFofLpW0JSRcVEmDnUKkjRDZ5p++s45YZlVNKJmK6pQ76+DhIftMn93si6lf7P
         tw2Upy5kSzlSnYU+WjTAhmJaLuMZcRDJo+oCfXJYPGbwIcXTooR3G+OBq7yYuqdkpsUJ
         dJ5LJegtXkH/VwIYSoggsiJTJSoh1AmMxFq5HpR4ycnT9r3hsCfitY8U6lNYxDvIOpeK
         WWMF4PcFe1rtyvmxcVmaPt/f8QucUSkusb6/DaFw7IXn/KTlOsvacn8O13np4m7fobtK
         HISW5N/l1DeEJgkSCtyKhbC7+csqfxRRfuStSVEnEMLy6aFa7wyWyeqFQ8HuuVkqj3jC
         0feQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qbNtHL8I;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBCOagqF1HS4t3R/dlGAuapYB/7ftW+G+M7SG+oc5yc=;
        b=cUvpyavh8RG6TOPuopx+BjOGoZtk5aq8F3XILAijW6h8+gxzWApzXzzEHggGkBE6Ik
         wPRTrSw/xbuMxUezWARoi7uyqUYTDnrujMbV7ojPC0kmRCxHbdfjWr91LRZGbCLXgenX
         wEtezoOfq3P8Sho5i8VeXVtqsk465WNrdRMCquPBtqG0pzoLL8H4sVADbe07l8C+FUjh
         SyRE16ARJPW3bz3qz5e9eA71O7YRVBCFrOEWNQMN6M90aKoI9U2FmgyYERidwhuSNLTa
         OdezM+XnW0q6TsWDxJGG9Dg/SFiMzX9gBw6Tbx2r1jbQjA2HpF4ERrUIrr2IeoCaX+OG
         +f3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBCOagqF1HS4t3R/dlGAuapYB/7ftW+G+M7SG+oc5yc=;
        b=dMBjpkEysirYLaRRaKYZE+ZpZRu8nJbaovdrgPjZ86gAJ9+5fiB9N+Ae6ebPdZ3dU+
         kLn+gHdTXqASQvi/P+6gFlfw8uylL7Rgq+sQrL3F9G9kNmo4Ydox6w0Wbdf1qcZBd+Om
         ikUOtN2+LkfIDs+FfECL8+PI5xKrrPaogep4jMrAbmajV5YsEb0ijDdOxSzJ/Era842G
         BcHu2JwpoO1vWas3aOOJhLPwcxk4jwBcDEVO+XvzuXFO43oLgGZHKylBMqKSPUNCRea8
         rY1qcuTNQb6FnmURQ1tpQC7wh9SJR+JQ1270OuGikZ7KglARANjdKM45bCY23zzv3Dnj
         GPGg==
X-Gm-Message-State: AOAM532akTNiW5H8X+mdssfTVywrYJ6eOg1knpN4o9nD3Mrmlzz8fZ7m
	/Gw/6KoKBS47BFVS0RU66YI=
X-Google-Smtp-Source: ABdhPJxiPMGbwOC6dgkEZDDYuon2842sZ/tmAhy6DbeTuNPSigwU3UhOptUOb6KIbp+1YD0Dm0/8mA==
X-Received: by 2002:ac8:1115:: with SMTP id c21mr6605629qtj.389.1609984782583;
        Wed, 06 Jan 2021 17:59:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls2094377qts.0.gmail; Wed, 06 Jan
 2021 17:59:42 -0800 (PST)
X-Received: by 2002:ac8:7507:: with SMTP id u7mr6514001qtq.217.1609984782202;
        Wed, 06 Jan 2021 17:59:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609984782; cv=none;
        d=google.com; s=arc-20160816;
        b=zM686EQDKrt+i2qfzws1GsGpmKnwG7bqLciOjHF476kfYGJq1scEhAeJgZWk0Wt4dH
         ujOTznMJdk9ginXWbutiarE/0ZRWLi6rbO8DkEjdeq84E5CC/y60pehSYnXiNJy5R5f3
         E+XThmyjYABjkAUR/ztgKeVvzDgW1sSjy4vmlw0jjPPWC5LWKTqHB3nwBWlTRxaDMQZH
         ClUcE5TIoINF436OreIfXkuRD+QOm9iLH24XKMDXdoZSQf1LPJDbxm4z5DjJmvev+9gg
         tmC1LW1HkRfPo0mbhMghtLBSXelEiVdzxePrB3CB/2f9Npv9Gvxif330nuxJm733ZL2m
         GJuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dwRklFypON9ymYuJdkSeEyVAOtCE8vnlHBFLWfNebOw=;
        b=mYGYKDX9DLrT8m3U+9v24gbkG8ehjaMS9tE0nF+iyUCdZvEGUL91hp7TnyUKYRhqYL
         DPJIj2KvkMY5EW/tZuOhm/qE03lYiMKSx38FqjlNZumJ3De7D5CanXKQrNnUwnzVvioR
         MYXxzW8hAyI38Uf6zZilc7lMuRd2TCnOmXWHE6q9YtTjl0ozohlFw5R2pnUkfJukL3fg
         fVjMvzlZPCAxYk8Ol1orFLUE2EpVCKJqCXypBLgVz/4E8LuhmBeU9+poik4joHpXvGkv
         sngzyr5NsPgQkUs35w3HyF6Y9IYb5uuWFbHy3UF73Xl2MCE87dsj6BxXK5x3PhNaKcSP
         ojXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qbNtHL8I;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id z94si599150qtc.0.2021.01.06.17.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 17:59:42 -0800 (PST)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id p18so3646258pgm.11
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 17:59:42 -0800 (PST)
X-Received: by 2002:a62:e309:0:b029:1ae:5b4a:3199 with SMTP id
 g9-20020a62e3090000b02901ae5b4a3199mr5771408pfh.24.1609984781252; Wed, 06 Jan
 2021 17:59:41 -0800 (PST)
MIME-Version: 1.0
References: <a83aa371e2ef96e79cbdefceebaa960a34957a79.1609871239.git.andreyknvl@google.com>
 <202101060828.QFNIkNMv-lkp@intel.com> <20210106160250.24b79d8d119a7ff0a5414f3f@linux-foundation.org>
In-Reply-To: <20210106160250.24b79d8d119a7ff0a5414f3f@linux-foundation.org>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 Jan 2021 02:59:30 +0100
Message-ID: <CAAeHK+xhERCD-455hMd1_ksPEyjB_1bfoDht0Crz60sBuQO-TA@mail.gmail.com>
Subject: Re: [PATCH 10/11] kasan: fix bug detection via ksize for HW_TAGS mode
To: Andrew Morton <akpm@linux-foundation.org>
Cc: kernel test robot <lkp@intel.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Will Deacon <will.deacon@arm.com>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Evgenii Stepanov <eugenis@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qbNtHL8I;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Thu, Jan 7, 2021 at 1:02 AM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Wed, 6 Jan 2021 08:09:00 +0800 kernel test robot <lkp@intel.com> wrote:
>
> > Hi Andrey,
> >    In file included from arch/x86/boot/compressed/cmdline.c:2:
> >    In file included from arch/x86/boot/compressed/misc.h:30:
> >    In file included from include/linux/acpi.h:14:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:136:
> > >> include/linux/kasan.h:314:77: warning: non-void function does not return a value [-Wreturn-type]
> >    static inline bool kasan_check_byte(const void *address, unsigned long ip) {}
> >                                                                                ^
> >    1 warning generated.
> >
>
> This?
>
> --- a/include/linux/kasan.h~kasan-fix-bug-detection-via-ksize-for-hw_tags-mode-fix
> +++ a/include/linux/kasan.h
> @@ -311,7 +311,10 @@ static inline void *kasan_krealloc(const
>         return (void *)object;
>  }
>  static inline void kasan_kfree_large(void *ptr, unsigned long ip) {}
> -static inline bool kasan_check_byte(const void *address, unsigned long ip) {}
> +static inline bool kasan_check_byte(const void *address, unsigned long ip)
> +{
> +       return true;
> +}
>
>  #endif /* CONFIG_KASAN */

Yes.

> btw, "kasan_check_byte" isn't a good function name.  Check for what?
> Does it return true for a check which passed, or for a check which
> failed?  Something like "kasan_byte_valid" would be better - the name
> explains the return value.

Sounds good, will fix in v2 along with the warning.

Thank you!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BxhERCD-455hMd1_ksPEyjB_1bfoDht0Crz60sBuQO-TA%40mail.gmail.com.

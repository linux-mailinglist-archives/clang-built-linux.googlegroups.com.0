Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEOKWCGAMGQEMRBGZBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 5797C44C9F1
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 21:01:22 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id j25-20020a05600c1c1900b00332372c252dsf1661371wms.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 12:01:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636574482; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nblkhr8H0Kh2R0w5cVuOGZqaGFABNzkWmHZ3wbzB9BWUeVCWoxUOFH3MVHAYEQMOEa
         fAI3LEqZgVvkW3u6SK0IQXwLyEKalEtp4Wd7Z+uCP3jU7j8EaaATKjka5mNS3HLdE+Hq
         uMkcg3qYDQ+R5bI5KYzJ5Kl2psbs1eNn4ZOGyeIvDnFzQxP36jMgfhCwE7azrI+rzaps
         n/Ny1WbMcBsZhvJlu00JbP8wgwCr7rsl7DTwTJ5vYVr8h+VZhMhhNCRxMUAyKzwMdsKC
         l2rGIbx3WqiODMyOnAhZz0OCbEIDGS6ohzpnFHOnyOXoRzjlxZL7DKWC9sYkGjdQBbQA
         YbdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bMMGQ2uOsYAXivGOl4S7xdf30sD+TQnx+v/99oxQ6cI=;
        b=LzHtLqGAiOhSCkTrsnLJi77P2qSA9/wJvq+wivT44oqO+dVhRB4pGLFHaV3t0QrVku
         F/cVZ3MsFCF0KNhPKmCM82omnpJqKOcCiteWpY9ItwhfxLfPClB33mSvlDOX5Jci2W9a
         awJnuwuROko7XMlDWcQ3Q/rzOxGtyY/34Qy+rW2Q++/5bpxe6nRZKT7jcOlbV4IZyMev
         vfmYiECIjgk2FVD3MIbhENAY82wkHJOjNFWpy8e8xz58jf6czsJukuAXvS/q0sVkfNd1
         yyq2Kt+UKMEuVycNTnqO3wsesY2wqHAX+2QJhASfekiahbzq1zccwY7xJeDgtdQRtP73
         bdkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=MZmyZ7EZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bMMGQ2uOsYAXivGOl4S7xdf30sD+TQnx+v/99oxQ6cI=;
        b=esmgzZMHab41drRBsO2nP7vfGj3IUJNIe4qPIcwguZjKN0PuNvoAf9yeBcIQFwhFbF
         9TOmfOFVfwzCg3jmjuyfKGOJWvQE72DP1MTnTHUk5miRpSnV5jutiJ6jiR5cVYZVfrZv
         qwM0qbMhygSbQMKDWXmGzqAe+XWAMZ169WHjS2IXHYyGHPg+RfzF8tlRGe7hj0IIYX37
         2+GnUZlm0RjN8zxnXquKdXaZlQeG7ZcocD3I/ZeCrlfPsfCFRl8onI3rqt0lHF1CcOA5
         yMRap+rysynbkae00V0OeLAQml9gelGVKdaI1SJInqp3oSKDrsQF8QgwLGZtIDmSiLFo
         jiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bMMGQ2uOsYAXivGOl4S7xdf30sD+TQnx+v/99oxQ6cI=;
        b=hIywJ9AhscwfwYJRqrjc9MGlPTjlPjWYMqzodzDyPJuDO016vmEHZKhvZ6vgnplJWI
         Dz60MtW7sYUi6C+FxC9Q3BNjYg4JxzjFY8t6M1I+r5Q7by/t8E0OTI1S4/cG/pzs00W/
         E9clPAb6vwoS3gkMwPeN/h77RE5074l7B6RnuXgs7VOQv2i4mT6G+u+IBQd2veDIExVp
         pZk8UKUFF4tqjaUy3lkvO/hZkmnfUvsifY5ANBtoqPhu+ziAFKsjllbxiWL18ZQKgSiU
         317gTIf6PUtaFqY9WgHuaxRff2YeeUfIxg7+0Wu1Z3kkggi4Xu7YDkqbasFyLtTgylYk
         5mvA==
X-Gm-Message-State: AOAM532qLJRAQskg3bCMtHApPL/JvZCDZPwd+m5du/VdhrERGQdcdWM9
	lVg+Kf8iUciRRXxldH9dcPY=
X-Google-Smtp-Source: ABdhPJyig9viqRt6106pChH4JBH6J+gYSa9als3BJ0QvCeEWEdG6wwBoC63CqDyUag8Q/YvYoj9BVw==
X-Received: by 2002:a1c:287:: with SMTP id 129mr4447796wmc.49.1636574482102;
        Wed, 10 Nov 2021 12:01:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:3b8b:: with SMTP id n11ls3768877wms.2.canary-gmail;
 Wed, 10 Nov 2021 12:01:21 -0800 (PST)
X-Received: by 2002:a7b:c4c1:: with SMTP id g1mr2118447wmk.2.1636574481244;
        Wed, 10 Nov 2021 12:01:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636574481; cv=none;
        d=google.com; s=arc-20160816;
        b=A5jTf2y9uq/f7RJrgB3zxInsX+t5EKoEb/PKAmr+c3MGe6Qt9D5I7CL66Fp50u5IjO
         sWnZSQDKGDNqAb6AavZkqioxOK6CfhbXwqv9S4prYcUqkB9AKVQKcgDlLJhx+Bcvsvah
         E54D1yrnOUuvk8F4Chy4QvQ6tX5ZZ6eyGp1sjXLgiapUOpSjxTPtynUhDYNCq6b9Y5pe
         nbW2sSewDKZQVNZr469ZK9fF8vZCOcZ14VrphB/5maV+/fY0SVXYV6mguWny2eD8I80u
         /mCwQZ3V/9ujyiDQMVYFrByDOm7OPVWehIQT2SRY6ZBG1w6hLJURPwb9D1QVSGnNsIPP
         roVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bOoXuUtuBFoRdimZlGd0hZ6ppoJ6XBMiccEP8Jcpxhs=;
        b=vTU0Y8G8UWaY6TXMp/R6+VI3NI14Wu/Ce4qZD/rm1oAGZiDHJAhu2jgxHfnd+ZnnAc
         HC2V7raAOetvgMx3WLtdD1xdy/Z3PSooCI9RuyPmw3cOk0jFq3mOsxSlQ4zaabh6HzfU
         X0RfxWkVKCjgLB0gYx0nk1xpw/O0qCnCLfCkmGlWTLlD0FMm1E99Hhl408wGZSxK7uyz
         rdd7gAU8xLQzphiGMKJMeSRKYD1ndH+MDCh5NX2QqmR+90tofffpMm201672GnO+24Ei
         8pQBFmRp1rFU3i0skplMgIaXTWc/NLxOPbw9xWm8Hcg747kiuRBnrQpdQqUPUM70e16b
         kyXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=MZmyZ7EZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id s138si625317wme.1.2021.11.10.12.01.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 12:01:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id y26so8626190lfa.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Nov 2021 12:01:21 -0800 (PST)
X-Received: by 2002:a05:6512:607:: with SMTP id b7mr1565363lfe.489.1636574480546;
 Wed, 10 Nov 2021 12:01:20 -0800 (PST)
MIME-Version: 1.0
References: <20211107162641.324688-1-masahiroy@kernel.org>
In-Reply-To: <20211107162641.324688-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Nov 2021 12:01:09 -0800
Message-ID: <CAKwvOdmEU+GD3d+p8n3jnToKXgGcQN4EWSd+ATg_gs4Cwr4+gQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] x86/vdso: remove -nostdlib compiler flag
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com, 
	Andy Lutomirski <luto@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=MZmyZ7EZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Sun, Nov 7, 2021 at 8:27 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
>
> Since
>
>   379d98ddf413 ("x86: vdso: Use $LD instead of $CC to link")
>
> $(LD) is directly used, hence -nostdlib is unneeded.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  arch/x86/entry/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> index a2dddcc189f6..693f8b9031fb 100644
> --- a/arch/x86/entry/vdso/Makefile
> +++ b/arch/x86/entry/vdso/Makefile
> @@ -172,7 +172,7 @@ $(obj)/vdso32.so.dbg: $(obj)/vdso32/vdso32.lds $(vobjs32) FORCE
>  # The DSO images are built using a special linker script.
>  #
>  quiet_cmd_vdso = VDSO    $@
> -      cmd_vdso = $(LD) -nostdlib -o $@ \
> +      cmd_vdso = $(LD) -o $@ \
>                        $(VDSO_LDFLAGS) $(VDSO_LDFLAGS_$(filter %.lds,$(^F))) \
>                        -T $(filter %.lds,$^) $(filter %.o,$^) && \
>                  sh $(srctree)/$(src)/checkundef.sh '$(NM)' '$@'
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107162641.324688-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEU%2BGD3d%2Bp8n3jnToKXgGcQN4EWSd%2BATg_gs4Cwr4%2BgQ%40mail.gmail.com.

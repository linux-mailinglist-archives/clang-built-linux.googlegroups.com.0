Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLP7SCFAMGQESQPPKHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E8340F2ED
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 09:11:42 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id s8-20020ac25c48000000b003faf62e104esf2392670lfp.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 00:11:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631862702; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOnY/0hldiChBzeIX2U/tj6neBSXFTk6gSxr02TPzwGA6q8Kye3WjkqplknVXdyiFW
         LEcgDDo8YDeBrtdVUhCUCIjzQUMR5sdL8fwDke4vd77aV6dwPPBsz7OQf7X1bZ1oSen4
         tFJYEg4LGPJ0xFmLftlKRhKuNxmSHKi0MuRanyZs/js4J2bJGLW9Uh0FmW/Zm7//xpUq
         ONoyyd/d9c6Z48XN5Xke4QtZjHjxBZlJMMN1eaHn8E7XdJQNE/kDCizWGGpP5zS3/xH5
         xXyf7AX0fAFJXNUrCiTtd2njrGIQpz5LNIdZ2FCthrJYn+5Ke4SdQFee2suh+YoG+GlG
         b1mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=mQxRQqp8utl7HJOSuaAVvxJRztcBKA71f20qCj9BVnw=;
        b=F2enTr4r0SXaTHLG9qwjYEJL7/0fvkee1ua2Eob9sWNqdis7FsQQTFrz2cLFWKmaWI
         XciBeOf5klObx0ZbNWU1v1jnWV/pjhyjXanku3HncxzB5fDxk0F+0ALV+RUBjit1Pm8j
         o8ckZ3vP/OFX7jMkwTvMdY1rgPEdZJnIj16Yk0OHVm5Wc6HvXRXMdaQCRsLMI5aR16Du
         rv1O6DkSot7ubDno4Ev5xPClYNPnRDmWfxVwjsFViCrDj2s1e23E6ssdZiGzB9dS+jDU
         VYnb9gM4qYWLPOulAdKHJ4gFbaNYP26h+G950ysoyFOptOg6vdSUfw5xlnDhR+jshKm3
         hJGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQxRQqp8utl7HJOSuaAVvxJRztcBKA71f20qCj9BVnw=;
        b=etoXgloR00b3OvODhLdkQcoq3pI4dx22gjUepUVAWCGWrLSSoqOtdBUPlbNOB5nB52
         ZXJIcDv80mgswsNs87OlVgP2MLDk9kKYAaHJIqJZxbdhuRpRr8xHTNBuajkpYIg+cD4B
         28xDxTr2nJ1tnTtFOkFmR3QCxQ3XtI0UBEhYcJGkY8LwV1QxV8LwlpaVsNHndkFPppmZ
         zY/lTrQVv67r1Kn2tswu81u6KS6etVbmkr0Ej4f92aBL47DSkkQo48A1mcRvYvNeVwyc
         MYUmByLrwq0WQB5/flTC2v27vGDOs9Xb2A255ghggfWXod1e+hcn1w/a3fvPMjy+TYmw
         grgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQxRQqp8utl7HJOSuaAVvxJRztcBKA71f20qCj9BVnw=;
        b=Z2DwIQ975TI2mQThECfruGY7nHHLPGLR5MiPCkGk7lz7pzHjOBgkZ5NVyHDQvNrCc0
         5bjT+km4CT9nfY8OGih3Cd6VetWMj7zRYkpCoWmmMUO4bOhzWM1D+WbQtrGOX6Vl59if
         Al5veXZ2hTZfTs2ExUq7OIV86vf4Q32+d2LyuQbAi0bv446NywrxIJw5y/jnvvZ/Uzno
         IDmUlf0KouRN0/3Sikv3WHo3Ei5nJno3wrwH18oZnvPIoRKvnZu6RHvRGM5z4/yCKU7O
         EKlnTwaHlG/Qe77Js310vRgq/3pCPeD+DeSN0uM1BWwVjmIOELdAsTVSvpkPwxQfW80Q
         JHng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CYfr3Aj8QzwJFyZR4SzFz6gXpSEXeiAZt4pobEfH0Gct0fNbY
	i8i9O8RDN3ajDqePWhwguTA=
X-Google-Smtp-Source: ABdhPJynwgw7NQ6TUj3iwY8Kv3JAT9F76rUj/qh9EI37x1/Ca+ywAaHK/AYFZecRvPXqC7jzVHyuBg==
X-Received: by 2002:a05:6512:ea4:: with SMTP id bi36mr7172617lfb.486.1631862702121;
        Fri, 17 Sep 2021 00:11:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:261a:: with SMTP id bt26ls1164190lfb.3.gmail; Fri,
 17 Sep 2021 00:11:41 -0700 (PDT)
X-Received: by 2002:a05:6512:450:: with SMTP id y16mr6833505lfk.200.1631862701048;
        Fri, 17 Sep 2021 00:11:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631862701; cv=none;
        d=google.com; s=arc-20160816;
        b=qA6folsSYd8zrfo9iDYwww2oWhUUUlNhiJV1fJdKwnoi+8vQTJavdsPPtW7Gt2Leuj
         KxAgAGd2oGJlPDpMCg/4Fq1glBajkh7b6Cwt+UIWznQ9lRf/3ts8O4AUSZTzgNGrQ1bv
         s0o34UyxMBj0hWQhOFw5rqmPtk6rhvpVvL83Qq8XpHKT+heOwpdRyfVm8RQxo2hx7tbo
         sjR9jIQeuMoqAsCKApnR+NLpK5jk3mNgABAU2N1rmJfnJt7BeD3FySdgUSYLkGMqhasc
         X+ORt/Qwx6Jxi3JCeqS3DYHASGL4iGTrhYrNs4b1wS75sKoN4mPmwkz8KsWUvRyx3shV
         OTjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=9nUF1ZN/GamJDpQyXbvhF5KtoIIwtRKnnjtQBD5hS5I=;
        b=0J1cVhxhwWj+HZscHBlsBwqeFeIzwzhCb1fbEt6TTATnL0K3M6pyO5OpuVlD5N1hhE
         1NUNcZU8Bn9lcL6d0c/97XdwyDz5gAUBwsQyfzsDCuLQoUw/tFzin9vgUpag9JwARpWS
         Cl0Qlgoe1fxWmtiKMG0fNbeQfrArw0mp+9jyCsDSJ+YzKH2RlTbpPuARnL+Ju5trQxDX
         VUsJp2vNuWQTRa54cyWsxUHy1rtlCEsjFEEn++zLEugzKRp3n2Rj5+FTRe1kzNHREI8n
         3YRLUsZ/bxTK7y+txg879tI2XXh1HMmgu82JA8Qh17ggbYQIuTdpEhbVkxWBUZHsYEoQ
         Ea5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id e14si577160lfs.11.2021.09.17.00.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 00:11:40 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from mail-wm1-f42.google.com ([209.85.128.42]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MLzSD-1m9sAH0iu1-00HyaF for <clang-built-linux@googlegroups.com>; Fri, 17
 Sep 2021 09:11:40 +0200
Received: by mail-wm1-f42.google.com with SMTP id 140so6558176wma.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Sep 2021 00:11:40 -0700 (PDT)
X-Received: by 2002:a05:600c:896:: with SMTP id l22mr13503869wmp.173.1631862699797;
 Fri, 17 Sep 2021 00:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210830213846.2609349-1-ndesaulniers@google.com>
In-Reply-To: <20210830213846.2609349-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Sep 2021 09:11:23 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2JJ=5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw@mail.gmail.com>
Message-ID: <CAK8P3a2JJ=5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw@mail.gmail.com>
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, llvm@lists.linux.dev, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	YiFei Zhu <yifeifz2@illinois.edu>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Mike Rapoport <rppt@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:k+DS79LcxlANB/sd/3+iO4aF2Hl/WEbc8Ux90jMY3b7FPDM8Xh5
 Z5kqZPAQ9SVDapecKJ1+xvdd8n28860MJdahoKzphBEShYwwF/qLj4DfG7YQXpbXvbHulLN
 UrT7sHPaxRNTp1MuJEyjLQWaq2NegxeRAItaBBTlm1NzPnsHYVL2InBzjGQ1iM7SaBcTZJa
 GSFm0dlFylPwpdl7Ab4eg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KiNWryR/OuQ=:EyzCLVorOPZQ0yt37cMPcK
 xwvmIGu2rbg4Q+F24paMX9MmLypF+omZ4jODkD3KY/h8wURlVApeq1aajWYjXp2itDF3nSWJc
 bi11oWHTYJRRBPYnieA/UFic1shxSH3J6IMLkarznQgHWxNr9EjsuY27zb0a/ubS9PkvJxrIM
 47/5aSxrtfhmZj+wCcD3a1eNajTeKseyy1Ek7npT4VqEqCsR7ULGwnSKbuohUuDRPlv/bgVeU
 arK0Vw5OSuga+MGS4a8277TBTzV+O8Ku73/sVFHpfHY0pHcHyKmyiS1O5fnAaXiVgvmLXX645
 qA4evBR7b0qzpQyDEHUW06ngSJY7emYu7DlkRO2vwLw+yQefKirCnvm/QNEaAQeS9+xeMv8n0
 oUneyMxC0zz/tKypnRGSU3Vhc1SrbZITz45UyhI9j2+LPisVEy4T+0G7hBaR8DNxQRm24Y2HA
 y5/AEPdKnwqIS3gSNdB8g7MobSbr1m0IIA/rx0kPGiiXA5jbWHP6pw7RbfDic482q+L1N5NRk
 FLpLDZ4xEqcILvqc1yidv4D5BryWx1m7Ju5KO3D61N9aaW1L7VkMODR5VwSwDzbt09v+8KSQ7
 cTk/DV8AjKqIug9rLugdEfPI2M6ZrhCe6wJJ0lvekegjU98TTK3t2YVh/Di77yuS6eo7qT4UY
 rN4wHef6Z7GhjC7LUxRo4J/T/Rw6cmZwqdAQl1yKQ1yLHs4C05YghVtfrJnJTrSkWeYZtxi46
 CbSsvfOhHw05b2lGjc9amuAeD+gV7ohs/42WqWya+IE4FLwqQD/HrAr4GuanLc77yFGeLY5Ad
 tuyMQ5vwQOwD1h5ckl+0vHso20jHu7lXW2I1fsQRRVWxI5aOW58nbgSmwBkbnRNiJkQVEzglM
 vzvo9pA2MJeHNjcTlHVQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, Aug 30, 2021 at 11:38 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> tglx notes:
>   This function [futex_detect_cmpxchg] is only needed when an
>   architecture has to runtime discover whether the CPU supports it or
>   not.  ARM has unconditional support for this, so the obvious thing to
>   do is the below.
>
> Fixes linkage failure from Clang randconfigs:
> kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
> and boot failures for CONFIG_THUMB2_KERNEL.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/325
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Nice! I did remember that we had come up with a number of solutions
for the build error and that at least one of them was an obvious and
nice fix, but I could never figure out what it was. This is clearly better
than any of the other ones I had found when I last looked.

I would add a reference to the commit that introduced the conditional,
and a request for backports as well:

See-also: 03b8c7b623c8 ("futex: Allow architectures to skip
futex_atomic_cmpxchg_inatomic() test")
Cc: stable@vger.kernel.org # v3.14+
Reviewed-by: Arnd Bergmann <arnd@arndb.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2JJ%3D5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJX7U32AKGQEUSCHWPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7571319EAAC
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 13:23:18 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id t25sf6306590wrb.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 04:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586085798; cv=pass;
        d=google.com; s=arc-20160816;
        b=dKGBW5puvNhQrnobazZGfQAYYrPzkBpDeOx6xqlg3nR/+uGcV0NB4QIfg+VV5oLa1a
         KzRCcnQewgquBBOObUU+1lKchgDuvHaOHm3RR3b61Hp+V21/Kq/xxH9YMp+1o5F1H9eY
         KuHDSTBBjTYwEHKPaYpMar7RIaBivzOYni0YUDz2QVzoiktBRcZm1h64dvymUMR8rpVM
         pRUuFs5g2TBu6kdOdiK69qx0MfBlaL7gOzQTzcYT3vmwOltCnoKiNXszwTsZ2dkJSBuH
         haCtvSbo9QAS01klajF4cMNrBbFyskD9KZoMMLppMwZpV8OqlFF/Hm/1i3rx173crJqS
         hb5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lqa4LkIKoxVmxTtb8jcG7Dhtvo+zPSfB21lawIhefQc=;
        b=E+ycRYK18qsylzreGik6KpKEghXTbv5QFwCtvir1bjTDGiOLl59Vs3gryynNi1s+SH
         WKTMVNE7w407wj9eYn6VnPb9n75jW6PCC8o81B6gc+HRP7PZiPipFnyeL/+uVQCyBOyu
         6NMISs5+Rb0QpQoL3i2FV/Y4xMJcFR+qFQgDc85wLiHKbLFKVZcv6nVYe1ZR0SpDriXD
         YLyflCAVQbW5ve9widTU2qguJIYndcDiAir1PV4CxiqqDDdl/1tGExiZ5l+x1Hh91Y93
         9h3+9Yr0ZflxeXvvFNSMAY7DT/0qKHgx+9KwK9qVtAIxx4fKJXclQLDOFyyLQr6ict+2
         Mn6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBMxRCDQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lqa4LkIKoxVmxTtb8jcG7Dhtvo+zPSfB21lawIhefQc=;
        b=XdA6bcD3L1MFDB3akrWVqxEfhvhy98xuxRG1jrWUzt73dZTLw0WkjIKTqHzSLGvknZ
         BVIk9lGfa6H7TFhTfVg1k6y6ixAeCDKsJIIGyj0Nw3OIXCwb80iy1cGdkVuXc8/0dhI3
         kHAQ9y6RWWBIG1rNgSthOkPS2E3tCGqIQyHNatjltTcQaVQB3YEHovOs5fiTDJWm+nbB
         oh2GjiKYtA5KYHEMrXAlrU93Wdw7GIqQrJCkvhBJZi+rurxqhudWkRhRswfA6dYlnTb5
         HkN2RVxBnqDEEBjoD3QBbDiz4fziNe4nq9+tdJYP/EKeSlwueQv0FoX5iwlbkuHhb7vT
         hUqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqa4LkIKoxVmxTtb8jcG7Dhtvo+zPSfB21lawIhefQc=;
        b=fQGEA1myQmJewNmep8r9UYlG5ZU0q09eKTPvjwek/osHzRghLFoxRHC4Ink8mUMerJ
         e81H2faeGnY41bIj9SXpdfs5CTTnDaOZi5NXt7k1g/BhyPLtdBlXHDoWgASF9spYzXRG
         HFBNScFTsOgO4eKhWp8uFMDjK2a6VM9lYVYC46r7pmjWTMUXun+ATK8x1NqRzECd6sX6
         rWtG/XHPDT7y9phgqyGv+jML4fDhThKzd6eLZPKCLn+6np/3YJmEV26+aPCUt1q6kAX8
         dWvNo73DUMLT4y8wgoEluJYrtbPQYQBcWKCmJE6LKc5F/Df0wwA04FvLSPokqcQ2fXiU
         naKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqa4LkIKoxVmxTtb8jcG7Dhtvo+zPSfB21lawIhefQc=;
        b=Co2obAibAnDyoeAT9eDwB2G+kPFk6tCLJU5uzCwEAjQYQmTleAbi5r8jYg1KHH5yQt
         C2aTiPr0v2HnE55pUQsOiTpiwR2Eg70RjBz4uvcSEIsdeIXOUgy31H2xeXzLvIcoCp+j
         ht80zhzFX6W2t3UPxIW0e/eOD9Skcc/jRmsZwlrPp/dO1NQr9JTS5FvKVWrb9IiD8Rks
         Wkt7Sc7rW1RTShUdHxhjumBODVThHJHPnIloOEw3j55X4oGaMIHEHUM0JhLzUvLXLRmm
         Jrxmg6aMUT+nEKC4uAibkbknoj3PBJYeMxGEM4kZpRdy4W5pPzI1ctceCtdTFUB/majg
         4udA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZGEYc6EBk6x/6abocbb37pabSWCNSnumJG0y3JeXV5s0lkZkVI
	wZT/O65B7Xjsz09F/zQ1T1I=
X-Google-Smtp-Source: APiQypLAeqtJ1tIib7PkMid5yvYn5j/+a0purR2LmzjtH4xkmnJe1KjatWCTdbfeCo2gtyVV0wgnwQ==
X-Received: by 2002:a5d:670f:: with SMTP id o15mr12727155wru.120.1586085798148;
        Sun, 05 Apr 2020 04:23:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e983:: with SMTP id h3ls3447624wrm.7.gmail; Sun, 05 Apr
 2020 04:23:17 -0700 (PDT)
X-Received: by 2002:a5d:63cc:: with SMTP id c12mr17852429wrw.77.1586085797423;
        Sun, 05 Apr 2020 04:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586085797; cv=none;
        d=google.com; s=arc-20160816;
        b=Gy2n/oIv8TLMWE/TE2gJS1kisUzFdxfiuLKnWRblwu9fv9vABpfxIGFN/s8JPjevJx
         c5YH6HZylimq82D2Hriz6/Nq0/KTZ9b4Z3WHEmlbJL9a6qqIehkGz7N+hpbKAgmu4fml
         ENsaCPbUjQTBbq2+3lM2x5yh8TfIjO2douaGuG+gZQUBkd4terAKO/zGnRgRtlqixnSB
         kUVYKbd+SF50kQHPrAZfQvMX2ESlq+ip39QpQl9WWRKDQ6KLAEYvILUiwG0G1l/uRA8I
         jxCP2zFfx+111FcYr3t/z1JWJxuHcbz9tygCldxDH33kPmk/rTg9l4u+Vx2qQU7VOqRU
         vczg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=++OTLTHO6pZmlPvj4+1ebFX76n5BSiNRzUwAt171S60=;
        b=s0FxLqP+nqruPKX2nc1Z7mIWc/w5TpQY6djYo/KNsr2WleaF+SWhO1qPE3hDgMqEkT
         gyG2qdfBcbrpBulGpLtTmRtW8h8izqvTpvXn0JUPh3PCUzdjk5FLyLIGUS9LPRrFxPsR
         tOnYCraaRlzZfyO3YRB+Y6beCwyAgbNsvjTjfCAc7Wauwp9ATauJLTL9FaMc5YUKz/9+
         sNyiEWGpkW9g4/CAkcVzmNwPLTO/JPLlY4ScRuStsvBnResy+LfYwSlcDeKNUSmtH0uI
         0gPL+F2WU6NAZNtT+EOPZXJ3tbgW0gDR3VnPkSZB2rZSrWt3BcO8SxZku3xjXG8mS6fa
         G5Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBMxRCDQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r8si605303wmh.2.2020.04.05.04.23.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 04:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id x25so658481wmc.0
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 04:23:17 -0700 (PDT)
X-Received: by 2002:a7b:c850:: with SMTP id c16mr1357236wml.108.1586085797152;
 Sun, 05 Apr 2020 04:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook> <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
In-Reply-To: <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 5 Apr 2020 13:23:33 +0200
Message-ID: <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pBMxRCDQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Apr 2, 2020 at 4:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > When doing Clang builds of the kernel, it is possible to link with
> > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > discover this from a running kernel. Add the "$LD -v" output to
> > /proc/version.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>

Please feel free and add:

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

When I looked at the original patch of Kees I wondered why
$(KBUILD_CFLAGS) is passed, but Masahiro has a patch for that...

  "[PATCH] kbuild: do not pass $(KBUILD_CFLAGS) to scripts/mkcompile_h"

...see [1].

I have tested with both patches in linux-kbuild.git#kbuild against Linux v5.6.

- Sedat -

[1] https://patchwork.kernel.org/patch/11473667/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVowLVpAxiWw%3DFJHfQ38KtU7AXXkVnw46D2XLM41-NCEA%40mail.gmail.com.

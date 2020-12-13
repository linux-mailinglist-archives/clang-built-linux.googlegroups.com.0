Return-Path: <clang-built-linux+bncBDRZHGH43YJRBGGY3D7AKGQEGPFBTXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4362D8E14
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 15:58:34 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id z4sf10053029pgr.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 06:58:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607871512; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyb6wpJKdFpZLGDgN7+NNbTspilqRBMw7mIDh7bE224Tick2rb2MoxOI3JUdncQ2sl
         +Cuvx8xxAeR3Hy/gBsqMWa4fVaGUos++tfMxvsMcb5QU9DGKs6BSwRwkPWvf7XODz9QZ
         RJJos9wURGY96mAsBLEzWh7NBbJPrr1hDYDWT+U0jO08Mv5hy7jXHhKMBVnRaIjCESXG
         itASvs1c/R/sXRNaD+R3V0olWw3vNXhqJmogwAxPq79dGFcWPhWTdt682rLLrkEy/LA4
         6JU4hA2/Z02u5mToVkcZHWCgFlk+18i2UqSgnDHZt1rfB3cp1OjUGBKmdcvgsOt/4jXt
         bx7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=e+UxrLULCkk0pN1Rz/moCAGB0YT9Tqsc9OI7bpfkCWc=;
        b=ziBe3W4aHfKk+DI6pvpOlriOExHko1ck4Wug4oEEobqekthb3Q932gG6uATBJJcVxt
         Bjd8e3uV7Q1zTcIZ2fGCYarsBXgr8W6juNsurZvtOl5aqt3BM8KcoKOU9YSzrIR2AeTY
         TB2skPJ14iYSWtuv//ThTaHSvzxO9RwDstVAS2o/ivQMvVxu+4VylXFI9FM0VLAeANXD
         u1dso8MrfSNPLSATLhmfpA0w1WI8xe8I+ivI3wVAyEOr7AP9X2FJ/QO/85JRXgAbezgc
         O8MLhZiruVcJpM5W7eMYephIKr6hhAQNg/G5h6MLf1Y4MMO4z3AwyG4AYnwNYdqZw6zt
         SQdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LpFXWaQL;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+UxrLULCkk0pN1Rz/moCAGB0YT9Tqsc9OI7bpfkCWc=;
        b=cP1kvoXL+0GQRejpXMiF7OVXszScR3nmAlRur5lPK4Rr236O8XZMFUHJD3XafAP0Ut
         ipdDK+VMqap+f456v31ajBn4TmuWKQ0pqHm3cHb0fhzWeTaH2VWAInWxoFM9a1gvcs2Y
         DZUzhAU/2lQGb6BphmMV/9i0AjWTG0Ib+1XSefJfWlNSZ0WMls7r8zd7afE1yLfdzuTR
         ipz2t3oJ5vL0pwb1ZLC6ilRy06ITWuYH3KjysZYZ+gASTRZNvH5kajqAp12KvRFGEOGM
         YnV1LSaDb7vxhFA3mCcxP57altrEPq5S3nF6sohRLByV5kD1alTbya9PVVkKYcXBNd/p
         cNGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+UxrLULCkk0pN1Rz/moCAGB0YT9Tqsc9OI7bpfkCWc=;
        b=pUJ1B0fcspe8ynj7iCOnClSywIVYAr12JXGrmRs2y+kS5NTvwMUYKlexGuxl4TjVdP
         zGbP358W9XcHVbqJE4/TgC4fbpe1eekNxHLVuWI02Tmw+EUlZXRS3YUrdW/vqUx7OSgR
         /FL4cpf4ok5iLW4sShoU6/3uOmj+RpMrX9oWcyB2VOT1A7tl+cS2sEZOZIClrMGKxYSe
         a7vX+RiSmkYpxchH4OZ/Y+9sqgAbKPl9UkZCcb+Zs13R3Du1oHW1gxW5oBEfGtxFtvfX
         w0yBW/QRQVL3agcf/N5ULKgjjiBtDG6S8pe0PJxZpzAZ6uDEKBCiEpr+jq/FvbTqFgR6
         i9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+UxrLULCkk0pN1Rz/moCAGB0YT9Tqsc9OI7bpfkCWc=;
        b=HtX7wRI7NmHg1Q8GALKCHTl3ey+nTTizUgP31f25i544Fyh3B1reYgg/ivhlU8lsqv
         TL1x81iMejeh7ewO1wXp/4WF2/N6VnlrAf2jUFssIZ+HzBGHU7MfmJ1iG1jneoQqetSq
         KlDe3VqT5FYEnFAGCiueP780vrdoPWwxX4gbyj4/qavI3RTfhR9YNyJ7+05sufIe0PWn
         94DdwFqq4UFt9+u+ko57k/BqFm3d5MRIzXzD+bNH4Rgp/rOzusZOkqTUwK/3p/Ip1Mji
         z6ws6F5bsxgGC4c9HtSC047hSBOq+07cl/b5yk0JDCjmnFGv2wASlGrA3FIXYhM+vX1P
         xnTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hSIibAODWg9dtULiovIMe5KEiqqsUWdxWlL4poaBe5vbm8vd5
	nyXwCJjqlImf+gni1B2Najo=
X-Google-Smtp-Source: ABdhPJzW8+ZbwGZtM9KS8gPCu1lzxKpfkOgPRqRWzShIfR5bqK6dBXi6yZH+AO91apXvQPPU2EyreA==
X-Received: by 2002:a17:902:7b83:b029:db:d71b:2c4d with SMTP id w3-20020a1709027b83b02900dbd71b2c4dmr9484094pll.81.1607871512453;
        Sun, 13 Dec 2020 06:58:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls7260410pjq.3.gmail; Sun, 13
 Dec 2020 06:58:31 -0800 (PST)
X-Received: by 2002:a17:902:720a:b029:dc:46:58f5 with SMTP id ba10-20020a170902720ab02900dc004658f5mr361617plb.2.1607871511650;
        Sun, 13 Dec 2020 06:58:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607871511; cv=none;
        d=google.com; s=arc-20160816;
        b=uXisTwu4FrTLlA5CQzaLRuc2wn2m6MoJ6uCzTiJz1b+1J3Q+jXYoD7pXRvmLxT3z3l
         +rasUP4hh3PMmVQdzagbTZ7JZ/eCmpGdtb/WPjHTNcyfqEDBvg8Fgr6O3mmqjSgSyG0r
         ROII1aoeJHf75q/t/hTHzktuFB51tbd27ABJSww/I69LzH0GIph+H6M4dgqEEcwbVOqu
         L2OQP0D2gqlCaXTxvEdArbaPzL3eqp5mDVHHwgSBJ+n5Ai1sTc8mjlA81VnpQs5GX0x8
         qGxr0gymrcueOK5XSKSPYI0KoIB+OkLLeR40ocsbj4OrXSXU7QX+vsDBhMSRN1oas92l
         B7pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=plNVcmrce8g2J8M3GvZaxtbh0wYjjwJH9EhP4nToGcg=;
        b=dNBLxDsiPMWFY69YKprUBNawTb0SYTkQJrIn7G08E0f9Y4kgb1fR+8vjKg1hGID1m+
         2J1K8ObF3J0/d8PPra+JQd+fIbHcvI3OU5EsaXXJzeeMrYp0A+CySgVPKTFUTbK9Uqmt
         z+V7Uar8kJjrxdZXWFY0f8l9Me3QZIFlQsFaLepGK28Mza8A9se6vhBiDUgGGdxJugSt
         3kaE0/8M+cChAr34wiJc/U7kuFjcsD7s8/BJXq0PgV9qrU+KGA7eA+LPQm/6yVWm6UMo
         +eyGmd2NO8Z9SP/w8YNuiqrS/bX3MQSf7te8PxR75kVdTSmgaqJOc6BFL2Z3VsFOqdMV
         Q2sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LpFXWaQL;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id d1si1131702pjo.1.2020.12.13.06.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 06:58:31 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id a16so13045950ybh.5
        for <clang-built-linux@googlegroups.com>; Sun, 13 Dec 2020 06:58:31 -0800 (PST)
X-Received: by 2002:a25:538a:: with SMTP id h132mr11841975ybb.247.1607871511230;
 Sun, 13 Dec 2020 06:58:31 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com> <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
In-Reply-To: <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 13 Dec 2020 15:58:20 +0100
Message-ID: <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Guenter Roeck <linux@roeck-us.net>
Cc: Masahiro Yamada <masahiroy@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Shuah Khan <shuah@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LpFXWaQL;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Dec 13, 2020 at 1:55 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Witz komm raus, Du bist umzingelt.

Please, explain this reference. :-)

> The key here is "if nobody complains". I would argue that it is _your_
> responsibility to do those builds, and not the reponsibility of others
> to do it for you.

Testing allmodconfig for a popular architecture, agreed, it is due
diligence to avoid messing -next that day.

Testing a matrix of configs * arches * gcc/clang * compiler versions?
No, sorry, that is what CI/-next/-rcs are for and that is where the
"if nobody complains" comes from.

If you think building a set of code for a given arch/config/etc. is
particularly important, then it is _your_ responsibility to build it
once in a while in -next (as you have done). If it is not that
important, somebody will speak up in one -rc. If not, is anyone
actually building that code at all?

Otherwise, changing core/shared code would be impossible. Please don't
blame the author for making a sensible change that will improve code
quality for everyone.

> But, sure, your call. Please feel free to ignore my report.

I'm not ignoring the report, quite the opposite. I am trying to
understand why you think reverting is needed for something that has
been more than a week in -next without any major breakage and still
has a long road to v5.11.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kML%3DUmMLyKcorYwOhp2oqjfz7_%2BJN%3DEmPp05AapHbFSg%40mail.gmail.com.

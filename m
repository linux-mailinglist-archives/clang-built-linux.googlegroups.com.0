Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6W6PZQKGQETYWDADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BA61945D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 18:50:32 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id r23sf5135236otp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:50:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585245031; cv=pass;
        d=google.com; s=arc-20160816;
        b=tlwn4FD10I2lRvI9nXTTFejQjLlsFpFlNQ1IE3MpU4PQ4tpwKUdvGpV2AR/RMP45rg
         B6wQuKD97s0eVvKh/vJa1prul/jjwQV99fzCyGN2QFj8yTzT3++RKoJifc1bm5scs/WL
         Rn1v13ezkTPtYFTqhhzGUVhzLHGOi3waciwgBS2Iu5GQVZs82vr2PeZs6gg8QlwEVjJF
         MfQ+hZpNRUpBdI1dw38L1FRLFGSVnc4mVtKNP/Sv+QMVfBKl7gIKXyubhWrHIY1XhNAh
         ZbiUAnk75cGx5eJD3+Aas/YmhYv10flcKwL6LyMjYXDzsLjaUK7jRXgsMRJEfbvoSE9n
         CaBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ib/0jz30BXhCkESC8TAvwA5qApdTOBoGdOBhsRyBHk0=;
        b=bKC5SZMMDbG8WR4YNvXdIjAcmjSDOODyHo5HFeWhBx+zdrobWVfa/FTMc2qxFKPNAQ
         kX8Mind2O/svog8wj5q3MNeaCEvzBrUN3dz/OXEG0NWwCy/JnoIs0clSoi4GB3ap1tDL
         bCqmuLQx+RxBrd5CIzHDuD8C9uaq5Nux6Ri9rUH/acA8u1yH/8VX1IqouaSyPgLRl0Du
         g2qUWVgEbmvIcHUU11zgdhB9AoF7LO6C6VAFbJowOGvSjSJ8Qg2hRcbtT+KHvpsOl5fB
         LnRKUpIAtRRs/SJ/dvx8iJUakXGcq0m1uRy6/fSV1yQAZ3+crx0pzZOopcGetHl/MD7b
         UJZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=brsAwQH2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ib/0jz30BXhCkESC8TAvwA5qApdTOBoGdOBhsRyBHk0=;
        b=DgZOQhaVIr3MXK++OiBXIxAwMNDnBf69e59AMCxUfi0v6zecHXEwa3rEanQ25HEdA7
         Jes9BeZ9FIkxvFT0jKfUkzWVuIujs4XS+P8oOoWJheFWZt+sD3rLnOvwUGXgn/PwJjRM
         0uZAcj59B4YCDQC2OYpxpWgLYZh6FPyQdaPScZ5u9LUk9kHzKZAXr5KkFBRlzwrdiN14
         P1QQ+PNsY/V6BT1CSoUOza/Zfe8zol2NUhGkvpQcrjXuHnwV7CpCdr36qz6aNSiXvzee
         YK2W8A7/1lXsApzypsbx5C6kYdlpzMDTL+wtqlntoWKXwKfvJqAw0gT1jlxpO6P3Mrkg
         dK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ib/0jz30BXhCkESC8TAvwA5qApdTOBoGdOBhsRyBHk0=;
        b=IyL5zFLAbouV0xKFMCRHfyuWukmKQ+BCe8AUd/nGjj5b3BjzGn+Y9MjN6W2wgRKZqV
         2M0iH9mrMP4gJs4H++a3/hLOjY8PAjg7wAt+xECX7igzcK5NorUoVXcv+X2UVEc93xoo
         bmNno/a/5LK4wmo7yM8uiSeqQc5ZFhTn0gz36gi0dZuavCQEHoe2xZ0DJdZM30bI0SCP
         aQsCYfPscbhTQsHEJPeCf5f83zlzW6w8Ix8mpsQGy4hDQmLyUI0pyz1o3tvbZhVfOidT
         tXQpXSLVaz3w+MU8KsWWXTkiiFOPLWN24AjY1/jVW2Wxf0XX9OjTEvSk54SqIk1M4RU3
         nCsw==
X-Gm-Message-State: ANhLgQ2KW/pGBb0NrzvAhZ3tXkPwu25PZeC+E+Jp+SOM0af21ki9CWE7
	mFw9qH93vFPhRm0gCcTxZrs=
X-Google-Smtp-Source: ADFU+vs+yOFDiCscZBazA0HxBV1/9aRooknII2axjhLTHYXUTSTA5ExrMoIs3LAegdLOWxFRGnkQDg==
X-Received: by 2002:a4a:e9fc:: with SMTP id w28mr6007199ooc.98.1585245031324;
        Thu, 26 Mar 2020 10:50:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls123651oii.2.gmail; Thu, 26 Mar
 2020 10:50:30 -0700 (PDT)
X-Received: by 2002:a05:6808:103:: with SMTP id b3mr1084288oie.46.1585245030943;
        Thu, 26 Mar 2020 10:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585245030; cv=none;
        d=google.com; s=arc-20160816;
        b=v3eGat4FU5YAixT1nz5mvhHtkrWBVPoVuZAD8gLTDmlNKitxURCjhYGWB8Nry/Q/Jx
         TPF1kAsRM3v2UphvQrmO0oW9Axumn/pXGRAaTbkC6FybXZyqTxUi1CgQ6fP0F6WQYHz2
         F6AnDBT9iEimGfGJsXnFMkCjASRK2ZIE4IvrKXUMl+WqAxHhWYwiMwZkN6sVO/47gFVM
         +E9v1fzkD5ZjPWEIhSZp3dT99mSbBcFZCJ0xnaL38/6hRRLvbCb6LjRDsVYTj56p5r3F
         U5DFVM2CEoV8rP482gvlBtVpgf6dSV5akEjcQMBnQNeS2wdqxmLbZrHW7cyKTMzqeKw3
         qx4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cVhUI8kuQt6IgMPqeY7HijNVaAh3KiroMym2JdHvBYQ=;
        b=nClD3pP6myXXJLERhx7KS4n0UXwlqyXLgZXtQXAle397HyfVRuloSUtcfLyH+n5fR/
         jiCmBLQtTT9B1eLygW1uOkvMNRIeaunY72u7Uby4txCbeoFz7WsaItK58HZ7yXWdkJRT
         uTNHyI92bXekLaHSSb+4UBwLxNeMwuZ2O4MFDJmGDSMsf/BGP8wg/xl3r6QVe9pdLTm7
         6WkI1XbFrDDqt77wG47XqbHCVJ+PcbPRzphuIbnjcwAsrmOEMkycW6m+RY3gvqqwnMnw
         ceP2+dHdZ1Y4rtzA0Jgp9bqpBSk4aqrTbtqVsaJi1Yf6trVU6cSvneFqQInbInsc5OMJ
         pGiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=brsAwQH2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d22si314626oti.1.2020.03.26.10.50.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 10:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 22so3139445pfa.9
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 10:50:30 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr9894991pgb.263.1585245029988;
 Thu, 26 Mar 2020 10:50:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-12-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-12-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 10:50:17 -0700
Message-ID: <CAKwvOd=3APTxrLD7U+hhMYoQm_ZTktckk-jurpwundm=w-pqKw@mail.gmail.com>
Subject: Re: [PATCH v2 11/16] x86: add comments about the binutils version to
 support code in as-instr
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=brsAwQH2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Mar 26, 2020 at 1:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").
>
> We need to keep these as-instr checks because binutils 2.21 does not
> support them.
>
> I hope this will be a good hint which one can be dropped when we
> bump the minimal binutils version next time.
>
> As for the Clang/LLVM builds, we require very new LLVM version,
> so the LLVM integrated assembler supports all of them.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - Change the patch order and rebase
>
>  arch/x86/Kconfig.assembler | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
> index 91230bf11a14..a5a1d2766b3a 100644
> --- a/arch/x86/Kconfig.assembler
> +++ b/arch/x86/Kconfig.assembler
> @@ -3,15 +3,25 @@
>
>  config AS_AVX2
>         def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
> +       help
> +         Supported by binutils >= 2.22 and LLVM integrated assembler
>
>  config AS_AVX512
>         def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
> +       help
> +         Supported by binutils >= 2.25 and LLVM integrated assembler
>
>  config AS_SHA1_NI
>         def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
> +       help
> +         Supported by binutils >= 2.24 and LLVM integrated assembler
>
>  config AS_SHA256_NI
>         def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
> +       help
> +         Supported by binutils >= 2.24 and LLVM integrated assembler
>
>  config AS_ADX
>         def_bool $(as-instr,adox %eax$(comma)%eax)
> +       help
> +         Supported by binutils >= 2.23 and LLVM integrated assembler
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3APTxrLD7U%2BhhMYoQm_ZTktckk-jurpwundm%3Dw-pqKw%40mail.gmail.com.

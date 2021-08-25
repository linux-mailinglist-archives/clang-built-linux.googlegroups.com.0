Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXX6TKEQMGQELS2EL5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DFA3F7E1B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:08:30 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id j33-20020a05600c1c21b02902e6828f7a20sf222430wms.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:08:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629929310; cv=pass;
        d=google.com; s=arc-20160816;
        b=wZB4ttpcsUC49bzIhBo/H0FxXnyKQ4rITyA3j+PdtVVZFT44/jCt+wT1YUKrH0cMTl
         zrPHDqqdPhTOkSaK1LDq2wkEavKO2uifxPH+xK18F+SmdzgAr+G5rg0l6GM/Zd8FYkyM
         NFopXOwIhV5Qpz79MVO9CzHkZCyzL8VpaG4sdsuuNuac03rkNmLobOvQAdbuuemNUBUa
         dyDn42LaTwLce2X2FAfZbnIvPuXVH42/BG7Pb85I1i5jMHtfamf+Bs6RS4QAeyPttl4s
         LcNCHLFH/+RyZUKRbHa/nN5ERFgLd6BPcxd7bthEpLe7m+LdLy+aTQEVuyLftFMlsdqs
         BRmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=heerkvxFimh1uwf/ctJahpT1C0ux1hRt8X1wjloS2RE=;
        b=cy+z964cTCoTUmx8HwjSSssDC2JtdrPELiiJkDmjknxxYhiyBmMuQZj5FpUjYuevjk
         BX3GAsdLbtqcjBvxz6Xv1dK4vEeYopfbBUv+IoHXgrEjnzpQ1zV4rpjKEqFGn9C78tzE
         tgjkQjzv7HVRkztkfUQUP3xatNXFIREiKjiAKRfmgywwYET9LLt0QKUR/+FBrbmi6x0i
         cgy4hGMfQC/G1L6sTthkjUJUdl8PZY1OrT9AfypBJMqOoDAILzaTD9jvgAATiqKrYCEd
         FfttdpvHP0Tx2oCXTZ8PZEoZA7PTueVOeFmKChndED5NNaMmKmt66zg0mt8ZbqiSZCEC
         AHKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pLFAvdXo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heerkvxFimh1uwf/ctJahpT1C0ux1hRt8X1wjloS2RE=;
        b=nToFdFvKcAH8qaNHPFTPtByLGrpYpS/nqdbCtEd2hemOnKE45H9/Ku7Dd2srF8wsy4
         IvSaootyFhMa69BSV0/RxFlFmxcl8AoQqfRfgtPEZjnU0UmtRIGrVYMs2+Y9Hx12BlC9
         9rSYBQpze5rqDWHDTlvOXBvkd+M+dLrTjwrVZ6pOLZ+OPzbp9k33KAS6uQ/OmVwIfAX9
         CAd86tpFSuiVmTJXKkRVgNxIH4Djaw/u0Z326ro3er1zMSMxIyXoPPJ11HhC9gKvpUkm
         HRGwGi85/Dez2qiFqlLwwC44Pmoyh0TtjOYNFFYGssEpcg2ckKSniFgCGZuugLo6FI8l
         4cnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heerkvxFimh1uwf/ctJahpT1C0ux1hRt8X1wjloS2RE=;
        b=oMrTPVjOzqpxZ2aaCPDCjBrhxZJHKlIQkwVY8XCwyIAAPYJPn7rFmOuRJy875zOR6R
         V9SrOHJiw9sRL/RHX2X+r4wa08nXIKOSscvN0zauOaTQNqW+6xRo1OFsNfNJyMQvhO2w
         ZaKrh+vnD5yIJIjtRkDZ38JBf3O70So8uUt6AU99/5uN8ZArrC0nQQjfznV85ZLZMNox
         Ql+/IDBNu7w6Jv3753O2v+dNCMnOGuU/A+g1ee2CANuA2mhpZMYzifaGoqv0cWD7fK2L
         SC0KLlodx/aVE+TEZbqj9nxq0msQ8Ti8ETTKrdjyVEyES9JNxJr3UHRE0N/UxXXgRX1L
         o7Rg==
X-Gm-Message-State: AOAM533D9ECi73RuD4Xgul4Lfx0P0MoKxwv0jVnhw9NQZ/hp7guZ6w5W
	bGzZK3dQoO0Bc2rFjLHDcts=
X-Google-Smtp-Source: ABdhPJzGc15Fx0X7JKcJnUFJu+evxuVn1sd9bOHYJ0fNdSkDUU7+XkXlK4XRbSGv5D/kmYruYplHRg==
X-Received: by 2002:adf:f143:: with SMTP id y3mr357534wro.168.1629929310328;
        Wed, 25 Aug 2021 15:08:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls4639938wro.3.gmail; Wed, 25 Aug
 2021 15:08:29 -0700 (PDT)
X-Received: by 2002:a05:6000:181c:: with SMTP id m28mr318735wrh.143.1629929309563;
        Wed, 25 Aug 2021 15:08:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629929309; cv=none;
        d=google.com; s=arc-20160816;
        b=c1ZxhE3rXTc1phLGCFTLX6SqZN3wtPIDqrViCQMwswrw3cysPYNoe+dOFfm48oIY2u
         YFxCPMb8Rxv+R/dCLHe3LVU2gQxIrDdqO3SxSUPyeJzJa/ivxnmuAASY9SjYUqdGY1lP
         z+Tq5W2OBtW0Yk4H4IU770S4jiBvg8GiefNXs0+PRrIaSo4Mx+vSl1aLghkXI2YpoiEc
         htWfm+9CZGUQ8ArAKDPwHhOf6YDjLIcb1FvV9P75/qJDHuIqwy6Wzoa8urkFIctgJgil
         WPRFikhIvBPA02i+OTlwiOWyDkaiCgIrMdj9Ps7QuxywHUIfRMdmdimOFIECeCPjV76F
         tAqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8QrabiuUOL5RpIB2bUJcrd5bYgE/GbNoTnPnvGmMIGY=;
        b=v2CvJsU6nFJE1cq+yJ0kIEBFEK+BLXApsHMEBv/cLX/3gdLd5az8N2z3aOnShtvQU3
         thcVQ4iFqkSxmyoD5LWVo6MedvrIQksNC2f8KsE1uDftfL4feVli8CtpwXftnQHB8PFC
         sMVtsYXhzTcPyu5pdvrc2MEvcr4FoIXfX7iHieg16bG0wmtbAUCmxXmj9ID/7ii1gUH3
         zROn0VAWEeBJAbwKTvhC/ML8MALs0Q3hRNB2pvEDjt6unY5lNGCDE1T7dVA0zhqOsQ5J
         BUnEm7QdYW60BpkahDfKhROkhm5T9JBYBtDgeOElkAAHa9PELiXjBMGedXrfw9guGkKi
         XRbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pLFAvdXo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z70si553164wmc.0.2021.08.25.15.08.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:08:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id j4so1997006lfg.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:08:29 -0700 (PDT)
X-Received: by 2002:a05:6512:3a84:: with SMTP id q4mr205725lfu.543.1629929308804;
 Wed, 25 Aug 2021 15:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210825211823.6406-1-nathan@kernel.org>
In-Reply-To: <20210825211823.6406-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:08:17 -0700
Message-ID: <CAKwvOdn_3T+sz-5u1Eb8gXDvC3VNyx1vu=1_dxdk30Ucgzqmsw@mail.gmail.com>
Subject: Re: [PATCH 1/3] MAINTAINERS: Update ClangBuiltLinux mailing list
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pLFAvdXo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Wed, Aug 25, 2021 at 2:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> We are now at llvm@lists.linux.dev.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  MAINTAINERS | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c6b8a720c0bc..8e36f55430de 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4504,7 +4504,7 @@ F:        .clang-format
>  CLANG/LLVM BUILD SUPPORT
>  M:     Nathan Chancellor <nathan@kernel.org>
>  M:     Nick Desaulniers <ndesaulniers@google.com>
> -L:     clang-built-linux@googlegroups.com
> +L:     llvm@lists.linux.dev
>  S:     Supported
>  W:     https://clangbuiltlinux.github.io/
>  B:     https://github.com/ClangBuiltLinux/linux/issues
> @@ -4519,7 +4519,7 @@ M:        Sami Tolvanen <samitolvanen@google.com>
>  M:     Kees Cook <keescook@chromium.org>
>  R:     Nathan Chancellor <nathan@kernel.org>
>  R:     Nick Desaulniers <ndesaulniers@google.com>
> -L:     clang-built-linux@googlegroups.com
> +L:     llvm@lists.linux.dev
>  S:     Supported
>  B:     https://github.com/ClangBuiltLinux/linux/issues
>  T:     git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
>
> base-commit: e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn_3T%2Bsz-5u1Eb8gXDvC3VNyx1vu%3D1_dxdk30Ucgzqmsw%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXUHTOEQMGQEHFYIQXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 086483F7E97
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:27:43 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id v13-20020a056402174d00b003c25d6b2f13sf459842edx.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:27:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930462; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldI4FeBPKZYWzGu1Tzqrj/tduRNlhTQgP+tEvVZfSmoi7hZp2E5SJaDjKJs/UVFPEF
         1unL9BOH3BY8qCHHCm0i47q9AQMc12b0KlCmk5Gxv9r3UFMe9Cp8puirINEdlTh8Jqxi
         zHBdKtXvu+p9efNXbYCF4mv95lrVYC/E2rkvO32DBmVx4zyOlxRXUcFfVKNnRRnKOjlm
         t56Eiu8+7cbxtixkKjzk7gLJ2Wq/u+661BZu/ea49m7Ywg0srNh0hcTpXYjqX3N4drec
         hkGwFP92U6BaaUfb3k2OibS1pqm0HROK9sFxF/4OZ44koPGMJD8kOK4T0S2VnYb5yvwI
         Lr4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8/YwFLnH5LGXSkgeuURpjlbkg6zR3kE/3PNr8f8PXNw=;
        b=by/PkOQr0yMgYAjFjVLi0UCDUIMeorYc/FbObIpH2Af8xfZknqT+Pht1JHxg8WvmaL
         +nUceVg3D5wyh3aSXv6Z9Qxlajpw8T42pfjtYg7gb3jQBid4ejtNsiJKXnSErbSZDrek
         nOsaoqd+1RP2pfBOtqWpjWuh7L9+SrQddQz5Be4eZqD/6Cza/50WtV0uJutUN19r6/lv
         gHObjgOhMgXhmrzj70XkAMkrkTJjRJ9WzI6a4jvdkj0/XfjAhpCV6ItjnKHcxBe+puHS
         TyoNw2HDotrhzFXu8b73s8tjFKG8uvfa2BbWL+51mX2IcW8kRfR/hCByXk6nUwEpqz7v
         sfkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cLLRlG3z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/YwFLnH5LGXSkgeuURpjlbkg6zR3kE/3PNr8f8PXNw=;
        b=lTVGnFyCKUpkmVIT700r/HRRZBJis9ixjsqu5JHN8UeRZs1ZHzjc2OrH8OcBZLisz0
         NMjtb+bFlegHstUNG2Jmr7U6rjsJcIubkpfTzRQ2GNEx8LaEPPfxNTG6At1a+JCRfv2r
         tfTeJTVXRwKHhfAzBAatwozMV2bBtqOiTiN8qUbgYjfwxI2Hzqa8yoodkgLe8AYjlIHO
         be/Hqw4UP8pdUDxRiB6ef+n+Io5+nhHq8ms1PqGpohJl+Ppe0M6yalcWJMMsWpgB8DQE
         Bt9gtQWMAqLGtkVSd8lfmxNjcNSrLBFahSrzQU7XFGDHNIbpKCgrraHaw/I73cGf00Nz
         IRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/YwFLnH5LGXSkgeuURpjlbkg6zR3kE/3PNr8f8PXNw=;
        b=E8s8KC+mcNa3F/SPVSLGY/03cJXiD8tBPrJy29Lq87wEslrq4JkWPyEOTxhpVXqyAT
         d+EiFYhszQQREmibotuBjYzAGj7GAIbsNUGUN5T5lPYzKUoyw+LOEwRkEueuNZVoQ9rJ
         s8cC4Pjjbs0UjYvvh/gjQRqI9xVlgd7qLXVzJ+vm+OD9mRIs0W1pDsQGROQHJfXtimO2
         LXVGRT+/7/1sYBgii17p3/L6eLZOJGUmyPLwwAkXziU9tcb3FmHJ69wJQNkzKycHgYSI
         AY0AHISqIYeg+rVM7bIZQ5Mlq50+B5vpxemI15udz6iQTyWptVnRrjUrypm7iitxF9BV
         lFsw==
X-Gm-Message-State: AOAM530Cyb/B4iJYiffwDhi+7l9Fbxl0ut3Kh44OvjysYGSgqMR01mmA
	HYBX56/8SeWt5Uxu7nKdkwY=
X-Google-Smtp-Source: ABdhPJz722KT5LH04ZJ5hx+kd1YQB5iKonTcsLDzrYPnz9zXpZfGBtbpsHMWkItLimV/63236wUl7g==
X-Received: by 2002:a17:906:85ca:: with SMTP id i10mr955491ejy.316.1629930462801;
        Wed, 25 Aug 2021 15:27:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls3902917edt.1.gmail; Wed, 25 Aug
 2021 15:27:41 -0700 (PDT)
X-Received: by 2002:a05:6402:158f:: with SMTP id c15mr776238edv.253.1629930461941;
        Wed, 25 Aug 2021 15:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930461; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdU29nJxR4Ye+xVj19l7Lahc5d85cCi5YpfoU+Wdi/v0RZRLq3rBC6S69i6Aoay4DV
         s2Z/JhIRFEb7M6BizeNwonBn9tmbFsBtijd1NPDHojdkiRyCvt2FeYGr9dEWHzFa6/SN
         C/YFf25ku3glrMPnHYTLUROHjgWg8Zo/QAjJvOfd2Tq/CGAq9bE2tBTg3AE+F+0yB562
         1lk7XtF4W/jQ6wdq0BJUHIGMun29tGAuXkgytC4QlmgwnpMBIGUm/ft9bv1o3OiI8WoW
         fFV2a/4HPHUIuD0+ht29WMW2+BQr0vhAZ0XvyWjCii/aq3Z/SQzrOrjtD6CDgReqDXRX
         72Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/lT1I55KczeyyrBKJaTcaNt3EKQYdb66gBkFV3oKdmU=;
        b=mhls/nbmYgCPDaiqr5Lfk9ws3BjXoZtrQLtq9x9TQ6aWovwivheanO/Sgu0wfdFONL
         tUbkyMGWZZvFIOEIGGit5mKwnQhFa4HZBt1RDk6DiD4oPGZnt0rq00hluBzQ/Pm/TUSB
         u0xqNByDlxIQ5mG4Y3Qcol6qs0rcP3DIH5yQxJH9+lZS7pWQy1avqBC6MOQ1T17m2zdH
         DTolrkbWix+SoKit1vvmelI6ZfgIk869J5LxqG9p+PW4O8HguJ57O/gMl05Dud2umTN4
         86ILjpxLX7Gl/ACTAHgPwRqvspMepSNforgetsTEZd+DryIljcss4UBpUwM0ZjAuObf8
         mSjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cLLRlG3z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id w12si100560edj.5.2021.08.25.15.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id x27so2151736lfu.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:27:41 -0700 (PDT)
X-Received: by 2002:a05:6512:3991:: with SMTP id j17mr285821lfu.374.1629930461195;
 Wed, 25 Aug 2021 15:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210824022640.2170859-1-nathan@kernel.org> <20210824022640.2170859-3-nathan@kernel.org>
In-Reply-To: <20210824022640.2170859-3-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:27:29 -0700
Message-ID: <CAKwvOdk8nj6Yu=+k+cDx_rKh=ug6+VyYRzzFGDiZjrQQ8q7eCw@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: Add -Werror=ignored-optimization-argument to CLANG_FLAGS
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, Masahiro Yamada <masahiroy@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cLLRlG3z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Mon, Aug 23, 2021 at 7:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Similar to commit 589834b3a009 ("kbuild: Add
> -Werror=unknown-warning-option to CLANG_FLAGS").
>
> Clang ignores certain GCC flags that it has not implemented, only
> emitting a warning:
>
> $ echo | clang -fsyntax-only -falign-jumps -x c -
> clang-14: warning: optimization flag '-falign-jumps' is not supported
> [-Wignored-optimization-argument]
>
> When one of these flags gets added to KBUILD_CFLAGS unconditionally, all
> subsequent cc-{disable-warning,option} calls fail because -Werror was
> added to these invocations to turn the above warning and the equivalent
> -W flag warning into errors.
>
> To catch the presence of these flags earlier, turn
> -Wignored-optimization-argument into an error so that the flags can
> either be implemented or ignored via cc-option and there are no more
> weird errors.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Good idea.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  scripts/Makefile.clang | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 4cce8fd0779c..2fe38a9fdc11 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -29,7 +29,11 @@ CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>  else
>  CLANG_FLAGS    += -fintegrated-as
>  endif
> +# By default, clang only warns on unknown warning or optimization flags
> +# Make it behave more like gcc by erroring when these flags are encountered
> +# so they can be implemented or wrapped in cc-option.
>  CLANG_FLAGS    += -Werror=unknown-warning-option
> +CLANG_FLAGS    += -Werror=ignored-optimization-argument
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
>  KBUILD_AFLAGS  += $(CLANG_FLAGS)
>  export CLANG_FLAGS
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8nj6Yu%3D%2Bk%2BcDx_rKh%3Dug6%2BVyYRzzFGDiZjrQQ8q7eCw%40mail.gmail.com.

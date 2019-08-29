Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNDUDVQKGQEMVRPVEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 451D9A22D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 19:55:42 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id k21sf3132910ywk.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567101341; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekn4T9ImAQx8RA3seHHYdCFwwZfrLjoTJafWqbFtbfTDua0PK/TnrTu6tb6lYolMVt
         EcYHyeekwtVnshiPYTR95GAR/TqVtCt6V3JwVrf7CdsPbY4bPq6cpE6B6MX8YBVdP07R
         sXIvZNuGVkMuZLL4LCrdcWNQS/i9EAPLcP29201e/lIvqlEdowr36A67TNo3QP7M2aUE
         5GLn/RE83fWst+mst8x1KtHrTmgdjD//sW1OUbppD5hE2SVAce4WczMzymj/9s9uxmPC
         saMgLS6DLS2ZcRjgCtF73bhVO6jcK7aBvhFUheHxuBd/kIWJrd4PkU0jFLwKLf5idgv+
         A0rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gMPmhcfvXn56zD74ZEZLfRZ18XQ7rWJcp8uB7DGaWrw=;
        b=xCo4lU/yFHRbusaeCTkERugTGVgozM4AH04THmHFnfWSQovULcx58S9e2iosBmSX0/
         iodvb5tcoxLw+r+aVKdkhW7lsLiscKGf2F4T/4p9wLHUliW4yaaSxT1nQYauc6hgorrz
         0gtS4MyFkgEr6P0JLcDNUrnXrJXiBG6VbUVvrg5l+7gkObQderdUhY3Prah9J7DaZ+Ft
         WlZQF4ZDOIc23WO+V7qTQvZsP/MgMYZEwnPGO6e7SC7c2D87rgKKXYn5UKcweG1oDEjq
         RwIzMyoChmYXJWrVuH2REreyGbDd1X7qnCf/7lJu1VlY/iAqgKThvVtPYwu/UoRygvlY
         jyDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NS3pQoXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMPmhcfvXn56zD74ZEZLfRZ18XQ7rWJcp8uB7DGaWrw=;
        b=ChTIkyb1+J9xXzv1TeYhI8/Hrmg3oC3Vac92yNOwRI1x7C4h2Y91j5VdOspgDXw21t
         ntUHeV6ZADdLqiJJ8hIHUYhrE1rqbpmg9GQslJc9yYrVj8sdjh5LoFTTQWfb+Gjmkegh
         v2RwWT5WlCim6EAi86wTRvvfLl0Muq589qJs2oC4w2qYZQrG754xt3r1M6xVUA/OWp0n
         GMGLRtuDmthd4aTsNC/Gn3zh9+QKwj7Eul2HJ14a4tGGz0Jj9lOX3tKFEhwR1PXNVCu1
         Yw5hAqHqYhqS1nbk2L7SEiEA1jNej0/WKLtiDGn7WmA5LGvrndXVPxVVPwh1Ucc+o7Ap
         +DoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMPmhcfvXn56zD74ZEZLfRZ18XQ7rWJcp8uB7DGaWrw=;
        b=N2OC0Dfq5MbNKWme0mPyEc6QScdTgoKCXweYmwIL775OJVhGzTqdk2OsiCDTmXdcsC
         bGJN4LY7qNKtVaTqllCvgdthSS0zOXk6we4L3tu0MYDBlLde6ewlqAkOB4j1k7Eddy6w
         M7sfeLPWCdBTKUpYWwNNazv4Es5NnH71nvtbknLUV2k3f2oAkmXaZQHXIUhzBeppmyUr
         6iHyHvhPlsc0mSvBUZR4PH0Y9tik1Prjo6D9x8pzsYxfI6N94i9epityGoce4jVJOnQv
         A6Zo0vQHKQJ5VupaqvK9M70x9WUdpjn5HmVgpIzZtaYYk90EvM0LolJ6ndJCIlwP5kpx
         2ovg==
X-Gm-Message-State: APjAAAUcJXJxQFd5ei1M4rEdw7+FK4uLwxaRwdm1CmVXMBCeRu+YyHf+
	iEUYt1qk3n8WcC03srrR1XY=
X-Google-Smtp-Source: APXvYqyNLI8P3aIvLhfL7e0LB/noPHO6DrSepv96Dng2+mc4iCSI9EbUupVxMbJR4K4fGyYG/wgQyQ==
X-Received: by 2002:a25:41d6:: with SMTP id o205mr7980315yba.443.1567101341296;
        Thu, 29 Aug 2019 10:55:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:38d5:: with SMTP id f204ls16465ywa.8.gmail; Thu, 29 Aug
 2019 10:55:40 -0700 (PDT)
X-Received: by 2002:a81:a111:: with SMTP id y17mr8403898ywg.301.1567101340905;
        Thu, 29 Aug 2019 10:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567101340; cv=none;
        d=google.com; s=arc-20160816;
        b=zL0jJ33W/T/QlmOeYSCefiSp2UH8ZFZjU9TU6sZnHsF5ryHrKGjrPDyxoeZywzheol
         fuiVFAGecmu+G61sUky9JHnn7k4v9svbDd+TMSqc4efIMB8Q7oqMCN9FIrdJ48itpye/
         nMFx4z99vvQMkyo7uvQ0Q9Wh7zLvjkvUBiIv/M4ak8RKt7AnQMumoy+Y75jjWn8/s1PG
         tFzPz4mLqa0IOItMz9K8HeA8eafvQv8YZAGY8ruuvRIyVbzR5R06Tp/x82rMqwKDpaFJ
         10t65tqTNMwKV2fLQnCRhe5rrqgryTNFd9rd89EuQBKY4ie4LV+ySNcJB2kZKpxkeW4a
         b/Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nTiBhHkHMJRRmQp07hUV0eTzQBNN9VPe28f+dHC32dM=;
        b=H2RlCrcBzHJ7xQzPmrmRt/DRAldk6+9MzU2pxQqm81ac73Oub8TDXOo61G09FUGp3X
         +Khr0jOFfXJTUOoIDTgnEKg+ZnV8IjSZbMB//N28TWFZGFJM8/IUWyRsh0tHtwdYP8ij
         rD65fGnqtFkWH/moFvjsQ7lJUE/M3mwuSwWr/+HqS4cvO5cSlHJ4MD16pys2bM+3hyoO
         aXgLUQJGesYlOpGNjIL4mTZDwiNhtnotSLVJB2qgLU10vK8B/DTCUcLmAzsKk9E+UMRz
         BAk9a388Eg06J/pQQn30irk1ySwfq4YYwOHy/RXppyS1Tp/XgdSSGBLCv6oQJAL2wsq3
         mVGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NS3pQoXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p188si166212ywd.1.2019.08.29.10.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 10:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 205so106057pfw.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 10:55:40 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr12922205pfg.84.1567101339951;
 Thu, 29 Aug 2019 10:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Aug 2019 10:55:28 -0700
Message-ID: <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Stefan Agner <stefan@agner.ch>, 
	Matthias Kaehlcke <mka@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NS3pQoXO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
>
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
>
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..7b5a26a866fc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI     +=-funwind-tables
>  endif
>
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> +CFLAGS_ABI     +=-meabi gnu
> +endif
> +endif
> +

Thanks for the patch!  I think this is one of the final issues w/ 32b
ARM configs when building w/ Clang.

I'm not super enthused about the version check.  The flag is indeed
not recognized by GCC, but I think it would actually be more concise
with $(cc-option) and no compiler or version check.

Further, I think that the working __gnu_mcount_nc in Clang would
better be represented as marking the arch/arm/KConfig option for
CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
than or equal to Clang 10, not conditionally adding this flag. (We
should always add the flag when supported, IMO.  __gnu_mcount_nc's
calling convention being broken is orthogonal to the choice of
__gnu_mcount_nc vs mcount, and it's the former's that should be
checked, not the latter as in this patch.

>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXSWE%2B_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w%40mail.gmail.com.

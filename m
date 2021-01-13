Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7HE7T7QKGQE7RU6BIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2818B2F5163
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:48:45 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id i1sf1975773qtw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:48:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560124; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZqrqpRZypR0TiWxGunL18zfVvvB543KhGd3ikTJTPFxaYfiKQZ3Nqsa87ne84Kcm4
         ogsB4rOg+2s7UW+WRE8HJNYvO4uaWXYvM+/xGy3wQLdCkSgRMCjfQomRXWq4/zUIvPoJ
         afoYdBZxxRyNAyhkuwGhhzlSmF/8AFxiLaAs+sWELuywlGlnAHPqm8T3wCnCWhsfTCu4
         Z3rqWZfLooRXK/cyxdXr5ZN2k34BQmhA94iZMaR1w/4ewl8JWDcyFkRThNyiRs5UYcBp
         T0UvM0Hs3Ezve3dNNbp98Rp2S0OG5gem2awuPVQS3JiDKHdmuH6BPIEOrIRK8xCBlj9T
         0S1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=W6JU6QSuZFFApvvawj+jZoUvpkpISNyosMMyeU3ZE6Q=;
        b=hJTBPD1qptbqiVvwgjHkj8qdelid3C5liDSfNJTVubEPLQP9u8dXUrtoP50/rpi0Bu
         E+kc64WjEP62+ez394Tc7USrBGIDs0ARmQ9F30cIOD2+Iw5a3YY3uhpULyNI2oAVfhc0
         rBu0EP/kZT1zRVqjn5RKAXcfRq3qCED7gEXDy4PlcbFmeRyrzz9TISH+/loMi8Ak3HfU
         7b38IAXCNHfCsNdQWh9r3dUFg/f115a/6OeRlTXAjIBBbqnSmDt7zKj5vvo+bnpG1SKl
         wW+ZuLQhOQ6db2We8ZW57qZtAb5BfVoWvLEKUkwV69KgSzPQy2vJz6N16/Vf+479oEZV
         rjiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=od8zfmMR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W6JU6QSuZFFApvvawj+jZoUvpkpISNyosMMyeU3ZE6Q=;
        b=EPUUU3jw/amlCu9xRb9HSDer1gQ4RNbwOP2ociXZqrNsSd+y7zJtd6tHQHSj543OMQ
         JC7/VOhhVsHrP4U9ttHfPSyaA4BmyYpZokszJkv1omcPr63T0KoRhOYFFzycaQbWaXEe
         7VKJ5BfUqDNJ0ZpJYOkkOdm1+GlbieRikSd/z1yhZEVfkrgT65YIsn5x1WN1L0xrocWx
         R2zh9Uk5tHhRfa6SIRWauC7dJpniUdNk3swL7j2/Ca/zveUTJNzjN2ADVSG8Gn1X3Zcp
         NHZElc2+cX8hzi2axAqnQMz+me5tWsiCdCxdRGFUzj2Xgqt9fVktL82JsVZ4v1O3GG1F
         LHAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W6JU6QSuZFFApvvawj+jZoUvpkpISNyosMMyeU3ZE6Q=;
        b=tJRF5H5ecq9Ux7a1vxGBsXcjYM1xZKBJovdUmz0e0HmXbbMLVfrhJXPIzrT62nUfku
         ixRvLZtBS1mxgpRjul5sCEmMbyLbOjtG/m0Dr5i0+X6kJICdSTWCIeSIrZ+JXrEWprdi
         btDaRQaK9pgWuAjrmrUVu4Q2Lf62VEtB+/eigvd/eiQeu31zF8T6kAKR3zjhNuxR1m6z
         p8CNlr2eHbSCAFcnE4su4REl3RkgQD4YYw9ekPBPoqkusmoOZxNa/qTYEguYCGToWVjW
         rkAfQ/xZxnKR8WnXctCaZvUGBnoLt7Aop/CLJYVIZSbGalPKGdNYligrbPOd6nmNjXyT
         nubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W6JU6QSuZFFApvvawj+jZoUvpkpISNyosMMyeU3ZE6Q=;
        b=ATvO3YB6iXaO0wY2uSUCTosPyDcLc1gA9EiYtQqj01hRjlouzjj6rnZtm3VrdZZSt6
         tZlfxVgffc4AVBvnpIDluOnST8Kt/B+8ZayIpemdq7CUtcg9J0etxqGh4Cz5cldgKZTW
         zge42ByeqbMwPGzdOHgJ5Uc1rRnQniz1uzFfeJKCi+drqnD/gSluITsYsHuD/QUi3EiH
         h6htLQgWv1jAHR69mm/9R9esbu8WqGh0G6ZImmw1aGGPVlYdxjDIJSc3ZvM44xtA2PRS
         cD1IILKR4ebUhZi66qc7QZ8szjSyaj271hGVCXvs/u1PubMFmhB9+HpwjbIdz/FttXUe
         /3SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iMx7FD6DIbeWR4fSjNvOQ5ZIK2H3xgw1sWcs6+yBxg3aion4J
	QpQrxDcecVwfDhADDWVXg5o=
X-Google-Smtp-Source: ABdhPJxYiY+i05JLX7e4171bJDzIYQxEyJMxMjfG3sBM5xB4inJmBM0SKDlcUy1rhFBa/9Fc9sYTSQ==
X-Received: by 2002:ac8:6a0a:: with SMTP id t10mr3414190qtr.19.1610560124147;
        Wed, 13 Jan 2021 09:48:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e193:: with SMTP id p19ls617581qvl.10.gmail; Wed, 13 Jan
 2021 09:48:43 -0800 (PST)
X-Received: by 2002:ad4:4ae2:: with SMTP id cp2mr3323159qvb.50.1610560123766;
        Wed, 13 Jan 2021 09:48:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560123; cv=none;
        d=google.com; s=arc-20160816;
        b=T82GiX63MSncQ1IKKWeO9J6uTEW47wPZmd3Lqwnb83+6n6tIneUFG2CarCdOhhs4Kj
         s0x+7T5M5ehtJdS8H2IcgGeRgbcL9yt6zEsnFhI4zxT66p1nrq4JlDxDZVfQgU5lJiRX
         WnPgeswpEDGjLUBN3X562AJJX4Q0qLQwrdZkA7XvbtXwiwFtEmUIvX8sbLT28vYrl2gz
         QQONGdchG+GaX5hCd2wMYmXsBCgHH88JFU4kpLjSGx8lpsA+eChcYuahA/X+/AUncV9g
         TkFVP9uuu9tkcDKY4WB7PKMFMzlqdcj8bOu1sKCArl3Pr5kw3Q7J4Nf9edMwR1gjRi7N
         mcnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9b8V5ldrJPxRBHqA53wu0d+Zi8BaxVZ6cd708HjPwiQ=;
        b=SFmb3uuf4De35SJeM5rZdonAv6340vaeSa9TGhH+tAxSDDQD45XSVZKSTgkB2cXcXV
         TltN3CZYrVCElJinpyljl6bHhou2Rc0vn6zpXYtxo88p7/utORaVeNLvFINcta6ACqsB
         6zmqcLixjSOVobaxrAXyexQMBtqsU9tJBQKQtEszG8yAu4BYGdf/gEcX9+KG7+OzZj+s
         g8OsYU3AMa5iX28/+UfJs8r/JjTeMuphLWEpvgdeLOECzYW+nz4gvp91fAitA5Fmrv6V
         u//qnqAAQpcyuGtW0gCCpF0ZEOGQ7fUKNjq6uOhxN1tnTxh+ggTLcMJnnHs7kVs+/AgA
         HP1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=od8zfmMR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com. [2607:f8b0:4864:20::f33])
        by gmr-mx.google.com with ESMTPS id y12si152160qkl.1.2021.01.13.09.48.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:48:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) client-ip=2607:f8b0:4864:20::f33;
Received: by mail-qv1-xf33.google.com with SMTP id et9so1136023qvb.10
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:48:43 -0800 (PST)
X-Received: by 2002:ad4:5187:: with SMTP id b7mr3300492qvp.2.1610560123462;
        Wed, 13 Jan 2021 09:48:43 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id f22sm1464173qkl.65.2021.01.13.09.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 09:48:42 -0800 (PST)
Date: Wed, 13 Jan 2021 10:48:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Subject: Re: [PATCH v4 1/3] Remove $(cc-option,-gdwarf-4) dependency from
 CONFIG_DEBUG_INFO_DWARF4
Message-ID: <20210113174841.GA4158893@ubuntu-m3-large-x86>
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113003235.716547-2-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=od8zfmMR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 04:32:33PM -0800, Nick Desaulniers wrote:
> From: Masahiro Yamada <masahiroy@kernel.org>
> 
> The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> 
> You can see it at https://godbolt.org/z/6ed1oW
> 
>   For gcc 4.5.3 pane,    line 37:    .value 0x4
>   For clang 10.0.1 pane, line 117:   .short 4
> 
> Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> version, this cc-option is unneeded.
> 
> Note
> ----
> 
> CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> 
> As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> 
>   ifdef CONFIG_DEBUG_INFO_DWARF4
>   DEBUG_CFLAGS    += -gdwarf-4
>   endif
> 
> This flag is used when compiling *.c files.
> 
> On the other hand, the assembler is always given -gdwarf-2.
> 
>   KBUILD_AFLAGS   += -Wa,-gdwarf-2
> 
> Hence, the debug info that comes from *.S files is always DWARF v2.
> This is simply because GAS supported only -gdwarf-2 for a long time.
> 
> Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> And, also we have Clang integrated assembler. So, the debug info
> for *.S files might be improved if we want.
> 
> In my understanding, the current code is intentional, not a bug.
> 
> [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  lib/Kconfig.debug | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 78361f0abe3a..dd7d8d35b2a5 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
>  
>  config DEBUG_INFO_DWARF4
>  	bool "Generate dwarf4 debuginfo"
> -	depends on $(cc-option,-gdwarf-4)
>  	help
>  	  Generate dwarf4 debug info. This requires recent versions
>  	  of gcc and gdb. It makes the debug information larger.
> -- 
> 2.30.0.284.gd98b1dd5eaa7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113174841.GA4158893%40ubuntu-m3-large-x86.

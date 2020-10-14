Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN4BT36AKGQEUZIT4XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id D724328E8E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:50:32 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id j17sf493835pgj.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:50:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602715831; cv=pass;
        d=google.com; s=arc-20160816;
        b=NeolNt93NASC1WQLM6D36Es/yl+U7Z/U/7zRydk8xCchKS79+GpVTjn/UUb2Wt3FCV
         fR3ouL0PUXBBpTddSd3v0ICDiSy8cBoCbE+F2CokMVSW54sMf3YQlX7qz+EFYW/mSpfb
         dRpXnAphnvZDrCHBKgLSzZV/vzKjfoW9/ddHISeVIy9HO6UTnRFWxcGvHSaEKzvWpThZ
         0/IeSHoucbQbTOonjU0HCWocLNw3hraSMqEgivILWMimAm1PUapbI1ENSNSADN1HLQ7r
         f+8APzoVMn3NNzM8W7rbPuZps7VP0lp5J7n+xPb5IcICTB5RHJHpvxvOVlPdBNhqZoHi
         cK4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zVqNB9QLNBCd4FTEEJ4Ce/onFIxAm2QUglLXatCifMs=;
        b=NfhPn5kN1vzxRRL+nzCU9d8xB5MuRlbxCdk9slAs870vfziAyup30XJpKeTWpuSHqZ
         Rat1Q4V3L1z1GIwVNGsWssi5mH72Wd182J658wrrI5gucDurY7/pJo0XOVBwCltmjf99
         ERrWqwPvyymiikOW0ciYhC5ZOVvnIvNHpKMmZ5RzLQk4zvrBQTXLN4NyQ53Vgb6EOVgb
         5kdZfO/JmEWiIs5I5MS6FGMi6ZvOrQuEbe17W3TNi0B1ES5iiVONI/LjOT6TFgsZqpq9
         OL3LTnhlP+dmFbgQ5UGg6z2OU9aMlwgMCQziJh/HwRph8MUTtEfpNZ7Dea8wz14kS7OI
         FU4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hr4N6hwj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zVqNB9QLNBCd4FTEEJ4Ce/onFIxAm2QUglLXatCifMs=;
        b=loNebcsk7KjDRouSUzU/SLK1qSxrpcq5VwDCVCg7ZNZlSIMGkdoWR/wjgju9Yuwucf
         yA96amhG+Eq8KkkHaObhqzzM0g+iyMyhRiGWc6OJphAWLDooRgbQCOrGM+7Q90l98PQ1
         hmboHvp7fnF6d96AAY1J92y1sqhytGBdxylamDJMtbDHnpCTjeL/YDhMYKKAYoxmwDZX
         UzSONaybctMVsKX98ZZL9RH/Ysce0e3NAZVMqZrRMk2ZZ02Ds2CmP3Qi2HT+o7myiedq
         VRfOxm0FUhr5eiDYu3PucEK/UMkB749YZx7exY25lmbBqXSm2k5QsLnZFjm3mOKliM6C
         Xg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zVqNB9QLNBCd4FTEEJ4Ce/onFIxAm2QUglLXatCifMs=;
        b=lJ6omAF2xQHjQPxRrzv73xO5p/Ww3L/R4TRZ1i3q/LsWZdmdmr5obrbrXZRF1BjN6f
         yn/OTCKzJzRwKFEx2mWgczcOdFNkHMIbF9OT9uCDVF+8CXabC4lFzqTjOExGhN3Olr/i
         +ZUrUkXODVmUdB+gz5jbo1C4DMzhAQ9kejTY447Uh2zImRrDWhao3naAqvUtqFMCdTNQ
         zYUV7197rfGDUwhsG9QOy1M3LFMfQTxbRodrzVm3pvq5hBwzisY134bfwg4WEHeKLKDF
         zFknRW6dTIUXxWq4I35xUSdVL/q7l8j9GV3tYk6WntOYYn0S37z11DXq625ANRWHBgV1
         TjCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311QuHaJSyvbtA+fodbqlJY7d2oPEDQXABsfsqxiz/d9x/7a20u
	+13Lad6MeqPbPCrDAYevDUg=
X-Google-Smtp-Source: ABdhPJwJieI5fXdutg6wNE06qvMXsbmcUaCMUas8ZUWZFO15Tp216NSu4r+fomJhPf1MzFIXqOgFfA==
X-Received: by 2002:a17:90a:2841:: with SMTP id p1mr1328610pjf.222.1602715831441;
        Wed, 14 Oct 2020 15:50:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls298967pjr.2.gmail; Wed, 14
 Oct 2020 15:50:31 -0700 (PDT)
X-Received: by 2002:a17:90a:5806:: with SMTP id h6mr1330503pji.217.1602715830932;
        Wed, 14 Oct 2020 15:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602715830; cv=none;
        d=google.com; s=arc-20160816;
        b=aCsHaFa56Fju0bCzanUn8ufxysTAUeW+WZFguZ6+I2rZBQiaZyK94JpmYzlOX6S91B
         A7uGsr4ooCW1cBkIbzdfNGjcRKxLvk5LbWk3U95eAfkDkp/+uAU/HeGZ+MRMmcevaMr1
         wF7ysKjiaXyxtLTU8EYV3vn1q1ow8Xxww9dgv8YaHhlFEKsvHy4e63MjL9Fp65sEfyUQ
         KLum0YdsI/oeUAWpCj/CRBOeAa7LZq+gilDg1XOHuv1RNotMkXsQxPdL5rcvZGh5q4xc
         WIEL6XY8RjkgDmVXBQGikI+/hBax0PT4u7vRKek9WcoXoKdF4zbLAEYnOUqKmEGgFL03
         n2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3VrWtG2Nzyu2csFSOGvGre3/3hIZgGNscPNIfDNpl2k=;
        b=eH0H4Wo5bjTXK+EiJ9tEabYRxyruMFc9YhVDTAQqEOiB4067ZxutVBCvArAnKMCAUd
         lEL28O33gqwOmJeDJIySgFysRZ2Zzc79wmWZW/uEWUFAk9BEtP4XKO/b2KcINjQ4fCkS
         LvBa0yL0p3C8DFz5bi2ZJ47vFQXRlaMY1gsdYzSEuDHCdBdUKeJ211XF6QMtZc5g+/NB
         Lv/jH4L+vbYaLkFEXjdY717bZKNsbViM11CBRRVC20nYn3t+0i0pBvcYyzJUdlrWvfD/
         5BXqqVSY76L6cqrRSeN7UKH8vtkWRuysfRmH7/8lLtlSHqwIcef8p7bur7drauziaN8P
         AGMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hr4N6hwj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id u192si90864pfc.6.2020.10.14.15.50.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j18so734854pfa.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:50:30 -0700 (PDT)
X-Received: by 2002:a62:1856:0:b029:155:1718:91a3 with SMTP id 83-20020a6218560000b0290155171891a3mr1359345pfy.66.1602715830672;
        Wed, 14 Oct 2020 15:50:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 143sm704359pfw.13.2020.10.14.15.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:50:29 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:50:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 14/25] kbuild: lto: remove duplicate dependencies from
 .mod files
Message-ID: <202010141549.412F2BF0@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-15-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hr4N6hwj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Oct 12, 2020 at 05:31:52PM -0700, Sami Tolvanen wrote:
> With LTO, llvm-nm prints out symbols for each archive member
> separately, which results in a lot of duplicate dependencies in the
> .mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
> consists of several compilation units, the output can exceed the
> default xargs command size limit and split the dependency list to
> multiple lines, which results in used symbols getting trimmed.
> 
> This change removes duplicate dependencies, which will reduce the
> probability of this happening and makes .mod files smaller and
> easier to read.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Hi Masahiro,

This appears to be a general improvement as well. This looks like it can
land without depending on the rest of the series.

-Kees

> ---
>  scripts/Makefile.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index ab0ddf4884fd..96d6c9e18901 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -266,7 +266,7 @@ endef
>  
>  # List module undefined symbols (or empty line if not enabled)
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
> -cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
> +cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
>  else
>  cmd_undef_syms = echo
>  endif
> -- 
> 2.28.0.1011.ga647a8990f-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141549.412F2BF0%40keescook.

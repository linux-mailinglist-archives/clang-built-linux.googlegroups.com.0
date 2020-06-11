Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXHZRH3QKGQEMY4TCFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7881F6D9A
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 20:50:05 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id h10sf2568829uao.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 11:50:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591901404; cv=pass;
        d=google.com; s=arc-20160816;
        b=pnOwfJgRRIQxSk6nv40uQbGy61jBMIvIK8cJZgudvEY718jStLkj86GL1AWzX/08od
         lzn0dTpACK/EBeyLFIcnGM8EgZQiUCDkY9vtpL0vvvsLgT5ZDPEXqicJofvIMxkuG0Zv
         kX/RZxBBb7BVuenrkmO+lMtGYYflnnlFbdlWHK/Ydb9+uMAqi6H/JdT6opXho24ydIZ5
         mZknAk3W3XjTvBv9fyrtXyz+CSTuAor82P48dPD6RfE6z+fDFrtveLXO7+OhGQc5dR4W
         /pyS5ieX6RUPkxNgBo3HGGb8M6TrptHbT1v14fIXiUC7GK2K72OxzdqgmrvPH3hmbfq4
         h23g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uaOhohLOC/+Dhht6zKgTr8uEhPfqyk35fCEqqLCclKs=;
        b=Mls4GZJRIC3mQ8IsQnu+SWJprwUuXEHMFuFNS+VCmqk/neOwtW5xFbq6ZNwal/pmdd
         juGglNhQ5Kfee907jObQWXikoQOz78lGKzDC6vcHrM0tjFgWqGrCePgFBi1NazfoI0hH
         trN3aNLbrBfdBUZpi/ojnjAcPnT/ng0qrOY3ZnggMAelZRc512JQbc0HC2+tcOF9JEQu
         nxxtgcN9PbeDyVECYaUiIQYBW0rsJ1SeVh8CySj/5LWnmL+KYNqkh8FpF40gyYiN+xvz
         e8uH/IaoY0CKpPJfbOPxJmXVflGZIJAw6e6iTtuSOSuanJ5H8S4M0cNwJNZWmG82K1v+
         bYBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxsWQEUn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uaOhohLOC/+Dhht6zKgTr8uEhPfqyk35fCEqqLCclKs=;
        b=dq0ru4iKxWhiyohYoqcrw9km+zG+nWElxudHTpdVYOE0Ul81Ykeb3iDHa7dUAEnryp
         rDO5hUPu+ueTGCsAue95be2kC5Wcb3jjx2dP3rSsFYBRl3CQA5c4K8eTJSblqPp2333F
         X2BrroA4+R6MrGR5X2rGX1f45RSopHCwkoSO/lo1vUdaCG6FciGIUyzX2S+/12n96Jhw
         JbY4sMHqUBckwwYcJwN7kTceSQigVrkbfZSyfRji0rKFtScEmUaYJErNRSUtLGNaNegK
         tnmWe9gmnKVFdDRgLSP71HHul7DZtgyym1qAdhAm/6UdlcelDwwZsUBEIXhFcl50Jogs
         VHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uaOhohLOC/+Dhht6zKgTr8uEhPfqyk35fCEqqLCclKs=;
        b=smgDwvR2B1+MvgJiZ7j3w4lI+ETXb6gs2JQC1XMSWod61elyo5i1XgHDoQKTBS7jd7
         bzQxMWnNSKf9HChewrKmhoP6+/VFYiUQUobr2vbnU3RRRfk7j365YeK+/0/+KgceJMB5
         xRSxRGmz+1i6rvOxeZIjQ6ToLUm3Vbyr4q2m2cgVCe96d1JULFClqVN+wScx/kHt948g
         qIWpbg8NKlaG8gcP3+Y047DWpYpHemzLJSfqMm+UDlGeLoglefGqmqx76FMqXJtO74p0
         G3/o0O3pF5CPdbfa4QZtXTdwvO9Asf3r8Oe9AsNy3faqdS8ESJj8f4HFvqG4s+Mp81of
         /Rhg==
X-Gm-Message-State: AOAM530D+v3oNz07u/t2kHmpLKkcHGimL6wtQQDglOuw6NTFvi8SC8vu
	qR8Sxq/zk35B9jEm3sD99dA=
X-Google-Smtp-Source: ABdhPJyADM1Io5i1aLAHGktLDwdopwhDxgvGWthLxlAbuqpSk1MNZ43w+ny0yd/0uwMIElbwFTjrfg==
X-Received: by 2002:a67:fd75:: with SMTP id h21mr7457291vsa.77.1591901404167;
        Thu, 11 Jun 2020 11:50:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bfcc:: with SMTP id p195ls155002vkf.6.gmail; Thu, 11 Jun
 2020 11:50:03 -0700 (PDT)
X-Received: by 2002:a1f:974d:: with SMTP id z74mr7098566vkd.40.1591901403704;
        Thu, 11 Jun 2020 11:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591901403; cv=none;
        d=google.com; s=arc-20160816;
        b=JGYX7m2udJGDvgCoXj/wv3nV0pYs/pKmfl21Xn3Ne4k/ss5ewys+HijUAvw5vQ/YpW
         17atnKQTXyjPyvowgJAElril8j5bqIRWJQbDBY4AlWqRAmx3Ctoiy1ddDwWp557yHAbx
         7NBEs7NdCnggrSgm7TlcD0zck8FEW5uEFxCbFvNONRojM3ylQZ2fdA51sG2bjBFd0kgF
         k9volSsqWJ2iSdQYYPcpzXcW56q1mIUvb5yRlqUuTwdhytdb4N8XpOGNsEkyU2q++bto
         R3bGxEkWPu2SPps1s0hujanFIXjJx2NxWCARBa9rfxL5PxFEFcLhG0jXyceTd6f2uKHD
         1tVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0HOxmX84CtOBZELFo2yLdhQ76D4cXxjqf83woFragKk=;
        b=gCxJpwGevg5q498sfiNfp6qc6jyo1Zwx4WN2CoeSmbehGlC03N39oNLUjgLuud+lpB
         QSuhKJsH9QCXIer3WT42/sCoKt8ZuCt38rR+SJTysqZWVPHkaQ3d5fxIIEOqOgLqATL4
         FNiQHAj5qyPGd2WNEyI1F6Jnc4O/EdtqlFq7j6eEG9evuhzY4dmBc5po5HLymiaKIAUo
         K3TaOIN06UBt351yQz+ey5vsSjmy6CvVGwIRG6iujNuZkjfau3NfdALAGVwfEQXjOPlV
         runwg6nQmSN1/J+ylRPzY80x0Sg47ez63xg11FzlhzpT7VS1+v59TFPUyWJSpFGLfXQy
         M3hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxsWQEUn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q20si395701uas.1.2020.06.11.11.50.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 11:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ne5so2564276pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 11:50:03 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr8711851pja.25.1591901402456;
 Thu, 11 Jun 2020 11:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200611183235.37508-1-nhuck@google.com>
In-Reply-To: <20200611183235.37508-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Jun 2020 11:49:51 -0700
Message-ID: <CAKwvOdnnP3cHZMjgV355r=OO7MDLmSoOoU_ch8+ByRaJEkF=rg@mail.gmail.com>
Subject: Re: [PATCH] riscv/atomic: Fix sign extension for RV64I
To: Nathan Huckleberry <nhuck@google.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oxsWQEUn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Jun 11, 2020 at 11:34 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> The argument passed to cmpxchg is not guaranteed to be sign
> extended, but lr.w sign extends on RV64I.

I had a hard time finding documentation on this sign extension. Is
lr.w just the atomic version of lw?

https://content.riscv.org/wp-content/uploads/2019/06/riscv-spec.pdf
pdf page 54, printed page 38 says:
   The LW instruction loads a 32-bit value from memory and sign-extends
    this to 64 bits before storing it in register rd for RV64I.

> This makes cmpxchg
> fail on clang built kernels when __old is negative.
>
> To fix this, we just cast __old to long which sign extends on
> RV64I. With this fix, clang built RISC-V kernels now boot.

Oh, indeed, nice!  Thanks for digging into this issue, and sending the patch.
Tested-by: Nick Desaulniers <ndesaulniers@google.com> # QEMU boot, clang build

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/867
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  arch/riscv/include/asm/cmpxchg.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
> index d969bab4a26b..262e5bbb2776 100644
> --- a/arch/riscv/include/asm/cmpxchg.h
> +++ b/arch/riscv/include/asm/cmpxchg.h
> @@ -179,7 +179,7 @@
>                         "       bnez %1, 0b\n"                          \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -224,7 +224,7 @@
>                         RISCV_ACQUIRE_BARRIER                           \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -270,7 +270,7 @@
>                         "       bnez %1, 0b\n"                          \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> @@ -316,7 +316,7 @@
>                         "       fence rw, rw\n"                         \
>                         "1:\n"                                          \
>                         : "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)    \
> -                       : "rJ" (__old), "rJ" (__new)                    \
> +                       : "rJ" ((long)__old), "rJ" (__new)              \
>                         : "memory");                                    \
>                 break;                                                  \
>         case 8:                                                         \
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnP3cHZMjgV355r%3DOO7MDLmSoOoU_ch8%2BByRaJEkF%3Drg%40mail.gmail.com.

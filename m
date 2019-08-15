Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3EI27VAKGQETMYAYSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 247198F5E7
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 22:45:33 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id f11sf2129420edb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:45:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565901932; cv=pass;
        d=google.com; s=arc-20160816;
        b=cOR7bAZwQGLo4U9imO7myB19TwX+Srl2/O9Qd61NQzYyk76E0/chS/9sOgxiNWs5Vt
         4AZOPHKGABy5EnUS1Ck+6UfzaW9hODEqWmc5/i6SzyUSftvhmH2hGlH6unNR7IH9EIjL
         67xgdHy/EG/TH1AaAtFJIH7jWD0853jwDMbNBXSeqDQRJv+d/bYpmhyMXyKL5YFrGhEn
         jim+iP9F08ZAiWkipSUUSiqvkSrGghHQIGB/9W9+3PmKWD1JMB2hfzD62tEbRKVsOlWS
         6IEhCmV3jyQLuC2wo4CyOiRdLuwyN3h67m/avQj8kkp2DTK+ccmU97Uc+ArWTN29yR6l
         EBMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=vt4+FY+oaZwtYVOWW/sGAvfd0uwsWijizvsS67CjFWw=;
        b=suQlhYBGG8ve2xdYYE6M9FKhZyZy0+dcAk7y/Y8YHY75SGyp9dbuFIRFcQG4d1buBN
         tJeM298bPdbSRMzI0pXLceW2f3kfwV1oD+i3M+wr44Rb1Z8J2z0Tn+gL53CAOuCQw3Aj
         Ugb7u2zi77LAH8kLnrs3HSzvdHUYS9bfttyMQmAjgefeI/cmM4Nc0KoN3zRFfdXZyJrU
         XuBzDNLQ6Y5DhS1PJ4i5Yf0/F+hE1uY2USXgqjpPCuuIg64WhzM2xiu5B3D3g7WHT3+R
         RY8wjt4gbpC3f4yj7Eoovqx126xtKI/VfvPbpfyBrATvOMR5osbcH80fOf1xzSFZdSgJ
         tMXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RLXGMztP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vt4+FY+oaZwtYVOWW/sGAvfd0uwsWijizvsS67CjFWw=;
        b=IkZ8oK9RmfXvfhKeF0jBDO0DzUxEH5LjfZcwYtLQaCn8pCkZD5bDErsVGYbFx7oZg2
         /gIeYHsjqggkuO/eyYlIIXsnjugLSaCfG7C2nNcCh+M9ZV/Ux91q5YpIUtQvjs7r0dDF
         vqKlyihAkdfr2BSZdxC7pmCJxzUzWB7pZ1I3bCpjk6aBayuVlzAafUXk3sKzKSBr+QWX
         E6yU3eDUH1aDqsNJj06ZKpLtA30zPDtrhW8A7OLHAoP5IOFJsPY6DH+vUBIu6Q8yvZDX
         vBfsnDwqFmuID65QLu2E+bgHV3uWiFWlEK/rDnfsvJr6n3/m7g6Tewn1cKk6uacI99jt
         eAQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vt4+FY+oaZwtYVOWW/sGAvfd0uwsWijizvsS67CjFWw=;
        b=L0ZvvR+mgjKnwnAHMuGhnhvF4T/8ThG8ODkxxuShfKZ6QW2v0tgfCxCinAyVn86FCj
         d6HiPZk5tvH0psj3rWXsLf7AsIJsUami8oicwYCeEjf04cLIHP1NCu6kSH+khctYTtWB
         Dr7Ma2Qi8EELqszEVSWM9IslN67+Wsck0oMU1d0p9gHxl9sdCVou0MblFF/mBLQ7iR6K
         ghuqqa3DlKf2TAt9a9SCsNXdKd8c1nzAFYISX/IxJwv64cGxUr0XaiR3wSB1+Mb6KItX
         Tei4TUtUyyZ13vnwwrlwToj6gcLRLvQUphKL4F/OYv4K5eIwLg4nLU23FmtDY9Fbl4OS
         O8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vt4+FY+oaZwtYVOWW/sGAvfd0uwsWijizvsS67CjFWw=;
        b=SZ58GzoHibe/3wMcGmMwvd2IxD8vny17cieMUEOZQfevl2qyUNafuIyOqpNO2c8OZl
         aBZRmQ4yJRMm8ck4GY9ErSvwFbjyIXKEtDvaZpCBit7myF7Mh8+0zJZOeGeiALHwKuiL
         CHLgy2uikGlD2t5kGDM4hCv7KLGMImCqAOyamg85p+SdBKUdImd/bIr2H1tjcfzhCKTH
         UJrG2wU7a/wyx9jkercZilfqJmi6eAqO2/l2UkvZ1qMKk82kOgj7ooWRjEuDUwlZHmgi
         TTEJd8oD2sXs7uv0qHI0/m2b76KHprpNJhIOyDw3nmwJRg9bCjEly/dRPKicWXfP9ysY
         Gi7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYOu+bOZUmt73k01y1zG1UWXoExckkp178HkjeAX5Cwt+OIjdv
	lKeNPenHMCuiVmethnfkr7g=
X-Google-Smtp-Source: APXvYqzUZccgpadnCVH2PCpKgIkiWK1bBc8ysU6/BB9LwxSmkjoigL5jHOrkRpgeLxS5Nt0iALkCOQ==
X-Received: by 2002:a50:97ea:: with SMTP id f39mr7394500edb.279.1565901932835;
        Thu, 15 Aug 2019 13:45:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:27d4:: with SMTP id k20ls1455082ejc.15.gmail; Thu,
 15 Aug 2019 13:45:32 -0700 (PDT)
X-Received: by 2002:a17:906:a942:: with SMTP id hh2mr6333628ejb.253.1565901932422;
        Thu, 15 Aug 2019 13:45:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565901932; cv=none;
        d=google.com; s=arc-20160816;
        b=CC69p4ldDRMZez5DsodDaFdvCji/SJLLzpzwvAvbBVdzemEN0BkAFCMaQvHVd85Rqt
         SLmASFSKg3VBDC6Q1RsdBr8hfRjbDwacKm+j4TwNTedcZsjc+5xYs3XoHl+D9zaKS5yC
         ++9+PJaSMLZeCM+NNXzCwLr1iUvNWAdjbpaQPsU0S/TdSG9ZgbXf9+XqIGgrL0hfPNUW
         ln/XGFwvqxm9+l+JdYpDjgxBF9z9XRrPAMu686kWTNrHVMEnRZDXDUxYBu2e3bz7ddzm
         Xm0t/w1M4Dqw6lQXBL3zChQcxn6SUkdvkDTH+0dgBcRuOuBGx+YMEXveojpY0/gGrdW8
         juiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yBHfcOCLhEZEgiS1wNnrpED7tumOdTFuVcM72sYIykA=;
        b=HHtZQy8ufSZoiYkOoc3b83dD2K10psj/rLSexgd26ck4j2elf/T5LTKk+38T0PhJ2t
         IzDTkM7VNi7xsH2LDSkEc1Ne9rPLADB8WSeqYB00CrjG4VnAg+xWA+gvfrQ3//nRz44v
         CCJdMJQUvgn1sv2oRHI/Ij5rw6W2gXNsI4x97/mqfrcSgcQ+aBLx38ITXSmTMOATcgyM
         pTytXmWUFZLja3YZ5Yg+IxdAAdrmNAhiYnDYU3DsBVfCvIF468PgOMx4BRkl1dofcT60
         8jSJl77UHTCzEYTq6fKH8d+yl3jJIHteCEhVU6xcZITp3xSePNkxnPu0POMNf9vWzNom
         Llmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RLXGMztP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m16si232385edv.2.2019.08.15.13.45.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 13:45:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id c3so3363247wrd.7
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 13:45:32 -0700 (PDT)
X-Received: by 2002:adf:ce8d:: with SMTP id r13mr7145390wrn.37.1565901931948;
        Thu, 15 Aug 2019 13:45:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c15sm11375926wrb.80.2019.08.15.13.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 13:45:31 -0700 (PDT)
Date: Thu, 15 Aug 2019 13:45:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nathan Huckleberry <nhuck@google.com>
Cc: yamada.masahiro@socionext.com, michal.lkml@markovi.net, joe@perches.com,
	miguel.ojeda.sandonis@gmail.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
Message-ID: <20190815204529.GA69414@archlinux-threadripper>
References: <20190815182029.197604-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190815182029.197604-1-nhuck@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RLXGMztP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Aug 15, 2019 at 11:20:29AM -0700, 'Nathan Huckleberry' via Clang Built Linux wrote:
> Clang is updating to support -Wimplicit-fallthrough on C
> https://reviews.llvm.org/D64838. Since clang does not
> support the comment version of fallthrough annotations
> this update causes an additional 50k warnings. Most
> of these warnings (>49k) are duplicates from header files.
> 
> This patch is intended to be reverted after the warnings
> have been cleaned up.
> 
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  Makefile                   | 4 ++++
>  scripts/Makefile.extrawarn | 3 +++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 1b23f95db176..93b9744e66a2 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
>  
>  # Warn about unmarked fall-throughs in switch statement.
> +# If the compiler is clang, this warning is only enabled if W=1 in
> +# Makefile.extrawarn
> +ifndef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> +endif
>  
>  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
>  KBUILD_CFLAGS += -Wvla
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..e12359d69bb7 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -30,6 +30,9 @@ warning-1 += $(call cc-option, -Wunused-but-set-variable)
>  warning-1 += $(call cc-option, -Wunused-const-variable)
>  warning-1 += $(call cc-option, -Wpacked-not-aligned)
>  warning-1 += $(call cc-option, -Wstringop-truncation)
> +ifdef CONFIG_CC_IS_CLANG
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)

Shouldn't this be warning-1?

> +endif
>  # The following turn off the warnings enabled by -Wextra
>  warning-1 += -Wno-missing-field-initializers
>  warning-1 += -Wno-sign-compare
> -- 
> 2.23.0.rc1.153.gdeed80330f-goog
> 

I am still not a huge fan of the CONFIG_CC_IS_CLANG ifdefs but I don't
really see a much cleaner way to get around this. Some that come to
mind:

* Leave Makefile alone and add

KBUILD_CFLAGS += -Wno-implicit-fallthrough

in the CONFIG_CC_IS_CLANG section of scripts/Makefile.extrawarn

* Revert commit bfd77145f35c ("Makefile: Convert -Wimplicit-fallthrough=3
to just -Wimplicit-fallthrough for clang") for the time being and just
rely on adding -Wimplicit-fallthrough to KCFLAGS for testing.

Regardless:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815204529.GA69414%40archlinux-threadripper.

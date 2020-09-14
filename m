Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7OV775AKGQE7HT747I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E42192698A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 00:13:18 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id f10sf179202plo.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 15:13:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600121597; cv=pass;
        d=google.com; s=arc-20160816;
        b=zihfNIMHrSff/nLeKWudDXAoXEcOLZemUpcZr9DrgqaGeBgtOq5afDKlQNBXvldfz/
         cowVvKh2/RpwisXlWr4krSXWRaPZaXAcUVEHAwWLSYSbawGJEXyl5nQt1iFJ5YIk6EfO
         e4e2dDv3Y3uyeLr8PWLNzUCKvICyVKozcHnp5AKr11e1h3I4HV2uX1B9TuLMUD4hHq8P
         LdU1RAnOL/SC7gS7IA8MppidE2g+tnYLZjcCdwwVpg2aW76M+Yw9arbszLXnTovnWZln
         xHsdSMyVhfuhRbTP3/x9XSBQTenGbD4zKiq3qvqhWz2J1uHzSEq+dLZ6en1VmoUSNHag
         NUiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7ZLlgJXqTGl1WQ0mp5CY0+/ZWJ+g9lFFEs+BFJLy49Y=;
        b=ts+iYkgfDwDBEErA0Xifm4BwE+MZaal7y1quMdt9ELqt+deqTWru7VEfKu7RuAQfp7
         tcHc+jjcSk3gOoaOmBW8BU8m2icjZJEnwkgJxEZlrv/VUjh8M+eojy8WYQ58gpqXSRTA
         CLRPMFTw81V19kIcNBhMr5U/DdImp5Dk69dD6qR/7g1BsIyGS4bAdSsEPGqHulzek6yy
         TJXfmXO680lECUknZ3S2YLNKPl2Q3DhVAS720PdKc5wRkFHxy3oWWW8vwJtjWc4wYDxS
         MI4RGCIMnNeJfE1QQQEtlZ7BRkuAMkVJJ28IGF3Qcj+ONoidUERWORf1P5nprVqp3ZSP
         ULpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FLfu5qkp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7ZLlgJXqTGl1WQ0mp5CY0+/ZWJ+g9lFFEs+BFJLy49Y=;
        b=SmEQxUmZr9W0fbWJr75/mf7qQkSpW0+9YsB4JdxJtvqe8O+zI8HXeOLqB6RIYwQGqI
         Yhg8NrFTKC7oexCM5TVat6TbFe6dskBg8JCGkaZgOnsK2PML71hFGU+eHJkmoQtdCwpP
         JRMyF9QmtCBaAi36a5//DnxPeVLaP99Zaj79pPtPDmmibNHP03oiCy6Cew8XNCPa854W
         Gg6/vXW8tzu5ZmuWOpgO29zobG5emSA2V2sIFZdm9CQb6oJh2sQXT/t7N9o4/Jd/qpAJ
         EzXNFQnnHvzunSFHsifVpxKy0PetIGy7vHcJOut+34oEcAO69eVR7C3n56C3Ak6p+L/8
         8dEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7ZLlgJXqTGl1WQ0mp5CY0+/ZWJ+g9lFFEs+BFJLy49Y=;
        b=hWi6nmISYQ8NBSL6670aWSqpiae05wtHDrrWbItNt7dLHFva326aSJp5qRBUMw7eHS
         zS70zVmXQQ6/iXc0diiDB9/mgZOZy3n9pqFU0izVgao0WqPOgWH5FHbMVJ3b7Hdjtjnh
         ph2e6zT04DfBrwxjVlZREkD3B32vRbNKN72hmJdS2IVqZpjZDSwxJL1rGudHwoafqBHf
         Tll6KoI/6ZPgoVpgN137I0HsMJqaSnLlELarsnc7DIpIUuRA8IWwBN3tfX9HMrVUv26U
         RO/xVGn5p9BpK0nIXzF768Erc040vO5U3/xLaMsTLl3J67/MgOvyebK+T+Z3T4dvdKz4
         vA6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QXvhYFuMh4UMhqRc/iTg4CLWaIdK8VcCHegxgLT1Pa8YjA640
	7lCYLVz55QYYDQM5EpO+P0w=
X-Google-Smtp-Source: ABdhPJxC658dAnwUJreQTDichx0MqPAwkSRml79YTAF1tjZO9NW2Jg7R9ViWGKAUqkD7k+Y2HYSHzg==
X-Received: by 2002:a63:fc41:: with SMTP id r1mr12272835pgk.179.1600121597321;
        Mon, 14 Sep 2020 15:13:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls5043563pjy.2.gmail; Mon, 14
 Sep 2020 15:13:16 -0700 (PDT)
X-Received: by 2002:a17:902:eb0b:: with SMTP id l11mr15744076plb.53.1600121596619;
        Mon, 14 Sep 2020 15:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600121596; cv=none;
        d=google.com; s=arc-20160816;
        b=cUQ9gykhejHWvgwBtOAuLr86eUFzwjTkYz5WhGzXu1lOvWKPqyDYY/GDphp4yo910Z
         AAKTt8uS0+MfkG8JfmZxXUC4tPo6BJ4b8Kn7+PtLE6HE+BeJpaP7+romEPGUD1CJglxg
         DFVF4e4jypXdiBQbgusxSM2TGCzZvAEFUKrfo8Q4Ml1aBihpJp1+icHWLGLKgNuM9btY
         YDpPIMoj/lrGvhCY2HK5vRdW7n4AhLdb5uwl1qvzpZIufpRqI21oQYGspfll2a507N2S
         SwRQ/diZarZVgIyaAKthSlY9FaaLOKiB2puQHQAEHyQgEAWXvjEWNYd0bqv4mC5LFyb3
         xUiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XKHeWnZTmr+44PA1uk+tmIoZZMZNVyaEbUZsmkorfxM=;
        b=phnRsnS9B4ShX8RImaIroOqy+qw6oZSyCGEaNObBVmEA6IMSOCGYGeBrvRVuLSYX1A
         vp/sKGrtmkTqp/RDn6yoXLgqBFI1NRjHqWn8wr3vDcIeloEjxOc3nDiTjoCD4UHQ0MKw
         UHm3y5zlUrGJITNaW0CJTsMHvgXCVt8FIe5gfBiIFidd/x1sd4b7Nqc1YQqgaLGHTntB
         RwrYwnQK5Bla8Fxd+IMykaYzj7A7gxHzYl0D5OeynhpRpp89RBpLt53icPnysl/nsBZG
         cUqk/nRUbouSHHnLB4rifGj2abD93xBDIPi/UaKut2LGjh2UQJqiXo4NneaajFeBmTwq
         6KhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FLfu5qkp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s3si1170438pjk.3.2020.09.14.15.13.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 15:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id gf14so651094pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 15:13:16 -0700 (PDT)
X-Received: by 2002:a17:90b:3505:: with SMTP id ls5mr1284670pjb.105.1600121596214;
        Mon, 14 Sep 2020 15:13:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i187sm9130990pgd.82.2020.09.14.15.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 15:13:15 -0700 (PDT)
Date: Mon, 14 Sep 2020 15:13:14 -0700
From: Kees Cook <keescook@chromium.org>
To: George-Aurelian Popescu <georgepope@google.com>
Cc: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	ascull@google.com, akpm@linux-foundation.org, dvyukov@google.com,
	elver@google.com, tglx@linutronix.de, arnd@arndb.de
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <202009141509.CDDC8C8@keescook>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914172750.852684-7-georgepope@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FLfu5qkp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> From: George Popescu <georgepope@google.com>
> 
> When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> the handler call, preventing it from printing any information processed
> inside the buffer.
> For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> -fsanitize=local-bounds, and the latter adds a brk after the handler
> call

That sounds like a compiler bug?

> Signed-off-by: George Popescu <georgepope@google.com>
> ---
>  scripts/Makefile.ubsan | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 27348029b2b8..3d15ac346c97 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -4,7 +4,14 @@ ifdef CONFIG_UBSAN_ALIGNMENT
>  endif
>  
>  ifdef CONFIG_UBSAN_BOUNDS
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      # For Clang -fsanitize=bounds translates to -fsanitize=array-bounds and
> +      # -fsanitize=local-bounds; the latter adds a brk right after the
> +      # handler is called.
> +      ifdef CONFIG_CC_IS_CLANG
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=array-bounds)

This would mean losing the local-bounds coverage? Isn't that for locally
defined arrays on the stack?

> +      else
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      endif
>  endif
>  
>  ifdef CONFIG_UBSAN_MISC
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009141509.CDDC8C8%40keescook.

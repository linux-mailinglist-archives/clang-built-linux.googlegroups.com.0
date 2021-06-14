Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7U5T6DAMGQEK62AUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C893A7191
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 23:49:52 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id f6-20020a6310060000b0290221a634c769sf7495534pgl.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 14:49:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623707391; cv=pass;
        d=google.com; s=arc-20160816;
        b=xlLqSR6shudbw5og99v2Wutzame8ZP9JQA7/ecktGT9QEz8HjBJTrIxnzi/WbscrXI
         MKNCrn9qyROputoRqisDqaRqmKy7MyuauLIvHU6QmK0+9QmBwyRyDkmupddOVQeDblyY
         DB1Q2Bl7JGHHTW3AvuUt0EuTqo2UTCDV48wZLjZ2nD7LB/bEkidP2hfke7IwXO40e5mW
         HBt6nc1RJghwGOyu6mlzhmQdEqqBRIkJxkivDMSvn4X/MiCmwggBLJvWgBu/2hA1Muss
         Uk/LowkpBOcl8zkpJbEXpoto0PhWA5HAN3gm/2vfRQm0P5tUd9NgtUwVsCZQRBCFDEzS
         Iazw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Mbn476UMd9lqfuzu18ElTvu+6jzh/0Ob9OAoV4gY3z0=;
        b=n5WQWRNiEjJasG/Gce90lbpL2sa9DpHe0w1RnJrcgzct9yusXyKGUIFE6LpE/CfsQ0
         EhoGqhLPTVZb1Esug3vVfK5ljkd0DIcfDpknRuxZYjU14RTRaOUjYcZi7AD0eyAkzmB1
         usXS6PqjjA1W67a3OXxnGtn5x/cpgJkvlIcSduzIGpyWPFI7V7XtkDoPtTPE2F/YBlLh
         4nuwlL+oF46xqbgdJ3z5scgXkAc5vYzx9HwBIVZX2NWYNZ+UOjDmdWtqmjpEGFPMeazX
         a1ERJrjY+TjP7J7txf+CL9hqZcktgCJDAzDvKiUAM/5dRcsj98bVqMByfEgI4pOpIsf9
         G2tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eHTPUTjE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mbn476UMd9lqfuzu18ElTvu+6jzh/0Ob9OAoV4gY3z0=;
        b=RRsV1/rXqtHMKag+Kb2ZA/WdjIUMSZ8Y/dWWGXAFOsZyaGW1K28gMknfegOm+LoY8p
         xvHvyym+PGifCIdDwe4WT6mW05/4wdLBI1lahJpcmwJJA3hE0VH7XKx0SYvAWt/R3bQG
         lcNxiLYz8gQfa1PmzyL6b/jiB9rfe3Tk4TZBj0HRVvi5EycrDL85mB5X5eGB5xfzI5qE
         JzvcO8SCvc9JyA1N0Wm4ZzgOT2IgeRfZkdLRnPbl6J0nXZtwQWyYjNaU02P+purlcJ6g
         XrNYzIJSfjxfeS53HNS0w6Qc1wjpLmlvSQuCYFMmO6/Gcecv+5RZ2IByvTAt4g73YqQq
         8lPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mbn476UMd9lqfuzu18ElTvu+6jzh/0Ob9OAoV4gY3z0=;
        b=k6P7+WueelG6EjvNPdmOsjiMrt8evQCWrjzdlZy77ZrR5tysd5DZZlyUWrsvP4GS7v
         1bZQHnjwpAF02qCIF5wAVFI0X+BZXCNDBG0rQQpgjWhAOaWd+rIuSbux599ZmjGP9TdI
         jo4/PXEKhQXC1ErgzTWg3p8B8uDNLT23mZJxbeCuMqO7l4D/jG4msvlSM+PWHpWJeOXB
         PDhaLPjWIMvZb2AweSJlo0IHeO6uotLpo91ugsOgb5HETsieik74V4jdhN1sJQVa1itA
         XgTm+S9RFddrlENfic+kGnzXFUR3UPOWCro60aFnMzhWnTBP95cQ5uiizIyg2TuLuDwQ
         b0Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53139qSTafDp2OcCj2kogoVnMJGCBKB6Ta0DPFB4l6VSXbbT3yNx
	namip4FgRT7R7q4dIx5n1bA=
X-Google-Smtp-Source: ABdhPJwKR/0bdxQn06QyrToE58dJluPB307IpijyGhz+v7I6iNhaWvwRuu2l/aRrM9FaIvckNZu3DA==
X-Received: by 2002:a17:90a:10c8:: with SMTP id b8mr1267997pje.147.1623707390819;
        Mon, 14 Jun 2021 14:49:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf03:: with SMTP id j3ls1394571pgg.0.gmail; Mon, 14 Jun
 2021 14:49:50 -0700 (PDT)
X-Received: by 2002:a63:2642:: with SMTP id m63mr8332015pgm.420.1623707390231;
        Mon, 14 Jun 2021 14:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623707390; cv=none;
        d=google.com; s=arc-20160816;
        b=0TV/a/QUfUa7DANi/xNOZL9kL2JLNOhj1EnSl6uuwLpFZdyqrEmbFmLRDA0vGvgMkb
         DlonzncaU7CfnO844CnXBCoDwd0p2zzeTXJe6SHuv9AML+NLSTvKFnxQ5DxsmGAsXHBu
         jRWJYdacOD6xvkKRQiIYUpqAHcxrxzqdb2aVksRigujwEbOeXnMzt01STVhVZi5c2Tgf
         mFLB820xl+CqCOTszQDS/TmhCFPo6DT4n0QFtBvL5oSC6npUjTRMZ0N/ip8HgjC8YwgW
         dgOVrYTvBF4tEqloXPgdq/jj5ZWIvG7hWRlRFuosHpifyyJOif4zJW63QRLg1bm50zxi
         aW5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z+SsS0U38s/fJi9qjHupa5g0l6XG7YiyozghO0iYXTQ=;
        b=oQxQUKFZbsET3bUKdPpbopX9tCtMYVY96Br6XQnrX3dywEL5OhkdSM70C+gKkhUH4q
         iXDAIThctL3Kxky6eZocBm7BwV3reYxNQfLzt0f/RtKwz0nZoPY6Al+dJVDvQlFMtYtp
         43q8dOlxQ9J0YgdbqerZpbSweaLV0hOmyHZZByzWQQDzH3t+YpuJWacurORwuqmHXMJ/
         DkX05sf3EbpU/fN0iQkwyIGFDdwKaPzGUKpwVOnpKZUsRqdEETCJKGSR64Z+7W6XUNEQ
         PZvbBrvs63ycLwEsQNvS6RXFyaKGO0wHlti+k9AQSOOiwGLNtx3Ys59OmtpHwJ1kqiva
         SDlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eHTPUTjE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id y10si43581pgq.2.2021.06.14.14.49.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 14:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id 69so7353768plc.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 14:49:50 -0700 (PDT)
X-Received: by 2002:a17:90a:b792:: with SMTP id m18mr2250081pjr.140.1623707390005;
        Mon, 14 Jun 2021 14:49:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o186sm13307906pfb.59.2021.06.14.14.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:49:49 -0700 (PDT)
Date: Mon, 14 Jun 2021 14:49:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org
Subject: Re: [PATCH 1/1] Makefile: Pass -warn-stack-size only on LLD < 13.0.0
Message-ID: <202106141448.A0BD79129@keescook>
References: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eHTPUTjE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d
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

On Sun, Jun 13, 2021 at 01:07:49PM +0000, Tor Vic wrote:
> Since LLVM commit fc018eb, the '-warn-stack-size' flag has been dropped
> [1], leading to the following error message when building with Clang-13
> and LLD-13:
> 
>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>     '-warn-stack-size=2048'.  Try: 'ld.lld --help'
>     ld.lld: Did you mean '--asan-stack=2048'?
> 
> In the same way as with commit 2398ce80152a ("x86, lto: Pass
> -stack-alignment only on LLD < 13.0.0") , make '-warn-stack-size'
> conditional on LLD < 13.0.0.
> 
> [1] https://reviews.llvm.org/D103928

Is there a way Clang can just warn instead of breaking the kernel build
when it moves these kinds of options around? That would make things must
less disruptive to the CI, etc. :)

-Kees

> Fixes: 24845dcb170e ("Makefile: LTO: have linker check -Wframe-larger-than")
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1377
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  Makefile | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 144d4f8b7eb3..51a1b6b2c2ab 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -929,11 +929,14 @@ CC_FLAGS_LTO	+= -fvisibility=hidden
>  # Limit inlining across translation units to reduce binary size
>  KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
> 
> -# Check for frame size exceeding threshold during prolog/epilog insertion.
> +# Check for frame size exceeding threshold during prolog/epilog insertion
> +# when using lld < 13.0.0.
>  ifneq ($(CONFIG_FRAME_WARN),0)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
>  KBUILD_LDFLAGS	+= -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
>  endif
>  endif
> +endif
> 
>  ifdef CONFIG_LTO
>  KBUILD_CFLAGS	+= -fno-lto $(CC_FLAGS_LTO)
> -- 
> 2.32.0

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106141448.A0BD79129%40keescook.

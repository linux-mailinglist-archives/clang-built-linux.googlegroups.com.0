Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUUQWLZAKGQEEL2GAPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7B71638D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:59:00 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id g5sf11090740plq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:59:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582073938; cv=pass;
        d=google.com; s=arc-20160816;
        b=LZstQWD7JImG/6F/uJWFeHuYUwPFWuFf8YUVqnWg+C24cbi4Gy48DQccFnoF4HhBNt
         VE3o0gnWFL9YxjEQ/Fce07jl2vzra2DUS/M0+8VX6TGr2AsNuI6koVv87vI5vGibKM8Y
         /28L2Bt1hY/Bhse0exgZgoqAuYkK0h61blYEvceVIvS+h/Pn61oIdBLRL2i8KkdQytCj
         1cIS+QLEnG4Uzf7NduFufbJlTj29vharKi1NjeIZQxKOwK1bp47RiC9Mic+4NP5RXwZk
         Hu6cLWg+pDyAfMiHsoo5krOcLeOcEQX3/caFfnRrsYkhvbkpLWIHeIg6AtEl2+fZwix6
         xQkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UsdTYD7XpSLUAzkHwqTer1YhOPHRf+B3HiEDeCNVdNU=;
        b=FhAhShVXIOvt+5HnW8ph/JHSvLbNu0gbZtdGU2iKiBnAHa4qeEWDHS9C7u8/+o/klW
         F8DYiA68OqlMLKpJYyzyJAr4y5veHi5JRNtC07VPsd+QWApZIZtWYj212irhFr7SipL3
         cTd8jIuc7IsKR9iDZ4pae/elwZoRyd7lmf3jXhweF2wogjMLNEvXIXR4f9e/bZeFaBbH
         fWjvchkFZzNFwif0zoNiJXSc0aokfrhe0LMisqhVXwXTJy6KZasYch6ocllodH+oLOrU
         dObfFRfenuBDd19K8d0cKs74VI/yA0dvg3BEICGHurgrMNy3sLqXYD4s/QNmX71mD+jO
         T2/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IzhUosfr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UsdTYD7XpSLUAzkHwqTer1YhOPHRf+B3HiEDeCNVdNU=;
        b=jKSohd+h5O45DVbnhuGcshW9Cn9fwUMs5yhSPeHEcXcBJu4xR4Xa/Kz3jBEIp1I+SI
         Qy0bbAtcDm0hghzo71I+mNZNkHbc5uj7h/pib/s4O3blPiZzg6UZo8LfvJ8bDV0QWW69
         /n3HZEjEudoT9vVEtTf2U7GngHlmU0936PEbcvmeSAiXrBRu0ZRl+ljszvw3PgsoLptW
         S0v6cTwyaPG1MSvks6rvXk5XSny5UPBx1at8WuawW4LiQDe7oM8/kbob0Qv13lkSZeDd
         fx74J9oMK1HOiY++K424UFknA16y03KEIx3Zb0gDG/KBoByzVC0dC59IcUjZGYHEEj/s
         eRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UsdTYD7XpSLUAzkHwqTer1YhOPHRf+B3HiEDeCNVdNU=;
        b=VP/rA42IikgenmRcyhi1j+DNuqsTy60IZRNVT8u3MyZxEQ8YChSBcAgP/vGGPXMJk9
         pxzEc+W7uSN1CKe5bD94DjYJt9Y6duGfqUa5MO57t+dqlaKdJFD1jiV2y2fWkS1owZCo
         Ql80jqBWIzPlOvBHzA1rrM31OdZmphF+/5eBY1rkmD1kQMayix7q9gw2mZmToZIfDdjd
         BoG9u/jhckDZbXqNXn/MAcSeCDzMYrbCOybRmIrWZDFevzPORO5XcHGAcVyL/jF6IJav
         lf1UAVjCFeQ3mn5HHI1wbFYBwYe4yvPehATioL3qnlnN4iw1MOCGsvatMJ+z4lo7Wo/k
         I0EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHBLQINVkxiP3B0+ueio7h1EiqU+wIZI+AqivkhVKaqwdc55v/
	NAjhhLQ8lxSm3/QCaUSTgtc=
X-Google-Smtp-Source: APXvYqx4CvS0CUZK2ewfgAlV03cxO2aii7/QNnZ7fBTYDAhr5BnbQf0JhFnEnx63gn0A08KYRobeHQ==
X-Received: by 2002:a17:90b:941:: with SMTP id dw1mr5949213pjb.21.1582073938549;
        Tue, 18 Feb 2020 16:58:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c583:: with SMTP id l3ls2119149pjt.2.canary-gmail;
 Tue, 18 Feb 2020 16:58:58 -0800 (PST)
X-Received: by 2002:a17:90a:6545:: with SMTP id f5mr6138972pjs.42.1582073938197;
        Tue, 18 Feb 2020 16:58:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582073938; cv=none;
        d=google.com; s=arc-20160816;
        b=oKrU9fYQ4xImWyuCBgpaNVe+LEKo3NLjxlxmH0j65JiebZpfUSqjSJD/PoKRi/LrNn
         7YoTBmS70MZFGD4E7TKrbMEzRI0/WpAs/0rrU2KwJQUL9SxLx6L1zTinpTUzPEPV1/Om
         bAaOl/K1Tzgc9lroJLuuddrlHdT3I0L/hdxoqk3tscRZzob3WQZ0fyfuFL/R5fdkwy+6
         x9aUx8Jb3XfLmAml8TAXULj85j6WUGtDM9zsH8QwFwX6aBqJYBrfjpBNw9z9Ewv5/+jB
         T5G/B0SJ6DgNygw2I9J337FluG5jfjSD2PAFlys3f30Tgm+Af56uUhP5NAIvb0wmt65/
         SnXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gnHrGjs2d4rz7O5tZjdzLtL+/TxZSgxldIF3J/GkKZs=;
        b=wJbuL8+LxeCcE1ZVyoSzcVmCr+72agu1ZLIaH37pCTT4FhqwmK01tCkMoA79KHhpsa
         5hAvmDs+q9A5mpOQe5GWblWMgJSWQDsPnQejtk90FgphbOIJur6/AscwtlrRvknJb/Yt
         GeGZUgX+Pu95F/PE3hhXrhV08+vlvrgCWubA+fhQAISq7ovwo/c/JjKaxjGlbXlmhj+D
         ZaRGNjxreIYWYr5U1R/Hoq+msw6skh+15MFGInQk6dRLbbYLlb5V+DIICeoAtz7+Wh0J
         QhnbZnnsffBKZlLgNLQi9PbEtp8Gx755khBBd/lpYP5IfemiQtwueR8M2oIngzoUAKQE
         cTrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IzhUosfr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m187si22061pga.3.2020.02.18.16.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:58:58 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t14so8818165plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:58:58 -0800 (PST)
X-Received: by 2002:a17:902:7244:: with SMTP id c4mr21514780pll.49.1582073937923;
        Tue, 18 Feb 2020 16:58:57 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m18sm155133pgd.39.2020.02.18.16.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 16:58:57 -0800 (PST)
Date: Tue, 18 Feb 2020 16:58:56 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
Message-ID: <202002181658.45F66E21F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-13-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IzhUosfr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Tue, Feb 18, 2020 at 04:08:17PM -0800, Sami Tolvanen wrote:
> Disable SCS for the EFI stub and allow x18 to be used.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..dff9fa5a3f1c 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>  				   $(call cc-option,-fno-stack-protector) \
>  				   -D__DISABLE_EXPORTS
>  
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE			:= n
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002181658.45F66E21F%40keescook.

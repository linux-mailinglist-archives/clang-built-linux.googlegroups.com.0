Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUF36CQMGQEAMOYODQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id B20013991D5
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 19:41:31 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k9-20020a63d1090000b029021091ebb84csf2216433pgg.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 10:41:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622655690; cv=pass;
        d=google.com; s=arc-20160816;
        b=MajMueIhEcZQRQaktlzUCmizsA6RnkYYPL2ve7wuGGPlWaJ+tIAMXLPHBBpMFfw5c/
         CxK0qPLHD5UH64kUyW7cwTKaRBdL2oSwxuDrtNPZJp8xL436hEzXjcOAhqKnh0Is0wji
         YpqXYP4rs/svypkpOVVpo3NW2uGzoDDewapFISymBm+LuHMxP5odEQww8P9XOyuVWD2Z
         205rpxKIOr0ueo/JuFSE2mqyKyDuD3LoLxzQXFJZ/R3Du8b3OmHT773BWJ69hoE7ym4t
         Yd+7NssvnhV/R25p52ZTGBFmYrcwGnPloZBxF/n/8lLjNwGEErKHn5tIe3N3rXPKZh6Q
         ZG7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=//4zMhJwgli8+xbhj+3JjRBADIINHPbnfANP/pEBMEo=;
        b=yptpJIOcQ9vyAv3W0Xup5D+E0KQzoo5XvNnyGsbzZruGfPxdFpic2d44lEeQQK1Yu9
         TXsgD2rS3Eej3JSPzn14vpoDyx+VG9n7KjRAJlNOwcb75KRb/LDu9f7QOWXZPk9palE/
         //xZNk96EGfmLTmUO9Zb9pmHBLmUA2xItq1Efy0Q+xTcJS7SKjwHLgEj5bhOoQKSMRKP
         IsvOee6c15+yZXsMg10WExY+lDWv9M/hUPb7weq9wh6kXdCHWNGuUaWQLH+rJR5iZkd1
         Zqs3tonuL3+6FkOABf1LbZZl1dJJyDhMSNVYAMa9JlHWt6KbY5gDyr63/Ohd5RZaTfVp
         myLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oJB2bwyT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=//4zMhJwgli8+xbhj+3JjRBADIINHPbnfANP/pEBMEo=;
        b=hicAOnh+21yAoBpE/Br8QEJIJVKVr52P4fTVpjfQhvrHKzJqXZIE2VG2825YtPPof5
         tHhQvlF5FsXXnA89/BeKT1eu3/hGm5d5YFIaXKtyLvt7OnlQIoKn3aQyYzLR9L0lbtaK
         NEY0s2KsbdMUFIjs2Fxm9bovX9t7GVjWqsAFz5jZMCJFJLT4Wivb+vNYGw+2HHtLaY7f
         fFKDqXAGdR0mjcI+6+KKvLAhG4p6vNlgS6ZtkFgxHPRx37CqU4jA7EWBpUFkWvx6i12b
         Tnl94N8lKCOomRj0eHa2pau8eQHyDnDSUQ7ys4jn8mAGlYXOgNgApb8hhtGnH7QkXYSI
         WQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=//4zMhJwgli8+xbhj+3JjRBADIINHPbnfANP/pEBMEo=;
        b=j5WeaktytztYBmF1B0oR+OslV1A2bDzG7EgZl/RRLWZwQiEL+a8B1E3M7WKju8BYkQ
         QYMLKSAvpGn9uFZnLddXhZFn1soZA6Hgqbr1dPtzHAMlrTHTgfgNbCvtIOZCqRifPt3r
         /Y9LUwYZbrCm6G+uArbH/0eokec4T2V3XIu5bWHfSvvmpxnmaCpH3bXnFtSg53qSTI6F
         q6BUjlbl4VdESZp3XXA7bkB30xxb6LCI6adH90j0tkXa4lFLGbQXk7blHp7I2XNrfrR1
         h+B869v2Zuxj7AgOpkU6CMhgeKXMQLSwLscJCpnkVDaBO9fncVLnYgcg4fo5ARCoQ7Hk
         RvKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ol2UAX9ECGM4lYFoo60rmfsjh+uH7DgAt3AhSj+tVsr1EpM4E
	Uat9MPgSonjDH7DQGvmT8ko=
X-Google-Smtp-Source: ABdhPJxTH/mCw6iR68f6hWduvzaG4cnk34czksgLoSvHB/zXUFpBqcIwqGVS/kT9pUGK8g0Yw1DYLg==
X-Received: by 2002:a63:b243:: with SMTP id t3mr35096140pgo.253.1622655690449;
        Wed, 02 Jun 2021 10:41:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9517:: with SMTP id b23ls240655pfp.3.gmail; Wed, 02 Jun
 2021 10:41:30 -0700 (PDT)
X-Received: by 2002:a63:f84c:: with SMTP id v12mr15403024pgj.299.1622655689919;
        Wed, 02 Jun 2021 10:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622655689; cv=none;
        d=google.com; s=arc-20160816;
        b=klS15GFq/WipQZly5mcU4OMMHMlyyuIE+uHNU8qk+grxyXBpyFrhaNuCa2Pt5dEtED
         rFsT26W9uKifNo9HMGvw4w9wFwJ0/ClxTmXxhGw/qtPtZtETDVDH9h82gkYUtXWFjf0i
         WUG1JkMCbFDn1/JGsgn6Lpj8g9VRDJvgSqE+mt09+6Xsja2l5QtMUJHwpcomFqb6XHa/
         sghrOxH2LERA3Eg9ddB2y2ALyx0fhGAVhD7gyWVC+1K+eRexsACXCL5tyABTv2uhDY0B
         QYb3GkT8NYuZ5a1WQgyLUO3ylLt4pfMI2L0239GhKfhkufoEW4VzKH55Eb/fCZMK8qHB
         tsrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ShPxXvSOAqFpgb+RTz9vV7r8VTjJc/BWtAFmiYwez5s=;
        b=uLCwldIyKPt1GdHUx87LZxnZ7AmN/DKio9FYihvrLok7Cc/aLJGixQtx3hNBd60jac
         wZs+7nfCwN27uQCMDKEC8pp/TvzNvcB8Co5vyEO1cGZnKccFTjPrh/lq6SHjkYv7E8bA
         dVwcj5jrA2HjVSTjo2UHSubx/8MjYEv2R33a/oU0cFHokL4S51zLI1Y8mO8HaJB7SmEa
         4I9HPAby/6MH/lIlajvNNKJvkIldsEHBwEhR4+eotdA5uXYZFKY9BUHWRCPexhBRW2oF
         djMmnUiLzU0YIWVLfdwYrORKAvx3tnkkCXqYw+Lmlk8gWEqkMODCaiJkzwXaLTW5wl2c
         WLvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oJB2bwyT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id f3si25614pjs.3.2021.06.02.10.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 10:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id k22-20020a17090aef16b0290163512accedso1963776pjz.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 10:41:29 -0700 (PDT)
X-Received: by 2002:a17:90b:2250:: with SMTP id hk16mr6487537pjb.95.1622655689709;
        Wed, 02 Jun 2021 10:41:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g19sm225497pfj.138.2021.06.02.10.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 10:41:29 -0700 (PDT)
Date: Wed, 2 Jun 2021 10:41:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH 1/1] pgo: Fix allocate_node() handling of non-vmlinux
 nodes.
Message-ID: <202106021037.09943A41@keescook>
References: <20210602005702.9650-1-jarmo.tiitto@gmail.com>
 <20210602005702.9650-2-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210602005702.9650-2-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oJB2bwyT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

On Wed, Jun 02, 2021 at 03:57:04AM +0300, Jarmo Tiitto wrote:
> Currently allocate_node() will reserve nodes even if *p
> doesn't point into __llvm_prf_data_start - __llvm_prf_data_end
> range.
> 
> Fix it by checking if p points into vmlinux range
> and otherwise return NULL.
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/instrument.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 0e07ee1b17d9..9bca535dfa91 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -55,6 +55,10 @@ void prf_unlock(unsigned long flags)
>  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  						 u32 index, u64 value)
>  {
> +	/* check if p points into vmlinux. If not, don't allocate. */
> +	if (p < __llvm_prf_data_start || p >= __llvm_prf_data_end)
> +		return NULL;

This should be a tighter check (struct llvm_prf_data has size, so just
checking for p < __llvm_prf_data_end isn't sufficient. I recommend using
the memory_contains() helper.

And I think this should be louder as it's entirely unexpected right
now. Perhaps:

	if (WARN_ON_ONCE(!memory_contains(__llvm_prf_data_start,
					  __llvm_prf_data_end,
					  p, sizeof(*p))))
		return NULL;

> +
>  	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
>  		return NULL; /* Out of nodes */
>  
> -- 
> 2.31.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106021037.09943A41%40keescook.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGXVQOFAMGQEDSDT5NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C6F40B845
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:40:11 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id q23-20020a6562570000b029023cbfb4fd73sf96558pgv.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:40:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648410; cv=pass;
        d=google.com; s=arc-20160816;
        b=vy+I9Cq3XO4eX2PB7P/AdcGmtxGCzCl9p5A6FlqR82YcYFnZ8wpwCz+T5yNtYOOi5b
         /+OxmHPQ1odQcHcvxIdPA3HGQA8AX1KWRxvqw8jghle9Da9tGeGVWvkznSfwMeZlMx9c
         p19tWK0OSOmUtIyiHGOR8gAuEkgFv8mLOktIcxKfPHGxEm0Z89n5hLG3oxd3LhyguCRI
         oGaI/kBzk3qSvYhoBWIch5xbMDc6ZEUTS3E27srTrz8AIxhhP1GD2w+BaclDemK4NOPr
         W7WesnVW/MjsgH06Ooz/hkCaV6HsLUPIQC3FCyttDQPKH9k6ITPdrm+mIzgdYvbzS2MK
         j0wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/wnyeIC9NyuojgGhtqhBQSCz8rU5XW01VluShg6vWF0=;
        b=opKRBylI7Px/4v99mcGg7Mo8AarP3baedRIoPVE2qBt8jnEDjhMOxkNvol5d/J0O6N
         YQtIMW8pZe7XVmj5dkA2xv+RrhJpLOrbdUQGZjYdUzZMbDG1gy7WuV5sonrDu6Ug1+1S
         YNlypS9rrpsA967J/pxY92yO9sz+psY3a8dRSJWg+1GUIijO+huPsU/u6QAiHc+I7VRj
         2Y3DiAOEfEKmgQQVTQudH4PJ/E+RkRETIg/Gx0lRsswWjx9sJJFAdEnkaKx6g0zMcZSp
         Fb81tREhazq3CRQ+sbC/f9T+DRX/usg1RUDfe/9GqNUyOE14yQpYiDtYwbDzKmYPtCGX
         NV9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b67l9+Lm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/wnyeIC9NyuojgGhtqhBQSCz8rU5XW01VluShg6vWF0=;
        b=gMNumPLXaGIYjwD7yOs7hLk7ADLzgQSxVfAYx69swnC2F21cEQT81ZbDCgAytmmnoj
         X8u2hQ56vg0nfQ6wW57r6vM0EpbkRHzUOaxyW3B8RYbfyweyrOC69uufrZ2fN4h1rXqL
         hUeRzV+2crZaRJdFUUOAmqpHXNRbiKYiGkEWQMa+Sbv/KwCh804DLeRSBeV53CssNExO
         KGJGLiLjd1PldbUDAqi+ComdDystgtc2qoRLX2plxD0H6n42ppU/K+0ZyryWZv1cXAcT
         1L737dz/bGbC6R4jdzjoaDnFZP5Kxgce8dlIa18gYQXS7Yn/MnAWzymjJN8Lkz8HDMtU
         bkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/wnyeIC9NyuojgGhtqhBQSCz8rU5XW01VluShg6vWF0=;
        b=S5mouFCEHzrYtctWIdU7LTzC0nWQjcasQ/2yD5bHDWDr0MmFaXuJtj0ZCQcYv3u4Yh
         CYBms4e7tmn8oYP/3SIX3fBA3IZ4Jhc9GLGWZR86367YjFcEaKH7kwfbDMvkXK/omyQM
         3hpzfvh0Zd66AsO82ObPsAU8PKfxNDrir6aZUZNKYicwfxNmecREZ/vt37lvC4RCGAPH
         H7bPJFvH/cbpO8HLFdSAm5Hp3z1QUo9kck5ZE3579ws+LRttMXUgzn3Uek4gkwBIcU2M
         zHglhmqQ13Nb27G0tS6I5lgMbCDX0m3W+/TvWNc1BjQlI3C98HabWr6AVkfEWXQ6/4Ri
         6psw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jTu11VhvzzkJ/xfoQOVtmhW8+knB3eCrmqBA84sM3IDh6Z04o
	VM89LM0uZU8yokAsxZPOaVM=
X-Google-Smtp-Source: ABdhPJwidF0ruMgaPAHPyXwZ78ABPDssdy4BLNHUZFa/3HIhymDrnZhwbu0BeMWWDW1b0lXrPcLdPw==
X-Received: by 2002:a62:ce0d:0:b0:438:71f1:4442 with SMTP id y13-20020a62ce0d000000b0043871f14442mr6458526pfg.21.1631648410539;
        Tue, 14 Sep 2021 12:40:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls51348plo.1.gmail; Tue, 14
 Sep 2021 12:40:10 -0700 (PDT)
X-Received: by 2002:a17:902:784c:b0:138:f4e5:9df8 with SMTP id e12-20020a170902784c00b00138f4e59df8mr16464270pln.14.1631648410012;
        Tue, 14 Sep 2021 12:40:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648410; cv=none;
        d=google.com; s=arc-20160816;
        b=daRx/UDuYNwdxx86Je2V0j0AvahvK5Tyeerg75d/1Zp0WagBcPIVyKwOPtwSz5GNzP
         q6VH+ZSEkQ84qYPQTcs607N1hrHx66P4eIFbsaIq+jjcc3JRGugqek3pYW78Atajon/9
         O8nQwnJuOH7+phSNV/+Ns5VqUbOLLPbr3obDm6QiDb5Mjp6mq0sJVtJ1DH5CoyDyp4Fo
         fDVQjioUa5Qq4KKtWKivbbGgtDtqhuhJcqiq6SbYaUTKctJ7DCsp5XDFWE4QoXn8g6Oc
         w47491lkdm36hV+73h5Z1yU+dWepnJknY5zLGoE2gQf7jEjkj+QetBqcjdkRlwdcInAX
         Ba4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tcEmJONXzFctWoWAbmoyFCWtMu++a2TB+LdKgluV5F8=;
        b=YdraQ0RkpAcuI6bOfXSqpHeHkd2YfONPBWKvPpsx42aZPB9yIV2qjgXQYDRUb1vDf4
         N4NQQdpHQ3ApAlF7phQ6P2wblEpt0aTUT7IU1/uRYvHMox1yTmARv/zsT2FJqR9tEkq3
         hBjze4mcRXbDh8RCQ5WW2/sbVtjEkrYid3p9LH67nZAz5lKLBj2L5Ry47bPjR9ZhCes7
         hsT6ZbTMIsp/NCFaeE/4KlLtC/nIM2FWVEGwoXrkgG9Koow5wGlvUrymt8Sq4Ppz6AxE
         godiMHdWdDMokD4//ZfQ5iA7D8xgrXuMizegyDnTSFhxflZuPQZf+pnsdAyyURGD21eP
         AYBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b67l9+Lm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id t7si20643pjf.1.2021.09.14.12.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id w6so77688pll.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:40:09 -0700 (PDT)
X-Received: by 2002:a17:90a:1984:: with SMTP id 4mr3968880pji.87.1631648409751;
        Tue, 14 Sep 2021 12:40:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y3sm2464895pjg.7.2021.09.14.12.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:40:08 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:40:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 15/16] x86, kprobes: Fix optprobe_template_func type
 mismatch
Message-ID: <202109141240.4843E7A9@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-16-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b67l9+Lm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

On Tue, Sep 14, 2021 at 12:10:44PM -0700, Sami Tolvanen wrote:
> The optprobe_template_func symbol is defined in inline assembly,
> but it's not marked global, which conflicts with the C declaration
> needed for STACK_FRAME_NON_STANDARD and confuses the compiler when
> CONFIG_CFI_CLANG is enabled.
> 
> Marking the symbol global would make the compiler happy, but as the
> compiler also generates a CFI jump table entry for all address-taken
> functions, the jump table ends up containing a jump to the .rodata
> section where optprobe_template_func resides, which results in an
> objtool warning.
> 
> Use ASM_STACK_FRAME_NON_STANDARD instead to avoid both issues.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141240.4843E7A9%40keescook.

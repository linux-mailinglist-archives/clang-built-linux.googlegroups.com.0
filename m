Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKUL4CAQMGQEMMI7CRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF632576E
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:16:44 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id b20sf5130529pjh.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:16:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614284202; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qk3NceZG2yL5HOFcXlN3FCH/0fGPtkYVD85/dH2uYW225Ks7vX36EV6lS8s4Ndyd0O
         B7tUkmBbzPWM+HjkGC/zArD3EJbD5ilKHffDgPU4rZlx+xRtIY45IVX34mODxlvNYjcY
         Vle/zzpb5JJEqRkkVbEId8M6YMdpPUlDgPmQbknQHRbvkDvJ6UBD1UruQQIg/ibKZx/R
         JuDOFwF8e+mlrKSli0Wdeb+WAkvr142DDTnKB1k/CT/j5RfxD44N+7DxxnwaH2+GrtIz
         K+bQOxvJGc5Kl0FTiskKYgtc+rbeRSsS/adf+js5RU5xxslSwf8aSAVsR1k6hvVqMgy8
         volA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+CO5WZHeGu41DZZ69yIx/bYe+Rc6k2gBt6nmAu5o3Vg=;
        b=yQZkaZFYJ/TU2LRyzlsZtht5xpH31/8LR/fH79JdGzp7GHvXdQJOlYnPA7l2UM2s+H
         vr08oFI3qTdwe41RU9BmszcF5gZfZLvCjptdd1PPWIJcZOTxEtkoNGo0PwbqgpduA6ak
         8DBeYYiW00XbVUPb0fl5asTGLlqfm+phrX66FrG0WMTmKygksH3RoFg1KaNNmpvB8SJo
         h/FaWnbEvRnVvFeaxbMN18lHs+vGaqQiZl5UtRc107ThBIXN55DaGZUkDVlaFTiSyjqP
         LZzfaLRV5ZC5LgPlz/CeBAP707G6yhwr+bseXa2u69LHkNRLrxT3vjQiq7S11SlClk+c
         g0Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=euraqYIp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+CO5WZHeGu41DZZ69yIx/bYe+Rc6k2gBt6nmAu5o3Vg=;
        b=a8IQQbSdhnQYTbIVFbdnNyo1lPAKONyEFhIXJcKn5Hg2vSmxXUzLw9qRYsPwkjNHdx
         UKzKiewbYmYWpE8hQpLVlCenpirvQd3zjUc+hpkCnj+s/ZuTJuInpbHVKjC0IQ3IG6Fl
         AFVtfXtSd/RsPFIO8WJ3efOrsy4sGAIaFDg8g+FvAbGTEsmFOEiFBg8ADlJRYZcJWyke
         3nfdH7h5b68YlaqZmzNthxOYJKub1odSRt2xNnGrsh33bZZwdD0thMXkUXc8WwDxLjGT
         +uQGmw6v/lIjzqlHudL3Qc4RFFHdixdXa3hOcuG5LjeGYOFDefIwrldrbBqirs7VCqP0
         uCpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+CO5WZHeGu41DZZ69yIx/bYe+Rc6k2gBt6nmAu5o3Vg=;
        b=KFdpyh0OcN0B8kV3wTZs+n7SRdd+I2jcf8CdYAx+9FxlHV+cJ+i1c/pH96dXA3b8oA
         0PyPBcENB7zN+rJnFThhN0d2xyFCiA06gTshM1MnLsKc7b15S7QX9SU6jYfi15HE4t9D
         ZVcuUUfyP3gkITt+IcwQc+RaYF0spyGBTWZn/2feSnmjLJiKewZQNWFwxJEhfSEF/vqj
         u+YQUDLzhiOWDn2q6Uat+QXjoqj0E4KGJkofgXB609Ahks/wxmI0FZmkP3F2l0/DM1tU
         H+lw9fhVZQJzD7ZIPIFRcVHpRN1Ex8YBdSkIgUNDpHCWM27N6SoiY7kStWR9yaCAdxlQ
         2fgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gSOuuZJCirofGbwVML39YXZHmAu6J8R5sScSUd3WKELWM5M00
	Zd0daCm0DbQBmgjYZg7IfRQ=
X-Google-Smtp-Source: ABdhPJzZ/X247UvakGWJ5bKIFzj8P3yucTia+JGt82waQY85UJikB5LVbq/JAtkX8HTx/Zmve/LZiQ==
X-Received: by 2002:a05:6a00:1a44:b029:1d6:4170:ee0b with SMTP id h4-20020a056a001a44b02901d64170ee0bmr4861021pfv.57.1614284202674;
        Thu, 25 Feb 2021 12:16:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2311:: with SMTP id d17ls3490451plh.6.gmail; Thu, 25
 Feb 2021 12:16:42 -0800 (PST)
X-Received: by 2002:a17:90a:f493:: with SMTP id bx19mr85647pjb.213.1614284202001;
        Thu, 25 Feb 2021 12:16:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614284201; cv=none;
        d=google.com; s=arc-20160816;
        b=Volo4nltrBFJytTJHiYhFnzIVT43UPNayDJMbM4xMS+tvDZGplFiiHKhWJLraMu98q
         FElLKdnfuhDzUZDSh1aW4Op9ubjO3tAXacMQZiXZyJneBWgXneU2rDST1oU94L2HBv23
         V6ELUATndLAqURc7cRMErbSVqar0n31PWqzwNzZA7sNNdCDUoHU/rBn++oOOCMG3a4e8
         vkh8KcJviFrtpKKBpmJ+D4esSoLvkL0OZwef67El/pTaXx0a4mbJQRWemmeVFtvV+XCk
         gD6ZZ3rHPEHq6MlDNj6nChwPl6/NUYi69UQtfO6w50TXW7zchvjbvVZOzkjB8dLZiYa9
         LWmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mr0qfRB0Ik/agsf3L0HG3xZ8g9VBKc2G+9roJzfPeiY=;
        b=fRlmJyw+ksIqMyVY1RCsEL1I/zUA3oqV8bzRzzyBKZnyy9Fd1F+jH5zxNWLTjQ36uX
         twhJ+p3XjsnErYh4gb9D3xNdZqki2NCyI5notegHPGup1k/WBTKfFNmepQ8wucNY75Fn
         BUww0az26qKg2nXqKqrwaKWQo0ylci80p2OvmRBi59GohZ0tysLImNd4IzBhyoBrn+Ct
         TrXSTIkEF8a9BnvQxTVfZKnZPGrpcwTMxMwYaHuCUZYGeFmwB7fvgf7kdto+q98zZ+D6
         A42PaECJKs62OEgcRmMrZlXSlJAcmYPUNmfWeAWllVfjrFB+dHgAf3j4Jpu4+iC+CDqc
         ZN8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=euraqYIp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id j18si328489plj.5.2021.02.25.12.16.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:16:41 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id n10so4542326pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:16:41 -0800 (PST)
X-Received: by 2002:a62:187:0:b029:1da:e323:a96b with SMTP id 129-20020a6201870000b02901dae323a96bmr5028766pfb.28.1614284201699;
        Thu, 25 Feb 2021 12:16:41 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h3sm6888983pgm.67.2021.02.25.12.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 12:16:41 -0800 (PST)
Date: Thu, 25 Feb 2021 12:16:40 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <202102251216.935EFD7F@keescook>
References: <20210225112122.2198845-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225112122.2198845-1-arnd@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=euraqYIp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
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

On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When looking at kernel size optimizations, I found that arm64
> does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
> which enables the --gc-sections flag to the linker.
> 
> I see that for a defconfig build with llvm, there are some
> notable improvements from enabling this, in particular when
> combined with the recently added CONFIG_LTO_CLANG_THIN
> and CONFIG_TRIM_UNUSED_KSYMS:
> 
>    text    data     bss     dec     hex filename
> 16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
> 16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
> 16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
> 16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
> 17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
> 16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
> 16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
> 15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux
> 
> I needed a small change to the linker script to get clean randconfig
> builds, but I have not done any meaningful boot testing on it to
> see if it works. If there are no regressions, I wonder whether this
> should be autmatically done for LTO builds, given that it improves
> both kernel size and compile speed.
> 
> Link: https://lore.kernel.org/lkml/CAK8P3a05VZ9hSKRzVTxTn+1nf9E+gqebJWTj6N23nfm+ELHt9A@mail.gmail.com/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102251216.935EFD7F%40keescook.

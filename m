Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBKGG6SEAMGQEKUB76YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 980373F0790
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:11:37 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id m3-20020a17090b0683b0290178cb50bc1asf1587764pjz.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629299496; cv=pass;
        d=google.com; s=arc-20160816;
        b=oX1Grpo+8ZW1oMYsGIUmBD++Ac05Aqcmi0axE5L01hR7y3NbUfBa1HDGpywzz59mou
         3a6HAQrjkJjCWyHPykHjBpQeMSvZrcFq+f5yBAAbUXy3qnqF9E5/LphrSOfTv76WNUNe
         bxSFV5Hn7ZmcWCJXv8YnG7QDPPgoPBrCzTOhnvZS8YC1+oLFNZUWQQ3oTsAD2f4EZmvS
         wx7fzK+ZStTvIHibKxGGKXMCyny42mwDCWLAvvx1sxEKR0P80bTpN8Lm/PagIi+B+5qu
         confV2RHyKFN3W6Mrr4HnHFTk+RunGnIuRbYKNEi1zh7St9siPV+d8A2FwsMBx7yHcyg
         rVsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SJgZZ8h4melthKtavBxQHQVaTGCArJ3x+O9Brysu1C0=;
        b=yWjkraK5nB5ibtsUDD2EjhGUNbTBzQB3I+idS44p+/PAmDwCD/Nvra/4bkd6qY2lXY
         /M15/Num4IABUuyl1uCfg5xgP6Nk6OhuWGEAa0PJcja2KpFhFX4q9ZZSsx6N77G9h0s7
         w+O46b58q/2mkimxNakV2kW/bKusexiyvBmO0blJDTPOaUQshyvOvfyPEK3vZ9/SzpzD
         +eDfHlw3mPreV2yJFES6FPxJdHAPEnykwSzCxgy6qxDgnvC1t/FLTW1elnXUxhWLLBFI
         vqp3q9Pt8nJjGpLcB6CQc+9ppSf2rDFw0V/oxZh7DEXY5ysTMWgPQWv+Nf8dB0ylAAjA
         FYRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nKyY7H15;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SJgZZ8h4melthKtavBxQHQVaTGCArJ3x+O9Brysu1C0=;
        b=TjE2HEsZo5fd1lsgEGrXVqHFsgQsOTGf83+Kd1qk1H56Q032akvfdkHfB8Q/+xqxfr
         1do6BJFLa8VX5seMUJeCsQiJpiLcSr2eFnJhNPpEC+LvrIyx+bs+4Grv4+I++C21vj/0
         WwiuMMfW2UychEeST7a7FT042hfXthIJ0mt9w76vXIJdhEkuc8zPSFRu6nR71eMT/DhH
         Xi5HhmxhZwaHwPPeRghpKAKPzAIk2O/+Y6SKlttP1IPk0MLESFmAmG/TZWgOI4TSrRjC
         NBiKreyNE/EpCxQnjcFc591hd+kkSmIsRmOEOHPi5kp0T1Hzv+bdeoLkY/rkbSZWeXSj
         fKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJgZZ8h4melthKtavBxQHQVaTGCArJ3x+O9Brysu1C0=;
        b=DQZYZNEZJLB4Ot0r7PpzuQpvBQv304sKVQ5OnqcYJt+O+KOa/IJg/ZuQOV/y4+gIYw
         Ms/555+7cWfqgxoCk2AJIfmbJtZUJGf/PY54gdiw+B7ahDwTSGzC+HvnbShrxJUY2st5
         74lJdt/gwMjVYiyyBp2Q6Fhqri1ajoFM9MQIclSFFg4Zonitn0vnd+pesluXvxh6/AsK
         wFr9reoSvwbeuKKjeWcz9pgnN5ZtfUHdAIvn/nQxtzaRY63W0BJLbqLDmhv5Dt506rkU
         WM9hUHRktcdxMI1cV42YGtJGjP9rupRm53aLTptEYPwMvJbgdp37Rm/ku3RT+WQWv1RH
         jP9g==
X-Gm-Message-State: AOAM531QzvC6VQxMCI6nUQX9t0Qt1kedRBGA+nCQ7aeTVku+4xyW8Aa8
	J11J9kCbJX5GloCKRfVrwI0=
X-Google-Smtp-Source: ABdhPJx6Quk6GKqu05jfhtktZfmZ2K4lpd7IU6rr7qCXhwy5FaylxOUJ8c09A6brIg1iVic0Ab9dbg==
X-Received: by 2002:a17:90b:392:: with SMTP id ga18mr10070896pjb.156.1629299496244;
        Wed, 18 Aug 2021 08:11:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:eb15:: with SMTP id j21ls2884257pjz.0.canary-gmail;
 Wed, 18 Aug 2021 08:11:35 -0700 (PDT)
X-Received: by 2002:a17:902:f704:b029:11a:cdee:490 with SMTP id h4-20020a170902f704b029011acdee0490mr7766970plo.37.1629299495277;
        Wed, 18 Aug 2021 08:11:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629299495; cv=none;
        d=google.com; s=arc-20160816;
        b=BIbQYaDw/AaztcQA7BB6PH5DhZw4viEeQGPtff98DsniGxJeertqt2jAT7elheC/PF
         2mVEfF/rBgE7kp//JDAaYRvybs5vLPV8v+Kd5XrOLGiUa1mhFFCAQGHb6i57PZaWGSl7
         oNBoYptz+DNe8sBCGDGpg/CL+TrCH4NW/P9MdnytzsNF0EEZVjuXBCk3RmOjfJvTUZ7v
         CJPt+BpAUH7C5oaRCP8okgcMDypXwyT0b8v3ASgEc7oaQhH86i+8AJqRNLL7PB1WDV7P
         o2Ozhp95nboKkgsQWFk4Oral8j/NGLBpK4cm6x7PZApoHZaufFRWa1/Oo5cNBV3/uWX+
         KGWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BATSV86SaK5afBXIFxzdzZX4j4EhGdui2K0OHBJGQcw=;
        b=k7TPoO1+kPKY/tW3w9sp1rAO5rWWAfqrfhkiwysDVlPzzRkUiRpUY5Zhm474jqaCkz
         H0cJPOaqvYHWeMPUvX7DJe6rhaJbBAcTffxVKoGOSSWx2P6T7ZMAsdsQAkburqZm4rO2
         qMMRkSMC5bn5N5SEzRy87msOMgmxI8/E2KVoPgP9z/O/IdHtKlLodi6jQr+G9gEtVf88
         Hf620yOJ9aSrccTSYeq+4Q9XToqM3XFCyT1dTpglk/1d6Z5Y8ywqK4JW6UOHKaw/gAJc
         +iYNtdtgRfs6HRSTTzmkCTnOK0L2grS5wTNV7Q6mn8A9HJzQQonFiw/xGYiM4R8hD8QG
         /2OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nKyY7H15;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id b15si16242pfl.6.2021.08.18.08.11.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 08:11:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id c4so1979969plh.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 08:11:35 -0700 (PDT)
X-Received: by 2002:a17:90b:1e03:: with SMTP id pg3mr9751970pjb.203.1629299494765;
        Wed, 18 Aug 2021 08:11:34 -0700 (PDT)
Received: from google.com (157.214.185.35.bc.googleusercontent.com. [35.185.214.157])
        by smtp.gmail.com with ESMTPSA id m7sm28291pfc.212.2021.08.18.08.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 08:11:34 -0700 (PDT)
Date: Wed, 18 Aug 2021 15:11:28 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	kvm@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 53/63] KVM: x86: Use struct_group() to zero decode
 cache
Message-ID: <YR0jIEzEcUom/7rd@google.com>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-54-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-54-keescook@chromium.org>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nKyY7H15;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::630 as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Tue, Aug 17, 2021, Kees Cook wrote:
>  arch/x86/kvm/emulate.c     |  3 +--
>  arch/x86/kvm/kvm_emulate.h | 19 +++++++++++--------
>  2 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
> index 2837110e66ed..2608a047e769 100644
> --- a/arch/x86/kvm/emulate.c
> +++ b/arch/x86/kvm/emulate.c
> @@ -5377,8 +5377,7 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)
>  
>  void init_decode_cache(struct x86_emulate_ctxt *ctxt)
>  {
> -	memset(&ctxt->rip_relative, 0,
> -	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
> +	memset(&ctxt->decode_cache, 0, sizeof(ctxt->decode_cache));
>  
>  	ctxt->io_read.pos = 0;
>  	ctxt->io_read.end = 0;
> diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
> index 68b420289d7e..9b8afcb8ad39 100644
> --- a/arch/x86/kvm/kvm_emulate.h
> +++ b/arch/x86/kvm/kvm_emulate.h
> @@ -341,14 +341,17 @@ struct x86_emulate_ctxt {
>  	 * the rest are initialized unconditionally in x86_decode_insn
>  	 * or elsewhere
>  	 */
> -	bool rip_relative;
> -	u8 rex_prefix;
> -	u8 lock_prefix;
> -	u8 rep_prefix;
> -	/* bitmaps of registers in _regs[] that can be read */
> -	u32 regs_valid;
> -	/* bitmaps of registers in _regs[] that have been written */
> -	u32 regs_dirty;
> +	struct_group(decode_cache,

This is somewhat misleading because half of this struct is the so called "decode
cache", not just these six fields.

KVM's "optimization" is quite ridiculous as this has never been such a hot path
that saving a few mov instructions would be noticeable.  And hilariously, the
"optimization" is completely unnecessary because both gcc and clang are clever
enough to batch the first five into a movq even when zeroing the fields individually.

So, I would much prefer to go with the following:

From dbdca1f4cd01fee418c252e54c360d518b2b1ad6 Mon Sep 17 00:00:00 2001
From: Sean Christopherson <seanjc@google.com>
Date: Wed, 18 Aug 2021 08:03:08 -0700
Subject: [PATCH] KVM: x86: Replace memset() "optimization" with normal
 per-field writes

Explicitly zero select fields in the emulator's decode cache instead of
zeroing the fields via a gross memset() that spans six fields.  gcc and
clang are both clever enough to batch the first five fields into a single
quadword MOV, i.e. memset() and individually zeroing generate identical
code.

Removing the wart also prepares KVM for FORTIFY_SOURCE performing
compile-time and run-time field bounds checking for memset().

No functional change intended.

Reported-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/emulate.c     | 9 +++++++--
 arch/x86/kvm/kvm_emulate.h | 6 +-----
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index 2837110e66ed..bf81fd017e7f 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -5377,8 +5377,13 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)

 void init_decode_cache(struct x86_emulate_ctxt *ctxt)
 {
-	memset(&ctxt->rip_relative, 0,
-	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
+	/* Clear fields that are set conditionally but read without a guard. */
+	ctxt->rip_relative = false;
+	ctxt->rex_prefix = 0;
+	ctxt->lock_prefix = 0;
+	ctxt->rep_prefix = 0;
+	ctxt->regs_valid = 0;
+	ctxt->regs_dirty = 0;

 	ctxt->io_read.pos = 0;
 	ctxt->io_read.end = 0;
diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
index 68b420289d7e..bc1fecacccd4 100644
--- a/arch/x86/kvm/kvm_emulate.h
+++ b/arch/x86/kvm/kvm_emulate.h
@@ -336,11 +336,7 @@ struct x86_emulate_ctxt {
 		fastop_t fop;
 	};
 	int (*check_perm)(struct x86_emulate_ctxt *ctxt);
-	/*
-	 * The following six fields are cleared together,
-	 * the rest are initialized unconditionally in x86_decode_insn
-	 * or elsewhere
-	 */
+
 	bool rip_relative;
 	u8 rex_prefix;
 	u8 lock_prefix;
--
2.33.0.rc1.237.g0d66db33f3-goog

> +		bool rip_relative;
> +		u8 rex_prefix;
> +		u8 lock_prefix;
> +		u8 rep_prefix;
> +		/* bitmaps of registers in _regs[] that can be read */
> +		u32 regs_valid;
> +		/* bitmaps of registers in _regs[] that have been written */
> +		u32 regs_dirty;
> +	);
> +
>  	/* modrm */
>  	u8 modrm;
>  	u8 modrm_mod;
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR0jIEzEcUom/7rd%40google.com.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEXI6SEAMGQEEOAAJCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7723F08FD
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 18:23:47 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id p84-20020acabf570000b029026702f1769bsf1257231oif.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629303826; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZvOzzat7c7TL4MozWF8Uztx+KWdsyrJzlwvRRKEvpo5C0LoQIDHIcrwKtjYmBIjEnu
         PAQBeTUcP/Qv23e/5N3LrU6tiQDIJ6HAVXEl1YWCqoqEUs6kawVnAGXWBPU6VXaGlttN
         Fg6FCjEchY4rVT2rgcBIYvfOyaTmoxmYSBXPHrFVxNC901KDQu4UKBpdRiNCIDUCqDt2
         W8LoJnTYYDMDwh+g/WeY8NchbncHEj0w+O9Fd85rDLs2SPyjZryl5dR2OYFts3lEXq+d
         TARMZ0Vle6dIUpvlYu4LIzxB95SFCvEmmmmiwh1UrFe/gGCWUiZgQ0hi21miW3AyD48E
         UKdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J1Aab63QvsvEW5asKuNwAGbkxa90BgPbEm/7LwcDyqI=;
        b=DGHF8J8jJ3WFBARc7NPB5OmDMXAnCOaTNONHLHHVOEWi3Vvos9xpNF2LQaAKMkZeaG
         Es66ntghGGXrD7vTYh1O9LQ8UGgbuM9iib+lx/VuAo5WkpDgiG16VJDZfb+DQKpyYAAe
         9zIA/kVxMq65yfDFV0rl+PJOQPx+ys17qggUzovDRk8S7ndjziBolgkg0Lh+lN/5A4/Q
         zkSnL0fZDpUYjb0tKeWkjxiDg8WLgUTq9W2PaRS7pY8Svux+o/g/GOFNg3DpAegDPdTG
         I6xM3t7d2kdPyQgtCfjkdsY5pgbE6nOBs4BsUgsflfZAOI3UzDY0iezaeLkwvNZAjOAu
         YDCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fura/iwY";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J1Aab63QvsvEW5asKuNwAGbkxa90BgPbEm/7LwcDyqI=;
        b=E3tIRCbsgvUZDdTBpFfq5iQAwsHh7jS32LiRndS/fNTUPU8Jkw5JLASIXjYvWtjjJS
         Bc/+7E1VahpBDwgHSPWoGbZ6vGKJ5jlAqSFGGYhsOiDyWPBqJ+Yz8xy9RI7ssfhPAKjn
         O/zu5viTgICcnWWKDUaFPg7mdT2WG2E9rDLZw1DtsWpxF3s27kCdJB23k6/RJun4P9zV
         MUM0cDiN2E1ApGis2YyMr0WsNePc5mDhqJBlrghsUS3FXmvmplpXv6WdzWGGDS5dkO0I
         cspaPGQ4gnUVv5FlsHMzRq5LsaEKv5nVNeZjb4AnMqHQJguq8GTPLGUVXiASUu2kAO7U
         OzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J1Aab63QvsvEW5asKuNwAGbkxa90BgPbEm/7LwcDyqI=;
        b=Fdeqje3u/gOk9PJ4zBbUGTg4k/VeDeAFxoZzD07WczxTrcChukGB6vlpNG/9dhE5al
         REfs8xUXcg94okZ9mB5JTluUiKLT87IVqMXmmuDRYS4koGcgZgyWbk6boplht1d2aMiF
         t02n2RDl7k5j2ozEiIOelTYuHjGPfG/8SV3vDLViEsJvZU0VvzyrCIrUh+15Zhf3yKrq
         8hBVkK/QAX8Ql47a/ZacKnAkOyA6HNk8aHEei+vPK+rsm/ymIrpiUjNgC85ZYs6SboeD
         mPnsI3eCy3XrWeuKLH1M7u4xQlWx7g6Jniq6hTFmKv1EF+uSF9PLE56eZsf2Gqp7M+yQ
         c2Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Bi3TAlhdLdj5ro3K1nahkAd19wzqgUkm3itgqZ9wwbcweLNnO
	ilMZHBhXSyzOhT+WIMygqkc=
X-Google-Smtp-Source: ABdhPJxHkbqzKaTKuIsdm49qdSefV1cSeGrZuphpzIe5bjMLSI8n3LlWk0kfuBcAlIgMphwgUHQT8Q==
X-Received: by 2002:a05:6808:20e:: with SMTP id l14mr7710902oie.87.1629303826414;
        Wed, 18 Aug 2021 09:23:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20a7:: with SMTP id s39ls782217oiw.11.gmail; Wed,
 18 Aug 2021 09:23:46 -0700 (PDT)
X-Received: by 2002:a05:6808:20aa:: with SMTP id s42mr7950112oiw.37.1629303826039;
        Wed, 18 Aug 2021 09:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629303826; cv=none;
        d=google.com; s=arc-20160816;
        b=q40Lkry/C2M896PgExHR421gE6+dIhSRrQQEPOBgV7N9mv2G+f9LDxn2P82a9N0ING
         sSlX1YrYTfp28mdfbi38AVsdWZHFRBe4nvxDnrN+7mk0aiPUvrmaAcftl6XHCz3Y2279
         fZ804pU3pctxHN5RAJEfN17fox7PwQsQ/+J5C2eZHmdskgErVBWL44QJIUTaFGGxQyyD
         GiLuA2IDEF2A36pDU0FxEqYEN9/40UceBmUfU6Ns3pQcDUTx7TSvl9y4F6zUPoEMkMkQ
         72KdhiZAjCw2+KvyzUFbVWzqhMhIJconKvr49ft6eTejzG3zMZhm9E4vXZk4YkupsCUC
         bobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lzxrYwRed6/SHUIlGR9aHlXsbeq7ptb+9qbS8mhHK50=;
        b=upN0IdpXWWMw5WQyNnPEZsWHdd1e5oo0GLFqdHa61sOOuFGvBQvubgDD2Oduv2K9IL
         UDgnohD5Th+zeTvCh0f3fKXK92qdz1V/I9pLl2ZvSbwO4o1lCenxHuc9BU285iLmil+e
         w4IpodJxUhuaP2hggwx8OCGi55hZWPWmEK/SKk2En9mJpExTUIBtWpSl67k9gSpuVhpC
         DFppHlWkaRrjaeQL+8bUh9zDfs56jkNi6N8aTpLVv2XVEHe8/BUGOD0CeutebLQPHGkg
         LaTg6eHJNxioPOy5V4qc4d7IsxlG6rwsui3RpdxZmHSn5vG63dnqN9zw8zTa3Au5i+qv
         57nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fura/iwY";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id c20si35434ots.0.2021.08.18.09.23.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 09:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id y190so2658136pfg.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 09:23:45 -0700 (PDT)
X-Received: by 2002:aa7:80d9:0:b029:2ed:49fa:6dc5 with SMTP id a25-20020aa780d90000b02902ed49fa6dc5mr10058545pfn.3.1629303824757;
        Wed, 18 Aug 2021 09:23:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 21sm228958pfh.103.2021.08.18.09.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 09:23:44 -0700 (PDT)
Date: Wed, 18 Aug 2021 09:23:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Sean Christopherson <seanjc@google.com>
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
Message-ID: <202108180922.6C9E385A1@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-54-keescook@chromium.org>
 <YR0jIEzEcUom/7rd@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YR0jIEzEcUom/7rd@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fura/iwY";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
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

On Wed, Aug 18, 2021 at 03:11:28PM +0000, Sean Christopherson wrote:
> On Tue, Aug 17, 2021, Kees Cook wrote:
> >  arch/x86/kvm/emulate.c     |  3 +--
> >  arch/x86/kvm/kvm_emulate.h | 19 +++++++++++--------
> >  2 files changed, 12 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
> > index 2837110e66ed..2608a047e769 100644
> > --- a/arch/x86/kvm/emulate.c
> > +++ b/arch/x86/kvm/emulate.c
> > @@ -5377,8 +5377,7 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)
> >  
> >  void init_decode_cache(struct x86_emulate_ctxt *ctxt)
> >  {
> > -	memset(&ctxt->rip_relative, 0,
> > -	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
> > +	memset(&ctxt->decode_cache, 0, sizeof(ctxt->decode_cache));
> >  
> >  	ctxt->io_read.pos = 0;
> >  	ctxt->io_read.end = 0;
> > diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
> > index 68b420289d7e..9b8afcb8ad39 100644
> > --- a/arch/x86/kvm/kvm_emulate.h
> > +++ b/arch/x86/kvm/kvm_emulate.h
> > @@ -341,14 +341,17 @@ struct x86_emulate_ctxt {
> >  	 * the rest are initialized unconditionally in x86_decode_insn
> >  	 * or elsewhere
> >  	 */
> > -	bool rip_relative;
> > -	u8 rex_prefix;
> > -	u8 lock_prefix;
> > -	u8 rep_prefix;
> > -	/* bitmaps of registers in _regs[] that can be read */
> > -	u32 regs_valid;
> > -	/* bitmaps of registers in _regs[] that have been written */
> > -	u32 regs_dirty;
> > +	struct_group(decode_cache,
> 
> This is somewhat misleading because half of this struct is the so called "decode
> cache", not just these six fields.
> 
> KVM's "optimization" is quite ridiculous as this has never been such a hot path
> that saving a few mov instructions would be noticeable.  And hilariously, the
> "optimization" is completely unnecessary because both gcc and clang are clever
> enough to batch the first five into a movq even when zeroing the fields individually.
> 
> So, I would much prefer to go with the following:

Sounds good to me!

> 
> From dbdca1f4cd01fee418c252e54c360d518b2b1ad6 Mon Sep 17 00:00:00 2001
> From: Sean Christopherson <seanjc@google.com>
> Date: Wed, 18 Aug 2021 08:03:08 -0700
> Subject: [PATCH] KVM: x86: Replace memset() "optimization" with normal
>  per-field writes
> 
> Explicitly zero select fields in the emulator's decode cache instead of
> zeroing the fields via a gross memset() that spans six fields.  gcc and
> clang are both clever enough to batch the first five fields into a single
> quadword MOV, i.e. memset() and individually zeroing generate identical
> code.
> 
> Removing the wart also prepares KVM for FORTIFY_SOURCE performing
> compile-time and run-time field bounds checking for memset().
> 
> No functional change intended.
> 
> Reported-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Sean Christopherson <seanjc@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

Do you want me to take this patch into my tree, or do you want to carry
it for KVM directly?

Thanks!

-Kees

> ---
>  arch/x86/kvm/emulate.c     | 9 +++++++--
>  arch/x86/kvm/kvm_emulate.h | 6 +-----
>  2 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
> index 2837110e66ed..bf81fd017e7f 100644
> --- a/arch/x86/kvm/emulate.c
> +++ b/arch/x86/kvm/emulate.c
> @@ -5377,8 +5377,13 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop)
> 
>  void init_decode_cache(struct x86_emulate_ctxt *ctxt)
>  {
> -	memset(&ctxt->rip_relative, 0,
> -	       (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);
> +	/* Clear fields that are set conditionally but read without a guard. */
> +	ctxt->rip_relative = false;
> +	ctxt->rex_prefix = 0;
> +	ctxt->lock_prefix = 0;
> +	ctxt->rep_prefix = 0;
> +	ctxt->regs_valid = 0;
> +	ctxt->regs_dirty = 0;
> 
>  	ctxt->io_read.pos = 0;
>  	ctxt->io_read.end = 0;
> diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
> index 68b420289d7e..bc1fecacccd4 100644
> --- a/arch/x86/kvm/kvm_emulate.h
> +++ b/arch/x86/kvm/kvm_emulate.h
> @@ -336,11 +336,7 @@ struct x86_emulate_ctxt {
>  		fastop_t fop;
>  	};
>  	int (*check_perm)(struct x86_emulate_ctxt *ctxt);
> -	/*
> -	 * The following six fields are cleared together,
> -	 * the rest are initialized unconditionally in x86_decode_insn
> -	 * or elsewhere
> -	 */
> +
>  	bool rip_relative;
>  	u8 rex_prefix;
>  	u8 lock_prefix;
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
> 
> > +		bool rip_relative;
> > +		u8 rex_prefix;
> > +		u8 lock_prefix;
> > +		u8 rep_prefix;
> > +		/* bitmaps of registers in _regs[] that can be read */
> > +		u32 regs_valid;
> > +		/* bitmaps of registers in _regs[] that have been written */
> > +		u32 regs_dirty;
> > +	);
> > +
> >  	/* modrm */
> >  	u8 modrm;
> >  	u8 modrm_mod;
> > -- 
> > 2.30.2
> > 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108180922.6C9E385A1%40keescook.

Return-Path: <clang-built-linux+bncBC2ORX645YPRB3MUZ73QKGQEEOUEIXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED1207EDA
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:49:34 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id f130sf3699133yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:49:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593035373; cv=pass;
        d=google.com; s=arc-20160816;
        b=lub/fzi9EbwVy040r8k/opUm76RMUGt+duHkSQu9B+lm+ePAp2iBwLoAvfsQoPaja1
         OZuRi0WZdiioEkbGypjI53kUhI1f9Hyh4J28xmq4AWSP7v1Qu9nXKetL+ifD40KAVbgf
         wzOQknOjKHEqCSqe/C6kYviETEVB2LDLN8IyFIPF+KvJ1JCxpCuv/kb6HG9kmJDyA6ww
         GNbb/SB2ZuJJ58J3hYYRax6DX0ARHUm2FTgjynKTWB0x06dhR9DeC1ZS6J4RXuBT3qYy
         E66yGGS3V+ZSk84l1h0juVY8UCVvk8tIpMZ2I2zw5VGqv+nEoDQ7ZGSQOM2KdIs30/VQ
         xjCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=on6F2hGu3KG+MGzkDrdPINXAVCLQnXevOL2OOsd2w6M=;
        b=MPAAYf2pGz/T8WuFIRO6Y85HrlLkEKui/WaWxp1RwJyV0hhld3aeX8ePUrevblF9m2
         uG9UBqLkzKHZO9YCQf2HPJRRmA3ql3vMxZjj4Zmdo+FXuqR3hf24psH1w9fOVI2t2l6+
         ssFTiP+2KsEQ7X6ZhUSG0jxYyDooNWkwkwT/NUmIGiMJ2DRj6PxNjx3eEaIA/qxORi9e
         pPjdAOUJ8RuTigfxmeWYXMcNx8Oc3XKOhBWtg6dnkGYrfxkVfg+yuIwT60RtHOxSSToK
         iJjmPlQGMAZq4ewtMUfZxX59Kbf6wIiw+kvSoZXe4NEz9Sfr32aAIbzvBMrO5nrIwDVo
         +bwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U3zcce4R;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=on6F2hGu3KG+MGzkDrdPINXAVCLQnXevOL2OOsd2w6M=;
        b=DfJ1L+LuJqhS22Eeas9WAwlQn232NW2KvXtl6wffA7kX3PNEk18RmplenchC0sB6ql
         08Mo449SWaHlzVL8rhObEaCnUlsbNs0PiV8+g80lkkqdCYi4I98OuHGgvFzX+aF6+AOx
         p4pxctLf5qDEEnsM8MAK9tZQqZVACOgoEeaVxcUGtE4enc3UeDNgg5KnWnI1jnr+Sagv
         nckrmZdcyzWBslK3b+vFW6/d6wOP13Kwk6l+dnbBtlLBZfUdO0cVYFY96JR/Zc+mnUpY
         Tgl1wBSpyaissbgg8N80KE07FvcTL698/jZKJ7Ijg4HP/0zritQ4M5NCj6k/KhzwgxMB
         idVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=on6F2hGu3KG+MGzkDrdPINXAVCLQnXevOL2OOsd2w6M=;
        b=lC7Adw+JNOkSBlX1i4BCEl/70dvTZrUGTiOls4ORC6UVYTZWAQ9Cn6CL7YJ5iVcotZ
         J5ZBQT8LYTMgPa/Nm4aYmsOTPsrLbEKK40plx79U24ugNieLtCFTindoWzjDKLmybFT2
         gYKAsIJ7ot+PrnLHfPWLkn4KcJ6dG2mJnFLACpUIwltbTbEGnZDssJiknft9NiNVg8H4
         JV+/o8FrS778lbvRqDNUEfcxbT6C5l34lCtHZUT5Wwu8wCMDNVsIPhcOvUkW7AgH2rbi
         50MXAxQug0Q1iYZ3QpwL/DEztAYmltwZIPxORIRtTv8uMcikDT3T5immoc1HQ/N9VEr3
         tC+g==
X-Gm-Message-State: AOAM533KV6q/qUV68oW25XAZWYYRHUTq85V3CVq5BSMQpDBVEW8UpPXL
	tf+Q954KC3EzH2JAMSf2F+Y=
X-Google-Smtp-Source: ABdhPJzMJ4GBKtxACgMq9PKVSqftD6FSo22R0V3QeLlUcdzDuAWZtlO60raq0XjGu/4QaJHF0uqtvw==
X-Received: by 2002:a25:da44:: with SMTP id n65mr50817848ybf.387.1593035373405;
        Wed, 24 Jun 2020 14:49:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls1295267ybg.3.gmail; Wed, 24 Jun
 2020 14:49:33 -0700 (PDT)
X-Received: by 2002:a25:38c5:: with SMTP id f188mr48556460yba.332.1593035373074;
        Wed, 24 Jun 2020 14:49:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593035373; cv=none;
        d=google.com; s=arc-20160816;
        b=W23V0nGBguhDWGNeV0slCAyyK6x2qJp0RyCkiN6+KPkYzRaKSL11iOch5TfwLKPFA1
         AK6CBmwWEFS/FldWzCL7UmJuzFT8CVbXppHOVuXVHtQgZatGDSTMGbc+MIcNZDU04XcV
         tE5Ic3sxf9deHBSAst0aRc3dn+ySQMFzAC1Z7nX9K5fyaa0jGiopGxEoLqWM3qTpGXJK
         hKiMi8G4O1k/9c3BXVD/V4mhCxoJn6ghNISQr5U160HULGRF4AzuuognSEwyuKQ6YT9e
         Pm4Muh8D3AaUcw6+7IdCok6EhgtL7auUwxenzpURHb7KAdjhivmkmT/wpncFakxVTvlm
         wRQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9J2CZUP48fiuDe+l15O7PqgQWB3mKCPT+APYGkolERE=;
        b=ymGgdAplPpR03R7A9du+OJkkSIAO1Pkx/yIF5or/KR/XNFuf3tgCFryVMDpMSwxxR0
         cdCQ7JvtrUEzyl32FUsgetTcUdnT9/G5C65CJZLW1GucW6adDv9A+QCZRF+6V9LT3XLP
         /7oDOM/yfwbJTbLPLoNKXhHmm9dWNXEBF6Lnv4YzNiZbpKoaBpsPaNjVU8C+NkIwE/Du
         rQw2YrmBOckwwRUdrw0Lnt7obXBKTmXUlOMPoMlM0k6BPZ0M+e+XDQIytDO3iN5yLNvP
         jwiE51WUrlWEWwNQ3odnoY1S8LQQMTBwPKChEgkWntb9NYlEg1EptYfyJDcfpBzr7r1M
         Dgzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U3zcce4R;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k11si1642065ybb.4.2020.06.24.14.49.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:49:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g17so1673620plq.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:49:33 -0700 (PDT)
X-Received: by 2002:a17:90a:a406:: with SMTP id y6mr32616295pjp.216.1593035372032;
        Wed, 24 Jun 2020 14:49:32 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id w124sm20560279pfc.213.2020.06.24.14.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:49:31 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:49:25 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 05/22] kbuild: lto: postpone objtool
Message-ID: <20200624214925.GB120457@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
 <20200624211908.GT4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624211908.GT4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U3zcce4R;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jun 24, 2020 at 11:19:08PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 01:31:43PM -0700, Sami Tolvanen wrote:
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 30827f82ad62..12b115152532 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -120,7 +120,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> >  /* Annotate a C jump table to allow objtool to follow the code flow */
> >  #define __annotate_jump_table __section(.rodata..c_jump_table)
> >  
> > -#ifdef CONFIG_DEBUG_ENTRY
> > +#if defined(CONFIG_DEBUG_ENTRY) || defined(CONFIG_LTO_CLANG)
> >  /* Begin/end of an instrumentation safe region */
> >  #define instrumentation_begin() ({					\
> >  	asm volatile("%c0:\n\t"						\
> 
> Why would you be doing noinstr validation for lto builds? That doesn't
> make sense.

This is just to avoid a ton of noinstr warnings when we run objtool on
vmlinux.o, but I'm also fine with skipping noinstr validation with LTO.

> > +ifdef CONFIG_STACK_VALIDATION
> > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > +cmd_ld_ko_o +=								\
> > +	$(objtree)/tools/objtool/objtool				\
> > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > +		--module						\
> > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > +		$(@:.ko=$(prelink-ext).o);
> > +
> > +endif # SKIP_STACK_VALIDATION
> > +endif # CONFIG_STACK_VALIDATION
> 
> What about the objtool invocation from link-vmlinux.sh ?

What about it? The existing objtool_link invocation in link-vmlinux.sh
works fine for our purposes as well.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624214925.GB120457%40google.com.

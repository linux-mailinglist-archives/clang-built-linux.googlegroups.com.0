Return-Path: <clang-built-linux+bncBCIO53XE7YHBBIUC2HZAKGQEKOKWOUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D043516B287
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:33:23 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id u14sf20924089ilq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:33:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582580002; cv=pass;
        d=google.com; s=arc-20160816;
        b=DGsZ2ZMtKJQkqBpizCD/imitvkLYADGcxi3topOcyQjuJomgG1KO02lvPs9UbfqyLG
         qwxq4euVMaSbAKgm3gvsLIX76FV0n+IdQGXUY4IrlsEywP9DObF52382FFlcsHsMvdxv
         s2yaTmnRLvvfrVacfo/PronstFUakNkW5jS+n4DrfJFmuc5n8XT+LZEPmj9NO6UzauLG
         ELiK4HY3pHAyREWwr8UPGjHPL+WGVFsH1xKCfHGnDXhpva3iWjFwAsIKR8Z0VdEqge5t
         CMjWGHl3Qm33F0EpiEgHYJnrDbZnQjktw4YJs66Td3Xy1PqpL0SXg0yQl11Q09QByQUP
         dbtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=YHIG6ZRHnPqr4pcxC/hFXZsQXUjEI9xiHMqpcEzytVQ=;
        b=nKZY4CZzXbwZaiaIU1P7ggbwDDdaZzl6udP+z19MkEz8WhzfozmvGh50Z3xQ5MT+V+
         dNT4A87gvK0PbDEy4uo7ZnK/icgi54MmGi9CyLC4BceHpVLjKMOwTjzKp4S55VFLFedp
         oLjGUWhnl+Sy9h/B8B+yLR50lONyZvEAV30W9TES6AtZHgBXPP3GV3BnRfkfYDtmawHh
         HsEXVD+/XA6nusFMAfRGY6FUVKOYsxWU2tuGJIqynbrCqGwqaYkoTZVwrY+WD4Nam0Vd
         /Yw7H6OIMT89LeaPqeb7fCjWltaC4ewx6M5Wx1nqPkpODkPVtU3VB30BGXPZtjO0RSfn
         Oztw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9YB0nYW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YHIG6ZRHnPqr4pcxC/hFXZsQXUjEI9xiHMqpcEzytVQ=;
        b=RUFAXsiQ+UcoJnXzpTmwcx7lRRlCNZPNSvKr9tnfPtUynbHIGEFVcKbtLanWAorv2Q
         lgNHikkB6vF2WeySCwkWi5Yk+LQCCxdhfLUUvz6Ht2+jr3XEe/LmAXb1jSqEnpcchDKR
         C7FpoLGj+usu30LEOPO7VpK6UkXCdAS0ALdMJDXgVzThq1vnmHV09P1snusTRD09zJgu
         fMthfx5FulmsGuoOL2BP62vq26MEJq10IJPLWvuZnrWcwLF3LqFRmUubj0ox8ceJ7kVR
         OdSchn7GXqFS+y881NBxUazj5mzkqC8AP2vNCXYvo4ZUqriy1/lU035J2XBrRjzYCKMH
         ImfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YHIG6ZRHnPqr4pcxC/hFXZsQXUjEI9xiHMqpcEzytVQ=;
        b=AxuAB5flbSrkNCviQRoI9R1Xt4afc1SJ4MTUQ/LhW6TmZUSgyzp+OyVaHCwp7GcWa0
         X+sxozDRw8j1Cec73LlAw9P/tNFd30TcsGU0bZUdU4iJjjJhoWjdFe/Nou+pkyX7Wni4
         fCJndRoPH1Hkz3nyG5TxClbRfYAzPmZjtk/EmDsGiXh/57o5sRY9q66FU2Tq+8oXGAD6
         6Ls0J+zDYuSbUr3WTPOm4THZ6S3eo9G3s0q8kV9cVRYRGvrzhkya3ILPSQVC6PZ3IWKs
         tshMY1QPXdETm4ASm9LTpVqan4laGDzL2YxCF/PRyhnD1KbLvnt39Bb8FdthLPielP/m
         oOIw==
X-Gm-Message-State: APjAAAUKfnmrMcyJ7gIFWU8Pn9u3ZJUOGxJ1WIwkrFFXfUyLIdAIxLxX
	6DjM6GsBcuIyHDwsxG3ENpE=
X-Google-Smtp-Source: APXvYqydZxw+UITPRbn1OWc/z1O0hL2dqTA2+6JnX7jyzfOY02ocZTPEBQDtfGpSgXWryaM+HfH2qw==
X-Received: by 2002:a6b:c742:: with SMTP id x63mr8588828iof.162.1582580002475;
        Mon, 24 Feb 2020 13:33:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1d89:: with SMTP id g9ls2224258ile.3.gmail; Mon, 24 Feb
 2020 13:33:22 -0800 (PST)
X-Received: by 2002:a92:2904:: with SMTP id l4mr66026077ilg.166.1582580001958;
        Mon, 24 Feb 2020 13:33:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582580001; cv=none;
        d=google.com; s=arc-20160816;
        b=N7PqtAfGLCa9pILehqEYxW/Z1FqzXKLhw36KVs07lv5Po3u8n3QUK4elmGL8allOEA
         G5Awyda1G3YQGIoCG8rOVKOgFgUzWaeNmRmVXfytUbDe8wI57KyFXXkFICv2vsnkGQgg
         EcOtbLzQYxovlC3b01uZ691BbpbzIB9e8ftzZVxKS5K7fcoA/el0UU1er/zZmJc0sKZn
         P5HBeE0FSPILwBm65QI+JJm3S/cwQ2q+Y/mlD+EVtQZBiZevCMpWMig/OQyzM54Wp38k
         LqQCmC9pQq1l1/n5sfCPiGK5hjqMqFR0MrvqVDFZt/qA2QFwMMtbVNhOoHvzmtfCdVPG
         m/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=jRWoeoOM8DL9OmT3+yYVal9mOTve0BZlMU96rBIIFe0=;
        b=PtuAVn/e1+g/8Fv0LPUoI4wNUOGYKecBayJZ+uNFi5WQNIS6LR2cpGTKguZiPyPTxm
         WzHq76RXl6wWOXfsyjKGzu+UpODwyxGtdovFCNwI4uIZotXU6Qvamnh8nk8FtfNj4JBM
         atfcE4mDBGhUDH4bTOcKQ+nEBAhuyvPLeXejbCLCIrVFRspK/89NabA0oZKApA98tQBT
         b1vrTvIrFYp4E/bQWgkB/rE6QjMX/4AU6GbPtB+5vb6ZZ0LCDeYZmmZxKHB/woJ/Y/mV
         mwj4CvaAaSGKRTugCJFQSx7BfrX+CQ5QexlDouZoop3RBE1l/IVUklu9w5pHPRQTpb9y
         rXIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9YB0nYW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id z20si1043017ill.5.2020.02.24.13.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:33:21 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id u124so10037145qkh.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:33:21 -0800 (PST)
X-Received: by 2002:a05:620a:2224:: with SMTP id n4mr4141190qkh.21.1582580001588;
        Mon, 24 Feb 2020 13:33:21 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 132sm6409229qkn.109.2020.02.24.13.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:33:21 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 16:33:19 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH 2/2] arch/x86: Drop unneeded linker script discard of
 .eh_frame
Message-ID: <20200224213319.GB409112@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
 <20200223193715.83729-3-nivedita@alum.mit.edu>
 <CAKwvOdmqM5aHnDCyL62gmWV5wFrKwAEdkHq+HPnvp3ZYA=dtbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmqM5aHnDCyL62gmWV5wFrKwAEdkHq+HPnvp3ZYA=dtbg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E9YB0nYW;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 12:45:51PM -0800, Nick Desaulniers wrote:
> 
> grepping for eh_frame in arch/x86/ there's a comment in
> arch/x86/include/asm/dwarf2.h:
>  40 #ifndef BUILD_VDSO
>  41   /*
>  42    * Emit CFI data in .debug_frame sections, not .eh_frame
> sections.
>  43    * The latter we currently just discard since we don't do DWARF
>  44    * unwinding at runtime.  So only the offline DWARF information is
>  45    * useful to anyone.  Note we should not use this directive if
>  46    * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
>  47    */
>  48   .cfi_sections .debug_frame
> 
> add via:
> commit 7b956f035a9ef ("x86/asm: Re-add parts of the manual CFI infrastructure")
> 
> https://sourceware.org/binutils/docs/as/CFI-directives.html#g_t_002ecfi_005fsections-section_005flist
> is the manual's section on .cfi_sections directives, and states `The
> default if this directive is not used is .cfi_sections .eh_frame.`.
> So the comment is slightly stale since we're no longer explicitly
> discarding .eh_frame in arch/x86/kernel/vmlinux.lds.S, rather
> preventing the generation via -fno-asynchronous-unwind-tables in
> KBUILD_CFLAGS (across a few different Makefiles).  Would you mind also
> updating the comment in arch/x86/include/asm/dwarf2.h in a V2? The
> rest of this patch LGTM.
> 

i.e. just replace that last sentence with "Note ... if we decide to use
runtime DWARF unwinding again"?

The whole ifdef-ery machinery there is obsolete, all the directives its
checking support for have been there since binutils-2.18, so should
probably also clean it up to just unconditionally define them.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224213319.GB409112%40rani.riverdale.lan.

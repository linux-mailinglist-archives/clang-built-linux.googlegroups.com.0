Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRN7S34QKGQEU5VNTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 525DA23538C
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 19:00:56 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id r66sf5511481ooa.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 10:00:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596301254; cv=pass;
        d=google.com; s=arc-20160816;
        b=QqnWpgFhROctz+6GvlglQJ5ba5etjhBidgpqASNjtipWLC3o0x+fb7QH8Po2SoZVOo
         cKygSb12wpJpiSHePlI+5BXnCLKyoIhlEj8QpIpIvnA8SVTuMfIeDPNrjFI1F1AMxivG
         5AgESDpdNu44Y466VDHY138H1FhbEVI3L6gv65oWi/G8JAf+7S3qH978PFak5QiVC7lT
         tJpWbcYgmqINCPR1Yt4VNXbyW0vc5AvymvTk5st1zl3LhOniQUt87UnmlJ0hyZFSxsVb
         dyRBkH/iqGt2kaT+G8nmLwqKqOL224PCJtpLyQs9WaQlSEVfyo0WWxBiwIwB3LZmrzcg
         Fnow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=BmTeZL0jkgDSB2DGKceZkmbDT+HnIgg1cAVWTeOWR8Q=;
        b=ae07a7bBctZ056FlCSlRqhazgHzI6VbN0RQXyggJm4W7jCmENdY8pc+1uSlOYY91Gw
         bWsrQOWlYaptrlIpbaM7FY/MnPFdgxoyOz1pO5OpeOOlMT83bLjDZTWANtaVO2UXCSnY
         r7MHDOETpe8l2SluTkrk5vNXRQWSTJ4av1pEM/bTK0SlAF6eUTbOxAi56jAN5c/Q23d4
         mkC5tA8saGpfq2PVwhD9Q1gYhDSSE6jBnFSfQyznzxQHuJ/6F/9PmQLMqvJOU0UQfcX+
         nSewPQgZwwm8jxfR2+rm6ttN0zaFoD6+/ydbfjv+mml169kdhmo0HbOooY8dR7KQShw8
         Vzlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUZWj8j7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BmTeZL0jkgDSB2DGKceZkmbDT+HnIgg1cAVWTeOWR8Q=;
        b=h5agbMLei6cwdhXDKA5Nrz6Q0LqeKmfZ5L06WKfy4Ppok/kNpBGaJYavzNe9zWqvxK
         mrFjuoclvBYxI0q7yOCwhikaPWJ/1fZTSoOeq4w3ip9DaDJOqYIE458ZisHaMTywCBkV
         hMs/68adKafDd/xMN8apgvIfEN/vhHH/EyGsXfj3GwvmgG2lzLRhKG3IYxl/OJ5d6+q8
         5yy0gVXA9qkFi2BZpFWCyoz2x3kB9opKo6KWJbKTNK3sJkzrqyxI9DaBANrKT017+8Ec
         9CZWDG8lcur6rmx7JfwzJLGqTB+xl/HeteORkPgx5exrwTCtTBw+5iiPBELLXp5ArnPZ
         9uRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BmTeZL0jkgDSB2DGKceZkmbDT+HnIgg1cAVWTeOWR8Q=;
        b=hejrBCC0YDCqkfszTrif7TGv8hi4nD3HAh7fEFbCE7+GkHAcvlWDLaanv0r7/xVry5
         eBnkAAVEZuKwOqR7TKJRrY0xh3jqWxG9BbKaLvtMNMu5uN2F7F7OSEJlDHy5hskVxExQ
         aRkyK5wM/q6ZUPRssiBvzRE/GZ+/GVBkY9FD5i0XA7QN2kw09E2PA6OVPUy1snLgSPUw
         LE4QdpFPrQU5jkeqzTYSAdBJ0KmfRIw3nGfk4f8CC8SGCnIfIeDfu1GtGSw6tmfkGMz7
         QAECauNBDmEFv7twnxDOkpoRQRnqkIsRYMBAiAceyQU5k5FgCd3SxI7c6IghbASdlrPA
         Dreg==
X-Gm-Message-State: AOAM533Dww6h4CwgxNDkERnbsH4Lj7AovDBh1LRmxKrj6AQnWpJfJYfz
	NDVc+sDqQWToPtntCyRLBqo=
X-Google-Smtp-Source: ABdhPJxx+ZN+UqI77uOOCJksIUXt2zCvjC7lFc/YPRORa6G0as+J9U9gIRHhXiUJn5u/RuuVgdduXw==
X-Received: by 2002:a4a:7b4b:: with SMTP id l72mr7976320ooc.74.1596301253905;
        Sat, 01 Aug 2020 10:00:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d90:: with SMTP id y16ls2525570oti.10.gmail; Sat,
 01 Aug 2020 10:00:53 -0700 (PDT)
X-Received: by 2002:a9d:ac3:: with SMTP id 61mr7872565otq.23.1596301253524;
        Sat, 01 Aug 2020 10:00:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596301253; cv=none;
        d=google.com; s=arc-20160816;
        b=mJS9yQ0lHp36Cs/V1XZklVYAblEv5Zx8ADIFltEZW40mc6NULGDRyBVICckmbhKW+Z
         BFzyS/o4BhKAp83D57nhaOAmBC1wX/6T704QUTdrcw67wu6/hGoLnb7uXsFkK5UAKoYp
         GkRTqyrbH/w2ShyQT6lljkcB9G6nfBR8tp21EQgYLNBRGXxBNVl7t89p0GPEWLf+KoM6
         EvXtKF8lcOAg7uG+VFZpXz4AiubWplPLQVf2Fp3RiZAK74akknJdq4QxaIwLRknX0Cc9
         zoIRxcXHeyOtJzuk3dfmi7SiMyY6VUiIT3duvqor94Wa6RJQKfJmelNsBR9BaVO353/b
         Gstw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=mJ6hTZT24AWhGEqcPC20wN8kBdsxrLI/peNCFh80II0=;
        b=eZ5svMjsUU+acfD6YaLSsZrD22xfGKTMX7dFFf2btLTopyLFWk4cRS2+qFy1soszoV
         pEi7QOJ2r0yHGhDl7netTEckpzQXu3vId0dFYdCG0jJ8uXGI3NP6el1OZda0Cbx6u91r
         4LsTGgXN59i8onkAZPKS8io5Ynb8c8PXnTnieMqBxygCcmCgz3eeNqg1gVqlx2jAgNRZ
         czFe/w9GepJX/uZvKVyswcVjXF62W7kvMqz7G6I/lMbeihmrA/pflqnN+Izkb4nmOeha
         e7r4/haKD76WVW0sAisxp4efR/sVkcuw5H+G/wztPO3EWJkMxpaAforVEfx7TXRtOuTy
         QIAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUZWj8j7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id w28si630398oti.1.2020.08.01.10.00.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2020 10:00:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id d14so31716509qke.13
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 10:00:53 -0700 (PDT)
X-Received: by 2002:a37:aa56:: with SMTP id t83mr9283794qke.150.1596301252633;
        Sat, 01 Aug 2020 10:00:52 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m26sm14886142qtc.83.2020.08.01.10.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2020 10:00:51 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 1 Aug 2020 13:00:49 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <20200801170049.GA3249534@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
 <202007312233.1BA0E2EFC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007312233.1BA0E2EFC@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nUZWj8j7;       spf=pass
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

On Fri, Jul 31, 2020 at 10:35:14PM -0700, Kees Cook wrote:
> On Fri, Jul 31, 2020 at 09:47:55PM -0400, Arvind Sankar wrote:
> > On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> > > For readability, move the zero-sized sections to the end after DISCARDS
> > > and mark them NOLOAD for good measure.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
> > >  1 file changed, 25 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > index 3c2ee9a5bf43..42dea70a5091 100644
> > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > @@ -42,18 +42,16 @@ SECTIONS
> > >  		*(.rodata.*)
> > >  		_erodata = . ;
> > >  	}
> > > -	.rel.dyn : {
> > > -		*(.rel.*)
> > > -	}
> > > -	.rela.dyn : {
> > > -		*(.rela.*)
> > > -	}
> > > -	.got : {
> > > -		*(.got)
> > > -	}
> > >  	.got.plt : {
> > >  		*(.got.plt)
> > >  	}
> > > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > > +#ifdef CONFIG_X86_64
> > > +	       SIZEOF(.got.plt) == 0x18,
> > > +#else
> > > +	       SIZEOF(.got.plt) == 0xc,
> > > +#endif
> > > +	       "Unexpected GOT/PLT entries detected!")
> > >  
> > >  	.data :	{
> > >  		_data = . ;
> > > @@ -85,13 +83,23 @@ SECTIONS
> > >  	ELF_DETAILS
> > >  
> > >  	DISCARDS
> > > -}
> > >  
> > > -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > > -#ifdef CONFIG_X86_64
> > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > > -#else
> > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > > -#endif
> > > +	/*
> > > +	 * Sections that should stay zero sized, which is safer to
> > > +	 * explicitly check instead of blindly discarding.
> > > +	 */
> > > +	.got (NOLOAD) : {
> > > +		*(.got)
> > > +	}
> > > +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > >  
> > > -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > > +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> > > +	.rel.dyn : {
> > > +		*(.rel.*)
> > > +	}
> > > +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > > +	.rela.dyn : {
> > > +		*(.rela.*)
> > > +	}
> > > +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > > +}
> > > -- 
> > > 2.25.1
> > > 
> > 
> > There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
> > passed, they won't be present in the file at all anyway.
> 
> I did not find that universally true. I found some sections be written
> out with a 0 size. Some I could remove from disk with NOLOAD, others did
> not like that so much.

Neither LLD nor BFD is creating 0-sized .got or .rel sections in my
builds. In any case, if they're 0-sized, NOLOAD shouldn't affect
anything: it doesn't remove them from disk, it stops them being loaded
into memory, which is a nop if it was 0-sized.

> 
> > The only section for which there might be a point is .got.plt, which is
> > non-empty on 32-bit, and only if it is first moved to the end. That
> > saves a few bytes.
> 
> What do you mean about "only if it is first moved to the end"? Would it
> be zero-sized if it was closer to .text?
> 
> -- 
> Kees Cook

Sorry, my sentence is confusingly worded: it's always non-empty on
x86-32. I meant, move .got.plt to the end (after _end), add (INFO) to
it, and it might save a few bytes, or not, depending on alignment
padding. If it's left in the middle, it still pushes the addresses of
the remaining sections out, so it doesn't save anything.

I'd tested that out the last time we talked about this, but left it out
of my series as Fangrui was negative about the idea.

I tested with NOLOAD instead of INFO, and at least ld.bfd actually
errors out if .got.plt is marked NOLOAD, no matter where it's located.

	  LDS     arch/x86/boot/compressed/vmlinux.lds
	  LD      arch/x86/boot/compressed/vmlinux
	ld: final link failed: section has no contents

Side note: I also discovered something peculiar with the gcc/lld combo.
On x86-64, it turns out that this still generates a .got.plt section,
which was unexpected as _GLOBAL_OFFSET_TABLE_ shouldn't be referenced on
64-bit. It turns out that when gcc (or even clang) generates an
out-of-line call to memcpy from a __builtin_memcpy call, it doesn't
declare the memcpy as hidden even with Ard's hidden.h, or even if memcpy
was explicitly declared with hidden visibility. It uses memcpy@PLT
instead of memcpy, and this generates a reference to
_GLOBAL_OFFSET_TABLE_ in the .o file.  The linker later converts this to
a direct call to the function, but LLD leaves .got.plt in the
executable, while BFD strips it out.

It also turns out that clang's integrated assembler, unlike gas, does
not generate a reference to _GLOBAL_OFFSET_TABLE for a foo@PLT call. And
because we redefine KBUILD_CFLAGS in boot/compressed Makefile, we lose
the -no-integrated-as option, and clang is using its integrated
assembler when building the compressed kernel.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801170049.GA3249534%40rani.riverdale.lan.

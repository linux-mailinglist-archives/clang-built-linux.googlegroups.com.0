Return-Path: <clang-built-linux+bncBCIO53XE7YHBBLHPW34QKGQE34HKITY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD5A23F3AE
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 22:21:03 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id h8sf1672091oth.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 13:21:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596831662; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhqNc4TWq2pVmiiH5gPYhSu9InX4JQZisCkdtHUuViAK3gpCq9O80SgfbsAgNpwuSm
         j6m9fpCIzHQDYuWMB94RnNVXrSKkzm/M8jIY7ldCcjnCOb8y0GdG5XQLx3SpuQ0fh6Ff
         jxM/+dnxoNdMiNA1VC+Ts39ytpj/jI5WND4lxZc01R0qL4SGpUlG1MXlN/kRS8VofoLF
         zcqglQwV2W0uE+329NQ8cTW3YrwwMg0d8KscgKue4cLR6REoBX0jyg2t0MIy3EtGl64x
         LURixrxXQQ9h3nfY0ViSiyyWaWYdFg5hVc74iromiRz1uC/vzsRdvKDt1oxufG5jZOke
         wMAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=qiTH4KQwX11D5UHHLankooyH/mkUkrHgnfDi8IPkTOk=;
        b=kyKklpzTCVG2XjFnnjr9C0POKJZGCkn3s5IjOG+aoFD9L6oWP9LsOKwK9TR0c5735d
         b4gnJmJxG6IUT9TdoId4uM7sQuj8BVvF8Q4/UTcZQs3qnI1UTmXRpIr5nI/qjxohC3EB
         AA272+tj21GdBb1768YGW8o9zO0nbODhF2rAOpGsX+r60I9PsEsWhDyufu7eUuhtyWdA
         0nLVZ8wqcvQExk0DIaW91dOk1CHcLq5SumiFcGDYUjiQ/t+u1G1zpjJVk8K/RSt6m2Gp
         V22Xg00RByQh/KzLRpz/oLM/2qaF9nllgUTNYPKsQb6/AEUyapRWhhWJjXsRbLcE8UQI
         mb5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M6Snqi+5;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qiTH4KQwX11D5UHHLankooyH/mkUkrHgnfDi8IPkTOk=;
        b=YVpITU1tgwL3cgqg+Ahb7QFPsKGoZHZdLMf3Il4/uhsTm2DyWo1/5eJ4Ph+EQywspR
         UOjwI1jlJHD/OskRU+x0tnm8J9q6oZxeuvQ7brl2Lf6kwLd2rhw4HFfWL0tCNptkGu8Z
         ham+39qrU73YUERptjHbxiELy6B71Rq+ccKbGmB/hfA63dCnbwd5yOytd/7jZnNJqjTQ
         2HTk4jmZ0ufHCh/1OAJJC+WfTlPK3jzef3FjZfTnQydmpvEZw1oav6Y8aIPsc7IfVADc
         y/ZzjpbCTV3h/dce64SwGUSPLu7QzVE3u5/hrxzkr5yXgPxMTFA8NsAAm0P+f3CUpCuL
         XtaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qiTH4KQwX11D5UHHLankooyH/mkUkrHgnfDi8IPkTOk=;
        b=Xab/PWYiP3Flf5TgczvMczuPzBeK+k4IPTq6mJfdrxlqSepel74gOdBGOUsFdrQJXy
         kK6GDKL0EStPmmSNqs7khimlI0Uh/xbsCjc0++xGnGHO4kmMotOfkl9791Fs0JmzzF/G
         4KVh4OkejMcT8nl0AtntSFNf0oaDzk0hFhUPAHiG6R3677bfOxdUwvZTsvIkkSNfBXxb
         5+8T5haumL6PeviwAtQ+BBZEKsEiIZkEKGlIpsTy+Vt7WNH3Vjr8lHI56nqR+813MeLE
         gfoFFtOI8Bb3zaCNs2vGsiKUcEqOV7QBLNeLpyLIFTTI3+W6YJitfEkoDmFG5k7gvm1W
         n7UQ==
X-Gm-Message-State: AOAM532jWn6h3RvAnLqaVVG+kvxbfTXMcDjcArAFsSAzRsB7UsccOYAb
	CEpYeTjceVdKoMLi77zg/vw=
X-Google-Smtp-Source: ABdhPJwOdgTA4pL2RFYk97UVQfswHL3qef/U7su/A6tdQUjUT6O+2G84cNyKh2aMErLRHtKYaDputQ==
X-Received: by 2002:a4a:e70a:: with SMTP id y10mr14200278oou.44.1596831660535;
        Fri, 07 Aug 2020 13:21:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1dc3:: with SMTP id a3ls2436602otj.8.gmail; Fri, 07
 Aug 2020 13:21:00 -0700 (PDT)
X-Received: by 2002:a9d:3b23:: with SMTP id z32mr13974749otb.77.1596831660238;
        Fri, 07 Aug 2020 13:21:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596831660; cv=none;
        d=google.com; s=arc-20160816;
        b=sf7vDYZE3YNZb7r+zRixbp0ntBPDmHZtlMaCnhnBUSk7kS6Yf1/B6WXnps06Ij1zx6
         XX4I+VJATgMwTFAHGLR51lIpGyzfmI4HtzR0BpF0JQ2S70z3h8ET58qrY1phhjGyVu0j
         hplWFwMTRk3Jsok7wjzijvJndiqv0KhKXYF/0kavnP98dgw1huSYqVencPK8XjBtjfLO
         7QoE2xY0kgYfhrfHMC1jVq6woKwt+AW6HB9nokp/kc8jbwp1XYNz+ERkk5BFQO4022h7
         QfnkmTauKdV5s19Fp4LdP1cZ/R+NAYOrxTQd4H6ww5pm3g0O6Eylx9JYN3lLSMT4llv2
         KlEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=B7Fctmg3cVLvQt7Pqxb1gnXBcCgs6NDZ66tmQ5JI0zg=;
        b=ypNiJ5lNuXvk3BitjDdQDVIgdS+6Bh00ey0LJO7UW9BCeKjIWJwt6MMqc2RWuTlr89
         RSnz6leTaC+u69piRzJ89JemCuk7GwU3zU4lyzT4FaSilfyy/3YGK7ceokEkBAmtRd00
         wFAZVhgeeXlQSS7xTj5NdB/6Ew3T/bjLDsnXj5jJA7z0DGmiVGFCUzdG3KG8/2gCo5t7
         0Xow/iFONmEN/bvs/c4CPYMrkh8ttBtKXTWSymM4VTsG9Fo8fGbsBwClDbgIMQoVvyUh
         EAjRiOUukmw6lm9itCcb00gkL8h+us/dGYc5TnTCjYrNgGJRR4WCE1VKMs6BGSbUxafD
         0RUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M6Snqi+5;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id c142si523326oig.2.2020.08.07.13.21.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 13:21:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id c12so2247380qtn.9
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 13:21:00 -0700 (PDT)
X-Received: by 2002:ac8:7152:: with SMTP id h18mr15653535qtp.44.1596831659768;
        Fri, 07 Aug 2020 13:20:59 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y26sm8158811qto.75.2020.08.07.13.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2020 13:20:59 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 7 Aug 2020 16:20:56 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Fangrui Song <maskray@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 06/36] x86/boot: Remove run-time relocations from
 head_{32,64}.S
Message-ID: <20200807202056.GA1454138@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-7-keescook@chromium.org>
 <CAKwvOd=mY5=SWjGKA_KpvKnOPmJky_qMcyBYeFhskx6J=aJmNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=mY5=SWjGKA_KpvKnOPmJky_qMcyBYeFhskx6J=aJmNA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M6Snqi+5;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
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

On Fri, Aug 07, 2020 at 11:12:29AM -0700, Nick Desaulniers wrote:
> On Fri, Jul 31, 2020 at 4:08 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > From: Arvind Sankar <nivedita@alum.mit.edu>
> >
> > The BFD linker generates run-time relocations for z_input_len and
> > z_output_len, even though they are absolute symbols.
> >
> > This is fixed for binutils-2.35 [1]. Work around this for earlier
> > versions by defining two variables input_len and output_len in addition
> > to the symbols, and use them via position-independent references.
> >
> > This eliminates the last two run-time relocations in the head code and
> > allows us to drop the -z noreloc-overflow flag to the linker.
> >
> > Move the -pie and --no-dynamic-linker LDFLAGS to LDFLAGS_vmlinux instead
> > of KBUILD_LDFLAGS. There shouldn't be anything else getting linked, but
> > this is the more logical location for these flags, and modversions might
> > call the linker if an EXPORT_SYMBOL is left over accidentally in one of
> > the decompressors.
> >
> > [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> >
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/x86/boot/compressed/Makefile  | 12 ++----------
> >  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
> >  arch/x86/boot/compressed/head_64.S |  4 ++--
> >  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
> >  4 files changed, 18 insertions(+), 21 deletions(-)
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 489fea16bcfb..7db0102a573d 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -51,16 +51,8 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -ifeq ($(CONFIG_X86_32),y)
> > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > -else
> > -# To build 64-bit compressed kernel as PIE, we disable relocation
> > -# overflow check to avoid relocation overflow error with a new linker
> > -# command-line option, -z noreloc-overflow.
> > -KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> > -       && echo "-z noreloc-overflow -pie --no-dynamic-linker")
> > -endif
> > -LDFLAGS_vmlinux := -T
> > +LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> 
> Oh, do these still need ld-option?  bfd and lld both support these
> flags. (Though in their --help, they mention single hyphen and double
> hyphen respectively.  Also, if we don't build this as PIE because the
> linker doesn't support the option, we probably want to fail the build?
> 

The check for pie doesn't, it's dropped in the next patch and pie is
used unconditionally.

no-dynamic-linker still needs the check as it was only supported from
binutils-2.26.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200807202056.GA1454138%40rani.riverdale.lan.

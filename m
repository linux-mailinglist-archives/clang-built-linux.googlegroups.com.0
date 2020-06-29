Return-Path: <clang-built-linux+bncBCIO53XE7YHBB5V45D3QKGQE6BDYQBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5321920D04E
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 19:01:44 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id y24sf9584ool.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:01:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593450103; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZO/OpI81SwASCNp1VltA2c3KOD/SaZSPSJaqCv4DFUbOlkE2NrB+GyoUJWeqyUMS+
         l3QbJAuJO4ldOcq3sfRBhGH/9Dcaa5n6VeuZ9Sv+AjtkZ+WGjfRwb+iam9B3+bUSRo7M
         /XfjqTfbUsFGiqs+iNeTetU/jif7SHx/NDQoDseXcVihW0QBaHmMfzM3mY0Z1LMhfbpY
         xAU/z5uWvxhFnaUxHCqI0aTyIXOciBXyi79CzGFhNUgvvUXocsLGC6lwVxh236UIbk/5
         IO8qBnscYl7vvrGzCbjKFNJiYKepDi150IAJNEgEnzy/86+n8AWCLiIVgt+FYa7VViTX
         qC3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Xr09i0hzYISjLly2+XiPST4FYk04oyK/ry4GnzEx8Hw=;
        b=IBRA2JxRlKo5CdSvUFtQqPT1f+SUMfd+YMyTHpdGJs9vvF6RPgPdZ4gTCSFIn8XdPB
         lsWnCo/DzX29o489hh3tbu5o6c2zkwwiAnmCHVAycPm7/7d2iyPZHxG0g95+XGrEo1xx
         qXOgGUViHNsM4T13wiuRcfCeWsaJ47HE4acYxclEWidqHghp8lzxOxMcePnzxKVEbdvQ
         KbtOK0gR11zD3c5Y5cXMQ5sFbSLE0k7fs0qiPtpdX1nRMzzl8hahJiwMhKdffnbwHIw9
         tEvJU1H4ZmVSQcCzzXzOQuLc7eauTFHnDZRymcU8lhLQf3iPH+zrb/kaoVOoISt/xCr4
         VSOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf+M0O6i;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xr09i0hzYISjLly2+XiPST4FYk04oyK/ry4GnzEx8Hw=;
        b=cWIZ4E9uBlkiXpN+2EVNDn76APLtWda28hNF2tvuTkPElHMoD5DXAtAGpvXdfTt6vw
         VLQKUHSWbXkhtHV37xbEzOY5NUM7jUNSSdHmcAjxaxCD7AuWorOWiuQFHavw24ApLkHH
         gCYT/Fyl6PSgLPVqvQSknyI4ZCPsa1kTNYoDQIOCc8TNd4M8wNgQMxYK88DJNQO2dXYo
         FC6UCxJq/Ld3uKdBkdHcaX5WeNtiqt8tSHJURUDNd2lmhlecyDBGo8i9c7FqpsZYXb7K
         +HfYE6BM3R987e1/FxWQH6D0PrEyaD6l06LD5PXqe0wgfn1Yuhp5s/FP9xjWeVUQI00M
         R1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xr09i0hzYISjLly2+XiPST4FYk04oyK/ry4GnzEx8Hw=;
        b=M6UpS7yGuoXqH4YgxlJ2JrpX7I71bVlnowRiQLH3lJ7VyZWQZuZIEBwhsVf1jfD4Vd
         Hm43wi0wPL74Jt2mR0UcP8d/bwZkGoHjSETvAm/3GRFIv5bA0ncyRkhshzpnMjsXAmNV
         h2v1m0k0nsAVz3icA2djfQ3PW+UvtLhOBxSxmmga1r2EV3woSwxEXPvxVbmL3Nv9HByj
         k+49U28ybWmvi8Uf0wDNFKB4MD3k7SycFGO97LADUxv4bAgV+7mtVn1OxSW5oUIV35kJ
         LOKhm5ti0alJQUHTnDPm54caY+oCEjDfn2Bj+smSQ40DZd4QgKO266S8qSrMwqiUzQVM
         0DKw==
X-Gm-Message-State: AOAM531Prm4GoaNzsxd6Nl8Jk6y95wuqlUKbSGcvajp+iRtZejrJfEeL
	7/TXikuRTQ/eqORLR39qne0=
X-Google-Smtp-Source: ABdhPJyBULsZoZPoLvlknAl6lIat7ySQU7sQmM8//vFGgRTa/Q7mjSW6U24ITa7remQc3sF9YyqOfA==
X-Received: by 2002:aca:438a:: with SMTP id q132mr12281306oia.44.1593450102754;
        Mon, 29 Jun 2020 10:01:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c58b:: with SMTP id v133ls3413201oif.8.gmail; Mon, 29
 Jun 2020 10:01:42 -0700 (PDT)
X-Received: by 2002:a05:6808:b06:: with SMTP id s6mr2039613oij.35.1593450102219;
        Mon, 29 Jun 2020 10:01:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593450102; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNUuhlB3OUiO3DgFe3TH/peoj4lFLb4G2zoCi9Ocut9De9cncPxU21dhicv0bZPJUw
         YrBvVSix8yZ1SsZ8FnXTOJoegjRt5/gyiu2Pm1FH43IPOUEd6tcX3vun4osPxuEKKhbT
         KyAHBW01zpR9bShy25tB4JPoNp81F84ruCyhuoWona0woDWlIvh2POJ6AXRjtuCnuRb1
         DxSEe1CTFdhPi7/cMYO4vYhDCoP60pOLHJcCYpsefjMwn0+4RQAMtuVhw8eLlRoa3Evf
         YEcV4TXbVuYAmeKTkM64ZyNfkJLCGPc3Nr7qejG+gnECCy2bdvywAiPd5VqsXHlw7HIN
         4TBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=UBaB3ONto8Q3Q5gLaEO5EL36PXLUdQ/UsO2Jrx2+HW4=;
        b=vMgjBOMHeiLTTlruaUoPckbGVQEZrOfQQMCyLiQ6lcYuyk32VRaADcUeequQQUg1vy
         OWTkO/iwTbSi23Uxtc2lyMLwhw7qRLjltVuwxYHK4wt1h3vSIYtqMYPY5fOl7xahFIYx
         nr+I6HzUR7k9B19iBjezbFERDc+dZ4oYHuHF9plIHrMT0cXxvgHihyAmFobPf9Sny1tV
         sJ7dr9jRQrPWUM70cM++gaFKnHbDbGtL4FHO/6q4HOVb1Ar0BCNq0S0l4NswO+kVGjMd
         ko4z50xlHLRoH3qiJ8kjMipzVLOdBEypkPTeHQo28vumOE97l/MfNySw1Kg13mIxuQPa
         sXLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf+M0O6i;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id y66si28220oiy.5.2020.06.29.10.01.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 10:01:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id x62so13388961qtd.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 10:01:42 -0700 (PDT)
X-Received: by 2002:ac8:794d:: with SMTP id r13mr16071834qtt.314.1593450101660;
        Mon, 29 Jun 2020 10:01:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id j9sm218667qtr.60.2020.06.29.10.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 10:01:41 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 13:01:39 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/7] x86/boot: Remove run-time relocations from
 .head.text code
Message-ID: <20200629170139.GE900899@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-6-nivedita@alum.mit.edu>
 <202006290859.14DD408A29@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006290859.14DD408A29@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Uf+M0O6i;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Mon, Jun 29, 2020 at 09:04:04AM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 10:09:26AM -0400, Arvind Sankar wrote:
> > The assembly code in head_{32,64}.S, while meant to be
> > position-independent, generates run-time relocations because it uses
> > instructions such as
> > 	leal	gdt(%edx), %eax
> > which make the assembler and linker think that the code is using %edx as
> > an index into gdt, and hence gdt needs to be relocated to its run-time
> > address.
> > 
> > On 32-bit, with lld Dmitry Golovin reports that this results in a
> > link-time error with default options (i.e. unless -z notext is
> > explicitly passed):
> >   LD      arch/x86/boot/compressed/vmlinux
> > ld.lld: error: can't create dynamic relocation R_386_32 against local
> > symbol in readonly segment; recompile object files with -fPIC or pass
> > '-Wl,-z,notext' to allow text relocations in the output
> > 
> > With the BFD linker, this generates a warning during the build, if
> > --warn-shared-textrel is enabled, which at least Gentoo enables by
> > default:
> >   LD      arch/x86/boot/compressed/vmlinux
> > ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
> > ld: warning: creating a DT_TEXTREL in object
> > 
> > On 64-bit, it is not possible to link the kernel as -pie with lld, and
> > it is only possible with a BFD linker that supports -z noreloc-overflow,
> > i.e. versions >2.26. This is because these instructions cannot really be
> > relocated: the displacement field is only 32-bits wide, and thus cannot
> > be relocated for a 64-bit load address. The -z noreloc-overflow option
> > simply overrides the linker error, and results in R_X86_64_RELATIVE
> > relocations that apply a 64-bit relocation to a 32-bit field anyway.
> > This happens to work because nothing will process these run-time
> > relocations.
> 
> Are any of Thomas Garnier's PIE fixes useful here too? He had a lot of
> fixes to make changes for PC-relative addressing in the various
> assembly bits:
> https://lore.kernel.org/lkml/20200228000105.165012-9-thgarnie@chromium.org/
> 

The case there is somewhat different -- he needed to convert non-PIE
code into PIE code, and has to worry about the distinction between
physical and virtual addresses. Here we actually already have PIE code,
so the assembly doesn't really have to change.  It's just a matter of
being more precise so that the toolchain understands that it's PIE, and
everything is identity-mapped so it's simpler.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629170139.GE900899%40rani.riverdale.lan.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOEH3DZAKGQEO24CUUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645816F768
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 06:35:54 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id n130sf2476889qke.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:35:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582695353; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+QN4A4qvJS5JxkoZDdN7UPrZgBBkCxJZ3jcudkxaFIveGr39uKOUkA9btnwJQmhPQ
         EfQ0mJ+asjC8C0taL0+Zlyc/Ddhtq93fQH/z4lgY896LVbBjpe1krMudAPcOvazCH+xw
         LiB78YoQJQ+/F9go1V72iIzTpsGzxSA0a4ZjLsxiVixbakWc1D56ToGJ6joA2IIzXoyH
         K0IORKFypPI64XiX+45EfK9/UU3xCvGS2h5GZSE3Q6aM2HJYzdLA7lt7oMPtCoAAnNK1
         EgqG9yppgcHNby7CVnSqFjZSDcxyda1ZMTiROmihYnpI2m4n9vShCDYstJOM3nQxBIXs
         Q2Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SqASzc74FUs4xmFjbCh3SwrUyNmbGwENCwLV0CmNKhM=;
        b=DLUVtBCDaKbGY4dvrlidLabKHeqXxgkbB90W9DaOTEwurrwYo0dn81purJWwWPT/0x
         jXKnnx4RZY6AgLgI/Uc90ZN/16VkPg3oqy9FE+WlQCYmxoKwL+k7m4Up+QjoCBLLDXQ8
         tvhl/ER1eBNZtMaMkta/pkFZvoyEhm5ZWQ6I3+lKvEICVc0Q3XGd1Pv3k4CktRFC0d3D
         xlmIcZoLuO4zkwgZ4fSwQfMjsHOUbGugvg+8pRkT4QkkUqL9n95e8qjJBfV8UhpDMET+
         INFRu9kjagpWHKfd+IrCTk9yVeIpyexPRVj+ysuKrKOHzooG5crdkmLKO3yUaWhZhw5K
         I7SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S60pJC8C;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SqASzc74FUs4xmFjbCh3SwrUyNmbGwENCwLV0CmNKhM=;
        b=iegmO/IXauSS7k4zWgdixhILv7QWotFmQaCtUrYRDGFeMJikdJntbnknmRrDKvKFaa
         pcWz3OYvPVIs9OHVLiALDKBO4QYVq3A1WMqwqxtq96Q5mgZ1+wa18XYfbkLJfDrwjI0U
         IN8IaVmqZTZ7PSEAK4q9m2J0XiE2eqo0vt+LpTEPpIO4JEP7W4utdXSuqXCO1MOEYIo+
         D5SIIZKnz8yP0QQRkugaY9rAgDvQyf9+0rmpKmaL9rFSepg9N8ohu27PzzO213pi6IiA
         9f9tEWskWMSDoynVZ5euKcAQ6KjMSSrDR0YL37nHrp7vgXD1VxhZ7EF3msW/eqOqW3Nz
         Bn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SqASzc74FUs4xmFjbCh3SwrUyNmbGwENCwLV0CmNKhM=;
        b=n14eB7m1XeeJAJuJ/llPANn4eP1Wl/IznppUtgYyKYyO6D4QU0mEkrhybtz4bXDcQ1
         YsNwkvmm0xTMKQlIuenR7s2VzNb39kqUPYOIwR5jSZGFf692irGM2HSrchMDWI0lr3j1
         p+q2jic8lo6C2nYfDo0TIVOb4gnFHHd9AXyFm68NwP57oU985tSRNjJebXmTvoXS/cqN
         9bfWgO6+BYo9T4cOIZx2e9qzS7+/ZK3qDS6WcJTdrgFYYrPaNgWKECN4ED8VAeURbXch
         IyGOp8mAAoCCXF2X5AOT2fud0r/M1aprC2s8FNDlwvXUGATH04gnXZzbvGk4R+yzS7zY
         EaxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwJQ67by0jikge7chKKX1Tb42wZOM6V83aB+K1FDAFtIZaEpKx
	f6g/QoDJVogK+lvQLoyON60=
X-Google-Smtp-Source: APXvYqwZc59JXzK5JomvrN+x553jJr8bMK1n8J5WQbOby5ga3IdEyz/Bc1LWh+sKoAQQOVX2b65gZg==
X-Received: by 2002:ac8:4659:: with SMTP id f25mr2973328qto.273.1582695352949;
        Tue, 25 Feb 2020 21:35:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6550:: with SMTP id z77ls934467qkb.10.gmail; Tue, 25 Feb
 2020 21:35:52 -0800 (PST)
X-Received: by 2002:a05:620a:914:: with SMTP id v20mr3572133qkv.434.1582695352590;
        Tue, 25 Feb 2020 21:35:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582695352; cv=none;
        d=google.com; s=arc-20160816;
        b=F05HD6EbqqAp5xRrUHKcsOWv0b387/wk2jnFAOeOY4WZ4AmhkzYu+7g9T/9srP8+RG
         tsljeO4dKwIAkZeGUQ0SVnH/mEwasopCxoVQXehxoKiktsHGUfqSvIJpsm3/jN76s/gc
         ECSQceoJh4jgkGRBc91dy9HP7srhavG4VrBuVHRnxfmPsg/vf41gNWhWIv2p3XLj2ZcW
         WIl7Th9NQtB88UlqTnJ0Nu/HiokZhoSHbtOUFU6BM6C2CH0yOEP7HmbKr/5b4xWX3IMN
         bwF5iNQQKBEix8jUFOrn4zhqn5/bIYiaZzE0SKeXttNeuTecOpNH+JnUFvkzK9W6tNi1
         V7rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D5/Ju2tq5be6Ks63/zLa9GYBbQxPXMVnyMNgldjudzg=;
        b=Bbna+LOr0wroSl09k/8EfBQLqIt7lbwsr+NdCbaexjV5hirajL8xCVKub+n3ci+rOZ
         4kqsevn9If5G4OuHAsLztsyXPeMqr6kGxDi7fWe9uALl8Z6762v2OUSPQcxTWBLPrJHX
         Brqct13a5WlTLskMsN0bLT3nBccJBX8BEstkFrjQjATEdZjq/UFlAo3rHmTkGJcP0ONv
         7zzW/2vb2rIVMY9GzLb1t7W+gw7GIU84eTMDrcVIFnKK2wdvK1kKelq4ovuKTD1tNsyY
         0dcvskBurR5knEI1LJZiDkpf053y54DS2F2cLbVUQhSLo/ZcNQ1pAm4JszcRQ7+q3vQe
         l2zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S60pJC8C;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id p23si85103qkm.7.2020.02.25.21.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 21:35:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id 4so847258pfz.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 21:35:52 -0800 (PST)
X-Received: by 2002:a62:cf07:: with SMTP id b7mr2397497pfg.77.1582695351516;
        Tue, 25 Feb 2020 21:35:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z127sm822015pgb.64.2020.02.25.21.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 21:35:50 -0800 (PST)
Date: Tue, 25 Feb 2020 21:35:49 -0800
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: --orphan-handling=warn
Message-ID: <202002252103.B4BBF01091@keescook>
References: <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
 <20200225182951.GA1179890@rani.riverdale.lan>
 <202002251140.4F28F0A4F@keescook>
 <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
 <202002251358.EDA50C11F@keescook>
 <20200226015606.ij7wn7emuj4bfkvn@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200226015606.ij7wn7emuj4bfkvn@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S60pJC8C;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429
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

On Tue, Feb 25, 2020 at 05:56:06PM -0800, Fangrui Song wrote:
> > > Kees is working on a series to just be explicit about what sections
> > > are ordered where, and what's discarded, which should better handle
> > > incompatibilities between linkers in regards to orphan section
> > > placement and "what does `*` mean."  Kees, that series can't come soon
> > 
> > So, with my series[1] applied, ld.bfd builds clean. With ld.lld, I get a
> > TON of warnings, such as:
> > 
> > (.bss.rel.ro) is being placed in '.bss.rel.ro'
> 
> .bss.rel.ro (SHT_NOBITS) is lld specific. GNU ld does not have it. It is
> currently used for copy relocations of symbols in read-only PT_LOAD
> segments. If a relro section's statically relocated data is all zeros,
> we can move the section to .bss.rel.ro
> 
> > (.iplt) is being placed in '.iplt'
> > (.plt) is being placed in '.plt'
> > (.rela.altinstr_aux) is being placed in '.rela.altinstr_aux'
> > (.rela.altinstr_replacement) is being placed in
> > '.rela.altinstr_replacement'
> > (.rela.altinstructions) is being placed in '.rela.altinstructions'
> > (.rela.apicdrivers) is being placed in '.rela.apicdrivers'
> > (.rela__bug_table) is being placed in '.rela__bug_table'
> > (.rela.con_initcall.init) is being placed in '.rela.init.data'
> > (.rela.cpuidle.text) is being placed in '.rela.text'
> > (.rela.data..cacheline_aligned) is being placed in '.rela.data'
> > (.rela.data) is being placed in '.rela.data'
> > (.rela.data..percpu) is being placed in '.rela.data..percpu'
> > (.rela.data..percpu..page_aligned) is being placed in '.rela.data..percpu'
> > ...
> 
> I need to figure out the exact GNU ld rule for input SHT_REL[A] retained
> by --emit-relocs.
> 
>   ld.bfd: warning: orphan section `.rela.meminit.text' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
>   ld.bfd: warning: orphan section `.rela___ksymtab+__ctzsi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
>   ld.bfd: warning: orphan section `.rela___ksymtab+__clzsi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
>   ld.bfd: warning: orphan section `.rela___ksymtab+__clzdi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
>   ld.bfd: warning: orphan section `.rela___ksymtab+__ctzdi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
> 
> lld simply ignores such SHT_REL[A] when checking input section descriptions.
> A .rela.foo relocating .foo will be named .rela.foobar if .foo is placed in .foobar
> 
> It makes sense for --orphan-handling= not to warn/error.
> https://reviews.llvm.org/D75151

Awesome! I commented on the review, but just to follow up, this cuts out
all the .rela warnings.

> 
> > But as you can see in the /DISCARD/, these (and all the others), should
> > be getting caught:
> > 
> >         /DISCARD/ : {
> >                 *(.eh_frame)
> > +               *(.rela.*) *(.rela_*)
> > +               *(.rel.*) *(.rel_*)
> > +               *(.got) *(.got.*)
> > +               *(.igot.*) *(.iplt)
> >         }
> > 
> > I don't understand what's happening here. I haven't minimized this case
> > nor opened an lld bug yet.
> 
> --orphan-handling was implemented per
> https://bugs.llvm.org/show_bug.cgi?id=34946
> It seems the reporter did not follow up after the feature was implemented.
> Now we have the Linux kernel case...
> Last December I encountered another case in my company.
> 
> It is pretty clear that this feature is useful and we should fix it :)
> 
> https://reviews.llvm.org/D75149

Also commented in the review; this removes the following:

... (.bss.rel.ro) is being placed in '.bss.rel.ro'
... (.iplt) is being placed in '.iplt'
... (.plt) is being placed in '.plt'
... (.symtab_shndx) is being placed in '.symtab_shndx'

I'm now only left with:

ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

> > enough. ;) (I think it's intended to help "fine grain" (per function)
> > KASLR).  More comments in the other thread.
> 
> > Actually, it's rather opposed to the FGKASLR series, as for that, I need
> > some kind of linker script directive like this:
> > 
> > 	/PASSTHRU/ : {
> > 		*(.text.*)
> > 	}
> > 
> > Where "PASSTHRU" would create a 1-to-1 input-section to output-section
> > with the same name, flags, etc.
> 
> /PASSTHRU/ sections are still handled as orphan sections?

If PASSTHRU existed, I wouldn't want them reported as orphan sections
(since they'd be chosen). This "section" would serve two purposes:

- remove the warning about being orphan
- position the sections in a known location (FGKASLR needs this so that
  it can know where the end of the all the .text.* sections actually
  are. Right now, the correct result is effectively accidental[1].)

[1] https://lore.kernel.org/lkml/20200205223950.1212394-7-kristen@linux.intel.com/

> Do you restrict { } to input section descriptions, not output section
> data (https://sourceware.org/binutils/docs/ld/Output-Section-Data.html#Output-Section-Data)?
> or symbol assignments?

I only imagine it being input section descriptions. (I imagine PASSTHRU
being much like DISCARD -- it won't make sense to put output section
data there either.)

> You can ask https://sourceware.org/ml/binutils/2020-02/ whether
> they'd like to accept the feature request:)
> 
> (My personal feeling is that I want to see more use cases to add the new
> feature...)

This is the only case I've got for this right now. If the "do not merge
the orphan .text.* into .text" bug is fixed, then FGKASLR can continue
to work "on accident", and nothing like PASSTHRU would be needed. :)
In this case, I would have FGKASLR disable the orphan section warning,
since it would depend on orphan handling.

> > ld.bfd's handling of orphan sections named .text.* is to put them each
> > as a separate output section, after the existing .text output section.
> > 
> > ld.lld's handling of orphan sections named .text.* is to put them into
> > the .text output section.
> 
> Confirmed. lld can adapt. I need to do some homework...

Awesome. If it matches bfd, then that'll be sufficient:

https://sourceware.org/binutils/docs/ld/Orphan-Sections.html

Namely:
	"If there is no output section with a matching name then new
	 output sections will be created."
and:
	"... the linker attempts to place orphan sections after sections
	 of the same attribute ..."

So .text.blah would end up in .text.blah but after .text (since they're
both code).

(And as noted earlier, --unique support is needed too.)

> > For FGKASLR (as it is currently implemented[2]), the sections need to be
> > individually named output sections (as bfd does it). *However*, with the
> > "warn on orphans" patch, FGKASLR's intentional orphaning will backfire
> > (I guess the warning could be turned off, but I'd like lld to handle
> > FGKASLR at some point.)
> > 
> > Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> > entry linker script ... made ld.lld take about 15 minutes to do the
> > final link. :(
> 
> Placing N orphan sections requires O(N^2) time (in both GNU ld and lld) :(

Owchy. :)

> [...]
> Now I learned the term FGKASLR... I need to do some homework.

Thanks for looking into this! It'll be really nice to have the orphan
section warnings working in the kernel. And getting the ground work for
FGKASLR ready will be nice!

Kristen, can I convince you that FG stands for function-granular
instead of fine-grain? :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002252103.B4BBF01091%40keescook.

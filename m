Return-Path: <clang-built-linux+bncBCS7XUWOUULBBO5A27ZAKGQESO54Q6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9B416F55E
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 02:56:12 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id a20sf643024vkm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 17:56:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582682171; cv=pass;
        d=google.com; s=arc-20160816;
        b=p4T93btXoPL5/dhi/gdbj0pdNn5WSb5UATunGrmf9ym1kBgpxiw+frX9StcrF97KO0
         Rty8nuNyfkxBiq4uI2JLhwVeka9Revr6k8gZmPMCOj4Q1op5qjaiOFUfklDPFM5xqMoI
         TE8vuF4RvW+2If7TBX/r3avzXM4CzHUCsxg9Eczd3STy5dQod5P/5hQzIfOYooq+oW0J
         vMrFv9TUS2B8nyl5McopFACsm2eJTUW8hXG6Fvc15+BlVymFeOvlRNGxn+RKy5WTyOUa
         BL9knvY5TcHN7BFzkjtMRTra9XKG64m1IxyTlFN9uxDEwMy4V9wJGehPhRs3a8nROOme
         giYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1rWjMz8GzIzpysrijL++TNOi+NYuWpl89ygzQrBXKaU=;
        b=rmTtlnScrUhGhvgvNxr0tcyFJmlFrQe/2WquW+IbAVGd0rcKCF4tbqM4bPQvqPUQlz
         mDpjMWMGEkRGdD6TIfw8OiNdClajl1rUZsyhf3M5Xz9U7BYTzk+24zjIJwmlh896tUEm
         IzM7Il4m8ec45YHmPE29/aOfyqqfwd5mZvxZE1/VkZWTHgqLmQz8kFwRJ3MePIOkZ7IA
         5rLbPTTnHSvVCQnibjqHIyEOdomLtzyzjwQ2VcLw566onv1H0dFHF5aGx8YsaehjyEPE
         RmMkGs7fCaq70DoNCeLcp5uWBPKWJVoejJFwb5RSqvEkbIzdgXR9ANlT8wAkzINJLWpG
         ltmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VI67dM+s;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1rWjMz8GzIzpysrijL++TNOi+NYuWpl89ygzQrBXKaU=;
        b=Xa9yPa7guI6/4QbzIa4pZqyupOJ2p+RmC2eYur7KV/agXdX1gwz4o+oBSFBACsTOgC
         ZT9U0VR426qm7IbAiMbZdm+tivLK9e1XvE7QpYv1V5ZhRePXhdytSkAfk3+a83sGJgH/
         1xbdubuzHIcZGadd268aP0AVElUKwupuQOIeff6/ldgG+qXVAGWo9lCNb8MBXQy4kmHm
         EJbxYunSwgNxCv19v1vGaceEsN/WkTjxv9nMaXqTL3oSuFKqcPyD1xFuFJPcVFwl/vOw
         sRsvHCuAU7pl0faf3tcfEL6knb3sHV0SpA+mYwQzvnNFEO4i3K979hKX+dciIr2QgCBS
         Y1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rWjMz8GzIzpysrijL++TNOi+NYuWpl89ygzQrBXKaU=;
        b=j1QsdYj7Pn9fNbUYeEomel7w2+IJP4cebXLJNsKFDGSKg5hUVnkkyPeBdpG0EXlEhO
         FkHFNIBQPIxjvfxV0WW2gxxMo3GxdlpZcaJkUbbEyiObFeWeV5yLQXSCL9yQwm4sGD0Y
         NF/6t81ZVMJ6FhBq/EbT8o+njOZYStROvwLhY0x7vrLDPJk1JopF11qy29Ssa8/IImA4
         LZNGKIpzFntJQBWio/oTMoghibTg/HUz6fMBLkmJsaW/aHfQRAvSddjdDRx/m9ZlkxKO
         a5I5dEUoSdrzslV8kRI+fxYIMPJWobsGg4GwHv+8hrajz+BrnPepV2qITl9l4oSx7UKT
         lA+Q==
X-Gm-Message-State: APjAAAVZ4YMMTCtZhnLjvbMPIu7BCIajpn6vzzFZxENXwlMA/CJkQ7dx
	1eKjlxBJ/MZJsKcxihkJXzQ=
X-Google-Smtp-Source: APXvYqwf+bXNCm71DrUmAttZ8eli2wIENyr6NjdylswCwp5S8a511s1hqDT9OkEZWAERgM+98vDRew==
X-Received: by 2002:a05:6102:402:: with SMTP id d2mr2348923vsq.146.1582682171789;
        Tue, 25 Feb 2020 17:56:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:30d8:: with SMTP id c24ls82043uam.1.gmail; Tue, 25 Feb
 2020 17:56:10 -0800 (PST)
X-Received: by 2002:ab0:4ea0:: with SMTP id l32mr2243959uah.69.1582682170628;
        Tue, 25 Feb 2020 17:56:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582682170; cv=none;
        d=google.com; s=arc-20160816;
        b=OADcacUUOJus/I9B8Tm4ETQpnijieEuzPz/iOPBQ45t3pnkR8Z4zgxgvvRebAMbuDW
         I6wYDE2RYNf0349dEGnXSY4+2R1LgMUE7sO1XtLYmBXiWRPkMlKy/6Y4QqtfkSX/1Fjj
         bwGlojDHISU6D+k9IVgEHTk3HL+8/KMmUBiTidPVV9BSyyXtOPPvRuMBS4dWZ7Xrg4/F
         CYyR9PhtcW6BuXSHi2W85qCHdLlKnoxOQO2Hnm8H9fwRPeMaepWop4JXVmsgNogcS0hf
         W9DdVRJv76fUZ9EjS/SH2hyhjKFScFmQqXWGiiuP/VNsXxdXnhJ4ohe/Z5abCAuQ4FsX
         rYqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SoVH2C+rKg4FGK3xYkqD+KKbNwXIXz2f79nVDo9rwKQ=;
        b=ydQwq0XGOFPxo7aitUR64GbX9qUtra57Hn6HCXO5KfqH3qx2IBESLAlPut6PShXSzj
         POm1G9wChlNbMV1UlxERxEgyk3NBfslfeESEFi/apWLATdAc1DUwbHqgDUNOtc+8bMr8
         pLVYVBaISkqtVGw3/rUQxN5obSI1zTeP31QBrd0phZ0nFkQiB/NmJC2tKRa0yR8DnXTl
         NvpQ9FDB1NY3l2qbBkEPEj4vcHmivl94LDXfOGi2Sak5Mqb+YvBsfLQYIZpE/z3inFkA
         GWxrdB4ZfcYcKpxDjzR5ephkyap6TlgabxH0IXgV+pZXRrZZscPYpbvqf4plYDXeCxYX
         dItw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VI67dM+s;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h7si73537vsm.1.2020.02.25.17.56.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 17:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j9so566994pfa.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 17:56:10 -0800 (PST)
X-Received: by 2002:aa7:957c:: with SMTP id x28mr1687636pfq.157.1582682169560;
        Tue, 25 Feb 2020 17:56:09 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id h13sm360541pjc.9.2020.02.25.17.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 17:56:08 -0800 (PST)
Date: Tue, 25 Feb 2020 17:56:06 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
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
Message-ID: <20200226015606.ij7wn7emuj4bfkvn@google.com>
References: <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
 <20200225182951.GA1179890@rani.riverdale.lan>
 <202002251140.4F28F0A4F@keescook>
 <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
 <202002251358.EDA50C11F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202002251358.EDA50C11F@keescook>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VI67dM+s;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

> > Kees is working on a series to just be explicit about what sections
> > are ordered where, and what's discarded, which should better handle
> > incompatibilities between linkers in regards to orphan section
> > placement and "what does `*` mean."  Kees, that series can't come soon
> 
> So, with my series[1] applied, ld.bfd builds clean. With ld.lld, I get a
> TON of warnings, such as:
> 
> (.bss.rel.ro) is being placed in '.bss.rel.ro'

.bss.rel.ro (SHT_NOBITS) is lld specific. GNU ld does not have it. It is
currently used for copy relocations of symbols in read-only PT_LOAD
segments. If a relro section's statically relocated data is all zeros,
we can move the section to .bss.rel.ro

> (.iplt) is being placed in '.iplt'
> (.plt) is being placed in '.plt'
> (.rela.altinstr_aux) is being placed in '.rela.altinstr_aux'
> (.rela.altinstr_replacement) is being placed in
> '.rela.altinstr_replacement'
> (.rela.altinstructions) is being placed in '.rela.altinstructions'
> (.rela.apicdrivers) is being placed in '.rela.apicdrivers'
> (.rela__bug_table) is being placed in '.rela__bug_table'
> (.rela.con_initcall.init) is being placed in '.rela.init.data'
> (.rela.cpuidle.text) is being placed in '.rela.text'
> (.rela.data..cacheline_aligned) is being placed in '.rela.data'
> (.rela.data) is being placed in '.rela.data'
> (.rela.data..percpu) is being placed in '.rela.data..percpu'
> (.rela.data..percpu..page_aligned) is being placed in '.rela.data..percpu'
> ...

I need to figure out the exact GNU ld rule for input SHT_REL[A] retained
by --emit-relocs.

   ld.bfd: warning: orphan section `.rela.meminit.text' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
   ld.bfd: warning: orphan section `.rela___ksymtab+__ctzsi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
   ld.bfd: warning: orphan section `.rela___ksymtab+__clzsi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
   ld.bfd: warning: orphan section `.rela___ksymtab+__clzdi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'
   ld.bfd: warning: orphan section `.rela___ksymtab+__ctzdi2' from `arch/x86/kernel/head_64.o' being placed in section `.rela.dyn'

lld simply ignores such SHT_REL[A] when checking input section descriptions.
A .rela.foo relocating .foo will be named .rela.foobar if .foo is placed in .foobar

It makes sense for --orphan-handling= not to warn/error.
https://reviews.llvm.org/D75151

> But as you can see in the /DISCARD/, these (and all the others), should
> be getting caught:
> 
>         /DISCARD/ : {
>                 *(.eh_frame)
> +               *(.rela.*) *(.rela_*)
> +               *(.rel.*) *(.rel_*)
> +               *(.got) *(.got.*)
> +               *(.igot.*) *(.iplt)
>         }
> 
> I don't understand what's happening here. I haven't minimized this case
> nor opened an lld bug yet.

--orphan-handling was implemented per
https://bugs.llvm.org/show_bug.cgi?id=34946
It seems the reporter did not follow up after the feature was implemented.
Now we have the Linux kernel case...
Last December I encountered another case in my company.

It is pretty clear that this feature is useful and we should fix it :)

https://reviews.llvm.org/D75149

> enough. ;) (I think it's intended to help "fine grain" (per function)
> KASLR).  More comments in the other thread.

> Actually, it's rather opposed to the FGKASLR series, as for that, I need
> some kind of linker script directive like this:
> 
> 	/PASSTHRU/ : {
> 		*(.text.*)
> 	}
> 
> Where "PASSTHRU" would create a 1-to-1 input-section to output-section
> with the same name, flags, etc.

/PASSTHRU/ sections are still handled as orphan sections?
Do you restrict { } to input section descriptions, not output section
data (https://sourceware.org/binutils/docs/ld/Output-Section-Data.html#Output-Section-Data)?
or symbol assignments?

You can ask https://sourceware.org/ml/binutils/2020-02/ whether
they'd like to accept the feature request:)

(My personal feeling is that I want to see more use cases to add the new
feature...)

> ld.bfd's handling of orphan sections named .text.* is to put them each
> as a separate output section, after the existing .text output section.
> 
> ld.lld's handling of orphan sections named .text.* is to put them into
> the .text output section.

Confirmed. lld can adapt. I need to do some homework...

> For FGKASLR (as it is currently implemented[2]), the sections need to be
> individually named output sections (as bfd does it). *However*, with the
> "warn on orphans" patch, FGKASLR's intentional orphaning will backfire
> (I guess the warning could be turned off, but I'd like lld to handle
> FGKASLR at some point.)
> 
> Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> entry linker script ... made ld.lld take about 15 minutes to do the
> final link. :(

Placing N orphan sections requires O(N^2) time (in both GNU ld and lld) :(

> > Taken from the Zen of Python, but in regards to sections in linker
> > scripts, "explicit is better than implicit."
> 
> Totally agreed. I just hope there's a good solution for this PASSTHRU
> idea...
> 
> -Kees
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
> [2]
> https://github.com/kaccardi/linux/commit/127111e8c6170a130d8d12d73728e74acbe05e13

On 2020-02-25, Kees Cook wrote:
>On Tue, Feb 25, 2020 at 12:37:26PM -0800, Nick Desaulniers wrote:
>> On Tue, Feb 25, 2020 at 11:43 AM Kees Cook <keescook@chromium.org> wrote:
>> >
>> > On Tue, Feb 25, 2020 at 01:29:51PM -0500, Arvind Sankar wrote:
>> > > On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
>> > > > Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
>> > > > entry linker script ... made ld.lld take about 15 minutes to do the
>> > > > final link. :(
>> > >
>> > > Out of curiosity, how long does ld.bfd take on that linker script :)
>> >
>> > A single CPU at 100% for 15 minutes. :)
>>
>> I can see the implementers of linker script handling thinking "surely
>> no one would ever have >10k entries." Then we invented things like
>> -ffunction-sections, -fdata-sections, (per basic block equivalents:
>> https://reviews.llvm.org/D68049) and then finally FGKASLR. "640k ought
>> to be enough for anybody" and such.
>
>Heh, yeah. I had no expectation that it would work _well_; I just
>wanted to test if it _could_ work. And it did: FGKASLR up and running
>on Clang+LLD. I stopped there before attempting the next step:
>FGKASLR+LTO+CFI, which I assume would be hilariously slow linking.

Now I learned the term FGKASLR... I need to do some homework.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200226015606.ij7wn7emuj4bfkvn%40google.com.

Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBE4U3P4QKGQEJBM4FKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E54244DF1
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 19:29:56 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id ei10sf6890301pjb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 10:29:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597426195; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yl1TVRu+56kyskWyd09L2PIRzZ6oYYoNgyZFkuwhfPbW5i/1X9dwp+lkcS79sPT7fY
         UvcRpEaNMKq06fbO2S0ZiLWh7PJe6MwM4x8bg1YWijWiLiBD95ggLF00pAFLPwHwMrlg
         ew1pn6ZXY2LYmE3NH0+GhAHREhmXtnrNaGbZwEOj4gM759a9k2ZpDcpGq/wykKN6yfxy
         Q9Hj364YZrXe/ZbogYjqw8T61kD6pPW5ca03VKMvyCkK2TpbMoplO+X5gElhWybIbRLj
         iGztEC+UnRHtiYqeVi5VIaBsmI347TNEctlP2zaAU4ulojfN4VugGln+x0Y6Ycv+rlyj
         6+Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tcupdMu4Js+nlfhNqms5ILzrk3fsuDRG7bXZk+a6aKg=;
        b=EWLWFKQ/LxerrYj60mTf2ehQWJWnMr6Y3HVa13PARnPzGD8SQWYTVPX20kJlVgZtdu
         UtgtGEncUl4GcIs/HRSa6N++fXhoGfM0y2uJsnFnIAkNxXWO6EpX5FQsSlsblsd9Te77
         0VzLqCsRQMJ1+A1iJvZVkqTm7cZUFFy+P1YwotHoFixgpdiea81HtCwxen8VTTwMF3bO
         sOFB5BHhxZS2g5ddQbD0A7DbkSnbeJspZ/aTsG1S1YGRGWEoCCoDnHx6gkhDmkrCEsoe
         jRcSS8XQa8VrV1nAa1onBJNBobQyIusag2c8XYwTf9sKS1uBWsEbstH9XXb2ul/tD74s
         TKTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPG9z3sh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tcupdMu4Js+nlfhNqms5ILzrk3fsuDRG7bXZk+a6aKg=;
        b=Ef8x0zxLYeClewLIQT+OXBFVnqXv5oy1xZy4gLnF12g2ZfPRz8IWn73MckZg0gwhJj
         GlFLgMC7KL8Tia8gtTybnoUXjuzwv795jRbgElXbNHfUeKzwEiajGQ4/PGTfSDj9r+Q/
         +tW/O2VS4BUk3yBnU61N4FVaOjagFUNYKadRrFUjZZ9nDMjlsI67N7aaGJxdkblvTBBM
         SK11bGXs+cXhvVMs1DqeLDWPr5Ay73r9Op/u0KTDY4v8PlN8H2xOQb+fXmBZNHT8VpZu
         4RBdUSc0KM6tWr7MrlpYnYMTlx7tW7HN6Ydbr1vugfEigWotb5Let5HokNoFpoMrAkbn
         +7sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tcupdMu4Js+nlfhNqms5ILzrk3fsuDRG7bXZk+a6aKg=;
        b=rHsxSxxyAYBI+T9ub/hFSyknFBvkJtH1iO7h4GqeyPcRNiUJO/3yiYlEG4c5YPS6Gu
         hMae+Hv3CN4MhtQENtT3mxrGzGtqixyi3LCOaukADrYqBa9mh2y0ouIfOjttcnwHvBAl
         6U1hSAJqzANDupQ0Px4SME8iktzyd9MSohdx4j3X2h/urK/ZPxAgTq1SHpK+3THw7ATC
         fGu+hBSdy0e4qhrLYhRT40+aWhnFQQQ/N1NQkmici9V2Clo61woQ9esoWlGZWqIaM64+
         9BMUL2+hBR/NoS3qRRdShhcp3oI9+HqMJuzZ6HVA0R3Vixv9ONxfCaz1hRWfeDqDsgHk
         1m3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tcupdMu4Js+nlfhNqms5ILzrk3fsuDRG7bXZk+a6aKg=;
        b=ffobEnLtPDwJi45qsQgklwuPVyxVAEO0DQz+BRz1WFPFNETwQO8nblm09g4eo5nBx3
         Z8uO9rSz/2gv16zMRRquH/+Dhq52nepuSm0bXtKJNjhe+A7MQauwB+uu26nYuM7SmVba
         ipMMxeeyy8HmA5M5uLQKtEunaiKJyzcXrft3Ek0Ye4+jsOblChLSsFfSSdxeSbC4LVDM
         rAIbEdRZ/G3avwws6bhjPg6dia45OH67d0HaUnlbzd8x0EfejB3RAzTFfYmWF8ms8Skf
         +CKAk1lvlM+kNQ93iJgre8lI71evRn3+5wbOaE37YWgaDt5z1R1cFT5xmN4raylePVO6
         Ch/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yA0j0lQ5fR5Nu+7CGMcEbrbM6a7vdloXxz4zumQ1Zexa5j2vk
	HNaJ5P49GBbNT36erm8Ib88=
X-Google-Smtp-Source: ABdhPJzMap3BKJF50MoWM1Bbtg6kPelypEAUNhf3/Fk8ip43CJBX9VW1NNQOQ+uE59lGP3TpesjYEw==
X-Received: by 2002:a62:8cd4:: with SMTP id m203mr2540750pfd.74.1597426195474;
        Fri, 14 Aug 2020 10:29:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls2678403pgp.10.gmail; Fri, 14
 Aug 2020 10:29:55 -0700 (PDT)
X-Received: by 2002:a62:1ad0:: with SMTP id a199mr2650115pfa.56.1597426195008;
        Fri, 14 Aug 2020 10:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597426195; cv=none;
        d=google.com; s=arc-20160816;
        b=xq2pOSWEULivlAHOotFu8LcKhNvOhZlFOX4nPFjAOrYHZ0sOOjMidFWZbS7jEZQH56
         0RcMsDuP1u1ivO0q1kuXUam+HeWcoie63CQswRWc/iHJYJiq8+NCyppy+Mv5zPAFs1F8
         JqoCaW7Cb2GfWY8IuysJg04XwW4LMyVgrdDuqgxDc0FAB4IsE6J8rCCFcV6EzsbiPutx
         3r6eMXnPtNM6F2SnCuKhVJ3nIsLHr6l17a6ltj0FAais1Q9M8G69tGTAcqowRpV2cmwG
         KRin34zPf4NetHOg19cYwskhSA6k2kmdKhLCDQsU2CHvWMMmdObkm+I9yoL54dk5jLuT
         cUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LQUYCPF81nUKijFcByZIq3gr+jwx6Zv8RO3AtGf1z18=;
        b=SXewtkcfsuadhzxSQCUUxUjChjbprSGrJSroQ8Qax2tXV6DzKkx63ydA3aCxtuYw2F
         GgLmAIx64iB1fiXhofk4SYFKfa+KkohNJWgBk6waMeFEFB1F9Cxf97Rs5SLHM6dWwqTv
         ISpZyD4p2NV/hx+ZNsi3n4a/TCXm+tp4U5UVa+4gIuGkoLL2Oy7f5g6637O3B6EnqoB5
         F7CA5aLY+fv95VoS01rap3nhxH99lwp2s90zYfaOLMiiAVndjiBo3ccFoHYi3xfNGSxe
         FzgWbVUsDaLQ0apiF7Iz5kbsL8QFZ666S2OfU+5OL41jHk3YUjwl4RkCG7vh5GdQ+zTG
         TuhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPG9z3sh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id s76si424986pfc.1.2020.08.14.10.29.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 10:29:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l84so8761466oig.10
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 10:29:54 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr2289529oie.72.1597426194312;
 Fri, 14 Aug 2020 10:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
In-Reply-To: <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 14 Aug 2020 19:29:42 +0200
Message-ID: <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UPG9z3sh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 4, 2020 at 2:09 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, May 27, 2020 at 6:53 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > When using the clang integrated assembler, we get a reference
> > to __force_order that should normally get ignored in a few
> > rare cases:
> >
> > ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
> >
> > Add a 'static' definition so any file in which this happens can
> > have a local copy.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Hi Arnd,
> Looks like
> $ ARCH=i386 make CC=clang LLVM_IAS=1 -j71
> defconfig+CONFIG_X86_POWERNOW_K6=m
> is the simplest reproducer.
>
> If I run
> $ llvm-readelf -s drivers/cpufreq/powernow-k6.o | grep __force_order
>     39: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __force_order
> we can indeed see an undefined reference to __force_order.
>
> If I build the .s file via
> $ ARCH=i386 make CC=clang LLVM_IAS=1 -j71 drivers/cpufreq/powernow-k6.s
> the only reference I see to __force_order is:
> 979   .addrsig_sym __force_order
>
> which is created by Clang's implicit -faddr-sig.  If I disable that
> for this file via:
>
> ```diff
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index f1b7e3dd6e5d..87d655d5af49 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -28,6 +28,9 @@ obj-$(CONFIG_X86_ACPI_CPUFREQ)                +=
> acpi-cpufreq.o
>  obj-$(CONFIG_X86_POWERNOW_K8)          += powernow-k8.o
>  obj-$(CONFIG_X86_PCC_CPUFREQ)          += pcc-cpufreq.o
>  obj-$(CONFIG_X86_POWERNOW_K6)          += powernow-k6.o
> +ifdef CONFIG_CC_IS_CLANG
> +CFLAGS_powernow-k6.o                   += -fno-addrsig
> +endif
>  obj-$(CONFIG_X86_POWERNOW_K7)          += powernow-k7.o
>  obj-$(CONFIG_X86_LONGHAUL)             += longhaul.o
>  obj-$(CONFIG_X86_E_POWERSAVER)         += e_powersaver.o
> ```
> then the module links without error, and we get no hits for
> __force_order from llvm-readelf -s.  This makes me think there may be
> a bug in Clang generating address significance tables for global
> variables that are otherwise unused, resulting in such linkage
> failures. +pcc@ for that.
>
> I ran a creduce job on drivers/cpufreq/powernow-k6.i where I'd compile
> twice, one with the implicit default value of -faddr-sig and look for
> the undefined __force_order, and again with -fno-addrsig and ensure
> there was no undefined __force_order, which coughed up:
> extern int __force_order;
> int a(void) { asm("" : "=m"(__force_order)); return 0; }
> as the bare minimum for an address significant table.
> https://godbolt.org/z/cjfaqM
>
> I'll bet this is coming from the call to read_cr0() in
> powernow_k6_set_cpu_multiplier().  If __force_order is defined in
> arch/x86/boot/compressed/pgtable_64.c, then I'm not sure it's a good
> idea to build drivers/cpufreq/powernow-k6.c as a kernel module
> (CONFIG_X86_POWERNOW_K6=m) vs statically compiled in.  Wouldn't
> __force_order need to be EXPORT'ed for kernel modules to use it
> safely?
>
> > ---
> >  arch/x86/boot/compressed/pgtable_64.c | 2 ++
> >  arch/x86/include/asm/special_insns.h  | 7 +++++++
> >  2 files changed, 9 insertions(+)
> >
> > diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
> > index c8862696a47b..8595194cea41 100644
> > --- a/arch/x86/boot/compressed/pgtable_64.c
> > +++ b/arch/x86/boot/compressed/pgtable_64.c
> > @@ -12,7 +12,9 @@
> >   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
> >   * due to an undefined symbol. Define it to make these ancient GCCs work.
> >   */
> > +#ifndef CONFIG_CC_IS_CLANG
> >  unsigned long __force_order;
> > +#endif
> >
> >  #define BIOS_START_MIN         0x20000U        /* 128K, less than this is insane */
> >  #define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */
> > diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
> > index 82436cb04ccf..7081e587c1ea 100644
> > --- a/arch/x86/include/asm/special_insns.h
> > +++ b/arch/x86/include/asm/special_insns.h
> > @@ -16,8 +16,15 @@
> >   * A memory clobber would solve the problem, but would prevent reordering of
> >   * all loads stores around it, which can hurt performance. Solution is to
> >   * use a variable and mimic reads and writes to it to enforce serialization
> > + *
> > + * Clang sometimes fails to kill the reference to the dummy variable, so
> > + * provide an actual copy.
> >   */
> > +#ifdef CONFIG_CC_IS_CLANG
> > +static unsigned long __force_order;
> > +#else
> >  extern unsigned long __force_order;
> > +#endif
> >
> >  void native_write_cr0(unsigned long val);
> >
> > --
> > 2.26.2
> >

Thanks for the proposal.

I have adapted it to fit my patchset against Linux v5.8.

Both Debian's GCC-10 and a snapshot version of LLVM toolchain
v11.0.0-rc1+ seems to be OK.

MAKE_OPTS="V=1 -j3 CC=gcc-10 LD=ld.bfd"
make $MAKE_OPTS arch/x86/kernel/cpu/common.o

MAKE_OPTS="V=1 -j3 HOSTCC=clang-11 HOSTCXX=clang++-11 HOSTLD=ld.lld-11
HOSTAR=llvm-ar-11 CC=clang-11 LD=ld.lld-11 AR=llvm-ar-11 NM=llvm-nm-11
OBJCOPY=llvm-objcopy-11 OBJDUMP=llvm-objdump-11 OBJSIZE=llvm-size-11
READELF=llvm-readelf-11 STRIP=llvm-strip-11 LLVM_IAS=1"
make $MAKE_OPTS arch/x86/kernel/cpu/common.o

I can send both object files if desired.

I will do a full kernel-build to see if I am able to build the
VirtualBox out-of-tree kernel-modules.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUjtu3fCNTngY52h3uRL%2BeUaimNJb0UNwj5v-QwKggs5A%40mail.gmail.com.

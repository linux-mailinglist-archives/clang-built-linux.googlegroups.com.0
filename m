Return-Path: <clang-built-linux+bncBC2ORX645YPRBQVOWH4QKGQEGSMVZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CC123E1F4
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 21:17:24 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 33sf4001537otd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 12:17:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596741443; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOn8ubVpPDv4N5uJrF7Cxrn0pqCS9HHtwoJDW2Xxs9DemqFJIapl0NRjhkQGxifC+/
         Pmk1+X3EUfmtn+wNZl5yCTN1jPIFBOTJNsVPwMnD+bLPBZKUeCwh3aUtXcPdXagSj+ne
         X0XmR74ZTNdDptBJ6Cz4QN/qgItmLrK8xsSeeaF4wYZZWy9vzfl0ZNEcpwD0MlewPmE/
         qGg2xP6zgfpLhavheueL1yw2nqXts/wYQXXE+N6iTdJ+5CIIvnsUstJ9pqZl58N+qqzj
         wpQXnW9X/mCxtPRKiID/IdDu1YQTRM65PX/cI32s6NPlFB4Upk/tr0Am5b/iDWZGPvIW
         NRsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=LjP6Sk9c0FDFA4yCteHM4rex7O3i44o7XkBnkTW2tT8=;
        b=SlvS5cvHp9/D1SVbuujifMwW9zQAmK1lj2rwn63v69w3aasWaEf+gZMFWFv+1t0M+i
         oaplYIxTRrW3AhhFpcXAe0GUFOkR9mUhwZPpqrKcdeZv7yTUR31M0JsmqdY1XYdyxYHD
         DqPNHsPIyyr+Mlt9PbtsoPkj2olPicMI8hCMT9+ZvcNw+QiZ+dd1WEjNSXLqzznUanNV
         ab0tK0EAZxJEfl8Hf4BbwAFfHZm/wJW7M/gE9bCQ47tw+HdJsBNMVYAXUm7QIR/mCVhe
         f9Ac+ypgHQwGerhElM1oqxxIJes9XClPOQy7QYzxAwOU3CdSmRYC4tbjx9o6QoyFXVIR
         8sDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DFW9zqFU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LjP6Sk9c0FDFA4yCteHM4rex7O3i44o7XkBnkTW2tT8=;
        b=SH9kAM12Vrk2iBfuVxtbRkpc1zcRKxLjnldieR5NIDhUhIYh5iOz6SLhDaVjGy2/41
         y+CCX9qKVD2XtnlA6mQqxSdELzAJmx/Lv2z4vXw+dCn13TIirC2CnlFsSi4LIUq0jJsF
         8IfQava/pjnhhRUGHI9N6BtA0U3EsR3gfckI26BikONyznXVLYIe4ZZo/dX4FwwfJGhF
         U+dI4NokLdfM6x9UtxVoi7ExhueuFTjdXcIMldf7IJHXMYHMQeaJ6oqTZxqHpAJkGDYk
         6wqGX83y0xRf9EdLRxA5aaAaXW7U25lA6KyPgvz+LXLjZmNl5Rxd1XvkVCrOBVKK7Lnu
         ilYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LjP6Sk9c0FDFA4yCteHM4rex7O3i44o7XkBnkTW2tT8=;
        b=p/CTndf0ifPM18Oxvk/Avvh6PurgdZnlgmcZLStcKm4Rto6tu0Z/Wm5jnZg71ue6fb
         Xx1HZnhXS5KmsWl5jGsPlti3ywkV7aK2lAPaWEgZmRcXfEthxANY5GSc1PCvmHH09O6R
         RbJbEZ2b2S4+VSg2LhTmKji2Z4/NCrCtv7gc5FTP0X9VtUfIHOTSZRRGbp1CfXiX96i+
         6/YnPvPJ5C6q9NDeJuC9eu3MC2oF6+daqylNj7yXNQ18thr48ewdcwVyvGfOFPl18dMX
         1qEv5Xk843oH9NF8hmUc1g8q0x54dg//K2ELuMxsqbRIINGpgw7CercuTEx+uC1IiUs/
         7odQ==
X-Gm-Message-State: AOAM531Bj8wJd76li/AE0aggoJTN5d3X5eg4HOnW9XVsozlF0TLI7A5/
	omMaPD5KjHb3JfBlkdSnLsM=
X-Google-Smtp-Source: ABdhPJzTSe3KpVQEALb1Z0Vfw9glyyeFpt582HojxEQDlf0flRbuo8YSZr09OTv7kRynPkPP+4iz9Q==
X-Received: by 2002:a4a:9fd1:: with SMTP id b17mr9156545oom.29.1596741442930;
        Thu, 06 Aug 2020 12:17:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls1613278otg.9.gmail; Thu,
 06 Aug 2020 12:17:22 -0700 (PDT)
X-Received: by 2002:a9d:7f89:: with SMTP id t9mr8809170otp.278.1596741442333;
        Thu, 06 Aug 2020 12:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596741442; cv=none;
        d=google.com; s=arc-20160816;
        b=zilfKWIUXQigkN9NFZfsQb81yZef582X+eUfjpUZ0lz4oZMaEv48YgPI4V/mo8UTWb
         q325QKab8naTouKoIMzj4qjBui4KyvAdni0rEhQ82zdyhYZLrRlIyAhoIY0fQAafXMvZ
         1Uom5zyOcFKeS6oVfYD4+K/Bzt8iPL4gj8t0CQFwUKIsgInTkCAvt9xiR1gGt2Mfgnrl
         zZGbh3RiW2ba37QRU8+IxZnJo9h27JSYD4fAXJ+ZLcZgpNt56T8Uz+D9r8pJ7bchDeId
         1Brr5OY6qsZBeEbv+iwm4wPn4hjkb+T7ieJWQ6+boV1jCrA3Yum9G0V6i5Qcq6Z6+3sO
         L0dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UGw36nAvKdWXoAUWiTJPP1buT7PpTyoMWVcd5KcuaEY=;
        b=YW1+Q8ewoiFzUy+2oScJp+7pwuOqmkWcJbB+C4KQUS2C0Us2FYuCknkkosbkcXwQPI
         A9/n7m1lKK9cA8GnWGA9guG8AYqULPPGcWkYn8RxdBtLQQzcVOzVx7z4A0sSK8iZnWvj
         X6llmoGxPVYD0PWgetTjquplKvkRLLu0sm2qq7bjLr9UNP6jSWswCaGYfoO0Or9Xn+tZ
         N+1T5hJuoSQTOW0CWAFDM8fKl64HEl78CY7C+Ei6CnrjwIsJfAPMxjeXOd1HJHc6EBfc
         CUkGJ9ppBFC2T299cjIalvFwKpD6VH802uBVkoCRdCEA9l9kRQWpCUGaOuxoR8fUks9w
         zLDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DFW9zqFU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c142si338883oig.2.2020.08.06.12.17.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 12:17:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x6so12278974pgx.12
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 12:17:22 -0700 (PDT)
X-Received: by 2002:a63:cc49:: with SMTP id q9mr8350589pgi.390.1596741441391;
        Thu, 06 Aug 2020 12:17:21 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id d5sm7709517pju.15.2020.08.06.12.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2020 12:17:20 -0700 (PDT)
Date: Thu, 6 Aug 2020 12:17:14 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Zhenyu Ye <yezhenyu2@huawei.com>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated
 assembler
Message-ID: <20200806191714.GA1980587@google.com>
References: <20200805181920.4013059-1-samitolvanen@google.com>
 <20200806120109.GD23785@gaia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200806120109.GD23785@gaia>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DFW9zqFU;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Aug 06, 2020 at 01:01:09PM +0100, Catalin Marinas wrote:
> On Wed, Aug 05, 2020 at 11:19:20AM -0700, Sami Tolvanen wrote:
> > diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> > index d493174415db..66c2aab5e9cb 100644
> > --- a/arch/arm64/include/asm/tlbflush.h
> > +++ b/arch/arm64/include/asm/tlbflush.h
> > @@ -16,6 +16,16 @@
> >  #include <asm/cputype.h>
> >  #include <asm/mmu.h>
> >  
> > +/*
> > + * Enable ARMv8.4-TLBI instructions with ARM64_TLB_RANGE. Note that binutils
> > + * doesn't support .arch_extension tlb-rmi, so use .arch armv8.4-a instead.
> > + */
> > +#ifdef CONFIG_ARM64_TLB_RANGE
> > +#define __TLBI_PREAMBLE	".arch armv8.4-a\n"
> > +#else
> > +#define __TLBI_PREAMBLE
> > +#endif
> > +
> >  /*
> >   * Raw TLBI operations.
> >   *
> > @@ -28,14 +38,16 @@
> >   * not. The macros handles invoking the asm with or without the
> >   * register argument as appropriate.
> >   */
> > -#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
> > +#define __TLBI_0(op, arg) asm (__TLBI_PREAMBLE				       \
> > +			       "tlbi " #op "\n"				       \
> >  		   ALTERNATIVE("nop\n			nop",		       \
> >  			       "dsb ish\n		tlbi " #op,	       \
> >  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
> >  			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
> >  			    : : )
> >  
> > -#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
> > +#define __TLBI_1(op, arg) asm (__TLBI_PREAMBLE				       \
> > +			       "tlbi " #op ", %0\n"			       \
> >  		   ALTERNATIVE("nop\n			nop",		       \
> >  			       "dsb ish\n		tlbi " #op ", %0",     \
> >  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
> 
> A potential problem here is that for gas (not sure about the integrated
> assembler), .arch overrides any other .arch. So if we end up with two
> preambles included in the same generated .S files in the future, it will
> lead to some random behaviour.
> 
> Does the LLVM integrated assembler have the same behaviour on .arch
> overriding a prior .arch?

I would assume so, but each inline assembly block is independent in
LLVM, so unless there are .arch changes within the block, that shouldn't
be an issue for the integrated assembler.

> Maybe a better solution is for all inline asm on arm64 to have a
> standard preamble which is the maximum supported architecture version.
> We can add individual .arch_extension as those are not overriding.

Sure, that works. How would you feel about something like this, so we can
keep the preamble in sync with future -Wa,-march changes? I'm not sure if
asm/compiler.h is the correct place for the definition though.

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 55bc8546d9c7..0dd07059beaa 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -82,8 +82,8 @@ endif
 # compiler to generate them and consequently to break the single image contract
 # we pass it only to the assembler. This option is utilized only in case of non
 # integrated assemblers.
-ifneq ($(CONFIG_AS_HAS_ARMV8_4), y)
-branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
+ifeq ($(CONFIG_AS_HAS_PAC), y)
+asm-arch := armv8.3-a
 endif
 endif
 
@@ -91,7 +91,12 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)
 
 ifeq ($(CONFIG_AS_HAS_ARMV8_4), y)
 # make sure to pass the newest target architecture to -march.
-KBUILD_CFLAGS	+= -Wa,-march=armv8.4-a
+asm-arch := armv8.4-a
+endif
+
+ifdef asm-arch
+KBUILD_CFLAGS	+= -Wa,-march=$(asm-arch) \
+		   -DARM64_ASM_ARCH='"$(asm-arch)"'
 endif
 
 ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
index 51a7ce87cdfe..6fb2e6bcc392 100644
--- a/arch/arm64/include/asm/compiler.h
+++ b/arch/arm64/include/asm/compiler.h
@@ -2,6 +2,12 @@
 #ifndef __ASM_COMPILER_H
 #define __ASM_COMPILER_H
 
+#ifdef ARM64_ASM_ARCH
+#define ARM64_ASM_PREAMBLE ".arch " ARM64_ASM_ARCH "\n"
+#else
+#define ARM64_ASM_PREAMBLE
+#endif
+
 /*
  * The EL0/EL1 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index d493174415db..cc3f5a33ff9c 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -28,14 +28,16 @@
  * not. The macros handles invoking the asm with or without the
  * register argument as appropriate.
  */
-#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
+#define __TLBI_0(op, arg) asm (ARM64_ASM_PREAMBLE			       \
+			       "tlbi " #op "\n"				       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op,	       \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
 			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
 			    : : )
 
-#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
+#define __TLBI_1(op, arg) asm (ARM64_ASM_PREAMBLE			       \
+			       "tlbi " #op ", %0\n"			       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op ", %0",     \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806191714.GA1980587%40google.com.

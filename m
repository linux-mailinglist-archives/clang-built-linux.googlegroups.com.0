Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYG5ZH3QKGQEZR33WJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id F21D1206130
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 23:06:41 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id v63sf2235238pfb.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 14:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592946400; cv=pass;
        d=google.com; s=arc-20160816;
        b=nb6sDraQq9TpXXKDSDpHXM13IRB58Z1/dIJkY7mLORFxCAxp8OZ69eLQi/+8XPM91v
         +VgARcPBeScIpVxLoZeQmHRUEQl1IKR4GUNZBxZ6i+JDj/3yCr1BLatvtGE92rRSXB+C
         d7gRjdiMsiffsX8IEbM84c7MsK0H7Nx5W2DPNMLllmhw0wZRzKwq0a7E6VDjpqdL9Qid
         WHUnyaJaRoYKeeUXWhOM/EaBjzWc/x8qR/C2j5r6WdRTYzaLBUhfwk7dbQMTQDDDDo+9
         iRnMd8gIRdR/KYExT4Ph39oGxuMiyQURvWgQPBraQ7jPJspUoy2GGcJoN6aDruH1nb8E
         MD2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7Bud3i39Z13gB1QezsZ3rl/9AEXawJ5qyLUnvRbWINo=;
        b=SCuRuBpe39/zqcaU+zb8RKB9xJkFM4Po/V7OCYLCFf1F6BZAyIbj6e+cExYJuhocUn
         oLvWXu0n5iHdMN4I0RAjmfs6GZA7f/ILg4zV8Hnx67zmcC3JvGhz5mi0+Hoy7LYSSVsO
         Elt/7O2phm8khtftUMMN+vpkXR1x70F6A+yq6ZagF2W8iAmKLUK8lYNfD+t3C1PCjNs3
         DpdsPX4J7glStJfYw5I4gJo/yIohpardvIx4gbq6MaJxZmLD0iE3VQdVfjCBQzT1FhR/
         nW/r6JRstPU2r621CPJe+nRh5oIVisG+LJNr3qHzjLdCxW0iPkJ0b0WMLgxH3PfFB9Li
         PeYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j78DWRbT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Bud3i39Z13gB1QezsZ3rl/9AEXawJ5qyLUnvRbWINo=;
        b=RPeYLfsSRHwNeCMyCc5aeN2KZBNWTyhABicGAznUJo+raozu4QTHMifJlKH4eO+bPh
         KbiVg2o0O4HUaMuSF3u86vU0tcC8WumNIZBhPw423vigBmM39yNFpOrnxtLII0XitmQR
         gFp2qgDYbKF3J8djOFLxj/nhnl8pcxOOl/JsjozBeSOoqzCW7pZCD/ZRTFFt7lYni/F4
         ju5yqRH1WNhXEBAETQVRYsQmggj4Lf6wC+1tjjyxZ8/9Vo7opObMn/mtJ6T4XWuZrfHK
         R381iRXL1hEl3LvnwE1AlAm0HyYTzfcsN6obqOOf44rO8row09tHU2RW5MrGcLz0qGUp
         oCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Bud3i39Z13gB1QezsZ3rl/9AEXawJ5qyLUnvRbWINo=;
        b=Z1hRwQJk6T32p2zjRNJFULWlcCDwzS4ov7hNKZIMC1gP+lv8w8pwfgEe7Caigor/8+
         dqqzCx+YEaWffyUhzD0ZbaSAo91Pv9DWupVMeq4hmPu1R8AE4Wq8mFWga48RB35qQOZH
         0IiLjFA0DHY/EqPzFbBcr+9B4o1fMk2iGm7NVIuaJvP/6tZdAmUq2xWwZvL7SyvRqNTQ
         uqSQof4Cx1ouExmmPnXJ3S/NAyiX4UfuJ4MevFZy0Ooztnz61O5YubbDITuoqCoGlJv9
         QBlsPYNEpZl1nILFVclHVeSL9KqtcY6oeuEkdbEk0bckHw9jBTBIDK++S1pJBkgfO8Cj
         mKNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aPERXJ5PPJ5BsGiJZRRNnHDuLmpzHmkk57rFv0zAUPZcVk23h
	AdI8o1xq4SGKAzsNuEgadZY=
X-Google-Smtp-Source: ABdhPJyteKZ68TDxOlF4tsBUDqLnKcw3S9w6hN0m07pKyb1QRp1KWeJOhzttsGUaq20f4EhcZCRHxw==
X-Received: by 2002:a63:d74c:: with SMTP id w12mr6717501pgi.260.1592946400642;
        Tue, 23 Jun 2020 14:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5982:: with SMTP id p2ls28974pli.4.gmail; Tue, 23
 Jun 2020 14:06:40 -0700 (PDT)
X-Received: by 2002:a17:902:fe02:: with SMTP id g2mr24611671plj.204.1592946400223;
        Tue, 23 Jun 2020 14:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592946400; cv=none;
        d=google.com; s=arc-20160816;
        b=wEcSZDtnnEdyu5GBMN4L/3X72VwqB+LxeO0MkA9V8qXKBITvKNrhw1CxRroTKjXUOr
         HTOzcbbc/JHA3kLv/KTJeeF0iuSjsTTNaDGjwMelHJnvFIR6OdIGWWBnvXBPL5PvOpPC
         qkmKgoh/QJbr1IT+3jFH7v0o7w3DVDNiCH5ONEF9/jDsfP67tOo2nV2E008tzVMrdMo/
         /WTU6iVmIIQJBW7cXTbJ5lM6Qi+BhZfCBtQhe4k5lmMQziorUbyfTf2xlF71p1qpF0Vy
         2vpcRRQ3Pp+R7MDV4vj3oQpLD3yBiRQBdrCZ7xbkfP2bJFKGXDj7NkeyeD/Qy0AUh8cb
         Ghvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZBL2aRcchnq3anZZCmM/n3YdrJxQ1yPcC64pjaJoEnQ=;
        b=KyVu6XuWoD+ZWPmJMekqrk/02WX5QeXUYW6pjUVdJYffMokqKP/IdnE8nI5vbTZhea
         BHjSmel4QswoGE6C+wmfG732f1idpX581z99rTX1quJbAQ4X655JFER4vnjxo6OaTg5z
         Hn/ts3FP4HThqwgciz2dzNNwwrQfgrLc8OkHTTNpHSkuC6lwH0O/G6uRWWH1HN7QAQkN
         ZaL6VkgKQnxUpmBm06VaBREWbGZw+xGc/5niGvE87txQWiDsHePakcGJ8WGhSdhxC45C
         9qhbUb/8zDi6S+GkGUrBqXd+Vr5xxQu/cJELP9Tb01ZtQuaZxG+uuiHu9KaUX4kIV6aP
         oAqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j78DWRbT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y19si517845pga.4.2020.06.23.14.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 14:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id h10so139133pgq.10
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 14:06:40 -0700 (PDT)
X-Received: by 2002:a63:9347:: with SMTP id w7mr18414729pgm.409.1592946399794;
        Tue, 23 Jun 2020 14:06:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g17sm3167286pju.11.2020.06.23.14.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 14:06:39 -0700 (PDT)
Date: Tue, 23 Jun 2020 14:06:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
Message-ID: <202006231208.F3DA600E18@keescook>
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org>
 <20200623145218.GC4336@willie-the-truck>
 <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j78DWRbT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Tue, Jun 23, 2020 at 04:59:39PM +0200, Ard Biesheuvel wrote:
> On Tue, 23 Jun 2020 at 16:52, Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> > > We don't want to depend on the linker's orphan section placement
> > > heuristics as these can vary between linkers, and may change between
> > > versions. All sections need to be explicitly named in the linker
> > > script.
> > >
> > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > to discard as it seems that these are still generated even though
> > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > to the image as it does appear to be mapped near .data. Finally enable
> > > orphan section warnings.
> >
> > Can you elaborate a bit on what .got.plt is being used for, please? I
> > wonder if there's an interaction with an erratum workaround in the linker
> > or something.
> >
> 
> .got.plt is not used at all, but it has three magic entries at the
> start that the dynamic linker uses for lazy dispatch, so it turns up
> as a non-empty section of 0x18 bytes.

Is there a way to suppress the generation? I haven't found a way, so I'd
left it as-is.

> We should be able to discard it afaict, but given that it does not
> actually take up any space, it doesn't really matter either way.

I will add it to the discards then.

> > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > index a0d94d063fa8..3e628983445a 100644
> > > --- a/arch/arm64/Makefile
> > > +++ b/arch/arm64/Makefile
> > > @@ -29,6 +29,10 @@ LDFLAGS_vmlinux    += --fix-cortex-a53-843419
> > >    endif
> > >  endif
> > >
> > > +# We never want expected sections to be placed heuristically by the
> > > +# linker. All sections should be explicitly named in the linker script.
> > > +LDFLAGS_vmlinux += --orphan-handling=warn
> > > +
> > >  ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
> > >    ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> > >  $(warning LSE atomics not supported by binutils)
> > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > index 5427f502c3a6..c9ecb3b2007d 100644
> > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > @@ -94,7 +94,8 @@ SECTIONS
> > >       /DISCARD/ : {
> > >               *(.interp .dynamic)
> > >               *(.dynsym .dynstr .hash .gnu.hash)
> > > -             *(.eh_frame)
> > > +             *(.plt) *(.data.rel.ro)
> > > +             *(.eh_frame) *(.init.eh_frame)
> >
> > Do we need to include .eh_frame_hdr here too?
> 
> It would be better to build with -fno-unwind-tables, in which case
> these sections should not even exist.

Nothing seems to help with the .eh_frame issue
(even with -fno-asynchronous-unwind-tables and -fno-unwind-tables):

$ aarch64-linux-gnu-gcc -Wp,-MMD,arch/arm64/kernel/.smccc-call.o.d \
  -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/9/include \
  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include \
  -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi \
  -I./include/uapi -I./include/generated/uapi -include \
  ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian \
  -DCC_USING_PATCHABLE_FUNCTION_ENTRY -DKASAN_SHADOW_SCALE_SHIFT=3 \
  -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -fno-asynchronous-unwind-tables \
  -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=3 -Wa,-gdwarf-2 -c -o \
  arch/arm64/kernel/smccc-call.o arch/arm64/kernel/smccc-call.S

$ readelf -S arch/arm64/kernel/smccc-call.o | grep eh_frame
  [17] .eh_frame         PROGBITS         0000000000000000  000001f0
  [18] .rela.eh_frame    RELA             0000000000000000  00000618

> > >       }
> > >
> > >       . = KIMAGE_VADDR + TEXT_OFFSET;
> > > @@ -209,6 +210,7 @@ SECTIONS
> > >       _data = .;
> > >       _sdata = .;
> > >       RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
> > > +     .got.plt : ALIGN(8) { *(.got.plt) }
> > >
> > >       /*
> > >        * Data written with the MMU off but read with the MMU on requires
> > > @@ -244,6 +246,7 @@ SECTIONS
> > >       _end = .;
> > >
> > >       STABS_DEBUG
> > > +     DWARF_DEBUG
> >
> > I know you didn't add it, but do we _really_ care about stabs debug? Who
> > generates that for arm64?

It's also where .comment and the .symtab ends up living. As a result,
I think it's correct to keep it. (If we wanted to split .stabs from
.comment/.symtab, we could do that, but I'd kind of like to avoid it for
this series, as it feels kind of unrelated.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006231208.F3DA600E18%40keescook.

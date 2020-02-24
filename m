Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD752DZAKGQEXKIKLFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE116B21B
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:22:25 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id w205sf4884928oie.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:22:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582579344; cv=pass;
        d=google.com; s=arc-20160816;
        b=nFBhO2Iy/vgp2apI2ZSg/HiiGe45wH3CCcCBHXQbtanJ6hEqAhXDFfNK0a/h4Yg6f7
         E83TWrLddFvz2vvDV3gHFDoFxGLYmZkPol+xTyVo/d2kyHxMLg4mJo0NzrFECVTnMcVE
         2QtoTCChw5si/H1kYawhZh/YQ3iZPyLEVeYiYNzkPl47jj4j/cUcjsLd6Np4oDkawELF
         KgbxJDvhhiovYozvfggIfCoAsDJYckaXM5qK8ZgqLLMlYSGlP4eHxHpgAiAY40BQy7R2
         NAeV4YWoFpUdIH2nvZoIGPxEExEO+wQat68zNDQNX9GbJ8k1LOBISZdOqNrGnDSLEleR
         rqtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/i8WJV8xhmoF5lIDVV0P9xRmP9VHh1BUbCpO2OaEMW8=;
        b=v7/VMt3CNyuoV6XBz/zWZybq5En2DFYwo4vcgbmC9BVI7GmYk7k5X9jwAjQSlsdveb
         5rOTZs+H7to7bjGTc67FNc0drQWEBkSIyZ1ReUFatAgGNt/yjsJ9+5z0iciSan/p9KGJ
         bFAiECa5HM8hlZN4/Rx65tR6y/vVLfyHbmb0WohTyhSnRObgfXHl/at69JjY3puiT3gx
         wxDoPf7wsVMubYdZzzoqZi1wiD9lfDrrGckbZT8xkiucdta7D6wVrmR7M7svfRb5sftd
         INOWos20vEXvm7o0JPCcs6z4kC5zQ1Y6RIdNr+4gvdKKr2DpoX6+FM/VV9zU8lx8e/4r
         DTZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JeKTqq/I";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i8WJV8xhmoF5lIDVV0P9xRmP9VHh1BUbCpO2OaEMW8=;
        b=syNwUHs1ybcYg1PqLBQReBNEz6AuUZbd/B4CKfEtbIFv9taQxrnSMfhj56KD7DZg6P
         q+T95jZhh4t6zDZhveYVHKmdiZ49eWONVZwyenfkHl6EF9bSVoj9QHzSSRAGy0pILh2m
         aaTMvf1RFj4AHSw0NfIDiYL/MXZzqgoWXQBYwhqMoqPnK0yVmNu6AS6q3Cea+54FS+Vu
         D9KLxqneuWDrYVMG1wVQDq+I8kQhSdL2yL8sm9ib9jJ1k0Ke7JEt56AtKNz1jCvtPnP4
         bll+Tt27Ss8pG4v5Sw2WIY8Xl8PG59h0xnNPwOBwhTye7X0Yr8bORscbrhefr9WG/UXZ
         7Tgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i8WJV8xhmoF5lIDVV0P9xRmP9VHh1BUbCpO2OaEMW8=;
        b=mxMyXzksINjX98CfjthmOPnCGwKfP4RIo+fzKo7eBH22PgzjunnX3xyQDwQSsUyN5Y
         gSWUZmLaV3v08iy5Km2ybbZ0vDz7NJd5UU4NkINF+ffS9xzYuPlvMwocNR28vaKk4Tgv
         wxKNU9jr6K9m5a+CUG2uacGnzRYT7PQm/m/pOxR+spnZTeBXcxarA8tv3Z28ftveybP8
         XP1R60ace/AF9J/4nuC7JW+v4bjv3zkBfAVYUBCNrilrm1yadQkjlgZQmIzQ2FKOPVkR
         l1VtI8SvptMsGvfVkK2CQV7R50S6B8K1J7z5uBPG4YgvDlWhlEmebVsYEkimwVj0tiFa
         35uw==
X-Gm-Message-State: APjAAAWP8ucMcRAGGe07AuQq545BTq2oEUWKQA6eNK9VkLiJDtx/n6/c
	jALPaCzboPOrktRpYotZuyE=
X-Google-Smtp-Source: APXvYqwpq9ZK0JihS/EKEcVXKGz4jJ8UK9jiiEa16Qj1LsLVB+iDAyCjcMeMgUe8jsYGP0O3x3WKRg==
X-Received: by 2002:a05:6830:1447:: with SMTP id w7mr7166149otp.368.1582579343111;
        Mon, 24 Feb 2020 13:22:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a96:: with SMTP id i22ls3330042otf.9.gmail; Mon, 24 Feb
 2020 13:22:22 -0800 (PST)
X-Received: by 2002:a9d:1706:: with SMTP id i6mr44165191ota.151.1582579342776;
        Mon, 24 Feb 2020 13:22:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582579342; cv=none;
        d=google.com; s=arc-20160816;
        b=cQ7dsJNbgNnmHGRplisvs/pBeNnAzCbAHthAxZhh/7er3wslkKpOVpS9StRu2S4EbJ
         BOJ95mdfijrNc8TsKWwOBsJPZsnptaLxYC8iiOgs4NAc+oxCkug6QkS7QsejGgl7FYNM
         fdW6uJGMK/SKzMqAwHbRyXL4rI4aDCy5EZ07GNs4TGOTFh0XfjX4Xr8RYT6AWQj4WQrS
         4S7CsmUrGqm39gsPPhVP6uQEanzX0yF+nxUgwK9bGSTvcMKyyFnReUk1mv7c2icVlicn
         1QbPAOq4LOdmab9KPc43N21rUsd4S/kxTyftPjBHLvmDIkl2bj4yOG/sdDLVpP94V2Iz
         KjoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bH6EploGU3w+XX+y+9X71Wyht2oE1L8WWitTABuRGD4=;
        b=bbavoVp5i34AZ6kFBa8OJqGU2KTxUqZmtWoFfZTfF+4QILP32tblOyIaWmV7BZydQd
         WUDuDFXx0gZvqmAgepsbPa7VyDAN/gUR9iM34xyJ+O/oAw6RbIAbsa3fDRHIgZ35Pcit
         1AbL1incSpO9sKqdTYadM7zz6mpaFpvLcpu+NFkMF0Gy/WoQjwCE9UOCAfbBCLcZDQkA
         8XY7kUe+f4ZBZsu4pwgv3GME408842H1lNv7/xLUPgmhvoYMMVSAXrCSzfmK9YhuxY+m
         /1gmdmzqkL+8VK45XEGCeob7Ah5tCz+mgCdzrt471WuQM7uoEXyMpkWaWgwwGdVuui1a
         YGwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JeKTqq/I";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j15si697585oii.3.2020.02.24.13.22.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:22:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id k29so5979980pfp.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:22:22 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr53845033pfa.165.1582579341630;
 Mon, 24 Feb 2020 13:22:21 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-2-nivedita@alum.mit.edu>
 <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
 <20200224210522.GA409112@rani.riverdale.lan> <20200224211209.3snqf7atf5h4ywcr@google.com>
 <CAKwvOd=4YAj1yzncXeyDvw4ghuPCHNYU0NMGnYEDwKNozcm-uw@mail.gmail.com>
In-Reply-To: <CAKwvOd=4YAj1yzncXeyDvw4ghuPCHNYU0NMGnYEDwKNozcm-uw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 13:22:10 -0800
Message-ID: <CAKwvOdkoy_oaZP1fxybJu23f+V0fyrESzFO63UZenUDy+5290A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JeKTqq/I";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Feb 24, 2020 at 1:17 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Feb 24, 2020 at 1:12 PM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2020-02-24, Arvind Sankar wrote:
> > >On Mon, Feb 24, 2020 at 12:33:49PM -0800, Nick Desaulniers wrote:
> > >> On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >> >
> > >> > While discussing a patch to discard .eh_frame from the compressed
> > >> > vmlinux using the linker script, Fangrui Song pointed out [1] that these
> > >> > sections shouldn't exist in the first place because arch/x86/Makefile
> > >> > uses -fno-asynchronous-unwind-tables.
> > >>
> > >> Another benefit is that -fno-asynchronous-unwind-tables may help
> > >> reduce the size of .text!
> > >> https://stackoverflow.com/a/26302715/1027966
> > >
> > >Hm I don't see any change in .text size.
> > >> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > >> > index 98a81576213d..a1140c4ee478 100644
> > >> > --- a/drivers/firmware/efi/libstub/Makefile
> > >> > +++ b/drivers/firmware/efi/libstub/Makefile
> > >> > @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ -O2 \
> > >> >                                    -mno-mmx -mno-sse -fshort-wchar \
> > >> >                                    -Wno-pointer-sign \
> > >> >                                    $(call cc-disable-warning, address-of-packed-member) \
> > >> > -                                  $(call cc-disable-warning, gnu)
> > >> > +                                  $(call cc-disable-warning, gnu) \
> > >> > +                                  -fno-asynchronous-unwind-tables
> > >>
> > >> I think we want to add this flag a little lower, line 27 has:
> > >>
> > >> KBUILD_CFLAGS     := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
> > >>
> > >> so the `cflags-y` variable you modify in this hunk will only set
> > >> -fno-asynchronous-unwind-tables for CONFIG_X86, which I don't think is
> > >> intentional.  Though when I run
> > >
> > >It is intentional -- the other case is that we're building for ARM,
> > >which only filters out the regular KBUILD_CFLAGS, so adding the flag for
> > >it should not be necessary. The cflags for ARM are constructed by
> > >manipulating KBUILD_CFLAGS. Besides it may or may not want unwind
> > >tables. 32-bit ARM appears to have an option to enable -funwind-tables.
>
> Ah, right the `subst` from `KBUILD_CFLAGS`.
> Are there other architectures that care about EFI beyond x86 and ARM? IA64?

Looks like while IA64 supports CONFIG_EFI, it doesn't support
CONFIG_EFI_STUB, which controls whether drivers/firmware/efi/libstub/
gets built or not. So that patch should be good to go.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> >
> > clang (as of today) has not implemented the
> > -funwind-tables/-fasynchronous-unwind-tables distinction as GCC does..
> > (probably because not many people care..)
>
> Ah, thanks for the clarification.
>
> >
> > >>
> > >> $ llvm-readelf -S drivers/firmware/efi/libstub/lib.a | grep eh_frame
> > >>
> > >> after doing an x86_64 defconfig, I don't get any hits. Do you observe
> > >> .eh_frame sections on any of these objects in this dir? (I'm fine
> > >> adding it to be safe, but I'm curious why I'm not seeing any
> > >> .eh_frame)
> > >>
> > >
> > >You mean before this patch, right? I see hits on every .o file in there
> > >(compiling with gcc 9.2.0).
> > >
> > >> >
> > >> >  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
> > >> >  # disable the stackleak plugin
> > >> > --
> > >> > 2.24.1
> > >> >
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoy_oaZP1fxybJu23f%2BV0fyrESzFO63UZenUDy%2B5290A%40mail.gmail.com.

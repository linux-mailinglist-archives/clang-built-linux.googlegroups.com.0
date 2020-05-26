Return-Path: <clang-built-linux+bncBCS7XUWOUULBBNWJWH3AKGQEREYSILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F32791E1880
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 02:37:12 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id w24sf10986513pfq.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 17:37:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590453431; cv=pass;
        d=google.com; s=arc-20160816;
        b=ivOwEnOxUXML7V2GXiQVo2Iwn8JEZ9dxhSCYCKK/mUIhZtGrXAajt0CSgm6D2b1Pvg
         D9gWXnviLtID5dmG7pG/KQPjQGKmJQE2V9IpD8rFaYG4FNoaOeGS66cwoVTlgeCVtNqr
         z1OMaD94yLXZAn/b3Ij9C3TaonzdwFCA3OOmw5dFDTBzh7GduQU/sKqKOz4uuR3Diybt
         tNPxt0wlPa7IsX7oKxKhK8TcyoQTLl+ys+n5uPS3X8DYHy/D0NlgKbV00CLO5nXvqD1W
         SYpZFPkOFlUjC3dN4RG7hkhOBz2zqMuiAoXUW+2EekCuNJ3j5G4arfon7J+QKFQkJmbz
         Rsbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2N6wU1bTjsMq48cIiOuBKbAzXiP1eNruI/Ku00heI1w=;
        b=EwreM38qCAs38lNBuFhviAUQ4MJtsH2QNjVmUdJgnsbZr6tPSG4Mwb8y4UoxDm3KGG
         JkULGQTWtpkcAKoDtzpZ7FF3ubxpQGQa+5xcA3GR4oj6cOz4OYx4epi1ujcgnLKs+yta
         BitO6CA1OZD0HDFT0bnEFEp9wrowSSJh/mq2jd8OR4o71Efrc7qIkDbr1IaQkv2C+oRr
         ENxaiaYGKFJRtb4/hXZXTZ6tjH/H7r+mdrvP3yUFvGbdegLlWdGBNmZTO0a4Sv//p/hq
         jG+LR9bw04rDB4ycU4se1FAHxyBp5+X1DRgujYxuZGmeiE4X0RV774SLwC3w4fkNt4R6
         sWhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hiBEnNOr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2N6wU1bTjsMq48cIiOuBKbAzXiP1eNruI/Ku00heI1w=;
        b=P8fC0o7kebwzH4yjSRk3EMAXeSkL6Wcoxqrv7AzkOKNoc5kc9ia7z+K20tErO5fErN
         wfYxRfojUksZaWijCf5tL7olswp7505A2DJ5lP07bSMUCBF8elXeu2ymTJG2PsorML6r
         1FbTqbR7aXcE0pKUA9FjWvdc2IyT6SgNyFxTt02emjtLkz3jb9Gga377rBwdrjXT9jP3
         sC+HAl1sx10K83aQlKwCRqTPGX3D2JSQl4PElEYIoBDQscvTzw8eCFtiNf4XUHFfOyVo
         NSqaiZ4lGz62ZGd2GXcBLvqgH6zCnhhSUIIfn2NfR7Xu7bUiHMDboaVLHg89ewdOrwvB
         lTfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2N6wU1bTjsMq48cIiOuBKbAzXiP1eNruI/Ku00heI1w=;
        b=kudNJ/HC1GxN6SRsp5EOxT/RD9LxprnHIcwdW3cxSYOMGdbKzfa9DDhv4AUqgfgvjh
         vSYOOlofiwFFtXWjefGtXYpoiOQsgbyJARr+48zb5dFfAclKrdZXET1138dSnFhuVDvL
         xcBhW5XKbKr3twycyS+LvbguKRUbqfvsfMy8OYVX11FI0shw5x3lY2HJH4ZmNm8a7e3b
         ShTiZCR1+V4kuBDUYRVc6FB5gCXVErbAFM/DuyibiYHh94ATf1q/VaUMKZqgsRn53p9K
         moIjckasZKyAGAMXjbZyqNaYRkSJYXUTG9s+CnPiIDCfJPN7OYEFCQVszKbSNjzInT0K
         rRiA==
X-Gm-Message-State: AOAM530QIj/UbI69m7sLXpWgO/NbxOwnq9aPv155jdoMaMS73IPMWHfw
	g39ScVIzlrxBpRZ7Knw/7xc=
X-Google-Smtp-Source: ABdhPJx3xVLLDZwCbEaik4eoLDGcFeTEDQFDMC2sE8GMXHAeQCkobLkBrgM9fAvuNYD3UGS7hITGkw==
X-Received: by 2002:a17:90a:6f41:: with SMTP id d59mr10195032pjk.141.1590453431045;
        Mon, 25 May 2020 17:37:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:668c:: with SMTP id b12ls3106434pgw.10.gmail; Mon, 25
 May 2020 17:37:10 -0700 (PDT)
X-Received: by 2002:a63:4c0b:: with SMTP id z11mr25861862pga.348.1590453430668;
        Mon, 25 May 2020 17:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590453430; cv=none;
        d=google.com; s=arc-20160816;
        b=xhGsDLOSSv7j1bfQD6H8S/XYKJCxjsqMVfEvWdqcYbSA1NViMqaf9HPgncHzusH+wg
         MaoUs4wZHlJYqlaktteQExRjsZuONBXTDRlK7yUabiWIojNI++y0ucsJosTeQ67T0rpf
         melKCP9za7yRQeIB75zwbN853N2E4qBBtwt+EX9aMXGtKUeOFX0gsQwOeE08rYA03j4J
         tPAEBRGjM+kRtDTnEg4AiB7ZqRnbRGjpCwg0v5vVJkK9cTO7dE3lBVb7mRujVnWyiWlG
         Bu6MybCXnZJFwrgWEchUHcTH5bLkF2c36cCHoIcIbUEGmsoVW63IUHWpLLp/u6ZE7Dv6
         5GYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e0QmqwRh8HAG2Vlx7bh9P7hF+0B2FhgdgqTRYD2VzoE=;
        b=JRxt+qDnjGMJ+doaWph0EWP+ja3YSV6o+vFYmakyfvf82r58xlu8aGRDWLbTfgXE5m
         oMusjsVuDamzkfjIox33ZbS2YLhsw79odF3kNIp33DdbVKlca3ryESy8HTDo8nC0f2Vt
         l6cvcyrYxwskxRZx9CV210NSoC0JliglzyjNUe9M111cVI1uU9rW+1BIgEQ+OFLe1/9C
         mass8LxlIxqlarHJdNbMj9Pn7vVb6PyB0kOB5IzaTKrRWuX1HoOqEnuNbmW+NZmqvSnc
         +RbCqLx3i2AHh4PFI900x3w4RckRDThRpjxNM4ai0Za+Rg9nhvXlpWQaUgWGuPxNG9pT
         7vlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hiBEnNOr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id e6si82156pgr.1.2020.05.25.17.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 17:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q24so499823pjd.1
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 17:37:10 -0700 (PDT)
X-Received: by 2002:a17:902:740b:: with SMTP id g11mr26469332pll.158.1590453429992;
        Mon, 25 May 2020 17:37:09 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e26sm12470490pgl.27.2020.05.25.17.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 17:37:09 -0700 (PDT)
Date: Mon, 25 May 2020 17:37:03 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] x86/boot: Remove runtime relocations from compressed
 kernel
Message-ID: <20200526003703.qr2yq6fgxpl6wcua@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hiBEnNOr;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
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

On 2020-05-24, Arvind Sankar wrote:
>The compressed kernel currently contains bogus runtime relocations in
>the startup code in head_{32,64}.S, which are generated by the linker,
>but must not actually be processed at runtime.
>
>This generates warnings when linking with the BFD linker, and errors
>with LLD, which defaults to erroring on runtime relocations in read-only
>sections. It also requires the -z noreloc-overflow hack for the 64-bit
>kernel, which prevents us from linking it as -pie on an older BFD linker
>(<= 2.26) or on LLD, because the locations that are to be apparently
>relocated are only 32-bits in size and so cannot normally have
>R_X86_64_RELATIVE relocations.
>
>This series aims to get rid of these relocations. It is based on
>efi/next (efi-changes-for-v5.8), where the latest patches touch the
>head code to eliminate the global offset table.
>
>The first patch is an independent fix for LLD, to avoid an orphan
>section in arch/x86/boot/setup.elf [0].
>
>The second patch gets rid of almost all the relocations. It uses
>standard PIC addressing technique for 32-bit, i.e. loading a register
>with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
>references to access variables. For 64-bit, there is 32-bit code that
>cannot use RIP-relative addressing, and also cannot use the 32-bit
>method, since GOTOFF references are 64-bit only. This is instead handled
>using a macro to replace a reference like gdt with (gdt-startup_32)
>instead. The assembler will generate a PC32 relocation entry, with
>addend set to (.-startup_32), and these will be replaced with constants
>at link time. This works as long as all the code using such references
>lives in the same section as startup_32, i.e. in .head.text.
>
>The third patch addresses a remaining issue with the BFD linker, which
>insists on generating runtime relocations for absolute symbols. We use
>z_input_len and z_output_len, defined in the generated piggy.S file, as
>symbols whose absolute "addresses" are actually the size of the
>compressed payload and the size of the decompressed kernel image
>respectively. LLD does not generate relocations for these two symbols,
>but the BFD linker does. To get around this, piggy.S is extended to also
>define two u32 variables (in .rodata) with the lengths, and the head
>code is modified to use those instead of the symbol addresses.
>
>An alternative way to handle z_input_len/z_output_len would be to just
>include piggy.S in head_{32,64}.S instead of as a separate object file,
>since the GNU assembler doesn't generate relocations for symbols set to
>constants.
>
>The last patch adds a check in the linker script to ensure that no
>runtime relocations get reintroduced. Since the GOT has been eliminated
>as well, the compressed kernel has no runtime relocations whatsoever any
>more.
>
>[0] https://lore.kernel.org/lkml/20200521152459.558081-1-nivedita@alum.mit.edu/
>
>Arvind Sankar (4):
>  x86/boot: Add .text.startup to setup.ld
>  x86/boot: Remove runtime relocations from .head.text code
>  x86/boot: Remove runtime relocations from head_{32,64}.S
>  x86/boot: Check that there are no runtime relocations
>
> arch/x86/boot/compressed/Makefile      | 36 +---------
> arch/x86/boot/compressed/head_32.S     | 59 +++++++--------
> arch/x86/boot/compressed/head_64.S     | 99 +++++++++++++++-----------
> arch/x86/boot/compressed/mkpiggy.c     |  6 ++
> arch/x86/boot/compressed/vmlinux.lds.S | 11 +++
> arch/x86/boot/setup.ld                 |  2 +-
> 6 files changed, 109 insertions(+), 104 deletions(-)
>
>-- 
>2.26.2

All 4 commits look good.

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526003703.qr2yq6fgxpl6wcua%40google.com.

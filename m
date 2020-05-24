Return-Path: <clang-built-linux+bncBCIO53XE7YHBBKPZVP3AKGQE6FLUXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 819DF1E03D0
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:00:58 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id o11sf18032953qti.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:00:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590361257; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+0wWoTOLJMeJ1VQIaJF7L+1oDLvaKDyPHzW1MSPLSC3L+CpfSYRqRbhnpBA7BN83v
         TlbuWcg3wxi69n0wIkCQpjrKRG5bapHnwsAY43o6w7tdc7c5vBbNcQWhkw9F0RBW6OiP
         ZMimuhCG5OlCaEcPUOlDXMy7ehG2kJsWvK29p8XmFL1tT1VCMaBWvPEw2JclWFBhqvCc
         DJo82CaYgoLHLwgkxRRlPE90y3MWsgTYQAWiR7SErGKmknCXAT1OQyQ///gzdb19QNMT
         ptyNPvBQe84SC2mlampbZmItSthwx24xLbb9yY0S30UzhXr8vjGmo48g8xKrSakkmudU
         /ZgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=iVvOaHXWrDWAsBeb9ShtOOW/ukxaGMWFkX7SpmSsm8c=;
        b=b76SYtfQszOPlduo9xLKtxK5U9gGG4wMEnqbA1yq+Vbul9VCqI/t6tQ+jNaYMWpJ15
         Z4ZT6cO/loAv7/XmO0xpQnXPu+DIDlYyTGO0HuUkMYNGbh5srpohU8PHasRoJRIgyH3M
         BLBCbOIdzyBnzGIBkALco+TGcVjcNp18KZKb01GXF0gaheAOwhmZQFqVct3jxBbXN6/C
         WbZDaaPX4uSSnMNIkkvVAp5ZrMPEVdua98piol5Pi2q2Aoso9ZZZp6o51h18DATEYwKq
         foXUNknCzvCR5seOKODjD4lRdmxUPGQziKRJOlxmrh1kL4XNPfmK9VvBLLuz+836yiV+
         zYQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UHT8gDBw;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iVvOaHXWrDWAsBeb9ShtOOW/ukxaGMWFkX7SpmSsm8c=;
        b=G8CUwUq/hKyCzClizlIOEXSMd4YqmoCekzxX2eyT7l+TSdKa5Fh3iaoJNstygUlO/C
         j/IwesMpWgDlbDCBiy6GCM3c08nNzXFnNfDNyZ6DiYDzDxR9Ba/EuJHBESwEshfznBZ5
         mgOtOb2VLhxNSfFK295Lhc29pXerv9U471XIqxsweCCljhNfM+1isbjExqHA6KJhFlbv
         /yKmtmLVI+dRzfvIyPc7PngBnZCPrs07R+BLY9kfldQKyKV7D5bS7m9L0QtE0eknMWHv
         5h4W7dXbuYe760vK9rAJyxThDAfgVmQf47AXQypWSzoCLL6fJJkujTuqebEchIOU1tTt
         qCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iVvOaHXWrDWAsBeb9ShtOOW/ukxaGMWFkX7SpmSsm8c=;
        b=AbyBgB4NZUmJA2ta8v8DpCcNmnINVoAaCWSFtlW6Y8MZD+O+hATwqPA7wOmgv8aXyC
         kPR1BYl9bGobF8TmDsq+NQqazliGv6Pu2zbcgQ7hoJHiOmQxH0IeyLQGj6yv9wmjxE7U
         G6pyrT1pbZdart36qNb+iBm5GUx1NVpDGkwqRsfQEf5SWhlHlXn8/eBluM3ZmQdpjf00
         ThG1dAmb2WiKOQ4YLg0CEIotHDgjrEfEwaSPP5YgHErjyJtvToG6tG/lweaNSmTn7KrU
         IqZ+N/07SAK1KkDRsea23bmjmrVOAVuFyghPxTMup57GEuc9ou4riS+/4vMCyHKNw7gA
         i5ew==
X-Gm-Message-State: AOAM531It2T1LhIqh/i39j53uVYJ+SwSmV7zM7oGnQF6YdcJ8HT8bvAZ
	m4Xvw7QIOkEyxfT1DfXl1rc=
X-Google-Smtp-Source: ABdhPJwsWpqATuB7JxIEQF7vX+kjj+9T3u9TGWVkGkd/UeH27GeijEscj0rtXPlH9m6p7aHW+eBvlQ==
X-Received: by 2002:ad4:4e6f:: with SMTP id ec15mr13610800qvb.88.1590361257500;
        Sun, 24 May 2020 16:00:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2142:: with SMTP id m2ls3398659qkm.1.gmail; Sun, 24
 May 2020 16:00:57 -0700 (PDT)
X-Received: by 2002:a37:9b0d:: with SMTP id d13mr1372261qke.351.1590361257150;
        Sun, 24 May 2020 16:00:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590361257; cv=none;
        d=google.com; s=arc-20160816;
        b=x6gl9FbQGMMjie3UhlR9NuVGi3DHHF/bVTdvD4ZMiFhxN3MC1Im72FpIn467E5GU4K
         GQ5kDXP6UsaNsuKaoDNWeH6xs/i9d80iGcIqd10CbA1dqVtmk83rghmAN4pTkr02m5wU
         BAp9wTebnV075mDnBx61oFNPR+ShphX4mumog6P/E1g/255Iw++Momi+VD/QCtWn1KJL
         JoXuV6mvg72haHxoVP2i4hN+YBYH7+eWunNDyiTWMJiMJLsLpzQ7Na5QQJ0iowuD3RgP
         XbPlJLHwiPu6T14t+/XM5xCJCWuro8kYlesn4dd9nQ894YRnErKLCeu3GZPZbzoMtjG3
         nxfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=CNPpm47b3liyB6mHkF+tklV5gK5Nn1HOeTD74qXYWbA=;
        b=O4ia7lvs9CgfPQxRCJEWhT0QS+UBEKwoYqsjhWGQFJS/stKcnZCqspIG6BiHSMo9cQ
         VZYVRfUP8oQopAA64T0U5HCnVuW4Vx3bSRbCHIBl+4vWoDm+Sh31Ww5Ao8e0CkNTnJDR
         FMMr+WSD7jVjWY4p3yP06KbBSbmcEokELln3dQhHSBGmBSlFyYTGTGrkqtyPb1+ChsAO
         4Wh7nh30AzRgxDbqCBa5wuwF2qFkC4bsP1o7HvtXbdyGcXe6Kkdj4pS1mBwffyYYyuhv
         iaqEWCJ4BA15zbHoYmBlE+FA1oLHdPmzSZygywloeh4esiARqP/zV5NSvqazT644hvbJ
         fB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UHT8gDBw;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id n23si1038384qtv.0.2020.05.24.16.00.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id o19so12653895qtr.10
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:00:57 -0700 (PDT)
X-Received: by 2002:ac8:66c3:: with SMTP id m3mr23024790qtp.262.1590361256614;
        Sun, 24 May 2020 16:00:56 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id r138sm4004478qka.56.2020.05.24.16.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:00:56 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 24 May 2020 19:00:54 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] x86/boot: Add .text.startup to setup.ld
Message-ID: <20200524230054.GA280334@rani.riverdale.lan>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-2-nivedita@alum.mit.edu>
 <20200524221326.zo6zthdqecm2ke5t@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200524221326.zo6zthdqecm2ke5t@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UHT8gDBw;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
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

On Sun, May 24, 2020 at 03:13:26PM -0700, Fangrui Song wrote:
> On 2020-05-24, Arvind Sankar wrote:
> >gcc puts the main function into .text.startup when compiled with -Os (or
> >-O2). This results in arch/x86/boot/main.c having a .text.startup
> >section which is currently not included explicitly in the linker script
> >setup.ld in the same directory.
> >
> >The BFD linker places this orphan section immediately after .text, so
> >this still works. However, LLD git, since [1], is choosing to place it
> >immediately after the .bstext section instead (this is the first code
> >section). This plays havoc with the section layout that setup.elf
> >requires to create the setup header, for eg on 64-bit:
> >
> >    LD      arch/x86/boot/setup.elf
> >  ld.lld: error: section .text.startup file range overlaps with .header
> >  >>> .text.startup range is [0x200040, 0x2001FE]
> >  >>> .header range is [0x2001EF, 0x20026B]
> >
> >  ld.lld: error: section .header file range overlaps with .bsdata
> >  >>> .header range is [0x2001EF, 0x20026B]
> >  >>> .bsdata range is [0x2001FF, 0x200398]
> >
> >  ld.lld: error: section .bsdata file range overlaps with .entrytext
> >  >>> .bsdata range is [0x2001FF, 0x200398]
> >  >>> .entrytext range is [0x20026C, 0x2002D3]
> >
> >  ld.lld: error: section .text.startup virtual address range overlaps
> >  with .header
> >  >>> .text.startup range is [0x40, 0x1FE]
> >  >>> .header range is [0x1EF, 0x26B]
> >
> >  ld.lld: error: section .header virtual address range overlaps with
> >  .bsdata
> >  >>> .header range is [0x1EF, 0x26B]
> >  >>> .bsdata range is [0x1FF, 0x398]
> >
> >  ld.lld: error: section .bsdata virtual address range overlaps with
> >  .entrytext
> >  >>> .bsdata range is [0x1FF, 0x398]
> >  >>> .entrytext range is [0x26C, 0x2D3]
> >
> >  ld.lld: error: section .text.startup load address range overlaps with
> >  .header
> >  >>> .text.startup range is [0x40, 0x1FE]
> >  >>> .header range is [0x1EF, 0x26B]
> >
> >  ld.lld: error: section .header load address range overlaps with
> >  .bsdata
> >  >>> .header range is [0x1EF, 0x26B]
> >  >>> .bsdata range is [0x1FF, 0x398]
> >
> >  ld.lld: error: section .bsdata load address range overlaps with
> >  .entrytext
> >  >>> .bsdata range is [0x1FF, 0x398]
> >  >>> .entrytext range is [0x26C, 0x2D3]
> >
> >Explicitly pull .text.startup into the .text output section to avoid
> >this.
> >
> >[1] https://reviews.llvm.org/D75225
> >
> >Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >Reviewed-by: Fangrui Song <maskray@google.com>
> >---
> > arch/x86/boot/setup.ld | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> >index 24c95522f231..ed60abcdb089 100644
> >--- a/arch/x86/boot/setup.ld
> >+++ b/arch/x86/boot/setup.ld
> >@@ -20,7 +20,7 @@ SECTIONS
> > 	.initdata	: { *(.initdata) }
> > 	__end_init = .;
> >
> >-	.text		: { *(.text) }
> >+	.text		: { *(.text.startup) *(.text) }
> > 	.text32		: { *(.text32) }
> >
> > 	. = ALIGN(16);
> >-- 
> >2.26.2
> 
> Should .text.startup* be used instead? If -ffunction-sections is used,
> 
> // a.c
> int main() {}
> 
> gcc -O2 a.c                     # .text.startup
> gcc -Os a.c                     # .text.startup
> 
> gcc -O2 -ffunction-sections a.c # .text.startup.main
> gcc -Os -ffunction-sections a.c # .text.startup.main

It's probably unlikely we'll use function-sections on the setup code,
but *(.text.*) might be more future-proof, since gcc/clang might grow
the ability to stick code into .text.hot or .text.unlikely etc
automatically.

> 
> -----
> 
> In case anyone wants to CC a GCC dev for the citation that 
>   main compiles to `.text.startup` in -Os or -O2 mode, I have a small request
>   that `.text.startup.` probably makes more sense. See
> 
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95095
> 
> I made an llvm change recently https://reviews.llvm.org/D79600

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524230054.GA280334%40rani.riverdale.lan.

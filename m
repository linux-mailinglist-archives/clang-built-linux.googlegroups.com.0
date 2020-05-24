Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDHDVP3AKGQEFZP73JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7706A1E039F
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 00:13:33 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id e3sf6542711vkh.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 15:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590358412; cv=pass;
        d=google.com; s=arc-20160816;
        b=uqtngADEzP4qKhHErYASD1OyEZnBP7SM3VdW9Md9+Z3tMklsZVZaXov7fMBOpS+2/x
         MhQqSgpm72fNeLteZqjEcZDH88AnVC6FBBD7a9LvCHxEIKGL9YxWuL9YlcxS0X+jCvgH
         DS5lPkOhTWudVrr/8H02HCkju/C6ATnT4AQLu8hmU3IIWA7CUGNU+qxY1t5PRytkOB5K
         b8STS4jiPzwKnUy22GCTsrU5b1zOCHxG25GsULzXTZ7vaxc7PFtY9VV9acW/vrIhRnuX
         o7oVOiosXMLUWVmwOzn6ejV/28d1Ayn6VMmyTGcuGaEsH5QeYlLbMQBrZCmumNgB7Z4p
         NEZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kh6HmLvvD69N0U3dyV9RL9cvQ7s0llCApRjBfQv5AFA=;
        b=e/cJif+xmwDa+dLLlQf21kuNN1INkeMnLPrA8c/iBJ+fl9KbsCsGw4NpRdDAQuqonP
         SXNrwvvInbYHtH5YbBPDvDDgBHJsNRTOpzT640ykNJClgZWdr3UxIq7+uWPrJvYn47Bh
         OeK36Uz8Y2WTcjjk0CAWoHInQKcVoM9VIy1Ak7Ubk9sDsCSDABjlZErhuxOJvFU4TE9c
         SWXKV68EH5C7W/id2kuliosqvF4xYHc2hBiJ7h2O7lHjkkfNN9T+jJz8umXSmRBk7QYf
         O+8c3RJ4JObiBEwRdFjhK+EpuPDKkSBQ6Q50dL6ZoI1t+OBcqxSPq/yy1sJxM0jvsXz3
         RA3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALJxHnzX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kh6HmLvvD69N0U3dyV9RL9cvQ7s0llCApRjBfQv5AFA=;
        b=XgUR3a/eFp2o162kICDUHEw/b3oh3ds03s2bqCG9rOXrvsAy6ekGrNRR9Q0i95IEgQ
         xYAx03i7DizaWucm2B08UqhKTr9pEWzC2uOnVa9upfWzmNAN7KSze7IXyfl3gvEZAmHN
         dxFbZQZLiWyaG2yTzvvG6axvWW5NQ3kJWgMDzXbhkgUS8lV4db9H5LrwMU5z8hfUpZnU
         wd1lXAtb1JKmMDiqJN1OZnwyaSb7ajtT2FaXVEBWgtevuURfHcseUdFEwohBbuZ2bHNM
         NZoKT8EhXfpaSeGz0gU/XvMfitLIjhl/6IVUz9chxW4iNIs5Bw+knvBt4cHz8rtgs4sV
         pvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kh6HmLvvD69N0U3dyV9RL9cvQ7s0llCApRjBfQv5AFA=;
        b=HooUqQqmwbVFUnX27jOQHs0SUSQcSAqYh6koQfzJxHz977VvthgbCzAs7kfuu+lJ0M
         G3mcNwVe9BU1Usy/42YEF/nlpamOPVDRfW8Au8HKeUyp6aR5QB7CulQzLn09kZt03fI4
         izLTC8g4wgUy55a+sI26BEjxKh/3RLWNofuTiDHaHpWDBh9P7bCsJoRGIMy7Rf0jO4W8
         7oIAlfIMCroIrbJsx963zXVMbgBaDgJGJDfmO1d17bxxOQTe1cYM/Z1gm8HTiFM82Zlt
         ryUOWlv3lWYe+C2J6OH42oEXSDKbkXvTu/tniO0sDW8qYtjH3PH5zWSuKHI8FSJ65UqJ
         ovnQ==
X-Gm-Message-State: AOAM532ZsXOs3hESydlpdRHZegvG2jyqVJljd1AmBjqdrP9K+36WebXA
	N1p598W2ezXvE1XKa52Rjlg=
X-Google-Smtp-Source: ABdhPJySLHJ5W/JyP0pk8KTTODNtYHIbSC4Vh5yunOvQhH7L52J/UP2huLYiYJ0iQQJ6dxhfMzOUDw==
X-Received: by 2002:a67:ff94:: with SMTP id v20mr4416114vsq.227.1590358412250;
        Sun, 24 May 2020 15:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:65cc:: with SMTP id n12ls387823uaq.0.gmail; Sun, 24 May
 2020 15:13:31 -0700 (PDT)
X-Received: by 2002:a9f:2acd:: with SMTP id d13mr17102860uaj.24.1590358411869;
        Sun, 24 May 2020 15:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590358411; cv=none;
        d=google.com; s=arc-20160816;
        b=TlIXXvvjjiVZLbECm+cL9G+TMutLF8vDm54YXupJylKF/a2BL6fUINVc00+Y9vkcTS
         gOPMep+oOLLO0bNEFxS5HYZWyRuGJB8H35kZGRcZk+C+KEv9vJ+5aNWydtpgUYg4TcWV
         wsrU8O6DVfcSo9MiGTTcqxgmF0+sfXm2sVlevhCWCI738TpSf5pgOxQvUSeDUKRqddz/
         uAcyBkFJPwJT/vXhGVuKpa7rXsATwp9NN4gw1sgBn23QOnX2U4V/8bKHua/Sc4TL4vfQ
         ujxGOq1CTAqu1KjvCXL8ojClwcqudvVsytiqLmbj0/ZR81HsY+y17Po8xnsdq5Z0B8GK
         CjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2tLotsYCPUeHq+EC4OZ2nCQeyCiq7TXwLeRalL2UPHk=;
        b=0GFh3iHT6o+O5aFme5EIyuwzOdTHDEsZBYT/1KMOhGTlphOoTqNGLyT6Q4CA5/Q4O2
         3pNsr9cuUkY8mWIXDzLTiguRSsNSMP0R7xkTAyTNzLf9QQKNsfYP3FXJLCpSfXZtnOb6
         2jt9ZW2uIJs6t5KRloWHFcoXXxy+SNBL1pFeS54wOPHRbnxELH0ecAjURY5v+JdNI6Se
         vgMKPh4sUvL/MoWwT9NkUxF1mUlh3giZRD9WoLgtolHmHaH5rbYGoeFhVDJdlvGmAHSS
         18GphqBo7118mjJgdFmqpKuDIOsUIx//KHTzNtgjFCTUqLM8jp6YjXE2rAG3IK5WUYrT
         n/Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALJxHnzX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e10si70994vkp.4.2020.05.24.15.13.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 15:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q8so8042732pfu.5
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 15:13:31 -0700 (PDT)
X-Received: by 2002:aa7:8483:: with SMTP id u3mr14642476pfn.223.1590358410725;
        Sun, 24 May 2020 15:13:30 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id o190sm10706108pfb.178.2020.05.24.15.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 15:13:30 -0700 (PDT)
Date: Sun, 24 May 2020 15:13:26 -0700
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
Subject: Re: [PATCH 1/4] x86/boot: Add .text.startup to setup.ld
Message-ID: <20200524221326.zo6zthdqecm2ke5t@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-2-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524212816.243139-2-nivedita@alum.mit.edu>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ALJxHnzX;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
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
>gcc puts the main function into .text.startup when compiled with -Os (or
>-O2). This results in arch/x86/boot/main.c having a .text.startup
>section which is currently not included explicitly in the linker script
>setup.ld in the same directory.
>
>The BFD linker places this orphan section immediately after .text, so
>this still works. However, LLD git, since [1], is choosing to place it
>immediately after the .bstext section instead (this is the first code
>section). This plays havoc with the section layout that setup.elf
>requires to create the setup header, for eg on 64-bit:
>
>    LD      arch/x86/boot/setup.elf
>  ld.lld: error: section .text.startup file range overlaps with .header
>  >>> .text.startup range is [0x200040, 0x2001FE]
>  >>> .header range is [0x2001EF, 0x20026B]
>
>  ld.lld: error: section .header file range overlaps with .bsdata
>  >>> .header range is [0x2001EF, 0x20026B]
>  >>> .bsdata range is [0x2001FF, 0x200398]
>
>  ld.lld: error: section .bsdata file range overlaps with .entrytext
>  >>> .bsdata range is [0x2001FF, 0x200398]
>  >>> .entrytext range is [0x20026C, 0x2002D3]
>
>  ld.lld: error: section .text.startup virtual address range overlaps
>  with .header
>  >>> .text.startup range is [0x40, 0x1FE]
>  >>> .header range is [0x1EF, 0x26B]
>
>  ld.lld: error: section .header virtual address range overlaps with
>  .bsdata
>  >>> .header range is [0x1EF, 0x26B]
>  >>> .bsdata range is [0x1FF, 0x398]
>
>  ld.lld: error: section .bsdata virtual address range overlaps with
>  .entrytext
>  >>> .bsdata range is [0x1FF, 0x398]
>  >>> .entrytext range is [0x26C, 0x2D3]
>
>  ld.lld: error: section .text.startup load address range overlaps with
>  .header
>  >>> .text.startup range is [0x40, 0x1FE]
>  >>> .header range is [0x1EF, 0x26B]
>
>  ld.lld: error: section .header load address range overlaps with
>  .bsdata
>  >>> .header range is [0x1EF, 0x26B]
>  >>> .bsdata range is [0x1FF, 0x398]
>
>  ld.lld: error: section .bsdata load address range overlaps with
>  .entrytext
>  >>> .bsdata range is [0x1FF, 0x398]
>  >>> .entrytext range is [0x26C, 0x2D3]
>
>Explicitly pull .text.startup into the .text output section to avoid
>this.
>
>[1] https://reviews.llvm.org/D75225
>
>Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>Reviewed-by: Fangrui Song <maskray@google.com>
>---
> arch/x86/boot/setup.ld | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
>index 24c95522f231..ed60abcdb089 100644
>--- a/arch/x86/boot/setup.ld
>+++ b/arch/x86/boot/setup.ld
>@@ -20,7 +20,7 @@ SECTIONS
> 	.initdata	: { *(.initdata) }
> 	__end_init = .;
>
>-	.text		: { *(.text) }
>+	.text		: { *(.text.startup) *(.text) }
> 	.text32		: { *(.text32) }
>
> 	. = ALIGN(16);
>-- 
>2.26.2

Should .text.startup* be used instead? If -ffunction-sections is used,

// a.c
int main() {}

gcc -O2 a.c                     # .text.startup
gcc -Os a.c                     # .text.startup

gcc -O2 -ffunction-sections a.c # .text.startup.main
gcc -Os -ffunction-sections a.c # .text.startup.main

-----

In case anyone wants to CC a GCC dev for the citation that 
  main compiles to `.text.startup` in -Os or -O2 mode, I have a small request
  that `.text.startup.` probably makes more sense. See

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95095

I made an llvm change recently https://reviews.llvm.org/D79600

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524221326.zo6zthdqecm2ke5t%40google.com.

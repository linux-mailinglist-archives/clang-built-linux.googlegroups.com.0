Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEEQVT3AKGQEV7MPMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFAD1E03FB
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:49:38 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id l17sf16077594qvm.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590364177; cv=pass;
        d=google.com; s=arc-20160816;
        b=tkuskt5hCkpGTJvAYLx0y4juswAL1URH6cJ8Ar7YgHLAUnQqNnpiSsYezslGMBd1YY
         aA8neqLGddkjl/+jnditDRJ532/Ays1S/QL0p1LwI6qPv+TkOUdTDpLdLqJKijIFQfY6
         CW1Ju0/pudwLGa6GiWtJL56k98nZMfbeCGuJ6+DGd2fHyQPSpe5pD8rCrF7qA9HMrnIC
         1ufEIMP0Vi1HP8I6vLeVt10znzxBwrXYR1xtBbaZ9CCrSU0W5bqsQblfFiY1MY6Q1qds
         dD0Rg37CHYTpIXY+Tm+opK+/gtD2OwkNzK8QQGvNCTP5c5ognakqHF3V6tFye0tlEIJm
         rxcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Lp+wyguTyGOeoLC5Ph9BxTi69xFpoiqrHKwNqO37qks=;
        b=Mwz95fYWAIbNhHHrPWZoJdxEOsn42dWQfUbOYVqvjUnus/kREtlXqLIwWm238sHfPc
         /+yJNTNoxMzosJ2/lEdzzAGgNRt+pvMSBJ8vOFZar8+3SbslOgIPqOMFvHtMLj2Okdso
         Sw0O6JDWlcjgVpoEv3HV+PjFzDBRxexj26i3pN/Hask/aQ7qTWjfAXPFP1R4A/nX/gNP
         443rs1TmDhjCjArWpojFjIcN1wGSES8psKGVDFLdlYZ/zmr3b6Jo9YReMUZ1oB5/o/tS
         VGWMAssegadh9DnmP2YFMjjlSPkYjFZAWroT5dOlzRsU9gOs8PE171vaLyiLnxLJb75N
         JWeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZMp4pKiQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Lp+wyguTyGOeoLC5Ph9BxTi69xFpoiqrHKwNqO37qks=;
        b=RHuzSGDhRBA9loJfkRMuXHFJXjhTobdDs6ZfMYgdG6Ch7UtqynzW7aYerkUH4FRBn9
         cOaNTVA+SRj/ScLJ+PQzAvEIybBIyvQ2IY8KQsXUQ6ZDRc0vP4aeYfF9WJADYsSsiHA/
         lnfzG3Y006SnHB5XcLwnIagAHbTMg36kd39NLlRitwImlBNKqw11/Tg77RZeTGNST7u1
         TCZddDges2zkcoqo6Hu9BwAvk6KMaLL7nk4pa0MieMbneTCJL8X2vRKb+yUMJJ0kIsKG
         jQmdzlcAR3i9d4vbUb4gdGP4I2Jr2qJVs8TPFjgsPXZ6JrvvfEcWiG9HSUHu480ska0v
         DVAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lp+wyguTyGOeoLC5Ph9BxTi69xFpoiqrHKwNqO37qks=;
        b=bHNsGl8C4DtlZWC7sfkbf9SlkyWLPc1pDJT8/PeZtX6Tjf6PG/jDmVMJXoBwiFaR7w
         ZFGTDPkvpuhasNGusKzFCe5YKHxMoYZiA3EvPlZ3uKUlicNpIOdWW+vSygYHsoRn8Mr2
         ShyfScBN7V3Bwhvmx1zo/YPpOmX+UimZ3sUQpHr/xKfHwRtwCeKwqErHTi5dtjhRSok+
         o252vSUvpb7r1xmFOkdsoIRNFra7pFgiQDvnY02rrbypQoRPPqUdgbkYuQaIFtB01zzY
         dNjqm1Z4uX10vWq8RxLrRl7erLemp9BIaadL/tH1FAHZ7vpjk7xBJUO1cdAOXwoRyptN
         /16w==
X-Gm-Message-State: AOAM531so5mEQpLP/oRjzfVM1Wa2B6jJv8XlABOmwpOqjX8dKURDHoBS
	Vv1GP6CHxq8aeSv089r5UXc=
X-Google-Smtp-Source: ABdhPJzA6eYP8T+bJK6KoRcNW4FcuaVySR0w8FkhhmNA1n0AmGr+8WVZ46zVLxcEYPWjSEvWC4UFvA==
X-Received: by 2002:aed:3242:: with SMTP id y60mr26360498qtd.127.1590364176843;
        Sun, 24 May 2020 16:49:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:142b:: with SMTP id k11ls3193218qkj.0.gmail; Sun,
 24 May 2020 16:49:36 -0700 (PDT)
X-Received: by 2002:a37:614d:: with SMTP id v74mr5426578qkb.98.1590364176515;
        Sun, 24 May 2020 16:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590364176; cv=none;
        d=google.com; s=arc-20160816;
        b=oyY7L6dClTS0ZrbYKXF4njtRl9Ivgs4mNxjWcakYVJn2FaATDqw6yWNrGEEKYy+XL0
         kO+XbBhKOu8DrMwI7lt2XHqJD+XaCfH0yH5xAFCPLWaP4E7RbjkZ+r2uPkL8RIYxJvvE
         uAnMzkyAaNmOSzYZnAk+gde9VKAs4ohiJqs+1r8yazkpGH4tzVwEUNftLgs4MxwoZJYt
         ybtoaaYJ4YSlsYIW1UH0MUwPVp8LMLjIe5q/ZJr4pbrYrszYBZRbnMd5cTd4bna92b68
         qlnUWy0v0YUrK0d6utfIlolSIK21LmUiJlLzRJZaXaXJdw9+TM68D6aob3Kjdq1AZlCN
         ohCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ESumRBe9TIyOOMkHD+jslTQBV+iCmU03AWMD85ZvEjg=;
        b=HLNL7GOjc7aSDT55QbkLpJfLaw9nlgJVXRQ121/V/WdLvu9E1DV7Wox17S7eZynt9S
         jGZvHU5Bqd4FIqm8RKe/svbzOOPjuHO7bvyXbrGNti/1pj6znjzTvF2Q8dMhCfFJdIYQ
         +ZwFZmAleYQKLzWPF6kwdYjGBhwCL+fdVnHJOvazr9GZk0pp2/oM61gYkU+vAzj2swtA
         LPdBHh/bYJlPXOJecX3Ikh/mgR5LE/s39nOP96WyBmX2V8ZhVyIi7JwjzmKo99M9U8n7
         Y/m+ArF6Z6MQ5EKqSNBOWWun7R9rM4tKwrT+47dtMGV1aGF8CwbEoPJ7wtvMYKFTxThL
         tD1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZMp4pKiQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z206si1275687qka.4.2020.05.24.16.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id t11so7948693pgg.2
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:49:36 -0700 (PDT)
X-Received: by 2002:a63:5f11:: with SMTP id t17mr23359768pgb.177.1590364175509;
        Sun, 24 May 2020 16:49:35 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id k4sm3628240pfp.173.2020.05.24.16.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:49:34 -0700 (PDT)
Date: Sun, 24 May 2020 16:49:31 -0700
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
Message-ID: <20200524234931.onovv64vjvrsfj33@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-2-nivedita@alum.mit.edu>
 <20200524221326.zo6zthdqecm2ke5t@google.com>
 <20200524230054.GA280334@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524230054.GA280334@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZMp4pKiQ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542
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
>On Sun, May 24, 2020 at 03:13:26PM -0700, Fangrui Song wrote:
>> On 2020-05-24, Arvind Sankar wrote:
>> >gcc puts the main function into .text.startup when compiled with -Os (or
>> >-O2). This results in arch/x86/boot/main.c having a .text.startup
>> >section which is currently not included explicitly in the linker script
>> >setup.ld in the same directory.
>> >
>> >The BFD linker places this orphan section immediately after .text, so
>> >this still works. However, LLD git, since [1], is choosing to place it
>> >immediately after the .bstext section instead (this is the first code
>> >section). This plays havoc with the section layout that setup.elf
>> >requires to create the setup header, for eg on 64-bit:
>> >
>> >    LD      arch/x86/boot/setup.elf
>> >  ld.lld: error: section .text.startup file range overlaps with .header
>> >  >>> .text.startup range is [0x200040, 0x2001FE]
>> >  >>> .header range is [0x2001EF, 0x20026B]
>> >
>> >  ld.lld: error: section .header file range overlaps with .bsdata
>> >  >>> .header range is [0x2001EF, 0x20026B]
>> >  >>> .bsdata range is [0x2001FF, 0x200398]
>> >
>> >  ld.lld: error: section .bsdata file range overlaps with .entrytext
>> >  >>> .bsdata range is [0x2001FF, 0x200398]
>> >  >>> .entrytext range is [0x20026C, 0x2002D3]
>> >
>> >  ld.lld: error: section .text.startup virtual address range overlaps
>> >  with .header
>> >  >>> .text.startup range is [0x40, 0x1FE]
>> >  >>> .header range is [0x1EF, 0x26B]
>> >
>> >  ld.lld: error: section .header virtual address range overlaps with
>> >  .bsdata
>> >  >>> .header range is [0x1EF, 0x26B]
>> >  >>> .bsdata range is [0x1FF, 0x398]
>> >
>> >  ld.lld: error: section .bsdata virtual address range overlaps with
>> >  .entrytext
>> >  >>> .bsdata range is [0x1FF, 0x398]
>> >  >>> .entrytext range is [0x26C, 0x2D3]
>> >
>> >  ld.lld: error: section .text.startup load address range overlaps with
>> >  .header
>> >  >>> .text.startup range is [0x40, 0x1FE]
>> >  >>> .header range is [0x1EF, 0x26B]
>> >
>> >  ld.lld: error: section .header load address range overlaps with
>> >  .bsdata
>> >  >>> .header range is [0x1EF, 0x26B]
>> >  >>> .bsdata range is [0x1FF, 0x398]
>> >
>> >  ld.lld: error: section .bsdata load address range overlaps with
>> >  .entrytext
>> >  >>> .bsdata range is [0x1FF, 0x398]
>> >  >>> .entrytext range is [0x26C, 0x2D3]
>> >
>> >Explicitly pull .text.startup into the .text output section to avoid
>> >this.
>> >
>> >[1] https://reviews.llvm.org/D75225
>> >
>> >Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> >Reviewed-by: Fangrui Song <maskray@google.com>
>> >---
>> > arch/x86/boot/setup.ld | 2 +-
>> > 1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> >diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
>> >index 24c95522f231..ed60abcdb089 100644
>> >--- a/arch/x86/boot/setup.ld
>> >+++ b/arch/x86/boot/setup.ld
>> >@@ -20,7 +20,7 @@ SECTIONS
>> > 	.initdata	: { *(.initdata) }
>> > 	__end_init = .;
>> >
>> >-	.text		: { *(.text) }
>> >+	.text		: { *(.text.startup) *(.text) }
>> > 	.text32		: { *(.text32) }
>> >
>> > 	. = ALIGN(16);
>> >--
>> >2.26.2
>>
>> Should .text.startup* be used instead? If -ffunction-sections is used,
>>
>> // a.c
>> int main() {}
>>
>> gcc -O2 a.c                     # .text.startup
>> gcc -Os a.c                     # .text.startup
>>
>> gcc -O2 -ffunction-sections a.c # .text.startup.main
>> gcc -Os -ffunction-sections a.c # .text.startup.main
>
>It's probably unlikely we'll use function-sections on the setup code,
>but *(.text.*) might be more future-proof, since gcc/clang might grow
>the ability to stick code into .text.hot or .text.unlikely etc
>automatically.

*(.text.*) looks good to me. When you send PATCH v2, feel free to add

(There is indeed no guarantee that future clang FDO will not place it .text.unknown. :)

Reviewed-by: Fangrui Song <maskray@google.com>

>>
>> -----
>>
>> In case anyone wants to CC a GCC dev for the citation that
>>   main compiles to `.text.startup` in -Os or -O2 mode, I have a small request
>>   that `.text.startup.` probably makes more sense. See
>>
>> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95095
>>
>> I made an llvm change recently https://reviews.llvm.org/D79600

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524234931.onovv64vjvrsfj33%40google.com.

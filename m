Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBSGC437QKGQE2FO743Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0912EFF5C
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 13:27:53 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id n11sf5141743wro.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 04:27:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610195273; cv=pass;
        d=google.com; s=arc-20160816;
        b=r0cerevL1Ozijmsv/99mIDJLfVHZN92DCfHzmHeI3KeQd1150OmGbFf1iankxlDEOS
         XExTF6SIlRWuiPXxMxNoZT4E1erVh5WJIc5Glx+Wo3o2GzVSwr3B6LEn3qJtmHBnInNW
         odnBmxaXQrNcrtuqTTytE2tRbCe0YHeW4q/Q8WEs7muPvkvHuo1fr9koBXBkhB2mVVfk
         LT22OKryq5g0TrbTmHjwa8WSYarLnlEI9X317gV8QzM0jFKDFEzZHa4Xt+eYFFcUe+iE
         GKPgOBll7AdqlU3zlsG+IhoBtoudmSeJ95rp2DfehFeBELT8O1CiaxoJIxlUmx1INxCl
         EjcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=y22idedEt0r++nQgMXGkcoA8rDm71yB8SxOEXbipNfA=;
        b=cDd6MFeqHAxffvti/279i4G3GHC1yCk1hOxr5noI8gw9heogNRGyG4a16SxdZVuAkP
         5i+0fP+eP75NnQqofJ8n8qJvG/aW0OLG3DdKg6msPa62xOU1Iez1zBJTkYiziLrdtq07
         U6jWRgKPRKpSYBkSJg/xFJxDTzyrUoJz8FZP0JMaIB/75Uo6YyeoWNcX3TUlEBhKBP6s
         u6hig+rjPatsbEG+VndyQnnovAKislHV+jhiSmFIn8+cYG/RICpzIakOeqyZlPzzX3Nz
         HAHQoRL+wif/KAb7vzFttsFM4TaBJ4wjGjDYgPnMkzD+fPouzutmjJ9dynw1hb7pCLBN
         HlEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y22idedEt0r++nQgMXGkcoA8rDm71yB8SxOEXbipNfA=;
        b=mwJIO8yKCB5VkJZVLrmIB6TqjDdK2VKZc+LGF1O5oK4/BLNG9KV+ECBQgSfiF7yS/+
         VgkI4VnK/52ZD6u+rT0uAvhpm+MukT2+VsGAHeEdMvfYbNBtC5mWw/94ehAx0hk9y+/j
         kvwBbFZB/uChF0+CNRShntOtcrhi1qtpewpGF0fMFRRKAD5jBFBV4ajnRGciQBdF5g1p
         AiQXdSTkaq81d78NkFjOf3c2xEBDdD4bC72ghf14Rmt/C3j6dBAOQCzgNqDXxrXXgNOj
         MX4AuI7zTXxHb474pu75MNnXH6SlMB9PJJHptXWrDq0hk/V6zq54SV3UvBMxTiq3ERvJ
         OtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y22idedEt0r++nQgMXGkcoA8rDm71yB8SxOEXbipNfA=;
        b=KIzkXy+PFHDQ8y4YGtODkDDyqOpi5K/oVdVSTljik1nyKecP/WYnDyp3JEPoCryI3P
         98TYm+fp8fTWNcoKjsk0KfVMGcJnfAJJ2dAduzCeXodFSqgpBzIRM0GTQCha68HsGdJ4
         RzA3v9ljwqnpHUootNj2KVQHQkd4Dyw2bjdnwGHpxFk6mmxObJRw7SGUZJoToQh6Bn2l
         9nnHYFXvtlmK5FudFoPZxK9ohwzSSbbmXLOxsEf2XzmAfwAvEfP3Mc3UvVcLiRxXv5Qo
         NLCo77ofvVzbZQeBM+U/XZxoV24SB8YojsS06oHiYJBlAXrq4TaVECGa9sRr2v/fPfHo
         CWZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y0B9Vwn3nE/WrBwJcKWDh5xKlvTRN22DXEVL+Vg1sUqyOoC8z
	ZIMo/WTjqsDsUM48Gz6AjsM=
X-Google-Smtp-Source: ABdhPJzAV8xFloQp+W6dDPAEz/5hNg7tgEfPZc34TqfICpq1vWQ7pEOoiNiHJV0jw0pQD0Ys38YpCg==
X-Received: by 2002:a05:6000:1624:: with SMTP id v4mr8233380wrb.210.1610195273147;
        Sat, 09 Jan 2021 04:27:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls433144wrw.3.gmail; Sat, 09 Jan
 2021 04:27:52 -0800 (PST)
X-Received: by 2002:a5d:6503:: with SMTP id x3mr7851548wru.151.1610195272350;
        Sat, 09 Jan 2021 04:27:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610195272; cv=none;
        d=google.com; s=arc-20160816;
        b=nEyNtiCbnfX2SMSS4yJK1qcevYUaOFIhs0/Gb7K8UwQjXycZAP3DjWji+9a4bLuPtN
         gf+EpMrBRfiRxR0JI31pDVGYak9jM6efOJ5c+1l0xe15v/27vwDLE9nFZxHnHcM5boxz
         Wa5ZjcmuZYdZ3CMsCZacrQXEDjCFfk4wVk22qSsKcjrHEq51kWUqn8K9sRNiCsOTNHzt
         QkJtp1e3JqN7Ar5yL2o4HpNikgtrM83JZlvRhZPRPVcOVJH/ygxC9lSIb5rtPOe9TJv8
         AcNClbtZDc4H4zLxAwVz5toEzyglY/P70Q1FNbqkSS1G8TLBLeWwB320M60p4sUgDkpx
         eWHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/wBXLmqL9m3/J8jDIVeA2FNn7uYhm7C9xziCBOg5JO8=;
        b=ttYNB+2WidwIwDaijyLxYRLhTcx6Px999+BtYuyJ1JVaBBwSADuMjCX2MmUBUf/SH0
         51Dx583Pn63u2NHBpIqWyX1iiWVQYZiHbdWJT0wM9wo2faZXonYCwIEUlrMSYMrMJ0CK
         ieUBpC5YULEZbmlYF8n84n1/6hLg7XT3E4H+JrHCfOwQSq7U/lzVmlFVRehb8VsanwYv
         jvJDHOPXuCTFAfTQ/wVnhWFn1bswxJdGe63pttC5a1W6gAOec+s6Tq+xBkD4GOCCdpm8
         1kW1c72wNN2z5DsgfUD4LXqpStNo0gIHlcWaB5UHAxIj567hG5GeBgUXcfK+PdkqUxUa
         gHlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id d17si606302wma.4.2021.01.09.04.27.52
        for <clang-built-linux@googlegroups.com>;
        Sat, 09 Jan 2021 04:27:52 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kyDLP-0005En-00; Sat, 09 Jan 2021 13:27:47 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 492FAC0880; Sat,  9 Jan 2021 12:12:59 +0100 (CET)
Date: Sat, 9 Jan 2021 12:12:59 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes &
 cleanup
Message-ID: <20210109111259.GA4213@alpha.franken.de>
References: <20210107123331.354075-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123331.354075-1-alobakin@pm.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Thu, Jan 07, 2021 at 12:33:38PM +0000, Alexander Lobakin wrote:
> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>    placement (marked for stable);
>  - properly stops .eh_frame section generation.
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues
> using two different toolkits:
>  - Binutils 2.35.1, GCC 10.2.0;
>  - LLVM stack 11.0.0.
> 
> Since v3 [2]:
>  - fix the third patch as GNU stack emits .rel.dyn into VDSO for
>    some reason if .cfi_sections is specified.
> 
> Since v2 [1]:
>  - stop discarding .eh_frame and just prevent it from generating
>    (Kees);
>  - drop redundant sections assertions (Fangrui);
>  - place GOT table in .text instead of asserting as it's not empty
>    when building with LLVM (Nathan);
>  - catch compound literals in generic definitions when building with
>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>  - collect two Reviewed-bys (Kees).
> 
> Since v1 [0]:
>  - catch .got entries too as LLD may produce it (Nathan);
>  - check for unwanted sections to be zero-sized instead of
>    discarding (Fangrui).
> 
> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
> [2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
> 
> Alexander Lobakin (7):
>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>   MIPS: properly stop .eh_frame generation
>   MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
>   MIPS: vmlinux.lds.S: explicitly declare .got table
>   vmlinux.lds.h: catch compound literals into data and BSS
>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN

this breaks my builds:

  LD      vmlinux.o
  MODPOST vmlinux.symvers
  MODINFO modules.builtin.modinfo
  GEN     modules.builtin
  LD      .tmp_vmlinux.kallsyms1
mips64-linux-gnu-ld: Unexpected run-time relocations (.rel) detected!


$ mips64-linux-gnu-ld --version
GNU ld version 2.27-3.fc24

$ mips64-linux-gnu-gcc --version
mips64-linux-gnu-gcc (GCC) 6.1.1 20160621 (Red Hat Cross 6.1.1-2)

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109111259.GA4213%40alpha.franken.de.

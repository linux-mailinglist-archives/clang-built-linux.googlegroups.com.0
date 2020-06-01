Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3622X3AKGQED2J2ADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D075F1EB0A4
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 23:04:48 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id w16sf9997613ilm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 14:04:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591045487; cv=pass;
        d=google.com; s=arc-20160816;
        b=atNvM+UjGEEmSTKsfRuduHX+DXziT6xXJJfnib2eDU7QrZtO73+2ZYZmzbUIN4MJXE
         qoxA71Ban1utEDI7diLc8LnV6yq4A4xQjXgPmCOUNaKof5/rumgkHxYlLRIuR8EmbxaV
         nIIQ1yazNUzeNSRehrCjoBtrebmR4w9JxOQAkQ/dsvULpp8ZvWx3EfkobGZDVJRW0lyq
         1fvkK5mr28Nsk46WtQutsn/hcKlBwY383aIG5Ke7t80OKZ30+mNCEgylByq8FRPT/I/V
         IAPVhuQ88E955zebfCxnZUhg/48uCvgvcmsXU4ZIKHDJBXot+OmNDcnVEL7LJQ5+3U2r
         XTQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s7B9Y6C0vZWZudHVIuytLEuuWzbZ9X5b+GESzAt2UYQ=;
        b=aYjRg5AnZjhCfDsfpWqBCGlzptWkxaVXhgkfY8dkK8cw5I+C9t536s9xrifHeDU9yz
         4goCYnGPOgUUdelsfazL/Z0iCzDPwgAReN6D9/LOqkp3mChhyp+99NY7ZVNIzucg6YYV
         HyvjlwzkFmBasOvtt5ntAg6PSQrOxIemhm2y7N6FOJX5dPn6EuV1dzoqXnLVYqayvMvv
         KtXgEsCgF2b5cENbqWeHSQEAUv3wtXVjNmRj8bYleuaZaDk1xwaUMOpW4dvGLz7UJnZ+
         8uopdys0O7EMA5Hho2Nw/0I8NZxAxdQ+UB44Co9woi+HT6mB33nrky4F9FVn6amu7/j4
         UYhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bOP7TlKt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7B9Y6C0vZWZudHVIuytLEuuWzbZ9X5b+GESzAt2UYQ=;
        b=FnVFwVOysXIQjqITwPji039Bdhwk4ZtirX4u/5HsvFZEgCg94MPEcDhsW/GeLLcmUv
         gDWP128Vv7fiWGFM1TkW8gdv3nDgigjG8O1z+znLuRQgePOF0MzFfMD8Fpa+494pFCab
         r7Tt1AQcFU9OLZZsynNt4p8Fmzp4W8inNqDd7SNMfEsdsinXxkMXWh2NnUM2H6XT+NDL
         2el+dwq9sTuUtyuEgGRIDBDg17m8UoiNpmJemcofnSxOVqIkYRYBc8VR9e4TSPAEjX8W
         9O5RXywEdtjWuGmh2OxbgyKL3v97F344LXfYxt3r7FRHb7UhsC57f7qAgzECai4eQVme
         4uKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7B9Y6C0vZWZudHVIuytLEuuWzbZ9X5b+GESzAt2UYQ=;
        b=T5n0Zb9uNeqMtkiYXNJFjQDZ79M4PkdI1GgRfDKVc+63qWLXoxHVtSsYyfeU8qUxNQ
         fq3IFnnvNAthG5QOWSw3hTkpwrUAj2WVrOKwsXkb9CfcxwrA06Ezxk+rLhXOKr8+Jh1z
         vZtqackq0oSJ3UAHZ5GRaZPeEBt9Wy6q9iXw7bmWpcGv48cDBT/jWVsyVXTPEtfuN7p+
         y/hrDLq81PJlFw2+oUAxYKbbTXxF07zFGgWxZXa4DYQwsbZ6NF+/SbtdqN9JVod/3mc5
         IWejxW7yI0atwgtjpvOPm6Y5GpztMiMFjAQ0ROGI8UlZrCGK0KzfzN/4NGLckoTfd0Cb
         Ym0Q==
X-Gm-Message-State: AOAM531aLN0xFG3XcwccdHsBHmCq2V6DzEn37wrMj+SMMWwBn2UJYcP2
	W6JTDHzMPni5u8Ln/3g7J24=
X-Google-Smtp-Source: ABdhPJzUKnRqqaNf6fsBd5p1DxohUU4qICT9NZqe37Hl9z59fcxVDYWXRh0Jy6/JsBce76XDZx3fKg==
X-Received: by 2002:a92:1fc7:: with SMTP id f68mr24042179ilf.133.1591045487481;
        Mon, 01 Jun 2020 14:04:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b11:: with SMTP id p17ls2169845ilb.0.gmail; Mon, 01 Jun
 2020 14:04:47 -0700 (PDT)
X-Received: by 2002:a05:6e02:13ee:: with SMTP id w14mr10480083ilj.190.1591045487105;
        Mon, 01 Jun 2020 14:04:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591045487; cv=none;
        d=google.com; s=arc-20160816;
        b=hho7XjrHtjWe2/ZgQBzyDnb/aXuwgwGIq58CdhgfXfUzS+/72QBfWhgXyeQb6x02qT
         RGIY2BLtOOwUEcQ92lTiJSXyCQBSJ87+Rb47ntaj0r2quNTrg37fPmocgX09uCqYMCSA
         Edbt367E1bSth5X7pXrQEnFtI1Rrd30/wAaXX/CoR8vDYqpJqD4XHXEVSG6PXCVb/0K4
         zIYAHD/pzlc+iNfFUg1En4LOuMymWGxQg1a9UNg/brVnecBXdxdCSzNaBGuAFOQ3qEAC
         Oe19KeC9p2A10qKuJUcgkIGBfjto0waedxjCTIOeOgSUFwr/X+1qpY/syu45NWQIL4jR
         +ttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c89nzIUmVYClehsGT37noOH+nKmXC+jdlhbLWMBSiQM=;
        b=zoXwmEDh6gVH5Jf/OlN0s/apis5gkDqgH/nFwbcy0iP1ehTAcnC2cvvKRpXycJPgTP
         mDDcWj2S0cxBmylbGg25t6FmJ61nvc7kaPSmrA22TEAO1eHhJfuIlH/u066kFwe3pA83
         bRJH6M4fObXpwM+0xZdH7WsB7+qs/TJLeaAsKyWXBxhSirpxpYOrDfi94n9xQjMHIAMF
         DoFn/P37dQkZUbdpa931M9FViEf1e2vY4hp+P6zEFa0+ecafg9tfQlKBWavgcaXTnRz8
         QZEt9Ek5yzw+fwuJkpoRdg9BD/pCEIFHr+BxONkuSgxLUn6wFu+/AlRowiinMFB6P2uj
         0WLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bOP7TlKt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 29si53772ilv.5.2020.06.01.14.04.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 14:04:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id m2so381405pjv.2
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 14:04:47 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr1433736pjb.101.1591045486114;
 Mon, 01 Jun 2020 14:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141553.1768675-1-arnd@arndb.de> <CAKwvOdk8PToaHMWVKV-6Uhhx6CNz15OWLOp_5RCERvdOisLrpA@mail.gmail.com>
 <CAGG=3QWwafjBUPaGLbJxyU7K65H0SnHBHZ-mnxtAC2A1xfjWYA@mail.gmail.com>
In-Reply-To: <CAGG=3QWwafjBUPaGLbJxyU7K65H0SnHBHZ-mnxtAC2A1xfjWYA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Jun 2020 14:04:34 -0700
Message-ID: <CAKwvOd=8iPixqQLweaaFSaq2+YKNxO_N2a-+nEK24M6CS3x7cg@mail.gmail.com>
Subject: Re: [PATCH] x86: fix clang integrated assembler build
To: Bill Wendling <morbo@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Slaby <jslaby@suse.cz>, Juergen Gross <jgross@suse.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Tony Luck <tony.luck@intel.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bOP7TlKt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, May 27, 2020 at 1:57 PM Bill Wendling <morbo@google.com> wrote:
>
>
>
> On Wed, May 27, 2020 at 11:04 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> On Wed, May 27, 2020 at 7:16 AM Arnd Bergmann <arnd@arndb.de> wrote:
>> >
>> > clang and gas seem to interpret the symbols in memmove_64.S and
>> > memset_64.S differently, such that clang does not make them
>> > 'weak' as expected, which leads to a linker error, with both
>> > ld.bfd and ld.lld:
>> >
>> > ld.lld: error: duplicate symbol: memmove
>> > >>> defined at common.c
>> > >>>            kasan/common.o:(memmove) in archive mm/built-in.a
>> > >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>> >
>> > ld.lld: error: duplicate symbol: memset
>> > >>> defined at common.c
>> > >>>            kasan/common.o:(memset) in archive mm/built-in.a
>> > >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>> >
>> > Copy the exact way these are written in memcpy_64.S, which does
>> > not have the same problem.
>> >
>> > I don't know why this makes a difference, and it would be good
>> > to have someone with a better understanding of assembler internals
>> > review it.
>> >
>> > It might be either a bug in the kernel or a bug in the assembler,
>> > no idea which one. My patch makes it work with all versions of
>> > clang and gcc, which is probably helpful even if it's a workaround
>> > for a clang bug.
>> >
>> > Cc: stable@vger.kernel.org
>> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>
>> + Bill, Fangrui, Jian
>> I think we saw this bug or a very similar bug internally around the
>> ordering of .weak to .global.
>>
> I think that would be this patch by Fangrui:
>
>   https://prodkernel-review.git.corp.google.com/c/kernel/release/9xx/+/292011

Thanks. That patch references this discussion:
https://lore.kernel.org/linuxppc-dev/20200325164257.170229-1-maskray@google.com/

>
> -bw
>
>>
>> > ---
>> >  arch/x86/lib/memmove_64.S | 4 ++--
>> >  arch/x86/lib/memset_64.S  | 4 ++--
>> >  2 files changed, 4 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
>> > index 7ff00ea64e4f..dcca01434be8 100644
>> > --- a/arch/x86/lib/memmove_64.S
>> > +++ b/arch/x86/lib/memmove_64.S
>> > @@ -26,8 +26,8 @@
>> >   */
>> >  .weak memmove
>> >
>> > -SYM_FUNC_START_ALIAS(memmove)
>> > -SYM_FUNC_START(__memmove)
>> > +SYM_FUNC_START_ALIAS(__memmove)
>> > +SYM_FUNC_START_LOCAL(memmove)
>> >
>> >         mov %rdi, %rax
>> >
>> > diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
>> > index 9ff15ee404a4..a97f2ea4e0b2 100644
>> > --- a/arch/x86/lib/memset_64.S
>> > +++ b/arch/x86/lib/memset_64.S
>> > @@ -19,8 +19,8 @@
>> >   *
>> >   * rax   original destination
>> >   */
>> > -SYM_FUNC_START_ALIAS(memset)
>> > -SYM_FUNC_START(__memset)
>> > +SYM_FUNC_START_ALIAS(__memset)
>> > +SYM_FUNC_START_LOCAL(memset)
>> >         /*
>> >          * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
>> >          * to use it when possible. If not available, use fast string instructions.
>> > --
>> > 2.26.2
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527141553.1768675-1-arnd%40arndb.de.
>>
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8iPixqQLweaaFSaq2%2BYKNxO_N2a-%2BnEK24M6CS3x7cg%40mail.gmail.com.

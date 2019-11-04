Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5GLQHXAKGQERN45ATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E48CBEE6B3
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 18:55:01 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 198sf720620pfz.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 09:55:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572890100; cv=pass;
        d=google.com; s=arc-20160816;
        b=YY+UmLeVphViO5LTXflgZTtZD/4egFtE3cTYyN7CbVxrh9GAq3ygS7WYjeBIHfHQso
         vd6cs4GIiU8Ak+G2PNgF+uEPvLjMIaJvpmDLPnjx7mvdL4UB5hjxM3bkUpINIAMEdldc
         +iptpqlC0ZHy49qVWXqxxA4P9EX9hwpYJbeJj/nwqIJfFq5xcNHWEWjPQcU5p0AXzocM
         n5EMgBOnmNPPyCeOuGg5RoLZro+Yfs/CulWs/hazQ//GODMe/a2eqJpxxQwaO9xW6FSz
         xPNYiSE8o6ku1xg3s7Yh7771b58kPUumZ+PdxOpJefcG3oz1jX6uZGjflzru7x23VTZR
         YnDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dTjKfdv+4LuZy+NQSp83ULr14UZmTnrF51cpQoxdo70=;
        b=QDZFtZZMzntfH2LhZtur5wHybNDmkO5G8GVJ9Fm7ftx3c509JHuDfBkM28JgEA8i/N
         cV1WhhKhQ3O/01zRlFWXNJS+Sy0IzrMZOktS1eGAs4o78O4a3Ho49lBGLwH0FFptOhxb
         nr3+M+ABR1UiDlMc0oXgwDVzK5wi4U8iHkV/3db6HpJng+G1kkKIsFRye18IcS3nEUT9
         irDwlqAi5vFhnOFvKY8jT9vq+A+DnxWuXkoUvSRdABVJzKJJ8AUHAGTM2WKviQA7El3G
         +5DUdD9Q/6sBsTdFCn1rJKppMRixF7RwkaKEYQegRWWdm0ZOWG6bvkWLZ3Do30Y65edK
         I3Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ch8gLdyF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dTjKfdv+4LuZy+NQSp83ULr14UZmTnrF51cpQoxdo70=;
        b=rOxNgLuB9gNcfgKt/GSfwyzKzqCzFefstnNoN1zt6R+wMshwXr4A8tL9Med2WS8sTx
         MS01l0imrEKcxA393ZdSan8G6jYX2wZP67UvRN5F57H/FHHC9cN9jX4pT8S4PjolSqka
         oXn9ys7REKxA5EQLErKhSz9B+8I7gUDqzW4OzFUs3F/WWvo0qfbn49qucBW4Bd8uApof
         8a0RXpGlFcBr+18STnCzXQ3CyESgNv2m8CqMjPF+exWer+Y3HXWYzDFw/pvdKFI2OfOF
         IFxL3qE8OZ9eLSjxnXlChYHXyT1bYKGkXTcrED7+0oClt1vhAouXzmR0p7o5FxBYThep
         ibmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dTjKfdv+4LuZy+NQSp83ULr14UZmTnrF51cpQoxdo70=;
        b=Ili9co5BTK0Lal4/Nhe10xHjn5zE/KdZhYIssdAZqVkpWgL2CKM1+VWPTwXuFZFqce
         Gf8UQ5KAUBOjZ5eIpykfBctnYaKbdYObRRXb/HzRVoWuEaG5xFnZuEbaXFmNzZxQ5rYC
         3wjOAbPlu99Sqcmh2FqGs5hcIW7GDWFZyP83DJHcSVrtn59mYVWdkIfVKhB5WSK73QWr
         lM+zPPCikuO73gKqL1s6nqoc37P5CK6IM9IW3MWYORlBw0qUbEB2ysrvC4YIO5/rc64K
         993tA2goE0Ui0wz49QVkS0ZCvXwf0oMKlGoYpwoFNVD8GeAPi8PsVh4VGDmqiIOxOYV1
         cCWg==
X-Gm-Message-State: APjAAAUSIvVK1S2gUJymCKPi5P0eerdXLJNR335TFFOKtH2+ExwReeHe
	JLCDOTbVueU0lJ6VFoEg850=
X-Google-Smtp-Source: APXvYqzioMaTd0MOWG1LZHAoFhg/uI1cTlvtNvpp8YTOIMCLAnjkWN8tvmXGUXGnZnYQKcMDLiDRTQ==
X-Received: by 2002:a17:90a:1f0c:: with SMTP id u12mr511258pja.22.1572890100677;
        Mon, 04 Nov 2019 09:55:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8dc2:: with SMTP id j2ls3618935pfr.8.gmail; Mon, 04 Nov
 2019 09:55:00 -0800 (PST)
X-Received: by 2002:a63:7c03:: with SMTP id x3mr32041580pgc.382.1572890100173;
        Mon, 04 Nov 2019 09:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572890100; cv=none;
        d=google.com; s=arc-20160816;
        b=t3twjs6LABogG/vjFAzb6BUYmwf+Y4QL2THiCKfSgw145hgetFh95TChLKtPgFYFu5
         6/SjMJUgYZOpLAv2qIfikEhGtk7Rrm0MXJrunry2sF2iWP3Y9gkfo3MYu1heSEugtyTN
         yH8zMgJ9dJKAqiICse+1hS8+67PHTfe13zpj3hJYji6yCCIAdrTDlLndKNFlJaDzYNvw
         dDLCWdpqL8LP25FZcdO5Hb7Yj3HuwxsG3bN1g4UrPZSu9skRwpXPsKX/P+FEigN1+rLO
         9hpo9cCX1D2115tnk2YqgQUCbCQ+oWIgtM5Aucu/u11AcDtQEwvBlwLCw9AWCgjBtCxk
         VGJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZmzRLDphDikcmJV+vVl7eKbcaiOYYnpVQWvquJPcMwA=;
        b=uTNdbtxqdJ8cTrBTwaoSVdLeq81kiLrwFnnI2xDgM5PgHOhpgvSnttg6NIh7Fvu0kt
         p5VOt40vhGTxAHc6swUNVGcGziTWElzADjcln8p3wC21nXBNxnal3KlRewx3Q2gjp3oI
         dACysTov42eKT3zO0wGQ/+JijCeQAvY9o0CJQoE95VrcN6ZExOKBxX33Ke28HD382eHq
         IVf/BNtsKJez2e/RJtTyaOjIHCpAQ/AyU+5npdSDepI3NuUIgOyvtxFgGS+tYoqRfC7C
         b1l/tpx/AUTTnH/ReBkQPId+Fn5w7QJXx5QkjZMoo2Kzv3oNR3jDEZdUEeizNVNGT59Z
         sdwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ch8gLdyF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s4si617606pji.1.2019.11.04.09.55.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 09:55:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q26so12774449pfn.11
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 09:55:00 -0800 (PST)
X-Received: by 2002:a63:d70e:: with SMTP id d14mr30873946pgg.10.1572890099234;
 Mon, 04 Nov 2019 09:54:59 -0800 (PST)
MIME-Version: 1.0
References: <20191104090339.20941-1-ilie.halip@gmail.com>
In-Reply-To: <20191104090339.20941-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 09:54:48 -0800
Message-ID: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: explicitly place .eh_frame after .rodata
To: Ilie Halip <ilie.halip@gmail.com>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ch8gLdyF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Mon, Nov 4, 2019 at 1:03 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> When using GCC as compiler and LLVM's lld as linker, linking
> setup.elf fails:
>       LD      arch/x86/boot/setup.elf
>     ld.lld: error: init sections too big!
>
> This happens because ld.lld has different rules for placing
> orphan sections (i.e. sections not mentioned in a linker script)
> compared to ld.bfd.
>
> Particularly, in this case, the merged .eh_frame section is
> placed before __end_init, which triggers an assert in the script.
>
> Explicitly place this section after .rodata, in accordance with
> ld.bfd's behavior.
>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/760

Thanks for the patch Ilie! Quoting Fangrui:

"This is related to the orphan placement rule. An orphan section is a
section that is not described by the linker script. The orphan section
placement is not well documented and the rule used by ld.bfd is not
very clear. Being more explicit is the way to go."
https://github.com/ClangBuiltLinux/linux/issues/760#issuecomment-549064237

Looks like Clang doesn't even produce a .eh_frame section.


> ---
>  arch/x86/boot/setup.ld | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 0149e41d42c2..4e02eab11b59 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -25,6 +25,7 @@ SECTIONS
>
>         . = ALIGN(16);
>         .rodata         : { *(.rodata*) }
> +       .eh_frame       : { *(.eh_frame*) }

The wildcard on the end can be left off; we don't need to glob
different sections with the prefix `.eh_frame`.  Would you mind
sending a V2 with that removed? (I know .rodata and .data in this
linker script globs, but they may actually be putting data in separate
sections which we want to munge back together; certainly for
-fdata-sections).

>
>         .videocards     : {
>                 video_cards = .;
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSo%3DBWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTHN2DZAKGQEIEXMILY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCCF16B11F
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:49:17 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id e25sf4945889vkm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 12:49:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582577356; cv=pass;
        d=google.com; s=arc-20160816;
        b=mo+UW8NVbaa1SqJ68QNdpq0YIEstbXfyrfcG8Nm9i6Ag+MFVN4YPko+wmIs7lmRObe
         Stz/XADVMKLyYFkoelcfPoM5jGohOwMbipgqSiYT2N177OsB84vC/x+jF/dnrnutUUcD
         OGhdyOSrFbCs7P3fewVI0oLLe9cokCbb1AIsFoeeVEgZGbXcW3A3WB1nVdwZ8KFVlcxy
         3bWWyMzda05JBfOfyaXid1fs+SqQfrle56MKqXxMu+Z/M1HxF8VJuU2Y6cknmuXv/RMP
         U+e7lbT1S7yv2IKrtUPZKHrS0SxEQZqbofa8LI1dGIRdgJm0L6m9shFpoNOg2hMSuD/u
         PQhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CsXEdqooD+FtMO+xIt177jPpXuLOvizBWytLuC1BA0Q=;
        b=oztPJwdnRZeu51pxXyxNkDbJte/d/0cwhxdIrMCwZvN4PzDpO/WjeACnonKHEQoGxB
         HNcWXHVlMg4LcphJK6QgMXp2J5o1UiT4c1M2mCAlEgE7SeNP4JkmCualcSRz/4PfWZQm
         nKwuWhZdWRTHTaNeQoExJnErJosKJuyDIQ5CG2fo9cpaRlQYqx0XSX5r0+Y5AorrQt4u
         UnyqdRpwcPVQ+5+bQi0siEso71nuCtSHtAYQ7oip7+ii4U3o7VJac08GSBqXdHo4FFQw
         5Iz9vzza8X3qp065kOLb/Wpi+ZOJxeT8UbxQ7pfbagKy+sWFQfkkOdmJ6Ily85wLQX17
         DaMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OczUm8C+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CsXEdqooD+FtMO+xIt177jPpXuLOvizBWytLuC1BA0Q=;
        b=gdLrTs2pcYArZLF6OnjQDE0x/mt1vIyu0/lMJsd1wKrVwZtPa/YgSNPnH7NEGYgLgG
         fkQQ4gj9V2sI53lz25KYahu5QOnNHoP6aqVs6Oc327mrBRwev8lTm48iZc5hLTJX8ooS
         aCF+JjJYBkrJbKp0wS5MJAFG/VsW9EGctZGDo5HIVsEfHhZ2pD8Bala1lXW23PrmkuSk
         Z2JNPOJQNRs2xP6nAHnvhn/KeO8wuszYE63X9UA4jdHPXo1DJiIiZEYAhHxS0h8QlsLA
         mnp+O82Mi6w2wl8akU64VEg05ONN3ENZPFcYYEpLUzPaRVkLR78b9x4kyeRrASBs9f1d
         tNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CsXEdqooD+FtMO+xIt177jPpXuLOvizBWytLuC1BA0Q=;
        b=SnSSyJJkvkS4xhRZO19dQ0dFV3Li3JSv/eMBMVrqSRtV5+9QH3VqAOcB7S9bFEHq/C
         fjJN9dupfycPE3E5CZXxKNRtlpmDpareuYRF1waqZ7rvphG0/UFtJEg+2QqSEunKRwFE
         fRAYsad/46oUKD0XQwZWckuXLIAAGju3PkcIsNcO9mmhHYhKoKfu+oofx60TU4rL2FTB
         mmAYwrS3NoemJWFJNI+HrNoMs0A9mXh4bYWdU/bc/yw3X+HcHYUm5wBWkLLsNNkLErDY
         DuFYhu31vCXEQM2S/oqysCsnQCpR7Gn2Q70kEMz5ETz6F+ogLRfbYVVYtE3QvZgJNJ5p
         L9WQ==
X-Gm-Message-State: APjAAAVJubfMNft5n04E+3L4chnB+pJDhItRoANvD/aslTE0S6qv4FcB
	VpweefrLftN/hSqaeZ39lSA=
X-Google-Smtp-Source: APXvYqxQ7Ouf0cB7I9PUnDoWmkofonkUnn9qCbU4Na02i4BSq+NCFW6j/ribr4zNE1rMy8g3Zy7DPA==
X-Received: by 2002:a67:d703:: with SMTP id p3mr30162543vsj.185.1582577356325;
        Mon, 24 Feb 2020 12:49:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls711836uah.0.gmail; Mon, 24 Feb
 2020 12:49:15 -0800 (PST)
X-Received: by 2002:ab0:1d6:: with SMTP id 80mr27144945ual.131.1582577355857;
        Mon, 24 Feb 2020 12:49:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582577355; cv=none;
        d=google.com; s=arc-20160816;
        b=A3bdAVvzDwAfQUY/NEyffu4cSnIoXc8YLhQYcjh1UVRBTpsjg2Rsy1C16+uEaFHeYE
         n3I5NOUms5NbbgHvcQ0uPrSuZ5ezdYhym+Zb+Kj6/NwS28BAjGVIHuYNGNi5rP9p+z4o
         nPw6MIelnZ7TLO3xsOoXDkgvfc7bGk3SWoJ+tGwt5bBhZ/QZf5AnQCYy6KyukaQVE6h9
         BGcSr9hHyxsVfxXwUZpOlCSdi30Pkc/FtN8Jv3E4V7XeTILDXG9p3NWzuYnrulp8yiod
         8j6w2oay4AA56k21njGxnAkR6Wz6SHF7FJWQ4stlTktpAwskdCO2QG8s9WBBeNvENgot
         Go6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Knih+VN2aCDc/a1HoFO7myAtDlhjV/MlW8P0R3Lsz6k=;
        b=CI3CmaVkgJM+EBpl+aRtzEYpFEb5ffVyoLEjffsj37ldwZ+n7OIMTB6fNKPUmz9xxy
         E3CGGnzCg73T6oRvW0PXR34TWY91Jr+Ea/2kObyeqOg3Brs53NquHJeHPYSfy0hipwVl
         HUX1MZyqVYf/54khvO+Z8DLvwUDjECAoVgGU/Gz7cdKgQiqVZ3D+wKoW3M5+lC26BT+w
         2whsRhRJYw5MotclA9uR2dK/UUbYcx29/zm/bHpQPkM9k3nqxjIzap99toTi9/PWr8eK
         7rotqteXwYkyhduXlwIsP0Z8VsZVmTZ718WqdoHFEKOgkmJoR8CBvX3ChO8ACWuHqCew
         q9gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OczUm8C+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h6si1139191vkc.3.2020.02.24.12.49.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 12:49:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id y30so5711951pga.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 12:49:15 -0800 (PST)
X-Received: by 2002:a63:4453:: with SMTP id t19mr17312657pgk.381.1582577354652;
 Mon, 24 Feb 2020 12:49:14 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-1-nivedita@alum.mit.edu>
In-Reply-To: <20200223193715.83729-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 12:49:03 -0800
Message-ID: <CAKwvOd=qVmb7UEzUSQ5-MUhpRA9Jpu3fMmmMLGdmydLoJV-kkQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Stop generating .eh_frame sections
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OczUm8C+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> In three places in the x86 kernel we are currently generating .eh_frame
> sections only to discard them later via linker script. This is in the
> boot code (setup.elf), the realmode trampoline (realmode.elf) and the
> compressed kernel.
>
> Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
> adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
> sections in the first place, rather than discarding it in the linker
> script.
>
> Arvind Sankar (2):
>   arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
>   arch/x86: Drop unneeded linker script discard of .eh_frame

Thanks for the series! I've left some feedback for a v2. Would you
mind please including a revert of ("x86/boot/compressed: Remove
unnecessary sections from bzImage") in a v2 series?  Our CI being red
through the weekend is no bueno.

>
>  arch/x86/boot/Makefile                | 1 +
>  arch/x86/boot/compressed/Makefile     | 1 +
>  arch/x86/boot/setup.ld                | 1 -
>  arch/x86/kernel/vmlinux.lds.S         | 3 ---
>  arch/x86/realmode/rm/Makefile         | 1 +
>  arch/x86/realmode/rm/realmode.lds.S   | 1 -
>  drivers/firmware/efi/libstub/Makefile | 3 ++-
>  7 files changed, 5 insertions(+), 6 deletions(-)
>
> --
> 2.24.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DqVmb7UEzUSQ5-MUhpRA9Jpu3fMmmMLGdmydLoJV-kkQ%40mail.gmail.com.

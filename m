Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ5R53WAKGQEUTJSOVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F03CED0E
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 21:57:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id d15sf2060463otc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 12:57:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570478276; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrOYDIxNdoN7CbxTyXTKYstm73TTm7TtzEF424YLljptIVHf/yRwmDDgIyunR+7uvR
         LoZ5QnvfMwl56uAix7xqe6luR3S4YZoVGyDpku5JErE2Klgh2sc+ecxAPd0LPtlDeGvG
         lzLn4eZKsv/HmtSZQtaTnwaxV6fyxMsfmjUmIHtuA5ArnVBoiR2sfYo3OiljEh7v52V5
         WcVuNCRWBe0Jy4C9MV2AUxT+eGeZdxZcMwXpa4GyVHCUlPBGB3zdDuiJlI/Xs1g/sQhE
         yAGK5fC5p4k5RKBFBZ04AaYm762QB+xVVMyq6RuOXqsoPKsf5Aigf1CgpeC0AbJjq5mO
         KmSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3jELtzqr/L3o/h9DkLSfZat2tnpmInF6BSVnazu8Qm0=;
        b=gYBde4RJS5xI3xir0gtrTZda9CLWzXTGuG0EBp7bWxTrBZoyr21L54kurG6wMc85jQ
         3HMUEEZFJtNS5fringhRncQjN82MQFpQ/6tee+SE2jJvOjG50YikLbrsrIt3Han/RS7a
         OZJ7qQjTCXBYyPasfPneYK/PZqhX3kxuIYegdigoCbql/40ZL8cBGF3UA6+uHe+in/hk
         sYgY9opDvkiv0b1xpW5Bz+Qm/W21oYujXxUYMtCSiNxIRffso14iGwW7P6pvt2fDHR0T
         LziwTnXhLwrf0I+rpSzv8tbjl64wGQunMImQKAa5ggpbhniQHi184qcfQbnmqFgqEQPA
         dSoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=igfx0QTx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jELtzqr/L3o/h9DkLSfZat2tnpmInF6BSVnazu8Qm0=;
        b=MHBlVvTTwrvSW5BSlvnMKfsYqJXrQyHuRx+y6FQvwZbg/VG69JUAV92VphHpsgFYaY
         4LNiWBbedViwZ0n74eczxmcJJ9Fyjdnx2OuLroMf3QccJAb5udjNZhXXUTmPPmmd+1mK
         XpVLXOLDMkFgsvH099QrvzQs9OPs5VQt2ztlmepnlvdaGUvsuUpj3I47lSkzO6u6vTTh
         VSmVxnqs/rnPlQNtkMOpcWyAf3h84W8AC+UUnTJQnwgBiIJCYE0NkCUA+HqgaCumMhTP
         4z4TPlS4xMBIWABKZErOYE31Bpc9m2EV9w1az7JyYLcbXELWpUOK4+1eSyGsyxVG1r3F
         2BvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jELtzqr/L3o/h9DkLSfZat2tnpmInF6BSVnazu8Qm0=;
        b=AEYZwW0QXdVM/R6P8JklEBjSqgMtfGYpDT+2IaXg5j4o2+Eb/4mMK5OtX8xZSqUoxk
         ADvA1gTBRqno8szl+St0v8kYgyWxQBX7HlyCD5zKVmFjBs+b0v5xQ68taWtIWHMVCcc3
         s5puOD2AtmFDrZHCkju82llVoc3JwbVH+ph8PKyprKYqAw5UJxSB6s4KRGhhb3hHfVLj
         fzm1SwvgtBI30/JJlYgUAp4Hc2U5b3SsS3Kj/EkrE+E4Ekl/OYgDpZ8KsRaAooaulpJh
         OuOkwH2x2CaXKXdR9rwFhVMMzGSO3lmQ4DcdSpGf+o0C5pPPPlqDfVgyBJtSOrILdzsH
         1LLw==
X-Gm-Message-State: APjAAAXTFV0n6Z6BlyhXFxkuePaU2KpvD6Gl+ty86Ti+YOh6YcgyvsJq
	YQ+RmU+kO3bFbKHdArjlYFc=
X-Google-Smtp-Source: APXvYqzstftWJg5/DA5YXEXnN6D1q0MogD2H5kPyNlrJdw32WqsUPUo99G4I7vAK6tDk8+Rjk6HemA==
X-Received: by 2002:a05:6830:1554:: with SMTP id l20mr22842101otp.317.1570478275798;
        Mon, 07 Oct 2019 12:57:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls178619oiy.12.gmail; Mon, 07 Oct
 2019 12:57:55 -0700 (PDT)
X-Received: by 2002:aca:df84:: with SMTP id w126mr847194oig.79.1570478275516;
        Mon, 07 Oct 2019 12:57:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570478275; cv=none;
        d=google.com; s=arc-20160816;
        b=t8PPsTLWvdZJzxb3nTIYWRqLoA572UIIAEja1TzQakjD8OxzsFjFqJRNcfT6KlEZ0/
         Ic6LqQrntsUL4rW0UUESPXkEpOAKIt8AZi/1ikMqPwvlLxwpsOTneIWyjY832qyZg5GU
         NeDjDPvQA0z2GOQmejEY7cfnFoBpJHx9jZW4+mHGGxZqLrETq4Ja40pgH5DviLBySg6C
         79pQENmXGHvRbz4Ee7t6ImvNdTFZ8tYr0gJHvkMy4UsLD6LITfhqkX/2kXcqI02C6I3n
         f6YGSj7OuWtb91J/Tp0d3Xhat1LuQhsst8c8LzBulFnbkMpMkRG+Ellt8MQ+Ir47WQAZ
         C5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Np1dLtH5+g3q/AtVMCx0wuJ5qYDTOY/aAWm/xM3OOGk=;
        b=qOt0x8RT22Ftntkku6Bxf/SJShFQ57xnbgIiKDsmdaz7sXs2up4p7Uww8x/1T5d5GC
         r8b7iRrGw/0zKyEQ8Ul9/FI43ipalkKiWQyeYSFRlDyR26wX9IRWSzEcwunzKNozkmTn
         2o8UT7fLapCyrgH5JX7yh1dmrt6BVeIMHxoAPIV02zDN+O/2mF271SDQxZS+TwoDVvxl
         jvUN5lYh0wiJc2CRTTglpxRMkyMPu1sLgYnf+TXkNVhj8eTcWCs6+hQn5dmi9udFis94
         GGvO5gDYgeMXVI6c6jFTeYYechHOnojnSmWIyCSsTflnblLIClFF6wLBqoCDRHtnGWub
         OCMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=igfx0QTx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c6si1346449oto.5.2019.10.07.12.57.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 12:57:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id w8so7368607plq.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 12:57:55 -0700 (PDT)
X-Received: by 2002:a17:902:820e:: with SMTP id x14mr30841969pln.223.1570478274285;
 Mon, 07 Oct 2019 12:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191007192129.104336-1-samitolvanen@google.com>
In-Reply-To: <20191007192129.104336-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 12:57:42 -0700
Message-ID: <CAKwvOd=hjxJYhU=C4wqkKKnLwuQjjL=wPAh6uBj-M8r8AtDdFA@mail.gmail.com>
Subject: Re: [PATCH] x86/cpu/vmware: use the full form of inl in VMWARE_PORT
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Thomas Hellstrom <thellstrom@vmware.com>, pv-drivers@vmware.com, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Kees Cook <keescook@chromium.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, virtualization@lists.linux-foundation.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=igfx0QTx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Oct 7, 2019 at 12:21 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> LLVM's assembler doesn't accept the short form inl (%%dx) instruction,
> but instead insists on the output register to be explicitly specified:
>
>   <inline asm>:1:7: error: invalid operand for instruction
>           inl (%dx)
>              ^
>   LLVM ERROR: Error parsing inline asm
>
> Use the full form of the instruction to fix the build.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks Sami, this looks like it addresses:
Link: https://github.com/ClangBuiltLinux/linux/issues/734
Looks like GAS' testsuite has some cases where the second operand is
indeed implicitly %eax if unspecified. (This should still be fixed in
Clang).
Just to triple check that they're equivalent:
$ cat inl.s
  inl (%dx)
  inl (%dx), %eax
$ as inl.s
$ objdump -d a.out

a.out:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0: ed                    in     (%dx),%eax
   1: ed                    in     (%dx),%eax

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/x86/kernel/cpu/vmware.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kernel/cpu/vmware.c b/arch/x86/kernel/cpu/vmware.c
> index 9735139cfdf8..46d732696c1c 100644
> --- a/arch/x86/kernel/cpu/vmware.c
> +++ b/arch/x86/kernel/cpu/vmware.c
> @@ -49,7 +49,7 @@
>  #define VMWARE_CMD_VCPU_RESERVED 31
>
>  #define VMWARE_PORT(cmd, eax, ebx, ecx, edx)                           \
> -       __asm__("inl (%%dx)" :                                          \
> +       __asm__("inl (%%dx), %%eax" :                                   \
>                 "=a"(eax), "=c"(ecx), "=d"(edx), "=b"(ebx) :            \
>                 "a"(VMWARE_HYPERVISOR_MAGIC),                           \
>                 "c"(VMWARE_CMD_##cmd),                                  \

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DhjxJYhU%3DC4wqkKKnLwuQjjL%3DwPAh6uBj-M8r8AtDdFA%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZXAYT3QKGQEB6L4N2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FF9204393
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:27:51 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id f14sf14365676pfd.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:27:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592864870; cv=pass;
        d=google.com; s=arc-20160816;
        b=IRcOl/3M9NJLQVmHNsgw3dufK76lNgwHxXXEBPk4Mdzu+7Al1HLIS/0gp9elDz1EPs
         XZBD923bowt0GBs2mL2OzrcrXa3X+TH/5fRyD9CbnKzUHAChcw3I4hIoxZ41FK2Bk0hY
         jaAfLrFydhqmXWTpY7xO/ztRfKO6oe7DwVerd+W4JgfSQywSbL5ZODyT///a1sOVF1B1
         u7J3AU6glqN/sZzZKmcVtNdxQAXv1D8P6e3JJ7EETlp4VDuCUtMFvRN3Tb46IrVMmd7A
         PGFDfTEpgcUvGTCvh6UPcHOm2FiLvMkksE1ZoozPvaqkYM10ipxsQneOLF+i9XA+2ypl
         4sSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=v/NUtipcnVfSZQzhkwUOIGDSSOHi2WJF0hn0N7YDB7Y=;
        b=mKFQVGmBIlC+KPH04I2namKKOSqI9nZWlXTz8W5d48qQqEi8jUj7Xc9yMfbZL4KvYc
         R+JdlEe5KAAvQ6rthIbrWbw4bH63Lq04yVp/N+ohFnDQ6C9MDM8hPxCOCGJidIwngPCH
         LUIintptDXEYXfN83fmAUvUZNMhzwmvJYwJITIMmibqDJwY5rdYJKR+rUvuAYCsBwcnO
         ZCCnJTBGWWI6gWcO5tLAA/MXEb6lj5MwE2sni5gqMOUJcCgLv5ASM9yreEMEvAOqdAVy
         j709/0FZ/e1cq9Jy+WqohETuzxxKTFwjCPJuuqAK+2IKfCWNULx65HWF4KFBY7Pf5vy+
         MQaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dXhvjxgs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v/NUtipcnVfSZQzhkwUOIGDSSOHi2WJF0hn0N7YDB7Y=;
        b=nqhPcoEJ0VG9MCOExwyuZ2i9mjyJt+W+4HWZz1lcFAaeSev7OkA+sKcEZUumqde4Qg
         4QvCeeUD/Wd5ubQinBKlc66H2+mLh66tqw5+KahScFHZAD0tva6GoPEs6xzHDlgGBrrc
         dzLxKS4OY5v9nMj2Ylm8jeDPoL9IxhjJ/jWXrfMaG0aPtQGVbX96R6v6/geO0gh/FVTY
         wrK6oGgQ1pKfAljs7gEIHB9s9T+gY0j8aPuFdXOGKgp5MNXaJVv4lW2AyzQAGvs7bSnq
         YSVEdlce/zO9X/Ey+zrCR0edBo2AV5KWnL/Kz2k/u0Ny56oLLVod82RLD2ycUkVQnHCw
         jXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v/NUtipcnVfSZQzhkwUOIGDSSOHi2WJF0hn0N7YDB7Y=;
        b=nQcLKOge7Gc193wOQJCgNwKaSwFbZUjdaZBb2PeZJL5sxnXOeKOJxw57W6Rq3DdOsC
         mnkdB43qPsOyRpRTwDYrywhLwnlFcHckH5pmY1O/FUl4O29KOCnLBBgdGN6Z9Zr8+3fC
         dCLrnqq0cG3Q5ecvhsP23y/3FnyLAKcTEGks9WBIw6RcktI68Me5efN36y8EDaSOEAA8
         iVl7mDfdqu6NAW1QYeZvtAEA8ih+8Sj63vmFM6AZAnBBRRE5PngBekMIatJF4e2NZJEE
         TCUlzhD0zJojjQtmqzAuxRstGHqZQEalaflHFYpkUeQEc2v5kO/ZjWzXxV7o6GjdGgIr
         WPyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533piVab1VqS7++AuBTr5mFLNGptfzChNXUDgiaiDIDYFf/HbwsW
	GkM/l8tqPBdysq3pCpwCttE=
X-Google-Smtp-Source: ABdhPJxc6Mn2exH68Xm7gNOR2cufbqiovNktGiZ9bCyqv4efnoP29fsiByp3mSmDcey25//b79OOUw==
X-Received: by 2002:a17:902:7896:: with SMTP id q22mr20722170pll.338.1592864870436;
        Mon, 22 Jun 2020 15:27:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b584:: with SMTP id a4ls1605632pls.5.gmail; Mon, 22
 Jun 2020 15:27:50 -0700 (PDT)
X-Received: by 2002:a17:90a:7608:: with SMTP id s8mr21767320pjk.159.1592864870060;
        Mon, 22 Jun 2020 15:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592864870; cv=none;
        d=google.com; s=arc-20160816;
        b=xL6X39edOJVqlM9wPdDQRT5wpeYXlFCk5puFOzITUCaF/2RtIxnOO8L2KnkxbJyF8k
         RBd+aUCaki3onrTqtN+v69VQzCh1xePgP58KExMquuDphFPvboZpBI724HBp2oihvKmc
         ss9RkyizgT6E+eUt+fX6tewGytxVKawnAU47KS40WZlaNzDeawmG4P3uzMePakxveewZ
         otM3d1Ij5Bz/FUYcDVrnVKt6BZtBM8MdHagw7Qd9bX8UKbgpq45J9+xQPkwITfq24JKF
         1+XkH/giKMLNdMN7BJ7M7UbTODW+gFSiDnne9VZ2EAy/Gsx4kTt3J6i/WPilR1S8K54l
         d2sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JI0wkwVCNwXzxyeXGfReWogDJ8TItG8DNO4AEUQrZHU=;
        b=wKt2cNuQJExjQSKFDmWVt2Uo7aYW+tUavomLFQICi5vBUi+z/kYSI3b3EA2eKqA1ZJ
         HocBoZ/hh1q3YcUyfUfDmK6rofXrBtRb08O+5Hj8p7xS0S25oLzkvbr1wegaiS8PZi8Z
         CIOInzpbTvR1FsgqMaszBk0KsHVIXJxBqUwo6+W+S/CagTGUkt1whlMc83pAHO9tQ/x+
         83kY6KUpNQc66zDP3+ebO7SeY6ZRlip3SOA1Ya+emKsXXVSKOmf0RjIKBY3xnTQHviQm
         6J8CMDwj5sMixnbBrzqndJUAybn3ypyIocSTQpmO5THnw99kuLzVRZiMCEvqH7Ie2a+4
         JREQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dXhvjxgs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i17si32995pjv.1.2020.06.22.15.27.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b5so9057611pfp.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:27:50 -0700 (PDT)
X-Received: by 2002:a62:2743:: with SMTP id n64mr21722151pfn.163.1592864869777;
        Mon, 22 Jun 2020 15:27:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fv7sm453463pjb.41.2020.06.22.15.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:27:49 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:27:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <202006221524.CEB86E036B@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
 <20200622220043.6j3vl6v7udmk2ppp@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622220043.6j3vl6v7udmk2ppp@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dXhvjxgs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 22, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
> On 2020-06-22, Kees Cook wrote:
> > For vmlinux linking, no architecture uses the .gnu.version* section,
> > so remove it via the common DISCARDS macro in preparation for adding
> > --orphan-handling=warn more widely.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> > include/asm-generic/vmlinux.lds.h | 1 +
> > 1 file changed, 1 insertion(+)
> > 
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index db600ef218d7..6fbe9ed10cdb 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -934,6 +934,7 @@
> > 	*(.discard)							\
> > 	*(.discard.*)							\
> > 	*(.modinfo)							\
> > +	*(.gnu.version*)						\
> > 	}
> > 
> > /**
> > -- 
> > 2.25.1
> 
> I wonder what lead to .gnu.version{,_d,_r} sections in the kernel.

This looks like a bug in bfd.ld? There are no versioned symbols in any
of the input files (and no output section either!)

The link command is:
$ ld -m elf_x86_64 --no-ld-generated-unwind-info -z noreloc-overflow -pie \
--no-dynamic-linker   --orphan-handling=warn -T \
arch/x86/boot/compressed/vmlinux.lds \
arch/x86/boot/compressed/kernel_info.o \
arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o \
arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o \
arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o \
arch/x86/boot/compressed/cpuflags.o \
arch/x86/boot/compressed/early_serial_console.o \
arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o \
arch/x86/boot/compressed/mem_encrypt.o \
arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o \
-o arch/x86/boot/compressed/vmlinux

None of the inputs have the section:

$ for i in arch/x86/boot/compressed/kernel_info.o \
arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o \
arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o \
arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o \
arch/x86/boot/compressed/cpuflags.o \
arch/x86/boot/compressed/early_serial_console.o \
arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o \
arch/x86/boot/compressed/mem_encrypt.o \
arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o \
; do echo -n $i": "; readelf -Vs $i | grep 'version'; done
arch/x86/boot/compressed/kernel_info.o: No version information found in this file.
arch/x86/boot/compressed/head_64.o: No version information found in this file.
arch/x86/boot/compressed/misc.o: No version information found in this file.
arch/x86/boot/compressed/string.o: No version information found in this file.
arch/x86/boot/compressed/cmdline.o: No version information found in this file.
arch/x86/boot/compressed/error.o: No version information found in this file.
arch/x86/boot/compressed/piggy.o: No version information found in this file.
arch/x86/boot/compressed/cpuflags.o: No version information found in this file.
arch/x86/boot/compressed/early_serial_console.o: No version information found in this file.
arch/x86/boot/compressed/kaslr.o: No version information found in this file.
arch/x86/boot/compressed/kaslr_64.o: No version information found in this file.
arch/x86/boot/compressed/mem_encrypt.o: No version information found in this file.
arch/x86/boot/compressed/pgtable_64.o: No version information found in this file.
arch/x86/boot/compressed/acpi.o: No version information found in this file.

And it's not in the output:

$ readelf -Vs arch/x86/boot/compressed/vmlinux | grep version
No version information found in this file.

So... for the kernel we need to silence it right now.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221524.CEB86E036B%40keescook.

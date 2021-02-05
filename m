Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBVN66SAAMGQEVXTPKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6716C310932
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 11:35:02 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id b62sf3585038wmc.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 02:35:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612521302; cv=pass;
        d=google.com; s=arc-20160816;
        b=v1rsyj7wIv/ENjwYRIDr552pkk9C0WtS9zY33e0etOawlWrKUHAk2rNfXhmlot39yR
         nAQ6Mqp+TqXOwH7bg5hEJN+7kso+mIM0sWfLMed6rRi4Qg/Xw21EKnPUUgsCDxVKgjXW
         Lzu+elICOOxXtxVuXj5kH65wedUOzsI8Mwp5wH3d84kF2IN+JHkzziUhsEpQ68ZSyliD
         B9Jw0QmYu4ZSHmldfj8D98lBYFL/TJ1yQTpm+6Nc/hFKT2T4JZt6N22d/1jNRdes5XpX
         yxaQPOFx89z5e8V8L7W5A3uQz7wD43UNY+eyGQr8fppi3LZjApC7GQjzmBYz7hdIqT8m
         Cirg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hXDFv+SJPsxH6D18aPqVOsL3KxMIR1/aS1E41QPf7Q4=;
        b=e8dwv0BESn2A7513XodFjaq76fw9mBMNDhDslquPnkWvbCUG5ovvNZO9+HQM3iIFry
         Pw/3Ar1HV5nx2FrmJdfZ6ht42Q9fjAv+JN05uITAemC8yegvGnt8WgkIp7CusL9ulZzJ
         mi7GolwcJA26eQiMnsNDsZ19e/vnSbbzjo2EyCQrmc98OXQHwJdGSQGO8fCLgDlmJzJO
         Kr8j85J37O0xoFQX9GbdEZom8AdgW2AJfP4OktzQoRqsrOP9cKPP+RKdAITRxFYW4edx
         1MxNhbgQMJf3fSGuQzMIaUsgxj3WSZRUq7GnBGu3bly2lZl/WLggYenZ+xnHrGvv10Yx
         A2sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WvoLruU+;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hXDFv+SJPsxH6D18aPqVOsL3KxMIR1/aS1E41QPf7Q4=;
        b=FKHUb2xK8eiy4QkegGnRH3CKpevfckeOU295JXLkHTmXdQYijuQisl0OW4xT/1VhbX
         8yvzm8UckWU/khEej2zK+kDeN+OAxM1dIO+3ftiPHTHgrROtnCMSI4p1mB5EH0Swa+WD
         jIqCXWK5gnSd5WkN8bSGGta5mKvtJR9PjRJ4nGh7NJtiuIrpWxNmPgJETgRqAa9yINP9
         xcMg03CYyFeHJUU77cBIc1eipI1QJnGGE2r+UadtViQtYPrlgcADCajFBmuQs25CqeBG
         bPWaKKe8qgY8d2/VwmoIm6NRw4WMMmdRoHACbAgmLM6xZq2qdCvlo44kyHj65zCyVBAj
         Mi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hXDFv+SJPsxH6D18aPqVOsL3KxMIR1/aS1E41QPf7Q4=;
        b=hXoZ5DyQieHjzgZUB+6nnVrBVVPFQ4NV2odbaVDpjvODMTHYhyoxenkJ9EW+QOBWVK
         nbyn4usgLLXCbOQr3FGeMJIiiXbm2n/maAH1Id/dcMJfnN5vFmZ2+RYqdaZewm525emA
         knjTEdm+xewu4LXvPaE3MNx61W8V5ac1xtNCL7qwAswD1fIVeC4WqpsZsf8KKHab55LO
         ewmJv5J7rZnuLJPDmR+5WF5uA8ZqINoRuG7QB7VovfEPmm63Cwxu6GQvGLq52Ek+i/M0
         kZ29d6p1Za5R3I7f2S/Tq+F8XTrYGc1UusA4kcGP6X6mYP5+Tbm/S5hA2VYYkDIXXuSa
         DNqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lhUOTrO9G2iIqHemAmh4pkHFGOpGlZch7P7X0vNbzCXuQgJXR
	IOa2X12BdGGUgJRCKCiwI40=
X-Google-Smtp-Source: ABdhPJw03lh+W69lkGuRiI90dXXj4bOH7g9gecMkL/EgjyH8O5Md+zhJ6BswoNJlBj8hMzVUGIY16A==
X-Received: by 2002:a1c:9c84:: with SMTP id f126mr3092630wme.152.1612521302117;
        Fri, 05 Feb 2021 02:35:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd09:: with SMTP id e9ls3814102wrr.0.gmail; Fri, 05 Feb
 2021 02:35:01 -0800 (PST)
X-Received: by 2002:adf:fc86:: with SMTP id g6mr4259091wrr.20.1612521301304;
        Fri, 05 Feb 2021 02:35:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612521301; cv=none;
        d=google.com; s=arc-20160816;
        b=Yhs9p4U72TvalCPdp9lwkMAdofvnpen0JHesmKtrR9Kzy7pFndbnDbw+rRFwX3Bp+l
         dQyf2iYVMpPmusIzIdF+QYKCxITm62As5WdzCaQvNp2jJ8qymUtOrvl5nYjeYrTIL24K
         wvJa36ySA8ncyyB3muzswAG9YFr7xREF/QBwjqEerqxOvrA/HI7r5s1fUjkXXlnso6Ol
         9YL27P6/1I084nOqc3cfR51xDaIuII4Oyqa0+Ur6vBnVYtZGxHsB2iNuB/nIgYraDBTG
         2MreWh7zFmQXSuPZ9E+b62JriveVLQQpwGz7oh6B/lA9PoP2N5ukCGcMCsy1H/jzDZLR
         pc5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mpQ2H03vRziBvKFdKZ6tUIGAARtxtvomCBNzTQhxNf4=;
        b=vaH5TbUTy3YrCzBQ5ybejkk6r/IiDb40KWRHIuvLJSk/E6/tWyRX3gnvTxAEJPIRAT
         PlOV381XymTUMLzYjUWPitT/1u/wvBPPQzmUfYSEb+WxlfnGVASKPMb5dViHx/at7/LH
         FzXb0BWnfS4uJwRcZ5WmUGjLF5+tSuLtyGpslVOIbu7cj6m87ioKIC28CkQUWp09uhnG
         9LfPbhJAdL7FS9FeSmXz5dN/cuCsh/eazM7rbZUrdJwnh/tZP10LWKT+epY24VJIKv5O
         7CHBx8kGs/dLxQdB+tiwAQ/yTVi/l1Y0a3MEf+K0o9AvNmqNQXC0btLeEKLOrlmer4do
         1UFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WvoLruU+;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id t16si988979wmi.3.2021.02.05.02.35.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 02:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0bad000b74c3ca4e4ea61e.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:ad00:b74:c3ca:4e4e:a61e])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B044D1EC04DF;
	Fri,  5 Feb 2021 11:35:00 +0100 (CET)
Date: Fri, 5 Feb 2021 11:34:57 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210205103457.GC17488@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210203185148.GA1711888@localhost>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=WvoLruU+;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Feb 03, 2021 at 11:51:48AM -0700, Nathan Chancellor wrote:
> x86_64 all{mod,yes}config with clang are going to ship broken in 5.11.

Dunno, it is still broken here even with those build assertions removed. And it
ain't even an all{mod,yes}config - just my machine's config with

CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
CONFIG_UBSAN=y
# CONFIG_UBSAN_TRAP is not set
CONFIG_CC_HAS_UBSAN_BOUNDS=y
CONFIG_CC_HAS_UBSAN_ARRAY_BOUNDS=y
CONFIG_UBSAN_BOUNDS=y
CONFIG_UBSAN_ARRAY_BOUNDS=y
CONFIG_UBSAN_SHIFT=y
CONFIG_UBSAN_DIV_ZERO=y
CONFIG_UBSAN_SIGNED_OVERFLOW=y
CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
CONFIG_UBSAN_OBJECT_SIZE=y
CONFIG_UBSAN_BOOL=y
CONFIG_UBSAN_ENUM=y
CONFIG_UBSAN_ALIGNMENT=y
CONFIG_UBSAN_SANITIZE_ALL=y
# CONFIG_TEST_UBSAN is not set

and clang-10:

lib/strncpy_from_user.o: warning: objtool: strncpy_from_user()+0x253: call to __ubsan_handle_add_overflow() with UACCESS enabled
lib/strnlen_user.o: warning: objtool: strnlen_user()+0x244: call to __ubsan_handle_add_overflow() with UACCESS enabled
ld: init/main.o: in function `kmalloc':
/home/boris/kernel/linux/./include/linux/slab.h:557: undefined reference to `__ubsan_handle_alignment_assumption'
ld: init/initramfs.o: in function `kmalloc':
/home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
ld: init/initramfs.o: in function `kmalloc_large':
/home/boris/kernel/linux/./include/linux/slab.h:481: undefined reference to `__ubsan_handle_alignment_assumption'
ld: init/initramfs.o: in function `kmalloc':
/home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
ld: /home/boris/kernel/linux/./include/linux/slab.h:552: undefined reference to `__ubsan_handle_alignment_assumption'
ld: init/initramfs.o:/home/boris/kernel/linux/./include/linux/slab.h:552: more undefined references to `__ubsan_handle_alignment_assumption' follow
ld: mm/mremap.o: in function `get_extent':
/home/boris/kernel/linux/mm/mremap.c:355: undefined reference to `__compiletime_assert_327'
ld: mm/rmap.o: in function `anon_vma_chain_alloc':
/home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
ld: mm/rmap.o: in function `anon_vma_alloc':
/home/boris/kernel/linux/mm/rmap.c:89: undefined reference to `__ubsan_handle_alignment_assumption'
ld: mm/rmap.o: in function `anon_vma_chain_alloc':
/home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
ld: /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
ld: /home/boris/kernel/linux/mm/rmap.c:136: undefined reference to `__ubsan_handle_alignment_assumption'
ld: mm/vmalloc.o:/home/boris/kernel/linux/mm/vmalloc.c:1213: more undefined references to `__ubsan_handle_alignment_assumption' follow
make: *** [Makefile:1164: vmlinux] Error 1

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205103457.GC17488%40zn.tnic.

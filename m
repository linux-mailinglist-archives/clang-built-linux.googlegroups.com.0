Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZGJYH2QKGQEYUNXEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2A11C4671
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 20:54:29 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id f3sf9591010oob.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 11:54:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588618468; cv=pass;
        d=google.com; s=arc-20160816;
        b=ksn+TQsVLJB2pRoCWCIAbMZd/z2nCkVNon0Avu/psPNsg/94+Iy6BmkBs4KpUGK5zH
         VGp+OjR+rM5efq7yVUm9v5JMziV4iCM+Z+ulBoWWPpXrAIPKfi/UXS+ZOb1oGkAMD09j
         CGzVlXiDN+jyudLCIyyrkjB67SH96ipS6oCWuskY0A5A/zwOSVRFs/J8r/Y9cAHTRWzc
         l2B97qamMISn8eTsKfI/nzB01smUzf9D6U/GV6xRomrOdLjlXZbbeis56rrWWm52pn9U
         JyQMEyHKWxHqqdgmk+51UpzK7+VOfvG0IHLJUEh5vzY0LwJ/+s4ESB82SCUp961LDzgD
         6Ccw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uqtpjxpUTk2rC2TMDQHPdxVhRrRAQvwa3zkjANJlztQ=;
        b=b859iLG3NmkLAvCIp5gr79EwaJy3oMnLCndRklAecIfb98eW83QC5Zs0yD+/eETu+Y
         HdgdguGfj2S66BWn6xIGBb2+yMVMZCVNapm1Dak5Z7kMpd4PKbjpHxaPe0DW8J7nqOVq
         GncXNb8uzJJfa8g8EX9uk6zU+V95ERJYR/hcg7yy/m2+4NZyBOEBUJPomcCbo/jdlt4U
         B+YMPxanDfbklTOlIHOQelRWcAMhsSihKVmI+KD8PUotA45EesJvuvEf06qyzHvFl2xB
         DHSd3+IpZ0z8DDxBxSb3vTYQnRFdQWoE5CGYa/RFFk+upDyo1yM04T3qiXnwDIPIQf5J
         zuCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FgSwhm2K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqtpjxpUTk2rC2TMDQHPdxVhRrRAQvwa3zkjANJlztQ=;
        b=L2Agwx2bDbQ/nJPR1SycCXWbmPZUsLRKxv4hj0XzglhC08MrSSVrGoP2kn+YCzZRCH
         jT5PS5DwS2zWx/KDhzGoetGXoeHKs/DQagMYpHDfX+I6rNAMaehfGQz/Uh/BbZefwHQI
         92C+nX9u500d1CdiC7EzE5byjyimVNKdC1QGIOW6RiyvV/4aJmMJtHatOsIJ5BsZn0RN
         8wtvlyN8+ergPCRVokp+DeTgkWe7U3+Dob+WJfrpSf29Cu0oNl2/ZlxinjsR6rw127eo
         fF9F1pd0R1iwM0VLPOMg3NIdhv4uXx561VIea69Kkn7M+1pJXSt4Sz26pjW3JRpSQJrC
         uH6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqtpjxpUTk2rC2TMDQHPdxVhRrRAQvwa3zkjANJlztQ=;
        b=Xi6Cq4UNJuYbZ6qywko9/1fmN4knyqZhxABd7BRokDQe+Q6yiQooF41CPQU+/exVZ3
         Zhlx9rf+YgIT0kcVpOFyS8hUw0xk+2uWsfQjRFqZ3lzyFdlgzy/BQmL4Yz071zOMQWhK
         m49jTNe6IH3fIiBnEcNy87LXa1e7Wxc4dVcIJS/mvn/Tg6nqq2xK6+QHeSfi8bVg0+7i
         gVh8ganNhkm/M/G9tDSqxWnfjf/cEzL16Rw592SUlf4hL/iXIW8TYMC/Sokb4Fr3qkP9
         QBvRWM1nw7v518sJnGzeoGGhorZZaTTscOZdFgacDQTQ81gO1Cn076zTEkqb9kX+ZcHs
         7sVw==
X-Gm-Message-State: AGi0Puar63hsntj2dbEqy8ajObU8soh80ctG5xBf5qDYRkDedPli/XFf
	/OcsSumgxDkmKissAhk809Q=
X-Google-Smtp-Source: APiQypLxmtJwFWuqlzo49HgtNADzvnoTkZopVLMBHsMH+zgu/r4NfsV6AVLSlrwHZA0na0I1BPLxbw==
X-Received: by 2002:a4a:b78f:: with SMTP id a15mr16328165oop.59.1588618468620;
        Mon, 04 May 2020 11:54:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c748:: with SMTP id x69ls3261043oif.5.gmail; Mon, 04 May
 2020 11:54:28 -0700 (PDT)
X-Received: by 2002:a05:6808:207:: with SMTP id l7mr347200oie.67.1588618468290;
        Mon, 04 May 2020 11:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588618468; cv=none;
        d=google.com; s=arc-20160816;
        b=x5nJKt90VcOyS561rYEUA7vMi8acR8byKOckSE4ny4dFaaJEG0OkIZumsRalxVtjOx
         2QIFzjsOPSLyFt/U36s1QdCerM9R0tvPAkeaqpTenYS9qBbhIGC3hqrv1d9pNhrRduzr
         S491p09D2C28RDD7YPGB/Y7D/P+OuZSwnVqEAl2fdBFSfKU1I07LSRqZIizxr7GFpCS7
         3ZMZSJFmoLxtx2FEigFb2HgfpSgR+E7ez7oZP2WSQ2jwvVg+k5iaLqj0ByLMM0qPqERY
         43A28CDLOrtZmtZT9oNdIAiGLgdZ6APaHr8wz2J3TmNJMxxgSdwaPGvKUgRWquGMKCjj
         K5mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WF2Nx60Nb0TFwjbqt9jYYkxk4UjZBSwB8vrR9NKUEjI=;
        b=HgaWX2pABDv207wjxI6EU8m1OVbKnQUQ75uWxOlhJ3bKMU9p3Z7mITQe75sYiIDK8y
         RhgGOd7b+iURJ/kfXyv2KSecLyEFaIlIAKCNobIOGULciP2vPxjV1LaXuo/NTCQXSkol
         HGqoOet7LdgZNq3CSRSNUMyiq69LBWpZzo4GRO+dyefCegwCicwNKHhFq0qQFjJzN4vA
         VMxwwMIlHfWvRe5bpBaX/0/wuAcg+6tp5kAH8CYUmBlgR53DkyjwjfD+r7AI9tpojXi1
         yp/EqVMqXFOZviZECBgyOzxBlN96DBlW2IeEbhMmGXSX+IOh3w50373wwpuIB0Oq7BHZ
         +pCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FgSwhm2K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i22si680287oib.2.2020.05.04.11.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 11:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x2so5978552pfx.7
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 11:54:28 -0700 (PDT)
X-Received: by 2002:a65:5ac4:: with SMTP id d4mr310230pgt.381.1588618467214;
 Mon, 04 May 2020 11:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200504081605.32624-1-ardb@kernel.org>
In-Reply-To: <20200504081605.32624-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 May 2020 11:54:16 -0700
Message-ID: <CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/x86: work around LLVM ELF quirk build regression
To: Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FgSwhm2K;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, May 4, 2020 at 1:16 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> When building the x86 EFI stub with Clang, the libstub Makefile rules
> that manipulate the ELF object files may throw an error like:
>
>     STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
>   strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>   objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>
> This is the result of a LLVM 'feature' [0] where symbol references are
> stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
> causing generic ELF tools such as strip or objcopy to choke on them.
>
> So drop the .llvm_addrsig section explicitly as well, to work around
> this behavior.
>
> [0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817

This page also has info about the extension:
https://llvm.org/docs/Extensions.html#sht-llvm-addrsig-section-address-significance-table
Peter, do you know if it's possible to prevent the emission of this
section from clang?  Scanning through the sources, it looks like it's
set unconditionally during LTO, but I couldn't find where else?  Is
this section required for more than LTO?

We need a generic way to disable LLVM extensions when we're not using
the LLVM binutils.  We have a couple cases where `-no-integrated-as`
will prevent AsmStreamer from not using assembler extensions, but in
this case it's the linker+objcopy+strip that don't work with the
extensions.

>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Arnd Bergmann <arnd@arndb.de>

Do you have a link to the configs or report so we can repro?

Also, scripts/get_maintainer.pl should recommend our list for patches
mentioning clang or llvm, which is a wider audience that can help test
and review.  I've been out sick much of the past week, so I appreciate
the shared help with code review.  Of course if your intention was to
be more discreet, I'm sorry I may have just messed that up.

> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/libstub/Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 8d246b51bd49..4d137615a666 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -66,7 +66,8 @@ CFLAGS_arm64-stub.o           := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  # .data section of the compressed kernel to ensure initialization. Rename the
>  # .bss section here so it's easy to pick out in the linker script.
>  #
> -STUBCOPY_FLAGS-$(CONFIG_X86)   += --rename-section .bss=.bss.efistub,load,alloc
> +STUBCOPY_FLAGS-$(CONFIG_X86)   += -R .llvm_addrsig \
> +                                  --rename-section .bss=.bss.efistub,load,alloc

Do we only observe this for x86, not ARM?

>  STUBCOPY_RELOC-$(CONFIG_X86_32)        := R_386_32
>  STUBCOPY_RELOC-$(CONFIG_X86_64)        := R_X86_64_64
>
> @@ -111,7 +112,7 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
>  #
>  quiet_cmd_stubcopy = STUBCPY $@
>        cmd_stubcopy =                                                   \
> -       $(STRIP) --strip-debug -o $@ $<;                                \
> +       $(STRIP) --strip-debug -R .llvm_addrsig -o $@ $<;               \
>         if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then            \
>                 echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
>                 /bin/false;                                             \
> --
> 2.17.1
>

In the absence of a linker script where we can use `DISCARD` rules,
this looks like the best approach, though I'm still curious about ARM.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w%40mail.gmail.com.

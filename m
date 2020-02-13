Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHGDS3ZAKGQE3SJZLNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 274FD15CB10
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 20:21:01 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id k27sf4346518qtu.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 11:21:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581621660; cv=pass;
        d=google.com; s=arc-20160816;
        b=LovL3lsP79Xcl581kVsfw2+CNgxP1XSg5LZyidqxnelnOiohJ7f2OEnMlHmGufeQGG
         lGZkx6lRxTO24hobi/VZaSCyPGWBItEiPJbU11Yh6JsasISVsvNZcxNuxuhRRxYU7HtM
         rArBdKQ+QxXFBAdNN8a5CZmxo1ExlqNTVHyF2bPFR/BWRXW2CbjhB73cLDU49lQtvcyi
         fo3iUIM41CHgI3yrB7CSJlMcZhvxKXYhYh0j0R3hQi6l6OZ8iec5/mgAv6Vr2Ol/6pJs
         yIPY+u0WmFUuW9o7LpFwHJrd6a+a04MwXGVBpBYErnJqfDVNvT45bKcIq2EWPqMOg/0f
         NB1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VUPNqrZ+J0pIEf/6auheGddZS8GHt+Y6cU6lE07HBBk=;
        b=xhOxUAkXol1Gf++XN3mNcXmtbjDglOSk9qYhPEVlCOo0CQhXgNhS1a4YVYj/Otw/qh
         sGNsFa6Jv96O/xhqIP9YhzkO3L1p/4y/HCgtmcCiinECCdfXDtgQ2GG//PRl+37hGhyQ
         aw6PscpsLmmVYX6I5HCTGXmYJsX1cuQNTsS3G1DrFf5kxCrTCobiz8KARkvmS0Wl/WXW
         Us9Bv8/HT7uSz9guiceWGGjJdnnm95N4nqohGUxI8XtCLSC3sUKKYo2H/Q+c9zf1zdIn
         XOHKkd3obM2QRLeNAFWdm7ku73oe/LedNKbf1JrTrf1IYIdJMb09W51cFkfMm1pNXBiU
         FeCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g/GwqTcH";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VUPNqrZ+J0pIEf/6auheGddZS8GHt+Y6cU6lE07HBBk=;
        b=qTAL6aE/0tDdDmCMYVWEZezx6lXJrqPbNTZpxDn1GAUbGu+yiuA1Dvj2hKAyWtfAaj
         QWA/5b/dEJfJoW/+goWZRyrJ4GFwmOazTIsisjfRf3vJf51oGojwmVRewouaGG+Q9Hp8
         VGKK47r88RvnoB0gCRfxWQ/Jg9GDiEwq6kXFgGCOc3Y1LHeni5H0QFB7VaT/27dw+tiP
         Tm5MeFDtiYY55iCaJv6U3LujJuzWqFi9ZwOAaNmkmWfMfwuO4LnupKde30vD3+8GGn54
         wp18VUV0U0itXdbkplaRK9LonBxfOqvq03X1yKguEW9EtQ5GF3pSvyY7LNI27letPl7D
         H0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VUPNqrZ+J0pIEf/6auheGddZS8GHt+Y6cU6lE07HBBk=;
        b=nJbL5RsIEHLdu94u+DXSyOF/NNpXxGft9SFCoX1SVGFr1gsN9kV831fCqFBICXF89R
         /y1GmYh7iOO9LKWKLO7ziDtb9SRZ+OnvQ487VaNjr5MAludX05wAcxounteBuvCZVhb6
         MR8+7JMZfIeWyzKsx13zitzX3nGEVIwn/5bzuRzx6x2SCNIGtSjXwJ3cvWBrjrpw/hFy
         o5i5aD0D1v7UCPNaPmj6HVL4C6jbZJdEgn0kFBdgb+SEiZo3LIyXcQWva/gvKPdvn3O/
         OeRwFRMVXqyioOoHgXRBi4LH3vPvD5X/57pArfbiaWCuzxh6EcLM7oRM2ssaCcxToMB1
         AsSw==
X-Gm-Message-State: APjAAAV/rUczOqyvYYdnR+WLY2BY8qT4s1NtdPEYrdhbvpGCsiX27/hT
	Ev34ShZ1g7r+kAzqtclMNnY=
X-Google-Smtp-Source: APXvYqzvd1/Bdw4cUNqR6pCKsAcTImZw6UAIc2X3xqrIICv/mtqDaGtE6NZ1M8cxNUNv7f764OjEcw==
X-Received: by 2002:ac8:32e6:: with SMTP id a35mr25622713qtb.100.1581621660201;
        Thu, 13 Feb 2020 11:21:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c30e:: with SMTP id n14ls4249980qkg.3.gmail; Thu, 13 Feb
 2020 11:20:59 -0800 (PST)
X-Received: by 2002:a37:a404:: with SMTP id n4mr17327995qke.247.1581621659853;
        Thu, 13 Feb 2020 11:20:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581621659; cv=none;
        d=google.com; s=arc-20160816;
        b=CpSXfP+CN6ii4Hn39X3+CxDgo6bbzg0QOWl6c+7gV77dTp0sAwpH+bWfpdVXTRAi20
         0mgmG8NQjNPvv3cjVaV5vpuwCMIDtADzuZD+glqJSLVKq4AYsGCK5xtNrvkBoNlgrJ3z
         Yur9QwKbt2x4JbVMvgHfpiJQi5iTp6BS4HcWUohN5bwBLtcBC77guYALY80T8PFgq5wM
         N3H24P9+U5uLwm52m0ws76fjcFpsueXFnQk9BpXVjHgEbad9586tYdRtuxAZfizEatoM
         p0vEmvRJUCaFTeZiLKgA2E+IZRWOHX+5dPxJEnoSxkt9jzZNvZLUsTMQIh6YriCTVDZu
         oDWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tWByifXTfTLSvTHBdOgNdc61Tx0bKdK4+4EitI5eUyQ=;
        b=kxpoIg/I+F4SG8v/GD/k3Xh0xd20OZuVkuOBzj1+H2C/2cYtKMlZOxfTpQ+PJaHdor
         sNcAu7od8VaEQmOw+8KDBQB770ehGdPdP9dZz4+OgJ2IvEpVsJWOL/7dnjE3UFDauwh7
         axYsVIKdJ50HznIifdJ0LVgMO3z0rKtoZ+fv7XCa1rxBrGUTJRnSwfsVzND7RiX0jYJ9
         M3Re47sZp/CUxZicf1TRcXs8iaW+T0uy6jpAr7jL+8AVbn9Pvyj3g7LHdeCl2LdCzT/4
         QW9zDR/xiHYbii3kTnnC6L9trbRJsAC0rr6HkyTf2/J8d6gM8+WLnMydt22Z4rVZzJVx
         puPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g/GwqTcH";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s25si160735qtc.0.2020.02.13.11.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 11:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id c23so2724781plz.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 11:20:59 -0800 (PST)
X-Received: by 2002:a17:90a:2545:: with SMTP id j63mr7048904pje.128.1581621658693;
        Thu, 13 Feb 2020 11:20:58 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id l37sm3331916pjb.15.2020.02.13.11.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 11:20:58 -0800 (PST)
Date: Thu, 13 Feb 2020 11:20:55 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: jpoimboe@redhat.com, peterz@infradead.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200213192055.23kn5pp3s6gwxamq@google.com>
References: <20200213184708.205083-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200213184708.205083-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="g/GwqTcH";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
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

On 2020-02-13, Nick Desaulniers wrote:
>Top of tree LLVM has optimizations related to
>-fno-semantic-interposition to avoid emitting PLT relocations for
>references to symbols located in the same translation unit, where it
>will emit "local symbol" references.
>
>Clang builds fall back on GNU as for assembling, currently. It appears a
>bug in GNU as introduced around 2.31 is keeping around local labels in
>the symbol table, despite the documentation saying:
>
>"Local symbols are defined and used within the assembler, but they are
>normally not saved in object files."

If you can reword the paragraph above mentioning the fact below without being
more verbose, please do that.

If the reference is within the same section which defines the .L symbol,
there is no outstanding relocation. If the reference is outside the
section, there will be an R_X86_64_PLT32 referencing .L

>When objtool searches for a symbol at a given offset, it's finding the
>incorrectly kept .L<symbol>$local symbol that should have been discarded
>by the assembler.
>
>A patch for GNU as has been authored.  For now, objtool should not treat
>local symbols as the expected symbol for a given offset when iterating
>the symbol table.

Agree. binutils 2.31~2.34 will be affected. objtool has to work around
the existing releases.

>commit 644592d32837 ("objtool: Fail the kernel build on fatal errors")
>exposed this issue.
>
>Link: https://github.com/ClangBuiltLinux/linux/issues/872
>Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html#Symbol-Names
>Link: https://sourceware.org/ml/binutils/2020-02/msg00243.html
>Link: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/286292010
>Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
>Debugged-by: Fangrui Song <maskray@google.com>
>Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
>Build tested allyesconfig with ToT Clang and GCC 9.2.1.
>Boot tested defconfig with ToT Clang and GCC 9.2.1.
>
> tools/objtool/elf.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
>index edba4745f25a..9c1e3cc928b0 100644
>--- a/tools/objtool/elf.c
>+++ b/tools/objtool/elf.c
>@@ -63,7 +63,8 @@ struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset)
>
> 	list_for_each_entry(sym, &sec->symbol_list, list)
> 		if (sym->type != STT_SECTION &&
>-		    sym->offset == offset)
>+		    sym->offset == offset &&
>+		    strstr(sym->name, ".L") != sym->name)

!strncmp(sym->name, ".L", 2)

.L in the middle of a symbol name may be rare, though.

> 			return sym;
>
> 	return NULL;
>-- 
>2.25.0.225.g125e21ebc7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213192055.23kn5pp3s6gwxamq%40google.com.

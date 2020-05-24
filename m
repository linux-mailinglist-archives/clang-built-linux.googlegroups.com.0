Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRMNVT3AKGQEYCJDS7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD841E03F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:44:07 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id b15sf7729980oti.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:44:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590363846; cv=pass;
        d=google.com; s=arc-20160816;
        b=g/m1WB2X+w0G3cXRIuqUyhPp/9ZLsiE29iQz/d+7zcqJRzUUiKr5Ibh6iPYLBkeLNu
         IQW20GZoXFPAyC5wYI8M8F6FL7KUxheYjx76+ppBZVA/Pi02ObaWDVBsJhm0E7R3v9Sn
         P19rUmCjenpm7deH21NrcxM3QvLy8n175rEom6tHwu72WVNyfchyMDLe1RDdqZkFiMc+
         JnK82kXocQHO32Blpemxtxxwww++w64yFUnm7Y/LcwTzFM7wAebVjRVUKURqsDz/ip5B
         DGDh/SjJRbaAjlxN4eSgt9VchsYed6dgXMz5WV7AlGGOKSuj6lwamClQ11s6SDH83i02
         ZGAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=a9OUZKaS1aOmE0Quxtii+Tno/X0JVpWG66D4IGfUymU=;
        b=YngyVie3X54I4N8wZweT8UGMQJmLVBnZo0NLGEo4Em/+Cln0LG6jOsxrwPHDdrsczL
         xP3ZTaOBaNIFCvTF+WJgbMf1bB++knf7oWNBXtrdJKYTMSKUuqsIPWixMmLaiPvjETap
         RgBFu7gj9JXqbOBGOKju8+vNF5qSe8hKMQE1NDY6pplKV9itMXALvMWxmVEg++E2/53/
         WKon2+UMWOfohrxS/nioJuXTJK91Jpta4Km1ykkecAGPz1orP9G/kdjx373s2TRDu706
         iCXKcIJdFCHQV196ATgtghBOrHnvriXQPZ2veSbiC1EuoGSYJTT2kQALjo43vMxI46+o
         zOew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qi3rD4hd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a9OUZKaS1aOmE0Quxtii+Tno/X0JVpWG66D4IGfUymU=;
        b=XY9l12+s3g+7JhiToQ/0MXJL9TL56cr5keir7ZbAUxegMrDpWgwOKW/0wBLYy/GAOk
         j4WXiEHr39zkgRdvsdLv0EEx9XQ+qmM+yISIIVz/FHc9BWf2eXoBMCXdeqmiN3OyBJiW
         9LSi5DwpIJZuA2nTa39EtKl4iHhZPD2dta9CuakGXqQnbKS/1XgELTA6j0CvGXNerkuH
         mTU4WTmn3nZYLe3Z1DWwVtSuMTcT4QG55C8FDwnoaOYhygVjXeT8ZzXNNFlzhCuJy9lZ
         hAGD4FdGJUTmml87CKDLM+wwkC+BwgvaLCXQOTHBkYuCsUV8oSHJUtD9bX5+oSfR3Jsw
         r0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a9OUZKaS1aOmE0Quxtii+Tno/X0JVpWG66D4IGfUymU=;
        b=pJWvxyS/QXUPt/Di5eAP+KbLiy1HAlg38aLo3fmIN3meRIjIk5OhshnjiTrvaOl4dS
         a44qod6QzTYxLTmEv4dh9kgj6zxmJYVrhofW2eqAIC4+Dk6rPbAsknB6aR0TaSDbTOi8
         SCOmae7byTDQhuwqVITrVl1MMZuPMVGAJAtdYs6pBy7b850uO7xJQvGtf1ezkltCYGfR
         cyUnWQ8xI/lBWGzidfwSp5atqfWXHTf1FNxx0hkP0e5oaM46bhgoA1JY+cucCY3TigLd
         66OfbNVcMIDPpZha5zLZKXekyMNghE5IovOCaYcqTMurViCVgNayNBpfKrECNClGKR9G
         BwTA==
X-Gm-Message-State: AOAM532OJtXOd5vTBY/WXqLVJXynYxk5roYxCS9lNJ2w9VfydA5efFfL
	qLwkRlUnIhhTy7oXUy9Cu9c=
X-Google-Smtp-Source: ABdhPJxg2tT8UKP1fwDXibX2Dkxe/wzuL2xzJHFU67ir6dQbFiOfy+G+V37ppNFbgjk5Tz92VuBKkA==
X-Received: by 2002:a9d:5cc9:: with SMTP id r9mr19514999oti.111.1590363846043;
        Sun, 24 May 2020 16:44:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls1329910otk.4.gmail; Sun, 24 May
 2020 16:44:05 -0700 (PDT)
X-Received: by 2002:a9d:86e:: with SMTP id 101mr5877850oty.156.1590363845748;
        Sun, 24 May 2020 16:44:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590363845; cv=none;
        d=google.com; s=arc-20160816;
        b=X6C6jteVOk0Q84gZGolW46vPSkUBWmTqk2Tg2Im7UDzKKzlD/LFkRgqdY5koSRqfai
         sCg/aBYGmM/f2hnVbxHY/Wg8P3OAIR8whoCtOc8dAMWCOWBn6S4zzWrsiBBseq2PYer0
         Q3Q7JY+iOTiJZy9Cv/553RGDchyzWMAbC2A9tdOKDyhMqhdey/orwRX9iorKyk+2gPeT
         ld46xV94MWKkLB+bwx29xlCFMhVEU/IhUAaVmT5P0mziTGXS4xPQleS21g+/3VBAyvrg
         ieZkHhyGFeU0HttHUAhvKLyu1dzJsLBoJFIoY/pF7lNXbRujSOAcEr9t49FdW7jTqfNk
         w+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=XTG0SWExg+vLcec58IdP3Bd5LBSmZq0uHWu9qm8rqMU=;
        b=TGC4CCxcDuVyNSNxvnXcmwte1HOsIi0W4jNUbBaPHBmHpSY54KrkDoRH2Jk5DOFMt8
         jbszASTgYTdapP8IOHL5PEnG4DxiVqXF5apicdO3kcgpl9Eh8RUANDv3nsw21EPUOULF
         huCOB01arXkKfQjPH9JusIpax52BfAQZ80rHkWh3s7d+aJDbXLAPxlg9C1Ka+RhXIAtu
         fpB+UNuTQfR46Rua9fLLVWPMXwDfr1XGAJVDc7YPB2zBZ3HlsxwCiMYmUCg2OIW/PwVr
         0K74iqz1TdwvnhqUMfIEO8xpIcmbmXQ9MZXDP8ooZcqlBZz6XLXzIPBte+nr/3Y52tBT
         0HaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qi3rD4hd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id e20si1100299oie.4.2020.05.24.16.44.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:44:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id v4so12756967qte.3
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:44:05 -0700 (PDT)
X-Received: by 2002:ac8:2242:: with SMTP id p2mr16244141qtp.27.1590363845164;
        Sun, 24 May 2020 16:44:05 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q34sm3977676qtd.89.2020.05.24.16.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:44:04 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 24 May 2020 19:44:02 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] x86/boot: Remove runtime relocations from .head.text
 code
Message-ID: <20200524234402.GB280334@rani.riverdale.lan>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-3-nivedita@alum.mit.edu>
 <20200524225359.wnc43jmh6rvfaezq@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200524225359.wnc43jmh6rvfaezq@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qi3rD4hd;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, May 24, 2020 at 03:53:59PM -0700, Fangrui Song wrote:
> On 2020-05-24, Arvind Sankar wrote:
> >The assembly code in head_{32,64}.S, while meant to be
> >position-independent, generates run-time relocations because it uses
> >instructions such as
> >	leal	gdt(%edx), %eax
> >which make the assembler and linker think that the code is using %edx as
> >an index into gdt, and hence gdt needs to be relocated to its run-time
> >address.
> >
> >With the BFD linker, this generates a warning during the build:
> >  LD      arch/x86/boot/compressed/vmlinux
> >ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
> >ld: warning: creating a DT_TEXTREL in object
> 
> Interesting. How does the build generate a warning by default?
> Do you use Gentoo Linux which appears to ship a --warn-shared-textrel
> enabled-by-default patch? (https://bugs.gentoo.org/700488)

Ah, yes I am using gentoo. I didn't realize that was a distro
modification.

> >+
> >+/*
> >+ * This macro gives the link address of X. It's the same as X, since startup_32
> >+ * has link address 0, but defining it this way tells the assembler/linker that
> >+ * we want the link address, and not the run-time address of X. This prevents
> >+ * the linker from creating a run-time relocation entry for this reference.
> >+ * The macro should be used as a displacement with a base register containing
> >+ * the run-time address of startup_32 [i.e. la(X)(%reg)], or as an
> >+ * immediate [$ la(X)].
> >+ *
> >+ * This macro can only be used from within the .head.text section, since the
> >+ * expression requires startup_32 to be in the same section as the code being
> >+ * assembled.
> >+ */
> >+#define la(X) ((X) - startup_32)
> >+
> 
> IIRC, %ebp contains the address of startup_32. la(X) references X
> relative to startup_32. The fixup (in GNU as and clang integrated
> assembler's term) is a constant which is resolved by the assembler.
> 
> There is no R_386_32 or R_386_PC32 for the linker to resolve.

This is incorrect (or maybe I'm not understanding you correctly). X is a
symbol whose final location relative to startup_32 is in most cases not
known to the assembler (there are a couple of cases where X is a label
within .head.text which do get completely resolved by the assembler).

For example, taking the instruction loading the gdt address, this is
what we get from the assembler:
	lea	la(gdt)(%ebp), %eax
becomes in the object file:
  11:   8d 85 00 00 00 00       lea    0x0(%ebp),%eax
			13: R_X86_64_PC32       .data+0x23
or a cleaner example using a global symbol:
	subl	la(image_offset)(%ebp), %ebx
becomes
  41:   2b 9d 00 00 00 00       sub    0x0(%ebp),%ebx
			43: R_X86_64_PC32       image_offset+0x43

So in general you get PC32 relocations, with the addend being set by the
assembler to .-startup_32, modulo the adjustment for where within the
instruction the displacement needs to be. These relocations are resolved
by the static linker to produce constants in the final executable.


> 
> Not very sure stating that "since startup_32 has link address 0" is very
> appropriate here (probably because I did't see the term "link address"
> before). If my understanding above is correct, I think you can just
> reword the comment to express that X is referenced relative to
> startup_32, which is stored in %ebp.
> 

Yeah, the more standard term is virtual address/VMA, but that sounds
confusing to me with PIE code since the _actual_ virtual address at
which this code is going to run isn't 0, that's just the address assumed
for linking. I can reword it to avoid referencing "link address" but
then it's not obvious why the macro is named "la" :) I'm open to
suggestions on a better name, I could use offset but that's a bit
long-winded. I could just use vma() if nobody else finds it confusing.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524234402.GB280334%40rani.riverdale.lan.

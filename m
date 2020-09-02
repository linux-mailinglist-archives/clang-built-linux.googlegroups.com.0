Return-Path: <clang-built-linux+bncBCIO53XE7YHBB2MJX75AKGQE2P5YKCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC2D25B10A
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 18:14:34 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id q12sf32060iob.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 09:14:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599063274; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKNiILemPcu8CTpXeeaz5eP/Qdh4IFV74w+oMJkJ+FbCUpfRxeGQX6saypR2iu51D0
         AaJbVhLkIvYwvrAgcYhc8Eyjbf4+ZLSNMsOA3D9qx7xLDaXkeSr4vnYSHyJMFLNxeRE3
         qOhrmoCGoBd8m7u33LPG+SAA8CY3YEgHnFOOux1wOjdqqCQGH+Raj5W17s/MBr9qWzRe
         RZTjA4Fh+Yzvieix1qZN+lR4hlnBo+CZ0Q0Hmi4aC3JABYTA3l8DVdHgbV3DLyfRYbbT
         1sBi3tdb8nfksjbf+31W7JniMl1rZVforKbjdnPYLl+Mml3vcmuUAMYuW7rG4CE9Wcgh
         WaHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=FC9cKAID9R6S7kwROTx7iwehEeLesuqj3cXrJA3uSk4=;
        b=CL3XaxDwrc1HhLPgxbQeZ28obcK7HQA1kuL6CiW83+OrWbbCs5BCsbs5dGbZhZxAvn
         eHrRRxZsslRFIVzyzEM1t4WWLugvQ67eJo9jJhUavA+UABRa3lR8njazoOrfBwbkUVWs
         BcW9SZtOix+cXd11gvbl+ngy0zUQ4UHDNUwD3U03qMuFN03iikG1FDuKLRJOzeKSLb7c
         5dYxxeXb9nh87WbwTIn6ireGv/F/zwtLnQbfHg93eecCTZ/BV8pNX5p6W4gvFnj+9mqN
         QUWA5n+t7aMKsKh9c0v0EAWP3WmfL7CDWD+nmjBiyNw1DkpiOX8vueITCLdWYn/1fZgD
         cU3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rnk+c8Bq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FC9cKAID9R6S7kwROTx7iwehEeLesuqj3cXrJA3uSk4=;
        b=Wh7+3Dy7ebnYuxkIqubhWuinAw4FqTV38dHaSl9puY75UxVB5wMbcePuAtGIBwDVNs
         O+nHhWptkHbfn6h8ub8XZJKyc+PsJtu0DsYkBEIGuAG28beZ9Igg0s8TdHe0J1stQzmo
         0A+OLtL7oiaGsj6Uhlq+rMoFRgsnJ12b8IGwJ2V0c4D1jkohBjYXiZmULLtSE9QrG9Kw
         2sz8l+f0w1iuiU+31ABPoHePSmpDC6GNJSAkCUl2Mw85uoaX2e6fImREDTDJyeZfrO/4
         pYqJ4RUgqAh6MNIbxHAt+fAghovPq/34EhaoZKhYGdBUzH2LedcNKIZ3VQSWDO9XjR9+
         AmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FC9cKAID9R6S7kwROTx7iwehEeLesuqj3cXrJA3uSk4=;
        b=MHzM8+Tpr7wilOiM6Qg5YZl87T+MHc0hDa2u+LsTP5lzqCoaJzvtQPkhvmhBXMzXI+
         3xP9NqgeGmztXdrKTmYVBcVEl9k0uxi/+8yA9bElinyk9s/SOMN7+sbBpz5wXaNrCf/S
         y93Gk+2zUQe1Lpgha4nc7a0MU28GX8Q58noLaM4qKw85+t+b7PCAJKX6GTcp3PJ1KuxF
         LgIWIF2kQ7ANNTZ9FbKROuSjaTKCmveeVQb1S5nFiWUrtfeNQqdzfPE8lgGSSwqf6zof
         LrEY+C761MuyXGy4ToxLTWmvsMeXLyk3lcSbLn+UjOwcWPJqYe6kvGiC9terphs9z6ZZ
         WYnQ==
X-Gm-Message-State: AOAM533NdTm3G94e5A6O7vMIcl1wcP2Ph1xKdwF5/ZupoPO8DgoyjzxW
	6rPxpFkihHFwMcLJ/OHClhc=
X-Google-Smtp-Source: ABdhPJyuh8IIQqnPYtaIXSvhWMRDs4QGyVDqsFdVmvPeow6ghchlEBaBxKJq80JidCGST+1w5ABn0g==
X-Received: by 2002:a5e:9e4c:: with SMTP id j12mr4115170ioq.37.1599063273700;
        Wed, 02 Sep 2020 09:14:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a1d2:: with SMTP id b79ls657825ill.0.gmail; Wed, 02 Sep
 2020 09:14:33 -0700 (PDT)
X-Received: by 2002:a92:740b:: with SMTP id p11mr4127257ilc.119.1599063273324;
        Wed, 02 Sep 2020 09:14:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599063273; cv=none;
        d=google.com; s=arc-20160816;
        b=DtCVL8xb8fy5kRhhLo3Oi2IZxE54QGO9jXox6S8qZ7ffthpd5JfXMd4GSAUQ8dM09C
         xIHNZ8aN62Y3GQs2VTmWckdWsc4a7K5nuEHAGQIn4Phil2JQzCNHhIn6vIo21vT9/M4h
         gf3dY826MO/WGf0y8MAGUKv0Y23bRNj43G7GCjaUfPGEi9eIIth6A5BXWEellvHedvhx
         GozmYRqvenoZjniGgI2SZGM3b4CVlRhv/XBTkwMauXGlwAIw6jsKE3SyVKQFbgZdMrEi
         QrtLdwwuJ/5dhAe+rvXM+V3BuBr8R1gOYCGszEl988E3P3X+Pjyy4WVr06X0nXQ1A3cX
         sq2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Wfu3+LD5LYR9xjUm060ljmpR4bdkzzrekUkQirlGcak=;
        b=a6LioPfxmXep/jFaB1RYqr7p0mD9vy6MnYVEC8eSlHWd95ZVIIuzhNUWlarUMKoo4J
         aoP9/cSUi1/rX1UaEIRYJ/aFvyFJzD5/rd4ttb1Cj87FzQ3sCl1okQqZIlcpEJOBX160
         7H/Ok3Tsr/emavm2Hxo52yeeHGO0zZxrc7vkhuKK2avBPaaiiS9bzEs2MHnC2FBI20Ge
         GZSPmJ/qjMV7mGUM7ZRALqJk7uEKl8yMf7TNTVk4sjABp4fBxXb7uZO4WasLPEhvIkxV
         hcCXsMSJI8VwnjUGijEmQe/YfmhESw4ce+HMZ5kRYQxNepSlfH7mp44M++z0F9HTlFiR
         R4YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rnk+c8Bq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id y21si366886ior.2.2020.09.02.09.14.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 09:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id b14so200587qkn.4
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 09:14:33 -0700 (PDT)
X-Received: by 2002:a37:9945:: with SMTP id b66mr7728406qke.51.1599063272786;
        Wed, 02 Sep 2020 09:14:32 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id v39sm5180655qtv.47.2020.09.02.09.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 09:14:32 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 2 Sep 2020 12:14:29 -0400
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Arvind Sankar' <nivedita@alum.mit.edu>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	"nadav.amit@gmail.com" <nadav.amit@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200902161429.GB3297881@rani.riverdale.lan>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
 <55a35a3d8fba417aabe63ad13d519198@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <55a35a3d8fba417aabe63ad13d519198@AcuMS.aculab.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rnk+c8Bq;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
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

On Wed, Sep 02, 2020 at 03:58:38PM +0000, David Laight wrote:
> From: Arvind Sankar
> > Sent: 02 September 2020 16:34
> > 
> > The CRn accessor functions use __force_order as a dummy operand to
> > prevent the compiler from reordering the inline asm.
> > 
> > The fact that the asm is volatile should be enough to prevent this
> > already, however older versions of GCC had a bug that could sometimes
> > result in reordering. This was fixed in 8.1, 7.3 and 6.5. Versions prior
> > to these, including 5.x and 4.9.x, may reorder volatile asm.
> > 
> > There are some issues with __force_order as implemented:
> > - It is used only as an input operand for the write functions, and hence
> >   doesn't do anything additional to prevent reordering writes.
> > - It allows memory accesses to be cached/reordered across write
> >   functions, but CRn writes affect the semantics of memory accesses, so
> >   this could be dangerous.
> > - __force_order is not actually defined in the kernel proper, but the
> >   LLVM toolchain can in some cases require a definition: LLVM (as well
> >   as GCC 4.9) requires it for PIE code, which is why the compressed
> >   kernel has a definition, but also the clang integrated assembler may
> >   consider the address of __force_order to be significant, resulting in
> >   a reference that requires a definition.
> > 
> > Fix this by:
> > - Using a memory clobber for the write functions to additionally prevent
> >   caching/reordering memory accesses across CRn writes.
> > - Using a dummy input operand with an arbitrary constant address for the
> >   read functions, instead of a global variable. This will prevent reads
> >   from being reordered across writes, while allowing memory loads to be
> >   cached/reordered across CRn reads, which should be safe.
> 
> How much does using a full memory clobber for the reads cost?
> 
> It would remove any chance that the compiler decides it needs to
> get the address of the 'dummy' location into a register so that
> it can be used as a memory reference in a generated instruction
> (which is probably what was happening for PIE compiles).
> 
> 	David
> 

It doesn't cost much. When I tested it, the only differences were in
startup code and sleep/hibernate/reboot code.

The compiler doesn't load 0x1000 into a register even for PIE code, the
reason it was doing it with a real symbol is to go through the GOT.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902161429.GB3297881%40rani.riverdale.lan.

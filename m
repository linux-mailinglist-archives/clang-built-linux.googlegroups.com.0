Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPNEYH5AKGQE4MQLBXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7A25B8A3
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 04:17:34 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id d23sf637320otq.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 19:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599099453; cv=pass;
        d=google.com; s=arc-20160816;
        b=OPINvSeUtNBYMjLyamseBMmarzFZK1zLCOkO1OqTs9vvnJiNQkD6B8fczctBjjOroX
         PNlD62MDoRQmha/BR24nkLUeLML0fR5HzJavK+TNQOMnr1bRaem3EwQwervo6Q/mmegu
         7Ge1kMmWYC+QHP26+EX8rrUECtSkPdsqe2KCKVXQZxKn5sc1IG3COl0uu5suvu64Nux2
         FTJBloO5Qpl/T4coQQgB80M2Ww05ySzyuZv646k05uk38kLYpUVBB2wggGZ/cApWDmYu
         btg88F+5dm0kwMzYqxy85BAnaqlbkjQNu+LWHCnjpHx7pweb5kQ5f5U+lKPm0l8jR0PC
         3q2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kJNv7w+ZYTXGsEesX5ccH5hJ+arGBlGBnSmJ4psEkRo=;
        b=tr2W8p+p+u7Vr1+e4kBbAB2jRwFFlxWt1GLnmGckrE7KpMBlR8Ln59q4eC+ZiDNgkl
         HINE3E3aGi6gRDmayZ8h+FTRVhgdllv1AdNnM+hB/T2nOvyLjrEhZHEXyX7Zd7nMwGpp
         2WJqaofooHiL9EstMxfQDHSKc+g5EbC0EQjQHxXXYTWB0NbNExwWMG6gufLKxEISGHy0
         IhzSIUjPqNTiR+iGF1cfa6Lst4/Y37iIOCI/LwzrZ84RRDXw08mm3Y3P4U1Wd4bPJP4J
         DrArdsvGGy7/mkPCZpBXrYl4uIWsWKAGZVvlgUgfQPGf+wlwvZTQp+Ztor13Kt3TG2Pj
         1z9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=laStFcPA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kJNv7w+ZYTXGsEesX5ccH5hJ+arGBlGBnSmJ4psEkRo=;
        b=ewbX6XC03UtJ2eEpJyx0vKDL3UOI/1NLKKK2OoMCRf4S6RrbivjeR5xJfS59+fffIZ
         06Yd27lTzwLPoM3Is06UH31n0N4DrBCltIxTAbu143mKnSmUmgEybINhylkfRa+DTpaL
         7ERQosbBXGN4wpP6cu+6+WqSThppf/pTw0iXzZR3KCKG4CLptc9LWaTi7giu8YADVBdc
         borPT2lzwFERvltsTB5oO7H57a7SiFhhNlaaV18MeuYpgNj0vCuWPe5rkTHXjVqorBUp
         c8exDBqm6bHy59VsLxFZSMZA9deiqfAd/qichKDq+drmP5+nYYnppigIriz8pdgcUQ5L
         RcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kJNv7w+ZYTXGsEesX5ccH5hJ+arGBlGBnSmJ4psEkRo=;
        b=SgHT7LT6mLqKCcCP0bVhNH1vUrB8hkoE1d3FQHuuLEY+aMH8JnnTP53dU4OQQCJp61
         A/CKQ8YSDL5spuxoi9pulGfx2m0kyqQJTnFaojkHMXe19mc70ZZLIrPp0HKne7QtW/SQ
         K9CMk6av/Pe+NQUU2ph4GKa4xHbTnCf2O0ClnscURZBp7P7gcvBguPaM0SgSchbAMBl7
         Jfpdm2AA8o0FSn/b+Ev2IadIkuzVcfCr/U2mPjmQUp8hvD51xp5XrErTLUVMQXbOFXIe
         Pyb5cdJhk+4JSiIZ73uqJ7VyPSs0CrBvoxTKKvs2IaG37TTxEL146x3MHGShF7mgqjug
         hxNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GaKA8qlo8d5xuRiS9Lx4/LYsC55Ri1i4RxBmNwLvVW1oH2MpB
	a59w9sDO6ujd2y4GEJhTESc=
X-Google-Smtp-Source: ABdhPJxFuafQHkDpeidljK6XtkItOB/u6MIjPfnmikptlE+v1iN21lgqUQiIvw886lxvqZ61fq6J0g==
X-Received: by 2002:a9d:620d:: with SMTP id g13mr977745otj.165.1599099453796;
        Wed, 02 Sep 2020 19:17:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49c9:: with SMTP id w192ls916804oia.5.gmail; Wed, 02 Sep
 2020 19:17:33 -0700 (PDT)
X-Received: by 2002:aca:3954:: with SMTP id g81mr725637oia.142.1599099453493;
        Wed, 02 Sep 2020 19:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599099453; cv=none;
        d=google.com; s=arc-20160816;
        b=mvuzLMFnzxZPDRP8viuvK6xhKjhV7mF5BxPbaDfsWTj8G+b1wUK3d4UsHOMTQNouXt
         CjwGp+QH9bZkv2Hg3HK7w3Q9lmUd6K0N042vfZ8cVylVoLxoSulPCRoHa++jVg5QPnxn
         WBxhAjkH3gjIwIvNmcL0XtKA9ZBTIh64oKJNtcy+fiw8UA6W/bROlVM3/+3YNqzKR9TS
         1W4hHvXDnX6qXJMOg1529orB9EJbelrIGj59PtxhMsH53qr5z8zWfyroGYVeT7wwQn9H
         o9+2/AIXwLYbMEkhBJIQthgYLhvmi5rDtJl3WIOETUWYW1NNdgL7qLGThKpgu7AQH9jD
         BleQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IHLgwRN3gkcsqO4620zdyxmJ2uNXW71sGgDdH/6/SQs=;
        b=sI+9zqj17isP6rqz7Qyoqsg3A9U8ZL4Wawxm8Bwdpr3B1s+sx1/WlXOVm6nG1Fj1nI
         U+2VKG5z5PNWydAjPD5pjMuIkWWhrV8anPY0e947IgXL3tFu1PCwBVJ9xxXBqKbHBVcW
         DiZsF/Iaz9Dh8YNhq1vrvl2EjaO86ws146cofN/+TTh+/YYGNBGzECBxw08Qd97/HUQQ
         WkmgTSxYoLo11BYWzjLDpxzD5kG8qj94FGbMZktPFFmAJNS6oWUuVpBAkicLM9dPD3FK
         loxGmDQu6xNMvFN6j6pMoonUmtcP+xZCrdNV9VMljhQlTsqgcNdrIy0SKcaFyguspKXH
         CCGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=laStFcPA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t74si100153oot.1.2020.09.02.19.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 19:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h12so825705pgm.7
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 19:17:33 -0700 (PDT)
X-Received: by 2002:a63:920e:: with SMTP id o14mr803345pgd.367.1599099452818;
        Wed, 02 Sep 2020 19:17:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k35sm638776pgb.39.2020.09.02.19.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 19:17:31 -0700 (PDT)
Date: Wed, 2 Sep 2020 19:17:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
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
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v3] x86/asm: Replace __force_order with memory clobber
Message-ID: <202009021916.CD41C28A52@keescook>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902232152.3709896-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902232152.3709896-1-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=laStFcPA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Wed, Sep 02, 2020 at 07:21:52PM -0400, Arvind Sankar wrote:
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering CRn reads/writes with respect to
> each other.
> 
> The fact that the asm is volatile should be enough to prevent this:
> volatile asm statements should be executed in program order. However GCC
> 4.9.x and 5.x have a bug that might result in reordering. This was fixed
> in 8.1, 7.3 and 6.5. Versions prior to these, including 5.x and 4.9.x,
> may reorder volatile asm statements with respect to each other.
> 
> There are some issues with __force_order as implemented:
> - It is used only as an input operand for the write functions, and hence
>   doesn't do anything additional to prevent reordering writes.
> - It allows memory accesses to be cached/reordered across write
>   functions, but CRn writes affect the semantics of memory accesses, so
>   this could be dangerous.
> - __force_order is not actually defined in the kernel proper, but the
>   LLVM toolchain can in some cases require a definition: LLVM (as well
>   as GCC 4.9) requires it for PIE code, which is why the compressed
>   kernel has a definition, but also the clang integrated assembler may
>   consider the address of __force_order to be significant, resulting in
>   a reference that requires a definition.
> 
> Fix this by:
> - Using a memory clobber for the write functions to additionally prevent
>   caching/reordering memory accesses across CRn writes.
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.
> 
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Seems reasonable to me. As reasonable as compiler bug workarounds
go, that is. ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009021916.CD41C28A52%40keescook.

Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXOZQCAAMGQEPB2SUCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F422F6025
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:37:02 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id d6sf3050144plr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 03:37:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610624221; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfenvBztrjAFPYzcPMNsW3ZMdCfyrN+Q31j2xQJyphpzISrBTi5e8x+4xLM6GX2yII
         Rz93V/RiQPVxjhLs0JXsK3a5dsG/g4KoMK2FX+jUY07NWr2OYZl17F/XtrjQ6dwaqOne
         C9SofVWMlB5CBclzchmUHC8MYkiPcORixtel+yDioiPJUTc1Axrhunr/2uMpYO/58pXG
         m5vnEmmbYan0KGT0Mp4EpFNppxirIPatBRqaj39vK7iguqmgh7j4Sr6fuq2DeOpoL3fn
         j3DL80BteVlvWtDO/iUceDTVDxvQJYEXLojOSy2M424vB311t9MQb7fhPoOkVsXju4Xz
         kxPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LK5Z6cvuFyqrjJqy8AaPiEy81HC+Shv1zfFSxUk99k0=;
        b=oAyYJii+vix6hxtpQAmC4PIH2fsmbZZHfATJwJhKPBUQM1l2luKcfR9Dm6T0K9GsvI
         vIL2SIXFMCWMHwqJgT8va+Y0/zQGQs0XFlj6eHO1clCPoH6f119GseESXZaDQ5uDP4ry
         rdDk7VM0bQnV+CTmNubMgakspHtMvMcLiPux78x4NcZ2C0nXnpWhQJLFkFoekaxPMuB+
         MImmfmHnGhWtdLUvUjRcqGvui/GgCjfff773GyQ9TcCEPJKxXF6mXrm2HPgRzzJq9w8E
         VvIEXT9c6vyydTCZqwCK7BgRMN/Ex6GprtTa0q9kJ86rqaNX9HWwxcBxT7hlzObGqkf9
         0vQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RPtXD4Mf;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LK5Z6cvuFyqrjJqy8AaPiEy81HC+Shv1zfFSxUk99k0=;
        b=Fm0xw7YZ1rwt32C+Pwv+StuWbjHrHnxYebIzB8wZOiagyHCfhWNNmpVDfPBxssnXFS
         VgNpYnWitBRewfOSUVy7+zfiMy21RiBNKrhyRxSGE32K4IU/s+uUOLhYQI3BYaKmHVc2
         D/8yESdMVCnJqkV+RxZLWs92j6nToy0Q+t8x2QFwF2XbuqOqXNrPAkl5/C96SkupJuun
         rYZvF5mJNOej9P7uokWlM3iK9HY18/L2Gu3E/DcCp7C05AhQbz8Gd+wOXm7UDqnh4uSc
         jadRof8UkakYhMZNRgqf58+Zrzz4JKQoeq1DFKrRIqgm6fAXtpT8v7mwF8QVJ/k+YLMF
         276w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LK5Z6cvuFyqrjJqy8AaPiEy81HC+Shv1zfFSxUk99k0=;
        b=icwKizRdPMhvPnF2+8JcSRvTUHp0GIkyhyH4wTuzMz86fx+IOorTrT5L31wD5e0S5q
         1EASuQEDC/iekampWnhfXD2waTwDgMU8rMkxti9snzQnRLf7TnUV0i9OS8dGjk3NnHgT
         R/19rNIKrX9X7zMDr02pKYo9m00hg73exTH+lc5Fth3qRPdGyy1S80ISKfeNmLF//qoa
         JBXWkew1dL00uLhF1Ye/YNu1hRFx7x4MyXmpodeC7VeXc55XEcXJwZQ3TSWsw8rJaaGS
         OOA6Be+ZwDPpfJ9b727TBkuxw76NUWmTwL68yJ+p5Zk1ww00+DZBf2KIANvmQ4OnqEUj
         dS9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306m+f6YCCXhANQSGNkIeNbHuWyCYV5ckvFJFXlAj/yArdTANSR
	etBuGx85esEgaPEhpicKXKw=
X-Google-Smtp-Source: ABdhPJxEJuEylJ9bldEXcH8dU/vZeuho0tjSqWBWIcHHl3e72fdvnP+DuFdW8a32TduJR0bsOzD/2A==
X-Received: by 2002:a62:5256:0:b029:1a4:5d7d:33a8 with SMTP id g83-20020a6252560000b02901a45d7d33a8mr6923608pfb.17.1610624221196;
        Thu, 14 Jan 2021 03:37:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls2106076pfq.0.gmail; Thu, 14 Jan
 2021 03:37:00 -0800 (PST)
X-Received: by 2002:a65:4105:: with SMTP id w5mr7209961pgp.52.1610624220606;
        Thu, 14 Jan 2021 03:37:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610624220; cv=none;
        d=google.com; s=arc-20160816;
        b=WYSRLnPEAvOFcZPe11Rj+DzZa4nkExJLmmea6WemSChQivrK9sOoCYuROjrlAMDWtO
         GGG17P/IR/iUjZN5gijt3PXRZ693T8+KgX3XST6yv1GQhfZL8k+C9YoMRd01IzwPiHJ6
         eU0nl7itfoErfxYhYsmQJORRqCZR0NVNeY5DQcArGaxDpFhZ8ocahQZ3aOXncpF3dvqj
         tSmuyK5uPxO3oK1z83aVvawh3Gpz2CXbPxxWreVRw8Mph7pxN0/E4b5WbL1e1WudlQsg
         ikuWPyvXmTy1xVZSHXBVXgQOEncwiplvSlktoesv40OShJDQBwsrFf327luUlGZ4nJSn
         gZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UU0k9SPmZjW9mEpf/D9xPCViNO9X7LPn56+qCj377sI=;
        b=cXdCYs+9ilghGLa+JyizUoe9BUeZUZbV0AhBkf86Ka2KMSW1CZ1qkPY97NruFObHTV
         +ccKDTob51hVsJfSN06s1M7mgpUnG/a/fwLleoj5hZpqUmdNLAKSoWmfga29Al0dyT/I
         mI+QecCJmsHTZmFqZXn04OVUMXbqkZa0jMwxbCBW9pjgRrhIla2xTo/F61spP6ANDxhk
         AB1Ww4ekv9iOe19tK97ZwkZdwbuuxFZJ1B9x7NbW8bHEOMjFg68T0QuXL4nqk4NxonJK
         uJhmvI945kbLox9Bvs7uADebUuk6vC3ObuTCCk1xeXocpNe7XczsLKYtfEct90utrsyh
         sCng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RPtXD4Mf;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id j11si322546pgm.4.2021.01.14.03.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 03:37:00 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l00vo-00007b-MY; Thu, 14 Jan 2021 11:36:49 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0E7CF3059DE;
	Thu, 14 Jan 2021 12:36:46 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 027302BECE8A7; Thu, 14 Jan 2021 12:36:45 +0100 (CET)
Date: Thu, 14 Jan 2021 12:36:45 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Mark Brown <broonie@kernel.org>, Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
Message-ID: <YAAszZJ2GcIYZmB5@hirez.programming.kicks-ass.net>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
 <20210113165923.acvycpcu5tzksbbi@treble>
 <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
 <20210114103928.GB12284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114103928.GB12284@zn.tnic>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=RPtXD4Mf;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jan 14, 2021 at 11:39:28AM +0100, Borislav Petkov wrote:
> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Tue, 12 Jan 2021 11:46:24 -0800
> Subject: [PATCH] x86/entry: Emit a symbol for register restoring thunk
> 
> Arnd found a randconfig that produces the warning:
> 
>   arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
>   offset 0x3e
> 
> when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler not generating section symbols, objtool has no
>   way to reference this code when it generates ORC unwinder entries,
>   because this code is outside of any ELF function.
> 
>   The limitation now being imposed by objtool is that all code must be
>   contained in an ELF symbol.  And .L symbols don't create such symbols.
> 
>   So basically, you can use an .L symbol *inside* a function or a code
>   segment, you just can't use the .L symbol to contain the code using a
>   SYM_*_START/END annotation pair.
> 
> Fangrui notes that this optimization is helpful for reducing image size
> when compiling with -ffunction-sections and -fdata-sections. I have
> observed on the order of tens of thousands of symbols for the kernel
> images built with those flags.
> 
> A patch has been authored against GNU binutils to match this behavior
> of not generating unused section symbols ([1]), so this will
> also become a problem for users of GNU binutils once they upgrade to 2.36.
> 
> Omit the .L prefix on a label so that the assembler will emit an entry
> into the symbol table for the label, with STB_LOCAL binding. This
> enables objtool to generate proper unwind info here with LLVM_IAS=1 or
> GNU binutils 2.36+.
> 
>  [ bp: Massage commit message. ]
> 
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Suggested-by: Borislav Petkov <bp@alien8.de>
> Suggested-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Borislav Petkov <bp@suse.de>

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

And while looking, I suppose we can delete the put_ret_addr_in_rdi crud,
but that's another patch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAAszZJ2GcIYZmB5%40hirez.programming.kicks-ass.net.

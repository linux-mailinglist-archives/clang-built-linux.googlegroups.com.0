Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFG76P7QKGQE24VQA2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 054FE2F244B
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 01:38:45 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id g14sf230322edt.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 16:38:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610411924; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkYDJCXQU7pEfrP7rIlFnnEtb+nTC+zHXcDKzhnBXIZ9nNsr1bSas0IRzR0zzmI/DI
         2qXeU/B766wxtuGKjBclGVt+B59qaEBwUYNdE0cOUnbhgjEQokBzX0TTtkTA/entQP0X
         yfHpI8icLlP9qph7GCGrBbIiAjhhviNEIpfZAuQN/yoqt9Wt1PgCrDfGOxFFT0wjxNz9
         ZNpRJeHpV0zl91drsXC8k7o4s9iANXhdT/It+OpvU7aOEyKsif3v5STLgDiQ1Yvg2ASp
         zER8tYOj5IL50JtOxBL84y+LETTpmV6udqkbwWGT7F0YovwDfNV3hPrfZZSrfQanaWPC
         c+LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BWO0CX50ppiYKZ+d+3CQSXE9iF7ohj7yYyrQEOiqcpI=;
        b=CrDwM4uZVW9+yGFo1x0uunrVLaFWK76mSNJ+r/aohEPsThHIlURXjD7g+lQJcLjz7X
         U4CsigbMSwN0dQY3yIBAs109BpcElQLVe7Pmg3JktvBIiJC0Xe7Ow7BxLDHpHdahKqHk
         cu1Dx/w4LQcTOuiKrZGsk9VCMj71Pe+JyLY4VvDCBXOY8nu8qtnyVanCXX0N/3v577Z9
         YmvylEOtW6yBO36ufNrLza1Nu5uuLy0BEyCTpkp8QyZoeQBZTyYIlT0tHA+SYqWX/fs4
         uorv3n9Xgh/vpmkbzKjHGocC3lfODSfMkfeFDDwTa5wqT8KgphzHGVzjHHI0PjMI5Bzo
         RjGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qELD7kpe;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BWO0CX50ppiYKZ+d+3CQSXE9iF7ohj7yYyrQEOiqcpI=;
        b=LZTuZXTR6DKxCSPh+QhoN8jTfxvtr/cFlHqwq44mn/34Y+ipVm7TLo6kfdX7ESThWd
         HSafN25ITG8r740wxTUhmV3I6twIT1EuXe+x1nHKIv5FZ8CJRBIOgtwv4b8Lw8fq7f43
         /GyRvDG1I5HoliW6B+4Kj/uIvrjMnre7cj0yox4gg66m0pgC2i05Kl2gNkM32BXtv5nH
         L0JpXVJJYb36qWRQ/ixHMz6fH2t/ahBFPnD21qoc1f8wOJsrJEeZB9pj5e7D9THk81Wc
         GQQhl2FQ0eZOa/My+ige1a1K9HTNHqY+aSxGNlJvpAJketzpEoLPbpVMP4in9YUS8ULy
         ucJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BWO0CX50ppiYKZ+d+3CQSXE9iF7ohj7yYyrQEOiqcpI=;
        b=KieoJiWA41TLMtq29Qpke7e+CsNHhN1VBNOcYTbBPjIJjqMfCIOPWIRT0tDwkr9H2V
         mKOehheWZxHqysz/lnwXHvTGbas7ZTklVHQnGGEm5DTABUUZPK+LFGziDs2sROWfjP7e
         ouQAHMBo68Ic3oLgmLxMGCYQBnqJrBTtVqqz8PAlb0R0AaCK9jrHixnbjWXRYiqTIAOI
         c6w3S01QcBM5PLwS4JpY6rMsHyKZc29LOWWCp9tdmiN1XZYyNEEfgG2kn6KNdSoH3kUO
         32MkA4Au1G6ETVmN+EnjvlSb1K7qyXBcMZCK4/NYklosaWU6Ea/+Uu8WXmIT5ZIqbFJN
         8WWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fBSqsGUY0Xa/61yswQTtcyB0/z8C/ovakZxT89gLMBpNHf0UH
	2vQW13o0ptIZuj2IF57u/NE=
X-Google-Smtp-Source: ABdhPJw6LJ40YUv7JgBvxM5SB79jjXsSVi1UYooxFN4d0aFEpNGEV3uXixjrQj7Acke2Z2JMS/FGUA==
X-Received: by 2002:aa7:d5d2:: with SMTP id d18mr1428155eds.126.1610411924784;
        Mon, 11 Jan 2021 16:38:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls1325947edx.0.gmail; Mon,
 11 Jan 2021 16:38:44 -0800 (PST)
X-Received: by 2002:a05:6402:407:: with SMTP id q7mr1366644edv.312.1610411923986;
        Mon, 11 Jan 2021 16:38:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610411923; cv=none;
        d=google.com; s=arc-20160816;
        b=RQwfApsRpgWL0fW/eLHHQ5xY8gJD6MzwxC5s7YvvY4f8vWXO6NM6qpOlz59zEINxk8
         bBKA0knMzroi5mENf9RZ8rnUT5u2zkN8fvsa46fsoih+xMEPfLj+gz8Kfwc3P3DZ5NiN
         dgibHsH6SJ7dHKlYABF0jueP9wBgI3kVaSPVy8RLnrEQ5a6EqCGjo4Y9qANhliVtOulA
         3B6waFcTNPrOe+MaQbq/Nh6LEELm74s+EbWPhp/0ggZf1tHBhFmBBnnPN5w2vkJOAhxJ
         CaMEGMnxAQpEej7mNmQVKfH/TcdfhsrY5Jd6B/I6kVBOcJ4l8ZlvwUURcQxDZJhPFlYk
         mb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7qCToIItDiX616kW0snCkYrX5Hh3lczpxY8UpXzRiL4=;
        b=Lqeqf1IdgddS508ek2Z1KZ7026Jq61ZKL81gWz5lZux6scxMzUBq5JPW1k9cblsf3g
         rUQwgwRZriCDyV18jvP7uodIQaLVDlhfMrJvP8XtgN7vV8134dzKfLhKQWbQfL22uh7O
         V4PmsoH7AXO64TRsgYxoXdCt6ZG/QFBnoDEW7lW8UZ2LijO+RlDcoyBRqpgfevYFDdUv
         GM1A+Qr+MVfNb3lluuZgm8e0cyNRr7JOYUZjQiVCzpaiq5LsZRU2Qo28tMXEKO+d9s1X
         5HtKd/JfziLa3t1uquaq7RHYVjycbPcgDTGUMGbSQLMuCqLwxovZdP6uVv01j0fCsU5i
         4l2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qELD7kpe;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id z13si47152ejb.1.2021.01.11.16.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 16:38:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f088f0064dd88f751605e0c.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:8f00:64dd:88f7:5160:5e0c])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 337F81EC04CB;
	Tue, 12 Jan 2021 01:38:43 +0100 (CET)
Date: Tue, 12 Jan 2021 01:38:39 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112003839.GL25645@zn.tnic>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111203807.3547278-1-ndesaulniers@google.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=qELD7kpe;       spf=pass
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

On Mon, Jan 11, 2021 at 12:38:06PM -0800, Nick Desaulniers wrote:
> Arnd found a randconfig that produces the warning:
> 
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> offset 0x3e
> 
> when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler stripping the .text section symbol, objtool
>   has no way to reference this code when it generates ORC unwinder
>   entries, because this code is outside of any ELF function.
> 
> Fangrui notes that this optimization is helpful for reducing images size
> when compiling with -ffunction-sections and -fdata-sections. I have
> observerd on the order of tens of thousands of symbols for the kernel
> images built with those flags. A patch has been authored against GNU
> binutils to match this behavior, with a new flag
> --generate-unused-section-symbols=[yes|no].
> 
> We can omit the .L prefix on a label to emit an entry into the symbol
> table for the label, with STB_LOCAL binding.  This enables objtool to
> generate proper unwind info here with LLVM_IAS=1.
> 
> Cc: Fangrui Song <maskray@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1209
> Link: https://reviews.llvm.org/D93783
> Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
> Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v2 -> v3:
> * rework to use STB_LOCAL rather than STB_GLOBAL by dropping .L prefix,
>   as per Josh.

Ok so I read a bit around those links above...

Are you trying to tell me here that we can't use .L-prefixed local
labels anymore because, well, clang's assembler is way too overzealous
when stripping symbols to save whopping KiBs of memory?!

Btw Josh made sense to me when asking for a flag or so to keep .text.

And I see --generate-unused-section-symbols=[yes|no] for binutils.

So why isn't there a patch using that switch on clang too instead of the
kernel having to dance yet again for some tool?

:-\

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112003839.GL25645%40zn.tnic.

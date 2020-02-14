Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTMMTTZAKGQERWFK7SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD05A15F7DE
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 21:42:54 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id p19sf5841143plr.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 12:42:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581712973; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzinO9TlRfrddDgcgUxiHOInGJxuh7lGPYkyhZdkphXavIp5JiiSX7vPfTSx8cYRBV
         ITr1ljAa3OJHxcMJRTbZvZfiLzDOn7ONLfTThmzA0V5IMFhS0LlLRqqkjkpapGI2MAGS
         Teb0NmkzjVNgW86twCGzA5lfw7JRlFAJxEPcac98ig2DOhRkRGzacqmySpyJmKNBo1Ra
         vlfk7U9ncoOfAjTUOVAU31/Jman78xrzD+cJhUOkKLL89tYIW5dSZtnjkCUpWmpXZgtl
         hzaz/CCJ8Al1CWOhg/zTzNKSFXuo+nZy3CZfU77VTh9XF8SFI1YMkW4cE20m5nGi3y2B
         V2Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=yTU40MrUNPoNoxleqG8cAVzJ1s/ZoSdilzfHy3+x3ic=;
        b=a4xCUBvht85cIrQVIKgU+fU13+2ehwQTag8oGatgUZgistrJxDcz1iKE4lu9l+bWQE
         2f8w/Li9i2bD21T9qmW0Z/HVBBS4MZQ0RDQioeYDjsxfBe8oaFkTn3CgJa/2ZG77bE8B
         1jWUnJRvC4PjWtGyuHtZx87D0ZyBbIf91Nx4sIxwrDnnwSzEcxuUpYwXORk22yJ1qA0X
         jC8ciqnS8ROkHTbtYVrhaxNtECzH34y5Balia7xzEREOfiH4GhMZT6q//ZHOc2Uw2Rpg
         Ns4BVXOkoHFTaqKkk8G3RjHvZfCJ1I5x/C70eBJvvlwOZuQjj7RxICQ+sNyscsTdaox5
         0gzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=swshXf0S;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yTU40MrUNPoNoxleqG8cAVzJ1s/ZoSdilzfHy3+x3ic=;
        b=VNOo+Uf8lyjrzUMsueKF1iLToHZQH+6XcqjQ5+awb+XzY83nTyW2G7SDIM/xCnaeKB
         6Nb2azoozPhykkD21fTLKk6sEFF5VqIGrimQzGOcvEFdn+IvsQLw+gJGTYOP7i70ukzx
         eM4hrSRR82HGrWBJPR/XUNHzNj4SYxUG35lTxl2GjpId/Mqw5/YUPDUmTtWIsaUfGPjl
         NqcJw0oDQswDPwiN2dKsxvXZh6i421uPMlW0TE40JEkM/KKhw+vWY+G+LBz6VN+2Sawy
         PGBuvA4N52t7SP3D32Z3/CDOkHfTey+KGzcC7ZkEjqijKxWDn9m0g6fOuYMHxoZWKjuE
         ghKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yTU40MrUNPoNoxleqG8cAVzJ1s/ZoSdilzfHy3+x3ic=;
        b=kZS+ftTpnhEvdyQCSQFJGaApbPIY5GwG9gUR+hQFidLdSSPBx4IrYibS6FjQJ0L02q
         zTGSRQidbounCWuxoO/Q8oWrxvrc8neHsR2MeUN3xDJ/fkJH1taDjSpBiz4riTL/RygF
         0SgJ7Ds7bawByJUsTrEHb9eBN/v4ml1cdsADI7WvsMcU57PvIcnpbsN/rcFltZhxjEX6
         40BivVIVIflN0J3XKPmO+RAEXDh/MI08/H904wMpw3Q/CrYxDEhrMl6RS64D+pQPkaIH
         BOjVwTLhp/7NAMD3cHuDxoYH9mVQ1Tt/brBYYdMSD/UzX+MpS7fKGYJ9Y8dFcdaVTF+7
         rQew==
X-Gm-Message-State: APjAAAVZouP5bK+Gu4bkcUic+cE3G67QjDbwEpEQKq8qjWzQGxVeX4F5
	vDAZpPScY8hBjKnXdWxtPWs=
X-Google-Smtp-Source: APXvYqzdivefACpKk2IAma8Y7a+2xAsQdBaphJY5rgS+7csCJ/8V9+vvYmEjAKfRoea+NzdnSkFUsw==
X-Received: by 2002:a63:fc51:: with SMTP id r17mr5383669pgk.292.1581712973459;
        Fri, 14 Feb 2020 12:42:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls2465254pjq.3.canary-gmail;
 Fri, 14 Feb 2020 12:42:53 -0800 (PST)
X-Received: by 2002:a17:902:8542:: with SMTP id d2mr5213288plo.200.1581712972996;
        Fri, 14 Feb 2020 12:42:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581712972; cv=none;
        d=google.com; s=arc-20160816;
        b=OhLmyjgMD43dJOtcY6DurwW8KDWcfmC2UO6+E/tGKmaYloGc/74My4wPKVFpits/pp
         9nMQLniTfymdYHhJGCGYmXSRDg/UXrUfZDQ3fGV7NGHhr2t1Nu6ykhA6PtINveuJCBIF
         ROA005Ck8SBMJ9CklKJOLyIlI7p5cqZ+x6v8iUEtIcIbVT4FOBcbSMI0cWiFtcO85qS1
         o2xTtEZt6WBIhZu07zv186OfDzXwK5AUmXtya2M0cR8awaKtOV4kf0BIiobfsZYdVjRJ
         yRVtHgSfszPyyp/91CKaagkB9jqpAijdZI2FRDkevsMtOYSc+4jVwk3izKUtHl38SMfF
         wpvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=nO59hUcE7IAJE3zl0mbNkPEwvhdB+UVqeIgDKUs84Ak=;
        b=W+BrHxkcMewogEwzXMoCxPfopPYy49YLJ5CXWU7/LGrgoxCfCrNi20z4whYmqOXf5+
         e3W9KkT/K5xuU8nPj+cHsaNVDI2OmsXQ6El5bDzJFzHOcJ/gYzTBy1TJ9Qk4n0opCsRJ
         xoABMp+8Sy6gx5YA/J1ZPaEu/el7Da+Y1yVn1z7IVL8LfP4wYodB9ZfpCn5mbPkRjtly
         I41MYlLP0XhjSgs4cJUOnNyoBYS096cYdeb5D0TB6Jtf8AQ4n3drZYMGK2hlxwQboheB
         5oV1B7j5aoe5OjwZb2dePjlyIChXc/CcQmLg3WJtJnPXzohyrXt5CRcWma7YV8lG/snr
         EG6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=swshXf0S;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id 8si429365pfn.1.2020.02.14.12.42.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 12:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id o28so9170481qkj.9
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 12:42:52 -0800 (PST)
X-Received: by 2002:a37:a84f:: with SMTP id r76mr4303279qke.115.1581712971940;
        Fri, 14 Feb 2020 12:42:51 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n191sm4033808qkn.6.2020.02.14.12.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 12:42:51 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Feb 2020 15:42:49 -0500
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200214204249.GA3624438@rani.riverdale.lan>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
 <20200214061654.GA3136404@rani.riverdale.lan>
 <20200214180527.z44b4bmzn336mff2@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200214180527.z44b4bmzn336mff2@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=swshXf0S;       spf=pass
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

On Fri, Feb 14, 2020 at 10:05:27AM -0800, Fangrui Song wrote:
> I know little about objtool, but if it may be used by other
> architectures, hope the following explanations don't appear to be too
> off-topic:)
> 
> On 2020-02-14, Arvind Sankar wrote:
> >Can you describe what case the clang change is supposed to optimize?
> >AFAICT, it kicks in when the symbol is known by the compiler to be local
> >to the DSO and defined in the same translation unit.
> >
> >But then there are two cases:
> >(a) we have call foo, where foo is defined in the same section as the
> >call instruction. In this case the assembler should be able to fully
> >resolve foo and not generate any relocation, regardless of whether foo
> >is global or local.
> 
> If foo is STB_GLOBAL or STB_WEAK, the assembler cannot fully resolve a
> reference to foo in the same section, unless the assembler can assume
> (the codegen tells it) the call to foo cannot be interposed by another
> foo definition at runtime.

I was testing with hidden/protected visibility, I see you want this for
the no-semantic-interposition case. Actually a bit more testing shows
some peculiarities even with hidden visibility. With the below, the call
and lea create relocations in the object file, but the jmp doesn't. ld
does avoid creating a plt for this though.

	.text
	.globl foo, bar
	.hidden foo
	bar:
		call	foo
		leaq	foo(%rip), %rax
		jmp	foo

	foo:	ret

> 
> >(b) we have call foo, where foo is defined in a different section from
> >the call instruction. In this case the assembler must generate a
> >relocation regardless of whether foo is global or local, and the linker
> >should eliminate it.
> >In what case does does replacing call foo with call .Lfoo$local help?
> 
> For -fPIC -fno-semantic-interposition, the assembly emitter can perform
> the following optimization:
> 
>    void foo() {}
>    void bar() { foo(); }
> 
>    .globl foo, bar
>    foo:
>    .Lfoo$local:
>      ret
>    bar:
>      call foo  --> call .Lfoo$local
>      ret
> 
> call foo generates an R_X86_64_PLT32. In a -shared link, it creates an
> unneeded PLT entry for foo.
> 
> call .Lfoo$local generates an R_X86_64_PLT32. In a -shared link, .Lfoo$local is
> non-preemptible => no PLT entry is created.
> 
> For -fno-PIC and -fPIE, the final link is expected to be -no-pie or
> -pie. This optimization does not save anything, because PLT entries will
> not be generated. With clang's integrated assembler, it may increase the
> number of STT_SECTION symbols (because .Lfoo$local will be turned to a
> STT_SECTION relative relocation), but the size increase is very small.
> 
> 
> I want to teach clang -fPIC to use -fno-semantic-interposition by
> default. (It is currently an LLVM optimization, not realized in clang.)
> clang traditionally makes various -fno-semantic-interposition
> assumptions and can perform interprocedural optimizations even if the
> strict ELF rule disallows them.

FWIW, gcc with no-semantic-interposition also uses local aliases, but
rather than using .L labels, it creates a local alias by
	.set foo.localalias, foo
This makes the type of foo.localalias the same as foo, which I gather
should placate objtool as it'll still see an STT_FUNC no matter whether
it picks up foo.localalias or foo.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214204249.GA3624438%40rani.riverdale.lan.

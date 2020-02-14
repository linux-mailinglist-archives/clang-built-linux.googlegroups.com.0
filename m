Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQ52TTZAKGQEONG253I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id C05F415F955
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 23:20:52 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id n126sf7192805qkc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 14:20:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581718851; cv=pass;
        d=google.com; s=arc-20160816;
        b=kVKVtI3a3r4bp1/TApAB5uCBF55lyOG/mJMhUPMgib9FnJDoPTJ/cHTg1p87XGXiQT
         BK3nfAJSv/rXQZf5KheX3Y0Ew5qsibbMS3on831+KVWVhYHv2UB8EjlAQ4zRNfCpQTdj
         enR1Y5CPWcZC0VlO3GjOCJZf5/VwbU3YDEIS9G4DDzveuDlxb206qK1fa4+APp3TeD5e
         R19XPy2+LWF9/gwSQltpvomy2tnFyJp/x99FRhMggVahkLDJOCPuh44p7unkpR7lOHJS
         eh+oqkK+g/wLk+QFNwsLngC+D7DC6ufKfe4kYIT+EA0tq3D2q7CsqjjY+wTGqVgwyPEH
         flIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=96P6pnTliD96hlMYzQzDDJjf1YThNvUtKQDtcL2SP50=;
        b=eXoXzXhlDRTIU/Oj5W+lQbG7+aTwxDKrikDIvs4D7oA3QbNTLWxtXBT2O9NU26HTDz
         H9XFK6eKnoIXtIpFCE1ruw73BWsHvoCHypimajL8TXGvCbYr64hksovtTlsgQW5A9suP
         Xx3z+Dj+ikZ5glUmPCwViwLaEIYi0w3u5t/tZMlw8UJ9TzG4Ewiu2L5TrvJ8755f24ec
         Z9EtkUk8sBCAxZuQfvyrcCL3aCq/SeRjutHagcY8jT4ArKk/KPss31SQkGeAcER5Pm/j
         VHJoISS6Yfhr0mTT2MfObkjViIec8JtU1dJupe0+guASi2uOrtMoXZEqXCIFUxYkOlMa
         oQVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YhOOE++P;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=96P6pnTliD96hlMYzQzDDJjf1YThNvUtKQDtcL2SP50=;
        b=aVHT+ZphMCB5nbtZ2I1T/nwXsBgFykYWlslp/VlzTJqzLsUlwukDTEth3IBUsJdVUp
         fSd8ldqTNv6w0MzLKv3sWJn7hSAoxFc3HaTLwHjXXq/qJQw+moOeZjqZjEj5qpMfNeFd
         98IxcTCuSe9Ue12lOGdFOFCBrHAq/FlgtRZZb24YTEXhgRGZ6BbAb7o7/DIHjzjQI4xh
         M1mCzYdy9lgo4BxpwSd3Mxd54rEFunvGeE47wtEXYEhfEMmOeXI69+NF1TbvfLTbcbEJ
         nrvOf/lVoculJ2HowqurcPlIaAHMPJaJ4HVdBD5rRqJAc64HigN6P0xk+UQcY5PeV7dI
         m1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96P6pnTliD96hlMYzQzDDJjf1YThNvUtKQDtcL2SP50=;
        b=VQa+YzURGgb/9taSezsrjvvyJrAS5t6Qr9jzEe+XBhg2J9cer42WZBdyY5b2kBWkh5
         V5dLEnrqAbxOO0og6v4ojE8iOvadc/l+2hmVTFrSR591MMpi178+MnS9+z0pkoXIoqs/
         royqlSl893YlfQ0vpYIOVCYOzS8lip48UIrJ+gMxOIecfZl0RQzT79DTor2IX0Iq/chf
         iEqMKirYh0QBxN8/Hlv5q87GD2qJM4/REpndslRvItwHB/G9X6I0sJr/CgVQ9VeYp0yN
         A4VpeBNCcNPnkbZtH3HzimNGUfpwDJK+JgB7A/3z8wyJsRY9RAMhWi42qPq4knXqT+w7
         d/kw==
X-Gm-Message-State: APjAAAXlHHiUFnQCVE/YOF6McCQKQB0b7grrLzd5GsVAOdeOCgclLBT4
	ZLbvWzvb/nvuH+MPzOn1/9g=
X-Google-Smtp-Source: APXvYqzSbh7aguqrRBRiGXdukwivoZI9WKF/yVhGjLxBMDa1iu/p96Oah6mAvhvXoqGJX9r/JEthpA==
X-Received: by 2002:a37:5686:: with SMTP id k128mr1076348qkb.8.1581718851633;
        Fri, 14 Feb 2020 14:20:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:9c7:: with SMTP id y7ls1795477qky.6.gmail; Fri, 14
 Feb 2020 14:20:51 -0800 (PST)
X-Received: by 2002:a37:a095:: with SMTP id j143mr4723451qke.442.1581718851174;
        Fri, 14 Feb 2020 14:20:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581718851; cv=none;
        d=google.com; s=arc-20160816;
        b=c1SPkHmkPt4JHQFphv2eY0JXiJ79e4MkKgBYGyxsEfzTrSfe0rfbyvUjl+31o3hQsZ
         XkCvDbVecaEavKXAQicZFqj95iUwTAjTdnAOyHUlO9Wsi8jssmhp3gWrkXrODRk2t8f+
         HcKea+JvdtImar91AAxWdmC5PLuTZx+FLl4I2sR8P58H5psJ3GJinB/56NcXa5QLl7PK
         Mv/qP5g0nIJpHSV1omMnhP64W+Q66NtEqtSix2KioRwaC9CALlp+EIu4n/woCAfNKQcZ
         yhk537x3OvKBl2OxTG3aL/bhqm9hbuTYLU4//c0OSE/JT9ycAD145FHlTfhmw6ejgKX6
         duug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tiLMcpuQCJowZpF4KBzP5ytOkA1tgz9FkwQwKlIP3sE=;
        b=BknOMKOwBlv8Fle95wVLyQX+cn0uKmrUIKMbH+MBbc5kRPY23202mYdTgrA+PeK1Jt
         VXpBhdVDk0kuR1PyeGwslUgGD4FXeFKUemc9bPr2sAlP+y1ImqU7CMcIwV/+nwLlFFax
         r+OZy1q3ZrqgY24bNk1tBDea8qMhVIqk/99/7txvN3SgU6kTy2p9Zk/3gRmjxaRJOuoV
         H9Q9o5+bmtvpcggfXCUT3QlARVH/HqGMW4s8jtYiJGKQ+jSTHzgk5nf4gY1C3ablOYjU
         AwfA6OiC6+OkWcf7LSF3vlcKlR0sMLGRjSt/nysaEQYBUMrCSR+Sqf7dtOWvw7SY2Vob
         gssw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YhOOE++P;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id g23si355182qki.4.2020.02.14.14.20.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 14:20:51 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id e8so4219112plt.9
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 14:20:51 -0800 (PST)
X-Received: by 2002:a17:902:bb93:: with SMTP id m19mr5525465pls.310.1581718849867;
        Fri, 14 Feb 2020 14:20:49 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id p16sm7816969pgi.50.2020.02.14.14.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 14:20:49 -0800 (PST)
Date: Fri, 14 Feb 2020 14:20:46 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200214222046.bkafub6dbtapgter@google.com>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
 <20200214061654.GA3136404@rani.riverdale.lan>
 <20200214180527.z44b4bmzn336mff2@google.com>
 <20200214204249.GA3624438@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200214204249.GA3624438@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YhOOE++P;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642
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

On 2020-02-14, Arvind Sankar wrote:
>On Fri, Feb 14, 2020 at 10:05:27AM -0800, Fangrui Song wrote:
>> I know little about objtool, but if it may be used by other
>> architectures, hope the following explanations don't appear to be too
>> off-topic:)
>>
>> On 2020-02-14, Arvind Sankar wrote:
>> >Can you describe what case the clang change is supposed to optimize?
>> >AFAICT, it kicks in when the symbol is known by the compiler to be local
>> >to the DSO and defined in the same translation unit.
>> >
>> >But then there are two cases:
>> >(a) we have call foo, where foo is defined in the same section as the
>> >call instruction. In this case the assembler should be able to fully
>> >resolve foo and not generate any relocation, regardless of whether foo
>> >is global or local.
>>
>> If foo is STB_GLOBAL or STB_WEAK, the assembler cannot fully resolve a
>> reference to foo in the same section, unless the assembler can assume
>> (the codegen tells it) the call to foo cannot be interposed by another
>> foo definition at runtime.
>
>I was testing with hidden/protected visibility, I see you want this for
>the no-semantic-interposition case. Actually a bit more testing shows
>some peculiarities even with hidden visibility. With the below, the call
>and lea create relocations in the object file, but the jmp doesn't. ld
>does avoid creating a plt for this though.
>
>	.text
>	.globl foo, bar
>	.hidden foo
>	bar:
>		call	foo
>		leaq	foo(%rip), %rax
>		jmp	foo
>
>	foo:	ret

Yes, GNU as is inconsistent here.  While fixing
https://sourceware.org/ml/binutils/2020-02/msg00243.html , I noticed
that the rule is quite complex. There are definitely lots of places to
improve.  clang 10 emits relocations consistently.

   call	foo              # R_X86_64_PLT32
   leaq	foo(%rip), %rax  # R_X86_64_PC32
   jmp	foo              # R_X86_64_PLT32

We can teach the assembler to not emit relocations referencing STV_HIDDEN or
STV_INTERNAL symbols, but I favor the simpler rule that only relocations
referencing STB_LOCAL non-STT_GNU_IFUNC symbols defined in the same section are resolved.
Leave the visibility jobs to the linker.

If we ever teach GNU objcopy or llvm-objcopt an option to set
visibility, resolving relocations may disallow such use cases.

Unfortunately gcc>=5 x86 and GNU ld>=2.26 x86 are in a bad status
regarding STV_PROTECTED (https://reviews.llvm.org/D72197#1866384).
(Now I retest it, I think I may add a special -no-integrated-as rule to
clang just to work around GNU ld x86>=2.26.)

>> >(b) we have call foo, where foo is defined in a different section from
>> >the call instruction. In this case the assembler must generate a
>> >relocation regardless of whether foo is global or local, and the linker
>> >should eliminate it.
>> >In what case does does replacing call foo with call .Lfoo$local help?
>>
>> For -fPIC -fno-semantic-interposition, the assembly emitter can perform
>> the following optimization:
>>
>>    void foo() {}
>>    void bar() { foo(); }
>>
>>    .globl foo, bar
>>    foo:
>>    .Lfoo$local:
>>      ret
>>    bar:
>>      call foo  --> call .Lfoo$local
>>      ret
>>
>> call foo generates an R_X86_64_PLT32. In a -shared link, it creates an
>> unneeded PLT entry for foo.
>>
>> call .Lfoo$local generates an R_X86_64_PLT32. In a -shared link, .Lfoo$local is
>> non-preemptible => no PLT entry is created.
>>
>> For -fno-PIC and -fPIE, the final link is expected to be -no-pie or
>> -pie. This optimization does not save anything, because PLT entries will
>> not be generated. With clang's integrated assembler, it may increase the
>> number of STT_SECTION symbols (because .Lfoo$local will be turned to a
>> STT_SECTION relative relocation), but the size increase is very small.
>>
>>
>> I want to teach clang -fPIC to use -fno-semantic-interposition by
>> default. (It is currently an LLVM optimization, not realized in clang.)
>> clang traditionally makes various -fno-semantic-interposition
>> assumptions and can perform interprocedural optimizations even if the
>> strict ELF rule disallows them.
>
>FWIW, gcc with no-semantic-interposition also uses local aliases, but
>rather than using .L labels, it creates a local alias by
>	.set foo.localalias, foo
>This makes the type of foo.localalias the same as foo, which I gather
>should placate objtool as it'll still see an STT_FUNC no matter whether
>it picks up foo.localalias or foo.

The GCC approach costs more bytes. foo.localalias is not prefixed by .L,
thus it wastes sizeof(Elf*_Sym) bytes for each such function.

      5: 0000000000401000     7 FUNC    LOCAL  DEFAULT    1 foo.localalias

Call/jump relocations on ARM and MIPS treat STT_FUNC differently.
If eventually we use the clang optimization for ARM and MIPS, we
probably should consider changing `.Lfoo$local:` to `.set .Lfoo$local, foo`
The assembler is quite complex. I need to investigate more into LLVM MC.

R_ARM_CALL/R_ARM_THM_CALL can be used against STT_NOTYPE symbols.
That disables interwork thunks (https://reviews.llvm.org/D73542).
If objtool is used by ARM and such disabling semantic is ever needed,
the rule should be loosened to allow STT_NOTYPE.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214222046.bkafub6dbtapgter%40google.com.

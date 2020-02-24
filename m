Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWFG2HZAKGQE4ICAXJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB8916B48C
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 23:51:05 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id c66sf5039818oif.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:51:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582584664; cv=pass;
        d=google.com; s=arc-20160816;
        b=PWBSJarXwXOazEmX07kQgJf0irbws27jlGVIt457J3+KQa3fglj8OSJswjn1CvuLDF
         rdraCpFioxxI9p1xJ9nIOWWmbIsOa0bw17XAvtRO6ydp84p1pMLUJ8/C9ikV7MrqCvvU
         Bp+QK2MaKOEzMVeZXIkmSuV+HPh87fAX5lqNoF3DSVRE/eT/+Dh6NzwC6rlV2T9zkscW
         G1yMMXnMX4x4XT0BsDNkWTLUZFv7fuJiOcYFvgP3j5QnUIhUlYT3KhIBwI9dlvMKqFae
         crbMVHtMKg9SyXL68BMcd0z+0i8Ot8Tt9oH2dEZTO7OtSMgQ1O8LT9IZK+JxUbsooYOP
         K/Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0G4cMZ2Z/gVGnWHHjyROsmWa7DZia7x1pFfONTtUyfc=;
        b=DFsx9OQDEalRxYcWKuWvc7F2LposOXYEAP9BrauJGYDkLnkl5OlDf8bt6bfU5YVnuG
         mIa7TtO4nIinh13SA+ijkTFtNP2FDE5FzXEzOauqPvQY5YGsDFikbw3ALpM1qLPvSdgw
         7eAaEaTSyeFuCdGtJ0IyMbkYFdpf6aCP2hr4hpqD1ngnkP+9ajs2mGf0Mt7XCOZ5x5Bq
         RJOH4uBM1LeYkG8iQAdjEh43wOpMXFPYnLdmyBWeLLpalR4iz5/PjXii5b86zlpqSuYZ
         qrEPdad2DQ54lHtGfaYgxWZ6DnY3qNHzdrrjKcnnDci9VQaenwmVBp5lt2Kb49jtj2Vt
         G8LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JBsprV2Z;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0G4cMZ2Z/gVGnWHHjyROsmWa7DZia7x1pFfONTtUyfc=;
        b=e1sFGfeWI/nDwZcZQxMuHQ4RJ2RAOzha2EosNZC6Ez1aThuUuJ8xqHfMNxJnAngVoT
         G11HOkMrP5wJPRwhW/WEg+k7f5DlJZB9Equy71tbt9tfciRF35KCIaSS464OjYNmQPZx
         YpIW0MatWYPpgdx591+icFFHyRiKjMmx5+Xb1PG81zwq1epUr+E4AMqtSBod7KTnx+YS
         0yrO3i9MF42lZKsDXcbQagG+YbbGRmMghW9x8sp2wmRUNGO1xEMEQ5z9SZX6qupItX4p
         6YdGn0M4sVNJux0Z01LVXDJ+TPEQ1QiaYxQ8FhdecHVXncbJjlRuyqEvOhXw1zYs4dTo
         fV6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0G4cMZ2Z/gVGnWHHjyROsmWa7DZia7x1pFfONTtUyfc=;
        b=cUaB3dq2n+xHGsX4yrYndIIohTbQeiC0f7b18+/iNfeE317fnzvOzT2KbEdosApoNS
         Lkvw84Q1lfMgqEqJs4iT11PDDdE1wbt+b1V4jOhlo1IHt70QBp2FeEM3pkaI0703sH5Y
         T9AFVIRvhGlHtLKNMg8q8IijWVLoSeE/ZgP2lZz2t7uJCIDZVurQb8HUflb08T2nV+w8
         MGlJYcq77tZvUd00CFu7td24XuvKum7aeTNeG5JrY/rAWpeRHJVE1BvX9kI1Dj5Ebh5D
         +cBTHlioWpyB0jzQ0x94dtJiBMcRj89ABnSgUwPuJ4bOpi9y+8PAty9JSlRPpYEFFVyq
         WL7Q==
X-Gm-Message-State: APjAAAVFy4NqCgIIsKOiFg67hMyy3L932G7zp99NzvlXEEnQCmKkNtJe
	3on+q2OSpPo+iosQ3f7xQYE=
X-Google-Smtp-Source: APXvYqykOZx+uPpQmpEQWkrWHqjeZ2AZW/Zwie+dKpIQmtgotXg4TiNQBwdmxCRK6DHTCuPWsJl7EA==
X-Received: by 2002:aca:56d1:: with SMTP id k200mr1066396oib.25.1582584664095;
        Mon, 24 Feb 2020 14:51:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls3318103oib.9.gmail; Mon, 24 Feb
 2020 14:51:03 -0800 (PST)
X-Received: by 2002:aca:aa05:: with SMTP id t5mr1085346oie.93.1582584663690;
        Mon, 24 Feb 2020 14:51:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582584663; cv=none;
        d=google.com; s=arc-20160816;
        b=v30NJR6/MxrKLQMb9RzL9inLuTtvZp9fO74l+B5FmkUtzTf72slREL3TKe8oN6du39
         jB1oA9CkJcDdCE1C3hr5OBDvZkL62Dy6HM/+OPJDmjMol+wGFiaYEMrPl5JLu2fJc9nH
         3X8uxpO3AO+dDExczqhZyeejJwcrKYYEtVAYzVDWjgNdlCn6vAF3DxGVM9Zn5cLFUKnh
         8EPiF2kStTG32eIhR2oUIsG+qBFUj03s1QasWgyCN35WjMF3PPoBCLHOv85LiaVRnM6P
         x3MgwyaGtTmmbHZc7yakmtn9utE1VUNXFe+9tnPmzIJ6VQHF8zi1V3vf2mVyheOzB0Vj
         qEIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=csKoX99wXjSZzk96rey5IsInzo47PM9NCitxp5N6Ioc=;
        b=FlvmYDkTGjvUFWEpTN454R6TglYlyoS1E/qYBf2RQWA8bfnSv3hORp7MjwQS2otoIz
         A6CQ9T5xSqzEBvffpYmOn7qfe2svcVHy3pVc8kqpLnewV7TUgD9YBE27oXtbzhTXw7ep
         NaSlHQjHnHE2JrejrXuP4zZp8QCNqL37woTG4mZoywGZL6K7NIp0ZGwAMKLReUUcUN/J
         JgZU9ZcrIhiAuBloRBNjK8EBoCjXUK1G647YARPjGg2YVG8qBvBFNQaYJLOLWwFwA7co
         TFGxo0hyIDcwdfToVgSl/YBQQLeS95p7NPlZnQecR+UQW1biiXQpmNQ5ELYvYuF3GZ/U
         1KxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JBsprV2Z;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b2si621181oib.5.2020.02.24.14.51.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:51:03 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d6so5881508pgn.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 14:51:03 -0800 (PST)
X-Received: by 2002:a62:1456:: with SMTP id 83mr54643458pfu.186.1582584662629;
        Mon, 24 Feb 2020 14:51:02 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id z4sm13622592pfn.42.2020.02.24.14.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 14:51:02 -0800 (PST)
Date: Mon, 24 Feb 2020 14:50:59 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200224225059.2scjklfi4g7wwdkp@google.com>
References: <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
 <20200224212828.xvxl3mklpvlrdtiw@google.com>
 <20200224214845.GC409112@rani.riverdale.lan>
 <20200224221703.eqql5hrx4ccngwa5@google.com>
 <20200224224343.GA572699@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200224224343.GA572699@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JBsprV2Z;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544
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

On 2020-02-24, Arvind Sankar wrote:
>On Mon, Feb 24, 2020 at 02:17:03PM -0800, Fangrui Song wrote:
>> On 2020-02-24, Arvind Sankar wrote:
>> >On Mon, Feb 24, 2020 at 01:28:28PM -0800, Fangrui Song wrote:
>> >> Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47
>> >>
>> >> Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
>> >> It seems that in GNU ld, the synthesized section is associated with the
>> >> original object file, so it can be written as:
>> >>
>> >>    SECTIONS { .pltfoo : { a.o(.plt) }}
>> >>
>> >> In lld, you need a wildcard to match the synthesized section *(.plt)
>> >>
>> >> .rela.dyn is another example.
>> >>
>> >
>> >With the BFD toolchain, file matching doesn't actually seem to work at
>> >least for .rela.dyn. I've tried playing around with it in the past and
>> >if you try to use file-matching to capture relocations from a particular
>> >input file, it just doesn't work sensibly.
>>
>> I think most things are working in GNU ld...
>>
>> /* a.x */
>> SECTIONS {
>>    .rela.pltfoo : { a.o(.rela.plt) }  /* *(.rela.plt) with lld */
>>    .rela.dynfoo : { a.o(.rela.data) } /* *(.rela.dyn) with lld */
>> }
>
>The file matching doesn't do anything sensible. If you split your .data
>section out into b.s, and update the linker script so it filters for
>b.o(.rela.data), .rela.dynfoo doesn't get created, instead the default
>.rela.dyn will contains the .data section relocation. If you keep the
>filter as a.o(.rela.data), you get .rela.dynfoo, even though a.o doesn't
>actually contain any .rela.data section any more.

I raised the examples to support my viewpoint "synthesized sections can
be matched, as well as input sections."

If there is really a need (rare, not recommended) to rename output
sections only consisting of synthesized sections (e.g. .plt .rela.dyn),
for linker portability, it is better using a wildcard for the input
filename pattern.

As another example, SECTIONS { /DISCARD/ : { *(.rela.*) } } discards synthesized .rela.*

>>
>> % cat <<e > a.s
>>   .globl foo
>>   foo:
>>     call bar
>>   .data
>>   .quad quz
>> e
>> % as a.s -o a.o
>> % ld.bfd -T a.x a.o -shared -o a.so

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224225059.2scjklfi4g7wwdkp%40google.com.

Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNMQ3SDQMGQEIQIRDDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EC53D0040
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 19:30:30 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id k19-20020a4ae2930000b029025d87cea48fsf15044746oot.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:30:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626802229; cv=pass;
        d=google.com; s=arc-20160816;
        b=w6eC26SpNg40bkZ3Mk9OeFIAcJy5V6B1Zl2PwLSeWRfw6qKdUGB3eq++xYcVzQJ9bX
         eC/qtN4MDQyn2imZ94FVqU1BiFV4CA/llqi2rYW2VwCgPIWVC31sCzmN98W0mT6MTxlw
         e7LZl3DnOeB3z5bzceh/FfBKqf+iafMo8faV7MP6LdJpgjBayth7rV4fmMrCp3dhg5/x
         ZgB34SVW0BiqeSmIbbkgWyH22dv6FNw5+cC247cUq2nQdbqOKuefN8xg6ZmKfFCxDq+h
         ZgfH+nP3s4U0dNs2CzadB6/luWCW/PtDLGLMwTzb1pu/YxhkrCvGsgdswTZ2aKWijQdl
         BERw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TwpglJjZmeEa66yW+VXPRXb+mdvqtu+mNCuIwknG2pA=;
        b=iazlpq3aRIv8fPuWEyprHonXorCQ2AMZKdx7vRR3ovhD20D9goEGOQSyzCelsK6cjR
         Vx1qbQMGVI3F2oDow3cP4Gf+/iOYdb2mM6DZ7CEqCSyqNb10PWNKmpwOIm7lKW8XJLF/
         9YkIZDzB/ZEO7iERPo14kJnlgRlJRu9jNKN4RmupiQKm2idrLEhgpgi/d1V+WteuYaur
         FfDgmhhBtlgxwCjOekN2ZLh44hcZQjv6jpxace73q5s4FLIMKTx6DTOs3H/PSFWTw4i4
         i37KvTkOefvA//I41ma3uQrmsqFU76zhCiqxbr1FWPPGh/Crh+tWKdflPHGuzposjQjI
         RaFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sii3r5bF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TwpglJjZmeEa66yW+VXPRXb+mdvqtu+mNCuIwknG2pA=;
        b=KfczYfqtnHQzFTUjivN1GzBQehs1O26WtoqJFuqgArwYqWwMN8jyy/552qlhhix9F2
         uablgW9hpzMC4onK7/IL9MiUZGioT1NjXlPLXq6gkNEVu5McFIU5vNMYTJF9D1YDuvWp
         NeFvJ/bJ5cc8H0zMzgCR3oijH1Dleel7LALSIm3Gjm14zo3FeMIOTrc/XNwpyZ7X/L6u
         Ax6fc60FALLa3xPaYR8eG9W1V/XOVV6qvTQFObv2YsMk6HIT8NM9oT2SnUxXE0NTq40r
         zHI9eZzulcF6QFIfVWALOI8NH48yP2qv2Kpl3TK7dWcdJZRQ3K4RJ4/d/g1I82u+PuVc
         FhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TwpglJjZmeEa66yW+VXPRXb+mdvqtu+mNCuIwknG2pA=;
        b=XvQbOpTmvkskUEVM1G9Zvoj7v0ObRuhDPWA+euxLMGWQFEjTGQxGipOJIvteEczbBL
         MSULjYDgk5rH+ZEZeiH+nZ+ffGxhy/1xU9FzHSeeqtcvm16mGu+gdq9/gmFN8bTWeSv1
         Ogu+QhbJB5du3abIKabRcqpIeENReic2St/Z1iyFU011YzjIfp4a0HC7c0ClBB2FSUv5
         l8F74nIsWNUXvTfypspk59Y/YWqx0sxK99p6zvzC5j1/riCVM+nN7WDoKw7uNtGvCEm0
         s6uQrUrJCnAjHBBrEcodxYYXQvUxC4DfP2kH7NnrYWKXMOUDIE0uuVrFbnAequwta1Zx
         kpIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pTMYT6MoWRJCB4HBF7ozojdC9MZKpsRA2IEm8XCYGNimbrIyv
	AYvsoWfEwC74GgLDOrIDrow=
X-Google-Smtp-Source: ABdhPJyQseqLMrKMoGOXNx6Bg0pYBMm1ZW7H1TCYDPAikSKvjHJlLVMvUwiI1cQBYvMRSR+MI2roVA==
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr24417810otc.114.1626802229175;
        Tue, 20 Jul 2021 10:30:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:b443:: with SMTP id h3ls2340948ooo.4.gmail; Tue, 20 Jul
 2021 10:30:28 -0700 (PDT)
X-Received: by 2002:a4a:1401:: with SMTP id 1mr21539211ood.50.1626802228795;
        Tue, 20 Jul 2021 10:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626802228; cv=none;
        d=google.com; s=arc-20160816;
        b=kHnuoa2iIIpMIjbrHB3QbTXjAB5xqymLmldlB+R4QA08iHabMgcmGJcXIeNRFSidyQ
         7BfHLOeo5Yyhe0K1TuKv2+fWxOYkXuk+JaEvRoTZoGIKEptusKLg7u9GUHAlt2S6Exxv
         njhoSjxStzAi1xeKdqQJ+gfANcb127Dt0PuloIhvSE07X12gpB8P+tFVdxLB+AUzKgGj
         mNMDlb0GfoYiDwn8QOu0nC++kScoTvASEVhoQUZnStR2pXXPYG86DCZBDTJdTxbUORvX
         zbqi7tNs+c+4Q0YZvQGVvH/sFcrnh7tP6ureXZWiX9fYSXenuewhcNHratz4XUFYx/fG
         X+qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kGxlnmqaedmncIUOLqAKx+Uo0hcF/GnmW80BBL5YtDs=;
        b=APd+B9OZS8XxsM7KDC8cC82quN+xg1BD9znpLDJtk4MQbufO8KvLCZtR5MrPRp4mJ0
         RTldrt1XTNLN3JnqNpIiHk/SN43tAZRs9T+gh2ABpPSyTUnOVfC8W+MMLrU9m7zo52AZ
         OqYQ14UGvZ43SYlGpY/okazEWhrZmZtbtkvdqUpMjwuz+vnm4xVLy5fnZARP2kZX+blC
         c05Q5B+XMM3TywX49opJaWU0D2Ky0EXYNBdaAkKoTCsL/CmC7CSh/W7vSE35HL/X12ei
         f1bpr9in+J4Dj/vY+ntPcDOeGWDoeHWztAGmpEDG5/kkJzjQMX6SsgCXYhVDY5b3JURI
         JypA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sii3r5bF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si1518500otb.2.2021.07.20.10.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 10:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B97260234;
	Tue, 20 Jul 2021 17:30:27 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com>
 <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0636b417-15bb-3f65-39f7-148d94fe22db@kernel.org>
Date: Tue, 20 Jul 2021 10:30:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sii3r5bF;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 7/20/2021 1:04 AM, Masahiro Yamada wrote:
> On Fri, Jul 9, 2021 at 8:25 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> We get constant feedback that the command line invocation of make is too
>> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
>> target triple, or is an absolute path outside of $PATH, but it's mostly
>> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
>> (normalized for a few different targets).
>>
>> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
>> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
>>
>> Previously, we'd cross compile via:
>> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
>> Now:
>> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>>
>> For native builds (not involving cross compilation) we now explicitly
>> specify a target triple rather than rely on the implicit host triple.
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
>> Suggested-by: Arnd Bergmann <arnd@kernel.org>
>> Suggested-by: Nathan Chancellor <nathan@kernel.org>
>> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>> Changes v1 -> v2:
>> * Fix typos in commit message as per Geert and Masahiro.
>> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>>    Masahiro. Add his sugguested by tag.
>> * change commit oneline from 'drop' to 'infer.'
>> * Add detail about explicit host --target and relationship of ARCH to
>>    SRCARCH, as per Masahiro.
>>
>> Changes RFC -> v1:
>> * Rebase onto linux-kbuild/for-next
>> * Keep full target triples since missing the gnueabi suffix messes up
>>    32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
>>    drop references to arm64.
>> * Flush out TODOS.
>> * Add note about -EL/-EB, -m32/-m64.
>> * Add note to Documentation/.
>>
>>   Documentation/kbuild/llvm.rst |  5 +++++
>>   scripts/Makefile.clang        | 34 ++++++++++++++++++++++++++++++++--
>>   2 files changed, 37 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
>> index b18401d2ba82..80c63dd9a6d1 100644
>> --- a/Documentation/kbuild/llvm.rst
>> +++ b/Documentation/kbuild/llvm.rst
>> @@ -46,6 +46,11 @@ example: ::
>>
>>          clang --target=aarch64-linux-gnu foo.c
>>
>> +When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
>> +unnecessary and can be inferred from ``ARCH``. Example: ::
>> +
>> +       ARCH=arm64 make LLVM=1 LLVM_IAS=1
>> +
>>   LLVM Utilities
>>   --------------
>>
>> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
>> index 297932e973d4..956603f56724 100644
>> --- a/scripts/Makefile.clang
>> +++ b/scripts/Makefile.clang
>> @@ -1,6 +1,36 @@
>> -ifneq ($(CROSS_COMPILE),)
>> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
>> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
>> +# target triple.
>> +ifeq ($(CROSS_COMPILE),)
>> +ifneq ($(LLVM),)
> 
> 
> Do you need to check $(LLVM) ?
> 
> 
> LLVM=1 is a convenient switch to change all the
> defaults, but yet you can flip each tool individually.
> 
> Instead of LLVM=1, you still should be able to
> get the equivalent setups by:
> 
> 
>    make CC=clang LD=ld.lld AR=llvm-ar OBJCOPY=llvm-objcopy ...
> 
> 
> The --target option is passed to only
> KBUILD_CFLAGS and KBUILD_AFLAGS.
> 
> So, when we talk about --target=,
> we only care about whether $(CC) is Clang.
> Not caring about $(AR), $(LD), or $(OBJCOPY).
> 
> 
> scripts/Makefile.clang is already guarded by:
> 
> ifneq ($(findstring clang,$(CC_VERSION_TEXT)),

$ make ARCH=arm64 CC=clang LLVM_IAS=1

will use the right compiler and assembler but none of the other binary 
tools because '--prefix=' will not be set so CROSS_COMPILE needs to be 
specified still, which defeats the purpose of this whole change. This 
patch is designed to work for the "normal" case of saying "I want to use 
all of the LLVM tools", not "I want to use clang by itself".

>> +ifeq ($(LLVM_IAS),1)
>> +ifeq ($(SRCARCH),arm)
>> +CLANG_FLAGS    += --target=arm-linux-gnueabi
>> +else ifeq ($(SRCARCH),arm64)
>> +CLANG_FLAGS    += --target=aarch64-linux-gnu
>> +else ifeq ($(SRCARCH),hexagon)
>> +CLANG_FLAGS    += --target=hexagon-linux-gnu
>> +else ifeq ($(SRCARCH),m68k)
>> +CLANG_FLAGS    += --target=m68k-linux-gnu
>> +else ifeq ($(SRCARCH),mips)
>> +CLANG_FLAGS    += --target=mipsel-linux-gnu
>> +else ifeq ($(SRCARCH),powerpc)
>> +CLANG_FLAGS    += --target=powerpc64le-linux-gnu
>> +else ifeq ($(SRCARCH),riscv)
>> +CLANG_FLAGS    += --target=riscv64-linux-gnu
>> +else ifeq ($(SRCARCH),s390)
>> +CLANG_FLAGS    += --target=s390x-linux-gnu
>> +else ifeq ($(SRCARCH),x86)
>> +CLANG_FLAGS    += --target=x86_64-linux-gnu
>> +else
>> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
>> +endif # SRCARCH
>> +endif # LLVM_IAS
>> +endif # LLVM
>> +else
>>   CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>> -endif
>> +endif # CROSS_COMPILE
>> +
>>   ifeq ($(LLVM_IAS),1)
>>   CLANG_FLAGS    += -integrated-as
>>   else
>> --
>> 2.32.0.93.g670b81a890-goog
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-3-ndesaulniers%40google.com.
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0636b417-15bb-3f65-39f7-148d94fe22db%40kernel.org.

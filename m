Return-Path: <clang-built-linux+bncBCS7XUWOUULBBGUAXSAAMGQEMN4JRBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id D85823028DA
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 18:30:08 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id y1sf14890487ybe.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 09:30:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611595802; cv=pass;
        d=google.com; s=arc-20160816;
        b=QlSftHwbcVMSpcYARsbOryl3PJlNQvdBdZB7fd49iTooRYFqcKSNyVwvwO99upchaw
         Z4EPlupnqDCyteC44yWy1DA7tnjoWvS0N4t6GcDqEPPQAyeVuSDAkHStmXVfyVBOR6EY
         ZYZCERwkWAPUTNg/clRy1VeY7G1DxnTNjkTQ3lBJEEy333qa5ZK3Lv8f7e6fCk/wMWRm
         6Bc16mGe02FodiUUq31/Ll5Ff1ky+PRWxaCekugRUOgY0fYJbuGtrGvkkFezJlQN6COU
         jFzrB0pDYk0G9UzmWT/+VBNXCVx/1MlqMJDhS1AtcDTguXlqHburJU0Jy0Z52NQipdjd
         2ufA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pch8r2K/prXQBexjbX6FDPaNziIbpazw2ntwFTNWwfA=;
        b=KNYSChbUL1+M1ZuHu4hBATI99xitqXI3pMbwqvNP8/bRFBCRB02Co9uhb1JDDkvink
         3/I/ndrnA8vedw9gk2ekvG6ounmSzDy9BCf60uem+CLTJ/mX0dChzYnMqwJYexVy/dyH
         OIFcqq5xuWtkc4mLJ/vX3+3x0H3LJTG5ngvVtqaI6/MJwiyS6ED3pPe2HQpg1BgrdR2D
         MWjMwRpNe5RB+hBgHAJH+pTr4lXNnnAWDm/tKOrRtf2cZejuRUH990/3lbXRR8d4IFP4
         YGFbEL/HHXw7LQ73R3sgxvM3ORi8U5tO26gsSTzjdzFqluDD1nMFwd9VhtwEZug1fe4j
         ghew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XGAmNAHd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pch8r2K/prXQBexjbX6FDPaNziIbpazw2ntwFTNWwfA=;
        b=m12/gPcDSPmoXWXUbYkmJkqCwW54ajV52POWbeQ9fiRxK9hNWyno2rEyYR3gieDJ6t
         1SdA4xXCfmjgkIHc9W5MsgGcJdg18pt9EYgwEEzAvw0gwEjSAuGYCrmXgWZcUKzCKAZR
         Gl/c+ALQLd1V/x0Qcij4RjfYmlb7ezXfuFiokqBQlVnQ9glb8Tf5ekHW49e/hOlJJl/S
         ESHur1tfPXRf0u7QudpptcNvjtOkedwyA2S70LZnjx6pLvIVEsBorGDUhEp0t0jarzKb
         tkFTiQL3cdiP4PpN0ASOv+jjzZDMy+Nps8FjJ5QP01aRkkEIET7so/LL34/27+oNi2ow
         TseQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pch8r2K/prXQBexjbX6FDPaNziIbpazw2ntwFTNWwfA=;
        b=q6n/M7yOFEEdC5EGcBmfRNq5S4D1QcWZxgx/UtXRM1EWPIxy7fLptVjW8wuFfzxZVP
         ho5ZDYwgow5B0CKdnJfoRZzH51x/BJhcD66/REly/j8fFha87QXbn6lz9I51zZ48cTLM
         I/iTNYejOkyRRje5i4+Oeppei9BxgKTCT14wlMjCcRwOX0ErbU8EUm7CO9zGFkQBDAVk
         kBXZ1/JA76FXuidK3GVx40hMWQaS75PWO7EJ+4GJRPGwz93c7ksi9R4MIUuCZqg+QzL0
         qiHNwWs2DAHZFBz0R/3G4FoKzklXyfP/EBxab1uuipu1Ztb4gnZrkG3CWtpJnRdjcmma
         lHnQ==
X-Gm-Message-State: AOAM531QPgalWY4tBNG9TXI+puEPKOjuyJYN/uLaSXiqpcI6mqKGoCzn
	SfB+0whcxOrAJhLt2MSWJk0=
X-Google-Smtp-Source: ABdhPJzw9lYlLq4hgYTqVnOWBHERLBY8BrFNGqqa/LD1hHtL/qcZgYaJXB3qmI48n0EBhEyesjcL2A==
X-Received: by 2002:a25:538a:: with SMTP id h132mr2105898ybb.247.1611595802748;
        Mon, 25 Jan 2021 09:30:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c9:: with SMTP id o192ls4858074yba.10.gmail; Mon, 25
 Jan 2021 09:30:02 -0800 (PST)
X-Received: by 2002:a25:ed0d:: with SMTP id k13mr2205612ybh.222.1611595802346;
        Mon, 25 Jan 2021 09:30:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611595802; cv=none;
        d=google.com; s=arc-20160816;
        b=sPDT8eyty4THIbgaZT/bctVEKiVou9EdY//t7ym1tgMY6PclBDNmAeUV4qNeaZNCWU
         EqVfFKY1QQL3N/P29owrH0nqB0ftqVQWAW6H4n6cLoJS8oR8Af+mCe5Ym0Ss8Sdzakdc
         Xu10nfEGLBOM1Z2EqT1Hdw5dHARi71Sdrf5EPyOmLpXkapkQyH9dw2pgBRIYVaFtTYhS
         03AAd6JVnYULgKeqe9YmSuKXeRNPf/4ZqEsTt984UE2BASyqg57Lr8+NkQM/TE+ZIXsl
         VjD2Ee5LCZV6OLHyEbgyCzD1aKM6YbCCUwa1PXt+HCmq2X1NmoIJmkSMMwGO/Ohdto3t
         PD0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=naOBrYnG98m3QV0nKV1s7c8LTOjqUrSXlI1ZaarYe0k=;
        b=Gcb/43+1fHM5JoexxmMv7zBVjph67LSLBUgx0n3PhKo7gQ5MrXNlR3G9GxHPCGS3Zn
         eLnG94HO4AXd3cG8i753HUWxczDaLMq4W3r+A4leOKZGn4As90DLWuH6E8355nT+EnK2
         T+Eshhdj64xW3mG73syq/qbltC/kex+KqLLOfuXgPCzYRht58+r55Zby935jWudfJAmq
         rPBTd5hRYyozj6ubxunbherxNQlqr69wkkwFsVXx9++KUzwthcviBiio19vv/s0zlKnT
         6PPhpFgrxV0+nfRwHaUfToG8PQvCQh6WE6kNQhsHfkyRT33Lp03QMoPJYzRdmZaX8225
         C9Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XGAmNAHd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id x18si1055011ybe.0.2021.01.25.09.30.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 09:30:02 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id gx1so6347pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 09:30:02 -0800 (PST)
X-Received: by 2002:a17:902:bd01:b029:da:3d4f:abe1 with SMTP id p1-20020a170902bd01b02900da3d4fabe1mr1771132pls.16.1611595801300;
        Mon, 25 Jan 2021 09:30:01 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id y10sm17173409pff.197.2021.01.25.09.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 09:30:00 -0800 (PST)
Date: Mon, 25 Jan 2021 09:29:56 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michael Matz <matz@suse.de>
Subject: Re: [PATCH v3] x86: Treat R_386_PLT32 as R_386_PC32
Message-ID: <20210125172956.j2prlchhqwfcgzuc@google.com>
References: <20210107185555.2781221-1-maskray@google.com>
 <20210114224819.1608929-1-maskray@google.com>
 <20210125142302.GA23070@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210125142302.GA23070@zn.tnic>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XGAmNAHd;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031
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


On 2021-01-25, Borislav Petkov wrote:
>It's a good thing I have a toolchain guy who can explain to me what you
>guys are doing because you need to start writing those commit messages
>for !toolchain developers.

How about this following message? I'll answer your questions in line as
well. Explaining everything in the message will be quite long...  If
someone is interested, I have put every possibly related matter in
https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected


This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
R_386_PLT32 can be treated the same as R_386_PC32.

R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types which can
only be used by branches. If the referenced symbol is defined
externally, a PLT will be used.
R_386_PC32/R_X86_64_PC32 are PC-relative relocation types which can be
used by address taking operations and branches. If the referenced symbol
is defined externally, a copy relocation/canonical PLT entry will be
created in the executable.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
This avoids copy relocations/canonical PLT entries.

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
GCC/GNU as convention is to use R_386_PC32 for non-PIC PLT and
R_386_PLT32 for PIC PLT. Copy relocations/canonical PLT entries are
possible ABI issues but GCC/GNU as will likely keep the status quo
because (1) the ABI is legacy (2) the change will drop a GNU ld
diagnostic for non-default visibility ifunc in shared objects.
https://sourceware.org/bugzilla/show_bug.cgi?id=27169

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit R_386_PLT32 for compiler generated function declarations,
because preventing canonical PLT entries is weighed over the rare ifunc
diagnostic.

Link: https://github.com/ClangBuiltLinux/linux/issues/1210
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>


>On Thu, Jan 14, 2021 at 02:48:19PM -0800, Fangrui Song wrote:
>> This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
>> R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
>> R_386_PLT32 can be treated the same as R_386_PC32.
>>
>> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
>> requirement that the symbol address is significant.
>> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
>> address significance requirement.
>
>I was told what "significant" means in that context and while it is
>clear to you, I'm pretty sure it is not clear to kernel developers who
>haven't looked at toolchains in depth. So please elaborate.

Expanded "significant" to more words. See above.

>> On x86-64, there is no PIC vs non-PIC PLT distinction and an
>> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
>> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
>
>Also, please explain in short why LLVM is generating R_X86_64_PLT32
>relocs now? I.e., is it the same reason as why binutils does that?
>
>I.e., mentioning the big picture of things would help as to why you're
>doing this.

It has been explained. The LLVM change was in 2018, roughly the same
time when GNU as emitted R_X86_64_PLT32. I think it does not need
extended explanation because of the separate canonical PLT entries
paragraph.

>> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
>> convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
>> PLT.
>
>Convention in general or convention for LLVM?

Changed to "GCC/GNU as convention".

>> clang-12 -fno-pic (since
>> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
>> can emit R_386_PLT32 for compiler generated function declarations as
>> well to avoid a canonical PLT entry (st_shndx=0, st_value!=0) if the
>> symbol turns out to be defined externally. GCC/GNU as will likely keep
>> using R_386_PC32 because (1) the ABI is legacy (2) the change will drop
>> a GNU ld non-default visibility ifunc for shared objects.
>> https://sourceware.org/bugzilla/show_bug.cgi?id=27169
>
>Not sure how useful this paragraph is for kernel developers...

Reorganize it a bit...

>> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
>> Reported-by: Arnd Bergmann <arnd@arndb.de>
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>>
>> ---
>> Change in v2:
>> * Improve commit message
>> ---
>> Change in v3:
>> * Change the GCC link to the more relevant GNU as link.
>> * Fix the relevant llvm-project commit id.
>> ---
>>  arch/x86/kernel/module.c | 1 +
>>  arch/x86/tools/relocs.c  | 2 ++
>>  2 files changed, 3 insertions(+)
>>
>> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
>> index 34b153cbd4ac..5e9a34b5bd74 100644
>> --- a/arch/x86/kernel/module.c
>> +++ b/arch/x86/kernel/module.c
>> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>>  			*location += sym->st_value;
>>  			break;
>>  		case R_386_PC32:
>> +		case R_386_PLT32:
>>  			/* Add the value, subtract its position */
>>  			*location += sym->st_value - (uint32_t)location;
>>  			break;
>> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
>> index ce7188cbdae5..717e48ca28b6 100644
>> --- a/arch/x86/tools/relocs.c
>> +++ b/arch/x86/tools/relocs.c
>> @@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>>  	case R_386_PC32:
>>  	case R_386_PC16:
>>  	case R_386_PC8:
>> +	case R_386_PLT32:
>>  		/*
>>  		 * NONE can be ignored and PC relative relocations don't
>>  		 * need to be adjusted.
>
>That comment might need adjustment.
>
>> @@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>>  	case R_386_PC32:
>>  	case R_386_PC16:
>>  	case R_386_PC8:
>> +	case R_386_PLT32:
>>  		/*
>>  		 * NONE can be ignored and PC relative relocations don't
>>  		 * need to be adjusted.
>
>Ditto.
>
>-- 
>Regards/Gruss,
>    Boris.
>
>https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125172956.j2prlchhqwfcgzuc%40google.com.

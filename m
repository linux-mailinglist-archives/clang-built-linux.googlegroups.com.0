Return-Path: <clang-built-linux+bncBCS7XUWOUULBBMU7S7ZAKGQE3AMS23Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CB115CE2A
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:37:40 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id u40sf4359161qtk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 14:37:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581633459; cv=pass;
        d=google.com; s=arc-20160816;
        b=DH6K+bceKDqJKoeSfX6VhQ30pc+zpAwdTRIOyL33yQ35PK0nkzysRLupmPRM3/kxW4
         swjmGkIYWyYfRTyE7A6D51+Cm+FT6xQpYZhcnTJ+Qw6uAjuP8wP8qxmL/FSfzMQm9ANW
         sad3N7uwLJGmqyrOMx0WYC/4dxJH5NGfiw9mPFl0n7gDiK9QflhE+kmlWmJq6MoBIr4k
         WXD1+CMsaktVxU0tJBZmC6hJWxAcKtsiMjG7790QhgPctZsCMm4wRF+7x722GDIex5Fy
         Exd6e0elW2DeR3WY/4zykOqNl2ZqY7gfsimmkorGi+WdSHKDnLChRudqYiubcDVHwAVN
         BxtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6E/16L7bqCdE0DV7ZixJM7lRJ3UNWq0xci7A3+M3XT8=;
        b=zGIAHl6g6SEpH8pucV6JSXNkyWgFFh2e8HTWqYwFtHkGm8Wq1H6q3nvNjHdZ626hGR
         UxSNPE0WjKnN1EJIy4SJjT1wamv6hinXDETMCcQ8z+tjDdlHy4A9Fen/Hcl8qDxW+6tK
         NoH/wNkpj8nysahdOSyAeAjSNh7k/OeWeE0M5pkl6pePPizBPlOiVZ+A9RJQ2m0bBG2P
         0LOUeTOsoK++/6mGgHIHxgu+4CitrYEwIJl0EaRi+hfA3GmUo0KaRPvPNok+VqkI7+L7
         55nJYz60kaLKx5lfRh8P5lXrOaQBJbem/QtUfsO8DcTEor5Dh2TidgjLzTadfG5V27pF
         bbxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uWPF75kg;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6E/16L7bqCdE0DV7ZixJM7lRJ3UNWq0xci7A3+M3XT8=;
        b=cCWN0dKoAEzPZCWTi2XQdQedyoYiZa+2oxWdofQUefVHMKUJE6wpLUjNH35j4HRcR2
         7syZ/DpnrkKPwYlsgyB8R1lpAFkTlO1N/TzMSkquIbzDedcCG+fsONw5xncjWTIRl8Cs
         13hPqgDRoWl9hcTFdQjbTFrcdin5qzrcumFodE+hOxUOcRfd/Ay4b+9msMxhBQPdCnVE
         cG6kZGAA/gVMehbbc/qFzUyZvI7Gyecrt8DPcsNuc0J/sFkrdg+8MaPlAFFfAJuJmvic
         U54jp/QC3MyQZGnuGDiqnINT4WRKhg0IHRpjh9w5fCa7PEMDxrXdLgXiu00nN7MmBzTi
         qJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6E/16L7bqCdE0DV7ZixJM7lRJ3UNWq0xci7A3+M3XT8=;
        b=iFlpgR8ppGlQmPZw6hLMZDcPU+M9z4KUH+x4wdWohyzZZTH8c+rS1ViAAf2fOW+xrz
         s26wdsI7MQFsBFQX9MY97aineKylQmZiYbwJGUzT80z/5hBQgBVQj7VLRkeCTOgQR55O
         w3+TI8PQndhfyeGuFD1ApvFzXEj2V7NEidXqPAab1pmWZ1Ml438wzizECcr5P+0MFojD
         B3xduuCzI3Y/leZ2eh+e1tvHIk/jwXY9IXpc2/0y8e+W/nwFC3gjWKRebHJcsg3zgWNT
         VtaCXm6qe5x3ss4O7c2lLbFxwI+EqX18ybnwxgllUCFGMbOOcJP86JOahQFJJD9kcK6Q
         X7+A==
X-Gm-Message-State: APjAAAUlKHJdsNTuIG/kS+kze+pqiqAdszoF/rukL3yrCkTfiOQ+XjSU
	1nFPHHRuQ6DXJJXV6hM2F88=
X-Google-Smtp-Source: APXvYqx87qJHOsy1117KSlXIcPd0kgYOBhAGKSyDJKGU6IsZE7bR8RAY2iC0nLEDirBJRLJORgJicQ==
X-Received: by 2002:a37:a649:: with SMTP id p70mr14727668qke.497.1581633459061;
        Thu, 13 Feb 2020 14:37:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls66588qtg.4.gmail; Thu, 13 Feb
 2020 14:37:38 -0800 (PST)
X-Received: by 2002:ac8:390a:: with SMTP id s10mr271536qtb.11.1581633458674;
        Thu, 13 Feb 2020 14:37:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581633458; cv=none;
        d=google.com; s=arc-20160816;
        b=uSqxe7hx6JwiysZi9whKq1bCPvpWPohc7dimsiut4qvsC2Go/UZM2SeWdTK99dBxX0
         OUQoesBo3Hd2mqwiivnMV5QAN0lbzWSi7GPLVhojoHJkuidwZ84km9eI3zPnE8eHR3+o
         4T7YN3CD5WmlEdnlWL+Sk9kez8Ox1rnZGZJ64XA4mIIWErmsThD+fPUYdTUOEw9tjbfa
         pspNYXmEaZF4AjYiYvllfh9/WvZgcfavU593WD/PbFjO77KReo9mIQHuf1jXEfM8b8wE
         pg6jzzTABxBD4PjOto5Y+vpWQOaodq8oAqGb8H+v4/R+w+uvrWoq5n47OqFyDRMy2K7L
         vRDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LSo1ah5/h9TUr/PTXeSMqWPKGVNPVelfqslM6wp+98E=;
        b=ly5gJxl8TG2ST84lFowwAV3dUhV0ILp2GptP4nX859P7+d4ssmo/McDL8FmYViuDRz
         Zg1PTkYu/obKLTeDmGibYd7B3K8Uf/iv/zlC9MAlMtWS7xBo0Cpy9zQazZD5E6BkyxOf
         hNQB5A5cw2dIbbLvLVwPAGxqwhozqiSKKuPlT94gaqUdiURgSMHATG0BoHgOMycQI/n+
         8sWEE1UNxbo4s/APj6XOspe1STPTmmxllg9PltgcFKCvwi8uqqilRAzL7r6plUdMVckX
         kFxq1nQkfkf5dRjNEwa9HG7e9pzeyzEC4MrT59DiLQnnWtARw6IENzUWh/IObE/K2hfe
         QINQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uWPF75kg;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l9si197333qkg.5.2020.02.13.14.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 14:37:38 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id c23so2914755plz.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 14:37:38 -0800 (PST)
X-Received: by 2002:a17:902:8ec6:: with SMTP id x6mr115086plo.247.1581633457449;
        Thu, 13 Feb 2020 14:37:37 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id r14sm4163006pfh.10.2020.02.13.14.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 14:37:36 -0800 (PST)
Date: Thu, 13 Feb 2020 14:37:34 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, peterz@infradead.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200213223734.3zjrvhshjyr5ca7p@google.com>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213221758.i6pchz4gsiy2lsyc@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200213221758.i6pchz4gsiy2lsyc@treble>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uWPF75kg;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
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

On 2020-02-13, Josh Poimboeuf wrote:
>On Thu, Feb 13, 2020 at 10:47:08AM -0800, Nick Desaulniers wrote:
>> Top of tree LLVM has optimizations related to
>> -fno-semantic-interposition to avoid emitting PLT relocations for
>> references to symbols located in the same translation unit, where it
>> will emit "local symbol" references.
>>
>> Clang builds fall back on GNU as for assembling, currently. It appears a
>> bug in GNU as introduced around 2.31 is keeping around local labels in
>> the symbol table, despite the documentation saying:
>>
>> "Local symbols are defined and used within the assembler, but they are
>> normally not saved in object files."
>>
>> When objtool searches for a symbol at a given offset, it's finding the
>> incorrectly kept .L<symbol>$local symbol that should have been discarded
>> by the assembler.
>>
>> A patch for GNU as has been authored.  For now, objtool should not treat
>> local symbols as the expected symbol for a given offset when iterating
>> the symbol table.

R_X86_64_PLT32 was fixed (just now) by
https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=292676c15a615b5a95bede9ee91004d3f7ee7dfd
It will be included in binutils 2.35 and probably a bug fix release of 2.34.x

>> commit 644592d32837 ("objtool: Fail the kernel build on fatal errors")
>> exposed this issue.
>
>Since I'm going to be dropping 644592d32837 ("objtool: Fail the kernel
>build on fatal errors") anyway, I wonder if this patch is still needed?
>
>At least the error will be downgraded to a warning.  And while the
>warning could be more user friendly, it still has value because it
>reveals a toolchain bug.

I still consider such a check (tools/objtool/check.c:679) unneeded.

st_type doesn't have to be STT_FUNC. Either STT_NOTYPE or STT_FUNC is
ok. If STT_GNU_IFUNC is used, it can be ok as well.
(My clang patch skips STT_GNU_IFUNC just because rtld typically doesn't
  cache R_*_IRELATIVE results. Having two STT_GNU_IFUNC symbols with same st_shndx and
  st_value can create two R_*_IRELATIVE, which need to be resolved twice
  at runtime.)

	} else if (rela->sym->type == STT_SECTION) {
		insn->call_dest = find_symbol_by_offset(rela->sym->sec,
							rela->addend+4);
		if (!insn->call_dest ||
		    insn->call_dest->type != STT_FUNC) {
			WARN_FUNC("can't find call dest symbol at %s+0x%x",
				  insn->sec, insn->offset,
				  rela->sym->sec->name,
				  rela->addend + 4);
			return -1;
		}


	.section	.init.text,"ax",@progbits
	call	printk
	call	.Lprintk$local
	.text
	.globl	printk
	.type	printk,@function
printk:
.Lprintk$local:
  ret

% llvm-mc -filetype=obj -triple=riscv64 a.s -mattr=+relax -o a.o
% readelf -Wr a.o

Relocation section '.rela.init.text' at offset 0xa0 contains 4 entries:
     Offset             Info             Type               Symbol's Value  Symbol's Name + Addend
0000000000000000  0000000200000012 R_RISCV_CALL           0000000000000000 printk + 0
0000000000000000  0000000000000033 R_RISCV_RELAX                             0
0000000000000008  0000000100000012 R_RISCV_CALL           0000000000000000 .Lprintk$local + 0
0000000000000008  0000000000000033 R_RISCV_RELAX                             0


On RISC-V, when relaxation is enabled, .L cannot be resolved at assembly
time because sections can shrink.

https://sourceware.org/binutils/docs/as/Symbol-Names.html

> Local symbols are defined and used within the assembler, but they are *normally* not saved in object files.

I consider the GNU as issue a missed optimization, instead of a bug.
There is no rigid rule that .L symbols cannot be saved in object files.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213223734.3zjrvhshjyr5ca7p%40google.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBOJ3H7QKGQEBTUH3DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 693512EC7BF
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 02:31:50 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t7sf3066876oog.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 17:31:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609983109; cv=pass;
        d=google.com; s=arc-20160816;
        b=BuaTfjmObGxWkv6B8Pb3fmATIHQtJn4H3cPa+gJPI4yf1XutaaAlFb6jOOnQUr5UTM
         KWVUBLtcjtsXlB7BkFGNW0MLJest58qlwpq0fdmI7lwcTc74lYFStt7qW5POD+YhtbcA
         fUaveoAVmhA0lYrCe7SayEKv6F38APJau07VamBhseeyjrcoT1mTys29FLGG0fJp5wxw
         knPIrdvrBjBTxAS9nwpCv6LWBNVjWo7Hiie6c0h9JSujQq2C1/9BZ5hdol7O354i7zcE
         VEm4RLEE8X8+nPpssyWih8dF2EQ+iMJrBL+0K9PRSTXPtoyj020KGKRRI1Ucxze9973m
         6saA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ab8l4zkpgLRfKpFhJEwDy9nOI3D0EzkVg0b6a2YIYmU=;
        b=aGjLHZxK1O7WWI1fKqO3VN9VJ3i9hglzGWCosjfT5g1xkd5B8W4tlcMnoUGzSLlusI
         qNpZ8iEPz6xaU9oNW7ETnmFDoR2fUa0xf/HugSSxpeLnRbpsW04eKvnjW32gQKihvmi0
         O8CnMGL5sRKmhLy8qRLtLM33XZMbH6UTLyNTDQVMRWob4SDbTONax9hbZGqz6rGRYYC4
         AhhgUvTSZGGMsE8M7yPearByjaoDakUM+U1Z5xOpcouagZQXkV+1SV+hSToE6mD2p/dy
         Ee0QNoAWvPLOr+0FSH7ta+Dc+/em2NQJJhalx2X/vyM6UVMC8ZinISq9jzIchXwhNdMz
         X5Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dE1vMDn9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ab8l4zkpgLRfKpFhJEwDy9nOI3D0EzkVg0b6a2YIYmU=;
        b=Bb1cqVAFaJiwGsaAmk++rKARfuXwOvPf/C0Ss0mSgzzeGqRPt49vUAFHA23ot4UG5I
         Rs4IkcPwR6HQTJieb+ROcmp/dC3O+Gb2H0Fhi1o4RK6mmyr+aahIqIsj1B57jTunTTSH
         2+B1+gWdvGLUR+0IE0hHx3YcNnvkTRu251JMdBtNyXiOPbJ5+P61VBtpk8dRY7Fd7o23
         RPnQwx4BWrYwOlKbglf4IENjol7MlHChycino1PADp5Z6Czbs0dElAi7gY3cYvGPTg3h
         0LXFzwLQKzw8X3hSgeTHvB35Q+QShLmVTWYvz65oq5XyDoEs5VPFs3pljCs9uEBrPOM0
         DntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ab8l4zkpgLRfKpFhJEwDy9nOI3D0EzkVg0b6a2YIYmU=;
        b=TTLum1ljo/kCiuGxkEzbfmNrF7hz/5VNSAD0eG1E3OXkPyJvvorjVy6akxi4ZpawsY
         2h6gYpf2XnsChFnfSeohqbSpto6yB7cNx2g+Sj991+nsnlgsJF9hIz6Wg6FWk0Lo6Bv9
         46hkmnuQ2RopQUcEugIkhMYn4FC27PHk4NkfYCiAW4vl41g6HQVDsMkd/V9nL9zzyk+5
         d/ehOo1tp3xd0OZBd9tqhHdvTttCMkD4KnY1d/xhxnOVU63A0/s01h1CyDEoJ4Mp3D49
         qpRB39RciMS8ppi2daruJLCTK2kLWbtZQnFBj4c6nFTd3JuK1rBNxx8nQ+AFHJyir1gw
         n3YQ==
X-Gm-Message-State: AOAM531TKy0dd3ih3lBNJ+K/X8KisjvoWegvH7uGwa7oYJKuXf/58UWb
	UfdTsrFB9C8GVNRgAb09ass=
X-Google-Smtp-Source: ABdhPJzjUvCQGasCe/4kVQh2MQdS/WeMkJjlEGyTPfUP0icar0xodvw8gv8OLUob30e6XFjZIe3ESA==
X-Received: by 2002:a05:6830:1d8e:: with SMTP id y14mr5072297oti.356.1609983109273;
        Wed, 06 Jan 2021 17:31:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1d3:: with SMTP id n19ls331247oot.5.gmail; Wed, 06 Jan
 2021 17:31:48 -0800 (PST)
X-Received: by 2002:a05:6820:34b:: with SMTP id m11mr4681733ooe.74.1609983108840;
        Wed, 06 Jan 2021 17:31:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609983108; cv=none;
        d=google.com; s=arc-20160816;
        b=OYfrcuOUuPFbm02ukmP3B5U0e66yBTlPJA/CNkfLSOcKGb+QHnoX+F41taFHhP1LJ5
         LMMLk612mbcHMX4NgQ5zLZVniBN6xk3Cx3/1XM+EXXOcpndTIfw6t+qIlVcCO0YVU+R+
         a1u5UCm9UL2hq+jasPDBDliEewfI2Wexj4YFfAxYBgWFCdkDvniKSoW/3Ugr1GIcuitc
         jT03rU84ce8yzU6pqOuFlhRr6o4v+aJYoU+w6ev3WyRdX2LoM/DwkXIGOwFmPIpBZjc+
         Ifszopt0JqMcQUMiNU0+KrnWlrY1pAcsRP/SWTgrS1rt6lLq/6lsJhOc7zC8TI45SZbD
         NBbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SbVYGy9XqOcWAwUS/VlqYQ0BKy9D6r7yL0ju+vzRuck=;
        b=x8lxjHOWzwk7lEd0jcvRLB5rR6D2w3igfW9pI8l79H5vCbW0jjUCp6mBGw1O/6VJ6M
         9UQXnu0a0jRJUaRyByLZJBXEj7rltmSoDzf08X5xzoJt3HPaEatUgPItvrzLeP0SDMpc
         bADfZtr+GUDDcoBEKyc5c6BlpCEXzhwXHkx+io0G7qk2g6ndjWx3eeTqMtg4+hKSeT8j
         hlvsV56JyEg/N31+qxaltw2lciqAWb8OEJ6IMS3avB6a9eBdMpdRP3Pwr0Ie7bXV6Uob
         sedSgZI7ZMHlPpKcP+epaZQSV3qwdQ4YLQNa9MQGYhuYA3GMPhOmsw2kEblxo3Nmo+x1
         FIlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dE1vMDn9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id r27si542259oth.2.2021.01.06.17.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 17:31:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id q4so2548209plr.7
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 17:31:48 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr6731683pjf.25.1609983107918;
 Wed, 06 Jan 2021 17:31:47 -0800 (PST)
MIME-Version: 1.0
References: <20210107001739.1321725-1-maskray@google.com>
In-Reply-To: <20210107001739.1321725-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Jan 2021 17:31:36 -0800
Message-ID: <CAKwvOdkR5E81=w-F9YbGdPCfr8qtUe_uPx6dnQiHdapC22XHgg@mail.gmail.com>
Subject: Re: [PATCH] x86: Treat R_386_PLT32 as R_386_PC32
To: Fangrui Song <maskray@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dE1vMDn9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jan 6, 2021 at 4:17 PM Fangrui Song <maskray@google.com> wrote:
>
> This is similar to commit b21ebf2fb4cde1618915a97cc773e287ff49173e "x86:
> Treat R_X86_64_PLT32 as R_X86_64_PC32", but for i386.  As far as Linux

nit: the format for referring to in tree sha's:

commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as R_X86_64_PC32")

ie. `commit <first 12 chars of sha> ("<oneline from commit message>")

> kernel is concerned, R_386_PLT32 can be treated the same as R_386_PC32.
>
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
> requirement that the symbol address is significant.
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
> address significance requirement.
>
> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
>
> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
> PLT, but R_386_PLT32 is arguably preferable for -fno-pic code as well:
> this can avoid a "canonical PLT entry" (st_shndx=0, st_value!=0) if the
> symbol turns out to be defined externally. Latest Clang (since
> 961f31d8ad14c66829991522d73e14b5a96ff6d4) can use R_386_PLT32 for

Is https://reviews.llvm.org/rG37f0c8df47d84ba311fc9a2c1884935ba8961e84
related? If so, that should be linked; it would be good to say
"clang-12" rather than "Latest Clang" since in some time "Latest
Clang" will lose meaning.

> compiler produced symbols (if we drop -ffreestanding for CONFIG_X86_32,
> library call optimization can produce newer declarations) and future GCC
> may use R_386_PLT32 as well if the maintainers agree to adopt an option
> like -fdirect-access-external-data to avoid "canonical PLT entry"/copy
> relocations https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98112

Punctuation for end of sentence.

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>

This fixes a build failure for me with clang-12 (ie. top of tree),
thanks for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I also see R_386_PC32 referenced in scripts/mod/modpost.c and wonder
if we'd need to potentially handle R_386_PLT32 relocation types there
as well? No current build failures, so maybe YAGNI.

> ---
>  arch/x86/kernel/module.c | 1 +
>  arch/x86/tools/relocs.c  | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>                         *location += sym->st_value;
>                         break;
>                 case R_386_PC32:
> +               case R_386_PLT32:
>                         /* Add the value, subtract its position */
>                         *location += sym->st_value - (uint32_t)location;
>                         break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..717e48ca28b6 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
>                  * NONE can be ignored and PC relative relocations don't
>                  * need to be adjusted.
> @@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
>                  * NONE can be ignored and PC relative relocations don't
>                  * need to be adjusted.
> --
> 2.29.2.729.g45daf8777d-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkR5E81%3Dw-F9YbGdPCfr8qtUe_uPx6dnQiHdapC22XHgg%40mail.gmail.com.

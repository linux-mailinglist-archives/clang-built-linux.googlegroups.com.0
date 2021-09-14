Return-Path: <clang-built-linux+bncBC2ORX645YPRBN43QSFAMGQEOLI6ILI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C7F40B98D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 23:01:44 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id f34-20020a05622a1a2200b0029c338949c1sf214462qtb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 14:01:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631653304; cv=pass;
        d=google.com; s=arc-20160816;
        b=ty26NwA8e1Wubct99FFSJdDdcuaTNG+M0dpNq3VHxVd7NIVjn8gVXLQ4FWTylJU3+B
         30zx1/ruy083avBKAR+zL4KccDIhDWuh4tMziVsv+kglp5qy01OaewEc/6VpbAyceJ94
         TgzUcQdE/aE+A/L3fLl144nk/CalkIxzQ3KVOLcL2Gz7gZN7v0bCs5RR0MCPUrDAXLn5
         wYuybYBMU0vA48J+qgo2up2oydUHn2fhnharJlil1862O68K3x1WGQtKWhqIdXzExOFH
         7/AiLTJq3tOWGVrodxtd+fLNMFApNvHAx8Us0YaeX9WZaAZ+ok975QdcxRYflXh4Iuwy
         CmyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MfjDr7jQ3ZnrzHuClCSfLYGtNljy2KklWP/yzvvuz+A=;
        b=uc4v4U7HPRkVHyfbSunPN/Lb5QQFTAFzp07GS48+nJTlZmH+NXvWoLBrWgHCeMxlyM
         PB0YLF6LP7MUJqL77Fiu152EVkrSm+kNs+VdMazJ/U5XnapHYXvg0UkJ8at0cnQQP2ly
         4nvLYPfuLse3cVXNNJHauy3TRCTUs4Ayqje4bf7FQRbnA055KkkLJ22xu3Mv6mHPu0mQ
         mroM8iU4upDCbgugk5dgtDZvPyYOyl8P48Vs7S/5LYtP46awNqloz1IEKWROB62SEKTB
         TwUTC12rNsFO1i78rfSul69mNq6mJ1xqZrQVcRPpTa8natvKFWRS/pybpP1ttSiXqC42
         s5pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=oHHJnBD6;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfjDr7jQ3ZnrzHuClCSfLYGtNljy2KklWP/yzvvuz+A=;
        b=YfY1eDqNiCPdqe3wyUy4KuZ2WAWK5A9IxSLKJj7OWVBbgQ7+sLvBKz3J598XBvZ0Lb
         MDW8uFr38vRslOvknYfEzh5f7UOXVCAIkKj27FylKMbV+orOnd8NyFbmkw89KQ9rVx+n
         XnPgC0H8qLywDCN3wolpri63Hc24+nXDJbFDAi8bPsAKRJdgHA79QhP9bG6W07rgLlH0
         qlH8o9Vvme3onZpuP/Duy4f2tJ/mEzQqcsuHzSC+wnf94RoXw9k5BmV4csdxVRswSNLB
         EDiadigdXD9mB7Nurlqt5OcMvI/4cGo8HzDWRXoasUT+VAnUMT2AS40906RJhKAi4T10
         w7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfjDr7jQ3ZnrzHuClCSfLYGtNljy2KklWP/yzvvuz+A=;
        b=AqWLBM2z/C0bTeEYtNu1pXIGhO260KZvw2wArPPrYq30zwvqgwOSPbEd14Doo5LLGM
         ncFq/xgZKKDTM+DIMtI0AQLt1PLH9oyFHPgIKAm8BoDjZKzXKd+dWC49LXxPI90ROiEH
         On1t0QPxT2DHXziqFWfUlkuKRRC+dcHKjZhQx1aBUkigmzc3iFdQQysr9P7EYY9436MA
         LwDryp3SP/slUgop+tkeKFkrw24z/RCayOu7qiXXUJYk3SyLAEWWgRYkWsv0xcjuJoFu
         n6I6NcdBmd52VasrSbBY5adKxqY6Z82dtPj/UEH+95l8gwnQfBbvYYZe/2xh/6Z1PQ2D
         o7ww==
X-Gm-Message-State: AOAM530hNPuepl37LVe+q15yoUOm+rHtlyiN/MWi1WyOO97QJsGtHho9
	sm9YCJLOtcIH4yV0Mpb+wJ0=
X-Google-Smtp-Source: ABdhPJzU+RtF6Ync8lKZYumpI9edJdejIREw8jlXKObNnHIESB7kvCjEtOhaaBTMTnRbc9FrTZqjMQ==
X-Received: by 2002:a05:620a:2914:: with SMTP id m20mr7029448qkp.497.1631653303863;
        Tue, 14 Sep 2021 14:01:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:180c:: with SMTP id t12ls144823qtc.10.gmail; Tue,
 14 Sep 2021 14:01:43 -0700 (PDT)
X-Received: by 2002:ac8:5c87:: with SMTP id r7mr6886306qta.114.1631653303318;
        Tue, 14 Sep 2021 14:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631653303; cv=none;
        d=google.com; s=arc-20160816;
        b=ycENrxYbDm/y3Ks3xbepB4BcqoDboemScIfJ3Fm7b4b2o4aj50lLK+b9OS6nubjLK1
         el3DPUXGsKRuB398jhKAsYvbYZNvytlIHEUf/ZNa4qqiV+EbH7OynlZGIIRnmIpY2Gld
         T4ueupARIqsku6/gbSNeD0LUYrNXXcIUs/wpXf/KRTlJysuTiuTJqj41Jn7Nq8wZzRrc
         i7w8XheXVDa+cpt+w7Pr/rQGEqJjXt3m3/LJaZpSprO7XhD4PMeNUyToriE0wgT+10JT
         aDVkdmCs92dD+Cz2pSSrAJbiTNaqsRe7ZxDl8tSCCN7CcZlXnRyLAgg4t7sK1IUNFtk1
         B09w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pkGAPucbjFQWpGvMKr0Saxy8X0oEUxiqCfIGsaeFN1I=;
        b=YRSQBhSxSEkx9hCJPiSAwCdlDZF5+sx4o5Hh4d5wAvhMEza3tvoHuPjYD2SmruFF+6
         v/LeOtObY+7d1dH1d5IMsXiCC9FYxO/ZmQ+txwj2ucm5vqr07KUlGymYBew6op3zZemy
         gvJDCLwvzLj5WYwwiznTSTgbHZ7yD2IdQsUdowB1+xmsJ8lJ2WQv82ZsMjkrHkSVWQXq
         gJLP0brUUl2/qtpSMGzhkA4wx7IomoCOTJ/K1Odjh0phmA9zkpdf54kSnsbK1FSR5Vzq
         uzGTveOCHpBnyGMRDO5QkWtm2/FUDqqMMxRP20SwcIXEItTZtQMrR693vlIouM2/ukGu
         LchQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=oHHJnBD6;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id u18si871280qkp.6.2021.09.14.14.01.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 14:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id s11so922372yba.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 14:01:43 -0700 (PDT)
X-Received: by 2002:a25:1bc5:: with SMTP id b188mr1500051ybb.267.1631653301347;
 Tue, 14 Sep 2021 14:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-2-samitolvanen@google.com> <CAKwvOd=pmcfJRkgBFnqePauMd67+eQ9=JAbSjxrWmBQY9zRveQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=pmcfJRkgBFnqePauMd67+eQ9=JAbSjxrWmBQY9zRveQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 14:01:30 -0700
Message-ID: <CABCJKufA537qjWumDSeF6y0Ei5Ej=SXY-7r=Qyu3+VtVUALSCA@mail.gmail.com>
Subject: Re: [PATCH v3 01/16] objtool: Add CONFIG_CFI_CLANG support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=oHHJnBD6;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Sep 14, 2021 at 12:29 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 14, 2021 at 12:10 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > With CONFIG_CFI_CLANG, the compiler replaces function references with
> > references to the CFI jump table, which confuses objtool. This change,
> > based on Josh's initial patch [1], goes through the list of relocations
> > and replaces jump table symbols with the actual function symbols.
> >
> > [1] https://lore.kernel.org/r/d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe@redhat.com/
> >
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  tools/objtool/arch/x86/decode.c      | 16 +++++++++
> >  tools/objtool/elf.c                  | 51 ++++++++++++++++++++++++++++
> >  tools/objtool/include/objtool/arch.h |  3 ++
> >  tools/objtool/include/objtool/elf.h  |  2 +-
> >  4 files changed, 71 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
> > index bc821056aba9..318189c8065e 100644
> > --- a/tools/objtool/arch/x86/decode.c
> > +++ b/tools/objtool/arch/x86/decode.c
> > @@ -62,6 +62,22 @@ bool arch_callee_saved_reg(unsigned char reg)
> >         }
> >  }
> >
> > +unsigned long arch_cfi_section_reloc_offset(struct reloc *reloc)
> > +{
> > +       if (!reloc->addend)
> > +               return 0;
> > +
> > +       if (reloc->type == R_X86_64_PC32 || reloc->type == R_X86_64_PLT32)
> > +               return reloc->addend + 4;
> > +
> > +       return reloc->addend;
> > +}
> > +
> > +unsigned long arch_cfi_jump_reloc_offset(unsigned long offset)
> > +{
> > +       return offset + 1;
> > +}
> > +
> >  unsigned long arch_dest_reloc_offset(int addend)
> >  {
> >         return addend + 4;
> > diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> > index 8676c7598728..05a5f51aad2c 100644
> > --- a/tools/objtool/elf.c
> > +++ b/tools/objtool/elf.c
> > @@ -18,6 +18,7 @@
> >  #include <errno.h>
> >  #include <objtool/builtin.h>
> >
> > +#include <objtool/arch.h>
> >  #include <objtool/elf.h>
> >  #include <objtool/warn.h>
> >
> > @@ -291,6 +292,10 @@ static int read_sections(struct elf *elf)
> >                 if (sec->sh.sh_flags & SHF_EXECINSTR)
> >                         elf->text_size += sec->len;
> >
> > +               /* Detect -fsanitize=cfi jump table sections */
> > +               if (!strncmp(sec->name, ".text..L.cfi.jumptable", 22))
> > +                       sec->cfi_jt = true;
> > +
> >                 list_add_tail(&sec->list, &elf->sections);
> >                 elf_hash_add(section, &sec->hash, sec->idx);
> >                 elf_hash_add(section_name, &sec->name_hash, str_hash(sec->name));
> > @@ -576,6 +581,49 @@ static int read_rela_reloc(struct section *sec, int i, struct reloc *reloc, unsi
> >         return 0;
> >  }
> >
> > +/*
> > + * CONFIG_CFI_CLANG replaces function relocations to refer to an intermediate
> > + * jump table. Undo the conversion so objtool can make sense of things.
> > + */
> > +static int fix_cfi_relocs(const struct elf *elf)
> > +{
> > +       struct section *sec;
> > +       struct reloc *reloc;
> > +
> > +       list_for_each_entry(sec, &elf->sections, list) {
> > +               list_for_each_entry(reloc, &sec->reloc_list, list) {
> > +                       struct reloc *cfi_reloc;
> > +                       unsigned long offset;
> > +
> > +                       if (!reloc->sym->sec->cfi_jt)
> > +                               continue;
> > +
> > +                       if (reloc->sym->type == STT_SECTION)
> > +                               offset = arch_cfi_section_reloc_offset(reloc);
> > +                       else
> > +                               offset = reloc->sym->offset;
> > +
> > +                       /*
> > +                        * The jump table immediately jumps to the actual function,
> > +                        * so look up the relocation there.
> > +                        */
> > +                       offset = arch_cfi_jump_reloc_offset(offset);
>
> Sorry, this comment is curious to me, it looks like we jump to the
> offset+1, not directly to the actual function?  Perhaps a comment
> above arch_cfi_jump_reloc_offset() and/or amending this comment might
> make it clearer? Sorry if this is obvious to others?  Perhaps comments
> can be cleaned up in a follow up, if this is not a bug?

It looks like my response was sent only to Nick, so to summarize the
brief off-list discussion:

arch_cfi_jump_reloc_offset() returns the offset to a relocation when
given the address of a jmp instruction in the CFI jump table. Here's
an example:

Disassembly of section .text..L.cfi.jumptable:

0000000000000000 <_printk.cfi_jt>:
       0: e9 00 00 00 00                jmp     0x5 <_printk.cfi_jt+0x5>
                0000000000000001:  R_X86_64_PLT32       _printk-0x4
       5: cc                            int3
       6: cc                            int3
       7: cc                            int3

We look at the relocation in the jump table to figure out the actual
target function, in this case, _printk. Alternatively, we could look
at the jump table symbol instead (i.e., _printk.cfi_jt) and use the
name to figure out the target. Unfortunately, LLVM doesn't generate
symbols for all the jump table entries, so we can't rely on them in
objtool.

What comes to the magic offset value, it's one because the first byte
of the jmp instruction is the opcode and the relocation only applies
to the rest of the instruction.

I'll add a comment to arch_cfi_jump_reloc_offset() in v4 to clarify this.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufA537qjWumDSeF6y0Ei5Ej%3DSXY-7r%3DQyu3%2BVtVUALSCA%40mail.gmail.com.

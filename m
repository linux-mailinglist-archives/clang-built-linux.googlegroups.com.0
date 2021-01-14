Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBCO6QKAAMGQE4OW7FVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CFD2F6C91
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:52:26 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id p19sf3884382plr.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:52:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610657545; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1Ut+dAil9PYJ0AQwbk8oOpWqUgPy3hZxJwqu89yseNg2l04zYyVh4nxBkBtqFI8/T
         iz/NBLo7RKilV6uEKGRpqRQODiICBZxxJGFGDOgtWSXBHDzH9KDuOFQqQ/7clRBh10w7
         6Dj0Ns6x810Ui5CU8XCq3+PU/E5LXuXYJHTLnsJ7BWxcrPFWK/SVP3xOu3giN3ACkfWg
         QAwqj6RG64IF4m5liharXiyImI1oNptSRAIj7THpu4iZvjfwEgoR3it3QLnq6lXESPEb
         7e4xdfdkmipfG6awkSc1udrp2zPQ2yaeKWjsyfLXn0wPdYUZuIwV4SRt/YOuy4iW7n4D
         0mag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8mRkPjZn2bMu7tdIQCyMlMmNmPVXyDIFjGrMNkoA4X8=;
        b=nv0nEDLwxhsiCqSp9B7JLzW3t9UvXvUTV/xx+uX57FXKT2H2KqUOubjFT26xtVVu6v
         I6fwLaujSu7d8dEyOcyXl9Fml14QGnucX82n0yEqd6QigB+cOc/klxEtxOliOlO2SFEZ
         ht1o3jVuR15B2guxt+lkvILXcteqh3gWEcddj4Swit+A8Q5t9xKVIG6tz5en+kp7OoOU
         sXnOvB54jTX+TZTEhjQcMuPmuTt9q9/1bkzil+AF6bjE5KV3NlIZ05ui/157zz+0Orxr
         FHJMARUGJOsYHCog2EXBJoTjVvMYljelwlc1ikmuQrIabL/TDNLzcZMy/yo1eCC2YNuv
         Bg2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hxClbXCx;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8mRkPjZn2bMu7tdIQCyMlMmNmPVXyDIFjGrMNkoA4X8=;
        b=Vo1osl6BFjwpmDSLykDe8JmmXdaoxSZXvN/NYyRaoux4b7Hg4ewg35IIh2f5v8LX07
         JfEvdAhE5yneWAEvBSRuqVTKs3jDFRdFA0BVtL4IUHTtQHvtEC0qI+X4BNmayCKi7KnL
         DMi5MZeAz6Y0qyVjfNB8xuP02Tuh+VaPvrG4AlhjOUWjlnw9c1zVV+RcVhO82y0XT3pL
         3PcRryaabfSUMnP8rxbfsC+v0+P9OJJiPjBGF82jlrQIFNNUksJtZC7fdeL0Mbpn38q1
         OGXRSH6AITRsqsWm23yb37yUd4NETWDLg0vata5fOkRmjvU+ARqXZNeOyAKIsvyDxXmM
         UE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8mRkPjZn2bMu7tdIQCyMlMmNmPVXyDIFjGrMNkoA4X8=;
        b=KQmMmSt/xZh8TW0TXhKUyCUNguwj7blTRx4Bj0DhdYPBpS43fAMJY4BKlNJy4pCOM/
         YMbeRyXbyNBZU3fbdmWQ90a5tLu2Wz0diVqSA9JCjIt5sNFDUgTi80e6ORfCmEU9pvcK
         2JznzGlZf2FIRnWrn3P01ouSlAU7u27qZ7UmRxRQ76vGuoZM9B8NlcgBKCW0kziFo1rk
         sGECDC96KlVszTaCuDX0hr1VAXS71Mik6lvOYmRNkw65UxZUn474290lkUGoard4jNZs
         SfS0s+Ej7jAvGGsmJil+wCQe7JC91EVZgjxDBhtp+a8TrTGLqBrY0L8A/RmOVnD3rlbJ
         yNkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300j4l7jl7PHjsjc0PSPLCQDQ8AhD4ZaGQX31Sa3o8j6PyopiWf
	dsaiJA2rMMp9Jy8p6Szuwc0=
X-Google-Smtp-Source: ABdhPJzTo0vZ/tfh1ghIimkXFQzk4lnAEAJ97a4+7BEMwgmBWIT9jdcTujmblJlL3nZqt30KwqehxA==
X-Received: by 2002:a63:1965:: with SMTP id 37mr9196501pgz.349.1610657545714;
        Thu, 14 Jan 2021 12:52:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f0e:: with SMTP id a14ls2573856pfd.1.gmail; Thu, 14 Jan
 2021 12:52:25 -0800 (PST)
X-Received: by 2002:aa7:9ec5:0:b029:19e:bfaf:1b24 with SMTP id r5-20020aa79ec50000b029019ebfaf1b24mr9067465pfq.51.1610657545154;
        Thu, 14 Jan 2021 12:52:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610657545; cv=none;
        d=google.com; s=arc-20160816;
        b=MI9d/rd3K+gmBJIxxPhLtYUjoRfW/j+Dr65/7lkJzggCB3zVFjU68pt+nu4b4sYWd/
         o0XDigIveHClbMM6dJeIAoAC6hQvRk6wL5TB2/w5cuWFOJIrjdOERWYtGXnjSqiH8FWi
         TJsPabOXyJfy2pgfi4JLrG86aekeMJnrMQk1QU9FCITZVH28fltmD9l2mDjyrX2MzHFm
         S3N3W6/1UyHhJPkA703ZnmsX4totdXjny+VJ0ez3qullCxl0FZc+qo7Vjyi2bLQmnfeX
         6qTPTMDvPsOZPuK8TPDhwZEfDyjbj2BVP336HFZ5mCHL7IKzOhmHpcMmWZBadeVil00C
         cgSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5VXXnJnQ0hbwXuBF80LJEMcDiMCYWT28JN4NS+HNN1E=;
        b=wY3854DcnJkWyTmhbcP/E/MJszrDonjcIEyO4l0xgET6J4rgDGxzRveOUrDLuOpWYU
         ndIzmU4ZOq1OKn+LkndoAJ+2PziCNfEvB9Kmf43SZvLe9WwtWpbzcoCyav+Z50mGV8yZ
         4YEEsr7+s/SxCBY4vJeuANp55iTOEIOMlBq1Uodedc7iqKVwoLdgA0S9DKjaxH9mZ/9Z
         NPjYVQBVLwLstRUms/hURBZdeCOaHRgni/cmSU37ye36d5WwsaRGY1QlvtbcIAtGVcKs
         us8vLlJ2PLVqpwjLmY3Gh+YabM59QT+egmAb54+HzqBC9iNTzliZwbKTK36PnEAOBcAU
         Wi6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hxClbXCx;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d22si465057pgb.1.2021.01.14.12.52.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:52:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-Jz6p4iWCOCOoTQSlOvADYw-1; Thu, 14 Jan 2021 15:52:20 -0500
X-MC-Unique: Jz6p4iWCOCOoTQSlOvADYw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38215100C660;
	Thu, 14 Jan 2021 20:52:18 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 144AF19744;
	Thu, 14 Jan 2021 20:52:15 +0000 (UTC)
Date: Thu, 14 Jan 2021 14:52:05 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 12/21] objtool: Add CONFIG_CFI_CLANG support
Message-ID: <20210114205205.hsfmq6nohhuyjkfb@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <c1889131d5de558e58700ba559e7d8606fe9c680.1610652862.git.jpoimboe@redhat.com>
 <CABCJKudFxiYbuHN+NVJ76QfHCky80nvsb_J08THmMmmHuy0vLA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudFxiYbuHN+NVJ76QfHCky80nvsb_J08THmMmmHuy0vLA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hxClbXCx;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jan 14, 2021 at 12:49:28PM -0800, Sami Tolvanen wrote:
> Hi Josh,
> 
> On Thu, Jan 14, 2021 at 11:41 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > The upcoming CONFIG_CFI_CLANG support uses -fsanitize=cfi, the
> > non-canonical version of which hijacks function entry by changing
> > function relocation references to point to an intermediary jump table.
> >
> > For example:
> >
> >   Relocation section '.rela.discard.func_stack_frame_non_standard' at offset 0x37e018 contains 6 entries:
> >       Offset             Info             Type               Symbol's Value  Symbol's Name + Addend
> >   0000000000000000  0002944700000002 R_X86_64_PC32          00000000000023f0 do_suspend_lowlevel + 0
> >   0000000000000008  0003c11900000001 R_X86_64_64            0000000000000008 xen_cpuid$e69bc59f4fade3b6f2b579b3934137df.cfi_jt + 0
> >   0000000000000010  0003980900000001 R_X86_64_64            0000000000000060 machine_real_restart.cfi_jt + 0
> >   0000000000000018  0003962b00000001 R_X86_64_64            0000000000000e18 kretprobe_trampoline.cfi_jt + 0
> >   0000000000000020  000028f300000001 R_X86_64_64            0000000000000000 .rodata + 12
> >   0000000000000028  000349f400000001 R_X86_64_64            0000000000000018 __crash_kexec.cfi_jt + 0
> >
> >   0000000000000060 <machine_real_restart.cfi_jt>:
> >     60: e9 00 00 00 00          jmpq   65 <machine_real_restart.cfi_jt+0x5>
> >                         61: R_X86_64_PLT32      machine_real_restart-0x4
> >     65: cc                      int3
> >     66: cc                      int3
> >     67: cc                      int3
> >
> > This breaks objtool vmlinux validation in many ways, including static
> > call site detection and the STACK_FRAME_NON_STANDARD() macro.
> >
> > Fix it by converting those relocations' symbol references back to their
> > original non-jump-table versions.  Note this doesn't change the actual
> > relocations in the object itself, it just changes objtool's view of
> > them.
> >
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > ---
> >  tools/objtool/elf.c | 28 ++++++++++++++++++++++++++++
> >  tools/objtool/elf.h |  2 +-
> >  2 files changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> > index 292f015f7ec6..e357dc34cd7a 100644
> > --- a/tools/objtool/elf.c
> > +++ b/tools/objtool/elf.c
> > @@ -382,6 +382,11 @@ static int read_sections(struct elf *elf)
> >                 }
> >                 sec->len = sec->sh.sh_size;
> >
> > +               /* Detect -fsanitize=cfi related sections */
> > +               if (!strcmp(sec->name, ".text.__cfi_check") ||
> > +                   !strncmp(sec->name, ".text..L.cfi.jumptable", 22))
> > +                       sec->cfi_jt = true;
> > +
> >                 list_add_tail(&sec->list, &elf->sections);
> >                 elf_hash_add(elf->section_hash, &sec->hash, sec->idx);
> >                 elf_hash_add(elf->section_name_hash, &sec->name_hash, str_hash(sec->name));
> > @@ -614,6 +619,29 @@ static int read_relocs(struct elf *elf)
> >                                 return -1;
> >                         }
> >
> > +                       /*
> > +                        * Deal with -fsanitize=cfi (CONFIG_CFI_CLANG), which
> > +                        * hijacks function entry by arbitrarily changing a lot
> > +                        * of relocation symbol references to refer to an
> > +                        * intermediate jump table.  Undo that conversion so
> > +                        * objtool can make sense of things.
> > +                        */
> > +                       if (reloc->sym->sec->cfi_jt) {
> > +                               struct symbol *func, *sym;
> > +
> > +                               if (sym->type == STT_SECTION)
> > +                                       sym = find_func_by_offset(sym->sec,
> > +                                                                 reloc->addend);
> 
> Clang points out that sym is uninitialized here. Should these be
> reloc->sym instead?

Yup, I somehow managed to bork this patch (and the one before it) right
before I sent it.  Will send updated versions of these two.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114205205.hsfmq6nohhuyjkfb%40treble.

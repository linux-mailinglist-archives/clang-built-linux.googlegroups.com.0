Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHP2334QKGQEQY5TNNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF492450E2
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 12:46:54 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id d1sf7201047pgn.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 03:46:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597488413; cv=pass;
        d=google.com; s=arc-20160816;
        b=BR1OfQho8KIuVn/D0ycJcRycP8sT7NDpVBhVgzVqKQOJ9qu812qsMM4yLC4INhFQdh
         tXu91Ob2R9siM75vu5QNPc0yiLG2LWCs4SiNYnNmEM/U87vJjow4z3JLXy0vdDXBcJxs
         +JHI2tfoJLD8pHouQpow+JUdnIj0bgfSlouIg4MkCWZGcQBOdGDde4r8FtZ0jejesvXM
         uv/uW2fXWfskkcCtNt8jY+HNeaF9hiBxDaAOkvTGo+lr1zkRqZzxKdUceju0BnnbNjKT
         nRQYft/rivtt5fjhzx6xAbUH4w6a6iB0g5WBiBcpc0JX/az8aM21M/AUaTvxiqkxQC4j
         Lgew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oL7OmZ91d6H7kF/Jb3ycrJ+honD/lrLHDj8Qm+yC6jA=;
        b=V1tWTtM2sPeY2TIx+fz7sMPdqmitNDXKswi4++nxKVDGky87n9BKA17jBM/MHUfk4x
         zGzLabJINSM8x8PPDnphPukC6aEElkP8EQVOZrA1M+Cb2p62UrJxWe7xD6NeFY8kqPEO
         IcFH5EHEJkQJUrRXTKq0ZWqH6ZcWDTYE7SGnRNzZGu83XMHPzWHcECL/ddsiRd4zIp1h
         2+tK32BxhaVmPJn5I16l+MUYDjBf13km6ago9uashK7qNbndwTI8pCW964Dlm15tcaDh
         LF4eGtnRaQU6+kI8eOMEETZg/UnOSBSFAYXZQ0q1CoeLRJ8RVHulLGpCPTStCpAJ4ju2
         Wb9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jiP8z+2g;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oL7OmZ91d6H7kF/Jb3ycrJ+honD/lrLHDj8Qm+yC6jA=;
        b=gFVFQqtzBxKtLGFLVxQBsct2ZarOOotVTAA0kp0ZV8EUUOFi0BeUhnAb+p0iTRIt8e
         y3QE+UuZzVp0bJ0HpJNPK6OQZNaG5WmxCE0iCKUHa6XOSDxfPtapSrQz/HfOZS4KYmd2
         v28AKCiZ/y3VjP3VP0+9I0R8mO8dji9zKV4m+ZyGSq//Ql71djtGVJypQ57XckvI9Fmc
         w4lghwkJxBF5VwMhi844XqUlEZ+DwmGZ+FT3Y+STMG/J+CR3tbaXJpRZuC9OGvNLTRaN
         J0ZqkCxslyV606vd82ghuonvJ0gTYe2IIlTIg6EgXkPcokExvaY+W8IGzT9L2+PS4buS
         eAlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oL7OmZ91d6H7kF/Jb3ycrJ+honD/lrLHDj8Qm+yC6jA=;
        b=fbnXW2FESOZuSCN7Zl/1WkkwlZL2Vj1Edhbhp71g+8lYu6YYWmsvFQDyUBNwps7IkV
         J86uMjtYvARcbtY7XTfDGVcdyh7ff5oI8DaNiZaRiZZSrm+maUpRCzBnXYF2Ce4cahDE
         hcQaud/wxt/7b8kq1mZOfd3amtrTQXMbjFCBLuh31tkcfvGDI5rY1DI19bVjcXP09y9R
         AII8ZoIeuDMNinyU0fwAylUJ6Z+CazpNdDV+Nu3pgc7wcAxoQ8rFQ9usf622X70h+m4E
         cl/VEZWJPlbtbyqnEn2CRCQYMQYpxvY+xXN2F+xiL0+Adc6Dw+RU5UpBDzcGc0dZdNLr
         pMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oL7OmZ91d6H7kF/Jb3ycrJ+honD/lrLHDj8Qm+yC6jA=;
        b=FF/hRS1kbKIaganuglFvRZNiooZDvOYSBrJvI4atKgQwjNUkhnuoCJvARhpO2QnZX9
         q7w+5h97dOwe7xvLJKDV+ruV8HCqFbx48Tngjk9nZS1aXi5zt4ceuaCrLNM+6LDX2uGJ
         iR+72sOgehPtzZ6ShhidA5gDPAG8OOw4Q/PAAkZiFhmGD7CBjKswZKRcvPecv+wui5bI
         Bei9Bt17tCfiNs3kkrydzhQ2ycR2Du5QHIOEg62WP9jafIFxfoe9k7GU9tKohi+9hU0C
         Cqx/+SOnhgEC/+4ofiU14PvUhAk50T6kkC2XAavkDj0De0+0pQkvB4uheoDgt+0+MeyE
         EHVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533khPkCcw+gX0ykPGGLSaZlyN7VyTDrMD5yXcRhobvZeeye5Ge0
	V9ZHgJQ8if2DgDmG7/QZrDA=
X-Google-Smtp-Source: ABdhPJyPFjamdqjUmOQqus+lQb0VKOOrhB9YaDKcDHja5tfqu89XhSJT4HE4rlUEJxtDlw4WyCN7iQ==
X-Received: by 2002:a17:90b:514:: with SMTP id r20mr5863676pjz.82.1597488413145;
        Sat, 15 Aug 2020 03:46:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c252:: with SMTP id 18ls4698886plg.3.gmail; Sat, 15
 Aug 2020 03:46:52 -0700 (PDT)
X-Received: by 2002:a17:90a:f489:: with SMTP id bx9mr5834101pjb.159.1597488412721;
        Sat, 15 Aug 2020 03:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597488412; cv=none;
        d=google.com; s=arc-20160816;
        b=rgmoqHdetQD8DbjhKq9GNRjtLaSAaAZ9SFS8dpB/sQpMB7PZEsxL/YHv9zRh4pf9aX
         tpy23c8Q4GYx5Z4CSzl6wuzGp0aSu+NbP82vGeHMhTsb49G6LSKI1uobIs8ebA+4ZB5+
         SIKfck9CWoudsmdOi/f1BrXkHYllavhqIe8fy4NCDjI9xifNjJdbLhTko/YkDAPyETzJ
         FJihTjQqnFtvFVWyvPrGNQt7cYEjxZeufsPFS+H5IU50GUcXb8dYx+zcuB1TmpD1pdrx
         dnBtdOVGx6wxdxk36Fs8Muuo88EWseVpbCfDH8ZA6wzirxK8Moq1FLYYicjdApHNDUku
         Qg0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GRcLG1hja9nyh1fAE/jsb695u7dtTiGxHg8x1K2Uuqo=;
        b=HbmhZxF6qKQ7KdtyWGMvPgOeesaPuJYQ0lqV3bxjSz4rckVL2GlEyHexls49GlJ2bO
         jx5b50JN4QJyppGfhOlLQHx85wneXLwqfc2m+FpdAACfGwxOFSZvFOJTWzd5qdkPUCrz
         SdVkJDfZ8H+S7ia4FRkgEUMMx2vaFJRy0HZaVWXrMIx65cvo5fVUt8GaHjSQxFdeHIsj
         Qw/xrgW84FBJEwKc1G5atY8Rv7CzE63adsDPZlD4s5JjkVzznSaMZ1LK9/kAkPKQ2OsM
         bon3ZmBfmJjGhdxNR7XLrVr0SJWwfWXr49jKP/UgP+Bst377WMOjYEzI5O92FtVkgvKJ
         bPpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jiP8z+2g;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q137si575022pfc.4.2020.08.15.03.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 03:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e11so9602023otk.4
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 03:46:52 -0700 (PDT)
X-Received: by 2002:a9d:7997:: with SMTP id h23mr5186659otm.28.1597488412052;
 Sat, 15 Aug 2020 03:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
 <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
 <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
 <CAKwvOdnahyqQQMdWhzpaYkJNi21Ux=8qyBmRnPidiT_RAn0YFw@mail.gmail.com>
 <CA+icZUVKBsp4cJV5V=ZtywEi=Ary5w-fNSijkNknU+U9xiKRRg@mail.gmail.com> <CA+icZUV5m+kPWpk0ovoWD+DK0Tn8=c0MdWnr2XTxStwXf_VF0g@mail.gmail.com>
In-Reply-To: <CA+icZUV5m+kPWpk0ovoWD+DK0Tn8=c0MdWnr2XTxStwXf_VF0g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 15 Aug 2020 12:46:40 +0200
Message-ID: <CA+icZUW6vb2JgKCnWMx-yRU24benZNLizwk30HLPGwYrNDR-3A@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jiP8z+2g;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::341
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Aug 15, 2020 at 10:23 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Aug 15, 2020 at 5:28 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Aug 15, 2020 at 2:27 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Aug 14, 2020 at 3:57 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Aug 14, 2020 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Aug 14, 2020 at 7:29 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > Thanks for the proposal.
> > > > > >
> > > > > > I have adapted it to fit my patchset against Linux v5.8.
> > > > > >
> > > > > > Both Debian's GCC-10 and a snapshot version of LLVM toolchain
> > > > > > v11.0.0-rc1+ seems to be OK.
> > > > > >
> > > > >
> > > > > Yupp, OK.
> > > > >
> > > > > I was able to boot FreeDOS 1.2 VM in VirtualBox GUI.
> > > >
> > > > Hi Sedat,
> > > > Apologies, but it's not clear to me precisely which patch you tested.
> > > > Can you please confirm whether you tested:
> > > > 1. Arnd's patch that started this thread.
> > > > 2. My proposed diff adding -fno-addrsig to CFLAGS_powernow-k6.o.
> > > > 3. My proposed diff removing __force_order from the kernel.
> > > >
> > > > I'm hoping you were referring to testing 3., but it's not clear to me.
> > >
> > > Ah, sorry, I missed your comment on github:
> > > https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674282107
> > >
> > > Ok, I will look at more disassembly next week and hopefully have a
> > > patch ready, with your tested by tag.
> > >
> >
> > Sorry for not being precise - I tested with solution (3.).
> > Later I added the diff I used as mentioned in your above comment.
> >
> > See [1]:
> >
> > > In a 2nd run building with a selfmade clang-11 and LLVM "bin"utils is fine, too.
> >
> > I cannot say much to older versions of GCC and/or LLVM/Clang if
> > removing "__force_order" works fine.
> >
> > Another (4.) solution:
> > Sami tried successfully by adding "__weak" declaration with
> > CONFIG_LKDTM=m (see [2]).
> > I am OK if this works, too.
> >
> > Please, see my attachments.
> >
> > - Sedat -
> >
> > [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674340760
> > [2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703
>
> Unfortunately, the diff from Sami does not work together with Arvind's
> patchset...
>
> x86/boot: Remove run-time relocations from compressed kernel
>
> ...which got included in <tip.git#x86/boot> recently.
>
> I see the following:
>
>   ld.lld-11 -m elf_x86_64  -pie  --no-dynamic-linker -T
> arch/x86/boot/compressed/vmlinux.lds
> arch/x86/boot/compressed/kernel_info.o
> arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
> arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
> arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
> arch/x86/boot/compressed/cpuflags.o
> arch/x86/boot/compressed/early_serial_console.o
> arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
> arch/x86/boot/compressed/mem_encrypt.o
> arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
> arch/x86/boot/compressed/efi_thunk_64.o
> drivers/firmware/efi/libstub/lib.a -o arch/x86/boot/compressed/vmlinux
> ld.lld-11: error: Unexpected GOT entries detected!
> ld.lld-11: error: Unexpected run-time relocations detected!
> ld.lld-11: error: Unexpected GOT entries detected!
> ld.lld-11: error: Unexpected run-time relocations detected!
> make[5]: *** [arch/x86/boot/compressed/Makefile:91:
> arch/x86/boot/compressed/vmlinux] Error 1
>
> When you need further informations, please let me know.
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703

When I revert...

commit df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc
"x86/boot/compressed: Don't declare __force_order in kaslr_64.c"

...I can build, boot on bare metal and start FreeDOS VM in VirtualBox.

For more details see [2].

- Sedat -

[1] https://git.kernel.org/linus/df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc
[2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674378085

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW6vb2JgKCnWMx-yRU24benZNLizwk30HLPGwYrNDR-3A%40mail.gmail.com.

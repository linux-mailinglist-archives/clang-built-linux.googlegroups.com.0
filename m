Return-Path: <clang-built-linux+bncBC2ORX645YPRB4FBYP6AKGQEXPRESGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D66295571
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 02:23:12 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id r19sf2382457ljj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 17:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603326192; cv=pass;
        d=google.com; s=arc-20160816;
        b=oH7rmF9qsWWPk6CBUYwIEGVAdpJgAQ0ZOpxRR6KUb1mYtcGwqt4qJnpH9zG5pbKWvs
         ZrnGQ2F5f1hUA3SqfFxrR/ydASUiHBy+U5EuZnMixzi5+sycVG+c7T+6yyszDnQ6GtFz
         tGyPBrijKpq9EdXC4GKVZUYPJFWYPGGEYjBE7RWX8UtjhOQs8wUTIGemjbCmLRd41iZV
         f1UeB8QZ1k9nD6aVBa5XR0PiwYDyh/Sh5id9n09zhG1vyC0cEdXniE1iZYn/6b8hLO5u
         IEGjBZthQtkD+IgKekXxjami7ocYZS7yrOqa+nyVYgoSloQ9DngBCzTIPXz0CWC61QGv
         UwqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LWuWGCdO8zGKsoeLbyNIxgbWg4l0CygFtMvN7ny9O1w=;
        b=WL6JqOEFdbB6H+jrz1JBVIijGgZ2q144MvAss9nXlya9rtaOp+Lz9kZY3/70myS/QB
         e3LEYmYbkbSZh6v29rzX7IYSsdSiP0lXB9U6dSEswBGnrnkkuydMKAmkRxAZ1n6fEiJd
         UPOGkk+XjBTtD0jix2m7bDOjME4BJDO60HBIX40ar+LHE7XQVci7VNpMMqKBS3JPQ9x4
         MpjAsgUHoMoqQ5mEsNzXSFvPm7DYPYWKiZXtZEiiTUhjTbLx8/gWm2KuKwFea6kiQRDb
         ePWsNCqfGMrNE3SaTsEf/xMgo6pEMRX3f3+LF6fQJ3xNr3eZx3D+vrzVLJLhjoXdAWBw
         ZjOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CNB4qwF8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWuWGCdO8zGKsoeLbyNIxgbWg4l0CygFtMvN7ny9O1w=;
        b=MXm9YktYKDYCoHGn9ORAL5gtcw5ymAFOFpRWU5yiTF4VfWvisCFmiqPG8sOoYNiS9U
         peMphEdOmwtmK9RVLjEcSSBuO8P03B5SjBmT7QMPUdsUoIhIc7skS86xy3/OCZgg4YuU
         gAp5O5MKYEldjs6VSDQHN3muEq6w6OvckW7fjaJTtCFS8nP7smZes1wc4KcDe67FJ+bZ
         gGfNV+T560DuQ4lQYqez14lSguBWpjbm/3D1iERqfLAbUVFq4SzsPYsCqzLT9v8Mu4/a
         22dOZqwf1M3n81pCNl3r/JV2C0lMQbdmw8iYPrDpvBcilXIOdiAViJEeA9Y0b2EgfP67
         mSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWuWGCdO8zGKsoeLbyNIxgbWg4l0CygFtMvN7ny9O1w=;
        b=gRAhfIU4X5fd5B9cICs/Zy4pSIqYFWhFeoS/Rle8xgv1cNYkb02hB8SNPkfiMrs/9z
         VTVy4hlSjq4t2a6b/zINmC8y+WaMtZXPdqpgP8ec4whTMDyoOpXfkYrWuKcSmmWOv3zW
         Hlqz0c1euW7bgUKXlVx0yt8yAdQ1/dcljHo0I2Ol+eyDEjWEajMdBrBgK4wZX03IkyJK
         +6n3WC2glhJbzBHOzuBpqfSIVi+LlYyQaiLNH+lG6gj6WmermQGoIWBr5b6zUY0YNHwP
         E47vBniPhlsHJwI8h/ou+jFdUsJ4S5H3EXXjcz9ZwWVvN6IDYzqJXDFNLf2sM5Ngkz8k
         Ch5w==
X-Gm-Message-State: AOAM530D0BsKXHvjkq3M7FXVE/ynBkG5zqdjHHAcHT3kPXXIMZwakJFr
	IEag42ROT7Elg4hkmvUM/SI=
X-Google-Smtp-Source: ABdhPJwdWKw/lKSlwAsW4NnzT2pp+KOtt/pyhlVykI2mQIQb/6dFeM1Ew7mASmYMesUmbY4OE0+aog==
X-Received: by 2002:a19:b4c:: with SMTP id 73mr2202989lfl.469.1603326192402;
        Wed, 21 Oct 2020 17:23:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls3247lji.6.gmail; Wed, 21 Oct
 2020 17:23:11 -0700 (PDT)
X-Received: by 2002:a2e:a498:: with SMTP id h24mr21978lji.209.1603326191220;
        Wed, 21 Oct 2020 17:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603326191; cv=none;
        d=google.com; s=arc-20160816;
        b=DA5eruoQdhtNW5RpF6X42bmB/jbQXWgew0gbrw/qYPW31wn4nu6HW86QNLgxM+c7Ll
         QulNSdIEiu9DplATIGyFRyD79jwQdbTBUANNDqD5ckBDEggW7MsW31ekeys/Nkj6KlE0
         87CW0pVexmTevLP/21HQwKOZB8C8s4szJ3m+nL9hX2Iom7K0Y1CIyWQaJaOQZWuWeetE
         yC5kE6vDApSZnxfyvi+A2Vnuf+7I0pg9onZ8L1fZEBwEO+1dX10LvePkvPtTWjTae9YS
         Pend5IOHDstOEFiXyMjfUFlguSrGtwqxTu+WPUzT4fjGvrZ3HP5ckwAO2cROUvgpYnDE
         WCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p8Hwn4AXDi9NRjlCE0oMq1jAIKpEQWx4gCW/kuHDlnE=;
        b=zKrdq0Fjic+O2fhWP4fYmITHn05xom2ZN2f5x72M04qMolQ8yaU2SeXAQ3S0lhnCt/
         CPL+LyrkDfLiTHgF73eUiDoy+MTsqS/0TdvD7zkD0LAk0kN2t7TGpQXHOFQ/sDh+2MYc
         DZYw8Z8aySmiAIWCzPDpHrdn4IWINOs2bPVK3o/eVaqkEFdPIJarNhYk5L4au1AC2JqI
         Uwx6Su5gzgdOZWb8sd35zVuUXPbRHfsXKmSECv/sXOWo6pErgj7YDuI3itCOFn+CrAkq
         Uv8gP/qm7o5p4+4mXLOIYrwWIrd44x3NW8kMpCRR5TrQ1zH3+Fui5O9NLF5l2vlQDSU4
         GSPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CNB4qwF8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t9si62730lfe.13.2020.10.21.17.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 17:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id c15so4702936ejs.0
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 17:23:11 -0700 (PDT)
X-Received: by 2002:a17:906:490d:: with SMTP id b13mr5925764ejq.122.1603326190426;
 Wed, 21 Oct 2020 17:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com> <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
In-Reply-To: <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Oct 2020 17:22:59 -0700
Message-ID: <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CNB4qwF8;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
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

On Wed, Oct 21, 2020 at 1:56 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Oct 20, 2020 at 12:24:37PM -0700, Sami Tolvanen wrote:
> > > > Building allyesconfig with this series and LTO enabled, I still see
> > > > the following objtool warnings for vmlinux.o, grouped by source file:
> > > >
> > > > arch/x86/entry/entry_64.S:
> > > > __switch_to_asm()+0x0: undefined stack state
> > > > .entry.text+0xffd: sibling call from callable instruction with
> > > > modified stack frame
> > > > .entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0
> > >
> > > Not sure what this one's about, there's no OBJECT_FILES_NON_STANDARD?
> >
> > Correct, because with LTO, we won't have an ELF binary to process
> > until we compile everything into vmlinux.o, and at that point we can
> > no longer skip individual object files.
>
> I think what Josh was trying to say is; this file is subject to objtool
> on a normal build and does not generate warnings. So why would it
> generate warnings when subject to objtool as result of a vmlinux run
> (due to LTO or otherwise).
>
> In fact, when I build a x86_64-defconfig and then run:
>
>   $ objtool check -barf defconfig-build/vmlinux.o

Note that I'm passing also --vmlinux and --duplicate to objtool when
processing vmlinux.o, and this series has a patch to split noinstr
validation from --vmlinux, so that's skipped.

> I do not see these in particular, although I do see a lot of:
>
>   "sibling call from callable instruction with modified stack frame"
>   "falls through to next function"
>
> that did not show up in the individual objtool runs during the build.

I'm able to reproduce these warnings with gcc 9.3 + allyesconfig, with
KASAN and GCOV_KERNEL disabled, as they are not enabled in LTO builds
either. This is without the LTO series applied, so we also have the
retpoline warnings:

$ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep -vE
'(sibling|instr)'
vmlinux.o: warning: objtool: wakeup_long64()+0x61: indirect jump found
in RETPOLINE build
vmlinux.o: warning: objtool: .text+0x826308a: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool: .text+0x82630c5: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool: .head.text+0x748: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool:
set_bringup_idt_handler.constprop.0()+0x0: undefined stack state
vmlinux.o: warning: objtool: .entry.text+0x1634: redundant CLD
vmlinux.o: warning: objtool: camellia_cbc_dec_32way()+0xb3: stack
state mismatch: cfa1=7+520 cfa2=7+8
vmlinux.o: warning: objtool: camellia_ctr_32way()+0x1a: stack state
mismatch: cfa1=7+520 cfa2=7+8
vmlinux.o: warning: objtool: aesni_gcm_init_avx_gen2()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_enc_update_avx_gen2()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_dec_update_avx_gen2()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_finalize_avx_gen2()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_init_avx_gen4()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_enc_update_avx_gen4()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_dec_update_avx_gen4()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: aesni_gcm_finalize_avx_gen4()+0x12:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: sha1_transform_avx2()+0xc: unsupported
stack pointer realignment
vmlinux.o: warning: objtool: sha1_ni_transform()+0x7: unsupported
stack pointer realignment
vmlinux.o: warning: objtool: sha256_transform_rorx()+0x13: unsupported
stack pointer realignment
vmlinux.o: warning: objtool: sha512_transform_ssse3()+0x14:
unsupported stack pointer realignment
vmlinux.o: warning: objtool: sha512_transform_avx()+0x14: unsupported
stack pointer realignment
vmlinux.o: warning: objtool: sha512_transform_rorx()+0x7: unsupported
stack pointer realignment
vmlinux.o: warning: objtool: __x86_retpoline_rdi()+0x10: return with
modified stack frame
vmlinux.o: warning: objtool: __x86_retpoline_rdi()+0x0: stack state
mismatch: cfa1=7+32 cfa2=7+8
vmlinux.o: warning: objtool: __x86_retpoline_rdi()+0x0: stack state
mismatch: cfa1=7+32 cfa2=-1+0
vmlinux.o: warning: objtool: reset_early_page_tables()+0x0: stack
state mismatch: cfa1=7+8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x48: stack state mismatch:
cfa1=7-8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x15fd: stack state mismatch:
cfa1=7-8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x168c: stack state mismatch:
cfa1=7-8 cfa2=-1+0

There are a couple of differences, like the first "undefined stack
state" warning pointing to set_bringup_idt_handler.constprop.0()
instead of __switch_to_asm(). I tried running this with --backtrace,
but objtool segfaults at the first .entry.text warning:

$ ./tools/objtool/objtool check -barfld vmlinux.o
...
vmlinux.o: warning: objtool:
set_bringup_idt_handler.constprop.0()+0x0: undefined stack state
vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)
...
vmlinux.o: warning: objtool: .entry.text+0xffd: sibling call from
callable instruction with modified stack frame
vmlinux.o: warning: objtool:   .entry.text+0xfcb: (branch)
Segmentation fault

Going back to the allyesconfig+LTO vmlinux.o, the "undefined stack
state" warning looks quite similar:

$ ./tools/objtool/objtool check -barlfd vmlinux.o
vmlinux.o: warning: objtool: __switch_to_asm()+0x0: undefined stack state
vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)
vmlinux.o: warning: objtool: .entry.text+0xffd: sibling call from
callable instruction with modified stack frame
vmlinux.o: warning: objtool:   .entry.text+0xfcb: (branch)
Segmentation fault

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufL6%3DFiaeD8T0P%2BmK4JeR9J80hhjvJ6Z9S-m9UnCESxVA%40mail.gmail.com.

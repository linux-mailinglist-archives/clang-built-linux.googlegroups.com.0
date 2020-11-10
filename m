Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBGXWU76QKGQEHNYSUXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1635D2ACB13
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 03:29:48 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id q16sf8142222pfj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 18:29:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604975387; cv=pass;
        d=google.com; s=arc-20160816;
        b=dNHJRbfgI2UK+8EgPqhRNrYF6+A4q6JYhUqZnAi1R6I1f9qCY8vT9p+H4X4r5Gjv49
         QtY62Rpfvf8Gm/qEe6mft6uvcxJ+5FTjeCxv8FzeJ+VNJ6V0cHKtsMNx0/hmxJS9dbDI
         v8b1Pr7/XkCIgz5G4Z9NTq6TDnFNdJuWChnojGZvAJfurap0MkFB2DUDjthow6+MWk2R
         gmfAeUT84WFSkAzaKkDHNuLoXRmGBKUp5+T8DPDzw7MfJBgsd0a/bDr47V/GQy/XV60V
         Z96yniM+6h8W6Nji0wE2D0Usctf/jaW9f0Q2/ZO1QrxA5+Vmc00pwdobKmhscgaj2WuB
         as1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8lDEMnHmMECKQgVnJCHENMo/PW9kB7pGSnS03M1ZlVk=;
        b=PH6XEfW/7ynDF5/LoS07vg1mGexMLmpgydlMobOFE/7NGihwOWOx5dP+08mCsMApkH
         WSsX3TUpPtAjTZktnPMvkC0rq3Ab1/inZ8xLy37YEUWPn++IMi4abYSrXHU1vSJ+YQ/L
         BWv1d7PtkfdfQcSA+q+5WkqlImpe6dJSz9Sfwr4qwNNHqVT7G78OkHPH7H+sxytez2Bk
         hupm5o2CnBXA36ZePkmhPZJOWG6g6yMk/TDpqXsR7H+YeqSMBIoByNLgmXUkw7sEwvYJ
         FdjfK1hrADA1G309GyL+OrncbTUKJzSY2lx4uIZqBzdHOmBKh+MhfdxLkOnBnZS/Rt1v
         2Mvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gHoHuVOc;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lDEMnHmMECKQgVnJCHENMo/PW9kB7pGSnS03M1ZlVk=;
        b=GFnXFrs8rcpHFQk6TSG2juTiaKX07E02AV+1I/H2a6VjSwMduoRywb1BB1ZwQ+cf7E
         q+kxrlrlg5dNrZb0aqVg/FqHGAG7xiPy5Hh4M2aYXWYqgUAVkrtw0WFvhzfRNW9dKp3A
         Lx37bfdGHTHmMW9MKqemLffqY4+MsR1ebhJ7ln4HY+DNeW7yrvs7MNC1gsc+u8S0A/f+
         EP0CNAT814i6Dz/bKTo/HxEA4NGQCQ55EQYZToKWIs15dLIpYr4Eyj9pseWK3BqeJ4j+
         G6oB92DE0H/8/NOwRfCAJ33+Hnfsu5bHjXjHxg5V8Yfxzv5zoOuZTK8x8dymh8XqHyfI
         xXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lDEMnHmMECKQgVnJCHENMo/PW9kB7pGSnS03M1ZlVk=;
        b=r3fkrF4YK1lN0gScULVQjNVc0/VcVTDJtmPmZDcaL9Ue1yxqrn1xVFMxCYIszUDPOi
         w/kqbP/MjrzojswcrdvE7K0vKGKzci3Rjw1w0aGVYrkWjEsAJ3D8a22kfz59RYMl2AqH
         ZQn0qMZE/N71uPpjVLaZXzSByNb5IP6lErW2Pd6/I4WAG0ILuYOi6wVMFpBy1Ln57SoI
         BOyud6lfDGFtayeH+YBqa7h0bOy/X7Nr2Nb3wKA6UFJGYB5p21lJXviVuu0+LtOg10lU
         FxOm8Iqf1lvbJ1Zztr/70S3WxMZkkgfc3/CWjARZdDvF+u2NMfEWfLBn59h8Cq+lWhwL
         zeTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53027M+bGP1q8SoKhAh+Sv5HVyG1MR54AOHyy99tn49q0b6pZzPy
	auCCXX5h1RaK6W/78ki+t6k=
X-Google-Smtp-Source: ABdhPJxTAiFAQJm8Y5DVxwAc186rOmJdrszbrgT8d0ERPVJmg5fjAr69Tntm10l7gixyRVUdP1OsoA==
X-Received: by 2002:a65:464c:: with SMTP id k12mr14440292pgr.215.1604975386833;
        Mon, 09 Nov 2020 18:29:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls3617164pga.5.gmail; Mon, 09 Nov
 2020 18:29:46 -0800 (PST)
X-Received: by 2002:a63:f91f:: with SMTP id h31mr15622339pgi.0.1604975386246;
        Mon, 09 Nov 2020 18:29:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604975386; cv=none;
        d=google.com; s=arc-20160816;
        b=YOSX0+sYNchsStTkEEIMtF6sxRLAiYsnx3kHp2qFOGlv3rKrHhBu+hCP5rPSGj2hS+
         v+P83ldx1HHbcQ3xml6d51rom0EzZ33PByse41PLk1rqW9LF/K6MQBFO77eSU/Fqqs0t
         xTX/ptVTbICl8wft5rAfIdwSh6Tkohou56wpsx8QoFlabMwaFgLbRKQfZHxdZM/Whgqs
         B8gz2ZylV7+nVSZRY1IhcQweDsMGKbVkKEr/hS2gfzScjPwHlAMGKrp6Hn5qbgjD6Gx/
         pNxWTlD98D/P+bApmbf8vucD3N8QMvcSSDHC7Vz1ANcAkLo1yuewCYIaexRdSgd+C4Ni
         5L+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=l6N9kLJEZw00t4oEwyOJU5MOUcho0W3yc7yyLi6tWGo=;
        b=Ramh1pgQNzvVs6H/1tTJ57ogB+1hfs3mIOoexGkgOsk6mOJhXu5wgdccxdB5fw2dTF
         T6mLJicQ8Tf59QA0CNfLnJoab5LLjbuGYzFoY5JiDgUy3pG0sqlg/l7RknfEURyrpiUR
         6vEuiTlfzNTjKJJPHQDXpwFpwj5PuonvPJatXGgc0Jwy9k/KD+HB99W4/2wYFtF2gZiD
         /ocw+liIVmsr/izdoWEZR67+zC6MTSk8LclW23QJomhUrntc/HluHmpQjJpcIrotL1ip
         wBE+Wt1kE+b4jSrhnHNl+5LtG5e3g/k0BvXJNRwAMfORRw4Vn1WlwjhDqKsVltS+NUaF
         HlWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gHoHuVOc;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i5si185038pjz.1.2020.11.09.18.29.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 18:29:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-czCRQyAWP7G68EG9XekIZA-1; Mon, 09 Nov 2020 21:29:41 -0500
X-MC-Unique: czCRQyAWP7G68EG9XekIZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 480E7186841D;
	Tue, 10 Nov 2020 02:29:38 +0000 (UTC)
Received: from treble (ovpn-112-15.rdu2.redhat.com [10.10.112.15])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02D1A3C04;
	Tue, 10 Nov 2020 02:29:32 +0000 (UTC)
Date: Mon, 9 Nov 2020 20:29:24 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201110022924.tekltjo25wtrao7z@treble>
References: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gHoHuVOc;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> On Fri, Oct 23, 2020 at 10:36 AM Sami Tolvanen <samitolvanen@google.com> =
wrote:
> >
> > On Wed, Oct 21, 2020 at 05:22:59PM -0700, Sami Tolvanen wrote:
> > > There are a couple of differences, like the first "undefined stack
> > > state" warning pointing to set_bringup_idt_handler.constprop.0()
> > > instead of __switch_to_asm(). I tried running this with --backtrace,
> > > but objtool segfaults at the first .entry.text warning:
> >
> > Looks like it segfaults when calling BT_FUNC() for an instruction that
> > doesn't have a section (?). Applying this patch allows objtool to finis=
h
> > with --backtrace:
> >
> > diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> > index c216dd4d662c..618b0c4f2890 100644
> > --- a/tools/objtool/check.c
> > +++ b/tools/objtool/check.c
> > @@ -2604,7 +2604,7 @@ static int validate_branch(struct objtool_file *f=
ile, struct symbol *func,
> >                                 ret =3D validate_branch(file, func,
> >                                                       insn->jump_dest, =
state);
> >                                 if (ret) {
> > -                                       if (backtrace)
> > +                                       if (backtrace && insn->sec)
> >                                                 BT_FUNC("(branch)", ins=
n);
> >                                         return ret;
> >                                 }
> >
> >
> > Running objtool -barfld on an allyesconfig+LTO vmlinux.o prints out the
> > following, ignoring the crypto warnings for now:
>=20
> OK, I spent some time looking at these warnings and the configs needed
> to reproduce them without building allyesconfig:
>=20
> CONFIG_XEN
>=20
> __switch_to_asm()+0x0: undefined stack state
>   xen_hypercall_set_trap_table()+0x0: <=3D=3D=3D (sym)
>=20
> CONFIG_XEN_PV
>=20
> .entry.text+0xffd: sibling call from callable instruction with
> modified stack frame
>   .entry.text+0xfcb: (branch)
>   .entry.text+0xfb5: (alt)
>   .entry.text+0xfb0: (alt)
>   .entry.text+0xf78: (branch)
>   .entry.text+0x9c: (branch)
>   xen_syscall_target()+0x15: (branch)
>   xen_syscall_target()+0x0: <=3D=3D=3D (sym)
> .entry.text+0x1754: unsupported instruction in callable function
>   .entry.text+0x171d: (branch)
>   .entry.text+0x1707: (alt)
>   .entry.text+0x1701: (alt)
>   xen_syscall32_target()+0x15: (branch)
>   xen_syscall32_target()+0x0: <=3D=3D=3D (sym)
> .entry.text+0x1634: redundant CLD
>=20
> Backtrace doesn=E2=80=99t print out anything useful for the =E2=80=9Credu=
ndant CLD=E2=80=9D
> error, but it occurs when validate_branch is looking at
> xen_sysenter_target.
>=20
> do_suspend_lowlevel()+0x116: sibling call from callable instruction
> with modified stack frame
>   do_suspend_lowlevel()+0x9a: (branch)
>   do_suspend_lowlevel()+0x0: <=3D=3D=3D (sym)
>=20
> .entry.text+0x48: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
>   .altinstr_replacement+0xffffffffffffffff: (branch)
>   .entry.text+0x21: (alt)
>   .entry.text+0x1c: (alt)
>   .entry.text+0x10: <=3D=3D=3D (hint)
> .entry.text+0x15fd: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
>   .altinstr_replacement+0xffffffffffffffff: (branch)
>   .entry.text+0x15dc: (alt)
>   .entry.text+0x15d7: (alt)
>   .entry.text+0x15d0: <=3D=3D=3D (hint)
> .entry.text+0x168c: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
>   .altinstr_replacement+0xffffffffffffffff: (branch)
>   .entry.text+0x166b: (alt)
>   .entry.text+0x1666: (alt)
>   .entry.text+0x1660: <=3D=3D=3D (hint)

I can't make much sense of most of these warnings.  Disassembly would
help.

(Also, something like the patch below should help objtool show more
symbol names.)

> It looks like the stack state mismatch warnings can be fixed by adding
> unwind hints also to entry_SYSCALL_64_after_hwframe,
> entry_SYSENTER_compat_after_hwframe, and
> entry_SYSCALL_compat_after_hwframe. Does that sound correct?

No, those code paths should already have the hints they need, unless I'm
missing something.

> CONFIG_AMD_MEM_ENCRYPT
>=20
> .head.text+0xfb: unsupported instruction in callable function
>   .head.text+0x207: (branch)
>   sev_es_play_dead()+0xff: (branch)
>   sev_es_play_dead()+0xd2: (branch)
>   sev_es_play_dead()+0xa8: (alt)
>   sev_es_play_dead()+0x144: (branch)
>   sev_es_play_dead()+0x10b: (branch)
>   sev_es_play_dead()+0x1f: (branch)
>   sev_es_play_dead()+0x0: <=3D=3D=3D (sym)
>=20
> This happens because sev_es_play_dead calls start_cpu0. It always has,
> but objtool hasn=E2=80=99t been able to follow the call when processing o=
nly
> sev-es.o. Any thoughts on the preferred way to fix this one?

Objtool isn't supposed to traverse through call instructions like that.
Is LTO inlining the call or something?

> CONFIG_CRYPTO_CRC32C_INTEL
>=20
> __x86_retpoline_rdi()+0x10: return with modified stack frame
>   __x86_retpoline_rdi()+0x0: (branch)
>   .altinstr_replacement+0x147: (branch)
>   .text+0xaf4c7: (alt)
>   .text+0xb03b0: (branch)
>   .text+0xaf482: (branch)
>   crc_pcl()+0x10: (branch)
>   crc_pcl()+0x0: <=3D=3D=3D (sym)
>=20
> __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=3D7+32 cfa2=3D7+8
>   .altinstr_replacement+0x265: (branch)
>   __x86_indirect_thunk_rdi()+0x0: (alt)
>   __x86_indirect_thunk_rdi()+0x0: <=3D=3D=3D (sym)
>=20
> This is different from the warnings in the rest of the arch/x86/crypto
> code. Do we need some kind of a hint before the JMP_NOSPEC in crc_pcl?

I'll need to look more into that one.

> CONFIG_FUNCTION_TRACER
>=20
> __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=3D7+32 cfa2=3D-1+0
>   .altinstr_replacement+0x111: (branch)
>   .text+0x28a5: (alt)
>   .text+0x2880: <=3D=3D=3D (hint)
>=20
> This unwind hint is in return_to_handler. Removing it obviously stops
> the warning and doesn=E2=80=99t seem to result in any other complaints fr=
om
> objtool. Is this hint correct?

The hint is supposed to be there.  I don't understand this one either.
Did it inline the call to ftrace_return_to_handler()?

> The remaining warnings are all =E2=80=9Cunsupported stack pointer realign=
ment=E2=80=9D
> issues in the crypto code and can be reproduced with the following
> configs:
>=20
> CONFIG_CRYPTO_AES_NI_INTEL
> CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
> CONFIG_CRYPTO_SHA1_SSSE3
> CONFIG_CRYPTO_SHA256_SSSE3
> CONFIG_CRYPTO_SHA512_SSSE3
>=20
> Josh, have you had a chance to look at the crypto patches you mentioned e=
arlier?

I've been traveling for several weeks, but now my work schedule is
getting more normal, so I'll hopefully be able to spend time on this.

How would I recreate all these warnings?

Is it

  https://github.com/samitolvanen/linux.git lto-v6

plus a certain version of clang?

Also, any details on how to build clang would be appreciated, it's been
a while since I tried.


Here's the patch for hopefully making the warnings more helpful:


diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c6ab44543c92..e5f5cb107664 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2432,6 +2432,9 @@ static int validate_branch(struct objtool_file *file,=
 struct symbol *func,
 	sec =3D insn->sec;
=20
 	while (1) {
+
+		if (insn->offset =3D=3D 0x48)
+			WARN_FUNC("yo", sec, insn->offset);
 		next_insn =3D next_insn_same_sec(file, insn);
=20
 		if (file->c_file && func && insn->func && func !=3D insn->func->pfunc) {
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 4e1d7460574b..ced7e4754cba 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -217,6 +217,21 @@ struct symbol *find_func_containing(struct section *se=
c, unsigned long offset)
 	return NULL;
 }
=20
+struct symbol *find_symbol_preceding(struct section *sec, unsigned long of=
fset)
+{
+	struct symbol *sym;
+
+	/*
+	 * This is slow, but used for warning messages.
+	 */
+	while (1) {
+		sym =3D find_symbol_by_offset(sec, offset);
+		if (sym || !offset)
+			return sym;
+		offset--;
+	}
+}
+
 struct symbol *find_symbol_by_name(const struct elf *elf, const char *name=
)
 {
 	struct symbol *sym;
diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
index 807f8c670097..841902ed381e 100644
--- a/tools/objtool/elf.h
+++ b/tools/objtool/elf.h
@@ -136,10 +136,11 @@ struct symbol *find_func_by_offset(struct section *se=
c, unsigned long offset);
 struct symbol *find_symbol_by_offset(struct section *sec, unsigned long of=
fset);
 struct symbol *find_symbol_by_name(const struct elf *elf, const char *name=
);
 struct symbol *find_symbol_containing(const struct section *sec, unsigned =
long offset);
+struct symbol *find_func_containing(struct section *sec, unsigned long off=
set);
+struct symbol *find_symbol_preceding(struct section *sec, unsigned long of=
fset);
 struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *se=
c, unsigned long offset);
 struct reloc *find_reloc_by_dest_range(const struct elf *elf, struct secti=
on *sec,
 				     unsigned long offset, unsigned int len);
-struct symbol *find_func_containing(struct section *sec, unsigned long off=
set);
 int elf_rebuild_reloc_section(struct elf *elf, struct section *sec);
=20
 #define for_each_sec(file, sec)						\
diff --git a/tools/objtool/warn.h b/tools/objtool/warn.h
index 7799f60de80a..33da0f2ed9d5 100644
--- a/tools/objtool/warn.h
+++ b/tools/objtool/warn.h
@@ -22,6 +22,8 @@ static inline char *offstr(struct section *sec, unsigned =
long offset)
 	unsigned long name_off;
=20
 	func =3D find_func_containing(sec, offset);
+	if (!func)
+		func =3D find_symbol_preceding(sec, offset);
 	if (func) {
 		name =3D func->name;
 		name_off =3D offset - func->offset;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201110022924.tekltjo25wtrao7z%40treble.

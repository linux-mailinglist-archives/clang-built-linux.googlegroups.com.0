Return-Path: <clang-built-linux+bncBC2ORX645YPRBOUZU76QKGQETUTMKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id A88512AC914
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 00:11:55 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id w4sf6910001qki.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 15:11:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604963514; cv=pass;
        d=google.com; s=arc-20160816;
        b=DjK6d7HZSOBMx9buewFCRpj33sSpuMFmppfgDhruugnM9txzbOCMju6cUb2XdyxV6b
         E1gseraWYdkWSji1svZEpjKGImLhS5AWN2KNGOK4MzaQWXKQrugjeAYys/pU8pGP9s9m
         TohyJK54n7MGrJuHenlmF5vWjjIM4RvCbig83xxbx0zzKhZHll8MiIy1WzjBmNz3ka/P
         BHyMNAxPpr6c3EN7PNMhZZquG4E4BN/tZTs3+97KXsJmVm5yhRCVrJnxv2D0pfDIZ/63
         iyJUDuBTg8QvfyUBJpH1vhtnzeq2tHw7OWY1aF4EfE+J93X2xL5Z2RGSojyTezn9u1h1
         Uulw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Hm1JRtBNy8ejSNkC7feQD9AnoU2lBnzV4yMLPrc0/MA=;
        b=RfOe9dlENXB1MMeKyRBUaZe9uSiLaf1RZZVHfHHgx3qXXx3l4fROrw7y+okKZmaWna
         u1zOKO/P+bPgPW9g6yzCdAlH3/mjcFbTeON91MekIM/jJ0EmVy0Ap3N/C068XLpykqAO
         0U3WGu5YDDWHyMZqS4XmPLbYqOu0pAp5Ls9/ABV/lzIKfTuywQRKCETcuhAqPZNodnE0
         i0TUC1PRzMEQIpF5ZHRj47bdbZa7i3Jo6QgK6Iv38DK6GERKjgd3v8tCwbGqbuOBx14M
         3EvAid4cef4FML1gQiD+yNF2DVebIn1hjeHvr7hEqwkBK+n8uDPeznYfZNwz6SSs2qRd
         5/RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t1l2R3Sn;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hm1JRtBNy8ejSNkC7feQD9AnoU2lBnzV4yMLPrc0/MA=;
        b=VlSv+4bZ4/2Ug4INDysUu8lHGdL14z12TDilh5/MmAr3L/ma73EWP+GN8CsdffXvrM
         OKVi8ownzhxw7NXFiT450tguk3qN0GCDMqAqzNObzilg8rfIde2R1gaFD/kZHzE4eK/K
         RfCWPjtUVGvsGi6g6IdGVSoWwoNrNPUV8WGnNQQbGU/XjohrmqoDic9K1NjyEP7vVrRS
         e8RN3s1QXvHMM1QEg0+6Qx19EYAlucgk0Gdt1Yz0p1fM1ELJubmGPQqW/KHSnzNVk61b
         3JyDGQXjIhX/ihuZ63zT2RtTMjWMipn522J/vVIKahI1N91f0U7dwsy25a18+jMhkyQ3
         3Syg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hm1JRtBNy8ejSNkC7feQD9AnoU2lBnzV4yMLPrc0/MA=;
        b=NYjo5C7XJoZNvOn+7F7sOmbrJBhzg60JFZP8FE1TNmtdd7KryaOHmU7UJ0WsOWQMzI
         7kPo9N5GNuzSovX2Pnb2+6L/S3JvA+M/tEf3QnERqx0MsMKe2PkTz/Nq8X90ZprijZur
         0I4TNXtKK3R8MNSHxsh4ijGTL9gqEBW53VqT0kIqRY9QnxRl2D3/abCKWgOs1C9kThf3
         2F8uDwEGakYNoJkIANkwGFsK+xTRtXuA7OGL68Kj7Zm8TuoQ7kMn2bf53f7ka/vRdQVF
         3jvbLO9QyhJsqayjzLAe+HlXTScZnokZ2vr3O3k7TrrhM2bAcnDN1zHLrE1eu/vXcRzU
         1GYQ==
X-Gm-Message-State: AOAM532DXjCOD2KQYSSWgfTk8P/whbbudROL5ygDLWpmnCwo+6qZFxDm
	VlkvTAhLKIwTckpNmGlJ7V0=
X-Google-Smtp-Source: ABdhPJzyJffeUOQe1P0X0KYk9Q0J9DNmmRFIGv3nVcvJSgxmqriwlH/HEkvvR0NiFKTZl+TLzT6VqA==
X-Received: by 2002:a0c:eb91:: with SMTP id x17mr1094356qvo.36.1604963514597;
        Mon, 09 Nov 2020 15:11:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16cb:: with SMTP id d11ls2480406qvz.8.gmail; Mon,
 09 Nov 2020 15:11:54 -0800 (PST)
X-Received: by 2002:a0c:99e6:: with SMTP id y38mr16880600qve.28.1604963514037;
        Mon, 09 Nov 2020 15:11:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604963514; cv=none;
        d=google.com; s=arc-20160816;
        b=tnbxV6yQj/7xWfQr/H8pZ7NIdfPU5LbVqUpwxbJPgbJtwgm4piNevumckalEtqCjiQ
         jtXMbob/II1qTt/NkGdVgMLfy8KRzoVITHrB8JDyiCdivPKRB5NBJaS4KRDqgSIeVLx9
         OCR1pfac2uc+2xV4kyu+VMcSadfPK2RvLunmTWp31KUYtLtdW96H/6JtxBDUzNrnW6Bo
         wgIesOh4u/v5snn0IthmMwAabjZ3bEKQ0P9UApol7HJ+siRM5+aFidOgrNDZ2rBEq4Dk
         nAvHq0U8awZlHWfPr1lE0c61JdcwIAfa2hoS5UTOgDy+piFE7uOB3eb4p/45dwaij+9A
         cV6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JZQgZVi3YCvHDQb4j6S1eW+CN0G55HltfL6yQaxCZtw=;
        b=lUhAVvJ2rqVC+4EplWX2uQv9rvJ3zzETkTBybWpO3MX6GaW6PwmqEaQztibrmnqxyX
         a8NqQAVKTu9ajWBEuwzuT/btzEN61qgPRA0vnvgIOGPc28LFTNqaPiYMtqZ6FMdc8S4c
         jr7JEJis5jRhhK/lac2M2JP/o0bWaE1RgtTvePkEQLpTIIEAh7JJ7Ip8681obiSQVBjt
         gxEe4TIf4db91/iBdGmfsHgCTcjX5SSwVkDQnJ0mrNaKx9x8jBSqnyL3N3udCtGcoi3K
         HqN6AHCyO/hpIQRE7AwdyTleWJIVWs+Z22d1gluWPWKbIgVHPAL7yQ1v0OHoIWNX1MU0
         sxog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t1l2R3Sn;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id x21si474377qtx.1.2020.11.09.15.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 15:11:54 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id k12so3348017uad.11
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 15:11:53 -0800 (PST)
X-Received: by 2002:ab0:186a:: with SMTP id j42mr8260179uag.52.1604963513337;
 Mon, 09 Nov 2020 15:11:53 -0800 (PST)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com> <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
In-Reply-To: <20201023173617.GA3021099@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 15:11:41 -0800
Message-ID: <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
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
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t1l2R3Sn;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Fri, Oct 23, 2020 at 10:36 AM Sami Tolvanen <samitolvanen@google.com> wr=
ote:
>
> On Wed, Oct 21, 2020 at 05:22:59PM -0700, Sami Tolvanen wrote:
> > There are a couple of differences, like the first "undefined stack
> > state" warning pointing to set_bringup_idt_handler.constprop.0()
> > instead of __switch_to_asm(). I tried running this with --backtrace,
> > but objtool segfaults at the first .entry.text warning:
>
> Looks like it segfaults when calling BT_FUNC() for an instruction that
> doesn't have a section (?). Applying this patch allows objtool to finish
> with --backtrace:
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index c216dd4d662c..618b0c4f2890 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -2604,7 +2604,7 @@ static int validate_branch(struct objtool_file *fil=
e, struct symbol *func,
>                                 ret =3D validate_branch(file, func,
>                                                       insn->jump_dest, st=
ate);
>                                 if (ret) {
> -                                       if (backtrace)
> +                                       if (backtrace && insn->sec)
>                                                 BT_FUNC("(branch)", insn)=
;
>                                         return ret;
>                                 }
>
>
> Running objtool -barfld on an allyesconfig+LTO vmlinux.o prints out the
> following, ignoring the crypto warnings for now:

OK, I spent some time looking at these warnings and the configs needed
to reproduce them without building allyesconfig:

CONFIG_XEN

__switch_to_asm()+0x0: undefined stack state
  xen_hypercall_set_trap_table()+0x0: <=3D=3D=3D (sym)

CONFIG_XEN_PV

.entry.text+0xffd: sibling call from callable instruction with
modified stack frame
  .entry.text+0xfcb: (branch)
  .entry.text+0xfb5: (alt)
  .entry.text+0xfb0: (alt)
  .entry.text+0xf78: (branch)
  .entry.text+0x9c: (branch)
  xen_syscall_target()+0x15: (branch)
  xen_syscall_target()+0x0: <=3D=3D=3D (sym)
.entry.text+0x1754: unsupported instruction in callable function
  .entry.text+0x171d: (branch)
  .entry.text+0x1707: (alt)
  .entry.text+0x1701: (alt)
  xen_syscall32_target()+0x15: (branch)
  xen_syscall32_target()+0x0: <=3D=3D=3D (sym)
.entry.text+0x1634: redundant CLD

Backtrace doesn=E2=80=99t print out anything useful for the =E2=80=9Credund=
ant CLD=E2=80=9D
error, but it occurs when validate_branch is looking at
xen_sysenter_target.

do_suspend_lowlevel()+0x116: sibling call from callable instruction
with modified stack frame
  do_suspend_lowlevel()+0x9a: (branch)
  do_suspend_lowlevel()+0x0: <=3D=3D=3D (sym)

.entry.text+0x48: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x21: (alt)
  .entry.text+0x1c: (alt)
  .entry.text+0x10: <=3D=3D=3D (hint)
.entry.text+0x15fd: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x15dc: (alt)
  .entry.text+0x15d7: (alt)
  .entry.text+0x15d0: <=3D=3D=3D (hint)
.entry.text+0x168c: stack state mismatch: cfa1=3D7-8 cfa2=3D-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x166b: (alt)
  .entry.text+0x1666: (alt)
  .entry.text+0x1660: <=3D=3D=3D (hint)

It looks like the stack state mismatch warnings can be fixed by adding
unwind hints also to entry_SYSCALL_64_after_hwframe,
entry_SYSENTER_compat_after_hwframe, and
entry_SYSCALL_compat_after_hwframe. Does that sound correct?

CONFIG_AMD_MEM_ENCRYPT

.head.text+0xfb: unsupported instruction in callable function
  .head.text+0x207: (branch)
  sev_es_play_dead()+0xff: (branch)
  sev_es_play_dead()+0xd2: (branch)
  sev_es_play_dead()+0xa8: (alt)
  sev_es_play_dead()+0x144: (branch)
  sev_es_play_dead()+0x10b: (branch)
  sev_es_play_dead()+0x1f: (branch)
  sev_es_play_dead()+0x0: <=3D=3D=3D (sym)

This happens because sev_es_play_dead calls start_cpu0. It always has,
but objtool hasn=E2=80=99t been able to follow the call when processing onl=
y
sev-es.o. Any thoughts on the preferred way to fix this one?

CONFIG_CRYPTO_CRC32C_INTEL

__x86_retpoline_rdi()+0x10: return with modified stack frame
  __x86_retpoline_rdi()+0x0: (branch)
  .altinstr_replacement+0x147: (branch)
  .text+0xaf4c7: (alt)
  .text+0xb03b0: (branch)
  .text+0xaf482: (branch)
  crc_pcl()+0x10: (branch)
  crc_pcl()+0x0: <=3D=3D=3D (sym)

__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=3D7+32 cfa2=3D7+8
  .altinstr_replacement+0x265: (branch)
  __x86_indirect_thunk_rdi()+0x0: (alt)
  __x86_indirect_thunk_rdi()+0x0: <=3D=3D=3D (sym)

This is different from the warnings in the rest of the arch/x86/crypto
code. Do we need some kind of a hint before the JMP_NOSPEC in crc_pcl?

CONFIG_FUNCTION_TRACER

__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=3D7+32 cfa2=3D-1+0
  .altinstr_replacement+0x111: (branch)
  .text+0x28a5: (alt)
  .text+0x2880: <=3D=3D=3D (hint)

This unwind hint is in return_to_handler. Removing it obviously stops
the warning and doesn=E2=80=99t seem to result in any other complaints from
objtool. Is this hint correct?

The remaining warnings are all =E2=80=9Cunsupported stack pointer realignme=
nt=E2=80=9D
issues in the crypto code and can be reproduced with the following
configs:

CONFIG_CRYPTO_AES_NI_INTEL
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
CONFIG_CRYPTO_SHA1_SSSE3
CONFIG_CRYPTO_SHA256_SSSE3
CONFIG_CRYPTO_SHA512_SSSE3

Josh, have you had a chance to look at the crypto patches you mentioned ear=
lier?

Sami

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw%40mai=
l.gmail.com.

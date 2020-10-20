Return-Path: <clang-built-linux+bncBC2ORX645YPRBH5IXT6AKGQEIK43M7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C11602940B9
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 18:45:19 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id o9sf1090923ljp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 09:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603212319; cv=pass;
        d=google.com; s=arc-20160816;
        b=RcOetndE70DxL3aKRJb2JtOYjTA47a6tfX6IH0wJPlZ3AZ4ct4v2zQe7hftDI9PSem
         GaVnlxV/tkFcvtI21MuNnxqZIH8Xh/UCzRJ0HsPM5lQQSy6ue3oSm8DrAXlnAawjRyTM
         R1jIBWeJOee5W61FtDqzYG+MepGaBF2unxeThuOgtesQ90ylkJX7xfiJZShPJJvDR4jv
         UjiXQb2EySv1Ao2rIIlYg+7Z/xqx8dH83KnNZwRmv/RYpzZzAzfvtbDo9l+DHV4cw5+1
         J/gBdxMVkjPlqP/ZiO/Q2BAoFFIBk7pKEGxzF5hn6h/gSoJwuxebn8oRPo58XDPvjuJk
         JoPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eYdh3rmKGoVerblTqr+T99cIdrglM/jNzyhRp5t5+a8=;
        b=I1tNak8gqr0clt4RgrE9GqaR2uJnPkTU3jX/7zJwwSSNhIMm+Iwyy5Fu1nf3JP5N8y
         jqx5xalMTEYfcx19fN/AJ+vVU7hD4KUn42DPsKwIgInNAb/t6TIh3u0an/rtVPZtzi1S
         Zp8vVEt2Mq0si36G8bj947OrCg7FYhysJR29Fu3Mtr/JJaNgmuNbtE1eWLukOyhrGvdU
         gIMZvGtdgb0WyyvGdmqRvZiNOEBqyOO5etrTpEIrFQfoghrhvq10fpOln2JgG9dRnyVG
         kChDwUsPK/qf22Txhx4ssW7bRfMmHXXvfiGZcegm3LZtOwk6GXEopUouA0Oi2Ob0H+IP
         BOWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmIYSpKF;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYdh3rmKGoVerblTqr+T99cIdrglM/jNzyhRp5t5+a8=;
        b=D3V4ptgWjN2SeUqpWBhOzUNC4Eupknwiw85GNGNwWhIE4WM2BnG1vrqimnGnsY+OIF
         gHGVF8r2kgruqEpuF7jqd3lkINR40cO2F77Q0MnENZpsUa8dAgZJ1sffJZdLrfwIrHds
         8geYyUb8cahwzaVNBrpNDPZ/S1UJPFMKRVz1W+g30KNwJ0NnRRxDpE1hkGu/Yc5fg1ka
         N8/gaGTkEJWAp97m8R7WLmPUl2e+cloQotxI/jnNJBl+fhv4O7vTEHnnZJsd1ehWQpZ1
         zIThwMobVSesTbPeGa96025I/2LJHFMICL8BKWzK/DLM1tygDT23TBE62mMcEOCGKehn
         y4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYdh3rmKGoVerblTqr+T99cIdrglM/jNzyhRp5t5+a8=;
        b=oCj/NskwF5XyhiiN7H0P/M59/4atPQU3cnxn2ONCKU7pfF93ooLBzcNGc2CXH72UqI
         IFeVBFLcyg0QRbB+dFo9uj4Mo/A020R+VDfvXQNJLuB6Fx4fKyCPMt/+UiQUuvtVlBnQ
         ypr9FPKFwJeud5KIaDzG0aqbVLF5vDHCCPF4mx7zBaT5O7eI+Vumq3d3viv12rFZeu00
         jQqLjBpPZ4xlVLCYj/3/eYF30wR4kKDntqfJBo3oXZSx8GRMH6LxFK8HCfGaH4V0RjgS
         56ilKrmbPiAoYFDxsv5a8ydr66wHUQVrH4XehHLILXUKhcErlbO5gRUxULTBHAL42Cr9
         UkXw==
X-Gm-Message-State: AOAM532hKeJcANiDZzQLutk/iGQie34Fy8+ve49V2nQIBBm172b6B6fw
	B+jOKH5R3dnA6LPOKiaPPeU=
X-Google-Smtp-Source: ABdhPJw5jJgCIAD291Jm/UC3x5y0ee/eLpnOZOQHiMXeK7I8tuCZfm+23kUts62U9wdQvNYElGLjhg==
X-Received: by 2002:a19:ccc2:: with SMTP id c185mr1417356lfg.322.1603212319318;
        Tue, 20 Oct 2020 09:45:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls1688960lff.0.gmail; Tue, 20 Oct
 2020 09:45:18 -0700 (PDT)
X-Received: by 2002:a19:7f43:: with SMTP id a64mr1249433lfd.449.1603212318031;
        Tue, 20 Oct 2020 09:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603212318; cv=none;
        d=google.com; s=arc-20160816;
        b=J7OiYmbuFkcBaglINdOic6thffTc0cnRQkX8MdPfCU0Uun40EXAhr1/kUbOlGEGU6T
         WLUXHdVirdO9+dfyyUOfuMXUWK6x3Lo0RMsTE13JSNHYDAwbTx0PgpTQw+Gx+DjYjgch
         oH2TEKoaWgKDbZcwLlbN0Q2Kl81CsZ0s798f2Y2WwHnLDKiqaomaiYgADpnrzUY+W7cD
         IiA/QJNbdKzx1YVBbygADR6Ndim0J9zqiKo1/gHL1t2R/awCkugbMKyB2gMSPPqPb7mj
         iqZz0e+yXVKS6/FL/Dw8hhYjI+sPpQnD4izQM75rpD32LDsQHjuhxJZfV+lO7/B/u5lj
         zpcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kqizJSkHLOLzXDwR4VjspCggxCD/0uuJQy5O12nu08k=;
        b=d8nJhCof4u1xzf4MiX4IrkzHm7Htpute2rryI6Anod7i4bLt7lb2yjGm+mPwE9Ajr9
         +WpGrjwYLD9+UqTJl2U9aNtT6DzjiJRoSkemxiHUThppAEvSJlSdKnvQ3QpDyq/2YsgB
         Xp4oQJBerKyu08f3j6/+UOl7YHOt4csbuxD2OwpG0QlAuTZtHhmng7A/5t96H4StCDve
         dXWSfhmBfny+ekpFdfkM/HTQPoKY0RqIG4/iHNZhqzahWESuKWAIyshC75ckyyKp18dL
         s0Sei5HHJDeFA2b+d0RVl4G6vdS09KQ5bdfGS1NmRQI6a5ismcSe71J7j3eYaY65b0B2
         15Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmIYSpKF;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id o4si76972lfn.12.2020.10.20.09.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 09:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id dg9so2527813edb.12
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 09:45:18 -0700 (PDT)
X-Received: by 2002:aa7:c7d9:: with SMTP id o25mr3843066eds.318.1603212317220;
 Tue, 20 Oct 2020 09:45:17 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com> <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
In-Reply-To: <20201015203942.f3kwcohcwwa6lagd@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 09:45:06 -0700
Message-ID: <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
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
 header.i=@google.com header.s=20161025 header.b=BmIYSpKF;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
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

On Thu, Oct 15, 2020 at 1:39 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Oct 15, 2020 at 12:22:16PM +0200, Peter Zijlstra wrote:
> > On Thu, Oct 15, 2020 at 01:23:41AM +0200, Jann Horn wrote:
> >
> > > It would probably be good to keep LTO and non-LTO builds in sync about
> > > which files are subjected to objtool checks. So either you should be
> > > removing the OBJECT_FILES_NON_STANDARD annotations for anything that
> > > is linked into the main kernel (which would be a nice cleanup, if that
> > > is possible),
> >
> > This, I've had to do that for a number of files already for the limited
> > vmlinux.o passes we needed for noinstr validation.
>
> Getting rid of OBJECT_FILES_NON_STANDARD is indeed the end goal, though
> I'm not sure how practical that will be for some of the weirder edge
> case.
>
> On a related note, I have some old crypto cleanups which need dusting
> off.

Building allyesconfig with this series and LTO enabled, I still see
the following objtool warnings for vmlinux.o, grouped by source file:

arch/x86/entry/entry_64.S:
__switch_to_asm()+0x0: undefined stack state
.entry.text+0xffd: sibling call from callable instruction with
modified stack frame
.entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0

arch/x86/entry/entry_64_compat.S:
.entry.text+0x1754: unsupported instruction in callable function
.entry.text+0x1634: redundant CLD
.entry.text+0x15fd: stack state mismatch: cfa1=7-8 cfa2=-1+0
.entry.text+0x168c: stack state mismatch: cfa1=7-8 cfa2=-1+0

arch/x86/kernel/head_64.S:
.head.text+0xfb: unsupported instruction in callable function

arch/x86/kernel/acpi/wakeup_64.S:
do_suspend_lowlevel()+0x116: sibling call from callable instruction
with modified stack frame

arch/x86/crypto/camellia-aesni-avx2-asm_64.S:
camellia_cbc_dec_32way()+0xb3: stack state mismatch: cfa1=7+520 cfa2=7+8
camellia_ctr_32way()+0x1a: stack state mismatch: cfa1=7+520 cfa2=7+8

arch/x86/crypto/aesni-intel_avx-x86_64.S:
aesni_gcm_init_avx_gen2()+0x12: unsupported stack pointer realignment
aesni_gcm_enc_update_avx_gen2()+0x12: unsupported stack pointer realignment
aesni_gcm_dec_update_avx_gen2()+0x12: unsupported stack pointer realignment
aesni_gcm_finalize_avx_gen2()+0x12: unsupported stack pointer realignment
aesni_gcm_init_avx_gen4()+0x12: unsupported stack pointer realignment
aesni_gcm_enc_update_avx_gen4()+0x12: unsupported stack pointer realignment
aesni_gcm_dec_update_avx_gen4()+0x12: unsupported stack pointer realignment
aesni_gcm_finalize_avx_gen4()+0x12: unsupported stack pointer realignment

arch/x86/crypto/sha1_avx2_x86_64_asm.S:
sha1_transform_avx2()+0xc: unsupported stack pointer realignment

arch/x86/crypto/sha1_ni_asm.S:
sha1_ni_transform()+0x7: unsupported stack pointer realignment

arch/x86/crypto/sha256-avx2-asm.S:
sha256_transform_rorx()+0x13: unsupported stack pointer realignment

arch/x86/crypto/sha512-ssse3-asm.S:
sha512_transform_ssse3()+0x14: unsupported stack pointer realignment

arch/x86/crypto/sha512-avx-asm.S:
sha512_transform_avx()+0x14: unsupported stack pointer realignment

arch/x86/crypto/sha512-avx2-asm.S:
sha512_transform_rorx()+0x7: unsupported stack pointer realignment

arch/x86/lib/retpoline.S:
__x86_retpoline_rdi()+0x10: return with modified stack frame
__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0

Josh, Peter, any thoughts on what would be the preferred way to fix
these, or how to tell objtool to ignore this code?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw%40mail.gmail.com.

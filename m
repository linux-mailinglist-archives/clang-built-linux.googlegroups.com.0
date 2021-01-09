Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRV3477QKGQEHCULMFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B89AD2F01D3
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 17:45:59 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id x10sf13280243ilq.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 08:45:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610210758; cv=pass;
        d=google.com; s=arc-20160816;
        b=abKzN5DU6Aa6MdyMq+Dbsphk0Mo8WoKZi4a02PGfmBxjSu6e9l16zBTCG9H0jQz8R+
         glEb9Ps6c5lMxtH2d9oJu3YKTj2LxIX0iUSuCAq/r6wI4EzPhC2uvVpgZ0R3ejgjAG/u
         qL9qM/FH6RjeH927szpDepcwypvFVLFZbchrPIZ3TciiXks/hmqOJBHt6AGRF1465Q2I
         6yotsahdvT7TL+PWnm5maH5ExMej0iaXG5265mfaaY2bt+9gVw3GF8XNt9soGtXNDN0R
         /f7MBI1c/wwzRdEn6K2+lnaaSZA+tHpmHKUOFqyGMn/f7KH5cgGRx4tbbmXvIkHaB8VM
         aKYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=KucjdvMmgSDAcyyDP2PDsiF0nL+C5IElkbAJpRA/w2M=;
        b=WJsDIgDoMKiMv9fbP63ToYJwbShRAI1NkRMahi6zlbZeTnq+eher08sV+yPI45RoaG
         yr378gW3X5YxJIcBHuZPnoApVy5NFI6FBWym42M5QKF9NiSWEVFKey0hsY3DUmSGqLop
         CsNVZnY0oYqWnQHLIdrbFRL+ALiBLkNA0teGRmv7cUaboyVDYzhExOnMgp1h7eH5z0YI
         ggX+SFNrmNGbyEEGR3H6OgpfPXlFGHqORKm99ED55LZBq6mMVC7Kw71Lb/wdVBVJO/KL
         Dr/CO9rdrMHYDfiTDeL4NGpvsbMhzR1jvLKykVsbsKt53ck1IMXbGHsbRnhRfGNWPsnX
         vp6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lKYcZ/pD";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KucjdvMmgSDAcyyDP2PDsiF0nL+C5IElkbAJpRA/w2M=;
        b=I7cucx1zh9cOC6VD3CzQehwrp0afpvtRHgOhGGfxfEO1KRKZYFC7OfocfFVm7XERwB
         IMnzayzqKpCEsIgDhg3qPiyhrqepz73aDMNf2rKyOnXFg1J7KRP4WT33KRc+urzSuvGu
         wvkuHYISIdaiuT5jeIcgzb0++LkwZg/ckwMRT4sfzHlgxSxhee6XqFVqvFlTNNHA4Nuw
         OsI9g3iU8son4HXxDI6+8LCaBgoq6jFBOQZKxhf/cK5QRNr6amEZorJuqo4mbJjX3j3L
         4ohpHmiOqFFMOq7hgMhEYKvP/VuTjl+4xAnujxluool8spG2NbeTfupBFBnXhfoeE9Tb
         rw4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KucjdvMmgSDAcyyDP2PDsiF0nL+C5IElkbAJpRA/w2M=;
        b=e/O8jzyueYPZu3uHfryCl3ws4U0nqWzumIhCxrvERnjr679909PQbGxvE+eV+gR8IM
         PYlKcasIkXfl10CBcW899h2Tw5pSMtl+hAWIzH4dmopuKL1thLpnUMrDI6OivF7qio3T
         1vU4P0++cV8TkO4Sq5WD0jrpaC5BEzTlFwGeZIoEVpt74eqHUwzhqIqVFFbMwyYd7ngk
         2QSsb01Wb63LTA8ZXh6KC2Sw7F24mae7C3fTv/9YExRWpYu6poSHq3AaO+clqXQMa1JF
         Zdggb587ZqUSJzHN04Qj+PViGIxBDnbcfiZvNEbAOOHQP6ckqaMRf14uwJrJwIz5QgpX
         yjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KucjdvMmgSDAcyyDP2PDsiF0nL+C5IElkbAJpRA/w2M=;
        b=CVsTgecrJTslQQMl9fa43kmxq9lb5sJajLfqYUYh/VzscpD6Rb84GMxFgh/1r65qP2
         UGuX724rosqSBTDoHJvXLid4e+38JtcAlJP2NaiE5p3IH1KoTsFizI16Y8NueuTR/k14
         FRQvdPhTAO0SyHFs3dvX8g8k/wmThLVdaagX2ex908nuZyD9Jn2sCFZUYKv4FK6taAZq
         KelwEKJSur4ej21X7ts4HZDLiqm+ulQVnuH0atGLC1zf7QLJ6f6TIIdFvdLoMkdnt0an
         SFpW7Vvm7MwNllvBHgho2FApXXcFtcL4VlGxDW3/D0HBiuL1l9c4L8cFWTQLrp3/VwVS
         5Z/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533at1aFbx89VYwtK7EVbxdfUHLN5jpEO9aL6IDNY20au5gWayY2
	BFXfvBLMV61rzKI/6yXI9b4=
X-Google-Smtp-Source: ABdhPJz+EUQF+IW39d+/L/Bfg/Hm9VsKSRuK3ZwsQC1WemmoBKPvva11PkGgee1FPCdGdYwZGOmBYA==
X-Received: by 2002:a6b:fd03:: with SMTP id c3mr9709659ioi.64.1610210758487;
        Sat, 09 Jan 2021 08:45:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls4198560ilt.2.gmail; Sat, 09
 Jan 2021 08:45:58 -0800 (PST)
X-Received: by 2002:a92:9a58:: with SMTP id t85mr9091018ili.172.1610210758052;
        Sat, 09 Jan 2021 08:45:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610210758; cv=none;
        d=google.com; s=arc-20160816;
        b=XmqVgLcRV/Ye/t+GKie1CRqj23oj1t2+P4dZUt9sjRSaq24koDMeutRFVbFTDaIlqy
         lSA9ZG1QDdyrQEsrh9JfKg77FjWONvFfV2ZygC0noynKhtXWZbz4AHFXp3rbK81LSkcj
         RagaEbZLYZE7oQxSEiHbye4LTqz+oM3CdGspNXgM1adCoA386vMWlSJEN/kUM9Hfl+op
         W4pKcmukZE05AfptJaGCiRMHyGxQihK0YaCLOa9FUM23ftQyxcodJZ7M2nEMl9BpR9rw
         meuY5EAj+RZ7SNLwJ0SUqlrZaL5aWB3TDZUliI6jdT8twSoVjt1LL4sOWynQYmu9L6/w
         BC5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=rDWdOZV033PbHRIoz9gFCdCCPtDWdrf2QpLHI3qC4Ks=;
        b=BLrifOkXOeVjNjxcIuOMjt4gP4ANF5bkO34rkFH4JLTS9cIn5QHvLZi/TPHFdv4Y81
         ek4qV04FiXwR/F8fTZe2RbVtdpCKgIkecqoaE5IfXRAGqVmN9fp5Eows92dX6QcnYnCH
         KS2moYxRV/GDxSUlTP0M21qf5zAkssCzYwWWMZnh5DA76DJH9cBrQ/V99/tUf3wfkoCe
         wjN882AjAAh2wqq3v47eoNEoHolWKiyNXLgbxxagylhSFJqUIjMbm6HwQQxcL7il6vFQ
         K1YTjtB1gAVPrEPXow3Lx0guS2jDLlN07AwhX8LmxX2HFPsstkFxYhdboUMTWK0kvkfn
         ib2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lKYcZ/pD";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id y16si182131iln.0.2021.01.09.08.45.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 08:45:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id 75so13625605ilv.13
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 08:45:58 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr9393270ilg.215.1610210757859;
 Sat, 09 Jan 2021 08:45:57 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble> <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble> <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
 <20210109163256.3sv3wbgrshbj72ik@treble>
In-Reply-To: <20210109163256.3sv3wbgrshbj72ik@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 Jan 2021 17:45:47 +0100
Message-ID: <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="lKYcZ/pD";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c
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

On Sat, Jan 9, 2021 at 5:33 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> > > > Did you push it (oh ah push it push it really really really good...=
)
> > > > to your remote Git please :-).
> > >
> > > I thought I already pushed it pretty good ;-) do you not see it?
> > >
> > > git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objt=
ool-vmlinux
> > >
> > > d6baee244f2d =E2=80=94 objtool: Alphabetize usage option list (3 week=
s ago)
> > > c0b2a6a625ac =E2=80=94 objtool: Separate vmlinux/noinstr validation c=
onfig options (3 weeks ago)
> > > 84c53551ad17 =E2=80=94 objtool: Enable full vmlinux validation (3 wee=
ks ago)
> > > e518ac0801cd =E2=80=94 x86/power: Support objtool validation in hiber=
nate_asm_64.S (3 weeks ago)
> > > d0ac4c7301c1 =E2=80=94 x86/power: Move restore_registers() to top of =
the file (3 weeks ago)
> > > d3389bc83538 =E2=80=94 x86/power: Convert indirect jumps to retpoline=
s (3 weeks ago)
> > > 7a974d90aa40 =E2=80=94 x86/acpi: Support objtool validation in wakeup=
_64.S (3 weeks ago)
> > > 6693e26cd6cc =E2=80=94 x86/acpi: Convert indirect jump to retpoline (=
3 weeks ago)
> > > 0dfb760c74d1 =E2=80=94 x86/ftrace: Support objtool vmlinux.o validati=
on in ftrace_64.S (3 weeks ago)
> > > 89a4febfd7bf =E2=80=94 x86/xen/pvh: Convert indirect jump to retpolin=
e (3 weeks ago)
> > > b62837092140 =E2=80=94 x86/xen: Support objtool vmlinux.o validation =
in xen-head.S (3 weeks ago)
> > > 705e18481ed9 =E2=80=94 x86/xen: Support objtool validation in xen-asm=
.S (3 weeks ago)
> > > 3548319e21b9 =E2=80=94 objtool: Add xen_start_kernel() to noreturn li=
st (3 weeks ago)
> > > 6016e8da8c3d =E2=80=94 objtool: Combine UNWIND_HINT_RET_OFFSET and UN=
WIND_HINT_FUNC (3 weeks ago)
> > > 56d6a7aee8b1 =E2=80=94 objtool: Add asm version of STACK_FRAME_NON_ST=
ANDARD (3 weeks ago)
> > > 68259d951f1a =E2=80=94 objtool: Assume only ELF functions do sibling =
calls (3 weeks ago)
> > > 0d6c8816cf91 =E2=80=94 x86/ftrace: Add UNWIND_HINT_FUNC annotation fo=
r ftrace_stub (3 weeks ago)
> > > 24d6ce8cd8f6 =E2=80=94 objtool: Support retpoline jump detection for =
vmlinux.o (3 weeks ago)
> > > 8145ea268f16 =E2=80=94 objtool: Fix ".cold" section suffix check for =
newer versions of GCC (3 weeks ago)
> > > b3dfca472514 =E2=80=94 objtool: Fix retpoline detection in asm code (=
3 weeks ago)
> > > b82402fa5211 =E2=80=94 objtool: Fix error handling for STD/CLD warnin=
gs (3 weeks ago)
> > > 1f02defb4b79 =E2=80=94 objtool: Fix seg fault in BT_FUNC() with fake =
jump (3 weeks ago)
> > > 2c85ebc57b3e =E2=80=94 Linux 5.10 (4 weeks ago)
> > >
> >
> > I already have this one in my patch-series - I hoped you pushed
> > something new to your objtool-vmlinux Git branch.
> > That is what I mean by shortened... <jpoimboe.git#objtool-vmlinux>.
> >
> > Hey, it's based on Linux v5.10 - I can test this with Linux v5.10.6 :-)=
.
>
> This is the most recent version of the patches.  I only pushed them this
> morning since you said the prior version wasn't applying on Sami's
> clang-cfi branch.  This version rebases fine on 'clang-cfi'.
>

I tried merging with clang-cfi Git which is based on Linux v5.11-rc2+
with a lot of merge conflicts.

Did you try on top of cfi-10 Git tag which is based on Linux v5.10?

Whatever you successfully did... Can you give me a step-by-step instruction=
?

- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA%2Bg%4=
0mail.gmail.com.

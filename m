Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLNQ477QKGQERAHHF4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B13F82F016C
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 17:22:06 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id g19sf9625947iob.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 08:22:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610209325; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMY+tUn2TXYv7H3Il7POjLocqZwYgEyQZS3+H5GyO3tqnp8YDVcuzrGM9b7gyC95BC
         TyvxJOR2xW6Kk99c196/jo64paKxR54MQbeC4DaPLfDpSlyHcS3uUO+75M34wlVBd56E
         vZIwsIId8yG8kDE1TXo63tuJHS2k8OgrIbP+ufTWSCppRYjonFjd+Zy3Ooa+KqDtsNMm
         aWKjToGrpIBH4zJ92Z2zcTHsnfDQTdz5nhH8XfgC19JC5OCSUFPR9CE+HZ8R/gnW3cQX
         9WVCtpGL2hCIhZ19EVOWmwcwVknlxkDD5hgL0xy5UK14SmE+ZuivTjU/haqHSiEVeJfG
         NODA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=kPZZfNj16v5xpQqZ9l8eBlkBedrqyK3RBhvPQAaKuCU=;
        b=i26S3+A6qrBl6Cbp3MsKu3rW4Z6DZ4f/gvmRMy0YutSwCBbr0JBkyftHNn4W2hf4Jt
         /9CMhs6wvX+yFSTVrRSHDLBkEO/fyB7UoWmcmKG10mupMP57fXBrXlAZsfcNXg6iiBX5
         b3Fkk6+iavg/7gAIpxsAOw8EmcEj2nb1+ryaBNi7na5+NwggyhhjohZfg6cyqjAwtClH
         BLOsWn/MQV8icfx7LkSOERXHULPORQMKzV3UyHBhbDT3zwJ50dtMh9gfOgOOhTmwnEZI
         yuZ6LiqbEiqTMkUbTigl1d/93XTrFepZP+itf4xa5ULmZ2c4crjAzobT3mxb63kSPKmt
         +vAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivZm2CZr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPZZfNj16v5xpQqZ9l8eBlkBedrqyK3RBhvPQAaKuCU=;
        b=ruvnUeMth8J5HWP1qILBC5n8FE8aJBKIm/ofxSxKVSagq8yyq+jwXAtCCGv8NIFxWq
         +tcJsNRP1EXwWL43COghzcfm74o1OUnrlp7tMpBrso/okvnw/5/fwrlBPWEaYUXkpW6e
         zu4BJ6AeQF4ETuH+yp6TS+UHodFefPx/zG0fflmeBSGffdAmIVzGGzfH/MdBorDERxkn
         I/RXOzUz0ma2lJUr/oKoGeNmMANcnkuN491wI/0d/H8lO+F4402+JCaUlhCmXEwFssdU
         7CN9NEzixdTeQxRgQfV1fg+UjoX4RqZB2PA/4eTo3NhREzeSdH8ER57nWmoTeSEzM4kg
         f8yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kPZZfNj16v5xpQqZ9l8eBlkBedrqyK3RBhvPQAaKuCU=;
        b=Em0tvLWe64QCZhoogYdK24YnouhsXDIL0Q79laIEdZ/frzUHgXoakWYSbGyXu2HDSH
         ZAsLLonbgLGc/RxY7NSZWrAIk4kPbX3toBlJVhYKEHf60sGU5zGfMEsYJoH7lOge/8YH
         8vHsSQa9xxsRsLv/3Ba7rts04YP6GqGFiw1/37++OUj9z7t/s6pO/ktfgquRd+6JAeza
         ZeazoO6jM1o6AqQLXGwnS03zINrLJtj9SoOYDk2aGitX6Q/I3C4pB36AD4SBXnwMKO6j
         AFtK3Nit/8caweJRaQThDcKE2oxolbL5CLvBG3tW4VWIyHxEb3yhVVHrcpR+X7ShPlIx
         lJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPZZfNj16v5xpQqZ9l8eBlkBedrqyK3RBhvPQAaKuCU=;
        b=uY3ytJlIsUhTlBl7EZVtL4k7vDteZCPOmjHqHKY/vkLysEzGEvP5B4EANjf/Hl+uba
         o3t9eKMi3a1Jn1D2JRy4xISnGv6ODlZUDIq13Kyb3OgBRFcovyqHHYygqbfD8YSXjO/H
         7zD0RnYt3ehSRWcvJ8MLJoF8sdvVuuvHm6fj45nlNz6Ee50MOKxc3/7jf8Do2L0D+N2K
         dPd8omnKHC5Wsac7si+mOzICl+XztS064lfyIrMm8GXH87yIMBMqX+fNUvhbX3ULIRHl
         ZhSQwle8rAhJB2qMHVwG+CEMHUGJhPF2v0/p5jQFWuDG4gLTvKKoT1GQdohGEBf93L+E
         5XTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533i8M58C+ZXSRG7kMtmpsqtql8klzIJpXNSdPYadeeFNISY4XGW
	nsQH0Iwo3L7b/HfkwyyNzB0=
X-Google-Smtp-Source: ABdhPJx0MRxSHU8SPvyTkRD2Wr6b+n1QcMcxPHGNude3pumLImqJ+DFNPvusM9y1UPulAZBcqPHUVQ==
X-Received: by 2002:a92:84d6:: with SMTP id y83mr9082687ilk.184.1610209325511;
        Sat, 09 Jan 2021 08:22:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1656:: with SMTP id a22ls1838265jat.7.gmail; Sat,
 09 Jan 2021 08:22:05 -0800 (PST)
X-Received: by 2002:a02:ab95:: with SMTP id t21mr8193554jan.51.1610209324981;
        Sat, 09 Jan 2021 08:22:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610209324; cv=none;
        d=google.com; s=arc-20160816;
        b=mlAJWUdwBBwaa28+QAiNDYanWS08u6EH3lwKM9H2lZIr20Qrq9+LDCRMglQ1SHDMnC
         gutsjAtqnOGi4flDhr+AqwzbS3nPwFJzOYLZVlmG8GKwc/V0hZplMED4uDSXVgDYepC7
         DCd7tQmpQwZ4N5Ey1SAbIAJG5fNO0lgByWbz2s+RnbqRBxMHQ99iTrGEokUp37yV93zC
         0hK/Ps+lzlrHyivaX+aP/SJ1rfUch5mtj+xOjMhymXixHFEB6dYRUapAByJPaVYjERqq
         wANkz6rLdI67ZcUaN5LV/tmCRNVFimRZe31XpZdLK3dJXyaBUMOLzn7nZFoS/BzB/bA/
         uzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=SBw9x5RzF6S1E0bgP/dBM7DvvjaOtCClJyn1xuwfGAM=;
        b=vx7aEbEe47VWh05ZUZd09hLjVWpI3rc9dkgpW51lydQ+A7i+jLxWKagARxKzaViLjQ
         BZgG2LhN4y1wrIGYTamXSOnxV6mk1k1zW0aT9hQV+bgL8Gku0adMWo0BFaQ/vVqPE+oo
         h7AQWMW1cne72wAfpYNiFAkArECsQDUVSvMyBZW4JHgz+YFuQMCVRT2+664IKCvf3U/d
         f+AVngLlsMiWUYbPzynOlns4DpnopRL/Lyf2EljPvmFObKhInZozTCZZOrzss2uqSz8M
         BIj5wEGMyuBG42Ttob8GyPfwRuL7pHACxNdnHOE3u0/+FbHQS2oRBXMIidBpYqd+UTxB
         X4vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivZm2CZr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id q4si955653iog.3.2021.01.09.08.22.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 08:22:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id n4so13062355iow.12
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 08:22:04 -0800 (PST)
X-Received: by 2002:a02:9f19:: with SMTP id z25mr8124040jal.30.1610209324708;
 Sat, 09 Jan 2021 08:22:04 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble> <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble>
In-Reply-To: <20210109160709.kqqpf64klflajarl@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 Jan 2021 17:21:51 +0100
Message-ID: <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=ivZm2CZr;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
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

On Sat, Jan 9, 2021 at 5:07 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Sat, Jan 09, 2021 at 04:46:21PM +0100, Sedat Dilek wrote:
> > On Sat, Jan 9, 2021 at 4:36 PM Josh Poimboeuf <jpoimboe@redhat.com> wro=
te:
> > >
> > > On Sat, Jan 09, 2021 at 03:54:20PM +0100, Sedat Dilek wrote:
> > > > I am interested in having Clang LTO (Clang-CFI) for x86-64 working =
and
> > > > help with testing.
> > > >
> > > > I tried the Git tree mentioned in [3] <jpoimboe.git#objtool-vmlinux=
>
> > > > (together with changes from <peterz.git#x86/urgent>).
> > > >
> > > > I only see in my build-log...
> > > >
> > > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > > eb_relocate_parse_slow()+0x3d0: stack state mismatch: cfa1=3D7+120
> > > > cfa2=3D-1+0
> > > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > > eb_copy_relocations()+0x229: stack state mismatch: cfa1=3D7+120
> > > > cfa2=3D-1+0
> > > >
> > > > ...which was reported and worked on in [1].
> > > >
> > > > This is with Clang-IAS version 11.0.1.
> > > >
> > > > Unfortunately, the recent changes in <samitolvanen.github#clang-cfi=
>
> > > > do not cleanly apply with Josh stuff.
> > > > My intention/wish was to report this combination of patchsets "heal=
s"
> > > > a lot of objtool-warnings for vmlinux.o I observed with Clang-CFI.
> > > >
> > > > Is it possible to have a Git branch where Josh's objtool-vmlinux is
> > > > working together with Clang-LTO?
> > > > For testing purposes.
> > >
> > > I updated my branch with my most recent work from before the holidays=
,
> > > can you try it now?  It still doesn't fix any of the crypto warnings,
> > > but I'll do that in a separate set after posting these next week.
> > >
> >
> > Thanks, Josh.
> >
> > Did you push it (oh ah push it push it really really really good...)
> > to your remote Git please :-).
>
> I thought I already pushed it pretty good ;-) do you not see it?
>
> git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-=
vmlinux
>
> d6baee244f2d =E2=80=94 objtool: Alphabetize usage option list (3 weeks ag=
o)
> c0b2a6a625ac =E2=80=94 objtool: Separate vmlinux/noinstr validation confi=
g options (3 weeks ago)
> 84c53551ad17 =E2=80=94 objtool: Enable full vmlinux validation (3 weeks a=
go)
> e518ac0801cd =E2=80=94 x86/power: Support objtool validation in hibernate=
_asm_64.S (3 weeks ago)
> d0ac4c7301c1 =E2=80=94 x86/power: Move restore_registers() to top of the =
file (3 weeks ago)
> d3389bc83538 =E2=80=94 x86/power: Convert indirect jumps to retpolines (3=
 weeks ago)
> 7a974d90aa40 =E2=80=94 x86/acpi: Support objtool validation in wakeup_64.=
S (3 weeks ago)
> 6693e26cd6cc =E2=80=94 x86/acpi: Convert indirect jump to retpoline (3 we=
eks ago)
> 0dfb760c74d1 =E2=80=94 x86/ftrace: Support objtool vmlinux.o validation i=
n ftrace_64.S (3 weeks ago)
> 89a4febfd7bf =E2=80=94 x86/xen/pvh: Convert indirect jump to retpoline (3=
 weeks ago)
> b62837092140 =E2=80=94 x86/xen: Support objtool vmlinux.o validation in x=
en-head.S (3 weeks ago)
> 705e18481ed9 =E2=80=94 x86/xen: Support objtool validation in xen-asm.S (=
3 weeks ago)
> 3548319e21b9 =E2=80=94 objtool: Add xen_start_kernel() to noreturn list (=
3 weeks ago)
> 6016e8da8c3d =E2=80=94 objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND=
_HINT_FUNC (3 weeks ago)
> 56d6a7aee8b1 =E2=80=94 objtool: Add asm version of STACK_FRAME_NON_STANDA=
RD (3 weeks ago)
> 68259d951f1a =E2=80=94 objtool: Assume only ELF functions do sibling call=
s (3 weeks ago)
> 0d6c8816cf91 =E2=80=94 x86/ftrace: Add UNWIND_HINT_FUNC annotation for ft=
race_stub (3 weeks ago)
> 24d6ce8cd8f6 =E2=80=94 objtool: Support retpoline jump detection for vmli=
nux.o (3 weeks ago)
> 8145ea268f16 =E2=80=94 objtool: Fix ".cold" section suffix check for newe=
r versions of GCC (3 weeks ago)
> b3dfca472514 =E2=80=94 objtool: Fix retpoline detection in asm code (3 we=
eks ago)
> b82402fa5211 =E2=80=94 objtool: Fix error handling for STD/CLD warnings (=
3 weeks ago)
> 1f02defb4b79 =E2=80=94 objtool: Fix seg fault in BT_FUNC() with fake jump=
 (3 weeks ago)
> 2c85ebc57b3e =E2=80=94 Linux 5.10 (4 weeks ago)
>

I already have this one in my patch-series - I hoped you pushed
something new to your objtool-vmlinux Git branch.
That is what I mean by shortened... <jpoimboe.git#objtool-vmlinux>.

Hey, it's based on Linux v5.10 - I can test this with Linux v5.10.6 :-).

- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUU%3DsS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg%4=
0mail.gmail.com.

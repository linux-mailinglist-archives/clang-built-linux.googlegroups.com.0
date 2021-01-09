Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBQNJ477QKGQEASGEOYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB912F0116
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 17:07:30 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id 82sf8805441oie.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 08:07:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610208449; cv=pass;
        d=google.com; s=arc-20160816;
        b=SlRssBZBvNXjuKheoqBNHmC+9J/+MNX4+oIcNpMQtTv5SXJd7wJ+vavAFErTpZfXUb
         KApLZPGB+LwyLK1i8G9XJ1qU7IE2qkykOHUmQuh4zPudRs3owH+IRTj2Dn+ysAhTc9Sj
         2Ixjzn6BBAj2cy/ywZc5CLJLLp2jCFuSG/d6SzbeaQFoRbcuUd/R2aWI9Y62zOAW/vlD
         4zhBQ+0Z2fCz7dzxzPnPhR5kgFvqwaGhMyA0DICfX4Vo1ZXS8GGPaLfLojOPDHZv/1ol
         6OoEatLaqUbV2B1uM4qL35rmaaU7yG+Vdn6T7pTLiI+mYRORroksRfjpwhGwSMHv92eu
         taMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dGx4Bi/YB0yvpTdj6MEdc+SoC2Vi3JAVG+uUxWfylkU=;
        b=Hunic973Wsq5dQ6bVYyFhpt7fz5wG3xaHYbp59VfnamlmwotdSn2ee5Eh2bKNZAT8g
         ewEqLDbMfgWoEK5hTgHrv8yIds2ERzDK3z6UfHqPVigDyBUO2iEaoBW+NWQybzHiEvKr
         +nLCyyujdaB87MQfmEUc9ads7BN0fI7wIYmpBulCKjqxCKv6MMYQZsLua0wNVTu5bBY7
         w6Hw9DUnte0yyBl0jwXbDoeNvO8GbWltz3o7S09Jg14PYrYQjiaKn7hLGmINgmjQ+dWK
         fv8/u/qx1dqrP86GEhHuJebQwE0MLcDsMHXzQZHesiVBI/jv2OCBMm8gL9OiX4zHlJow
         vVvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aDE2r7+Y;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dGx4Bi/YB0yvpTdj6MEdc+SoC2Vi3JAVG+uUxWfylkU=;
        b=KDVSL/5wuKMWck3wpvsHOgLWmmDcTziJYLwEAgCbrWUKUOzJou0JqABRTCklF3F3uP
         G6VUPl76R1udWCb8zpFbFM0/Oqsin3SJjSz+EUlPrqXsOusF9S2e1YAgGAe+eN0Bz90Q
         7gvvfPdfP4Co0SQt3KHWDpYzOIw8l84Zpd6gq6maau1Sa9Qgb9PBLfH4eXgvwtF8pbn1
         8MI37qkveEci8EJs/XtNF4FJzm/NXefJKGsGafy9IadWKw5202UcYYyBpl/9niS5CS36
         tIG5xWF5zVlyXsS2fGmBJcj12kSSYDUFwoz7+2NhgJDX84gcoesncEW7jYpMRtD1UyKD
         nP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dGx4Bi/YB0yvpTdj6MEdc+SoC2Vi3JAVG+uUxWfylkU=;
        b=XjhrEyss+vz7K1Xiq9GX6Ln5Lq9fWgdpgj+bmwmWZhGh8NMRtg+Jht7X2gaLW52Qsl
         wKw4jNTZIXKWIboY4NeZc5RwkrnmNi0h4T9Clgj8y40cZwqtx0y6Pok+by1NzpxqQvSN
         Q57Uh+EbRdDJX6DZX+lp0bFwV0BQZNom9nUUrsrKhcf7CDe0ZzUJuAlTDg99j5EuoLd6
         gcPmxUsumxp7oSJKyUOS5VDocDBLX18shXc1+HggGvM3IbHm3PpyOdYIR3wAYVQwMU49
         x1d59cIEUx1IFHy+/G+JVgtN43VUyZvB8saU9Cm+WooLSybzI9iqLJK/+T78pWQ8AN+S
         1Bcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f6pZFR794KlgadcRUW4IcAKdswQW+UwzlFgHDtQJ8GV0xVwvG
	RmyNpPV+FlljvRFwqvDWXBY=
X-Google-Smtp-Source: ABdhPJxeptQYhEEtaaWBx9mO0rqa3WjbhTg5yeTBb4Hj48cImuCavv72ewOz/uM5NPXMDHFxXy1BZg==
X-Received: by 2002:aca:ec09:: with SMTP id k9mr5445615oih.153.1610208449469;
        Sat, 09 Jan 2021 08:07:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls3713560oic.4.gmail; Sat, 09
 Jan 2021 08:07:29 -0800 (PST)
X-Received: by 2002:aca:1713:: with SMTP id j19mr5601767oii.165.1610208449074;
        Sat, 09 Jan 2021 08:07:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610208449; cv=none;
        d=google.com; s=arc-20160816;
        b=SmgaWyHdyLM3fiXbPvQVhsNhIboM3Y+Dz97M70gCgYdtW0v0ViTy9e9ALvhKw02dR1
         m/YTN1enw+YICfKlEso8AzcmmdL5/eYmggGWu5KaMx/hbbjwnjuJiNjYtOUrm1ToECQ0
         8mYtsDhcin97Lf338vnzUz+P20Um7iLePULEzWnB1llQlwLSAzcQJZwaTJ9ZDU46RZIT
         aKRjgA8W6MKuEMwaouHsm2PNMGbVDL5LxiO0v/ZwZQaIjcQe6l9nE3DIlycFAy9YzPim
         W2aMiOlFzLy1FizongCX+Tkv6Sxgz0jIWk5HPZKe282KhrFmoUwev2q/eWLCQimdvQwn
         2WqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/4tZTudWMHL9XHsahjxKGAOBjt0qYTZ11jrT8O8TLnA=;
        b=btAnnapU2flVhYdODPkFsGeLGt6BP3d6LAvIIgPBDE0cyJ3qNm9rTvCDfYHr7Fqzbt
         TgADGc2vme7nc4leeFRwPQkTf8mRZ+iH9gSywV85I51ij2tBkdVZjtzXSIKGCo4tHc7j
         9NX6/ezgamRNNSWVmSMq9xvPs47/gtzHG99CmmXb/vPWjoztfXUJbz7xRUMIVYVW3lwM
         nnJYPwyC0dNfz6SM5+kzaW78219upl5Fa8RgolQDRkWtzDUv3BjoCRb0M0UwMqUlaOPg
         dQuGJD7oCagq6pSO7IjWVtka1MvcTPpppSDFyNSdarm6z0F50oxxsueGl687cLlHdQlV
         Pp1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aDE2r7+Y;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r8si1097544otp.4.2021.01.09.08.07.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 08:07:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-ZQW85TisMNyB3WjeOrGOXw-1; Sat, 09 Jan 2021 11:07:24 -0500
X-MC-Unique: ZQW85TisMNyB3WjeOrGOXw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99F22801817;
	Sat,  9 Jan 2021 16:07:21 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8833C10013BD;
	Sat,  9 Jan 2021 16:07:16 +0000 (UTC)
Date: Sat, 9 Jan 2021 10:07:09 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <20210109160709.kqqpf64klflajarl@treble>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble>
 <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aDE2r7+Y;
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

On Sat, Jan 09, 2021 at 04:46:21PM +0100, Sedat Dilek wrote:
> On Sat, Jan 9, 2021 at 4:36 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote=
:
> >
> > On Sat, Jan 09, 2021 at 03:54:20PM +0100, Sedat Dilek wrote:
> > > I am interested in having Clang LTO (Clang-CFI) for x86-64 working an=
d
> > > help with testing.
> > >
> > > I tried the Git tree mentioned in [3] <jpoimboe.git#objtool-vmlinux>
> > > (together with changes from <peterz.git#x86/urgent>).
> > >
> > > I only see in my build-log...
> > >
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > eb_relocate_parse_slow()+0x3d0: stack state mismatch: cfa1=3D7+120
> > > cfa2=3D-1+0
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > eb_copy_relocations()+0x229: stack state mismatch: cfa1=3D7+120
> > > cfa2=3D-1+0
> > >
> > > ...which was reported and worked on in [1].
> > >
> > > This is with Clang-IAS version 11.0.1.
> > >
> > > Unfortunately, the recent changes in <samitolvanen.github#clang-cfi>
> > > do not cleanly apply with Josh stuff.
> > > My intention/wish was to report this combination of patchsets "heals"
> > > a lot of objtool-warnings for vmlinux.o I observed with Clang-CFI.
> > >
> > > Is it possible to have a Git branch where Josh's objtool-vmlinux is
> > > working together with Clang-LTO?
> > > For testing purposes.
> >
> > I updated my branch with my most recent work from before the holidays,
> > can you try it now?  It still doesn't fix any of the crypto warnings,
> > but I'll do that in a separate set after posting these next week.
> >
>=20
> Thanks, Josh.
>=20
> Did you push it (oh ah push it push it really really really good...)
> to your remote Git please :-).

I thought I already pushed it pretty good ;-) do you not see it?

git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vm=
linux

d6baee244f2d =E2=80=94 objtool: Alphabetize usage option list (3 weeks ago)
c0b2a6a625ac =E2=80=94 objtool: Separate vmlinux/noinstr validation config =
options (3 weeks ago)
84c53551ad17 =E2=80=94 objtool: Enable full vmlinux validation (3 weeks ago=
)
e518ac0801cd =E2=80=94 x86/power: Support objtool validation in hibernate_a=
sm_64.S (3 weeks ago)
d0ac4c7301c1 =E2=80=94 x86/power: Move restore_registers() to top of the fi=
le (3 weeks ago)
d3389bc83538 =E2=80=94 x86/power: Convert indirect jumps to retpolines (3 w=
eeks ago)
7a974d90aa40 =E2=80=94 x86/acpi: Support objtool validation in wakeup_64.S =
(3 weeks ago)
6693e26cd6cc =E2=80=94 x86/acpi: Convert indirect jump to retpoline (3 week=
s ago)
0dfb760c74d1 =E2=80=94 x86/ftrace: Support objtool vmlinux.o validation in =
ftrace_64.S (3 weeks ago)
89a4febfd7bf =E2=80=94 x86/xen/pvh: Convert indirect jump to retpoline (3 w=
eeks ago)
b62837092140 =E2=80=94 x86/xen: Support objtool vmlinux.o validation in xen=
-head.S (3 weeks ago)
705e18481ed9 =E2=80=94 x86/xen: Support objtool validation in xen-asm.S (3 =
weeks ago)
3548319e21b9 =E2=80=94 objtool: Add xen_start_kernel() to noreturn list (3 =
weeks ago)
6016e8da8c3d =E2=80=94 objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_H=
INT_FUNC (3 weeks ago)
56d6a7aee8b1 =E2=80=94 objtool: Add asm version of STACK_FRAME_NON_STANDARD=
 (3 weeks ago)
68259d951f1a =E2=80=94 objtool: Assume only ELF functions do sibling calls =
(3 weeks ago)
0d6c8816cf91 =E2=80=94 x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftra=
ce_stub (3 weeks ago)
24d6ce8cd8f6 =E2=80=94 objtool: Support retpoline jump detection for vmlinu=
x.o (3 weeks ago)
8145ea268f16 =E2=80=94 objtool: Fix ".cold" section suffix check for newer =
versions of GCC (3 weeks ago)
b3dfca472514 =E2=80=94 objtool: Fix retpoline detection in asm code (3 week=
s ago)
b82402fa5211 =E2=80=94 objtool: Fix error handling for STD/CLD warnings (3 =
weeks ago)
1f02defb4b79 =E2=80=94 objtool: Fix seg fault in BT_FUNC() with fake jump (=
3 weeks ago)
2c85ebc57b3e =E2=80=94 Linux 5.10 (4 weeks ago)

--=20
Josh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210109160709.kqqpf64klflajarl%40treble.

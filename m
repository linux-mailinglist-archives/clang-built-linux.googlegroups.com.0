Return-Path: <clang-built-linux+bncBD63HSEZTUIBBOMJ4D6AKGQEVJFLVRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBC129AA9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:30:03 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t9sf590421oon.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 04:30:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603798202; cv=pass;
        d=google.com; s=arc-20160816;
        b=LocuP+mULKchgUrKFIVJYFs1p05TGoy0egztiFSblZQwTxkzqMUZdlgkOJIPJzgwYV
         RW9sgJIknRUMhifTCjunsmMqHhS4mf6mboNhZ1EmHkAqRVbQEwj+fO0/tPQnoOarH6bJ
         /5uEG8DgOj4COWr0u5nL4cqJvW4fDOidvqfu8zN8RjkemLDe5NixsbIrVZhmLj8hA7K7
         gdC3IKvFxXE6kue4cujjrUicwkSE2LX+MRpvxv3Vo9e6lpUs6VIbE/60Cqid3eLCOLPv
         lUv3Rd+L+swQlm2wklEBJw/pZfXcLsPgSsQCA76F35nv3p8NUb1vxK23qvATqInyIS2j
         Z8ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=y9Q436jg3svZEBJaS1TKKGcjVuLDtCs19I1ckIm0+8o=;
        b=TEsdA95LZdtxrgTsLUtSWywgPb0pxsMme+Hpf36ljUZd1TguPm+SLezCp5T2ggrAOT
         CTe95njh28VTzaHeFyBBIpbavbyB7RhM2EuAKg7TrMjrLYXqqI7vzQSItur2nBr9ekGL
         n9fF6CjIyUrFJzKe9zGC0SAObNiLMko8+MNqWKqNBbb59t0Ko3gKxOMVKuSNlKMTS89h
         51aibT/H5w54HNCV5iS56+oq9XiWzY2mJzyL/986Dyc5iCP5SmRUjLuBmH/QjvinvUTd
         /OSqfEobxj3h5Wrw0jWsJNJygOnWbig/0p3UfQ5Ul0LV/oNBSGhCiU9A/3ez38ayaYXX
         dIsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Go1yw0v4;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y9Q436jg3svZEBJaS1TKKGcjVuLDtCs19I1ckIm0+8o=;
        b=qtBoYFrwNwilMD8qnY7rUykOAmCWPRExuD2pyhK0Ad3gNpYg8dNg60hO+TECD9jn4q
         4o/e91b+WFdPpWwEtvaJLPuqp3NqRHazOm/vTXXHH6Tsw3s8WB+O0bUXB4zukVwAZJzB
         Tprn7+Xc1gewMcahK6gZXv11r4N5LFv4Zg8SEt4Zt12j0kXWHojnzrcNdaPwnZY4zEpy
         9cahULvqxXRUIkX6Rxs0PiBejYkp5YALdE3KuWS/seWHcODi2CSpCnFoTqNXmWo69arF
         3EdyCt2a87dHIXCWlaljuMdYcAgY7wgbOFxYPoy997hTIbwKWNtivsALuvBZhHw6bia2
         22vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y9Q436jg3svZEBJaS1TKKGcjVuLDtCs19I1ckIm0+8o=;
        b=IuunaS9ZliNA95AyBZp6KFgTu5NJ4DzwP9RYoYqTG4IyzgscWqSYEVgG9v9dJ3hxRT
         mMNJP2oDCUuV7i97MAseIBsH6rq8JyMH0rf3edxJuZg8QGiH6Sl0P1/ncOQYIJ7I694W
         070Mi6QD/IWjDrQBcpkDJgx/g3ke6Y7d4mGiunEPqGyi6ABUqw1m6iEtwFmENTPOKLKD
         /sCQpxjnMGDQ2y7s6bKfzFwgJnG32WKXujwFfxAcXlaa/czCd9kaJZsmlhwS5Xk+jeur
         VKMY+tZFiS+csKnB7zH31FaUUaRSeOtyJZOl10hMZN9gXCIlgswUBSq7oTWWb7sQgsva
         14UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y8MZ4RGI51FhT5eF+UfNfSyrwfOBoWYJuJB5mWHwAMWTbAMUn
	tgZRiWDfQw3yNkIbszINvso=
X-Google-Smtp-Source: ABdhPJwmEEN4AbXQ0F6sm6idKQUGisW4qGe47W4/ysX3YYiFTqh+UdUXA9hIX+Is2G32kUc7VFgFrg==
X-Received: by 2002:aca:fd54:: with SMTP id b81mr1079815oii.52.1603798201842;
        Tue, 27 Oct 2020 04:30:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls260092otq.9.gmail; Tue, 27
 Oct 2020 04:30:01 -0700 (PDT)
X-Received: by 2002:a9d:7f90:: with SMTP id t16mr1169033otp.231.1603798201456;
        Tue, 27 Oct 2020 04:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603798201; cv=none;
        d=google.com; s=arc-20160816;
        b=yphsgZ3OfyH4Gl/RnfVaiy1UiMgA3DLdU53/kwzL/Wib03b2UuI24V7z4VuDBzeKMS
         DACp65GHE8aFwoNaspTUv/LjonTHPa/cxXuSiHtPUBWyuE3gA/wWFfgNnKosgBcrU5M+
         +5wO2oprMYNWxem5PePs2ZuGskQ+Yj3MqdnzdnlT5W/CFK4vUKyN7v58/FdQ7jlL7hoq
         6ip/n7B2G7pF1ErMaj4SUXS1La5aDdI1hRxH5qaVkD58I2F4jqG5NHvvYdxRI/boHNzw
         7dmZedbUIxegZldtPHIzELI1SJXGyfBXVbfSVuLIL/A8ryvcaK4SXcfNmCfKWSyqMIT6
         lZog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=btLnpkHf+lqD2YPLwPVwRwI9+/3aDZ18TECCV3YdDSU=;
        b=DuX2MARfVpT9l89wBiNy4skntUV+wWW549kyHq+CV8/PKGaBpuqoFdlVIPl32OrGir
         1s8hvJVgjYwyB5xbD7qXFAj7yb7KJ5Pw7R/lOgZiuqYboHqsH/tZbn0m2WTgK4egaU9N
         MYOHjjp509ExkjlsnBcvz+W9kjXRvvPsVIcoQJcWpUXB2BBGnzGplpzBve8WkFWFScoz
         lJ2951DCEbt224I7OkqnxXajkuG/75C3pz/tDFiWSDAVo+ruI3kgMpJs7RF0iMg3Gp7v
         8ll6kOh/1Nr7jvqE7hXAWDqNBIICEt8OU9U4JcXkT5IYiAt9SbJdYK+FWn3SMVtppIH0
         v6NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Go1yw0v4;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d22si112846ooj.1.2020.10.27.04.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 04:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 59B63222EA
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 11:30:00 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id m22so803835ots.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 04:30:00 -0700 (PDT)
X-Received: by 2002:a05:6830:4028:: with SMTP id i8mr1085883ots.90.1603798199464;
 Tue, 27 Oct 2020 04:29:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <20201027100844.GA1514990@myrica> <CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg@mail.gmail.com>
In-Reply-To: <CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 27 Oct 2020 12:29:48 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
Message-ID: <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Borislav Petkov <bp@suse.de>, 
	Peter Collingbourne <pcc@google.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Go1yw0v4;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 27 Oct 2020 at 11:20, Geert Uytterhoeven <geert@linux-m68k.org> wro=
te:
>
> Hi Jean-Philippe,
>
> On Tue, Oct 27, 2020 at 11:09 AM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> > On Mon, Oct 26, 2020 at 06:38:46PM +0100, Ard Biesheuvel wrote:
> > > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkage=
s detected!
> > > > > >
> > > > > > The parent commit obviously doesn't show that (but probably sti=
ll has
> > > > > > the problem).
> > > >
> > > > Reverting both
> > > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > > seems to solve my problems, without any ill effects?
> > > >
> > >
> > > I cannot reproduce the issue here with my distro GCC+binutils (Debian=
 8.3.0)
> >
> > I have the same problem with one of my debug configs and Linux v5.10-rc=
1,
> > and can reproduce with the Debian 8.3.0 toolchain, by using the arm64
> > defconfig and disabling CONFIG_MODULES:
> >
> > ld -EL -maarch64elf --no-undefined -X -z norelro -shared -Bsymbolic -z =
notext --no-apply-dynamic-relocs --fix-cortex-a53-843419 --orphan-handling=
=3Dwarn --build-id=3Dsha1 --strip-debug -o .tmp_vmlinux.kallsyms1 -T ./arch=
/arm64/kernel/vmlinux.lds --whole-archive arch/arm64/kernel/head.o init/bui=
lt-in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a certs/built-=
in.a mm/built-in.a fs/built-in.a ipc/built-in.a security/built-in.a crypto/=
built-in.a block/built-in.a arch/arm64/lib/built-in.a lib/built-in.a driver=
s/built-in.a sound/built-in.a net/built-in.a virt/built-in.a --no-whole-arc=
hive --start-group arch/arm64/lib/lib.a lib/lib.a ./drivers/firmware/efi/li=
bstub/lib.a --end-group
> > ld: Unexpected GOT/PLT entries detected!
> > ld: Unexpected run-time procedure linkages detected!
> >
> > Adding -fno-pie to this command doesn't fix the problem.
> >
> > Note that when cross-building with a GCC 10.2 and binutils 2.35.1 I als=
o
> > get several "aarch64-linux-gnu-ld: warning: -z norelro ignored" in
> > addition to the error, but I don't get that warning with the 8.3.0
> > toolchain.
>
> Thanks, my config (renesas_defconfig) also had CONFIG_MODULES disabled.
> Enabling that fixes the link error due to unexpected entries, but the
> .eh_frame orphan section warning is still there.
>

Looks like this is caused by the VFIO driver doing nasty things with
symbol_get(), resulting in weak symbol references being emitted. Since
taking the address of a weak symbol can yield NULL, the only way for
the linker to accommodate this is to use GOT indirection for the
direct symbol reference, so that the GOT entry can be set to NULL if
the reference is not satisfied at link time.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ%40mai=
l.gmail.com.

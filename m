Return-Path: <clang-built-linux+bncBCQJP74GSUDRB2XI376AKGQEIREX6AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7FC29A95E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 11:20:29 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id n7sf426520qta.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 03:20:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603794028; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXm/iIOCUZfAtJwcneFzgWNv4OIwGkAPOjya73TLGzpAJYnwydN902SNMre/W0Jtyf
         VQTHwJr/thvCG7Thdr2s/YtGEX7LIywNA2ck9TvuwoMsUtHnNTLb4a2FGLAt4rd5YqDG
         MYNrZCL1oS1XxxdZjoZuPkDwkwv3+xU7Gkxi8U4NntxPZIa5HKgyL6BckICGEgj1JDhy
         H94mrTyyrlQB45HFPVHoPpHU0OBSrWwISMNPxA3R9C9VK7LwVk6fGx4ekWH3czsSv78c
         VSD4JkjfxJkdj8tm4Q8ohhVyTP1UY0voE1Nm9WGN/I34y5fxa5iocqXw1xrCpctA6xuk
         7Jwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=O79s7hAO5XDibdbIfHJrIUs8lQjlF9GjVIcjkk93Yys=;
        b=ToGdFQ3/l4oQjhf4TeLUtDkvxHQIojOvGscLfowrRFISesVG0gyI+ya29j0oSokSAb
         vGcqqgPddxHOEDRbmMhiDfZbU9kpgUi5f3fbyHTkI0zU132KsNMShGKlM0K5mH4g1zQr
         4u4JUEEtEcdPcjRqZ3LdbZh+6L/by55ByymqIRUd/IEmfdl/OhwmVqBzNhfI6kZNbRXQ
         I2GiKfjVWsU5XYGUrOIkqIwa2MRVfFx/U28CWqT6+Hw9kyzFVFAlYF6OGplHmQteEaRQ
         K9nLhbAvdvNVwCzTbB+Wl2CKSkigYutJHW6thtNImiuqKP2kQBr732fmdNwRVc/WNf7L
         YZZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O79s7hAO5XDibdbIfHJrIUs8lQjlF9GjVIcjkk93Yys=;
        b=HUgPJaR0bkR+Rod0+vxz9Zp/Xu0HAfHaUSEcWkUq6kJFnwylKzeG5wBRM+UbyWz4NL
         S131pMsjGECHkjU2FlZZAKs/2q5lWVSECFcHAIYNtgS2gzm3HLg5hsaA6U0f+q09Wrdo
         NbZxQ6X9vme6ct0NvV/DHZa5kHkAR9ZGFkzwiJrGHedmCz79d0hYsDhyIJAQHHjqwYf0
         uUNR0Bp1j5ebpkLaAzXwacuSAUPaDyZp2xoszh6Ro6L/sznuxgqG4QkOsbY24uLa9pTW
         Bt/nGMs7/P8wYoEaCreTwnJBXXzixTR6wC7ihxkTE60zacatVWXB0/5PktNrP19J644z
         FhBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O79s7hAO5XDibdbIfHJrIUs8lQjlF9GjVIcjkk93Yys=;
        b=qf1Vw6ZbUnFiLTcjQCOLiUK28H4yeKy8HI0LpCTlomLJ8CB9Fccl/0/cS4WW5K4no/
         XCbD9K7a/xvOGbnQ5yXl7g3Mg5fBiYAxw4FxNHv3TTpUdiYmXDRYYahsnCpxb4oyGsqj
         0sPIt015uaP9SghHFp9BQOsxWLrPm+NYYNqcDYC3cr1qUepHhv9fEQZADE0dmE76f+Sj
         cL7rAZszE64R3KCUhM46ln273v7OqHB6x2I1mcM/9s6h7nkNDyVh7g9aoanri5Fmz9vS
         ZhhcSrATcZ0zPqnClV4gWv/Ol+B1818uI9kt2C6bcozcEEqhIAnMTpg53sndjPi7w4Qr
         Kamg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326OSjh6pTmw1fP4/HmoyNifaWEalyWZR0O71CoeaJvIJlEEFKW
	CXSvtr6yxD6tGIer/BqKDG0=
X-Google-Smtp-Source: ABdhPJxg0ct6k0qesvUs2y7OsD4RyXf4Pdhy9883BfH7jRIvWsnfGtTMFTmT2SQNdUFH8PR+h62NZQ==
X-Received: by 2002:a05:6214:17cd:: with SMTP id cu13mr1636217qvb.62.1603794027094;
        Tue, 27 Oct 2020 03:20:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5845:: with SMTP id h5ls341305qth.0.gmail; Tue, 27 Oct
 2020 03:20:26 -0700 (PDT)
X-Received: by 2002:aed:3c78:: with SMTP id u53mr1363520qte.364.1603794026566;
        Tue, 27 Oct 2020 03:20:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603794026; cv=none;
        d=google.com; s=arc-20160816;
        b=lDu6+3+Q9b7KIMtc+/T8wAV8hbNnF7ja2g90Pewtr9L7FmhLB/qnbQpoCj8PRf9OE+
         F1lthGip/Mz3H+cFrPTMxmCOlV0/MrHdHzGjDW9Ze5o98+M8WjH3gesxNmTqKspQuQQe
         pjLOgfxkuwwnh2p3rPu+sPwnN6AG6zPTcslqNLvEJ8f2/+Z/umETNlJf/VIqnug4eXiD
         dwHMZDWBZj1iPdDAbG6TTErItuBsUb9hTK8bk3EYfujzAB28nh46gHQDYkGgCs+J+ymJ
         oHOIBQQHI1/6zRCRvRGheKzm4PeK20BKCpimngE84uh2OAmtJTyaVlyr8u4kP+CCdOnh
         0vCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=k0U7EsdK27CwbcUqJCGedR1nNrqKkk5RW5FI4v5npXo=;
        b=YGRzX3nQS42edbsJXFYIGaSaHhDiVaRRcM1yPPolQUB2sC0RF8G7n5C6JyLG6nJeFp
         r9vAQSMxt4v9PTQVT3BhE+fTlaBQolZSc8XCOIP4wby9XJsi+zowBd9Wh5tIZPwn8H+n
         2ZJzt/lmYc3PK0EmzRV9g5TRWcRsTv6CbOcXQvFO+f9P79syx4CVX228rmNgGOz8gAVf
         D83U9Nh4f2StIxlsxBHm9Dv5wlzUktAeuIfgi6sGzlq0xMDOm2KfC3l6EGnkkawKma7a
         uktlK9nvyRU/8DgENj4NK3uchsCkriloXnwj22l3wVzHCWnAhrTR8Z1B1+ROMHAU3+UQ
         1TGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com. [209.85.167.195])
        by gmr-mx.google.com with ESMTPS id x21si69909qtx.1.2020.10.27.03.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) client-ip=209.85.167.195;
Received: by mail-oi1-f195.google.com with SMTP id c72so726339oig.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 03:20:26 -0700 (PDT)
X-Received: by 2002:aca:f40c:: with SMTP id s12mr858558oih.153.1603794026088;
 Tue, 27 Oct 2020 03:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com> <20201027100844.GA1514990@myrica>
In-Reply-To: <20201027100844.GA1514990@myrica>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Oct 2020 11:20:14 +0100
Message-ID: <CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
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
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Jean-Philippe,

On Tue, Oct 27, 2020 at 11:09 AM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:
> On Mon, Oct 26, 2020 at 06:38:46PM +0100, Ard Biesheuvel wrote:
> > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > >
> > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages =
detected!
> > > > >
> > > > > The parent commit obviously doesn't show that (but probably still=
 has
> > > > > the problem).
> > >
> > > Reverting both
> > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > seems to solve my problems, without any ill effects?
> > >
> >
> > I cannot reproduce the issue here with my distro GCC+binutils (Debian 8=
.3.0)
>
> I have the same problem with one of my debug configs and Linux v5.10-rc1,
> and can reproduce with the Debian 8.3.0 toolchain, by using the arm64
> defconfig and disabling CONFIG_MODULES:
>
> ld -EL -maarch64elf --no-undefined -X -z norelro -shared -Bsymbolic -z no=
text --no-apply-dynamic-relocs --fix-cortex-a53-843419 --orphan-handling=3D=
warn --build-id=3Dsha1 --strip-debug -o .tmp_vmlinux.kallsyms1 -T ./arch/ar=
m64/kernel/vmlinux.lds --whole-archive arch/arm64/kernel/head.o init/built-=
in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a certs/built-in.=
a mm/built-in.a fs/built-in.a ipc/built-in.a security/built-in.a crypto/bui=
lt-in.a block/built-in.a arch/arm64/lib/built-in.a lib/built-in.a drivers/b=
uilt-in.a sound/built-in.a net/built-in.a virt/built-in.a --no-whole-archiv=
e --start-group arch/arm64/lib/lib.a lib/lib.a ./drivers/firmware/efi/libst=
ub/lib.a --end-group
> ld: Unexpected GOT/PLT entries detected!
> ld: Unexpected run-time procedure linkages detected!
>
> Adding -fno-pie to this command doesn't fix the problem.
>
> Note that when cross-building with a GCC 10.2 and binutils 2.35.1 I also
> get several "aarch64-linux-gnu-ld: warning: -z norelro ignored" in
> addition to the error, but I don't get that warning with the 8.3.0
> toolchain.

Thanks, my config (renesas_defconfig) also had CONFIG_MODULES disabled.
Enabling that fixes the link error due to unexpected entries, but the
.eh_frame orphan section warning is still there.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg%40mai=
l.gmail.com.

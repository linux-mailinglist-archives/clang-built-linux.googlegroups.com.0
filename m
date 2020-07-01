Return-Path: <clang-built-linux+bncBD63HSEZTUIBB5PB6D3QKGQEHQU6KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B381D210413
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 08:45:10 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id b7sf8028901oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:45:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593585909; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+X7L1d1USHBhFcOh2XuWmW/nsd79WXjtwT9sgBEyoXJt0DWDg9eh9pItwgmUf8k33
         E7pe90fTnaYbDU47MrDoSHOUUi5gbQWDZO1xCmi2gD8E/QCfiTSt5arHBgC/iNtub/x/
         W9ET3awGD87zyF+69B8SCWAX2UUNaS8/VGsUy0G2fw+yI8DHEMfh08+xs2dvm57+fuyK
         El7js1cv94Z3CY4VF25s+/Tl4jo1B41W0VX87imTgJEW6V3djnxIewcm1HemtzOHICij
         4txiq1G+ipeGn4u1j8XoOZITXXKssPQcwkNlI8tyZTQl7PQhnv7q4SPmzwIvKcIjQ064
         OJ5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BLOA7uPC912JO8fWJzcK7LOmfz8KhpCd8hpLaDJITnQ=;
        b=cK0vTXDmIR/kSfxKHdmSpwingFbD1EIWWlAdJTQV1d/gxwDBYGB0BEj9v2FsS+ypfM
         PjaYPuPG6RJCZZoHZCg0bUwjjuW2SZWxVlu1rj7VFzK2TiTDIcvpnoCAaoqgfD9uD4yf
         YV2OidMV4wLluafp7VitWeOCqN2Uj+lckT+/7lNnyBX84bdl+aFEcPMRig8jM7d4AXOo
         6jTlXvDwC/VOIDwej//doGm9gJ7IQUS3YNRtK9asSAv+Q3mGeoUmHOu90kNLtfol6bJG
         unW6VzWsU00/xJJzD7KY58cCBdNS+4+m8JsCJDktfd0XuNwR6GdpgbwMuFTkQi58CWqo
         z/dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OQzC8wBF;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BLOA7uPC912JO8fWJzcK7LOmfz8KhpCd8hpLaDJITnQ=;
        b=Wo12nyDkOFsr6ProVkaWyyOd0iIqsNbA2f0+IBDZNqFbIB/jGHiYFlvOc0+VFnyZMi
         1OmU5tM5J5S7OehA5S6sDFq5AjUx7CfR8eYh7jzahrvuti+UpB5433WrLER1rzOKIFPu
         WTWW2c+eIj9CnVahppjwd+9SVR5+k+J+7YqT9zGaJnCMkU2gYU/3xGSu7t3J3sJf2joA
         J6H2HNtgfjuK8fvCpQzUbPIaB2yvCJDM/bFBKbtA5CrORPXhX8D5jX3U6ASE+i5u5rLR
         mO+IAiQZKxtlbIsC8jhp8nRjdy01YxV2DAiiLDW7KYZqFEn0U0rQdpiqgiQyZ4ZhOaQb
         lIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BLOA7uPC912JO8fWJzcK7LOmfz8KhpCd8hpLaDJITnQ=;
        b=h6L5OBj1kxkFde9hCBd/qwUukdI3/mtoM2B9Bn7QmJq8JVjW76ovaRIoDDkpTRRuLZ
         j5VfeUYW58vKqOHQXEJAnpHuEdOBWLWsapv02IyI8+FToXe4GoVlJnqKruNW/2fMos9e
         krki0UcNxoG34+kIaewKrgMyXWr7rVSEsC469vC3OlVrPLgNJTFD1DYUuQvkg3RoUUs8
         zN4v0Ij9+Vz7P+8lGcpUw1qQf+ujgGi+HYDkQAEarfynA17XPXuv+Izmus87uaUh7ZU+
         Oaxfrtvd9fgZu3A2A2LAo4okY5rfPpW+/flQyoH+SPk6QcZ0lrgrDSD1sOeL2Jmiw13h
         gJnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FNsPjxxttlZRqWs7Ze1PARaimmIgfEVs3EmINnxDXGuC/CShq
	gztv1iCFkdfjhz4v0F9me+Q=
X-Google-Smtp-Source: ABdhPJxpv/arIqY0LVJILjSkEwRLKW2gSVAARl0aOdoV9ifYu+6egxF2kdjlA9kB6nVl0FqbJUOKsw==
X-Received: by 2002:aca:5715:: with SMTP id l21mr18526713oib.125.1593585909500;
        Tue, 30 Jun 2020 23:45:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a11:: with SMTP id g17ls289639otn.9.gmail; Tue, 30 Jun
 2020 23:45:09 -0700 (PDT)
X-Received: by 2002:a9d:24e5:: with SMTP id z92mr22742499ota.255.1593585909159;
        Tue, 30 Jun 2020 23:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593585909; cv=none;
        d=google.com; s=arc-20160816;
        b=VMd6HBjnp1NPIODOV5UG7TzruPkHIeQtkkQlACfdSwzTOLShXsHnlXBDMTQX0rf2WQ
         +7PahoiQAd8YXOuM0sPYO1MUKPR//31QRaKzml9t4Mt9ir/6eC4ZBxOdx3g4RFQtmMcv
         VjEPN4IhuYRF+LjWRR76i0ADVnitDaArbVng2PZNdon/d/8FTHn6Q+qsxg4CBB62iV4V
         3Mm/mY1AONGD8/NMJtaNKwoRiICXH5O8jJZ6DjhC+Ij0k+xBh9xKywCigo0a3ykwBffY
         RtrJsF5pYPpmI35U6jU3vGgp58ByFfY4R7PerCVAfsbMgTJaLGBbQC9ghopT6TlBQiae
         qjlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7OyhlCt7DFGPniZfR2OYLUhpY0wpUh52ORLCCL8ic/8=;
        b=emTeUSVdOBOXNC2l7A87pPingO0cQTqZWeNngT7bfpdGNF7RsamF4jvHfXcX7KL3mz
         8cweVkC8l1xlARq3O7L8T7LqvLabvFE04QS9TRb8SBDIMrmos3j1Azb+52HUTiQPZYkG
         0zeZFaX4hneyTZglNB+N91wY/A45ZMLAI9n+RDyD3dEpAaVETNEPGx7nbBBUxfn7fZH8
         4rAORx8Jynw7RRaFjxfYWmfDzs12J4GeV9P2Hx7MnpKRqZzslxtdwliD3KRReyGoi/7K
         wxZt71fucTrI3avEGBnAnP82UJ0H/5esXCTNquxSoh0Jn0jpQoWM6ST153IQrTvOTBlN
         gx1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OQzC8wBF;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si225911oor.1.2020.06.30.23.45.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 23:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2AC43207E8
	for <clang-built-linux@googlegroups.com>; Wed,  1 Jul 2020 06:45:08 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id n5so20648116otj.1
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 23:45:08 -0700 (PDT)
X-Received: by 2002:a9d:4a8f:: with SMTP id i15mr22646743otf.77.1593585907399;
 Tue, 30 Jun 2020 23:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <202006290907.E5EF18A@keescook> <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook> <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com> <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com> <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
 <20200630175408.GA2301688@rani.riverdale.lan> <20200630220043.4snabunhgvfdktte@google.com>
 <20200630232759.GA2641539@rani.riverdale.lan>
In-Reply-To: <20200630232759.GA2641539@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 1 Jul 2020 08:44:56 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHVJ0eDHcod633P_nt0HbTayBkxwx8LQAV0k9t9oEFZSA@mail.gmail.com>
Message-ID: <CAMj1kXHVJ0eDHcod633P_nt0HbTayBkxwx8LQAV0k9t9oEFZSA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime relocations
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OQzC8wBF;       spf=pass
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

On Wed, 1 Jul 2020 at 01:28, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jun 30, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
> > * Ard Biesheuvel
> > > On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
> >
> > If the executable is purely static, it does not need to have PLT. All
> > calls to a PLT can be redirected to the function itself.  Some range
> > extension thunks (other terms: stub groups, veneers, etc) may still be
> > needed if the distance is too large.
> >
> > There are cases where a GOT cannot be avoided, e.g.
> >
> > extern char foo[] __attribute__((weak, visibility("hidden")));
> > char *fun() { return foo; }
> >
> > If foo is a SHN_ABS, `movq foo@GOTPCREL(%rip), %rax` can't be optimized
> > by GOTPCRELX (https://sourceware.org/bugzilla/show_bug.cgi?id=25749 binutils>=2.35 will be good)
> > Many other architectures don't even have a GOT optimization.
>
> Urk -- the example given in that bug report isn't even weak. Are you
> guys proposing to pessimize every access to a global symbol, regardless
> of visibility, by going through the GOT on the off chance that somebody
> might define one of them as SHN_ABS? Can we at least gate it behind
> something like __attribute__((might_be_shn_abs))?
>

SHN_ABS is typically only used for constants emitted by the linker
script, so I don't think this is a huge deal.

The example above is not that different from having a statically
initialized function pointer in your object (which might be NULL), and
that is something we already have to deal with anyway.

What I was talking about is the tendency of the compiler to assume
that every function symbol with external linkage is preemptible, and
the only way to suppress this behavior is to issue a #pragma that can
be done in code only, not on the compiler command line.

> >
> > >I don't think it's really relevant for the kernel build -- all we get is
> > >ld -static --no-dynamic-linker, all -static does is prevent searching
> > >shared libraries, and we already pass --no-dynamic-linker if it's
> > >supported.
> > >
> > >[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81498

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHVJ0eDHcod633P_nt0HbTayBkxwx8LQAV0k9t9oEFZSA%40mail.gmail.com.

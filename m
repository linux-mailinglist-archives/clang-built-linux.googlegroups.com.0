Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZPZ2L2AKGQEBYCDP2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF9F1A6C70
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:26:30 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id v17sf4461931uao.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:26:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586805989; cv=pass;
        d=google.com; s=arc-20160816;
        b=DEqbbwOMu+QKr+loETeeFP/r6Pr8i5hTryOGsjLv0CRswFK4LAOMOiDmoPWrmjveqc
         VYidXbFggDz0oqvVp+KAhE09WnAimHdQfhVe3tERkaAfKUzod8qh5cyMMhIUkdi+9eiR
         +XDJGyCSl1vdHHo5sJ25ZrzWRK4K+BTu1lG1yHc0giLluLJ5chJl3uGbFHZuhCFJSZY7
         peKXmFyBnVNFtKTs43L60sgli7/IQfhBuFVD6SK0gH4+wTJDkiSvITY+edRMRWmeQWDq
         G1V76J85EsBI5qy3Fl+pMK4+von1UVUVyWjF4LCYVTlWyVcCloBpfYowQi50IG7hcAJq
         KRoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jey8UpBPoh+xkPs8KUBAsAMjfCI3YyJWWluKPWKZNB8=;
        b=ztcy7mkQ0CEEb7f7HJPq7dHB6yFVDRps/SZ5ISkKid+EtOrK22S0WCR3CsnP77GYfu
         RUn1x9hqrRJs/2jOz65P4Uku3qQ8zH73gtQivOmnG0TUElqlvvhRjIEY6IHubQETb0MD
         mbTV0gEQK8IXf+20781Q6XFOozyzVcNfVukILwBTckDiOkkasLH6VsyZ0Mzbbw87bflN
         OVfX9MFiHkigTApFXC5NGNKKqMGurtRow4573beq3rfWTiRckLF4XwN84rZp6BNnBqTb
         Kf6hkh6YGhsRYW36Wtn7bqWpb4A6tRJxBEIavi6FtoCuyYsOJRRyz5TC/fC8/VcNb/kC
         KdzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pCeStENd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jey8UpBPoh+xkPs8KUBAsAMjfCI3YyJWWluKPWKZNB8=;
        b=WwIwzH/f3G3kfajfm6rRJPUKGMIpa9nsLSmWoAhW99fMRWAVX2BSO6uCRCRnzbczuw
         lhgPHBmjzNQKxN7dLIIzMx3UUDLuvObv7iWbnI+hpBuJXFZcfilAYfDoXdf/Wgd8XpcQ
         lzTFHdxXhDLiuauVnsHBsC4rLghJvVJbLu4x9SEynA5BUYTjsbQjU2tR0J8xq81w2YlW
         lB1gHfjCFMTmFMWa+ZQ2olN39Tfct27EK+ZWbmovSR6lOB3MuT1YnXHel3vhkUtXBbKM
         YFM5KJX9M3p2Sgbc7hkhK3xXh/WQNdc0iqsLmdBghjV8SEFj8myGKG/UYVHzKJSwQozX
         tiOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jey8UpBPoh+xkPs8KUBAsAMjfCI3YyJWWluKPWKZNB8=;
        b=hZvyOASrammtbchaWoXvwR6MwaR9JUz84qbWYWrdnwtI2Czw/qc9pgkOXi0e5WIx0K
         s9wUyasIjY9eNE0bax6P7i8yjI9XYRkUFRiavZ4L1pP46k1t3Y5uUbaVbSVHy2dQ4h02
         /JpDyez5OWDH3uB+Gq3mzLZANZvkS8W0v4q7BzHA0uXzXqDcNocp9q3byG2CdH1rNmQr
         +1GRo0pTrlQxo8iBgPOP1YoCJWl2Ng7CSAXMWGLzBGeDPQ8si+CKjvZatrilNXb/zfdn
         YVG6iY074eXK9wJmCMaq4NrUXwZNPzFlvGlTI8l1rYCHUbMHdj760fFM7aDiMKnsx996
         f3nQ==
X-Gm-Message-State: AGi0PuaZTv9Ydnf/z6/1VuDZPjmQ/3td+4EUZVpucZlQ6lNytXqeqOmk
	Ap0M93gDJPOOJTmm2MXXbGg=
X-Google-Smtp-Source: APiQypIs9xJse6xFzt7wpbEhlYENbH6f0X3KpSiKzl+pJ8uX2BIYZ483MsWQFiofTGdS0dHaIwwmyQ==
X-Received: by 2002:a67:f617:: with SMTP id k23mr1263240vso.44.1586805989646;
        Mon, 13 Apr 2020 12:26:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:24c2:: with SMTP id k185ls50623vkk.1.gmail; Mon, 13 Apr
 2020 12:26:29 -0700 (PDT)
X-Received: by 2002:a1f:ec84:: with SMTP id k126mr12628567vkh.94.1586805989325;
        Mon, 13 Apr 2020 12:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586805989; cv=none;
        d=google.com; s=arc-20160816;
        b=YSXT3Vs348QONUxnPGnp54j7ZhNXCP3o1zRtDB6ik7EcU/jUI+co5mvF7bKScTb8ND
         AxTtch/YKulJg0X71SjuItWgIdXydMKHq23U1j3QfzHjVe/c573BQMKDcGK9MV51Ziat
         q0FQrjgMVNVW9UNzG1XKqeoARrwIWs758DpXOD+e3DSbBUp3x5gqIlyRy5ubp3Beq3/0
         q0Voyhuh7259RcQXd0yVeFhtUUJFDfkXhUPKOAwk7UuBl2DMPkvk3Tk1cxzqZN7c+kYM
         wnB4bF+pIGIpDPBOTxuvhl5Oin8MTARGrUqeUSe+GpWLZJOktl4cjmv3HpRLPL14M/7Q
         1o0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KdK0zPwtveoXwIU/pJ0It4FhLQkN9xabxjzAbXM7HUg=;
        b=SdyQM02PGUiRWqtKc4DhgjtAZUlVK8If4Ev2MxOBbObBnVblOyikLk9XcrDYqKk7c5
         YSoCXhVXUSD2I3B0MozUl4tFshMZbhjroKoVec7CXs4SGOfmIqvhz7Kujv6CGYnMxpCZ
         9bjeS7TJ47kdbd5r5Ny1Dv0CNaJDqQHa0JcQHQLNJQhmfHMlbArAsq9RahSiIuCbWBk3
         EiawAaa1uLx8Za4LzV/uhYanAmzNrWUGbOJo1OU+J65G8A6B8QrZnk720FoqeANHpfqW
         nsyLdQ7iKBMYjXMtm3yit3f2C4VTzBGbHuZ45yYKmFrWUXXgC/lz+PPC0OhGyrUL0jvD
         GqWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pCeStENd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p16si259727vsn.0.2020.04.13.12.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id k191so4890226pgc.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:26:29 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr6229011pgb.10.1586805988175;
 Mon, 13 Apr 2020 12:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20200410165948.GD448831@lunn.ch>
 <20200410183420.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200410183420.GE25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 12:26:16 -0700
Message-ID: <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Jian Cai <caij2003@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, Jian Cai <jiancai@google.com>, 
	Doug Anderson <armlinux@m.disordat.com>, Dan Williams <dan.j.williams@intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pCeStENd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Apr 10, 2020 at 11:34 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> > On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > > iwmmxt.S contains XScale instructions
> >
> > Dumb question....
> >
> > Are these Xscale instructions? My understanding is that they are an
> > instruction set of their own, implementing something similar to IA-32
> > MMX.
> >
> > Would it be more accurate to say CLANG does not support the iwmmxt
> > instruction set?
>
> Yes, because the XScale core on its own (otherwise known as 80200)
> doesn't support iWMMXT.
>
> It's worth pointing out that the iWMMXT instruction set uses the
> co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
> which is also the FPA (floating point accelerator) instruction
> space - which is the FP instruction set prior to VFP.

Reusing instruction encoding space? :-X  I'll have to look and see how
we define cases like this in LLVM.

>
> The LDFP and similar instructions that binutils decodes the opcodes
> as are FPA instructions, and the LDC2 instructions are their "generic
> co-processor" versions where there's no FPA instruction that matches
> the op-code.
>
> I'll also point out that the reason the iWMMXT code has never been
> ported to Thumb2 is because there are no equivalents for the
> co-processor instructions in the Thumb2 instruction set defined in
> ARMv5.  Hence why the file has a .arm.  So, the fact the file hasn't
> changed for a long time and hasn't been updated with "improvements"
> such as Thumb2 kernels is because that's completely irrelevent to
> the ISA.
>
> It is an example of code that has become stable and mature, and
> requires no maintanence with GNU toolchains.

I agree.  I think this is something we can mark broken for our
toolchain in Kconfig for the time being, and revisit once we have more
resources to implement (leaving the sources as is).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSusRJxzKqq%3DtBGgjq0tdcgeA1ukK79PyMjadWB8w%3DQw%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINFRT6QKGQEGDO7XYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680F2A6F1C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 21:44:18 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id l189sf17139oia.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 12:44:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604522657; cv=pass;
        d=google.com; s=arc-20160816;
        b=tmK6C3E4M8aiWBLi2ZZRdzO6D8RhO0zDjUSTrn6OcAFa3hed0ys7088NHRSZ1Tzpr5
         esxRcOusuS02vIm6Eqf+2GBKlj3Q0Y1M88oeZDt0KvVroByhK6y1m675EeawoQO91nL1
         3vMkD6RubmiMrTfWbl0wOgWgAaOytHmebjwrfki0JNTqVq3u71eMo63hDSB8AuF+BQTk
         pvJXEDA2enOmwtYweYe++D9CgQI8N3W+UG5stqCQSGNwa9Xr7OV+4ghd+Iw44GoIIUO/
         I1vry1vKHUUqtwUFNe84e7lsPPc8oyQBfMXj8EghKj8qThiDrV58X3aZqFw/aEEW1T+6
         rPUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nLcmOD1PkY0uGYu85LMfaPpiDugutpwFl7WcRSzAKo0=;
        b=BVSKj0XmD3C0pXDGiswucgTA0GIrjiJd4PyCx0GewWlPOrgV3QS1YOoXrlyOUWsx8q
         iPS21A96/qNrYtJaaVYGkutGAG9yTl39G99aZaqzi3RB6lCYf0DGA9aoyB8B4IEqcHbO
         ghPQLOGnnMAVKsTFhx99C726ryr4260cYOZw6mMElVmC+tR/zgSZV3xO2D/pd8WZNk74
         Cvx5RX1ebPfyVC3w79E3cejlhTeiR/4rWWHXFsct/Ii7i0uY7R7cM1oKt4JQcD6AJtmD
         ODebD+jJdyl4bklLlumt9HnQ0WhLMgncGgSQcbmlGE/7l5MzCLsKysN/LwqzHAU0aT2F
         6mlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J64alzyz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLcmOD1PkY0uGYu85LMfaPpiDugutpwFl7WcRSzAKo0=;
        b=tJKcpHPIsgVojdWiyoOmBzJMto4pToaaQ+8g02y4WNEEpj3Wwvk6KMEaeUbLr9aODk
         rbUsKA8Ba82ApcYJj+g/Ijz7waRET8Y/um/PtmEkihzAe7ARqldp8v0dHksSHwvsiwlC
         btVe8dnZ5F0vEPMrjULPgZ2jetIv8KInuqReduvIQtsZEt4JQ3ntYG7lFR+ZMKOs4Xsa
         URdoo2E517lSnaX3/E0Wg8icH5nQ4kTRoWutMZ4EnVWnLWAX2bLUruMjfZdtQ/AbjTLB
         IxVTMGaneTOAAS3Yb1I/chFBsBGJVtSCYd0FjSJj3vvEy9euC1F0KNHi7d+gPPsjTy2X
         0MpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLcmOD1PkY0uGYu85LMfaPpiDugutpwFl7WcRSzAKo0=;
        b=VTeOyi+XBoGI2pjII29DsXlk2j8wsCvUgpKkHXDKz1bA06Eeijutuuqme8p+MnqPvz
         6loy3GZBFOKdF7vIU8XMRhvjyKV0ULqx+gsNkwG+wjtgNsl84JhUyU+3oXAGVAHoSI/S
         6fgGwZG27SdouruSbgCAQk/4p0c6G0p3rq1J9yE6cUNm4xEfQrEQTAxQD1kqA/uisyP4
         vtfTi9u7iA11Clk+q+QjJ+wdyZGRs6DP+RTQgCXp/ZVeqW3cg1LtYBpVS8uah+gwjvzR
         FGEEwz5Qj4Yt71XypmVBSnXmx8Aj92NG/ZdBOZW4WukShMc04Id1fF+q/2fwPTAopHzz
         Zrxw==
X-Gm-Message-State: AOAM530O9Baicph8l4Oyn+P66+7q8Egop1hgCT+miGLs7dUxVBaKc/dv
	qQgaPQ8H31AFXvB6eMBU5Ho=
X-Google-Smtp-Source: ABdhPJypiJC0wEH3s98mcr99wCacBqNYUAh5XmbwgMj+q/EFJ5JuFtHp05Al/rScH5tMxtY8tNxwvw==
X-Received: by 2002:aca:2810:: with SMTP id 16mr3887849oix.166.1604522657274;
        Wed, 04 Nov 2020 12:44:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4713:: with SMTP id u19ls907440oia.0.gmail; Wed, 04 Nov
 2020 12:44:16 -0800 (PST)
X-Received: by 2002:aca:fdd4:: with SMTP id b203mr3858879oii.152.1604522656891;
        Wed, 04 Nov 2020 12:44:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604522656; cv=none;
        d=google.com; s=arc-20160816;
        b=sJZxxFh0tBtY6qIEk2juBUTL9oK5rJ69NG9Td/9mgH/+ydCicbqJ1O+yng+FwfVlY/
         AFXZx0fgPus/8gD54jybWpu9JrTsyFKGlB742t3vbKtw4xUDihxyXz+O2yoGIHjQkHvg
         Gs82B0iKf/XxcRQaxgGN81duf7JQ0qYcNroEFEuuYKImkJPjcgPSSbfRv0UxR/7aigNR
         KmzEghxPBYTUwjODXqPC6GPdIYac8YxSEfl0RxXmpaK9hMU0V3OTD+T1b5QKJSBHFbzr
         mXI8+uA4eNSsJMQqozeqo+/iOXV2KdLH4zuSo9Qu5231iPoTc2ptUygqLrdTQBgpWmav
         eT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lhARirJve0xr71kjKUehqalK8pIZFFMyz5pxSgB5WdY=;
        b=FtzglJvqqVa8pLJwqZY5Z+Ht/kKM5jMErV9IBOBpRFQvkgxJEH0mpDSOD4qghKGEty
         AyKyp4vnLaMvFWUr3srlc7KaeMM4+L7aubt7KTGLo+/ZMjJkbF+keatKosXYEYGGQVga
         zhi85udwus5KvAZH9Gsc22GaBOEScXlJDhkXLRXMNKJkNnOIFpZ+R58Q4u2a8NEjlGt1
         itHWt953cRUmPe+ve2/CWrmQSW7sTnexngz5mz5TwTAmFyODfe86vEeba0PrIutIBDGW
         0x3Jk2jnVpkpZDceeKYw7lPZZ+nwWUXFgVc4fE3mwRVTo5rNa8PjmvZDgzGFOwDyu55m
         sG5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J64alzyz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id f17si302708oot.2.2020.11.04.12.44.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 12:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u2so4904980pls.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 12:44:16 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr3130038pll.56.1604522656305; Wed, 04
 Nov 2020 12:44:16 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
 <20200413210049.GQ25745@shell.armlinux.org.uk>
In-Reply-To: <20200413210049.GQ25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 12:44:04 -0800
Message-ID: <CAKwvOd=6chv+goJ1-8RhcMmUPSU4OMwMWVmvkHO8yxgmHiLKyw@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Jian Cai <caij2003@gmail.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, Jian Cai <jiancai@google.com>, 
	Doug Anderson <armlinux@m.disordat.com>, Dan Williams <dan.j.williams@intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J64alzyz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Apr 13, 2020 at 2:01 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Apr 13, 2020 at 12:23:38PM -0700, Nick Desaulniers wrote:
> > On Fri, Apr 10, 2020 at 5:33 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > For older CPUs, it doesn't matter what the latest ARM ARM says, the
> > > appropriate version of the ARM ARM is the one relevant for the CPU
> > > architecture.  This is a mistake frequently made, and it's been pointed
> > > out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> > > keeping older revisions is necessary if you want to be interested in
> > > the older architectures.
> >
> > As if it never existed *waves hands*.  Interesting.  Does ARM still
> > distribute these older reference manuals? Do you keep copies of the
> > older revisions?
>
> I keep copies of every document I've needed that I'm allowed to keep
> as a general rule, including the early paper copies of the ARM
> architecture reference manual. I even have the original VLSI ARM2
> databook.
>
> For the ARMv5TE architecture, you're looking for DDI0100E which can be
> found via google.

Russell, Arnd found
http://read.pudn.com/downloads78/ebook/297953/WirlessMMX251669_devguide.pdf
"Intel Wireless MMX Technology - Developer Guide - August, 2002".

I thought you might be interested in fetching a copy for historical reference.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D6chv%2BgoJ1-8RhcMmUPSU4OMwMWVmvkHO8yxgmHiLKyw%40mail.gmail.com.

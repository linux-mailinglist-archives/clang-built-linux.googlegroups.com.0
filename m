Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOUG23ZAKGQE63KUBOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C9616F00C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:27:39 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id u184sf320657ywu.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 12:27:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582662459; cv=pass;
        d=google.com; s=arc-20160816;
        b=vuzs15Rr3zNjU5yS+jgwDkV2EB/khSCiTHUUt4D3PXc+MZUaEQwjG6Db6BlR/s0uQt
         4FvDq9TB9VXxz2mnbTYdo2eQzG37Yk66KXPXf2YjGAgtw6GD2dNfs2giyRL9hiv8vz55
         UMEWbkXd2L8NCGu77KaVeSYfijQ8/1R1KuZEIr8FZLaXtjHghfoXJbdqeyQFLiD512xq
         4f1Ufq+VKRYi0tZd36i6nwGOQ4eSVogCV6oFhCWWbCF1MgMTYzIRvWdERvdpUTMCE8lW
         a0LB1VL8rubsKlwtpoo6+Mr7xSDNCc9js5J4JQLY02+9a5XFc8C0egFttKxb7Qrk+USr
         06VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ATqG1+fYBYpluKba3rrt3E1/5c1lnWWeSNYeXbnl3L4=;
        b=fTRzjoqy78OMXzs1xb0bmJN96TeUG9VnEFljLWdGIkdFEO9mM+muTIGUDAJNthA546
         gM6QqWGrLbV1th01XAkY0NnCCEYDFGAEWfp0FXvSjpXltBIOydyG7b85iKdM73/kfa7B
         4f1HikKLbG0EWn9hKwsuxtz90G1VuBMLq/jvqigsp/icuG1BMXE8skbvbh87XRDXzATh
         x7vq7+WvQ3v8/8X+n7eemNi1aHBzEMAelOLJi8g5DBj9EE6Kf6ECYTNBKQmC4ks3tXlc
         MOCCPuitA1r6PWKp+uQhHKcHYdFF/9PPEOtNPQ7ix2bN4I22pHzBrAALCO/tfgX58DLZ
         oT+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oQT+43q3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ATqG1+fYBYpluKba3rrt3E1/5c1lnWWeSNYeXbnl3L4=;
        b=pdPBCQ9h+zHiO0iF5spfn2EHakVDVHgJaymau3fRo/jac8sWFHVZo/kt58fH1Ji5hf
         GRzR8Bn/u/6HUOj1RXiC3q/zHMUfaeP1oiOeOQXDv8o5uvb08ZV7C7dokUbZLBVQpsO+
         pUv+8drKYrhfF6CPc3jnR7sQWIWrumTSb+Mdmo1iv2/icrN4kBceE3OteC2P38m89smI
         MNnRV3lTo86OhmQJHZNbqQR2h0g7E496SApvHghJ2tdbFdp2P334Nq1W3F5fIGwXZfuv
         456jrTxh9vY9L8HFmpUzVv2oNblm4k27GBmpTp0efeVfXrfkuIJtIUx12vaCjDKHoio+
         LjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ATqG1+fYBYpluKba3rrt3E1/5c1lnWWeSNYeXbnl3L4=;
        b=eBWtG1BiL2PHoK3uSuoXEYRiNnIYaJxf3iTfAITMOe2rrFQdzMl0K9HTvKJMpM37N9
         7guY1dO9VoSlZwa4ACRwken9xiFxscSd2OaGSRj397MVDzpPI5XYqRBdBODdCIK9GsIW
         cSZk7q4iQvFwd8jlD83sVVG8DCgsgSQm2/RJiqxFRTsiNp8Z6XsXDrCih4BxJ0rfU394
         YptyLppJVrqUb4FT0ZdJR3jatKwfXHFCRRwuOCMzWxTuhYD1mQ/8chWE35RHs+nAxlJ3
         Tp+wt/XA9s++iTwRZzct5XIhT1Rb+oc58zn7oUAhPyC34dyGchs7iWhoDhl1ARzfI7x5
         j0Iw==
X-Gm-Message-State: APjAAAXQUPvajqfkUPAIwX+ZMr76IAk57x1LXaHCE4ud+cmm9aO3oIrY
	XL8qR0I9ZG2fskoQOAuiHic=
X-Google-Smtp-Source: APXvYqxQ7vgw7Hnq7ThXmFUDS4/d2WvR4Po/Yi7OxzEKJ5yPzq/L2HHKrH9FGGfl0+vbDWxHLvAWqQ==
X-Received: by 2002:a05:6902:4e4:: with SMTP id w4mr1184594ybs.239.1582662458901;
        Tue, 25 Feb 2020 12:27:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:df8b:: with SMTP id i133ls162431ywe.7.gmail; Tue, 25 Feb
 2020 12:27:38 -0800 (PST)
X-Received: by 2002:a81:99d2:: with SMTP id q201mr538499ywg.158.1582662458453;
        Tue, 25 Feb 2020 12:27:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582662458; cv=none;
        d=google.com; s=arc-20160816;
        b=qaRo05y6WFvUM9vrm/ZAdToIwCehxPIpl1HW29eF78t06PaXCenI6wijKvGtmKvrCw
         FA4xehymh61CDpjj46mx+FUiDVvE/g3xkPjLh8580vkANqFdSsQQZ0WgN71zjwTgv96c
         c9+5qKma+hxhKj96DabLS40SUq1WWgRF21luRSOLz3kOBF3FDPNmWROR6+EnV69F7FNw
         OgK36wN6eRvhjTvxOmSAOM/E8mJpQV/qeEeOiFRSUS2lq1Ijl0J9u+W7jM3EQkgHSadw
         xFyDyZD5+LAkhMl6O4HTpKqdvl1k/LHuT8hQguFBzb65nfZQOnZ5mYIy4CpQWjkGTpq/
         e0wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tC1nYodbnDy4sNWTsQPnUP+L2m/IgHaO+SrkamcIlsk=;
        b=G1OxKrDFMuy5flMWjYeMj2lnJCVuG7MdltKgxG5tCOplZgx8JbDXFvdbZoRUG8hP4W
         2zVZmSNls1dJdFhIWWm5AFZCULzisTQv//yOJITIYncRMjxE7HR0abNQ+60TRJSIHBYH
         S5KER9E7HakPQxTDUfVbQ9aiuIYndGDgXoJ0TGxy4jNNUKECHwNLfmfiXtYV/jeP2giW
         3Rdo2gywWSq5fYP1Xd8hALr13BQs0cNIzxOXCma7eIfdnItZAnENalQLTi7bycBV7/n4
         fLIHflXAxislMhRc2HynrUJmKAX3OXyQ5/Nx+7wjnyKOH32ry1RVaQ+6Da0jl3QXdglR
         aj2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oQT+43q3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d23si49800ywb.5.2020.02.25.12.27.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 12:27:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t14so269228plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 12:27:38 -0800 (PST)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr269035plo.179.1582662457264;
 Tue, 25 Feb 2020 12:27:37 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com> <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
In-Reply-To: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 12:27:26 -0800
Message-ID: <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Stefan Agner <stefan@agner.ch>, Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oQT+43q3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Feb 25, 2020 at 11:33 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 25 Feb 2020 at 20:10, Nick Desaulniers <ndesaulniers@google.com> =
wrote:
> > Ah, this is only when streaming to assembly. Looks like they have the
> > same encoding, and produce the same disassembly. (Godbolt emits
> > assembly by default, and has the option to compile, then disassemble).
> > If I take my case from godbolt above:
> >
> > =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
> > =E2=9E=9C  /tmp llvm-objdump -dr x.o
> >
> > x.o: file format elf32-arm-little
> >
> >
> > Disassembly of section .text:
> >
> > 00000000 bar:
> >        0: f1 ee 10 0a                  vmrs r0, fpscr
> >        4: 70 47                        bx lr
> >        6: 00 bf                        nop
> >
> > 00000008 baz:
> >        8: f1 ee 10 0a                  vmrs r0, fpscr
> >        c: 70 47                        bx lr
> >        e: 00 bf                        nop
> >
> > So indeed a similar encoding exists for the two different assembler
> > instructions.
>
> Does that hold for ARM (A32) instructions as well?

TIL -mthumb is the default for arm-linux-gnueabihf-gcc -O2.

=E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c -marm
=E2=9E=9C  /tmp llvm-objdump -dr x.o

x.o: file format elf32-arm-little


Disassembly of section .text:

00000000 bar:
       0: 10 0a f1 ee                  vmrs r0, fpscr
       4: 1e ff 2f e1                  bx lr

00000008 baz:
       8: 10 0a f1 ee                  vmrs r0, fpscr
       c: 1e ff 2f e1                  bx lr

^ Just to show the matching encoding.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA%40m=
ail.gmail.com.

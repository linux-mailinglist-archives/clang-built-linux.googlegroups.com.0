Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6H23ZAKGQELKASRAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E2416F2AE
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 23:46:37 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id i8sf424320pgs.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 14:46:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582670796; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8jy6D3vw5wO4LcKo0DPSpTRylFgsOuUpaqJbaXHodcF45UWq9+DQSNc8EI2Oz4pPb
         TKsvl/xBLcMPqhRM2GaVjBikCZEma0fvYzwal7F06juOAR/dIl6NZ+5r4C0uiNV4M/n9
         wIl+YtT02W1DSGxeoLctX71p8l8TEVQnv9/wT3c9SuxGkh3JpQnUStgPVkz+OYjhQ0mG
         ZBLs+okuVpQYazSDEVLTw24hChG3Ji3YYs5hhDoQDqtlNILIov5qGV7IGNnsHZGDuMTg
         DdbVpr/xQWLs2rp78uDKfEuZ52eFNq/t7hxXDAv0sd20U/Qp3jbW1O7YUFl3LK6YcMwc
         vtyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U2X6mglAALPF+SuJMA/ljJDs3CayK5DYrkRl67y8muM=;
        b=s8ZoEFtwG+0jG/3goKw3B/ubC9jgpMU5qNn/MVmWsC7aOJQS02bD5UPgd/AeAg18BY
         GwxRQNNbGJ4VsKQ3RxM1GR78dBLJ4dxEvHvYBtq/qteQfTz4DT0flWRJjC1h4vretUCc
         QyFTI4jtdFBq9KDXLb3aLASejugvtu0EljHabCXbqW+reicGP0ACuL5K3gqleM3Vv7hI
         rt5bZLwORpy0CqNXdLpjQboScMO8TEZazFC2Up98WK1ONsmhFo4eLJTo1okkH/oaLGdR
         ykjPuzLXVL8nie2jcqtlZ9uEPtuurbm8QUgiR7vsLQ90IQofMF/vd1X5nobb0nrozt/9
         VBBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gBECvMi7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=U2X6mglAALPF+SuJMA/ljJDs3CayK5DYrkRl67y8muM=;
        b=PI3g5qafs5plUo9+mEJUb/dXED+waw6Mivik4dbp4Sqygt9qm4j8GevWGVSv9TcM8u
         bkHbFw3tbPIs9JMhIb/dkx//6SIu7Nm35eHBCN7suhDqBrE+ZO9Uwi9WPGmmfBt3elbs
         NRfIQpRtoKoNo5N947S7p2OhuRLd6ubAzjkRso88Pv7A8wLNGLQiCpSafscNm27l9p/D
         vsd5m8ieGfN26kcLUhjtkS8FYWuxEzdKw6SJyjYoZcjRmfS1rX4KSctR6wUmN+u/p0A/
         3fIuxSifXjNzq5r0vznXejhGxHpbJRrbGJ6vm1xyxqQlYvZWat6nYNR8ayi5MkinJdvX
         Ml5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U2X6mglAALPF+SuJMA/ljJDs3CayK5DYrkRl67y8muM=;
        b=reZ+/IUtA6uPkEirf4zPliX+SnlFr4hbzIAJ4b/MPI/juZKduzZ/p1LZ4h5/I3w9+m
         EI4E4mYZiJlr4FFtMj71KV71EnIRUf+Hc3YRWr3yJ4soGuwBq4UhTuIlM++RIhT/X51H
         e+YM48GLHMKB0iwZlLpqEELqJoqnnS7gZjdzZeSRVeRDJ1S3uaAj4GkPiCWFdDa4oY/4
         hov4yEfnkVWSheq5W7WDHGYXWlXjqVSrgl/0oV/n/PPski+EIqrcKd0WW1DhRJG1gpNM
         VJg77IwQO9yIMNflSZPkim1BA56eiV8y4wJTPkRvxzHanhv6FLhy8dUgMuTm5TYMVfSm
         mx5w==
X-Gm-Message-State: APjAAAXS7HxHtuQWkVAUbF3yiWTn4s3cVetQ37fnsUhAEc6Q/8Fw6mhc
	DJ7skUAS6P/7aMauwusH4YM=
X-Google-Smtp-Source: APXvYqyryJ+H7VFgjDleDksr73evq81IlCHMbs1fqOMJy6GchWOWvWTOmNvLmCgdP92gy9uamSwD0A==
X-Received: by 2002:a17:90b:3115:: with SMTP id gc21mr1463417pjb.54.1582670796000;
        Tue, 25 Feb 2020 14:46:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls219129plo.8.gmail; Tue, 25
 Feb 2020 14:46:35 -0800 (PST)
X-Received: by 2002:a17:902:32b:: with SMTP id 40mr830800pld.22.1582670795509;
        Tue, 25 Feb 2020 14:46:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582670795; cv=none;
        d=google.com; s=arc-20160816;
        b=WywxFQjjClEp+OXsjISZkemmZMQkzFW6A30Mkp2Cu2oXC1nrEg+GKVpUXBZmMyOCwV
         sT4g8M7O21Yy8JRXsNsbD+J8ZGju0sedRK2FR/oDSoV1xo+GoTBVdmbBYjPhLthxdNRs
         fYwgmdpOEuvqLkNpHwGSRRAtoTbL5dhj+P9CyLDqsC4AEdPwcIog2m41cFjFTP8CzHCX
         7wxUYH91pwe829chNDxfL0Tipk8PdU3INkboqULvA6//s1Ev/Df1nksjOxIhB6hma46H
         u3jzOg6V3odD/pYod1hEeiUiLyErlLhzwlLr0nrTpnLAy/uOL+9jK/m+OewBdxTkiDSs
         Bafg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MIqEZR3STz4QmJr+fA8HRU8cSaP8JPrg45nVIamGD0w=;
        b=owZp/8qSA8J4f3CsyHmUYcYpW8tD27IRXxWAK0B35BN5GRSFOi5APmUP69mqDmhzw1
         oc3ixqgP7oCoWx0HHCm7q/2tecthnYx3Eca4X8hlWbs/aZlFHMoc1Hd1D2459XN5nKsi
         tJ6JVgGyQz7Al7azzHYfa8qHIxSWCOdHXJgmspwGEd88EDzQuC9eWA9AD3P73dlffUBa
         aFRzmNEl7E1MNxI3lheZTc/A3FwpDyWXUIGDYGGfVqav1Ntn2Zi7rZF5MxodwT/IgOVG
         1231bjIE3g+SfeQgMGwMpH5udq6mGz12gDn1owyhDR/U9pX41JRH4BN9aH0y9XPvIjpC
         do1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gBECvMi7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d12si300442pjv.0.2020.02.25.14.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 14:46:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 4so341861pfz.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 14:46:35 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr1010975pfw.84.1582670794833;
 Tue, 25 Feb 2020 14:46:34 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com> <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
In-Reply-To: <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 14:46:22 -0800
Message-ID: <CAKwvOdk-R7gYXr6PScgZcvHbCBF3TX+utMix44kZCo=qe1vZ2Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Stefan Agner <stefan@agner.ch>, Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Peter Smith <Peter.Smith@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gBECvMi7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Feb 25, 2020 at 12:27 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Feb 25, 2020 at 11:33 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > On Tue, 25 Feb 2020 at 20:10, Nick Desaulniers <ndesaulniers@google.com=
> wrote:
> > > Ah, this is only when streaming to assembly. Looks like they have the
> > > same encoding, and produce the same disassembly. (Godbolt emits
> > > assembly by default, and has the option to compile, then disassemble)=
.
> > > If I take my case from godbolt above:
> > >
> > > =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
> > > =E2=9E=9C  /tmp llvm-objdump -dr x.o
> > >
> > > x.o: file format elf32-arm-little
> > >
> > >
> > > Disassembly of section .text:
> > >
> > > 00000000 bar:
> > >        0: f1 ee 10 0a                  vmrs r0, fpscr
> > >        4: 70 47                        bx lr
> > >        6: 00 bf                        nop
> > >
> > > 00000008 baz:
> > >        8: f1 ee 10 0a                  vmrs r0, fpscr
> > >        c: 70 47                        bx lr
> > >        e: 00 bf                        nop
> > >
> > > So indeed a similar encoding exists for the two different assembler
> > > instructions.
> >
> > Does that hold for ARM (A32) instructions as well?
>
> TIL -mthumb is the default for arm-linux-gnueabihf-gcc -O2.
>
> =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c -marm
> =E2=9E=9C  /tmp llvm-objdump -dr x.o
>
> x.o: file format elf32-arm-little
>
>
> Disassembly of section .text:
>
> 00000000 bar:
>        0: 10 0a f1 ee                  vmrs r0, fpscr
>        4: 1e ff 2f e1                  bx lr
>
> 00000008 baz:
>        8: 10 0a f1 ee                  vmrs r0, fpscr
>        c: 1e ff 2f e1                  bx lr
>
> ^ Just to show the matching encoding.

Further, Peter just sent me this response off thread, which I thought
I'd share. Thanks Peter.  Bookmarked.
```
FWIW the Arm ARM reference manual
https://static.docs.arm.com/ddi0487/ea/DDI0487E_a_armv8_arm.pdf has a
table that maps the pre-UAL syntax to the UAL syntax.

K6.1.2 Pre-UAL instruction syntax for the A32 floating-point instructions
This has an entry mapping pre-UAL (FMRX) to UAL (VMSR)

So they are the same instruction with the modern name being VMSR. If
it is possible to use the new name it will probably confuse fewer
people, but other than that it won't do any harm.
```
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk-R7gYXr6PScgZcvHbCBF3TX%2ButMix44kZCo%3Dqe1vZ2Q%4=
0mail.gmail.com.

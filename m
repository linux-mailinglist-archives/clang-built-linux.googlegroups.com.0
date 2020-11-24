Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYNJ6X6QKGQE3OQTNUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FE62C3020
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 19:45:54 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id x20sf990377pfm.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 10:45:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606243553; cv=pass;
        d=google.com; s=arc-20160816;
        b=a8UKwN4srm8GiCP4nlTdeLDmFGzsvBOJEIW9RW3zQcklRf/pDFpY3IkxSDDCF/rrr9
         9Elf2eSs6kL2HeqrOzUbr+AKow49CiXBvTfDxzJPpvJdZoaemi7MGR0wkhV4aK3hpFoz
         jmqtrLapcRaY3p4fbPN9lZmFE3Qv3fRYga47l6igAnGcBg6ZdrbIm7QysL40sG8Ca37w
         CFE9MVieC8Kj6UittvizjtYEewaTHR7055mt9SAVJ5VxzulcXQgDldIVxXg8XM9y5bab
         KycY5Ik7hN3/fKqQrjr+3HGyjEXblZvWKji+rnBVHbeiD61jUQtH2vcwvP5I77Y4dVQu
         aOSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=1wS+QNGnKG3Z5enXPdr+2MhNSN7Nb1sf5RRs9yWo7/w=;
        b=KONWl7cmDB27w+JrmVv6rUhPa1LXE1ovaDVy5SC+f07PRI0IvendQGuX027kLEsNBl
         fCLuNOTgpaC3dMaAi0e3e0n2oylhnGSGoGBZ4GL93ZiE0TTA0e8uCo3SjSiKd6IO/GUT
         yzYA2Xjipm9pdBnL01Fvrb/HG90zIq5QpZDzYK4wWpDPB+4lZZ22NzCdv+eh7tdUCn+U
         U6K+gqZ07UXbno9T5BXLgVRaVFRobEW4CRIsX03ezzeeCgIyvHZ+H4TN87liwDyQqIQW
         gqenUacMkXKvF8RvaBWVgnnIL6/HA6x4pTZ+KqCMRPl0+EYaGuOq+jSw6WozNZPxmyeS
         PX+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rSx0asH0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wS+QNGnKG3Z5enXPdr+2MhNSN7Nb1sf5RRs9yWo7/w=;
        b=T2efpcxQLmCoOxYN24k/rQ+r31/9/M5NiK/1Tphv8vcH65MGTPTqLhk0wDYa3xcNT5
         /LaYYCvGVgDaX0Rg60lZe5wyR8U7RjuoWa2/7k3ZfJcDDZVYihfPLBWlS83r2zAfXouy
         RiheFyIQX/cVQhzfj8zbeccjYBm8c5vkS1ifJjTm9LYnkr0h5pHnFi4zmTFMEeoysbe3
         gNAl8ezSSS8QWO3Rb5ZabU9nYGknFTYAxlDz9hwLgrZlLdAGWbpuovyJ/HaN0Nwn/kzL
         /TmpHpAAbW5x794LGE8nCu7Qn9J7hAgFz8LTVw85tlKs7RFOtf9uTH1ChnfXzXBah9QN
         41eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wS+QNGnKG3Z5enXPdr+2MhNSN7Nb1sf5RRs9yWo7/w=;
        b=SZ3e46rDGmTVrlV5qVxSNj7CZJWLll1wT96q7/GSX0Ij4Ke83vSHAsBg+jftH1XSZ+
         Zt6OCuzwtI2oVzwic+sElL/suDaWvvw+gQXI0qtRbZWyLPEOhYXIenBjcSimdKdSK/YM
         oMlUUNlL5vT1C58AD1gN2XOHAwWkGhL5OjD4KadzMYyxl3ZQu2XEDZ9UF3c/5id6Ohez
         FVmHPKk5344pQvxIaLF67lpSJa0lFw2g8ZMMrA/YjZTnQbhhkaPJLUEUPNaUQKEc5AFi
         WnpcW7SGjXawKficSy+W9gmfe6jlVV8etgLKOZ4d28BrTNS7XiS5OSjyIl6/kJHkmQWI
         YjTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EaSiL3jKlPSaI8qFfpaGFqp2W/oJYRcxI3q1qD53/jzzra5so
	MnGYWD296rXqbl8QaBHdLBU=
X-Google-Smtp-Source: ABdhPJy7wNqXSxcBUkOxwYzK1v4+MEfsq+YfRtSVt4i6KZq/ths/X8BLGjsYrvcLM/XF6OIhQwR7gw==
X-Received: by 2002:a63:4e58:: with SMTP id o24mr4842371pgl.322.1606243553642;
        Tue, 24 Nov 2020 10:45:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f994:: with SMTP id cq20ls2553240pjb.0.gmail; Tue,
 24 Nov 2020 10:45:53 -0800 (PST)
X-Received: by 2002:a17:902:820e:b029:d6:e802:75aa with SMTP id x14-20020a170902820eb02900d6e80275aamr4986693pln.51.1606243553051;
        Tue, 24 Nov 2020 10:45:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606243553; cv=none;
        d=google.com; s=arc-20160816;
        b=SAxns+U0Aaff4K+irE0ItKNGdbMqphpRJsTJfk+Fwg5UYcebLDewOM1Dn/dgoxZtG7
         QzIR/DR2psaY+J/5jYaLNjFBOtie5KTsY5L0IE8CBr5+ZdmYNQ3bx9FoFXu18xY2XMiy
         vcjlMvNDg4yS+bclWmmiQZp0VkEkVHqJA7a4JEBGb9j+Tie27rXCbHro3eAEXLLNyfnu
         FzHMvnhzx5reT4CBGwO+IAi+BjodfJbz1H4SpjvqsYnhvXd/ci3M4n3Yk4/h46OIn9ed
         ssqE0WnChMVEHpjXa/cRvPJrdanWklQa2f0gRz+8ybEYylkk0PvSVj2lbEYfKvCTqLE3
         qFvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=viqmAjpBDNKBM55ep9S4CFsZN2+b8yf9v5jJjKojcF8=;
        b=HNwkWtE39Dmfsm1eUAME19ylwS8mTUcpI1NJgq7fuyVghbyhN272lObcBZX9ZtusBo
         RqIlicuhmx4SiMQoSiA2V2UCvGDcBK/Lx+L9+aaW2bh15jsqjIorllddT75PbLA8QJTK
         5AX5DkUniHJrbMA4OT7gYunNQ1zaxL73nnCaDrIMSS8UiEaH3G50b62raBEWp00q8GAg
         ccDnfxb1oSnVxp09EW8inhGxwzAnGzymuUn194oOuMwpxGFGAVPUF+5IJsMqIyJbFzCI
         e+yREzf1LOR8X7rlgF0/MFd4tjDtIcHA3W1+qHmPg5EeK4v3wrhv9mUpBzSjqRYU/SaX
         uaCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rSx0asH0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id v8si1005863pgj.1.2020.11.24.10.45.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 10:45:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0AOIjaTg026880
	for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 03:45:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0AOIjaTg026880
X-Nifty-SrcIP: [209.85.215.175]
Received: by mail-pg1-f175.google.com with SMTP id t3so4417843pgi.11
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 10:45:36 -0800 (PST)
X-Received: by 2002:a17:90a:5905:: with SMTP id k5mr3606612pji.198.1606243536107;
 Tue, 24 Nov 2020 10:45:36 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com> <CAKwvOdnxAr7UdjUiuttj=bz1_voK1qUvpOvSY35qOZ60+E8LBA@mail.gmail.com>
 <CA+SOCLJTg6U+Ddop_5O-baVR42va3vGAvMQ62o9H6rd+10aKrw@mail.gmail.com> <CAKwvOdn0qoa_F-qX10Hu7Cr8eeCjcK23i10zw4fty32u1aBPSw@mail.gmail.com>
In-Reply-To: <CAKwvOdn0qoa_F-qX10Hu7Cr8eeCjcK23i10zw4fty32u1aBPSw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Nov 2020 03:44:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNASatgWjE7MGe-cqU135tKD_Tt31Rouw-HSz6LYrN5hyuw@mail.gmail.com>
Message-ID: <CAK7LNASatgWjE7MGe-cqU135tKD_Tt31Rouw-HSz6LYrN5hyuw@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>,
        Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rSx0asH0;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Nov 24, 2020 at 3:42 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Masahiro,
> I would appreciate any feedback you have on this patch.
>

Applied to linux-kbuild. Thanks.




> On Fri, Nov 20, 2020 at 3:58 PM Jian Cai <jiancai@google.com> wrote:
> >
> > I also verified that with this patch Chrome OS devices booted with eith=
er GNU assembler or LLVM's integrated assembler. With this patch, IAS no lo=
nger produces extra warnings compared to GNU as on Chrome OS and would remo=
ve the last blocker of enabling IAS on it.
> >
> > Tested-by: Jian Cai <jiancai@google.com> # Compile-tested on mainline (=
with defconfig) and boot-tested on ChromeOS (with olddefconfig).
> >
> >
> > On Mon, Nov 16, 2020 at 3:41 PM 'Nick Desaulniers' via Clang Built Linu=
x <clang-built-linux@googlegroups.com> wrote:
> >>
> >> Hi Masahiro, have you had time to review v3 of this patch?
> >>
> >> On Mon, Nov 9, 2020 at 10:35 AM Nick Desaulniers
> >> <ndesaulniers@google.com> wrote:
> >> >
> >> > Clang's integrated assembler produces the warning for assembly files=
:
> >> >
> >> > warning: DWARF2 only supports one section per compilation unit
> >> >
> >> > If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
> >> > assembly sources (it is still emitted for C sources).  This will be
> >> > re-enabled for newer DWARF versions in a follow up patch.
> >> >
> >> > Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> >> > LLVM=3D1 LLVM_IAS=3D1 for x86_64 and arm64.
> >> >
> >> > Cc: <stable@vger.kernel.org>
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/716
> >> > Reported-by: Dmitry Golovin <dima@golovin.in>
> >> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > Suggested-by: Dmitry Golovin <dima@golovin.in>
> >> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >> > Reviewed-by: Fangrui Song <maskray@google.com>
> >> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >> > ---
> >> >  Makefile | 2 ++
> >> >  1 file changed, 2 insertions(+)
> >> >
> >> > diff --git a/Makefile b/Makefile
> >> > index f353886dbf44..7e899d356902 100644
> >> > --- a/Makefile
> >> > +++ b/Makefile
> >> > @@ -826,7 +826,9 @@ else
> >> >  DEBUG_CFLAGS   +=3D -g
> >> >  endif
> >> >
> >> > +ifneq ($(LLVM_IAS),1)
> >> >  KBUILD_AFLAGS  +=3D -Wa,-gdwarf-2
> >> > +endif
> >> >
> >> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >> >  DEBUG_CFLAGS   +=3D -gdwarf-4
> >> > --
> >> > 2.29.2.222.g5d2a92d10f8-goog
> >> >
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/m=
sgid/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1qUvpOvSY35qOZ60%2BE8=
LBA%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNASatgWjE7MGe-cqU135tKD_Tt31Rouw-HSz6LYrN5hyuw%40mai=
l.gmail.com.

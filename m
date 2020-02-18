Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWG5WDZAKGQE65LP6PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD97162EB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:37:15 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id ev1sf594737pjb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:37:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582051033; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y7ZC5iHgpfn+YN5nd2+sSjspgc481TC35OFwrrp4nW3Rw2Objolbgbl0o1xuhDzg8K
         302lY/6Eyqg6x/ELN/I5pXCltmGZCwOKn5zq2nOqXErzgjT5wt/U6cMr5pVgMsDVHP+k
         KxEQJbxgdg6BrvCOvGYoQT8kLcdJ41voUogSGboLAJcO6CptdQhSPUbcXssQprx36+uv
         XvDUgDLS66dPrxWaTJ1Y2DOpYzKDMioS8gpIaRW0iU1uocSC8O/3navV1N3A2luOU2/D
         tMyMt8CV5o2pI4FxMArOMMpHceiC52cbEp964X6ureGdexhe9GSct9+JNNmsKLamH/eA
         Bx4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bPXXnQlo5IvvMihz1Ikz77sLi79ow6YolEL9j7PENng=;
        b=nas+oai2igBvIMzRI6c8QdG7CRY7M9C+tlo0xQ9wjJ+5xD/KnxJ6mHOicpUqDig2eU
         5nfJz5tzTFQ8VNWgHYPM+C2W6J6xS6NKLLcqKts7oSNknOn3dFe3e+o5E9wOSj0SWSzb
         HNDiiS9A64vtyvJ1smRGGZBCxDEcKmawV8bl75wV9aMZdZl338VXUxF2+ezu2O4A3lc2
         z41e1bHliDcQ2mYjR74ovhTODPjZU34fZ2CON9pbYBX3EL4jiYUSIuaLA/Dhl4pS4hB9
         Xyn6e6UNuXxn6Vs+rIzedC+Phb61x+F3DW+zj2ORpCb2ehtsYWSaOqghGpBSl/gbsPoQ
         DMNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WuPXMTek;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bPXXnQlo5IvvMihz1Ikz77sLi79ow6YolEL9j7PENng=;
        b=WgsQzds2WV9huKa46Jm5H7jhy2nRrcenV0KsC77TCETDSt18S1AqgppTbpaRs30QPi
         VScstJQVMXpLfLAGdYes0UfJ+aCBRHDSkX4wKpvO9aONBUk0U8XVjmJnDLj9BnlYozUz
         BYMO8pykOpjw33/qDIA85Kldv2zGaziiE4FtT//YMuHMP2YKCliJABcH1RfFQ8wmfUUf
         6WBVK/A3TNajCdR263Jiel//5957wpTdThoV8hpnoWADjHEEgquP1XAREbe+81KoUrYM
         sskk5+ol5O/slLQZl5nKiRrDL8GIhX0pA4pd9uSy4Y7ibAX0NmoBBbaDEeMnwgsdEizh
         wVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bPXXnQlo5IvvMihz1Ikz77sLi79ow6YolEL9j7PENng=;
        b=pCexeVoDMUcrY35iuB0SnWtDFaD1Sz8XhS4OqWvacn3cZTVAzuR9aVubrk3KiFHEHB
         6+8yw/eI+WWO4f3D7r2jh1I9AybgJbGDUvTIU1x6Y4BCCSyBZpMKq2Xas3OJuZ/wfPoh
         ACGj9r9HyAB4tVCnTrVEGCg6GQFkse2GHmKvvjeZTUxiHphrrP8UiwHeACg/Xt+rW/An
         c4dHADJt0iY79B9elpgXr4be/tueqaSxSUweOhqGrkoC0sqBfQIci6oRB6LuxCyjPdSa
         rLwOI9KVoAPlswO9UEtzRj6OcSuuR3dqI+Ud7EeSkj2V0tXmN5Bkp/Eh6z4dTS3Nwdcw
         jP3g==
X-Gm-Message-State: APjAAAXpQHY2x9SQYqJypI6tpG5UZuFJOVFxZHd5mJpgBg96IwWBP4Xm
	/BWgnN/FhsFdDkVbnN/bzxM=
X-Google-Smtp-Source: APXvYqzJ3fMSnZeCDC+urm5elQ/qddTAw1zQNHIZ+ElsF/YB4X5FOH/WGpOQlHZpOKqv5TlUYtkixw==
X-Received: by 2002:a17:902:a40c:: with SMTP id p12mr22303275plq.3.1582051032788;
        Tue, 18 Feb 2020 10:37:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:567:: with SMTP id 94ls6297365plf.8.gmail; Tue, 18
 Feb 2020 10:37:12 -0800 (PST)
X-Received: by 2002:a17:90a:d103:: with SMTP id l3mr4440106pju.116.1582051032381;
        Tue, 18 Feb 2020 10:37:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582051032; cv=none;
        d=google.com; s=arc-20160816;
        b=vQ3eLeuML/RjD/Ns4SiHrvHxbWEBFIclwSAP7MgDnoquaj4E7mXd1ZXryqe24LO43J
         djr2y1vSJPW2jL8pw2g3Qb4vDH+oUH7R3CBNDs5p9RHJsu9+i7hM5odaRTd/S+nS6lf3
         hXugmYSJZTE0hcNhZaxWESqMweKa5PzIZ/iGP42K04Jk3S1ZfiXP5br7V1CkX4Dt/gyU
         nj9wyeQofAt79+nu875cFN2VY+9CzTbQWvQxkP/2eRBortJPM91nbfJxsEGir7CD4dOD
         S6z8smbJpgE9nDaBsuVR67X3Jq4TCXiwobt0qwn6Cx0Kk7M3EodrPapvooQLvrh3YBVC
         jERA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ccXZcPHgblgsQ7szhI146C2Fb020S8Uq8EN9Auab0l4=;
        b=FYP/WcMKDxkHP61Zi6iV6sh1Q3L+1W08bxzWKcSMW3CVQ0tC073C+zGhaIDc8hJ/8C
         kcnY0wSFlP/6zqbYY/Hq2IMBn6tFWGfnuLnNJqp6y5pvuNC7N43xC3Wsb2EIKr9sZ8wJ
         k0u1qhfvb33b5nrurCKOjAvWZhWCB+WZkoU5q1UecYJD43+1O8J/gNKAid3GgGnyvQcj
         B2wLXWnTZ/xF/2Jovm6gTfKSQH/WG9JHCIpUgk4atT1/L5y+f7cQnF8bOTCH0uRUyo9n
         +3LKfKNHO0e+06OHj3OFu94M+/7B05UiiN+eF3kbCq1hYYvCpFdos9erAf6ABkh3zLwH
         aO8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WuPXMTek;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id k1si289398pgj.0.2020.02.18.10.37.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:37:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id g6so8425479plt.2
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 10:37:12 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr20968051pll.119.1582051031642;
 Tue, 18 Feb 2020 10:37:11 -0800 (PST)
MIME-Version: 1.0
References: <20200211212455.3307-1-mark.tomlinson@alliedtelesis.co.nz>
 <CAAdtpL5Tf-8O=xMKO33DWDs=2_Hsdk=FQSNO5Gsrx=9hWvENdg@mail.gmail.com>
 <8e852d84c8b0c6b35faa3b3f2a1034d93a6e8967.camel@alliedtelesis.co.nz> <8cb14684e2f774d9573c062f2d82ad5348c5fee7.camel@alliedtelesis.co.nz>
In-Reply-To: <8cb14684e2f774d9573c062f2d82ad5348c5fee7.camel@alliedtelesis.co.nz>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Feb 2020 10:37:00 -0800
Message-ID: <CAKwvOdkaLRE0Ek3PnmqE2P3Urn4+pwfAp-qQdsLurwERcqNXfQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: cavium_octeon: Fix syncw generation.
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc: Mark Tomlinson <Mark.Tomlinson@alliedtelesis.co.nz>, "f4bug@amsat.org" <f4bug@amsat.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"paulburton@kernel.org" <paulburton@kernel.org>, 
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WuPXMTek;       spf=pass
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

On Mon, Feb 17, 2020 at 12:01 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> On Mon, 2020-02-17 at 17:58 +1300, Mark Tomlinson wrote:
> > Hi Phil,
> >
> > On Mon, 2020-02-17 at 01:22 +0100, Philippe Mathieu-Daud=C3=A9 wrote:
> > > Hi Mark,
> > >
> > > On Tue, Feb 11, 2020 at 10:42 PM Mark Tomlinson
> > > <mark.tomlinson@alliedtelesis.co.nz> wrote:
> > > >
> > > > The Cavium Octeon CPU uses a special sync instruction for implement=
ing
> > > > wmb, and due to a CPU bug, the instruction must appear twice. A mac=
ro
> > > > had been defined to hide this:
> > > >
> > > >  #define __SYNC_rpt(type)     (1 + (type =3D=3D __SYNC_wmb))
> > > >
> > > > which was intended to evaluate to 2 for __SYNC_wmb, and 1 for any o=
ther
> > > > type of sync. However, this expression is evaluated by the assemble=
r,
> > > > and not the compiler, and the result of '=3D=3D' in the assembler i=
s 0 or
> > > > -1, not 0 or 1 as it is in C. The net result was wmb() producing no=
 code
> > > > at all. The simple fix in this patch is to change the '+' to '-'.
> > >
> > > Isn't this particular to the assembler implementation?
> > > Can you explicit the assembler you are using in the commit descriptio=
n?
> > > Assuming we have to look at your commit in 3 years from now, we'll
> > > wonder what assembler you were using.
> > >
> > > Thanks,
> > >
> > > Phil.
> >
> > Yes, it is tied to the assembler. But the Linux kernel is tied to GCC,
> > and GCC (I believe) is tied to GNU as. I can't see the specification of
> > GNU as changing, since that could break anything written for it.
> >
>
> There is an effort underway to build the kernel with clang[1]. I'm not
> sure what that ends up using for an assembler or if it'll even be able
> to target mips64 anytime soon.
>
> For reference the relevant section from the GNU as manual[2] says "A
> true results has a value of -1 whereas a false result has a value of
> 0".
>
> [1] - https://clangbuiltlinux.github.io/
> [2] - https://sourceware.org/binutils/docs/as/Infix-Ops.html#Infix-Ops

Chris, thanks for CC'ing us.

Mark, we're building 32 bit MIPS kernels with Clang under CI (just
added big endian builds this morning).  We're actively looking into
supporting 64b MIPS.

The kernel uses GCC by default, but supports using any compiler via
`make CC=3D<foo>`.  There is extensive support in the kernel for
building with Clang.

GCC and Clang (when doing kernel builds, for clang we set
`-no-integrated-as`) will invoke GAS for inline assembly, but you can
set `AS=3Dclang` for example for the out of line assembly files.  If the
C source files don't contain inline assembly (or `-no-integrated-as`
wasn't set) then Clang will skip invoking the assembler and stream out
an object file.

If you're actively supporting 64b mips, and want to give a Clang build
a try, we'd appreciate the bug reports:
https://github.com/ClangBuiltLinux/linux/issues
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkaLRE0Ek3PnmqE2P3Urn4%2BpwfAp-qQdsLurwERcqNXfQ%40m=
ail.gmail.com.

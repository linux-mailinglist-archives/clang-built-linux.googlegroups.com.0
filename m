Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFVCS7ZAKGQE5LG5JPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E24615CE3F
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:43:36 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id z39sf4537316qve.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 14:43:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581633814; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pt87j1BE2FHDRH3ypAxKR1ZdIgK1P3mKyULAJ/ECXXJn/Mp1xq9ffX8sidOap911XE
         RNwnCywsJeeWqv19prqiQdm6VdE555yxl4SPmMDT/EEd4HjB7K3ZPfHP7gRi9J5OL46O
         17s8pUlgNY8oEhGGm50KEUmBB5slKxO5JpE9/A+kZvHqRtc/XVRKs9UEO34AhKqh/R8S
         p5p5AWczqSgrR43GQj0EPDFU59yUjfecjAIpqYJR8BZkxrL+AtGbTGekjx2r6JwkeD45
         HqJYZR84EbtoahTkAPQYunRTNDAfkwNFP5ENLcl3MaUdIXeZty2mZXQlZ8fEuzIWiuSI
         abtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q28lHeDi2xnjcxUxso2U4kpE6vRFgsnO+ckDpkUQ/gE=;
        b=ge/sV4DBqqpDrw0/6m0Nl9pmldx72PIfwqvfPZJytzEFmPIon2yYbiR3aJuA7dXP9K
         JqP4TyZDhBJa2CgQYqYHOwMQf0qlvHamPzj5Jm8wEWmjcDwIZeM8bW7nM3CVFzzYLZox
         hleXZh/U4VOIfmUiF0R/r4jtEHoGk9Ni+Ps/2uYwmYEkyc/7Ru60F3ELOdbiTyqmp0bp
         AAPfNjw6ktuSR9LXaLdy4HgRUnhQm8Vai6W+WXCTB+os6y7iXZaVmdqmAiUP6zpadUa4
         e0rYMG7YyEIrPwoG8NNGWeR4lDllM6E/wVFtlPgdmL9u97LHD+Ds0APuuqLhVsj9k6FS
         QPmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mu7RaWQT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=q28lHeDi2xnjcxUxso2U4kpE6vRFgsnO+ckDpkUQ/gE=;
        b=WDLCv7A/tuwYtSVeCTLbQBmimYdshvd56lsM95GsJ4qwfrQRIWsLE9jk0rSiYEav3o
         nZffsLvVLG+0oDctrT60Qm8hAjKaC9emLvBTtAoqRAyx95GdkNdfc0O9s9oISNOIXQR5
         pBeyTn/mB2STaYwPXOVD3Pv9sQzJnnzpd71X7yeLNWUZWvpCr24Lgoh1QBfRCDaNZXn2
         UMHjFzvtVLw0NhE2EX4aIgd/3FQaNdbYdhZAyu09kxF2+7hYE/bhL4JyyVj/b88+Ve00
         LHTaqa8ZXq3wmJo8BUDwXw6N8CTfY1M5fNzXE4HwD8Bv4MiFA1IMC46yqc7JXJA5Hiw8
         EN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q28lHeDi2xnjcxUxso2U4kpE6vRFgsnO+ckDpkUQ/gE=;
        b=PDoTaaeVUgOtXM0NqQ4xaCLumwizhR9lb68DD4X3b9AHoDqzagnHwt50GjwajDx/S/
         ivBX+Ovekh8srrN2J7JiAE7yNQEglRw63gqW4JBjgo4OHZC5FXq35TFYqlRgDtLV4wSh
         /sU+HBBxL5+yDlVscmDD19tqWTNOmpsvSyWPKfYFrDrBPPHAHhtXM7dwRK2i0zivRbtp
         qZ4jZarIBsZK6rqTOmqbXVECUcHWF+nRNvP1rdKCkjkK1YpGDcavC56yM9yTmFeuzl+T
         FMVdwMEI8v3RaEDutXYlXHU+l4E13TAWbHQ+hvxNipVnj1mIOSCo+Gr9ZwtA7ZpFeIw7
         W99Q==
X-Gm-Message-State: APjAAAUPYfNQFkNGmX1HdN0XdcAk/45H0ZUmnJj1YgZCuBBCmvx+RiSh
	KSIUhX2ITuuRhNR0IQeCDng=
X-Google-Smtp-Source: APXvYqwjFRwk0wj3lTFzjIykwE3hqnD/94R9Rifd0Sd8OSzh+r4CLyIAs/zO2ffo70vtqcOG+ESdjQ==
X-Received: by 2002:ad4:4434:: with SMTP id e20mr13668737qvt.157.1581633814215;
        Thu, 13 Feb 2020 14:43:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:42c4:: with SMTP id f4ls4802146qvr.10.gmail; Thu, 13 Feb
 2020 14:43:33 -0800 (PST)
X-Received: by 2002:ad4:55ec:: with SMTP id bu12mr13894753qvb.107.1581633813832;
        Thu, 13 Feb 2020 14:43:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581633813; cv=none;
        d=google.com; s=arc-20160816;
        b=oLWo4phlMl47Ndky9CV6t6bDLc3Wg3ewQ9G+I84Fias148VjuEaEDe+l+kNCZbj9EW
         Fuj84ylO/XGU1n2AcXUB/clzw2QTr4KXFajGMM69gv5meuYbLqTTLY2VxI2uKf9a4zkg
         AzLzdQCoWQZ/Tz+bBDzHEgQlTzORCBGqrT8JFeJP/lHEtfbPPIUKP6mkI75MJhd16elW
         5IYzkVBWmovakcb3TP/nNbttwQvEd5PKaDhkkPE20c1NiyWy+QoxlyRLHj4c1VWUAB8U
         Rv1HNeS2Q7H86M6OFGFtU7FdiBH20OyM1HUP5I6ea+XFtqjdZjIBkGsJZnPDOl5vCW5e
         zlUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1uz4onwD02FQH4e/dvdb1FjZu1rFnkl+4ltvHCVnzHQ=;
        b=DkcHDr04ntE20rxK2XZdSxvV+/y4qvSKx406rRyPLg9bymwjXWUOkJb2jqGcqYDepv
         dtpYtpEZBOrfJyBGGth4j/+SRYgYV473MgfvF5vnb5dyUBWXg+qtpk6Kxm2l5yq54Zpo
         LdGcnqQB7XkPTBYwWVbtncO+AUSs2YMNTU0kC/yNbI6YBJB5avEzE6ZuJ9bBNT/j0mII
         YZoZnYInQuQDXBV3dr2N/uMlkQK/YRB3kjahyc/PWVrb09GgOllA+l2bwb6j+eyB+pHS
         3EM0A6wJmLy2Il55Qmd8i+IxCE1eAI2S7MEnu2KR52jNgzJdJyNzMyGD77SzdvH7q8ft
         IK0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mu7RaWQT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c19si207440qtk.5.2020.02.13.14.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 14:43:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id v23so492550pgk.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 14:43:33 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr195696pgb.10.1581633812546;
 Thu, 13 Feb 2020 14:43:32 -0800 (PST)
MIME-Version: 1.0
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com> <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
 <20200211203935.GA16176@ubuntu-m2-xlarge-x86> <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
 <20200212170734.GA16396@ubuntu-m2-xlarge-x86> <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
In-Reply-To: <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 13 Feb 2020 14:43:21 -0800
Message-ID: <CAKwvOdm4eS19-D3pEkKsyZw7VjJP9Jeh5gMZaszwgjrJe63yUg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Disable -Wtautological-constant-out-of-range-compare
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>, intel-gfx@lists.freedesktop.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mu7RaWQT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Feb 12, 2020 at 9:17 AM Michel D=C3=A4nzer <michel@daenzer.net> wro=
te:
>
> On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
> > On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
> >> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
> >>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
> >>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> >>>>> A recent commit in clang added -Wtautological-compare to -Wall, whi=
ch is
> >>>>> enabled for i915 so we see the following warning:
> >>>>>
> >>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> >>>>> result of comparison of constant 576460752303423487 with expression=
 of
> >>>>> type 'unsigned int' is always false
> >>>>> [-Wtautological-constant-out-of-range-compare]
> >>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >>>>>
> >>>>> This warning only happens on x86_64 but that check is relevant for
> >>>>> 32-bit x86 so we cannot remove it.
> >>>>
> >>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same va=
lue
> >>>> in both cases, and remain is a 32-bit value in both cases. How can i=
t be
> >>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
> >>>>
> >>>
> >>> Hi Michel,
> >>>
> >>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
> >>
> >> Oh, right, I think I was wrongly thinking long had 64 bits even on 32-=
bit.
> >>
> >>
> >> Anyway, this suggests a possible better solution:
> >>
> >> #if UINT_MAX =3D=3D ULONG_MAX
> >>      if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>              return -EINVAL;
> >> #endif
> >>
> >>
> >> Or if that can't be used for some reason, something like
> >>
> >>      if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
> >>              return -EINVAL;
> >>
> >> should silence the warning.
> >
> > I do like this one better than the former.
>
> FWIW, one downside of this one compared to all alternatives (presumably)
> is that it might end up generating actual code even on 64-bit, which
> always ends up skipping the return.

The warning is pointing out that the conditional is always false,
which is correct on 64b.  The check is only active for 32b.
https://godbolt.org/z/oQrgT_
The cast silences the warning for 64b.  (Note that GCC and Clang also
generate precisely the same instruction sequences in my example, just
GCC doesn't warn on such tautologies).
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdm4eS19-D3pEkKsyZw7VjJP9Jeh5gMZaszwgjrJe63yUg%40mai=
l.gmail.com.

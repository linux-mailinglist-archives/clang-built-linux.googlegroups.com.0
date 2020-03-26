Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEUZ6TZQKGQETFOLGNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C11194869
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:12:03 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id t12sf5903963oih.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585253522; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsGcSkevNgMI1Wn2CHd8VpH0d34naqWOn81ylzcHYVn5/BMbervoAi0Y8tXgqs8hrS
         bjnpQ2194Ag1YsUv2JGCqFbq8dU2ksnud2TA4Jb6u+fNZLmoxDL39A4fiVuuWkBVNTRL
         FTgwdeRai3b98ZK9S2lN07qA3Z+6h3sVg0FUDjx53h6XSoXEq4Qei9/CtCq5oYbBfCyf
         oVmGTjI9xhF06mm/pXgDVlJ+gaEdA+hCicvYFNGb/rEfyvE2+fimfiHrextBIyTtTWiy
         LgVtxtUlIGY8L62xJWmXfs5nhpj3EoKQN9POdXLLKVUo+169Rrp5+HIl76P+elYw2xD/
         ycyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=6yMK+Uqua8qGuVlofparggpnP6dD/ijud131hbp1Fz0=;
        b=uo2//LH+80LMQBp3W1plqtxL3cJoGTYBaweO/AbjnCNgeC+Vu9WgX9axwpi859W2UE
         ZNQHqqfTq9Mp+l3D/beNCCxxJPeuQNNZRYJpNdI3sFCpo8SoV3kyX8zF1d515jWmhwL9
         KVJGkbW7dM+Ycxft+IDkqyXXskZRdmaOxYCcyjbcVoh7qFeYhuSQekTt5YZhorKYc0Lx
         JvOeMJPZEKE3+lEvTqLA+PcZoXvdoeOj2O6Zigka64JZNRnfW2u7lID0YTg2DG9idw1G
         U2ri2Y3gCagIPNtMDSGDwppHSK73yBqu4GIBWL1IWa4pgMcu6u08J0/ORxC/WMYeqnsl
         VnBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BphgvEck;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yMK+Uqua8qGuVlofparggpnP6dD/ijud131hbp1Fz0=;
        b=J8W2jKAo8lWYu64jCay3Qcvq5NQaOrJCEmKmV5gYIXSQ7C2Mu1q98QYRF/lZlfUy96
         ghPMRmie3Dq2loerax4ekBNlQ5HFq1wWnRGhAfVEbH0JXaNnKRsINlxdG+Sj/Rs6PQD3
         O/aQ9P1BLS7RTdolBxIa5Il6yANxCqvu9zpPBajQHzxRrCocIn24+7l2VAU2IPsP674M
         zs5eibOD+njdTQ2eTxlotPu3uRACKyvO+TPLiu2HGb6WtEzHAbkMy5CwH5PDmsINUUeU
         7sYyr98Deyk1WZl771IVJ1Sbnh1RWpF2o71ZDE/7LPbpYjn0AS4WB101nPAtuaZRyUry
         LUJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yMK+Uqua8qGuVlofparggpnP6dD/ijud131hbp1Fz0=;
        b=WQfsGHGP0MTpPBVeYgRNl2MQPML9fUW8dxld6D3G+ZvAmFBXlvU2dLe469QVU+gKvH
         ksXnWBD6Egy9pPs4YtYf9dFKDY6wYXRR8XmA2cjFQKO+znSGSXXqL+XUQXVpNex0Jyh9
         jbjgXKX4CJ+F/23mInBbxBcjcsx/IkwDEiOlFyJo6QSzeZC5T7/aIBFra7J/ZHZg5Tg4
         +yawxXwpo/1vCRQcfgGIePNoQIyRi+8ulgWsitEsvCxRmOvG0LhpNgpulELBuwr3Z0Sd
         /c0Ssv6VeML23OgtHMfggTgIY9T4FXQKVVraYpYrK/E8H16Ufy+IUJ1BYYBtTQm2wzGa
         ogZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yMK+Uqua8qGuVlofparggpnP6dD/ijud131hbp1Fz0=;
        b=L/cCIzD/Q0dntyR1O33qtlU/mPMf4i706niqisRHFoz8mZfhAeni7+swiLD8m1zWkc
         kfigrBFit9JFyUQ7JZQJ0QYdEidKJCsoj7GSHJA+880lzjeHm9M/cQk6WY9z+gQ3XHRh
         eagPckqPE80YDsQSc9D7xXLO6U+I/g148zX7zAWX+ascMLpV4iJ4bCKP36hWUqXox1ul
         JrBlmfmFvgOgS9ZpT9GyZFrPGC89MOD1ME93rEqBySkoGo9LhxoPaVJfqWuupOG4AsAv
         YELPeDH9J9aa6pnkOidM+yAxR8xBdnjTAj72GOKrmekLsryIIU7HzxSRlh3WIJLo62E1
         dcyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2XhwYJ2AFrBV+T3uroEN0ZgaPusqC1/AGNFpeJwT8aGJubx3si
	1lyv+MOpnEXclBqs7nRFnBo=
X-Google-Smtp-Source: ADFU+vuhDGsvM8RQSdsf6SCrREXPdAzpQSQ3rW+DD6QSTZ9nt+dRHbuI4DJDp+Z2N7H71Sx1JcaYHQ==
X-Received: by 2002:aca:3255:: with SMTP id y82mr1689364oiy.44.1585253522096;
        Thu, 26 Mar 2020 13:12:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls412278oia.0.gmail; Thu, 26 Mar
 2020 13:12:01 -0700 (PDT)
X-Received: by 2002:aca:5155:: with SMTP id f82mr1624354oib.103.1585253521783;
        Thu, 26 Mar 2020 13:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585253521; cv=none;
        d=google.com; s=arc-20160816;
        b=RB/COi2D/DkUQhjcePJO7rer1cq8u8mNa1Ll6UJ/2c95D4SKga//FsKE88xb8xWegF
         XnLdke1C3u6PmSjbdRY8YN/PlqEefQl31uQ9DRqZxMsOA09cLOePLGHenCxZRf9QG9X2
         7i7Ik6hLdyx4FmTtvC5TbTdDfw6S4xIUc6ABXbNgTE3rMT+n4iau659FZqJCPKwMc6Up
         D/GdNdHM5kQ8NUfZXIs74gdWCAyPmDccr46h3mUQvPB1aabmPPNbkIODhf9H/nR7d5Oy
         npO9Q8cEOVIc2Qrwj6CM9cTytWt6Hz2+o+VrqWvY31Zkz1AesP3zwhHiCTNG0vuDdvH9
         QPXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Q+Ax8x2vU+R+U6VbmPmYqkXtNPWfs1Jy/4mzvcdEYZg=;
        b=DXe6eOkMbTUUqQ5w095DBvkY5fGPnrMwpuvhhZdRFCIVxrIJlwIesUYELRkGH33hBF
         jtY7WlPZb4otkXK33bRQp8ehMv/0bIxNWBDsQ1UFXyNQxj29f0hWa5+ZbbRuCmTEEsHm
         QcbYFjPx/eX/OHkRhaYPBNLANUhILTg61HzZ4VkymyAH8VAy8gyIDSW1Uv6T2TY9Ku1A
         Af9uqaHqFI8OfAh1UI5FbdDz8nwIwIgvVVZeIxFIxwOb4v+i2fYGBdATSizH4Mb+4A93
         gunHqyjRVz2er0U5cKLQZP2yKC0NYeYtwBKecjGFOogvzNkFM4Q1v5XUWAdscdVEFCSR
         tmeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BphgvEck;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d16si334452otp.0.2020.03.26.13.12.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 13:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id u20so2007329oic.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 13:12:01 -0700 (PDT)
X-Received: by 2002:aca:af97:: with SMTP id y145mr1534969oie.24.1585253521437;
        Thu, 26 Mar 2020 13:12:01 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f45sm880530otf.30.2020.03.26.13.12.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 13:12:00 -0700 (PDT)
Date: Thu, 26 Mar 2020 13:11:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
	Chris Wilson <chris@chris-wilson.co.uk>,
	intel-gfx@lists.freedesktop.org,
	LKML <linux-kernel@vger.kernel.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
Message-ID: <20200326201158.GA30083@ubuntu-m2-xlarge-x86>
References: <20200214054706.33870-1-natechancellor@gmail.com>
 <87v9o965gg.fsf@intel.com>
 <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
 <87o8u1wfqs.fsf@intel.com>
 <ff302c03-d012-a80d-b818-b7feababb86b@daenzer.net>
 <CAKwvOdnaRG=7mib9vtWX4wkjQXHeUiioonTaZLStMVXfOOSUfw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdnaRG=7mib9vtWX4wkjQXHeUiioonTaZLStMVXfOOSUfw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BphgvEck;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Mar 16, 2020 at 02:41:23PM -0700, Nick Desaulniers wrote:
> On Fri, Feb 14, 2020 at 7:36 AM Michel D=C3=A4nzer <michel@daenzer.net> w=
rote:
> >
> > On 2020-02-14 12:49 p.m., Jani Nikula wrote:
> > > On Fri, 14 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >> Quoting Jani Nikula (2020-02-14 06:36:15)
> > >>> On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> w=
rote:
> > >>>> A recent commit in clang added -Wtautological-compare to -Wall, wh=
ich is
> > >>>> enabled for i915 after -Wtautological-compare is disabled for the =
rest
> > >>>> of the kernel so we see the following warning on x86_64:
> > >>>>
> > >>>>  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warnin=
g:
> > >>>>  result of comparison of constant 576460752303423487 with expressi=
on of
> > >>>>  type 'unsigned int' is always false
> > >>>>  [-Wtautological-constant-out-of-range-compare]
> > >>>>          if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > >>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > >>>>  ../include/linux/compiler.h:78:42: note: expanded from macro 'unl=
ikely'
> > >>>>  # define unlikely(x)    __builtin_expect(!!(x), 0)
> > >>>>                                             ^
> > >>>>  1 warning generated.
> > >>>>
> > >>>> It is not wrong in the case where ULONG_MAX > UINT_MAX but it does=
 not
> > >>>> account for the case where this file is built for 32-bit x86, wher=
e
> > >>>> ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
> > >>>>
> > >>>> Cast remain to unsigned long, which keeps the generated code the s=
ame
> > >>>> (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64)=
 and
> > >>>> the warning is silenced so we can catch more potential issues in t=
he
> > >>>> future.
> > >>>>
> > >>>> Link: https://github.com/ClangBuiltLinux/linux/issues/778
> > >>>> Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
> > >>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >>>
> > >>> Works for me as a workaround,
> > >>
> > >> But the whole point was that the compiler could see that it was
> > >> impossible and not emit the code. Doesn't this break that?
> > >
> > > It seems that goal and the warning are fundamentally incompatible.
> >
> > Not really:
> >
> >     if (sizeof(remain) >=3D sizeof(unsigned long) &&
> >         unlikely(remain > N_RELOC(ULONG_MAX)))
> >              return -EINVAL;
> >
> > In contrast to the cast, this doesn't generate any machine code on 64-b=
it:
> >
> > https://godbolt.org/z/GmUE4S
> >
> > but still generates the same code on 32-bit:
> >
> > https://godbolt.org/z/hAoz8L
>=20
> Exactly.
>=20
> This check is only a tautology when `sizeof(long) =3D=3D sizeof(int)` (ie=
.
> ILP32 platforms, like 32b x86), notice how BOTH GCC AND Clang generate
> exactly the same code: https://godbolt.org/z/6ShrDM
>=20
> Both compilers eliminate the check when `-m32` is not set, and
> generate the exact same check otherwise.  How about:
> ```
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d3f4f28e9468..25b9d3f3ad57 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1415,8 +1415,10 @@ static int eb_relocate_vma(struct
> i915_execbuffer *eb, struct eb_vma *ev)
>=20
>         urelocs =3D u64_to_user_ptr(entry->relocs_ptr);
>         remain =3D entry->relocation_count;
> +#ifndef CONFIG_64BIT
>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>                 return -EINVAL;
> +#endif
>=20
>         /*
>          * We must check that the entire relocation array is safe
> ```
>=20
> We now have 4 proposed solutions:
> 1. https://lore.kernel.org/lkml/20191123195321.41305-1-natechancellor@gma=
il.com/
> 2. https://lore.kernel.org/lkml/20200211050808.29463-1-natechancellor@gma=
il.com/
> 3. https://lore.kernel.org/lkml/20200214054706.33870-1-natechancellor@gma=
il.com/
> 4. my diff above
> Let's please come to a resolution on this.

This is the only warning on an x86_64 defconfig build. Apologies if we
are being too persistent or nagging but we need guidance from the i915
maintainers on which solution they would prefer so it can be picked up.
I understand you all are busy and I appreciate the work you all do but
I do not want this to fall between the cracks because it is annoying to
constantly see this warning.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200326201158.GA30083%40ubuntu-m2-xlarge-x86.

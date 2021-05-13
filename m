Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5PR6GCAMGQEAOAQLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFE937F0AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 02:55:19 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 76-20020a62164f0000b029027f27f50e56sf16131017pfw.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 17:55:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620867317; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvRsVbD/Ctl62pwskrV0enOsnWdkw9ihxVz81lG0bKjH5Cu0WUD3La7MJ3m6ttLUni
         kCccvf14pZ+jwoWu4A8fxPhan1Exs+MrkYqSUsxi0sgEY9IjOQ8tkNZYKyGRtnVMSELj
         tnJHb57RwnVmmdRPp+c6psZDoxw1RQ6KEPjnDE1197/lTUTjTFRvmsu1jEg6BmyNouG7
         qVrpOuB+qB58dvY/U9+UOZZnMDqNGQqbLXvJJFBuL/A/9nsM38/D3TzQPxWMPn4HW57K
         Qt+wdTfxk6WMQt1zeH7/Zm6KdOgGqUZGiFp8HM/ST5f85CBpoDei51ZsMDmohuVq7Sey
         6prg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1t8geF2pXRHRhzKNhIJ59AYCndsdqDiQji+uoVxjjh0=;
        b=Tyx8DgSenL8OacyeSIzlTpfeahSUUc8nxzmnO1R2LyoHCWxXwHS/FIkzLFHiAtQqia
         WHw+xsVw4Kf5k/62telq4EBF9MJ6LEkjFCQFiARRUPU5HVNIdhSIF4nCJZ+7kP3dEgGk
         XW0p7s2r4CdeNsk56Iv7uvGvz3Z0Rk0ddZ2RYxrsz0k2AuL8EjP5Ezka9pxvoxCz1zqr
         TFFZR1CM3pKFmMp8QsqW952dfLzA7X3ZMXbTVVh7yfaQBQOinF/8+GWiwLsYmywjaWzu
         HV10MRb+yPrNJqJz9AtGtDxGrOE/SaDL6LEngFC7ioKjti55/S08jp0+w5g3qCk2930n
         zDew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BjD/SuCQ";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1t8geF2pXRHRhzKNhIJ59AYCndsdqDiQji+uoVxjjh0=;
        b=skMDH0MwBG+NZVGIkwn/gt7hYQxXAwUB0WBRUOOqt16Jx/ccVQVEbZbsUsvZzSrkrh
         Ai+SgVOi+wmiNR4dREX3S70pi3KOe9dG4wptXFPWwInnXWMxVB6xbSL3sdC4BAMuIusx
         TdEf+fJa7mNz8SzU66C0M42xZ3TniozLBcssLjjr0KfKCxGZpZjbuppal/YWQUfzaw8X
         URy2CvZrTzF2s1sZJ2Nnu+jtQVtSd6I/w0wEPlysCOwn6tdmXLRNYDPjIgUw4ckus+uH
         J1ygtPF0BoPrz5MNHQd1yZUoXZI1/6KM3SREp1ZcyfmL5A8JGwSAtQAdob79tVUmCAvs
         ghBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1t8geF2pXRHRhzKNhIJ59AYCndsdqDiQji+uoVxjjh0=;
        b=H3JAHyX74qHdL7CVSm/Eu5Af+2pZqxxARAiEZZk/V1OiMyF5es54ji8J1AH5yVkDML
         trB97VU2MKzhL+t04ZEYyCdd86vDmgIYVVFe9HYaMHkFwyLbLiPU6YAizmYXPp3teV2i
         EOqsZfAOvWXCeMNBkYWkfzfhupO/BOy6yOV/L3wuaAjLH5ntke6WjyiZsCHJzXBiqKGN
         kGVuYgiTmb9cJ4u8oMEMEK4tJczHEj8hhLhk+Vt0I1K/BItK6FbFKwL5x7ucstGu9xDD
         FlCTR/RZbzz1opYMLi+O/gP1K7nL9Gjy2bmIgwtfH8R76/Lrq4FDdAvj6LfBhxJG0wfK
         voLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NBsozDbNSYPIwfonO/moZ3r/mQiLL8UahIqRzi67i7C+NoM8K
	DmBWxIqiH8HDeRI6nFfWimA=
X-Google-Smtp-Source: ABdhPJxGSyYP9UyodvfoGtPZxn0byR+3F/QNIXhp/ZA4bTLZ6Q3sXVdyT22QgZXBAGJe0Z2C8dc5fg==
X-Received: by 2002:a17:90a:d485:: with SMTP id s5mr4388180pju.208.1620867317616;
        Wed, 12 May 2021 17:55:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d4d1:: with SMTP id o17ls2169772plg.7.gmail; Wed, 12
 May 2021 17:55:17 -0700 (PDT)
X-Received: by 2002:a17:902:70c9:b029:ee:c73c:88a7 with SMTP id l9-20020a17090270c9b02900eec73c88a7mr38211230plt.75.1620867316892;
        Wed, 12 May 2021 17:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620867316; cv=none;
        d=google.com; s=arc-20160816;
        b=Na0LuxH8NqjDha1H0c+b9mjBgD5mPYd53+13zI0b3O36PHgh1AZASHJ0e0OJ8Q8Pkr
         66daITxe8Zqy1zMc4kM7j4B9pi0qTYgM9u1B3ZmgmyzEO7crvrYW5Vzm8ne7v6X0IJNe
         dNK4YLDzHwqWaRs1aMPdef/tZg45Nl7ewHYP73Cg4HBJK9RKwcvYWcGAnbKm74XNgHfL
         hamEK9845c/qGaHp9F+Do2yoLiemS8BIy4dBLQlmUREr7+eBVA3I+KJHSFFbI7Jwt9mw
         1jMvz59d7oyfWUk1MVK67cAiKE5axvgqWLuez23LoKlgGE9kYNMtf7mh1rlsCNq5RoJE
         O87Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=QamYlizWdUsZ5MKp2/6Bt4t0tR/UKDBqycu/hf5aG1g=;
        b=aoBovrm7ijiexUEt/KaAEBSHtYF97TLQnaS45Z0VlHixtHfa5EWZMrEM3HJvH33qyq
         je054Gk0SHlKRI0uV5xB5gH6QZX0xaFr7vGr32OhsYNrWhkr2bXvncZUD/DZSSXuuK5T
         aeQqKM7KxtSGGoL7F5KHDMlNNshcYmKsllPHhqRobkW8q7dcIIjh1AVMor6IGRK6Q7YM
         ucuwvBJNwkm14tefXHuJzCA1LDzeZO3NlowEhCrjU1bL2PJPVAFaKOpEKTTwt68Rt+0d
         QOLApI+dfjPd3Q/Wik0jAL3hklxBdX6Z7oRezmLo+ZRu4xPgBEzPguQlbJxL9Kt3z+GK
         1tHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BjD/SuCQ";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d30si129470pgd.5.2021.05.12.17.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 17:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7FC8C61108;
	Thu, 13 May 2021 00:55:15 +0000 (UTC)
Date: Wed, 12 May 2021 17:55:12 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Marcin Wojtas <mw@semihalf.com>
Cc: Russell King <linux@armlinux.org.uk>, netdev <netdev@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: -Wconstant-conversion in
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
Message-ID: <YJx48BfKpWMZCbnz@archlinux-ax161>
References: <20200417004120.GA18080@ubuntu-s3-xlarge-x86>
 <YImjw3eypUdhkp88@archlinux-ax161>
 <CAPv3WKeHcq+viBHR=ok+AytrNWLFudWJ8qHoShs3r4LOj7qD0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAPv3WKeHcq+viBHR=ok+AytrNWLFudWJ8qHoShs3r4LOj7qD0w@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="BjD/SuCQ";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Marcin,

On Thu, Apr 29, 2021 at 09:08:13AM +0200, Marcin Wojtas wrote:
> Hi Nathan,
>=20
>=20
> =C5=9Br., 28 kwi 2021 o 20:04 Nathan Chancellor <nathan@kernel.org> napis=
a=C5=82(a):
> >
> > On Thu, Apr 16, 2020 at 05:41:20PM -0700, Nathan Chancellor wrote:
> > > Hi all,
> > >
> > > I was building s390 allyesconfig with clang and came across a curious
> > > warning:
> > >
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:580:41: warning:
> > > implicit conversion from 'unsigned long' to 'int' changes value from
> > > 18446744073709551584 to -32 [-Wconstant-conversion]
> > >         mvpp2_pools[MVPP2_BM_SHORT].pkt_size =3D MVPP2_BM_SHORT_PKT_S=
IZE;
> > >                                              ~ ^~~~~~~~~~~~~~~~~~~~~~=
~
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2.h:699:33: note: expanded fro=
m
> > > macro 'MVPP2_BM_SHORT_PKT_SIZE'
> > > #define MVPP2_BM_SHORT_PKT_SIZE MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_=
FRAME_SIZE)
> > >                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2.h:634:30: note: expanded fro=
m
> > > macro 'MVPP2_RX_MAX_PKT_SIZE'
> > >         ((total_size) - NET_SKB_PAD - MVPP2_SKB_SHINFO_SIZE)
> > >                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
> > > 1 warning generated.
> > >
> > > As far as I understand it, the warning comes from the fact that
> > > MVPP2_BM_SHORT_FRAME_SIZE is treated as size_t because
> > > MVPP2_SKB_SHINFO_SIZE ultimately calls ALIGN with sizeof(struct
> > > skb_shared_info), which has typeof called on it.
> > >
> > > The implicit conversion probably is fine but it would be nice to take
> > > care of the warning. I am not sure what would be the best way to do t=
hat
> > > would be though. An explicit cast would take care of it, maybe in
> > > MVPP2_SKB_SHINFO_SIZE since the actual value I see is 320, which is a=
ble
> > > to be fit into type int easily.
> > >
> > > Any comments would be appreciated, there does not appear to be a
> > > dedicated maintainer of this driver according to get_maintainer.pl.
> >
> > Sorry for the necrobump, I am doing a bug scrub and it seems like this
> > driver now has maintainers so keying them in in case they have any
> > comments/suggestions.
> >
>=20
> Thank you for your interest. Are you still reproducing the issue? With
> clang 10.0.0 the compilation passes in my setup:
> $ ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- make CC=3Dclang
> drivers/net/ethernet/marvell/mvpp2/
>   SYNC    include/config/auto.conf.cmd
>   CC      scripts/mod/empty.o
>   MKELF   scripts/mod/elfconfig.h
>   HOSTCC  scripts/mod/modpost.o
>   CC      scripts/mod/devicetable-offsets.s
>   HOSTCC  scripts/mod/file2alias.o
>   HOSTCC  scripts/mod/sumversion.o
>   HOSTLD  scripts/mod/modpost
>   CC      kernel/bounds.s
>   CC      arch/arm64/kernel/asm-offsets.s
>   UPD     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   LDS     arch/arm64/kernel/vdso/vdso.lds
>   CC      arch/arm64/kernel/vdso/vgettimeofday.o
>   AS      arch/arm64/kernel/vdso/note.o
>   AS      arch/arm64/kernel/vdso/sigreturn.o
>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
>   VDSOSYM include/generated/vdso-offsets.h
>   OBJCOPY arch/arm64/kernel/vdso/vdso.so
>   CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_main.o
>   CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_prs.o
>   CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.o
>   CC      drivers/net/ethernet/marvell/mvpp2/mvpp2_debugfs.o
>   AR      drivers/net/ethernet/marvell/mvpp2/built-in.a

My apologies for taking a while to get back to you, it took me a while
to understand what is going on here.

On s390, MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FRAME_SIZE) evaluates to
704 - 224 - 512 =3D -32, which is implicitly converted to size_t or
unsigned long because of the

SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

resulting in the super large number that clang shows above. Then that
large number is converted back into int, resulting in the same value but
with the warning. The 512 comes from the fact that L1_CACHE_BYTES on
s390 is 256, resulting in a large aligned value.

On arm64, MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FRAME_SIZE) evaluates to
704 - 224 - 320, which is 160, which is the same value signed or
unsigned.

I understand that this probably does not matter in practice because this
driver does not run on anything other than Marvell SoCs but it might be
nice to fix the warning :) this patch below seems like a reasonable
option, let me know what you think.

Cheers,
Nathan

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h b/drivers/net/ether=
net/marvell/mvpp2/mvpp2.h
index 8edba5ea90f0..db23da9a0658 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
@@ -832,7 +832,7 @@
=20
 /* RX buffer constants */
 #define MVPP2_SKB_SHINFO_SIZE \
-	SKB_DATA_ALIGN(sizeof(struct skb_shared_info))
+	SKB_DATA_ALIGN((ssize_t)sizeof(struct skb_shared_info))
=20
 #define MVPP2_RX_PKT_SIZE(mtu) \
 	ALIGN((mtu) + MVPP2_MH_SIZE + MVPP2_VLAN_TAG_LEN + \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YJx48BfKpWMZCbnz%40archlinux-ax161.

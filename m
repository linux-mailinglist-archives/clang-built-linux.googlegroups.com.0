Return-Path: <clang-built-linux+bncBAABBGMPTP2AKGQEQXPMXVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5885019CFBB
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 07:20:26 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id n89sf5477008qte.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 22:20:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585891225; cv=pass;
        d=google.com; s=arc-20160816;
        b=XMKJ9qR3jNmo8/h/H/s71Oqbit3aYpODWZ15YeZJN9c4f2E5iDzmaOil1DFjaCHKN9
         1HUL/D5P3/imqJGLOGYuThL9YZ/6yHjnhd2wlxbyrtqMIrOC4GCtBbXzeZbAl2HBnaEq
         XtZq1U4G1ziI8iGo3vRfpaDg3PvJa275SE4ubaSQ9Vc6JlaHkjDXMuNBBO+s5TMRIW4A
         hVfanzMtQjbVR9Tw0K9dji9EebJsKaCqJtpF9FHq25BVHjEdZOdq6B4+L6VgRUuUr6Ro
         c9gyS2gnR/L2r8HHQTH7URl5NqF3zcUaKHGqf5hI5EFjMMfqNp+BeaWayU0wYNkFlEWW
         2+SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=LlqUGgKyH5mW19zMB2nkH0eWvAVpX49WLA2yh0AFlRY=;
        b=DooofJnPqaTx44zdUzoMIM7+MreLwLGcg43R0FfOXFt7qO/+/TGYycBNd1hl3muSuZ
         f3hd/HeGjNZN3VMQfpd7FraEgbY/NGIf1lqx1P9vxG4fd4w0uE+0BgYjI6SjI4K+9jEQ
         IAwSy/kpZyXeLRWRxKfycwwSKMvuXKI1mza+CqOwGPStaVLmI7j7qd//a3Nyr2aOSIor
         3GV5QjHJiueQKgF3ilNvlPgF0ldpyOyQRkaNlVQztxuhpQ8kGVKYMv+/sysvUEaQVZoV
         digqhQm/wIcXUYrucPboQ0v6h8uV3YRZdOV8r0WtGC5dEMWnfDMVafyBE8QOLYHfsiHK
         pL5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iD87RcG6;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LlqUGgKyH5mW19zMB2nkH0eWvAVpX49WLA2yh0AFlRY=;
        b=p6ERdOb1NU5ZBAwrQ3J/3UlGCdDvh04JtteentP9b5xrnINSf7YVaV4QZdEyq2k+SU
         WEXbVn20YaQcL7TiR846RGBM6JtHGpUQW7h+Vdq5OdcZeDlWdX4gvnuiJfl+AItvCpnK
         j3gOZ8CnAHHYX2xrekxZ5t0YXWcZfCBGe7qIGVZ1WxX45bDEJISBedwu+4M8k7Mr4RuZ
         0yK9SRz5p92X+NhxNTn8e7rCbqYUSFtQtUUdL+IR9oi2juoSAhWp9sw5TGUMN5gNYad4
         1rMNorxtMzTGTtstW86zKK3ZDQpSg7MF57bbJhPZR1PKvbFRd54/g/K8/ozs/AEAa9qL
         7A3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlqUGgKyH5mW19zMB2nkH0eWvAVpX49WLA2yh0AFlRY=;
        b=tzOLUMecSec3WvykzKKXf4IfBaLnmiUs4DvgDVIaq2y+Vg1WMvVL5BysRRhh6kFRpe
         jeNQa/X28uNR5ObKG/7xuHPkRAdM42slbet1FoO2xXIdOBBdaX9fMtErm6586GJVJC1H
         yQaSCmX+z/osUc6l/lvnx4dzfqrrdV53CASodsavvq7wNeR7pf0skil0ik4WlQ4LV2j8
         dfhfWzHDj6bhztIM/G78HxrY2aIpqiCRePpE7ldjSbMLkJowJTI6GCTdBWXzEt+5tfF6
         b2EU6Oir2yYpnRKOnoSh3nuAynufiGHxwpEFKxItDSBrho7BLf4G4FelJfAOBGLZvtr0
         KgKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub3mZoehGIx4b6tb0pEeAwbdRT9AM2cfGJUdfBu5H6cpLWAPC4I
	OHoDxmXWHDOnpohT2/HyaAI=
X-Google-Smtp-Source: APiQypLsA/2pmgwgw3w+iTKlebBKX3ul+45GXe/TqmL1NiVNqLEcJxUlfMGzrXWcqP+gG0gZQcBCpw==
X-Received: by 2002:ac8:3565:: with SMTP id z34mr6570503qtb.168.1585891225154;
        Thu, 02 Apr 2020 22:20:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls3371553qtc.6.gmail; Thu, 02 Apr
 2020 22:20:25 -0700 (PDT)
X-Received: by 2002:ac8:1add:: with SMTP id h29mr6641532qtk.258.1585891225032;
        Thu, 02 Apr 2020 22:20:25 -0700 (PDT)
Received: by 2002:a05:620a:15f8:0:0:0:0 with SMTP id p24msqkm;
        Thu, 2 Apr 2020 05:05:26 -0700 (PDT)
X-Received: by 2002:a37:bf05:: with SMTP id p5mr2974394qkf.344.1585829124708;
        Thu, 02 Apr 2020 05:05:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585829124; cv=none;
        d=google.com; s=arc-20160816;
        b=zFfc4S39gVID/6mLUGG3Asp28tTo7oiyL+NnakO2oevgjL7dyqU22yBodlNeSjouRh
         XgFg1o+61uQB2jJI9NcolyyM4n2bzxXEMcVhEBmsu2TzHNsiNKABa/xzaFzkzPdOAaAm
         LA1GBq7YTderfx/5bVQ/71xrL24RyEMLKleKzOe1R8YI14nqE0v7f0ppbL6Iy7EDovSz
         nQQ5blrifQoN1ZP489RUPOnV17fXi+yIkZ2AOEcS4boIa7Pu0DkX4yVwJEXk4UnGswGm
         U+sZ7L1iTXL139zgYND30k7VlMFeRHG7Gqtrught/ux4lbt8iBOgiaEm1FO4ycQGu2yS
         z7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Z3Ezt3uqrhz+zf7rQ3tPtxvxrDTdtNxoj09tcqo/LGA=;
        b=i8xuMnuvHdwIf8yZMVxCXhLP5+EGeaP6A6c1p9NXRM5XiF5LbZrjyoVbXibMnaKVcq
         /dERXmItWojPgyQVEP4Od9Uockfm58kVxneeYphNirPJoVzOV0QdmWl9ce3ZidIHELhm
         xrOftOdDOSwKHzg/4OMZGFfM85oQ0ddqW+eYTVca2TZpFn85SsmhRS8ortMLM9sHyBo9
         FbgCZ9xcd2RqwZpknQaaJs92UnoAPINWODWNErrQrlnPCWTSKfLK2p8VS9zRZ39MVr0K
         dd7/IGXUErpJPLjiCsmG4yz4irnn0Uj4vfQarCHZKS1h3alTIqoKccRVjIUwAqurlF9b
         1vmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iD87RcG6;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d205si204022qke.1.2020.04.02.05.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 05:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C86C320757
	for <clang-built-linux@googlegroups.com>; Thu,  2 Apr 2020 12:05:21 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id o3so3342158ioh.2
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 05:05:21 -0700 (PDT)
X-Received: by 2002:a6b:f413:: with SMTP id i19mr2424610iog.203.1585829121163;
 Thu, 02 Apr 2020 05:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com> <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 14:05:10 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Message-ID: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Peter Smith <Peter.Smith@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, nd <nd@arm.com>, 
	Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iD87RcG6;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
>
> > I take it this implies that the LLVM linker does not support the
> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> > expanded to a pair of adds with the appropriate relocations, letting
> > the linker fix up the immediates (and the ADD vs SUB bits)
>
> Not at the moment. I have a patch in review to add the G0 variants for th=
ese in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does=
 not have support for generating the relocations either. This could be adde=
d though. I agree that using the G* relocations with a pair of add/sub inst=
ructions would be the ideal solution. The adrl psuedo is essentially that b=
ut implemented at assembly time. I think it would be possible to implement =
in LLVM but at the time (4+ years ago) I wasn't confident in finding someon=
e that would think that adrl support was worth the disruption, for example =
the current Arm assembly backend can only produce 1 instruction as output a=
nd adrl requires two.
>
> I'd be happy to look at group relocation support in LLD, I haven't got a =
lot of spare time so progress is likely to be slow though.
>

For Linux, I have proposed another approach in the past, which is to
define a (Linux-local) adr_l macro with unlimited range [0], which
basically comes down to place relative movw/movt pairs for v7+, and
something along the lines of

        ldr <reg>, 222f
111:    add <reg>, <reg>, pc
        .subsection 1
222:    .long <sym> - (111b + 8)
        .previous

for v6 and earlier. Could you comment on whether Clang's integrated
assembler could support anything like this?


Thanks,
Ard.



[0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?=
h=3Darm-kaslr-latest&id=3Dfd440f1131553a5201ce3b94905419bd067b93b3

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEQ4v9e6386ogPdy%2Bs%2B%2B%2B9H02DMPnDpTq0WSY2e78ts=
%2BQ%40mail.gmail.com.

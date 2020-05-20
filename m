Return-Path: <clang-built-linux+bncBDP6N55ZUYDRBZWLSX3AKGQEBA2RWHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id E48751DBAF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:16:23 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id a69sf3425794pje.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:16:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589994982; cv=pass;
        d=google.com; s=arc-20160816;
        b=tyGsal92Iz4doaY9QOxZjta90UeKY/ptItQarPVpcZoaa55V0e7G24FrwLaZ11y69w
         mQ2OGxoZRfclBfWG8oLPvXDRuMoSXkTncKhqovp5nFVGWXasUb+JeVIY8BPQY0w0xpw3
         /08UtWF/GNheLZ56+z3C7VTFBzOy91UdxnQ3eHAwnXspkjcqEv8paJk28YfAQfquRBg2
         GI/YS6RnPPTsuPXQuWlfgsn8FsQWJdz1+gg/QmS5KA927jThPS2gdSgFQquqw3DNey2z
         +J2kEb7Q65nd20Eqd0++zMGIukORavhAiyeakyir2KLESQgFqp82umF31R4hWtNWI2Xj
         oFVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=1h/rkbM0Et4U4NXOoXF1cLCznqWQP5VozK9TxSwPGhM=;
        b=XOt/d+VKk5Ublbb+YMB8ZoFya2pFCSPeyXS3LwRlCPtLxtappQfjv7sEiJuEVw7Z4f
         VKMNFtY1mljZFPHeTEZSu8w8ZzscC49rfPw9YBoDQ0Gybey3A1WpCc4c10Bogc70H15A
         hCuVezyQdsGzeDrYPT7pjJG5BXQU6eryUXU0UZ/r1ZkFAlnjaeU2UVT7vtcRjgy4Aaie
         htC5NnIkgBmeX+Aph3a6+lazrrVEOqwY4zab+8pwG27LkBB9lrbJ7vEVyv1BkDbDIb2y
         vYTpmuOD5IlV2Pydls3DWlchbU5bhWN1wkxkIvOWKse6Log3C+jB9i90KLuUizsy/I4O
         yBJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsTQzxra;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1h/rkbM0Et4U4NXOoXF1cLCznqWQP5VozK9TxSwPGhM=;
        b=pxFGb94HqCU22DvjY2qnvHhZd7OKmBzcr8HUmd0FTLdNj8Bv8A12ri4HCZI6F9BUTE
         Y8qd28jzZlmhKUEzGC10BFB++yKtP1VtI3hV3w360wh+Dtv6QElsNjyuphw3nUzip7jR
         SKjjuhAPmQPnDGaxfkFD+EMscY3EQNQ5TMZyfrwd7uhZDMgPdEEAp1vb1xRjgBa42eXb
         DKTs7xKZ4kpbgT5vGr3A9AeJLu2mLIRik4ggPiGuqhhMj04IZJs47fsm05lL4XAPxmm9
         ueZtkjuLqhmxhHHf2rluPC5X2mRvIOtD3WDSmOzucU7LomEd9HrRHFZNDrB1dJvzu8DG
         +iEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1h/rkbM0Et4U4NXOoXF1cLCznqWQP5VozK9TxSwPGhM=;
        b=dK3wfCpsjYljJwjBLgW9YMGL8/O7kV5aZwswdKXcHBjwof81upwkQCGC1+cQWeroTb
         m8sE3kYaezmK1JiOzi2ZmCBWAVqKA6PDy4eUDNkexSBgszkJHw3bMNVfaaOiBL/fHyNV
         4C1IqJv+ZqjehRLm6YaIhAMm2O/mObMCJqkWL7+XOeRn+63ieiSNvirFIKlzuGgzBRTu
         ENcOQ0ahOQ+2Urxt1CRK9aPk7fUWOtc0+m2yL5/dk/DXIsJsB+pd7xLv4xmLPMA0oeHB
         5AS4+koSlMHfTFDcy4T61qvun4rml3NFaiSk1j+h3US6Vb+b8vla1sMIYs4N9UQBaPnt
         4qeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1h/rkbM0Et4U4NXOoXF1cLCznqWQP5VozK9TxSwPGhM=;
        b=C97vwT5PVPrdw1l3bSogpxGs1Zx5vl2vx7nvN1gywhBfBEHVIVAWCIUDpliTVPo65m
         0H6mnwHoNzXpnYwK8nOuzveKD9jSuhYA2dHgvIiQX0HXixKm1sapJ/c8TGgX2ATI1ZdP
         IfUOZmI8vxsSGeg9PZbazx6oqWeDm2q1Yg0Ny20Zxme5R4TkFhKjr7hkqfyNOnMbhdyf
         XOU5McrXi4r84FEdGBhhTBCz7wl3a60GlN68581sHZNp5GIEmt00f40tPuWTscvzvKv9
         5BaukVNuDI0JOJqbSINzN1LxF+Kb/RmcWYW+p318LtGtU075WYiLxMI111jtAlbsBCp3
         Vi8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333oKWIb9lvV5olxg4X1SfngLnkMZwCvFdGz036ul0BEhW6GrRB
	TEcop1rCsZvUnfmes15lFc0=
X-Google-Smtp-Source: ABdhPJz5taQQwUFqy3piuGbd1qvOnnfiYCMjvkalXVS1qNz4gokYFsJJbhBBrVPHpoF0B1tvE7UwzQ==
X-Received: by 2002:a63:3c11:: with SMTP id j17mr5181121pga.70.1589994982485;
        Wed, 20 May 2020 10:16:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d93:: with SMTP id d141ls1123138pfd.1.gmail; Wed, 20
 May 2020 10:16:21 -0700 (PDT)
X-Received: by 2002:aa7:8b15:: with SMTP id f21mr5267553pfd.72.1589994981773;
        Wed, 20 May 2020 10:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589994981; cv=none;
        d=google.com; s=arc-20160816;
        b=lCmWwllOiSOQXA8Pz3lXR5u09WqQFmqZxhL4jH1nAPKSWUxUNo7l1oJCtl9Hphht/P
         pvIb6bLH7zi2KtxzMwYFwi0Zxqcox/WqgFm5KoIW4ewSwyMFWlb7WbZIq0gYk3Ys39/a
         NR7+NA0OEkoUbwK8qmaedYRLEwV3PRGYOwf89r96iYgSq8wDeaNZMaZE1E8YHNt12xSR
         2perOMRNS6PO4XxoTLRJljpPqa8dWR26Y6Hwrs9F+PRj79kfTKvO/PKOpTdIkGT4SYkW
         1Z9FhnNITXhv5V5gE7ox4td8/wTTcwy6xjTkmAub5rjrkVbR72EUqfDeMmZGH/3aY+7L
         PR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QOr9A6/o+X7HN0o8pNRUCaleEl/+hhlZ4ITogdoH+tM=;
        b=QkBMPj/5O/7PGt4mHJF/b1ZvNCxVr7esH/XyF4HzVoh6cmJm4spKZZcGZuLQszYKZ0
         I+o20Ek0AhKd0pbfYd9QXCtYIe16C6L244BdViTRXyH9+uZ+OHp3aUjoZXVMaGAfj7Bv
         a4AKrlunuuTKYDkuKChK07U1VUH1D5YR60snf5XXwWECVL3ynPAgnplIX5tBKQsOpnTX
         pVy+8KTmw1hRrYXN0wbTbnd4mK6EG4EJygFcWw+v7IkvgdIvD5GdNjBLyL6hQo6015g/
         sdrXPKdeIydfCM12c8obp4eFLT0TuOPbWxbtKcp744rfneCpegC3MDHu+/u0ouss7AjX
         9paQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsTQzxra;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a1si212616plp.2.2020.05.20.10.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 10:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id f6so1752070pgm.1
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 10:16:21 -0700 (PDT)
X-Received: by 2002:aa7:82d7:: with SMTP id f23mr5685263pfn.198.1589994981193;
        Wed, 20 May 2020 10:16:21 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
        by smtp.gmail.com with ESMTPSA id t188sm2544922pfb.185.2020.05.20.10.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 10:16:20 -0700 (PDT)
Date: Wed, 20 May 2020 10:16:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: linux-input@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] input: i8042: Remove special PowerPC handling
Message-ID: <20200520171618.GT89269@dtor-ws>
References: <87a7254bxd.fsf@mpe.ellerman.id.au>
 <20200518181043.3363953-1-natechancellor@gmail.com>
 <87ftbv87i3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87ftbv87i3.fsf@mpe.ellerman.id.au>
X-Original-Sender: dmitry.torokhov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PsTQzxra;       spf=pass
 (google.com: domain of dmitry.torokhov@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
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

Hi Michael,

On Wed, May 20, 2020 at 04:07:00PM +1000, Michael Ellerman wrote:
> [ + Dmitry & linux-input ]
> 
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > This causes a build error with CONFIG_WALNUT because kb_cs and kb_data
> > were removed in commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and
> > include/asm-ppc").
> >
> > ld.lld: error: undefined symbol: kb_cs
> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >
> > ld.lld: error: undefined symbol: kb_data
> >> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >> referenced 15 more times
> >
> > Presumably since nobody has noticed this for the last 12 years, there is
> > not anyone actually trying to use this driver so we can just remove this
> > special walnut code and use the generic header so it builds for all
> > configurations.
> >
> > Fixes: 917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc")
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/input/serio/i8042-ppcio.h | 57 -------------------------------
> >  drivers/input/serio/i8042.h       |  2 --
> >  2 files changed, 59 deletions(-)
> >  delete mode 100644 drivers/input/serio/i8042-ppcio.h
> 
> This LGTM.
> 
> Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
> 
> I assumed drivers/input/serio would be pretty quiet, but there's
> actually some commits to it in linux-next. So perhaps this should go via
> the input tree.
> 
> Dmitry do you want to take this, or should I take it via powerpc?
> 
> Original patch is here:
>   https://lore.kernel.org/lkml/20200518181043.3363953-1-natechancellor@gmail.com

I'm fine with you taking it through powerpc.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Also, while I have your attention ;), could you please ack or take
https://lore.kernel.org/lkml/20191002214854.GA114387@dtor-ws/ as I
believe this is the last user or input_polled_dev API and I would like
to drop it from the tree.

Thanks!

-- 
Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520171618.GT89269%40dtor-ws.

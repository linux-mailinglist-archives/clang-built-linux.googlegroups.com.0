Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIP4WGEAMGQER2LZ6TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E93E1FCA
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 02:11:14 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74sf7801951ybh.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 17:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628208673; cv=pass;
        d=google.com; s=arc-20160816;
        b=sljtRyUbeXjlTC4T3ua7xFNPvvvxnmZEYTn4nQRA0NovK3hIiC6c5Bx+EGgbJb8ksk
         Qwo8jBQwCQBnTSBGvU72YmKXUJtvHLPvftJ38+gBaMGG7QKynflaqrl8Uf6CCdLZEAET
         xtC524a3cgsyZmAFMaBDZAF5p/nW8KtRqJuKuHxoJoCP65O/EQTM9R2MOvNne0IkNDQA
         BvJt4Ebtq3C5MVl4/5zLqljO6eJo0dwP17ti1pzuuMavIG1+laaZbuFinmv666qSmv5S
         BLq4Rz2Ug9uwuo+2JiYDOM0CJiPeSdhPEF91pHP6L5cGxueTEaJdt/UO9oUDfSkPK40J
         nyNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=JN4gTHxd4kIOyojLwKLcDth0K4nVZHQjkF0PxMy5dlo=;
        b=ErVML8NcN8oOIDQjfYYQFkIsrg181a6JR9+KYOjYT0Nh61/KG/LmmRW1KfG6JDm/QL
         0cKN2WRrqgwdZ10bT38i5b1KuYOo8lcUUGZc5go+Z0G81uSErEJhJHw1I6exM2a11JFF
         cyKISsF4icunrJ8lWDDOsaN661mXuAl66IGaAbjEMvS5Lk8jk3fNU2klvoQrUs1ydSHN
         ffYYtYaQmlIsvHKmk6gEDr0z/QUo985eFRcUZ8P8/XgAK36u8H47ULSlM1W38Y+eecn8
         ctIT1Gdn0W2oQ4ga7Z91an//XzskbSHlbcJv0m6st4dVJVkVC90oLTt7h1PmeWm7dxOG
         Fw3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="j8pg/eWT";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JN4gTHxd4kIOyojLwKLcDth0K4nVZHQjkF0PxMy5dlo=;
        b=fO2QT/D952eEUIOx/RqdizM6+dtllANXdxUuNR11oTp1PGMn0VH93QF01qjNGz69ti
         9Hmi7iAq+BMyNY06xzxPKG7QaWM2vB1BdW2S1V6G8TVV9zXpBs8gu8BD0fKQxL5IwrNm
         GegZjFJLMVCxMGEw2sHGQtfLS7mRl3cyasVjoSi3jDR9SutkwcfkrklOiY41Q2GvmLsI
         n1YEQisXtJWLCAFF30BOgKZgSDe01a1jxX2swXRhUGsK051PjIt7unlFt1S3mK8bKB1j
         59GGuSxTPGWwvN19IOMNzU3jPZqQJY4Xmt0CEBRsbwhtXAmq9ABQCtODLgEeWlgc62/2
         Ia2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JN4gTHxd4kIOyojLwKLcDth0K4nVZHQjkF0PxMy5dlo=;
        b=sh47OrcQn5sDYgmKPWH1QpH4YmeWpuPVHngWj0Mah7CcwrjQe0g0pu6niOwF09QEKi
         VfsRyX3qxBSV76bESmzDi27YltULu0njrS1LLgUouCJOE5yx3um4vOkmZ2+LxG2bwT1u
         pIMsDn9O+nwe3ErczmCC9vZ484GqVyv+OEWkuCOYsH+yt7m+RvwlLuwNjdpseK3vBUfq
         BWauXT8qxUkTu5u4d9ekWCP1xFmMJrNBi7ZlUtvVNkEuZm08SKjlD1nr1DrmMJ1ALRD2
         lN0cEP2sbSCIVmE1M5T+HMvhM3uBmRvzAxntrGR9+samlQchow9ch/oNxU5vY3aKRpa8
         M0IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EzOMy5n57ED3h1U13IAL/+mCj3WLgt7Vb3JAVmYSLW/xp+Ssj
	B1MH64yldNGd4Dq9/+3Aobc=
X-Google-Smtp-Source: ABdhPJzUtJ2Cnc+vEBrsQWfDJXh8lww9uXBbxUUyf8wnCpSoE6oOUR1FChgn8CdN1bxwqEdP2djbCg==
X-Received: by 2002:a25:9a44:: with SMTP id r4mr9522338ybo.419.1628208673188;
        Thu, 05 Aug 2021 17:11:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls3557794ybc.7.gmail; Thu, 05 Aug
 2021 17:11:12 -0700 (PDT)
X-Received: by 2002:a25:d290:: with SMTP id j138mr9963143ybg.151.1628208672726;
        Thu, 05 Aug 2021 17:11:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628208672; cv=none;
        d=google.com; s=arc-20160816;
        b=iUe9HLfijTK9aBKI2JhvZMALQ4DSEFnwZUCthK2iJeNdS7lNKEdxRJl1qPH5y6N3rm
         e7BGRfu8xeuQjjoldTJgVOpKPh2IjrKfnpV2Jq1GIkYe37j/euEBSk7fvsp2BEY2aexY
         e3fcQGr0hVPvIlfoFngo4VINuGKIjbDOyMeimXyhs+Nv5du7j+B9GBMH26pHFHNDaIOQ
         Cn8PzWvHrJtqyadXbOFBYTfbCKJXGt6IHzN7RfdUWj3kY+IVuFzAOf1/dbAewCP92DVX
         0Jy6EH6w6MHVMnCrMDUb2ERcIWeS5/fj8daPhQxXz6EA+a88UJdNwGhdkQ/yiGxA8R2E
         qcNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TDwi/QQ//E0NN3BD8WX4aAcrBfATWZCjDsgXiJlRZmY=;
        b=z4g7vqld0C7GGUTMK/7HqJ5MbYwirY3s/yXmsD/2KX1FaCd5iED4FSlh1UBDLoi6OX
         B5VDT6OIz4PESAU6ZivHWiY+Pqjlo9/ZK909Ml1Z8Al4blcxKgVtEqec0YBBVPh1mQSX
         lwQOxYuSq5WqWDtCtaMYl5e/R/gm9t/R2DtjRepP0zOQuCNKk2Ny1OuJc7jXUNIGViVb
         MtSetnms2CYUkski0s/XoNr6Gq26p9oONfhlME8M3d8pQ37oljYtRGtfE8wURt2A1XyF
         Blx/s4bokYH8oN8/0teF0WpKsh2GdDJgNh99VwCWWCpYySmRNXz1u9D2iEXVukehuDD6
         dHWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="j8pg/eWT";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si592303ybb.0.2021.08.05.17.11.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 17:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DFAD960F25;
	Fri,  6 Aug 2021 00:11:10 +0000 (UTC)
Date: Thu, 5 Aug 2021 17:11:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	stable@vger.kernel.org
Subject: Re: [linux-stable-rc:linux-4.19.y 1181/1498] ERROR:
 "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] undefined!
Message-ID: <YQx+HjjUrzIEkG/O@Ryzen-9-3900X.localdomain>
References: <202108060412.oMqAe0rc-lkp@intel.com>
 <CAKwvOdk6PNK1unJ2Yym4WHV=AXjdYwEyfWf_fPxO013ZtJa6Yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk6PNK1unJ2Yym4WHV=AXjdYwEyfWf_fPxO013ZtJa6Yw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="j8pg/eWT";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Transfer-Encoding: quoted-printable
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

On Thu, Aug 05, 2021 at 04:23:40PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 5, 2021 at 1:24 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Nick,
> >
> > First bad commit (maybe !=3D root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-st=
able-rc.git linux-4.19.y
> > head:   7457eed4b647560ae1b1800c295efc5f1db22e4b
> > commit: 7c29fd831799d09474dfdae556207b7102647a45 [1181/1498] lib/string=
.c: implement stpcpy
> > config: x86_64-randconfig-r024-20210805 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 31=
a71a393f65d9e07b5b0756fef9dd16690950ee)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-=
stable-rc.git/commit/?id=3D7c29fd831799d09474dfdae556207b7102647a45
> >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/l=
inux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-4.19.y
> >         git checkout 7c29fd831799d09474dfdae556207b7102647a45
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> ERROR: "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] und=
efined!
>=20
> ^ I'm actively trying to improve these diagnostics in LLVM at the
> moment. Hopefully that will make this report clearer!
> https://reviews.llvm.org/D106030

It does help :)

drivers/gpu/drm/i915/intel_engine_cs.c:466:2: error: call to '__compiletime=
_assert_491' declared with attribute error: BUILD_BUG_ON failed: (execlists=
_num_ports(execlists)) =3D=3D 0 || (((execlists_num_ports(execlists)) & ((e=
xeclists_num_ports(execlists)) - 1)) !=3D 0)
        BUILD_BUG_ON_NOT_POWER_OF_2(execlists_num_ports(execlists));
        ^
include/linux/build_bug.h:21:2: note: expanded from macro 'BUILD_BUG_ON_NOT=
_POWER_OF_2'
        BUILD_BUG_ON((n) =3D=3D 0 || (((n) & ((n) - 1)) !=3D 0))
        ^
include/linux/build_bug.h:69:2: note: expanded from macro 'BUILD_BUG_ON'
        BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
        ^
include/linux/build_bug.h:45:37: note: expanded from macro 'BUILD_BUG_ON_MS=
G'
#define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                    ^
note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=3D0 =
to see all)
include/linux/compiler.h:336:2: note: expanded from macro '_compiletime_ass=
ert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
include/linux/compiler.h:329:4: note: expanded from macro '__compiletime_as=
sert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:83:1: note: expanded from here
__compiletime_assert_491
^
4 warnings and 1 error generated.

As it turns out, this has come up before and it was fixed by commit
410ed5731a65 ("drm/i915: Ensure intel_engine_init_execlist() builds with
Clang").

Greg and Sasha, could this be picked up for 4.19?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YQx%2BHjjUrzIEkG/O%40Ryzen-9-3900X.localdomain.

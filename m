Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBUUE62DAMGQEQCWLAHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0649C3B8F23
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 10:52:36 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id d24-20020a5d95180000b02904f1970a0af0sf3947937iom.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 01:52:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625129555; cv=pass;
        d=google.com; s=arc-20160816;
        b=IkjV1Z58cW5k9Ioy9Sq1swm1HUxz1WqNBLVH2SVAhNPjjTbsFNkGyUuOCDK5NZQ0T5
         MEUmZS+WCGMtPdUJtr0JLDe+dj+2gV2mARp2lRBsZeKGJM4oGOV63SYggfSPZ99+bFt9
         OAcySszihjoBF0sbcUXPmtsmk8opLQDhN+gh8+Ai0r90yKmJjozcz0UvAvanb07BhDbV
         Iv0KItTBgcBDjDrrwDXs8S5aTCfmQMlf577DgMwl65FCKjkMy0Dwc4zf/SZQPiM9Q3YJ
         xgc9r+MLEufo79kaAfNNhOVTCUftjZmcioD4VwdMYYJSQesuZ6bslGqSXqo+IW38KJw7
         vO5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AG7pfLCbjgROiGpmS6mnIhckmDR07t1KUcRDR/KGe0M=;
        b=BnP/m0ljCXrYuTSZqKNHnNeOcj/McEeauULmFzbTrgVMwC4p1xYxOGU1OBj+lJBPno
         fPl0UjIJpWYCNzAFKbqmml/PaeyA7acShMvlIV/9p5TgzR+eLRa8k2nukG/YPb9KT1KG
         qA8LC9VUpQvQqq12ibQha2wbGVdNaFrN7K9anv7YmfksVRxKLxyJZo9K7uY34UG3PNg1
         7nzwJ6C6Z3bTyfwrtwegaKFwubHq53LthLnxtCZnH/GILXB0RrBJC365P8u4/LM3qArL
         OmFk6BOnf8wmoIt9icytedys2N0xkAcsme4jdb5gR71SNs8PwurNljUDgiGcg7Um28oh
         VpFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AG7pfLCbjgROiGpmS6mnIhckmDR07t1KUcRDR/KGe0M=;
        b=OdjxgiZqdRmJ/LsywV5sguz+ae730jXxgLJAzbsXEmUcgmIRphtPXukY3ecWlHWbJZ
         uq9F/3nilDoWXyKejSKxGmLrLAk9jLxoCPBmkCAFyCCe1qbVhKmthA65MgC/NHcbnCuj
         wigW2YMu+ZX5L1ie6pQ8xCuxTgL+f+atGbN8e+mcfM3AcrOl4S4S4kK4wyvti3NtQ6t/
         Xdx1y+2sR/kMdz1FzMWG/9J74IdTfm06oSGEVhyX61QISwHvjnzweIdh0HMVQYdGA0bc
         KbvWQyFypXR77BD14DGd5Nm1gQuwv4EeShCtmdIvoE0NSI5/7It0e8eO3LW0EbfBhLoT
         sZpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AG7pfLCbjgROiGpmS6mnIhckmDR07t1KUcRDR/KGe0M=;
        b=UAyU0i4dTAIS5qrwetxm8EuAdAEy4w9RF+ajhKCQqtGvidqDuDlo0maq5Q5qtDmcYn
         zi8WPHLdHRT6w51sYKvA9WXos9dIFa2vUWOFmKZJssoon/uIDc3x6azOCqRpyRBEmSDV
         KlQ39ETyB/NiyX6zzqZ+jXYuy5S2L+BWvh7MefY74ToGehe/dKaZEZymC//+aP7wvXVO
         obWckUWtwLZwoFjPoLVDMPMmCd1IvwY/W4dpvLfeuCbbe1joRsLhubKrtTOHo79kjJSU
         kkZWYhXleQBqUoR6b9XetiQhffFwFnCf2eaMvHLk7QGXtgV3e0MbkkI4bEtBYimFagQf
         Afhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OalWpqCMQBK1sKvrfKWhmb4Z72FOfRt/u2WfmD64VWO8DO2iR
	IuGqHJFqcW7DfhCd41l1Y5c=
X-Google-Smtp-Source: ABdhPJy4iSdL7ZiQ0vdkscRKEXZxr1DH2MQGouy7AanwjM/rzRs62FznHUtUStbLiXIK6ezEhsjqVA==
X-Received: by 2002:a5e:d911:: with SMTP id n17mr11763355iop.178.1625129554858;
        Thu, 01 Jul 2021 01:52:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:a90a:: with SMTP id c10ls1020560iod.5.gmail; Thu, 01 Jul
 2021 01:52:34 -0700 (PDT)
X-Received: by 2002:a5e:9306:: with SMTP id k6mr11945303iom.157.1625129554456;
        Thu, 01 Jul 2021 01:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625129554; cv=none;
        d=google.com; s=arc-20160816;
        b=jgg+W/vB486GppuMyXVZHM4/YoHYmNrk0yZqfqAc6KMh2XlB5UALpyyw11maiRSqyC
         ASnC/Zr8qKIKJEcCEXjYa58ZC2Bbi1Me7oFvYcDOMChMjNsctt5W/45ZYJgq6PYjv8dN
         boQhShsoQdniP0XFZURM6bbRmbtJOY4XfGQvwn90ZBQ4GxZokK4Gbd0npK7P4eKrvrIO
         R8/5iscx+bvujwtEyNCVDe/X4oxXAQeEzEufuD9MP6S4L0AD/sHsJBXPYDY1KBDxlG2r
         Qw5/oAoFd0nugnSLwnzoc56GzbWb1XB+6la5s6r7uu8o2+9G8suUGxcGATWn7KKKbRrB
         FCkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=Eobfwfld61LFCgjzO0hNzGP6yPCWjV45SAzF3igUGfA=;
        b=xSYtQWQeIDNkL52liB3yg2fC69yVpdaZB4QvYHBqxBR8IO9nESQLNCgyxmaYtN3fCM
         NUl9h6mxWooofPYaNwEtkJSwryydEYM5j1V4DgbbE6URw1r69D6tB3ck7Hu2cgZLahzJ
         KrqA6MfRcwJJnXTguoxO9sthSV7RdHAmJpEvd0538Mhkip+Sp8JcuG7gR33hqb21tGMT
         YfxH0AVczuowfnLSpK12u4ni7763vETGOO608CSrkxo4QoGxXNojP3G2e48WIIy6Xppd
         E3oe6x0Z6fZR375I6Yjaxh9oxBkQBGzMwB3VQ8mdxwbXNLYSy5H4IqTz8Y45x3e1+z2U
         49tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id x4si2561569iof.3.2021.07.01.01.52.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 01:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 6c2bb18e6e534c00ad876bd29950ce95-20210701
X-UUID: 6c2bb18e6e534c00ad876bd29950ce95-20210701
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 873094388; Thu, 01 Jul 2021 16:52:31 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 16:52:29 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 16:52:29 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<lecopzer.chen@mediatek.com>, <linux-kbuild@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<michal.lkml@markovi.net>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH 1/2] Kbuild: lto: add make-version macros
Date: Thu, 1 Jul 2021 16:52:29 +0800
Message-ID: <20210701085229.32761-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <fdcb8b80-00dd-dd59-1283-836736d4a773@kernel.org>
References: <fdcb8b80-00dd-dd59-1283-836736d4a773@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> Hi Lecopzer,
> 
> On 6/30/2021 5:14 AM, Lecopzer Chen wrote:
> > To check the GNU make version. Used by the LTO Kconfig.
> > 
> > LTO with MODVERSION will fail in generating correct CRC because
> > the makefile rule doesn't work for make with version 3.8X.[1]
> > 
> > Thus we need to check make version during selecting on LTO Kconfig.
> > The MAKE_VERSION_INT means MAKE_VERSION in canonical digits integer and
> > implemnted by imitating CLANG_VERSION.
> 
> implemented

Thanks!
> 
> > 
> > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > ---
> >   Makefile                |  2 +-
> >   init/Kconfig            |  4 ++++
> >   scripts/Kconfig.include |  3 +++
> >   scripts/make-version.sh | 13 +++++++++++++
> >   4 files changed, 21 insertions(+), 1 deletion(-)
> >   create mode 100755 scripts/make-version.sh
> > 
> > diff --git a/Makefile b/Makefile
> > index 88888fff4c62..2402745b2ba9 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -516,7 +516,7 @@ CLANG_FLAGS :=
> >   
> >   export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
> >   export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> > -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> > +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
> >   export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
> >   export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> >   
> > diff --git a/init/Kconfig b/init/Kconfig
> > index a61c92066c2e..9f2b71fdf23e 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -83,6 +83,10 @@ config TOOLS_SUPPORT_RELR
> >   config CC_HAS_ASM_INLINE
> >   	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
> >   
> > +config MAKE_VERSION_INT
> 
> It might be cleaner to make this "config MAKE_VERSION". It will not 
> conflict with the builtin MAKE_VERSION because this is really 
> CONFIG_MAKE_VERSION, which is how MAKE_VERSION will be handled in Kconfig.

Okat, thanks, I'll try and fix it in patch v2.
> 
> > +	int
> > +	default $(make-version)
> > +
> >   config CONSTRUCTORS
> >   	bool
> >   
> > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > index 0496efd6e117..f956953d0236 100644
> > --- a/scripts/Kconfig.include
> > +++ b/scripts/Kconfig.include
> > @@ -63,3 +63,6 @@ ld-version := $(shell,set -- $(ld-info) && echo $2)
> >   cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
> >   m32-flag := $(cc-option-bit,-m32)
> >   m64-flag := $(cc-option-bit,-m64)
> > +
> > +# Get the GNU make version with a canonical digit.
> > +make-version := $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
> 
> It might be better for this to just be used directly by "config 
> MAKE_VERSION":
> 
> config MAKE_VERSION
> 	int
> 	default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))

Sure, I'll fix in patch v2, thank you.

> 
> > diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> > new file mode 100755
> > index 000000000000..ce5af96696cc
> > --- /dev/null
> > +++ b/scripts/make-version.sh
> > @@ -0,0 +1,13 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Print the linker name and its version in a 5 or 6-digit form.
> > +
> > +set -e
> > +
> > +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> > +IFS=.
> > +set -- $1
> > +
> > +# If the 2nd or 3rd field is missing, fill it with a zero.
> > +echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701085229.32761-1-lecopzer.chen%40mediatek.com.

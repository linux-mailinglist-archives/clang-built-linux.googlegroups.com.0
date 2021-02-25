Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQW336AQMGQE2PHEI6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F232558C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 19:34:43 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id e9sf4865659qvf.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 10:34:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614278082; cv=pass;
        d=google.com; s=arc-20160816;
        b=uOEYFAl5dTn75ysFpOua3J5I9r9Co6eOwwO8eTNG53B3K2Uf3rQe63e1LSUxqwlqga
         JA/GuvoBCpGWE0UxfoFMbYD8H3SurFaC0Q4aIoUoHI2gHrL7l+uVIlybdvAtxmbxw4Wc
         Oe7IL3KkVtjeX12y59e8/Pd71a6RBExn6zeJYQ3dbEk8zRtcwLaHnsPaqOTc3e0MmR9C
         Rh5mMyB9oIV7vGAvLG3s8vSRVRUFHIwzBRsy+7HfZ1VAsWKGI2n/NrezO15xUqoCVYtb
         Zc4LbB8q7AygsqH0EQlzsnuevdT4RkwYFcFkwGMwvu9oRj4bf10YZQf4xQCBBT+wMjeL
         AsNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=/jwY/nJdzAV6lj374r/XwyA92WYckPQUH0XhhPB5lmc=;
        b=cnKMxK0AIdQA0x+80IZzCJQKYTN5PJi0ZNjJT83PIcERwhuvE6ejH/u+Spo0fkFqVQ
         fA5MOyvwXhDaTLcTUiUhGM+T5R2G5kyNWZp2c1rNByeDeGnefO6ujoM+Vr9yAdb8osSi
         wOyP0Ce7gicgeQ96lYqFmCs/6uZdMBcokcSupmu4gg7IYVCkJhlRXPb8sEmAQNUbt1DJ
         thuFXd/epCZ1ivVifYa1oX1MYjmU93oK6FsAwviRUojnU925tBkevxZasZXTvEnD3wC8
         FGVBZhS+l4jJnowQL1KRHCGesHND5T4MdUuBNykcTTKN79H3gFLqGXCD5McVObo8KCCC
         TzVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iYswuWlR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jwY/nJdzAV6lj374r/XwyA92WYckPQUH0XhhPB5lmc=;
        b=i9rnJeSwdDChUWudxgWV1Onh9nmgeTAdLJG+aJ5lZWiiss5BBPvOhfp8lcQ4VT6MM+
         kIEwLhT9j1xYGv/LV61YgggQMBeGavnG0au31SClWA8ZkG1j24IltXTxYSeQFbb2YIAC
         31gmyyzyaf2nnEC5owufdMyXyARiRDT9n+HtO6gT2cF7KklV3MviJr76OZj3tLS0w33C
         TblueDcAHHqpStP7bEacuxjANVryCRV8ixAPJ01iMGYG139icjBIYg0DuZQ3m6eNhFpz
         KE5KEkbUV2lVQAXMy6zcyfMxwJtzIPYOV7QvLOPzurW3sAX+aMHdkBgLECwNrtS8TbMa
         /FSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jwY/nJdzAV6lj374r/XwyA92WYckPQUH0XhhPB5lmc=;
        b=DISRWZ+0ZiZkLt3PbWyOR4ai9ZQrOcYW1nj/UrrYXZdfgXxNuGfDdd2+EbADQ/0/iH
         eUutbhLlngSRXe3nExkq+sSIekdKKljN2iV+e2CHelSqMdAxcsHRoCDd71mH7l8ymUis
         +56FLkvnPyk7MT4mjOtKjm8IlVFSKTlgT4oJixbLEF0Kd2+bPdWFNYOGXIBJpuzkrhzV
         ogGuc+bow99g0QUvD4oQ6PL+C+wV+9AZMf6Y8hHfIkE9oMGW1DGRXI/jfG6GNW1kDWSC
         nfx2gqiWv9qEA6AC6AXKwPXzDxC/xCdlyfvvcIJr1OYBofq8W4laTgA/W+2IAwbEn5B1
         POQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329zvSaUO73BN7Wj4dn/DZIfP3oKtVwet/Jo4ptX/9Iyv71F7Mj
	lVFsS6UqdexdLN43yGE1HiI=
X-Google-Smtp-Source: ABdhPJxv6ghtX6GCpbameoEOncssBShzZFOjLzIAJo/ojFVNnU+GVg5nNgFANAbAnG4oAkfGmmHVNA==
X-Received: by 2002:a05:6214:20af:: with SMTP id 15mr3965197qvd.42.1614278082619;
        Thu, 25 Feb 2021 10:34:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4cc:: with SMTP id q12ls2483837qtx.0.gmail; Thu, 25
 Feb 2021 10:34:42 -0800 (PST)
X-Received: by 2002:ac8:6e86:: with SMTP id c6mr3704289qtv.203.1614278082203;
        Thu, 25 Feb 2021 10:34:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614278082; cv=none;
        d=google.com; s=arc-20160816;
        b=prCQvLDfOn8jbCeSbVwipgpqfM6H0cDNQYl2d3ZUfKkdzzlXfZyrReEaVYAJUMHfZE
         1CW7Gx012FDRWxX+ZYQC4XuWGWKBBye3XvFMPxrIHRrED78y04Z17WZuEh7pAjC1DteM
         GBHtJHWvNJWz9+KeZISWCB7BLMjtrBwjRlHKGroE8yKPmDRvUb3euqCGH5ppxDcey1rT
         ARFnP0uxqbJ3VfJ5SpThkl9cDgM9RxZ1jTLRdvhwiqu9qvtuD7ZALI8ViOj6k3vT6Ba7
         CSUdAKPTaKZmKMktQilxmBM18KzH2tlqw9YN5av/LeaWuOLHJwEXoAmNJQyfiYi5b5Kd
         ipiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=S9qiBuK/ggjNBGo2KcrpEdiEw9RfF/8IHqvDxAtuLao=;
        b=ttE95omqP7soB4WBHf29IzUXmfslr2+naoev6eB6fIijmUw/Xo81rpmS5szqr6mfRa
         3rstGj/cXbax9beKlnO08xxIPN4jR2kkcCI1qmN1TWOGiIVtFrMkTaw40vzAOcx/3P8N
         w8i0WvM18lcmbu72QtpqJVxWrIFNqy0clat6kwoW6ayAFOdiEnJYxmbAV8MvSJzWsrn3
         AXXLdPDiWkx93IiRGnVH38jiH78+lWwocjVczp+GXyE5U7Fj1PXHWWkAqxX9RSODaBzj
         qQBYmkY2J95IjeG3hTjkcACKbySrYqmj8nEtTUhuyE9Iqmc55jufl2YRr2yZYycpQ+CA
         ZetQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iYswuWlR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si338637qtb.5.2021.02.25.10.34.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 10:34:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2C13F64F25;
	Thu, 25 Feb 2021 18:34:40 +0000 (UTC)
Date: Thu, 25 Feb 2021 11:34:36 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: =?iso-8859-1?Q?J=FCrgen_Gro=DF?= <jgross@suse.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Borislav Petkov <bp@suse.de>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [kbuild-all] Re: WARNING: modpost: vmlinux.o(.text+0x1a8edb8):
 Section mismatch in reference from the function stop_machine() to the
 function .init.text:intel_rng_hw_init()
Message-ID: <20210225183436.GA1349@MSI.localdomain>
References: <202102242224.Cpiog92Y-lkp@intel.com>
 <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
 <a7013b23-af0b-e1dd-324c-904a536d9f01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a7013b23-af0b-e1dd-324c-904a536d9f01@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iYswuWlR;       spf=pass
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

On Thu, Feb 25, 2021 at 04:17:21PM +0800, Rong Chen wrote:
>=20
>=20
> On 2/24/21 10:26 PM, J=C3=BCrgen Gro=C3=9F wrote:
> > On 24.02.21 15:20, kernel test robot wrote:
> > > tree:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > master
> > > head:=C2=A0=C2=A0 c03c21ba6f4e95e406a1a7b4c34ef334b977c194
> > > commit: ab234a260b1f625b26cbefa93ca365b0ae66df33 x86/pv: Rework
> > > arch_local_irq_restore() to not use popf
> > > date:=C2=A0=C2=A0 2 weeks ago
> > > config: x86_64-randconfig-a005-20210223 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> > > f14a14dd2564703db02f80c00db8ae492b594f77)
> > > reproduce (this is a W=3D1 build):
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget
> > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cr=
oss
> > > -O ~/bin/make.cross
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.=
cross
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install x86_64 cro=
ss compiling tool for clang build
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install bi=
nutils-x86-64-linux-gnu
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # https://git.kernel=
.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Dab234a260b1f6=
25b26cbefa93ca365b0ae66df33
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags =
linus master
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ab234a2=
60b1f625b26cbefa93ca365b0ae66df33
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached =
.config to linux build tree
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PAT=
H=3D$HOME/0day COMPILER=3Dclang make.cross
> > > ARCH=3Dx86_64
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >=20
> > > > > WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section
> > > > > mismatch in reference from the function stop_machine() to
> > > > > the function .init.text:intel_rng_hw_init()
> > > The function stop_machine() references
> > > the function __init intel_rng_hw_init().
> > > This is often because stop_machine lacks a __init
> > > annotation or the annotation of intel_rng_hw_init is wrong.
> >=20
> > I'd be very interested to know how the identified patch would be able t=
o
> > have this effect.
>=20
> Hi Clang Team,
>=20
> The problem is found by the latest clang, and I can't reproduce it with
> clang-11,
> could you take a look?
>=20
> Best Regards,
> Rong Chen

Hi Rong,

Known issue. LLVM 13 cut over to the new pass manager (NPM) which has
changed some of the inlining heuristics. I would probably recommend
cutting over to the "release/12.x" branch for now, which should be more
up to date but also stable.

Additionally, Arnd sent a fix for this particular warning here:
https://lore.kernel.org/lkml/20210225130153.1956990-1-arnd@kernel.org/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210225183436.GA1349%40MSI.localdomain.

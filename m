Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBTHXWKEAMGQEGK2YIZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4263E229F
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 06:34:21 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r14-20020a6b440e0000b029057f73c98d95sf5017150ioa.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 21:34:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628224460; cv=pass;
        d=google.com; s=arc-20160816;
        b=uM6TPFIidSbpV/n47npoi+iLvwOmuoHwSFNJzhBYpRcsjBkVw2xtg1y256qXN1SVrI
         U3Pi60yFiVIm3tknrdiUS4mWel47i7pt/uHlzjOR9xUPBOELWN0BTADHeflefP96/QTI
         QQhFs8Zey6/dJnGr9dXJI5C1tkvfTXS+9rJfIDG7GIqQZPPaRyc2bJ1Cb4G2pLHnIEDN
         Ywj3gMxrn8Cvkl77RoPoERwS/tsPtSHwGRp8sc9UcfOiRyWQe3s08NYwW9cTiVbmO5An
         MLiuK4lu5K5+07Bdp55cnsRP7JOHTK7+xLWwZmS65Yv7SS5dHSTh5aJ/ObgwcGwPVJzN
         tbHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=kBtX71KMtDJAbyiZRig3huWgk1thxfaMiF0m5yG45Ic=;
        b=XMK3lW3IHeDoS/38eXkeA8k/1NBb0iwqOg86QVEBg6dPDtwnER3mD7D6ZslVmqbNhG
         yIer0ldXJ4sY+pKETN2lAK5ni861remQkKJqWNrlmX4ZvGXWHB+ybQrscN0Tqs+RxiEx
         9HdHg2OAO0jgwbMqr8Jp9AvzHuMpfNOmredhVjK/tPuNjBCupsn3WHPCTOrPMv2FiTcV
         ++Sfpm58/9PSxQC1jJ36DnPSiVn9afl/oZcPQeCIIHRYgbgvzJMS+wwQKiVBUP2E2Of+
         +G2bGVxd5VeUFl09p/hXg+PYM77wUl8z9gDdrNUOQaykValNKcqeOnhdohIWA2A4SoMf
         /9sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iKcNBC8p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kBtX71KMtDJAbyiZRig3huWgk1thxfaMiF0m5yG45Ic=;
        b=TCXQVWWdSAB8TXrlSfISYwZD/l2Uz64JoEoQOPfv7waa4YbH2Z8006xePAA/Qo+HKM
         J2IEHpY34mC3Fja7l1hVHx6rd+zO6+ZGeB/PkuL40IEqKdUC5YdF/n5JCQLomGp8yHc4
         GGvuVkPv6WOVBI8ysv59kImAIQ1K1UKqw3NDjwIf63Rk+mWC7bGDZ33qEeGmL7tphFQE
         5tgh6eK8CUXmjLuxEo3EyJrWBfjcEfXprVfIPKr7hohu/1Ix4EGvXlA/czgmJCYPF0Tr
         kqRNS0QoPAranjpnR+OeMSWfA8eDHR/N0pGoOSrF0XrecyYp6taKKMdl/1T6DqoZZ9o+
         hxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kBtX71KMtDJAbyiZRig3huWgk1thxfaMiF0m5yG45Ic=;
        b=rWAzSF7mTPoE/yv34VUhA3TTRGV3RJUQ8CTLiZDE7WZGFkbzSCnzkDIoe+8JNMqPZS
         CeNne+XZ22D13LFmB4BQgRh6+8ebFrlC0faN1xN0d1LXPHKk+M5O5jzv7bSADX7PaNoq
         PE2i/GoCg0hnNb7LobnxUHDbbEUXQSNgj4eIFbTK3/KD9w+I/r/i/utFVH4nAHFFbd0b
         94tR997ZcKFEjFcYIoL+BGHbG35HPWJ906DVz83TALM/BlOXa+On0cKz4c0qs8WdVHji
         oATPbvsXuDip5S0sD2E3kSglJAAjsBuqpLQ9TKqBQy5PYNo6c77DfpaUNw8DvrZ/Ugd/
         SAAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nF2t7vx3XHV66X2YKNBvK7uKzWUZ81HrphoET2JUnteDmehbu
	ubghBUx+gAp2hcZO9btj++8=
X-Google-Smtp-Source: ABdhPJxZ6Ss/8gOxWrBtCkfY3PE+LjoyYQdO0tOMLNBoGuU3ni2XuXz9bAwPrGboLV2VwR4F97rZVQ==
X-Received: by 2002:a92:cec5:: with SMTP id z5mr987455ilq.226.1628224460500;
        Thu, 05 Aug 2021 21:34:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1013:: with SMTP id r19ls1055414jab.2.gmail; Thu,
 05 Aug 2021 21:34:20 -0700 (PDT)
X-Received: by 2002:a02:698f:: with SMTP id e137mr8006992jac.89.1628224460165;
        Thu, 05 Aug 2021 21:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628224460; cv=none;
        d=google.com; s=arc-20160816;
        b=NZylUYBL/vZ233OFBIAykzLY4xdGFJxy2vGVTBf4B2mGR8HopIYx0WT3ftbAulSwd/
         oLOzfOxZO+pYsTYgMVwwG/OEHTmvRdPm/NSZyDdypmlBfukEEyQLGou9zsD7HQakk3BL
         1vpWBkLyyLTXaBRH2S5GDdFuZ0FsaJw30GgeWVA9D3Ia2RrRu8gCEqOR5DeSodV7HQqY
         SWfDeHP1YO7044D+/DD0Ykwow7AIL26GylB0sOYUY053m+wiK9TmUpmo+ZZmsSgMTrcb
         0QHZnFSrQPBIovQegx5RzPb5gW4A8Dv/7vcV1futJkTXmwCE1ugeSZChYt8yoDJNm5CK
         Xy4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=c6M2NEN1qni9WNq8GBPRgMzcZ6MPywKCCyMs2m2Rn/E=;
        b=SfkKnZERZiuNtG5zDXtWRKSLg+QcXHBh2VQTjAXr/zbWKvxWkZvWXkct1vmhgCGyGe
         ZBQ2r3lgjfzsvScUWkIUyfUw4H7E6fqS6dVTbWP+jX04bjsgATRlUKQK8VEyrUS54Nw7
         MZjV0Co1iv90SMPZkQzJ2hJ0mefuHXPHYbRqHxn2Fc2rNJjzp6RkP0rVYphiTKaUAnaM
         ClDfGJVdDVJkt4PxIz8oobl+dXtgdgPzYCcYqR4j+1f5bOtYyNtHa7y8svMWXkZ+Anoa
         442uJhMthGJBWfHk7Hdc3VRe5HdjpM+I5PHSDhPiGlcXt1VCxhN1Roto5F8WdzNtFwFC
         3uIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iKcNBC8p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si496303ioh.1.2021.08.05.21.34.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 21:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCAEF611C5;
	Fri,  6 Aug 2021 04:34:18 +0000 (UTC)
Date: Fri, 6 Aug 2021 06:34:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	stable@vger.kernel.org
Subject: Re: [linux-stable-rc:linux-4.19.y 1181/1498] ERROR:
 "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] undefined!
Message-ID: <YQy7yY+/+r4X/5v6@kroah.com>
References: <202108060412.oMqAe0rc-lkp@intel.com>
 <CAKwvOdk6PNK1unJ2Yym4WHV=AXjdYwEyfWf_fPxO013ZtJa6Yw@mail.gmail.com>
 <YQx+HjjUrzIEkG/O@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQx+HjjUrzIEkG/O@Ryzen-9-3900X.localdomain>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iKcNBC8p;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Aug 05, 2021 at 05:11:10PM -0700, Nathan Chancellor wrote:
> On Thu, Aug 05, 2021 at 04:23:40PM -0700, Nick Desaulniers wrote:
> > On Thu, Aug 5, 2021 at 1:24 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Nick,
> > >
> > > First bad commit (maybe !=3D root cause):
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-=
stable-rc.git linux-4.19.y
> > > head:   7457eed4b647560ae1b1800c295efc5f1db22e4b
> > > commit: 7c29fd831799d09474dfdae556207b7102647a45 [1181/1498] lib/stri=
ng.c: implement stpcpy
> > > config: x86_64-randconfig-r024-20210805 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project =
31a71a393f65d9e07b5b0756fef9dd16690950ee)
> > > reproduce (this is a W=3D1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linu=
x-stable-rc.git/commit/?id=3D7c29fd831799d09474dfdae556207b7102647a45
> > >         git remote add linux-stable-rc https://git.kernel.org/pub/scm=
/linux/kernel/git/stable/linux-stable-rc.git
> > >         git fetch --no-tags linux-stable-rc linux-4.19.y
> > >         git checkout 7c29fd831799d09474dfdae556207b7102647a45
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> ERROR: "__compiletime_assert_491" [drivers/gpu/drm/i915/i915.ko] u=
ndefined!
> >=20
> > ^ I'm actively trying to improve these diagnostics in LLVM at the
> > moment. Hopefully that will make this report clearer!
> > https://reviews.llvm.org/D106030
>=20
> It does help :)
>=20
> drivers/gpu/drm/i915/intel_engine_cs.c:466:2: error: call to '__compileti=
me_assert_491' declared with attribute error: BUILD_BUG_ON failed: (execlis=
ts_num_ports(execlists)) =3D=3D 0 || (((execlists_num_ports(execlists)) & (=
(execlists_num_ports(execlists)) - 1)) !=3D 0)
>         BUILD_BUG_ON_NOT_POWER_OF_2(execlists_num_ports(execlists));
>         ^
> include/linux/build_bug.h:21:2: note: expanded from macro 'BUILD_BUG_ON_N=
OT_POWER_OF_2'
>         BUILD_BUG_ON((n) =3D=3D 0 || (((n) & ((n) - 1)) !=3D 0))
>         ^
> include/linux/build_bug.h:69:2: note: expanded from macro 'BUILD_BUG_ON'
>         BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>         ^
> include/linux/build_bug.h:45:37: note: expanded from macro 'BUILD_BUG_ON_=
MSG'
> #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                     ^
> note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=3D=
0 to see all)
> include/linux/compiler.h:336:2: note: expanded from macro '_compiletime_a=
ssert'
>         __compiletime_assert(condition, msg, prefix, suffix)
>         ^
> include/linux/compiler.h:329:4: note: expanded from macro '__compiletime_=
assert'
>                         prefix ## suffix();                             \
>                         ^
> <scratch space>:83:1: note: expanded from here
> __compiletime_assert_491
> ^
> 4 warnings and 1 error generated.
>=20
> As it turns out, this has come up before and it was fixed by commit
> 410ed5731a65 ("drm/i915: Ensure intel_engine_init_execlist() builds with
> Clang").
>=20
> Greg and Sasha, could this be picked up for 4.19?

Now queued up, thanks.

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YQy7yY%2B/%2Br4X/5v6%40kroah.com.

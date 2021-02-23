Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPX22WAQMGQE2WSNKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2D1323399
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 23:10:06 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id w9sf9213148edi.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 14:10:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614118206; cv=pass;
        d=google.com; s=arc-20160816;
        b=kAK0pzo9RlI4I/lph2y1HkNvrKYyLke8kKo/lLLwFitY7WsjojAWJi/XTX92Al7BEN
         pOjg1BOidjxhZKyMr2WgwG4Rz4Z6Up5iLcG5IteDvwFCIuF8T3uOS4i5GafjhxwJ6vHb
         l8HF+gHo5zT2mKmPhm8gED+QpZ+BEgRv0RBMyInWR638g9CrLovdCNjDg1lxLvI9Rp5j
         cLyKAT3TQ3zaGgY0tEBJzWaHlqPEdOtSEYCFN4HRlVvdLWEClQf4weT0D6OGsFd17VA2
         C3m/RQFPA6XVdrlwjQ4ytLVE5g4KXfYqNSlQboURX5HapDFQF1hUAgWJfQaoAkuQL5yU
         1ZVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zaIRYAIMF/WjcIb/XkSqfWElEfSoqkfceA/h1CcKs5A=;
        b=ZQ+6mY14hjQmN2bBcY9a42NkG2VPu7Yi6S8a0+0QQHvuFUa5m6Wt67uzLMJS+W/+g9
         CoINLXHCj64q2gL+XzmjqNCuKRM+bkST6RU9CXa0/feJEhhKsXwwP2oQnpR+Gc1il1Re
         k+Yp+XE2cSVFBTJeKx5+fPTO1UmTyUsKOhq0y6Hug9WtNJT6eQEqN1QI9i9YHjPJ0KCv
         yNAoZFANP55Xp67RhhiThsyh5r7y5aHICY+E2TklbFK7ik6k84hjw59TD1zFqLXThXg7
         BwatgI3DM3u+fAl28thScEGzEpT/AspynWeokfQkJNBljIVoHtWxbO8Al5BJnyF6a56P
         8WVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvfHAMJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zaIRYAIMF/WjcIb/XkSqfWElEfSoqkfceA/h1CcKs5A=;
        b=UR1eqWZSDrYZ1EBEtXUJXq5AztIJS9JJ/5dQIFW1PVrjwxjjO+FuXL1HqaaJaKUZVZ
         dU6EfQX4r1B+6bsWuCy4jUtiZ/b0s+BgQC4DfJgcxwrW6slAVsvYxtBkvo3r1NM+ySGF
         XZ5J2IxohLvkRj7yLsy0oOuhmcM0BvM9AGHtTPWC8mXbXUKpmMt42cGC5uRQ9bJ/Pscp
         xPjKGJB8pSttCdMlvcnk48vo2RUJGYRCkXZJcXiXfq4P6dUltXNkdO5u4IiHZ8iNfKnk
         twkQF5pvK34qZQXVDf2IH9u1OKWi64Iz7uVajxs1nUuKBzeLKA3vEQyhBV2UG9m/2G8g
         cVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zaIRYAIMF/WjcIb/XkSqfWElEfSoqkfceA/h1CcKs5A=;
        b=ZMi73tjhuqm++O86vrBX5wUJfYDGq6y5qr/5h/gEaUuVGjAfMtQZkm3G2obFyTqGGR
         reQPkqXJ7zNRfnCyKQrhhCJI3A2LQITqIGXRRO5BXT58Pgffb3+jfpErfGeLm/L2Ygjm
         NDbSR5JE0j99vRmoss9fE5vOLf0WE9Ic+0xabG4jBsI/iZUQXIctvfqtBCiKvOeG9zcY
         mewlqTTDMKuyW1N0IL5xwK4SeIxR0ALWTVlpgq7/nTfdzBM6uUYrgR7fq+9MmadF/zKZ
         SaEyziTpqYs3kOtym6FsD0TGTGQgfU6qq3i06ZtezoaDEP1l+o0SnH2XlMWUJigB8Lpg
         r23w==
X-Gm-Message-State: AOAM531c+2PWctFaDjRYa8iyt6UNkD3dotC3TrxeXF5NwbMt1t5Iwyqi
	TeyvWVnx3cVAv0OF2hFDmIY=
X-Google-Smtp-Source: ABdhPJzfYVIkZc5crD9Pkv2+ZunkWqqXAVPY1YC4KRJP/mExtnh21AXUi2yWSo7jR3vwiSHvet6d2g==
X-Received: by 2002:a05:6402:22f7:: with SMTP id dn23mr14640010edb.297.1614118206205;
        Tue, 23 Feb 2021 14:10:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:230a:: with SMTP id l10ls51299eja.7.gmail; Tue, 23
 Feb 2021 14:10:05 -0800 (PST)
X-Received: by 2002:a17:906:9bd2:: with SMTP id de18mr27466173ejc.191.1614118205458;
        Tue, 23 Feb 2021 14:10:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614118205; cv=none;
        d=google.com; s=arc-20160816;
        b=RUwJNfniabqO/u9qlkimRRaSLoOiJhewP97MZ+1k5vvJzKZSu0gidf/B39JpFtRmLN
         GX73DOm/8jm63El/jNuDTT28RMSqp2f26zGnsLmDtSEdc3umtQ+mjZSTADkdgIzJzqa2
         YWK0x6rfYg6286M5G7xTgyTQoA+zgIekAKdPmWoRRVjTL/W7uAy3joQDpKCw7KfCAsW0
         lCJW0aJglr/BZpPLki+ZvM67kyPNEStqnA1FdJvq3+diXOcLREWMnS6/+wVFUWFlkX95
         eE5IohoeaWgYDIbXaACD3a5ieIvoD7bFLWvTsHOheHc6axsslPSMuhANiQKeB6zLV3Wu
         4Yzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zx75QRhrLPP4ZwOOOCKVhkGuJAZA+y8r42bnh+C0ONk=;
        b=fOqjbaJkT0ifgLEEUekWp9WHgxPf3rB8ETK6PpkiQ4hw0wbfVA+/aBCJxaO/7cMjck
         D8Q8RgJOWiswrv8H9mWD3lqGDcQAfTMVNilW4ClpqIba6LBHS6Pmh8XnquGhmf6Ehd3V
         1ARA1fK3ExLrai9dGrbIPB69jj1Vt8aLaRqH7pGvJztNy4F4n09IN02Ztdyh/VGDwVV5
         ixP/KuMmNMeNLUqXnSX7gUdTZsX81baD8fEfO6jGXWWpaLsrFZrD0Kf8a0MP7GMD7K1g
         4y6dN29YN+A1b7v9nOZVN3yIYe0R9y4ICCiU+0WcoDWPzDhI3gJYZw6aB1kv4n07Pe+e
         UdWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvfHAMJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id k3si2226eds.1.2021.02.23.14.10.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Feb 2021 14:10:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id c17so66281ljn.0
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 14:10:05 -0800 (PST)
X-Received: by 2002:a2e:8357:: with SMTP id l23mr2941620ljh.116.1614118204942;
 Tue, 23 Feb 2021 14:10:04 -0800 (PST)
MIME-Version: 1.0
References: <202102222003.q8ZqV9Xy-lkp@intel.com> <20210223215104.etyo2intapqy2t4n@google.com>
In-Reply-To: <20210223215104.etyo2intapqy2t4n@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Feb 2021 14:09:53 -0800
Message-ID: <CAKwvOd=whAkJDYAe_t53hGHdjFRm3a61rrh2WrpN-TB4s+F7YQ@mail.gmail.com>
Subject: Re: [linux-next:master 8545/12022] ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576):
 unknown relocation (110) against symbol interrupt_base_book3e
To: Philip Li <philip.li@intel.com>, Chen Rong <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bvfHAMJR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Tue, Feb 23, 2021 at 1:51 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2021-02-22, kernel test robot wrote:
> >CC: Linux Memory Management List <linux-mm@kvack.org>
> >TO: Nicholas Piggin <npiggin@gmail.com>
> >CC: Michael Ellerman <mpe@ellerman.id.au>
> >
> >Hi Nicholas,
> >
> >First bad commit (maybe != root cause):
> >
> >tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >head:   37dfbfbdca66834bc0f64ec9b35e09ac6c8898da
> >commit: 755d664174463791489dddf34c33308b61de68c3 [8545/12022] powerpc: DebugException remove args
> >config: powerpc-randconfig-r026-20210222 (attached as .config)
> >compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> >reproduce (this is a W=1 build):
> >        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >        chmod +x ~/bin/make.cross
> >        # install powerpc cross compiling tool for clang build
> >        # apt-get install binutils-powerpc-linux-gnu
> >        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=755d664174463791489dddf34c33308b61de68c3
> >        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >        git fetch --no-tags linux-next master
> >        git checkout 755d664174463791489dddf34c33308b61de68c3
> >        # save the attached .config to linux build tree
> >        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> >
> >If you fix the issue, kindly add following tag as appropriate
> >Reported-by: kernel test robot <lkp@intel.com>
> >
> >All errors (new ones prefixed by >>):
> >
> >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x23EE): unknown relocation (110) against symbol interrupt_base_book3e
> >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2406): unknown relocation (110) against symbol __end_interrupts
> >>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576): unknown relocation (110) against symbol interrupt_base_book3e
> >>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x258E): unknown relocation (110) against symbol __end_interrupts
> >   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x37F2): unknown relocation (110) against symbol
> >   ld.lld: error: undefined symbol: .early_setup
> >   >>> referenced by arch/powerpc/kernel/head_64.o:(.ref.text+0x5A)
> >   >>> did you mean: early_setup
> >   >>> defined in: arch/powerpc/built-in.a(kernel/setup_64.o)
> >
> >Kconfig warnings: (for reference only)
> >   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
> >   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
> >   Selected by
> >   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP
>
> 110 is R_PPC64_ADDR16_HIGH.
> This is https://github.com/ClangBuiltLinux/linux/issues/1260
>
> A newer LLD 12.0.0 (llvmorg-12-init-17087-g5fcb412ed083) supports R_PPC64_ADDR16_HIGH.
> llvmorg-12-init-17023-gc9439ca36342 used by the bot does not have R_PPC64_ADDR16_HIGH support.

Thanks Fangrui for verifying.  Philip, clang-12 is not yet released
and is still landing fixes.  Can the version used by 0day bot be
upgraded? Top of Tree LLVM will be clang-13, so both branches are
actively landing patches.  When clang-12 is officially released, there
will be a point release 6 months later, clang-13 will branch, and
clang-14 will eventually ship as what's ToT.

>
> >---
> >0-DAY CI Kernel Test Service, Intel Corporation
> >https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102222003.q8ZqV9Xy-lkp%40intel.com.
>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223215104.etyo2intapqy2t4n%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwhAkJDYAe_t53hGHdjFRm3a61rrh2WrpN-TB4s%2BF7YQ%40mail.gmail.com.

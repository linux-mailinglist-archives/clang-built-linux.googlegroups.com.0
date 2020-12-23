Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBT7BR37QKGQEFLMHVDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 135422E21D7
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 22:04:16 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id a19sf243920lfd.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 13:04:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608757455; cv=pass;
        d=google.com; s=arc-20160816;
        b=oM+0/g07r2/foDRfkD5Rakgl2aISUJQwKJeso59rwcb3kpaTVqMX1rvB5+PP4SaOTS
         Xq7zi+FjOQ4tLnn06e8ASsZy81lw1McfaAJvxlTGaWZf0XKKEK80eRlurzfX93iZYY5l
         29uqkHGz6/Rgj/uZiJeqleTKB36J2+FIKRArL/tgsrEF+IBP9ZTDZ7Y+FyaL6exn3IAb
         Nl3QEOVmieAh65Ry2ck83TeDsdnydhh8P+2VcFqg36xFhENFsx7Wzb8gbL9Tlvs9xs3l
         NyqKOAfNP2SZGjMPIlpttFp+K8RhLr4QR1xge12f/KNg4SkH/e5GJuAh8R10qO8O0HE0
         Fv9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=izcIW2OT+41qMgYZqqOQOaWvf22UyCq9a9Z/ggHk2OE=;
        b=JYjSEMyyNNnR4PmGcDVCl7yl2jkiYBjjjYIo05JTLpNS/aBeB/Ml4aJUePRoAVwomk
         rbhS3lwezhhNmfRg3QEXKQpB055mQade+xbNcwu5XFmVGiHKJuei5rK52k4R2JEVs0kd
         N9S1qw7FHOqF0LQKPjQ0F/uFPiOUICrVL/mknmNzXg9wF9ZMaOgZF56FAUSRb0Lx84L2
         u+ySAXkvcKxbkFVykrsHN7vm7KFtj0N8yjixub5+qotp3SYpNZycNx5xE0J9bY13i0Yy
         G3VOD7g+YhVW+Ywj8kXKqt4FGsHpolc/nYF5cYeHJEmyJqvwd1W4U88qU3FwOddrhgFA
         Oz9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TDuOpUMv;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=izcIW2OT+41qMgYZqqOQOaWvf22UyCq9a9Z/ggHk2OE=;
        b=I2djpgviKTJzDISiBVNVkIO4rkm4c1qRgr8ErJwMcQZxu+hM3XBS++AJUXxoKPj2xU
         FUX161rw1SWyopWkeVZ0axjxqKtmjczc+ILHWqr5fnggiSR0z1qJJuhlKUtb7eMgkbJL
         IDD8V9oTQlvsrLE/qloMcYUdxrVmLXJ3J86mN1AK5WjLndpwIpe/i0DsBkJCqXCpgxt3
         CpNnfifSUeiV1BTWTfxIuF1HgyqCdeSygGQ4i6lMtjN6wWDRyfRdnsjmhyjRd5La3lnZ
         BhOOAKDQiN1v/Qpl8n1C+VBMFcfNlBs0WSm3M3G5X4BHom19DOdzbj+sxKrTL3GZvDFa
         FEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=izcIW2OT+41qMgYZqqOQOaWvf22UyCq9a9Z/ggHk2OE=;
        b=L7nNPxqZ0vuY59xugA/3j3X+wRzc8beqk9s69dzBADbpXh1RVqpoU1rbziQZiOm8A3
         9YaN2OH2+FWnSZveMPmKVKJN/i8c/9fVlXBYuBm8Nd3tPViarhGWNzkOPgv/affFnh6b
         CUxFz0U40Q5VGi90KTE/ZEVozX13sMDy/pP/tQwMZdLvCg64SHISCS61TxgWqPrLQFxF
         Qvw+lDhOsRNwbu1UhAakecyxR0JyULLXuT5zSO+jPmPmooaB0yFjHG+vyre8BxMKUw85
         wwscV5OyPpJ3iz0G49Z4pMYq11P4RiBYAC46DysT7RmUo2Cj8iyNsTYkjLYdvueZdgnH
         3lOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YeHbcjA0mua0Qtpr+/aXft1yHP2YYi4w3QM0R/CeepCxEislB
	B2ZXBA8nbBW22di0nBw2hC4=
X-Google-Smtp-Source: ABdhPJwjYrkZf9d4hkbhpQiGWWUtiMXuLzF8QM9jzlJZ8FAV9zgVb7LabZRO/i9wO6i+UeH+D2iVKA==
X-Received: by 2002:a2e:b544:: with SMTP id a4mr12064009ljn.371.1608757455516;
        Wed, 23 Dec 2020 13:04:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls7869894ljc.9.gmail; Wed, 23 Dec
 2020 13:04:14 -0800 (PST)
X-Received: by 2002:a2e:9757:: with SMTP id f23mr12401625ljj.55.1608757454563;
        Wed, 23 Dec 2020 13:04:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608757454; cv=none;
        d=google.com; s=arc-20160816;
        b=xP2qnGk1UXat1jP0ZrObswiJOuk7dMcFDTIYBJA2x+n4ZBgMKLPWR2G3MFhclEWZJh
         uy8enHCSuB6n8kfgKYU4umqIGxYeDwBjA7ujoQvNB5Sv+0sejgvoaWMiue1zyYR+Q9Xs
         5MoS7ryW85o1Nn50zR8ChJZKjJDSPPMgyg4520tdZFd6xS2LF20f1LOv8+PvXxljzIPz
         dTfmA/Y2zbOA02RtdwI00LU9akShNTFWBCTf5pwbf6x78yLm5WpesbMSQICO8zZ95gVC
         2QN/tqVdOX48m8O5hHQvFRQ30GWnyjx2ooXxfoool7V4ov1j4CBzS6Hcmgl0Sn+1wcy0
         /UHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JiX0OsrfDoKg0aP4RqkxjAFxC6TQprsZzjUhWhmJkyA=;
        b=QkOTAwzgex040KFM6JNTBXg4XgZ9+Swoc+tOWs8VUjnpCYKenkGuTyVrDQMb5P/GLj
         07OyeM00a+4q+2bAowyw4v0W9Zk1qcH96mIyNAEtSRKIoOfyVe5RioFGVQZlTvRZEwFu
         NWfGasZLvpShzAg3JEgSTqktITuT9Ukb+xqvl6ccELxLqN2n3y03z1qS9v6umBBZ9AdG
         rzhBJLgQL3MgJR3VRyYlA08CH9ARbORruw7D6AihF3FezMGVRFtymHsugc1I1ivinp0s
         7Ml5joJWd/ESbQGQ8JE4u2bscJ9tj7V7zNPcus0x5Xe0BL1C7m2ATZGRwDnp2NVp6hJH
         OjFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TDuOpUMv;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id d3si787101ljj.4.2020.12.23.13.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Dec 2020 13:04:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0de60015e9d95f23f51f71.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:e600:15e9:d95f:23f5:1f71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6CDA81EC04DF;
	Wed, 23 Dec 2020 22:04:13 +0100 (CET)
Date: Wed, 23 Dec 2020 22:04:05 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
Message-ID: <20201223210405.GB28724@zn.tnic>
References: <202012180909.WhlTpWrS-lkp@intel.com>
 <20201223183606.GB29011@zn.tnic>
 <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=TDuOpUMv;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Dec 23, 2020 at 12:02:33PM -0800, Nick Desaulniers wrote:
> On Wed, Dec 23, 2020 at 10:36 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Dec 18, 2020 at 09:03:14AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi/core
> > > head:   b283477d394ac41ca59ee20eb9293ae9002eb1d7
> > > commit: 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a [3/7] efi/libstub: EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER should not default to yes
> > > config: riscv-randconfig-r022-20201217 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install riscv cross compiling tool for clang build
> > >         # apt-get install binutils-riscv64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> > >         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
> > >         git fetch --no-tags tip efi/core
> > >         git checkout 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv

...

> Thanks for taking the time to try to repro, and the report.  Just
> curious, which clang are you using?  Is it from your distro?  If you
> have `llc` installed, can you send me the output of `llc --version`?
> 
> The reason I ask is; unlike GCC, Clang ships with all non-experimental
> backends on by default, and relies on `--target=<triple>` when cross
> compiling.

I just did the steps outlined above, in the mail. Look for "reproduce
(this is a W=1 build):" above. I guess that make.cross script needs to
be fixed to do the --target thing, I haven't looked.

clang is downloaded by the script, just do the steps and you'll see:

> > cd: received redirection to `https://download.01.org/0day-ci/cross-package/'
> > lftpget -c https://download.01.org/0day-ci/cross-package/./clang-latest/clang.tar.xz

Thx.

> Happy holidays+new year.

Ditto!

:-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223210405.GB28724%40zn.tnic.

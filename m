Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFM4R37QKGQE4DTASQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 787D42E2075
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 19:36:06 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id g17sf12788625wrr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 10:36:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608748566; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/VfePLEz/yPC+pRF4S/W63lvo5HgZjZg+CnoAXkuHpYB5wb9vrot/k+81Sb577cDL
         JNWysQezXunK6/2QgxB0NZAfN9YYTKUWYklmrDA7nZrmIV5+onn5jjRZrdhqeDmE1Vou
         aDMPPNtgnia3VwzahTBqYJRUMN91x0AYbsgXwrqAlXl/tkVlpHIAJojgEZUAXUcKmSQw
         KAdStnCVTzk8T9r7/kXuK0oV/xzH3CYxzZqoOop8joFM1kuEVK9qjg7KpfGnJGZ0H+nA
         aWQIqoVBj+xfffduoVn6VEgdpyhWxhbnAR1GHHvOo+tlVoHoBDhghxIXmM+KTHWUSYvH
         JrxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ThEmItWjxqTMuVo3elkOth1v3xCRROizCfx35jw1Bcc=;
        b=HTcrFHphRPuGMuZFv7/D0pkOJtYlbejanjZXhIDNrLcjL+1CZmfl0XyW2ksrbx/t3o
         T5e7qkVvW1fKeTYYFaihBls2VpLdbOwTEYNptilAWd6LJmqZvuEM4OlOg6wd547zLdNP
         RnefLP37Ge2D97MbFhhXGAtw8FZ4RHTmJZb7psN9uvahAhw1eENIc2ZOb/5KB7MZuB5I
         SMhHQykCDN6MwSEPW4Py4MMibC/pTgzVsc8/8pkJqFQSeRcTAg7Jlq0nsPepg7+rtT6M
         +gzQEnr44iK2jfHtwmBL66dzK6SQ+tuXxITJlgByS0NkpzehW/R20+lDw6B7qc/Gd342
         WdYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=VrjvyS4C;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThEmItWjxqTMuVo3elkOth1v3xCRROizCfx35jw1Bcc=;
        b=mecllLRPnpwpBoE5tEe9ut5R/0qfNI1VSQqYhLu2TY4gMSRieKWaWKk14jv+nScftk
         OEo1CmRe2YK3yN4fyc+kocWRSDFQdrP2aNz9EbXRvDdwlmXlH1/A3g0RZG1l8zXJmw6g
         wX+rgWmjPYbyueTm00VbI45PnR6mBtNoHyCbx7Tx6ZjUsEjz5ER4LRXeeg6se4GyPPwc
         2+ryPknS+Yep1wRhtopv/903hWnov80Cb8IVppvUSwB7tRfEuqg35c+A8RqZK0nzKKOc
         wYRchMDH77wLZcuhnf6E8uMl/HLeHJ4LLVOMiyuyxsoe1D8gsT3rVdGS2jy6JbQ9j4M6
         UXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThEmItWjxqTMuVo3elkOth1v3xCRROizCfx35jw1Bcc=;
        b=Nu6XtAwqrrqn5Iqml5C+ZTKDlYKcaxxfpHV0c4bE/Lv5b0kb5z+mVEQUBtHt5iBOGw
         KIqS0uKwIWebYTyxyQykwmXRdDLyr46O+A4vVFuql0/hcYxyk4c3IbP8j4RK+1dzBmGG
         qfdQMI2H5O8SC/uFbHmV+T2XOvx9IRqzZ1eqQRNYxQWiCWFzolLpGAO31MfiC+zlnuq6
         rUcH84vRdks7JeHjx0iYrXEZ3Lpm8twz65pRfPK+NAQ6C/s4SKIv4z397lgKWxtldfZo
         OB6KY2/oQHXH4als0o2qfzZ37FmWv0oXojRRzP6th2MD4NzFSRlRCEuzaS+S7bv1dzcc
         dpyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GmrniaHwO03+zYzruRoQxlbxk5nTjGBGIKz+HO8u0/b9r9e0E
	Oh8gqv18b5hLg78a8tVdxh0=
X-Google-Smtp-Source: ABdhPJxwhoz1ggfNzNIj0Uo6IIpy15Cmlhj+a+ay6CsBONWT/dlfVeHwwb9U/hPNQatWOahvEQ8lsw==
X-Received: by 2002:a1c:25c2:: with SMTP id l185mr924936wml.113.1608748566180;
        Wed, 23 Dec 2020 10:36:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d8a:: with SMTP id d132ls350387wmd.0.gmail; Wed, 23 Dec
 2020 10:36:05 -0800 (PST)
X-Received: by 2002:a1c:5402:: with SMTP id i2mr1003601wmb.12.1608748565284;
        Wed, 23 Dec 2020 10:36:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608748565; cv=none;
        d=google.com; s=arc-20160816;
        b=QZ8e5AMdKhHhRH7v4FMcYbgrYGcfbvw6EtEgFQjyyvqm1sG8XWzXikLAd3QBqfZZNZ
         kkXHZyQahr/3rpsQos8+fphapYVsdaNTsVyj5v9e1lk8VQiLON63MUsvYf71kcplS6uZ
         sXK1KQd8AGHb64E84kG8D89N+zRvtYLERgcbcwmmYiWstzfsEpa67TDQDPf/l+9HUInv
         akh1BjT+wbuvIqV7RkkkfMjrp6sj6QUy2a8kU3c+jfpQwzPXDPnNS9hWdcnqwyDn/4tg
         ho0VBwNrnM7DsJ15yKdIamF+Brb4VWVj50vMJtEs3WL5TrdCTu8Vv8Sn9ZFZlSRmXEK+
         0XUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T3szGHnqh9g5WowsiNoMytWNIPTlrye+Cl/FcvQGf0s=;
        b=X5QA8xCapGNpAF1vFIVEeF04j84lvmDdln4Md4oJFB/1B72ase52fHEv0nURTSHxkZ
         LRGqkzm/9TlTm0wOO31bYp4zYZTLKOzQWFVEzXBZHu6D+ymdtChQw335mqNBcTQt+tuG
         aij9WEHMV7N9LdlM10toRMaJaZymwJuZWdP7zD8xZfHtwohsyrJcEAw70jR+VGOseJ02
         Tt2MliORCYNTCQFNcZNPRPMG4y6xNJdzcyy31R09djtZTerxybvm2xLMojf3joy8KJSd
         XlN3Ugkr/MEBZp2hN4yWw3XMp/cf/jLeTHa2UQrxEcwcLo1230iQaLBHBlIF55RlB9BX
         f9sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=VrjvyS4C;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id z188si26904wmc.1.2020.12.23.10.36.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Dec 2020 10:36:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0de6004e8e0a920ee38f04.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:e600:4e8e:a92:ee3:8f04])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id AC06B1EC04A6;
	Wed, 23 Dec 2020 19:36:04 +0100 (CET)
Date: Wed, 23 Dec 2020 19:36:06 +0100
From: Borislav Petkov <bp@alien8.de>
To: kernel test robot <lkp@intel.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
Message-ID: <20201223183606.GB29011@zn.tnic>
References: <202012180909.WhlTpWrS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012180909.WhlTpWrS-lkp@intel.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=VrjvyS4C;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Dec 18, 2020 at 09:03:14AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi/c=
ore
> head:   b283477d394ac41ca59ee20eb9293ae9002eb1d7
> commit: 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a [3/7] efi/libstub: EFI_G=
ENERIC_STUB_INITRD_CMDLINE_LOADER should not default to yes
> config: riscv-randconfig-r022-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1=
e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/com=
mit/?id=3D6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
>         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/gi=
t/tip/tip.git
>         git fetch --no-tags tip efi/core
>         git checkout 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Driscv=20

Something's still not good with that test - it fails much earlier for me:

$ COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang /tmp/make.cross ARCH=
=3Driscv
Compiler will be installed in /home/boris/0day
cd: received redirection to `https://download.01.org/0day-ci/cross-package/=
' =20
lftpget -c https://download.01.org/0day-ci/cross-package/./clang-latest/cla=
ng.tar.xz
tar Jxf clang-latest/clang.tar.xz -C /home/boris/0day                      =
                              =20
make W=3D1 CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/boris/0day/=
clang-latest/bin/clang CC=3D/home/boris/0day/clang-latest/bin/clang LD=3D/h=
ome/boris/0day/clang-latest/bin/ld.lld HOSTLD=3D/home/boris/0day/clang-late=
st/bin/ld.lld AR=3D/home/boris/0day/clang-latest/bin/llvm-ar NM=3D/home/bor=
is/0day/clang-latest/bin/llvm-nm STRIP=3D/home/boris/0day/clang-latest/bin/=
llvm-strip OBJDUMP=3D/home/boris/0day/clang-latest/bin/llvm-objdump OBJSIZE=
=3D/home/boris/0day/clang-latest/bin/llvm-size READELF=3D/home/boris/0day/c=
lang-latest/bin/llvm-readelf HOSTCXX=3D/home/boris/0day/clang-latest/bin/cl=
ang++ HOSTAR=3D/home/boris/0day/clang-latest/bin/llvm-ar CROSS_COMPILE=3Dri=
scv-linux-gnu- --jobs=3D32 ARCH=3Driscv
  SYNC    include/config/auto.conf.cmd
...

scripts/genksyms/parse.y: warning: 9 shift/reduce conflicts [-Wconflicts-sr=
]
scripts/genksyms/parse.y: warning: 5 reduce/reduce conflicts [-Wconflicts-r=
r]
  DTC     arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
  DTC     arch/riscv/boot/dts/kendryte/k210.dtb
  HOSTCC  scripts/genksyms/parse.tab.o
  HOSTCC  scripts/genksyms/lex.lex.o
  HOSTLD  scripts/genksyms/genksyms
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
  CC      scripts/mod/devicetable-offsets.s
error: unknown target triple 'riscv-unknown-linux-gnu', please use -triple =
or -arch
make[1]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s=
] Error 1
make[1]: *** Waiting for unfinished jobs....
error: unknown target triple 'riscv-unknown-linux-gnu', please use -triple =
or -arch
make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
make: *** [Makefile:1199: prepare0] Error 2
$

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201223183606.GB29011%40zn.tnic.

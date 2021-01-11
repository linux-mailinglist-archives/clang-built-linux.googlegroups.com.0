Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOMA6L7QKGQEU2KBDRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BDA2F1B43
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 17:43:39 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id e126sf256746pfh.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 08:43:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610383417; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfvgZTcKYdoqFCFJD2POmR3jW8gMnajz9le4/rYbY8rjeZCKm3UEm4d2cepR+DmPDk
         5pwyV2VyuCcMO8Zg00ykGiE9Nh1xLumZuJMCnnZ1C4ePRL5TE9e3qAo4RgaGTAGehqgc
         rAKLsnYzmnZmpdf5JQY3ifAY6j6IOSJiecnsWcRGvFXLUSm0QxJPu0l5G2Jgu7nAIApp
         syKoZVWlkj9cFD8JOXFr7xNwcKdP1ZM4U1PXkFLkWfn1Wvm/cUFofI2+ToC2jD/7zSzs
         AA5XYaH/882FHP5gial8yd6aiiI9AQSQPptCj+RH/PEoNDu88f6oxqwWj/wlN4MLtVPR
         qnVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=p47x1CN7PrVKlk56bImOt/9kAZIR0VWE/tGFmMilc4U=;
        b=0Aa/zd3PdTZsdEkU7tcrf7PVusbXa0fljSy4LVhZR9Qpav2Iayb436/Zxypk/qx2Je
         T/TZCk6TqkbGJQTjJVDvwHsILPpPQ4euCg17ygkXFzT8wQj+hyVl6ZiVz41FjsXnpu89
         BcX899nyxIItJQFbzcVb8LG6lnXCDpOcKiqXpqm9pRM92ON2lb2P+6ZDaHYF4q7wQgUl
         mD3NcYw82YxJteihPKw9eoiLgMqHkVAAzGNl7zJpUqILKCGNlnhSqbH4AmPvBAA6hV+a
         w0ZilKrg6mvJUG+nN1cxzw2hn55ZVC5YCR0MLI80jvuhq8MaH8rMybYzDNRZJe/L4Q+G
         7tSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/YZhaO0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p47x1CN7PrVKlk56bImOt/9kAZIR0VWE/tGFmMilc4U=;
        b=jWpMshixLOoH/G5zCpED3nyf39sC6LOMkdgGfvgqeTjgOAMV/s6F2GEptHQWD9rKFM
         cdbYa8MWYQAvqQ6zsezuHHJUx7bzONfBa3WLdv+kKeL3iqS5SaRGXe8fXvFQc1NVnujh
         t82OWOTupGSqaJmfxgT2FzyX89MAgb/OjsinvwSC0/Emct9iUC37iu90n2YrZuygXzEn
         HoKhZlfGZVHSNOb9/9Om0H7SXVDeiIuQd/YfP2TgYZue+QYrTYKLBslHLMro5MIkEUqm
         /MQaCIDV/oLIaffPVE+j6252r8nE/47ak7oiIldjp22wyx125awX4Sl3Uw7cPQ60Gd0s
         Xi4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p47x1CN7PrVKlk56bImOt/9kAZIR0VWE/tGFmMilc4U=;
        b=cI5HlJaKlSLDaShcDUnC90lR/JgJDJnuxNlIVWXQ/9kKhQ3nEWjxl2SV6w3VD1BqcW
         RTflbjEOsod3KC+y3BrzzZFJcFL6sizk1USqI+qcxLyNriFxWca9mbrr2MaWz62z6hPt
         7lXhD7IYDL4IINGnWHTb5jPgCql0bcXnqhnRyJ7vqdt0Q7EywdbvG7h+2yXMlbVEKcxc
         m04KoUWohOQdOFg811UcUQoxoFgGkquZMotmB47Mu0O8fdjDn121650wuoAScvWO5A3Y
         9skLrAKJJXC/jn/zrWQaQIUH62aqTvv2AYaMFlgHjLJYyw6szAMiG1vmjEQtDSVv29Ao
         amJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p47x1CN7PrVKlk56bImOt/9kAZIR0VWE/tGFmMilc4U=;
        b=dXk8l9f0kwNvyjewryziBGg+feZ8z2JyCps1eRM+QJAlXqT/MB3vmtdb0qcbOBrzYL
         PelzFTsEf8yy3rb4asAWiwJLpoV0w9gqMADXoKlL6psUdQzD8fy45GYyRcox6gcf9e3E
         v69UJFtVbFj77qgNWAT4hj+ingK0Hf6NlLsFXOQVC33mN38nJaecuF71sWNjtspLOTfQ
         7iDtnu5xHrojvobpXgc4mIh3GZe6l8J44e6EkXJ2I6EcZ7vMaK1VS6pnXsnHGInEdq65
         zz6s5LmM0taSookTsTMug2Ei9ywJzD2aWGOYgEyJ4x7BRBdY4j64GfuoNTzmVzDKQyrV
         IOaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zAw72d59OMUAL2QKyyuXk8CecBrzCrwlZ4/pr+A/somAx5Jvh
	M7nwBfQYv1AMy2N5mf2jsg8=
X-Google-Smtp-Source: ABdhPJyqdXYV7mzgSFM+zTbGNIoZPTPd3Pqu3Qr6zQhkw7JRxMactZnImtF2pXsBK7Aad2rpjine3A==
X-Received: by 2002:aa7:85d2:0:b029:1a2:73fe:5c28 with SMTP id z18-20020aa785d20000b02901a273fe5c28mr254474pfn.40.1610383417685;
        Mon, 11 Jan 2021 08:43:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls8451222pll.11.gmail; Mon, 11
 Jan 2021 08:43:37 -0800 (PST)
X-Received: by 2002:a17:90a:12c4:: with SMTP id b4mr111960pjg.234.1610383417028;
        Mon, 11 Jan 2021 08:43:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610383417; cv=none;
        d=google.com; s=arc-20160816;
        b=gVkPq+VjuwhaZj8DvnW2jZQG2JDJetHH2S4Da2NGP9WEyn+WaPBdVML/WsNCnj7coW
         9aPQvVkdFLXvaAuZE2gcm1hGJAUYAZxuICERFxREEE15TKrds/dy7LLVrVRSzjW8AJPV
         wYqlhqfPVpTJUdAo0JSCrPhPecj1NdU8mT3b2lwVOc6FIYLR3vdJi+A3BYnIx/Dji+QP
         9owDv+Kqm5BiH2YtdP+U4mDTGBdRTvF7dVCeoeijEigQ/Q+YY4FMPYnUiDwNIR5KG7oP
         zFwBUUhR8LjBocyDk1Hzo3r0w/hnEiDuPpnY6PmaqpK1Pp+aAjg0FP9I2qj/muAoYKXr
         VdWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=txuQoBp0nNONCO5E3N2c+O/s/d9J64QZ2sEFMrrplNA=;
        b=WmoIBtfVgQGs6aYYIMS4Z6NMpWlJrl9fGl8dEoziwxC7o4l9RUxFZhUhyv8fJ6ZrQj
         o4USal6bjxYMtO9D42v50vJFE2M/03hlyNGCEp14lqysEISs6wEQxQrL+czazaAFOlGI
         MpN5DldfKxe8gkSx72OirvRizvuR2S8si1RNU0bk1tAGgDS7QnshEjVH74SQPiMAD5+E
         3TVGwz2F34ZzG8xmD9Dl7+rIPkEYwvYrn4tCOwXzfohyS7O4WIb0/Yd88DbERT/4nmgG
         Ij/yC0V31PDeBqrd7R/MhWHAzTIeo7B1AcKzj7W9J7PnNo52fd2u2Ir+ehcJUiLgodAe
         efeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/YZhaO0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id b18si16421pls.1.2021.01.11.08.43.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 08:43:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id e15so103211qte.9
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 08:43:36 -0800 (PST)
X-Received: by 2002:aed:212d:: with SMTP id 42mr488791qtc.106.1610383416110;
        Mon, 11 Jan 2021 08:43:36 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n5sm160945qkh.126.2021.01.11.08.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 08:43:35 -0800 (PST)
Date: Mon, 11 Jan 2021 09:43:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stafford Horne <shorne@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mateusz Holenko <mholenko@antmicro.com>
Subject: Re: drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused
 variable 'litex_soc_ctrl_of_match'
Message-ID: <20210111164334.GA1322395@ubuntu-m3-large-x86>
References: <202101070445.8Kz6oJcS-lkp@intel.com>
 <20210111123055.GA2002709@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210111123055.GA2002709@lianli.shorne-pla.net>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="j/YZhaO0";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 11, 2021 at 09:30:55PM +0900, Stafford Horne wrote:
> On Thu, Jan 07, 2021 at 04:04:47AM +0800, kernel test robot wrote:
> > Hi Pawel,
> >=20
> > FYI, the error/warning still remains.
> >=20
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62
> > commit: 22447a99c97e353bde8f90c2353873f27681d57c drivers/soc/litex: add=
 LiteX SoC Controller driver
> > date:   8 weeks ago
> > config: x86_64-randconfig-a001-20210107 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c=
951623bc8965fa1e89660f2f5f4a2944e4981a)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git/commit/?id=3D22447a99c97e353bde8f90c2353873f27681d57c
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 22447a99c97e353bde8f90c2353873f27681d57c
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64=20
> >=20
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >=20
> > All warnings (new ones prefixed by >>):
> >=20
> > >> drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused variable =
'litex_soc_ctrl_of_match' [-Wunused-const-variable]
> >    static const struct of_device_id litex_soc_ctrl_of_match[] =3D {
> >                                     ^
> >    1 warning generated.
> >=20
> >=20
> > vim +/litex_soc_ctrl_of_match +143 drivers/soc/litex/litex_soc_ctrl.c
> >=20
> >    142=09
> >  > 143	static const struct of_device_id litex_soc_ctrl_of_match[] =3D {
> >    144		{.compatible =3D "litex,soc-controller"},
> >    145		{},
> >    146	};
> >    147=09
> >=20
>=20
> I don't use clang but GCC, and I cannot reproduce this warning.
>=20
> $ make drivers/soc/litex/litex_soc_ctrl.o=20
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
>   CC      drivers/soc/litex/litex_soc_ctrl.o
>=20
> Also, I can see litex_soc_ctrl_of_match is used.  I am not sure what is g=
oing on
> here.
>=20
> -Stafford
>=20

You need W=3D1

$ make -skj"$(nproc)" W=3D1 olddefconfig drivers/soc/litex/litex_soc_ctrl.o
drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: =E2=80=98litex_soc_ctrl=
_of_match=E2=80=99 defined but not used [-Wunused-const-variable=3D]
  143 | static const struct of_device_id litex_soc_ctrl_of_match[] =3D {
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~

$ rg "CONFIG_OF|CONFIG_LITEX_SOC_CONTROLLER" .config
1124:# CONFIG_OF is not set
4673:CONFIG_LITEX_SOC_CONTROLLER=3Dy

This variable is used in two places in that file, in the
MODULE_DEVICE_TABLE macro and the of_match_ptr macro. When CONFIG_OF is
disabled, of_match_ptr evaluates to NULL. When the file is built into
the kernel image, MODULE_DEVICE_TABLE evaluates to nothing, leaving this
variable defined but unused in the final preprocessed source.

Hope that helps!

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210111164334.GA1322395%40ubuntu-m3-large-x86.

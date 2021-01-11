Return-Path: <clang-built-linux+bncBCCL7Q422UBBBT776L7QKGQE23IXEUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CC52F2195
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 22:14:57 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id m7sf91527pjr.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 13:14:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610399696; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ss7AWVFO9igZuQ32Z2K0TisC1ZqX6zDMqYO17GhIoXA1kr/1kw096fP+5NhCtsYlWN
         c/Aqsm9fv+3adlq4IUeA3OC/udx1aP3tws+/tgiytsv3VWKLLv1WKsx9JRFmjzfXQI3Q
         kVRXuQ/ev6avxZF0uleYl4h7yM7CMMnWIhKekMS6CcQxVQewG5g0uF3PmPD7UiUwiAqz
         fQMt+f9sTGe45zALrxiu3232bjr5QT9iVV7AkN+p/rhg5IZaLpZjpGjyOGTrlOi9cjF+
         vMG3FHPwfMXhzEmQDOKRN43fmYPz/Qp8A3DxxpFEMmLFZqdnmNj2cLmVglK8PAS6mvWP
         T7kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=XBkA4RKpH1i2pQt2+T+5oUCuWNOIOfUYlOTF/UKGh3o=;
        b=DH6H9IpWwvm3xsNC6mDedCKVfVq9JBOum1jmewARno/EfySzBfKtNZ05XkjLSiXLnX
         +6dMTjClIEs/ms2qVfBBLbjp6Hum520zDS89bcFtLb4tuN3t4p1m/Ajq4ncPNApWzDVZ
         VvKZ42qxWhh4SkApQY1XpFoor0AcYiGQ9kk/ZgUFyvcC1X1jY+IdHUiSlp2hPyXwgWct
         VEaevAxanJvJ6Z4dMvq/fO5owAN+ACuYG7yNpu2WgSrpbsl7Rs/4pr0zfofn15PB1ozc
         B6ebSv+1RBLM6R2xGqZuShyPwXybKrCW98RvHN5XqPv2Um5WCQw/5uviKxl25s8+R8oP
         Yq1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y5IXc+Pe;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBkA4RKpH1i2pQt2+T+5oUCuWNOIOfUYlOTF/UKGh3o=;
        b=k0BNKkz0sY2TznOAG3DTPsEqbYIC1ICao46SZSMp7cYC2iGbSgYIoKUFjQUW4ez4bM
         j66tAdXRbxooDIreadD/4oQqKrCWBBPWLIvfwCiJUdZg2nkz/KYLZqqSvuucl3TUdX6S
         xYcfx3uj7eRRg6ThGlT8JsqfmjtXAOvfKsn6vBnWBjEiHNzOXKz3YEoTZITlYL7QWwL5
         3t+PQUMP264l2/c5Vmq2409ta2kzsRIbW7gZiqjx2yn1Bz13JrBBuRIbzPLQmrHD+l5Y
         9xbiuaCcRSRHCRUp6JtdNv1lCC0zSOyBhYRIVZtw+7umKZD+xA/lOefA28tepLK/CMCj
         M7TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBkA4RKpH1i2pQt2+T+5oUCuWNOIOfUYlOTF/UKGh3o=;
        b=mIo9QuVXncqoQ1X9WbQBIl2ZL5jOzyiXy7oWigR3EjH0KkBkcLgqF6fcb5A7Xt42so
         YK0ccAi+A4f69iqvpblRIzOrhtu54+RnMKeLmrR+O4fZp4RqwLMvF0DeIhWd9cLVTux4
         FrgePxjh/sXLCz6OjUDwQhPn0fkENyblCgHPRSoHP6H8/SSwHwduKo2PdKLwnsM3tIav
         le3r5nDICER7+TrKkw44zBuvDby7jSFXWnWTkZY/ffdR7+Rhe5L1Zqmg84uIIw+tFqAX
         PH3xlw0T0B6BQbQjvp0kcBXzTtKhy6j2Gq5Pil6Afu09zXB2kUAPCKYutNV5KVZ/4iQI
         XXzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBkA4RKpH1i2pQt2+T+5oUCuWNOIOfUYlOTF/UKGh3o=;
        b=cmGjJf6n2bJcI33T2MgAvTqwLSmOui6jKYhxzQ4ax5drs5d64Lpp+RsG8HlqMrIoER
         ZDUbEz2ZgUZpRLN8TBo4nt0Q3MYZrC8XlSj0Z17VK7zSSD5wWg8Otg6UvOceXEpKgphq
         iMbCf8LydngHlG3IEafztst3VNmjge+T3REBWTP5CC0ZXsc4+IP4RNbC6JBrYMEoLf6T
         41NcGKFAEYLrsEWaB4xSNG5/1G0DUQpTCEFJw1tWA4Y4qxw+s8zsqqBCV65QKWTWhXV5
         Xwv6vU7CuPUL8e1eOjhR8xnHYLmxQBWOgb7YUnSlX0IunEiLo94FMD0bQKjzrqrgNRPm
         /e8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I1orEXzGFwoVbad6tWBt4mPTpBh3XzRS2hDnORMPAArYAySD5
	t2N2TGa2t1mVXWAp1A3yUW0=
X-Google-Smtp-Source: ABdhPJyOQ4f4S/xC1TZguKOsDu5sdg3zCWlhhPgavubnKntRZruO5ZZMg7aqaFYZCQY6+pkFf2luqA==
X-Received: by 2002:a17:90a:4f03:: with SMTP id p3mr804688pjh.69.1610399695772;
        Mon, 11 Jan 2021 13:14:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls227313pjb.3.canary-gmail;
 Mon, 11 Jan 2021 13:14:55 -0800 (PST)
X-Received: by 2002:a17:902:7c8f:b029:dc:8e14:95ac with SMTP id y15-20020a1709027c8fb02900dc8e1495acmr1718850pll.8.1610399695178;
        Mon, 11 Jan 2021 13:14:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610399695; cv=none;
        d=google.com; s=arc-20160816;
        b=RXvRFMVPUMikVhQfx/YYhW6wC5+5enrmK+rtdzi6U2RcLeQZoEMP6Z8ILT6ms0CLfm
         LaGj213hJfA9vlTM6tPdbiTpeY2rDVL1p7NxkUNsIThBH414jV7tSfMCEFJ5WRJcFTIT
         x5Vuy9BkUpxKLyHFfahL6iX5qb8WzvnIRlsI5AH0q92gENeaRgKwnf1xBA8jTKJYIvLf
         5KQeyp+j9WWu8DvQqOtQaRrVyk9m+LrXin7iu5EkEvBjORJj9ZLpcEKH2+IEsanku8vg
         dXaS9zm0bDerFTFlZSgjIgWKDQ0iMnyI/67tTJ+wXD4wt9tseyqxRTTZih1bzbKsSgi3
         YH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=tBBYBALNeTXmfoXgIuvASWSb43rmlp3hgP0L/sV8MGk=;
        b=bRFJtJoqTC3JCOWsGO9teYxDGQJKqADIkpJaR6dQHP5LV1qZ+1nEjHk3o0w2GS7A/I
         a4WX49LSBQvdxZpSNfgmtwfTVxUlk7W437YS2Z/ilqtsx6WZvXQdVo3DvMQcqNCrZFdN
         ikYR7ZWMry4cedaxrU7HDsTczrcMJz/uBZhCofntqdCXSCTq13o1yxKn3Hu3K7rcNHh7
         ze1ZKbtZ1SACbMyLDqfUCUee01p22Q90DHmWSblh4y5BCKPVNeRjcBMAraMbO+RN7JSH
         S8wWn6Aqvjax8tF2ohkRdGbO2uvf3ADY33sSEMN+JO6v2RCuvQciralm3w+DuQDx7Ho3
         axsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y5IXc+Pe;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id j11si72445pgm.4.2021.01.11.13.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 13:14:55 -0800 (PST)
Received-SPF: pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id n3so485735pjm.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 13:14:55 -0800 (PST)
X-Received: by 2002:a17:90a:c084:: with SMTP id o4mr772591pjs.165.1610399694897;
        Mon, 11 Jan 2021 13:14:54 -0800 (PST)
Received: from localhost (g178.219-103-173.ppp.wakwak.ne.jp. [219.103.173.178])
        by smtp.gmail.com with ESMTPSA id o11sm336964pjs.36.2021.01.11.13.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 13:14:54 -0800 (PST)
Date: Tue, 12 Jan 2021 06:14:52 +0900
From: Stafford Horne <shorne@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mateusz Holenko <mholenko@antmicro.com>
Subject: Re: drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused
 variable 'litex_soc_ctrl_of_match'
Message-ID: <20210111211452.GB2002709@lianli.shorne-pla.net>
References: <202101070445.8Kz6oJcS-lkp@intel.com>
 <20210111123055.GA2002709@lianli.shorne-pla.net>
 <20210111164334.GA1322395@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210111164334.GA1322395@ubuntu-m3-large-x86>
X-Original-Sender: shorne@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Y5IXc+Pe;       spf=pass
 (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::102d as
 permitted sender) smtp.mailfrom=shorne@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 11, 2021 at 09:43:34AM -0700, Nathan Chancellor wrote:
> On Mon, Jan 11, 2021 at 09:30:55PM +0900, Stafford Horne wrote:
> > On Thu, Jan 07, 2021 at 04:04:47AM +0800, kernel test robot wrote:
> > > Hi Pawel,
> > >=20
> > > FYI, the error/warning still remains.
> > >=20
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git master
> > > head:   e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62
> > > commit: 22447a99c97e353bde8f90c2353873f27681d57c drivers/soc/litex: a=
dd LiteX SoC Controller driver
> > > date:   8 weeks ago
> > > config: x86_64-randconfig-a001-20210107 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project =
5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> > > reproduce (this is a W=3D1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git/commit/?id=3D22447a99c97e353bde8f90c2353873f27681d57c
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/ker=
nel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 22447a99c97e353bde8f90c2353873f27681d57c
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dx86_64=20
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All warnings (new ones prefixed by >>):
> > >=20
> > > >> drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused variabl=
e 'litex_soc_ctrl_of_match' [-Wunused-const-variable]
> > >    static const struct of_device_id litex_soc_ctrl_of_match[] =3D {
> > >                                     ^
> > >    1 warning generated.
> > >=20
> > >=20
> > > vim +/litex_soc_ctrl_of_match +143 drivers/soc/litex/litex_soc_ctrl.c
> > >=20
> > >    142=09
> > >  > 143	static const struct of_device_id litex_soc_ctrl_of_match[] =3D=
 {
> > >    144		{.compatible =3D "litex,soc-controller"},
> > >    145		{},
> > >    146	};
> > >    147=09
> > >=20
> >=20
> > I don't use clang but GCC, and I cannot reproduce this warning.
> >=20
> > $ make drivers/soc/litex/litex_soc_ctrl.o=20
> >   CALL    scripts/checksyscalls.sh
> >   CALL    scripts/atomic/check-atomics.sh
> >   DESCEND  objtool
> >   CC      drivers/soc/litex/litex_soc_ctrl.o
> >=20
> > Also, I can see litex_soc_ctrl_of_match is used.  I am not sure what is=
 going on
> > here.
> >=20
> > -Stafford
> >=20
>=20
> You need W=3D1
>=20
> $ make -skj"$(nproc)" W=3D1 olddefconfig drivers/soc/litex/litex_soc_ctrl=
.o
> drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: =E2=80=98litex_soc_ct=
rl_of_match=E2=80=99 defined but not used [-Wunused-const-variable=3D]
>   143 | static const struct of_device_id litex_soc_ctrl_of_match[] =3D {
>       |                                  ^~~~~~~~~~~~~~~~~~~~~~~
>=20
> $ rg "CONFIG_OF|CONFIG_LITEX_SOC_CONTROLLER" .config
> 1124:# CONFIG_OF is not set
> 4673:CONFIG_LITEX_SOC_CONTROLLER=3Dy
>=20
> This variable is used in two places in that file, in the
> MODULE_DEVICE_TABLE macro and the of_match_ptr macro. When CONFIG_OF is
> disabled, of_match_ptr evaluates to NULL. When the file is built into
> the kernel image, MODULE_DEVICE_TABLE evaluates to nothing, leaving this
> variable defined but unused in the final preprocessed source.
>=20
> Hope that helps!

That helps, I noticed it was only used in those macros so that was fishy.  =
I
forgot to add W=3D1.

We will need to surround the definition in:

#if defined(CONFIG_OF)
#endif /* CONFIG_OF */

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210111211452.GB2002709%40lianli.shorne-pla.net.

Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBAOB733AKGQESOW5PIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id E556B1F3E82
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 16:45:22 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id x10sf994158vsj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 07:45:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591713921; cv=pass;
        d=google.com; s=arc-20160816;
        b=wgBKN+JsgkQczAFNoVsjsBtvwWtcKA3poSfVvgIu+cjZtyydzaosWtDoGXnNOmrI5R
         Y71v6AwXzM/0x5uDF9e4i9JMt6OdGkcfKqpR0pKFxOaLkRkSo2aMxDscJzJn4/IkRD4H
         Qhd8xDG3UW9BTNp39e/zkShgENLpaG5B6XNWMFCS9r8TmUM2VL3+21NayK6eq9ru/xWw
         65Aa0aWFoWi3bizHpnJEdkMg5Zw3wK6ufted24hy/Y33/qmeurCPQtd7RUzF/m9/erLo
         5kw8es9dLonqhWZLPTyQEfogxhiXawUs5qe9SytqXDp1aWZ1Nw5472ClmMm3s+i3+03+
         33Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=YVZAJBiCyQTUCHYiCxYh2j7X2gQ1uuk3t3iBNq4JHVw=;
        b=VU3xivCcmdB1Hs1QCEbBEWsLi0BzeA4hUf7rZttIyKjnbal3Nwk2QDPTisTRekp7ae
         A/SkbnlS2c1DUeEcH7kCEjD/CY2EmhP5w9NpsZ8NdxLl7V4bbkBxaQIVBkIC/TVd0ZUj
         eoyeO5yCg/hT9pn6/2NNpUdw7xx3v5+bZnEVYnNfvc1c+8IcYP0dYNcilpmh+erbUuqD
         hQnm0Ivgo9VQAGtmIPLAuk1FKCeCls6DZs2eUEBCiZQ5/8KX6swSN6UyZHxtcPaTK3zr
         aWTPVqTKLUvAbrJD8wS6/o5qiGyBpgONJme6IP8qADI/0xQrBbMk5M/pE5fz5OtqZiwZ
         vfhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YVZAJBiCyQTUCHYiCxYh2j7X2gQ1uuk3t3iBNq4JHVw=;
        b=cfqu9ua0rMsoQRAjquAXHgm4kgEx9I4hjquFFjUmB8N08mheTNuDKAv0f4uGr/5iy+
         g16Hs1186Jk8EAgGQkA4hRCMUb1kQf4FMTHqOn04HZSScqEX80DUqclcg2wNnTYu8Wcv
         IcsZdu1TCj5pprsu9Buu0fMxJiFcdQVRsuDmVge0ZL93Wtbxl9a5tN/kEXhxTg3kl0Hv
         RQ4skbedHtCFU2UVBvZV1JaxAR+i+cd6AjNPgQK7TEgBSepSp6oFVOVzWs8qjgqrOAkz
         pEkC5p/O9OOIwdpUmu0/OXPlzYZFQqKODT/fxjIJp3AmC0uoRwGOwpDzy62lbEZmF8Dq
         qQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YVZAJBiCyQTUCHYiCxYh2j7X2gQ1uuk3t3iBNq4JHVw=;
        b=osxU4HzFFSLehru4B7oObObgKDSpMYGB9iime9zN78y4wYubYqrro4SDehVkwd7QYL
         V1sWJII+8ZE2uM67l8PpJvc+vTQQRCcnOIJQu+3c2IOlxnxpD1zZw6jyfjKql0AeFksk
         /3o8i1dGAuJIr7yowCr2a52sszSCE7eyfipr5vMuRzgPgJ97nHGZ9kmHp/xUplQZVl9R
         di67hKxf9YydcpF7VM/caIS9kwgmF0Rl4cKpGrBz0EI5eosFuM+jvyHsmWFXz7oJMB0D
         Htyg1N33gzHFTwSEE/OzkKNAEwwXDJ/NQ0MpQ3QD3io1ZfcnkUPprO8fOjXoPTrK9Hgu
         3jFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZbOh+GfWWrSfmnubNXIs34KEwXqdH2wngVYan+11jbh7SA5R1
	7vSwRcfzGONQcyypHylPkPc=
X-Google-Smtp-Source: ABdhPJxHlwnwZoueg8dw6B5g2NgoC2RuAbW4oOdErWEL/plBzfahoSo5Ubqsk+vHjMUF6TeWPTkNVg==
X-Received: by 2002:a67:2c94:: with SMTP id s142mr3568524vss.48.1591713921664;
        Tue, 09 Jun 2020 07:45:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2203:: with SMTP id 3ls1537595uad.4.gmail; Tue, 09 Jun
 2020 07:45:20 -0700 (PDT)
X-Received: by 2002:a9f:21c9:: with SMTP id 67mr3372404uac.44.1591713920935;
        Tue, 09 Jun 2020 07:45:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591713920; cv=none;
        d=google.com; s=arc-20160816;
        b=X3NdDAspMxn01TlMmTlRjdpVWE8qBz2riOuGHia/w6jJNsCdbve0NsbjYwunE9E9v0
         jfmaaqZX2auC6uc2qVp4PBMl87YM2cCaC1u7WHnGMcJkoILnCUEmeg5RdBuIut6u+oBk
         kOZOnDabdcJrVADc1CYCEv1ZcpTThgOK713qS99B0axe9iJKrwNDs9brrjFFQrjVaL+o
         a4flAuTmpcfxbOds675EmZJwSoWPk/DBIgzUpZPgdM/gtq8ax8owQmz5PmSc1b4Wis3k
         Gqltn0S9VowZ9so3/nXJT91of485j3fsmfBz/V5XIx3q9zbS6jahV+pffIeH3PfjRnin
         rOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=9e2IUbpG0Zj0QvWeoULXkXEPrDZQMrV5e8CWQV5fAxY=;
        b=RxhfZrz/UcIWzGzQeDbQgQ5azXJv7dLSfKKKRKe/KzXCN6TTq7uquNn9molrZlNJis
         0YAIAtS+UKcxgAo1COaqtm8mrn4LazzQ1OiPm0a/98RkC3UdNzQoUIXX9BuW0JQyKq6A
         5UAwxP0GJQQUjiHCLtEUROf/O3sU42/OQKy0tRL5fzqxcWIg1mL+HOhWNmIASpUSFqXn
         tcEt3wQzv0N9bMGQCZvQQ7yEiluFKmQhOOb0y3umHJ/M0L8DHKJeQSFc/xy2FSLZEEET
         bXamudkIZ+mUiwMYKSGmJ+8RKjkjlO5mkEblHRrI4LB48JGmpDn/4V+AH+k83CjI3ZAh
         NosA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id y7si151610vko.5.2020.06.09.07.45.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 07:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: MMwyUxHiaQ+S0n0a+mkZSYLLJ15NqHpRN2SZG+D6h0TF5SAWFJSWcOlhOqVPqNVt7ryAM2TBqo
 YJllxtdBpLew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2020 07:45:18 -0700
IronPort-SDR: q2JOMu2D633GxY4ZGIrgd//klA/oOa34ptajOL2M8MwUs6zmyX2Y0EUBWpRrOvkUQ6pqz2dR/l
 YOUmvtmHLgzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; 
   d="scan'208";a="472992420"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 09 Jun 2020 07:45:16 -0700
Date: Tue, 9 Jun 2020 22:44:37 +0800
From: Philip Li <philip.li@intel.com>
To: Li Zhijian <zhijianx.li@intel.com>
Cc: Wolfram Sang <wsa-dev@sang-engineering.com>,
	kernel test robot <lkp@intel.com>,
	Rong Chen <rong.a.chen@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [wsa:i2c/for-next 15/29] Inconsistent kallsyms
 data
Message-ID: <20200609144437.GA19950@intel.com>
References: <202006081422.xo0czB0Q%lkp@intel.com>
 <20200608082428.GA1085@ninjato>
 <06988020-878b-54da-2b00-afe746f94c76@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <06988020-878b-54da-2b00-afe746f94c76@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Jun 09, 2020 at 06:12:14PM +0800, Li Zhijian wrote:
>=20
>=20
> On 6/8/20 4:24 PM, Wolfram Sang wrote:
> > On Mon, Jun 08, 2020 at 02:53:24PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git=
 i2c/for-next
> > > head:   726b03203e45ded63f4479f0b2de7c89d91cf3be
> > > commit: 786d2af7a5d8b46bc66c20fc886f178c34b936ab [15/29] Merge branch=
 'i2c/for-5.8' into i2c/for-next
> > > config: arm-randconfig-r001-20200607 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> > > reproduce (this is a W=3D1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install arm cross compiling tool for clang build
> > >          # apt-get install binutils-arm-linux-gnueabi
> > >          git checkout 786d2af7a5d8b46bc66c20fc886f178c34b936ab
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Darm
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > >=20
> > > > > Inconsistent kallsyms data
> > > Try make KALLSYMS_EXTRA_PASS=3D1 as a workaround
> > I have problems parsing this report.
> >=20
> > This is a merge commit. Can't it be bisected any further?
> +Rong,
>=20
> =C2=A0could you help to answer this question
>=20
> > I couldn't
> > find anything wrong by visually checking, but I may be missing
> > something.
> >=20
> > Also, does it matter that clang is the compiler here? Does it mean it
> > does not show up with GCC?
> i checked the gcc result, its' good.
Cc clang list, to help share some hints for this.

>=20
> Please note that generally 0Day/LKP will build a lots of combinations of
> different compilers(gcc-7, gcc-8, gcc-9, clang etc) and different kconfig=
s
> Each combination will generate a individual report if something wrong are
> detected.
>=20
>=20
> Thanks
>=20
> >=20
> >=20
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200609144437.GA19950%40intel.com.

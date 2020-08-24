Return-Path: <clang-built-linux+bncBAABBNGWSL5AKGQEOWPXPPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0846D2511E5
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 08:09:58 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id l6sf4264405oia.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 23:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598335796; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCT/PNh7G3J6Q3gu4+0Q8y4DMAEJs/BQkRgYcAOg5X3JXYwvsGAw7xw2iHlQtFjYts
         l4+xoHamPqJlEZFv9emAnhQLNnhwnKGcy8ww9N6KVwiDEV1PTi1lCMpuPCZSYmzejYBh
         JLfo1ly5IMEw4ldP0BYAHd4K6QgRS9VUfVDxMkE1ul0sGYX2vJ+uCCZOq9epSOzC3yKp
         DinU1gE0NItxs6QWBxKwZfMt/1diUkX1BmY5oJPsyCK/cMEaePNtR+7sBqunfBdRv7au
         18ZQU57mTyeUyLN1IVVtczJ9PaFiKcetRp03bzhYlrI6qz3c8qh980YsfU7sBTjAacko
         8coA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=SYB8OVX6RU48OaPA6U3xVwkpL2wTUZ9yVP1dE9ICIOk=;
        b=jXqeyaCksKAOJGlydsgu2NUqCI2CUyGkWYDEy6b42Px7wWleTeHisB/8KQumBvZmcG
         YKHoVG8gsNsxFO//cBRHy4Y0jOh5PjT9nCE7oPr8QohHVOvb762Gz+7fFZI0xazgNzTU
         S04bWQaCRdH2xf2KMwVLpQq66OB/DK0WOuLQ0X1Vj0iV8hTiRru1EZA1VCk69K/IJM3m
         j6XgX7Vu7FrB/WMsVAm94omKrwevuXKd2/++Y7BlzMvF0zdf6XwdqixDMIfOWD2GJRES
         oF+iDb87tpeR27EkZ3Cx1VvpqIutNKi8elcDRZ41j1LOgf+CFZn1VyfBfsSOJLhPwq1q
         /p9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=1504fd7417=cy_huang@richtek.com designates 220.130.44.152 as permitted sender) smtp.mailfrom="prvs=1504FD7417=cy_huang@richtek.com"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SYB8OVX6RU48OaPA6U3xVwkpL2wTUZ9yVP1dE9ICIOk=;
        b=IN7msPTTsBCBzldT7K2ofqJKL+U5aY2zZ/OMzjSADnxvJ+kpeoo4Uenb5apWCL1Ygr
         BmRNzbEb7OsseyT+Qd3h+jAPXyB4N3Vz+7Qe4jv96+u1xFOoEA4dlk2WsXm45lN9noee
         9Le1f2RDLsHprZx+GBc5Hbx4J/XFto1MEWdTKEQf1MgN9uhfFUa3i6Ex2ZENrKA6dptQ
         uCH4edJpjW7pqpZhpYhHWggubaZ1gre3VAnffxadWdO9t7tNd7iefkp0JBzLcN8XHuhw
         AMABFidfyJHHlJsGYxR8lyz1XF47LvhfMIkWGnwTn06WV0j3bt0t6R5O8+izQTxaI/kA
         O2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SYB8OVX6RU48OaPA6U3xVwkpL2wTUZ9yVP1dE9ICIOk=;
        b=TdwX5cq6z+ntkaeIKtcszfwN2KqCq/on2b0ke25ezoGBHMlydJeXfsNtEWxnEdRVdP
         fSE+2lTFdcMNiGqdzTV8SlDqTYBiHO7jfcoINbx8CqN1d+d8VzjOu/NI9a9SRFkIA1Zq
         OyewuPHCz/qAU+XgMWd7XmiU15IOoHPaFb/QUTP9l0/wCD9hs8LFbGC6VDWO9f1Upi5L
         YfRtTfNOEDCQ7jCXeH/gg61leGa7Tjgb1qCpcZsP7LjmSdbIQE1D5RuLCbbvRYVTkZeJ
         DTVyD1RIyhmaeBIYq9Rwbwd1fRh4sP299GZiozjw9OiHOUQtR1DXGGOeymwWh59bQSyU
         t8MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RNGV9xM7YvSHrMmK+kYXxfnzDVYgiE2OlLs0x8Emc+NpLSbMG
	HZn9bdrUpHtuFOfxo1XSYEQ=
X-Google-Smtp-Source: ABdhPJwcP01WS85JFaVR1ijjZGF0LsD3w2+CrkppuCs+kyPI6/RImcnNSSn2fFd0Z+GpOz3flBDZBQ==
X-Received: by 2002:a54:4488:: with SMTP id v8mr189018oiv.22.1598335796661;
        Mon, 24 Aug 2020 23:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4b0d:: with SMTP id q13ls1342206otf.8.gmail; Mon, 24 Aug
 2020 23:09:56 -0700 (PDT)
X-Received: by 2002:a9d:3ea:: with SMTP id f97mr6074527otf.171.1598335796266;
        Mon, 24 Aug 2020 23:09:56 -0700 (PDT)
Received: by 2002:aca:5204:0:b029:d1:2b01:189f with SMTP id g4-20020aca52040000b02900d12b01189fmsoib;
        Sun, 23 Aug 2020 18:57:17 -0700 (PDT)
X-Received: by 2002:a6b:901:: with SMTP id t1mr3016874ioi.54.1598234237687;
        Sun, 23 Aug 2020 18:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598234237; cv=none;
        d=google.com; s=arc-20160816;
        b=qYimlHOcEukyyT8fvWhKMQFXljvViDT0MUnnFihh1e2DJFr6a9uy8HVhJte5oSUVPZ
         aMxR9EGO97euZ/B2hiQwQnHxhtr1wkcdnxe1SW7ueg4bxfNRspodOyDPc4wwa3uScvJk
         HHx48Q+qDviWjlPUzE08JNeuc8UUXTgiTQktdmE5FpsBetAedR2t8jwap5G38MirVhMW
         8PxUPxKnQ/+eA0m4i3gZyyjN0gI4WuRS5TQWDmLxV4v0t72Yc8zQ2pKzVSqS9PiL9Bln
         MUkIaLMk8MhpZ1/ekWhkBq0DgXvcFaKEFsaxRL8bwndynWQ23JMhIZYHGsXaf/9RpQvK
         7DsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=/wDUptvo0nyW6pKnEbOgaBZYvXlGxgosGb85OrCNLwg=;
        b=cgfcqQ1eQOtwsRQjzw1AuhAvWwC4mYSPgquoYS1X85AoQt4THvdkzgs3tFrwMYuNYJ
         +VqXURu0CouN/FDlglJZCjeZpqyZSRcQvMTy7//jldjv395WUA02QPjWT51iVQpIXIW/
         DBGvlGVHvCOJ5H9zhYvHZapglvN7OGncwl6zbTTgeOKJ/2Mi2Gc8G4NBQVzZvwFmr4yp
         Ei8VIedx8UX0PBrVCEuAJuxafWfBMbgOlgw0/XE2NiDENZGzq30lDwZS0z8a3BAJ/a4o
         HhXpiLG3LJxQYSuvbFEs2xL5RNGGVdqThA1UmHhaFC/kmCFkua/lZ5nIYFdpFLrleVeQ
         GURQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=1504fd7417=cy_huang@richtek.com designates 220.130.44.152 as permitted sender) smtp.mailfrom="prvs=1504FD7417=cy_huang@richtek.com"
Received: from mg.richtek.com (mg.richtek.com. [220.130.44.152])
        by gmr-mx.google.com with ESMTP id n1si425446iom.0.2020.08.23.18.57.16
        for <clang-built-linux@googlegroups.com>;
        Sun, 23 Aug 2020 18:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1504fd7417=cy_huang@richtek.com designates 220.130.44.152 as permitted sender) client-ip=220.130.44.152;
X-MailGates: (flag:4,DYNAMIC,BADHELO,RELAY,NOHOST:PASS)(compute_score:DE
	LIVER,40,3)
Received: from 192.168.8.44
	by mg.richtek.com with MailGates ESMTP Server V5.0(21160:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>); Mon, 24 Aug 2020 09:57:05 +0800 (CST)
Received: from ex1.rt.l (192.168.8.44) by ex1.rt.l (192.168.8.44) with
 Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 24 Aug 2020 09:57:05 +0800
Received: from ex1.rt.l ([fe80::557d:30f0:a3f8:3efc]) by ex1.rt.l
 ([fe80::557d:30f0:a3f8:3efc%15]) with mapi id 15.00.1497.006; Mon, 24 Aug
 2020 09:57:05 +0800
From: =?utf-8?B?Y3lfaHVhbmco6buD5ZWf5Y6fKQ==?= <cy_huang@richtek.com>
To: "lkp@intel.com" <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [regulator:for-5.10 3/21]
 drivers/regulator/rt4801-regulator.c:206:34: warning: unused variable
 'rt4801_of_id'
Thread-Topic: [regulator:for-5.10 3/21]
 drivers/regulator/rt4801-regulator.c:206:34: warning: unused variable
 'rt4801_of_id'
Thread-Index: AQHWeYO/YPcOPSmnR06Dp2WgjeMg7alF+peA
Date: Mon, 24 Aug 2020 01:57:05 +0000
Message-ID: <1598234225.3514.6.camel@richtek.com>
References: <202008240310.IFOfmYWy%lkp@intel.com>
In-Reply-To: <202008240310.IFOfmYWy%lkp@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.18.182]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <CEEDF732F3135F42BD4FEB5D0036C74F@rt.l>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: cy_huang@richtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=1504fd7417=cy_huang@richtek.com designates
 220.130.44.152 as permitted sender) smtp.mailfrom="prvs=1504FD7417=cy_huang@richtek.com"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

-----=E5=8E=9F=E5=A7=8B=E9=83=B5=E4=BB=B6-----
=E5=AF=84=E4=BB=B6=E8=80=85: kernel test robot <lkp@intel.com>
=E6=94=B6=E4=BB=B6=E8=80=85: ChiYuan Huang <cy_huang@richtek.com>
=E5=89=AF=E6=9C=AC: kbuild-all@lists.01.org, clang-built-linux@googlegroups=
.com, Mark
Brown <broonie@kernel.org>
=E4=B8=BB=E6=97=A8: [regulator:for-5.10 3/21] drivers/regulator/rt4801-
regulator.c:206:34: warning: unused variable 'rt4801_of_id'
=E6=97=A5=E6=9C=9F: Mon, 24 Aug 2020 03:29:11 +0800

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulat
or.git for-5.10
head:   23ce1e5c27396e39efabb58714142e8f10ce1f0c
commit: 5bbbfc7f7f0a44b7a85ab3872dd2ccce7019f7b1 [3/21] regulator:
rt4801: Add support for RT4801 Display Bias regulator driver
config: x86_64-randconfig-r032-20200824 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/s
bin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 5bbbfc7f7f0a44b7a85ab3872dd2ccce7019f7b1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
ARCH=3Dx86_64

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>
> >
> > drivers/regulator/rt4801-regulator.c:206:34: warning: unused
> > variable 'rt4801_of_id' [-Wunused-const-variable]
   static const struct of_device_id rt4801_of_id[] =3D {
                                    ^
   1 warning generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git
/commit/?id=3D5bbbfc7f7f0a44b7a85ab3872dd2ccce7019f7b1
git remote add regulator https://git.kernel.org/pub/scm/linux/kernel/gi
t/broonie/regulator.git
git fetch --no-tags regulator for-5.10
git checkout 5bbbfc7f7f0a44b7a85ab3872dd2ccce7019f7b1
vim +/rt4801_of_id +206 drivers/regulator/rt4801-regulator.c

   205
 > 206static const struct of_device_id rt4801_of_id[] =3D {
   207{ .compatible =3D "richtek,rt4801", },
   208{ },
   209};
   210MODULE_DEVICE_TABLE(of, rt4801_of_id);
   211


Acked, send the patch later.
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
--
--Best Regards,CY HuangRichtek Technology Corp.TEL : +886-3-5526789#2355FAX=
 : +886-3-5526611
************* Email Confidentiality Notice ********************

The information contained in this e-mail message (including any attachments=
) may be confidential, proprietary, privileged, or otherwise exempt from di=
sclosure under applicable laws. It is intended to be conveyed only to the d=
esignated recipient(s). Any use, dissemination, distribution, printing, ret=
aining or copying of this e-mail (including its attachments) by unintended =
recipient(s) is strictly prohibited and may be unlawful. If you are not an =
intended recipient of this e-mail, or believe that you have received this e=
-mail in error, please notify the sender immediately (by replying to this e=
-mail), delete any and all copies of this e-mail (including any attachments=
) from your system, and do not disclose the content of this e-mail to any o=
ther person. Thank you!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1598234225.3514.6.camel%40richtek.com.

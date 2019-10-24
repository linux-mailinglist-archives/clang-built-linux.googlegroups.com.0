Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVVVY7WQKGQE6DGA34A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7BBE3966
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 19:09:43 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id n34sf12791654qta.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 10:09:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571936982; cv=pass;
        d=google.com; s=arc-20160816;
        b=PVFWIFBSI9UexdyzuBrq5ie4W0qfPVEmzzZB4Q0gh3HwxIwkC5krqXIAJs2AqOYKmB
         7g4wLrHNyrhVELW8BYI1+RNFHRme/FA24H4fC/3R9+zJqxgQQZ9bQroyTLYnQOA5pLGn
         FLm3lhUW7NMYRBUf8U0lxOaSY/0kABKBzRCcveXOtHi90/I9B6Al4titcCEahkDPhysQ
         T0GHlC7rvyTvtgDXl+8+M4yBv6yT5LNgRZy4DArx+qRlNfU73N/Eh6uT3E82HP8KsDFO
         rBH2BoTaT5302n1NjDR2/04vZJYfg863AJ2i/EzYROWs/YbllIbd/klJzPMp4QIVmr3/
         InrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=/i/fs5WaWaVNnmhi95E7SazjB4gJ+cqITn7HrmKUWUw=;
        b=kkm1BMrpl5VoLg9X2e0Go7uZZza1BvgYeB4f2kxw7cX5sDcLxR2jTF2Kq0NNlipb2n
         QR1bViFYF3vnkcN7NHVcILaXP5P4RLlEPeiJIGB26sm6pYY3nZhCbI4BcDkQpES+fF4B
         RBqUmFNvnbUCZjPWpe6/cDygK3t4D/bOZorI0+ahawGjbOjG3qbK7k6buFXvZjNvLU0v
         pBKBqHtppLEyEeBQodqMMZjnXfO2OZQwwtBhr9v97GnYMvXaDRK8vQqzQL74beZz5l+D
         Z7GHcCo/1g8ddb48F0GD/MY6x4Jb53GPq4xFsUH42KETFh+iXku/zWDs5FHLkjyZWS5E
         vbzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O1F8D/I5";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i/fs5WaWaVNnmhi95E7SazjB4gJ+cqITn7HrmKUWUw=;
        b=A+kNn98erRGXtLqJYPN1BRpUMHRzTELxaJFIbLn6a9pvDn7YZJpmXtICeNjvcD5YS2
         2qBk4oDTjbgtchmKiDALWTROhrpGVbKLxsofYk7ezmi0I0Gkbnixm+c/XUfCjVbLHc/d
         Br8JPfdOdSMbE8OJrfwgLf9tzbJ6FHmSWhgJJATkBqb2ShrPnDSNDdAyIdOjBL8VPs2x
         vSiYI+MGlNsQ2kfdXN4o3s9972hhCDG5K0dTgDwJo0hSsrNAKRCN6UOqFE5kzNjupesg
         fd5/Dcl5oWTT6CtMhT93NqoaFWY7USKgnofupW0jcmGQxwuQ8IGuXyBhlwTI6yRArvwT
         Kn7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i/fs5WaWaVNnmhi95E7SazjB4gJ+cqITn7HrmKUWUw=;
        b=KzrqetOGIt+pyIQXNTOLRtVkk1DB7ttTXt9C8d5Gaunx/uP0B0+vMgjkniKbqIbv5N
         frSP4kDRGNuVylVCLjPeRdFDwcyoqX7Q/AD0Gf+VCIaWvy6AswgZIv1VWw7uQ5ViLxsl
         nvYn8G8j7TQO7NZnhuCtCEv/dwGJvHj2FiHAY1a6Ve3flQDCi/K3TXziHGOB0qmTDvYt
         wAUK5X8yO07AHA3KASD/sxexKMg4QdzLvYn27PSGDnhrRQMmc8Gq0E0qaWA3sdrLfwxk
         T9m8ZeDTBvBVWbGs9VXhbOORgtLGRGff1utiDg4+5tnjkYE+y6WnIvjrMr2iatFFTxsx
         zQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/i/fs5WaWaVNnmhi95E7SazjB4gJ+cqITn7HrmKUWUw=;
        b=ZENg/CGnk+WCY+fcQygeXpENlQORenBOSbiyKKUNtTQ7W2IK626H3nihL7TBhI8Uwq
         X2uqi7/SZxkVX0RVlsjFNOifO2XMR21EoS59GrP4CpTvzuC5PRt1SXcn1pYOX4LX9wtX
         Ukcw3lUSZCZBDW8Gulq5bsIi8sYUn5y8KaZcKb0JOjqB2qmH1A01l2ocuW7FszVKBExf
         XX3ECSrUKogaQY1wc+ER/tytXBwjBJgSJDXalt8nuGAo8URjP0scXuO8l3qcXx11AygM
         2f7AiuB3CaXmeFxfQgHJfbFL25C+x0fqqq3iZDOKBirbTauuOVUn7CPAWauTHruCkqnx
         eEOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaRn7bfCaXgvv7QFj9Fvbg1VlyEhrKF5kt8JtBR/kzEF0z+HXD
	LoMMpoflNhhXCpi3z6xdF90=
X-Google-Smtp-Source: APXvYqxFB7079Tf8Cen5zt9BUGSEG4gbwn9gAK6aVfThdfRo6/C73wyMpczpoMam9kS9W1mQf2zWaw==
X-Received: by 2002:ac8:4995:: with SMTP id f21mr5462123qtq.343.1571936982211;
        Thu, 24 Oct 2019 10:09:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6289:: with SMTP id w131ls2228076qkb.15.gmail; Thu, 24
 Oct 2019 10:09:41 -0700 (PDT)
X-Received: by 2002:a37:a345:: with SMTP id m66mr14727283qke.487.1571936981713;
        Thu, 24 Oct 2019 10:09:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571936981; cv=none;
        d=google.com; s=arc-20160816;
        b=L3oKwx0tZ1vArTGZOWRou7B4KBEY+LqqcWSj9fCNknn5HWmolkwR96eNt1ptMKMq3M
         ezWqoyWT2d+22GSCrkbTlQND/85wOHVSrsyG+HafqcI83hVdObt4V7byuIizUAJBKsAj
         cwbqScGfr70be/WbVvzmfg/6RtI6Hfx64j3L8re61tTbAtuv2/OnqhqiDBhYfnPojma2
         FW1CD8kTl4vF2ZoLsnGRQIG7VmTGPP5Co3BM7EkNExiRn/ZZ9Ch1KX//idLNCnQ5Hm29
         uW13MaSfKrqGxmLRwZVqPOPGeKh8KsX4e2xVEt7YTi41U4DMRkfuZ4HTYyHTq8N+SaTD
         Q0AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yKjYqMeHq/rNi8fA86MLMxH/F5PbH59nztPuXsHmsPk=;
        b=fljykDXBGHFtZBO8yHLOnaV8DYAZX1PjVbTAPqe0QaizWUsvzbbd2xMHAB63QIULtI
         jZwbfHpeRK2kv3z8YsCB+8Gvu3aGeHrEZRWRVbFLE7BFOEalcdFaVpKoAWgpuCoTWSeu
         CLqA1oOFo2PO6ZRJ6O9lLEaMQjawGQzmLTsO0hrORIZXdwfgV14x3cxUzIBHwjQ40oQn
         8VdwCFSVxxWFzDizRu34+H5xbjFY/OIWIdQSOkP3cGa+LJnbLJ9mrL5uWwgYeSk6qyjT
         H3GBDjLTTn1xRnESrDbaDE5qDgAKU//5krTeifyXYXS07G0a7kmzBO+6dKQkdCbh0fA0
         LXwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O1F8D/I5";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z90si228060qtc.3.2019.10.24.10.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 10:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id z6so21346129otb.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 10:09:41 -0700 (PDT)
X-Received: by 2002:a05:6830:10cc:: with SMTP id z12mr2878335oto.20.1571936980956;
        Thu, 24 Oct 2019 10:09:40 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s66sm7314132otb.65.2019.10.24.10.09.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Oct 2019 10:09:40 -0700 (PDT)
Date: Thu, 24 Oct 2019 10:09:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v7 3/3] soc: fsl: add RCPM driver
Message-ID: <20191024170939.GB40118@ubuntu-m2-xlarge-x86>
References: <201910241421.jNfqkBvg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910241421.jNfqkBvg%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="O1F8D/I5";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Oct 24, 2019 at 04:01:21PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191021034927.19300-3-ran.wang_1@nxp.com>
> References: <20191021034927.19300-3-ran.wang_1@nxp.com>
> TO: Ran Wang <ran.wang_1@nxp.com>
> CC: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel=
.org>, Li Yang <leoyang.li@nxp.com>, Mark Rutland <mark.rutland@arm.com>, P=
avel Machek <pavel@ucw.cz>
> CC: Li Biwen <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>, Greg Kr=
oah-Hartman <gregkh@linuxfoundation.org>, linuxppc-dev@lists.ozlabs.org, li=
nux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kerne=
l@vger.kernel.org, linux-pm@vger.kernel.org, Ran Wang <ran.wang_1@nxp.com>
>=20
> Hi Ran,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [cannot apply to v5.4-rc4 next-20191022]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Ran-Wang/PM-wakeup-Add-r=
outine-to-help-fetch-wakeup-source-object/20191024-101743
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t 13b86bc4cd648eae69fdcf3d04b2750c76350053
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f2=
6827853e3c34d3c4a337069928fe)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/soc/fsl/rcpm.c:72:14: warning: using the result of an assignme=
nt as a condition without parentheses [-Wparentheses]
>            } while (ws =3D wakeup_source_get_next(ws));
>                     ~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/soc/fsl/rcpm.c:72:14: note: place parentheses around the assig=
nment to silence this warning
>            } while (ws =3D wakeup_source_get_next(ws));
>                        ^
>                     (                              )
>    drivers/soc/fsl/rcpm.c:72:14: note: use '=3D=3D' to turn this assignme=
nt into an equality comparison
>            } while (ws =3D wakeup_source_get_next(ws));
>                        ^
>                        =3D=3D
>    1 warning generated.
>=20
> vim +72 drivers/soc/fsl/rcpm.c
>=20
>     24=09
>     25	static int rcpm_pm_prepare(struct device *dev)
>     26	{
>     27		int i, ret, idx;
>     28		void __iomem *base;
>     29		struct wakeup_source	*ws;
>     30		struct rcpm		*rcpm;
>     31		struct device_node	*np =3D dev->of_node;
>     32		u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
>     33=09
>     34		rcpm =3D dev_get_drvdata(dev);
>     35		if (!rcpm)
>     36			return -EINVAL;
>     37=09
>     38		base =3D rcpm->ippdexpcr_base;
>     39=09
>     40		/* Begin with first registered wakeup source */
>     41		ws =3D wakeup_source_get_start(&idx);
>     42		do {
>     43			/* skip object which is not attached to device */
>     44			if (!ws->dev->parent)
>     45				continue;
>     46=09
>     47			ret =3D device_property_read_u32_array(ws->dev->parent,
>     48					"fsl,rcpm-wakeup", value,
>     49					rcpm->wakeup_cells + 1);
>     50=09
>     51			/*  Wakeup source should refer to current rcpm device */
>     52			if (ret || (np->phandle !=3D value[0])) {
>     53				dev_info(dev, "%s doesn't refer to this rcpm\n",
>     54						ws->name);
>     55				continue;
>     56			}
>     57=09
>     58			for (i =3D 0; i < rcpm->wakeup_cells; i++) {
>     59				/* We can only OR related bits */
>     60				if (value[i + 1]) {
>     61					if (rcpm->little_endian) {
>     62						tmp =3D ioread32(base + i * 4);
>     63						tmp |=3D value[i + 1];
>     64						iowrite32(tmp, base + i * 4);
>     65					} else {
>     66						tmp =3D ioread32be(base + i * 4);
>     67						tmp |=3D value[i + 1];
>     68						iowrite32be(tmp, base + i * 4);
>     69					}
>     70				}
>     71			}
>   > 72		} while (ws =3D wakeup_source_get_next(ws));
>     73=09
>     74		wakeup_source_get_stop(idx);
>     75=09
>     76		return 0;
>     77	}
>     78=09
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

GCC also warned on this construct:

https://lore.kernel.org/lkml/201910241056.5U6SmK2P%25lkp@intel.com/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191024170939.GB40118%40ubuntu-m2-xlarge-x86.

Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL5PV3XAKGQEIQZ6Q3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3B9FA9D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 06:42:08 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id v188sf590662vkv.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 21:42:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573623728; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyTEM7W+wWeSi553xY0w98RKHg78HB5HhvaY4YwZqq7pmJnBmZm2fJ+uDQU6sb2Lh4
         E7UT/EvrHia1c2oCoTKfKBorTfdZgrhX1mwW+XYGBwb2cb/kvJhdzfarUyg/t+lgAWXH
         j7WekPJ7DcWiewHV5munEgaaStlzH+No0fjAPw6dNGwKyGVxkeqp+1FN1e7czvuQyoGD
         sZnbr/8HhGTVenGwcpDPwCDuEM6u7e1QXK3Fh2c20IgDQqRWSo86kYcAEmkKegQ7KwVX
         Ao7HOdTIwJJ0wowDC5uBNzny71wc7JsIPglXJSr33oPcofMnqX82OhIDADaCHiAYrZ2k
         4YOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=ock9OaEz/x642ahLzrEHPFUOCtstQKBLCzkmAcEQRJ0=;
        b=gPpzpFzYtEcv9Q4P51uMZDR7k2IXaOYdf4FJhisZuaBxGPKyLDvhxBvWWIcpP2GZIb
         msfTTY4oVQLZXtw2AGAOxFzKcYP8IBSqgG+1o+UTvz6dwp4dSZATL9fxVujQ2d2tqP4z
         lN7XbzAWtJa1L3Wq/g5RFJInpOJxcEr6Q9x418J3/7aBlXNK6Fgkef/yH2sI5pTN8SjZ
         GPhbG4SzNi0iIDqLQEyqy040e9gpjAVQ6eyYFlJbII1iiiI5D8b2n1eohYTBVko9HWms
         zuraSGRnh5ZPQS3Ep71YgTx06pPos05jmOHqgmB1iaBzZlR7jltdokXnsYUUdKFoOHhr
         s0lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lr5vbf6D;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ock9OaEz/x642ahLzrEHPFUOCtstQKBLCzkmAcEQRJ0=;
        b=lWKG6Bf2TPZyfdI0AMr80mHMlgP/0CAszqAno+Cso/c2jfWM6MVjWlgN3wxslP5HlW
         Vu7ZT5aVj3xkedHghCGPFler6dHKS0EtS1Be2l71qe7LeATSUwqWLryIErfrjdMF67Wh
         7Q4fgI9dxnucN2Ts7qN4KP+DexYjbHCBNBMg/CpuJgm09fweQ5K9pSUj3XQyVy9tQSGL
         bquuIbXjnxsVFabhVpLzi2ptGQJNJyABQ9faw9h5W0wvId/unn4UXCfQ4TZOaecI4LkZ
         O5AHQaSxOa0RYLkspQM8v08Yl5i6WBZMbUFNfp60pQke9JE3egcOyeSHyR3tIpjc8x6d
         mKlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ock9OaEz/x642ahLzrEHPFUOCtstQKBLCzkmAcEQRJ0=;
        b=ly7H0QDAIeZ27lzt0XspxdDr6uMRCMfrCX8B6QPfII1FBhkZ7NVD0Ns8Pbh5+xWlNp
         vF9Q7LfZDR6DIuTBnNc5cey0lPySKR8o2SD4cdJ7nyAkCDDdkqzIVkhWXu2xxegL9Bse
         ZgBedSWWYVe2f3SrvC2XJBe8m67FlC4G9+yuzs/PLFixVVxO5xbjDUfTSOS9tj2nZaQH
         iv+3ekYqHbkQP2byW16S39HGjSMczZ03dVbifXzv2ADdiaUCp2VJDBIkEXkq0lqHus2W
         ODz89WMTCuDuGOrgVf1QxLHS9qwE2S8t8O0C61s1gtEJWhEshZrLblYb4uK5zgKBPr6s
         CM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ock9OaEz/x642ahLzrEHPFUOCtstQKBLCzkmAcEQRJ0=;
        b=NWcLuCX5oVAl77pDh2a6kVshnvOqFeFVDCaK9PwliaF4AoEq8//Dl9kaBfz5zClmeZ
         MaqRHH1lxlVDpHoQ4ZUukpb1rk8Iwo02VBwUFNz9Bc5V8MH1ZlebzmFnPuErUB6s2cvQ
         ZFfuQvDYxDVmGNPZuCxq06lePwjXyfvBvkxW6fQZ8yBPfhxsYEymN/cWwjU6xvbbM0mR
         FtFeN5XDPiqWnhgVHBw/ElimDK1BlnTOpPQSKZLbeFs5vJgyR9vbv1bXOuZLowQy/rN3
         Sta6LGdvGFct1pVwBrbcYbmwybEonx1MbRrWyHKcndB7vg/cQqA9DfVFHGpUh0bISCxw
         5vZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUL6SpRFfEc2S40KnHXxyNk3Id3o7D7VT0uFf1thWXhb0WfnW2
	O/i/D6KNV25N0RU8D3zfglo=
X-Google-Smtp-Source: APXvYqwJ1B9RMZUpIhYhdA402TCwSyWr1Kp+ouf6OGidCvgtDBO6Aqxw3NB2E0EBB0SUYWbMDxVxdg==
X-Received: by 2002:a67:d198:: with SMTP id w24mr897748vsi.13.1573623727981;
        Tue, 12 Nov 2019 21:42:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9e41:: with SMTP id h62ls29617vke.5.gmail; Tue, 12 Nov
 2019 21:42:07 -0800 (PST)
X-Received: by 2002:a1f:fe0a:: with SMTP id l10mr654903vki.59.1573623727573;
        Tue, 12 Nov 2019 21:42:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573623727; cv=none;
        d=google.com; s=arc-20160816;
        b=gmxILgRVNC9SCZQzvwkGjorosv8MZO/9UCLSeNyN5VelRw4r8ktqxo8DoqyghN2mfw
         oGdOlzPZiurQJsSppzx2kvAvSLJmw1wJHmc0y2rsWyh6FsJBk1VwlFnNdgVbV7plFTZC
         qKBGJWN088eQAEPUJkdhQO3gM46M89M/jYC3HLrNSMTY20/redHDIB6Dj17pbmF1VNk2
         wh0g1f42/FoIZz6g5ey84u8SOnOqAV1eS897DrXa10iEBeO7h8phwAeO0kDEvgt/AJbw
         G3NtOmZAM+yYNkDZ5Ywk7rYgQvIYnIddm4BdaXytaOeEIoZH+5k7pUVtLQe2H39W6rXh
         tUPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Bm98LkZBbIpo0prf6inJ3dz23W5IPResDUKFQM7VQtI=;
        b=nQ3j7j1fEb4B8Qqi60gPREMYe/t4v3ZOcvjczRWDMVbLakNYFsdd2rFIxcxsVjuhRR
         A7YULh4Q7JnQ61tomqNePZZRUrDhOGLA/OmbAsMPoyMabA6X4ApodOAGy5ZtXNc4tClX
         oSWR10q15ujmeWQ7ZQNUeM2xHeR9Kjd2O05yaiiE4bv5/rNJYyZU9Mfdl3w3oXSiHkCN
         d5ArXHFit9dotYNeuqb7XzWUvZbkalCW5ygY3REOCfKsWKyK5pb9nWyholGlAbwmGZDb
         0Bwwb2M4Gkw0mioajW5SA4E1yTm4cEad3n3UksrQ68NJBsQZu7n62CVehsZFFQwE5hiX
         Wl5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lr5vbf6D;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f12si34909vso.1.2019.11.12.21.42.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 21:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id e9so691274oif.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 21:42:07 -0800 (PST)
X-Received: by 2002:a05:6808:2d8:: with SMTP id a24mr1382916oid.127.1573623726874;
        Tue, 12 Nov 2019 21:42:06 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s25sm353171oic.13.2019.11.12.21.42.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Nov 2019 21:42:06 -0800 (PST)
Date: Tue, 12 Nov 2019 22:42:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] Bluetooth: btusb: hci_event: handle msbc audio over
 USB Endpoints
Message-ID: <20191113054205.GA16252@ubuntu-m2-xlarge-x86>
References: <201911130402.mHj7sBAP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911130402.mHj7sBAP%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lr5vbf6D;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Nov 13, 2019 at 04:51:14AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191111111735.7467-1-sathish.narasimman@intel.com>
> References: <20191111111735.7467-1-sathish.narasimman@intel.com>
> TO: Sathish Narsimman <nsathish41@gmail.com>
> CC: linux-bluetooth@vger.kernel.org, Sathish Narasimman <sathish.narasimm=
an@intel.com>, Chethan T N <chethan.tumkur.narayan@intel.com>, Hsin-Yu Chao=
 <hychao@chromium.org>, Amit K Bag <amit.k.bag@intel.com>, Sathish Narasimm=
an <sathish.narasimman@intel.com>, Chethan T N <chethan.tumkur.narayan@inte=
l.com>, Hsin-Yu Chao <hychao@chromium.org>, Amit K Bag <amit.k.bag@intel.co=
m>
> CC: Sathish Narasimman <sathish.narasimman@intel.com>, Chethan T N <cheth=
an.tumkur.narayan@intel.com>, Hsin-Yu Chao <hychao@chromium.org>, Amit K Ba=
g <amit.k.bag@intel.com>
>=20
> Hi Sathish,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on bluetooth-next/master]
> [also build test WARNING on v5.4-rc7 next-20191112]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Sathish-Narsimman/Blueto=
oth-btusb-hci_event-handle-msbc-audio-over-USB-Endpoints/20191113-022414
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetoo=
th-next.git master
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project edab7dd42624=
9bd40059b49b255ba9cc5b784753)
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
> >> drivers/bluetooth/btusb.c:1658:8: warning: variable 'new_alts' is used=
 uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                            if (btusb_find_altsetting(data, 6))
>                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/bluetooth/btusb.c:1664:35: note: uninitialized use occurs here
>                    if (bt_switch_alt_setting(hdev, new_alts) < 0)
>                                                    ^~~~~~~~
>    drivers/bluetooth/btusb.c:1658:4: note: remove the 'if' if its conditi=
on is always true
>                            if (btusb_find_altsetting(data, 6))
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/bluetooth/btusb.c:1653:14: warning: variable 'new_alts' is use=
d uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized=
]
>                    } else if (data->air_mode =3D=3D HCI_NOTIFY_ENABLE_SCO=
_TRANSP) {
>                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>    drivers/bluetooth/btusb.c:1664:35: note: uninitialized use occurs here
>                    if (bt_switch_alt_setting(hdev, new_alts) < 0)
>                                                    ^~~~~~~~
>    drivers/bluetooth/btusb.c:1653:10: note: remove the 'if' if its condit=
ion is always true
>                    } else if (data->air_mode =3D=3D HCI_NOTIFY_ENABLE_SCO=
_TRANSP) {
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>    drivers/bluetooth/btusb.c:1630:14: note: initialize the variable 'new_=
alts' to silence this warning
>            int new_alts;
>                        ^
>                         =3D 0
>    2 warnings generated.

GCC also warned about this:

https://lore.kernel.org/linux-bluetooth/201911130514.lm3G26RS%25lkp@intel.c=
om/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191113054205.GA16252%40ubuntu-m2-xlarge-x86.

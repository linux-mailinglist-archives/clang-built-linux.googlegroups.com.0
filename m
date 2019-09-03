Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZP3W7VQKGQE3CYM6MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3EDA60CE
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 07:45:09 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id y25sf2428274lji.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 22:45:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567489509; cv=pass;
        d=google.com; s=arc-20160816;
        b=GH3m0ztg2NUTE1ecMEcDxqFjtLm8r9KGrOC483GLG54u60w1DrAvJ3cM9vrqqLutxr
         qRKY+kAmGu9hMjQHXMwmxX9xclCJoKtYCB3q10LxqyJ2ZppOVo1gOcJbWAI66iZvtLuF
         Jk0GUNFeHuc6rbT3EqnETM3LKhmg1fJ83vwgEp/NCvTv/MpB1S2FciH7L+F49RLXLLAZ
         TWMlAV0SpuF/wWZz/w7/I7RDxpp1prz9WC2I9AxRO7RVlzVr3ZFu8rws8egvxg1eIjOA
         HXtWnkQU1gFi7SmEMnVn8WldaxesBHiCXB3+DWlkE/uH74etO7/9BHE/2b08/nKgdXdY
         IcVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=tt94dY76OPAsz64XI+AW/gcEuG6os5LdZsMl8W14A+0=;
        b=oEuV9NNB27AjzPBV3Jq40ALzTRal+NlluzNqu4I6LntUHCGmGGZ61eBP1/CC1Vfab4
         /RzVDf3Vd2JOBxPCdBn3opO/rZ9dGLxlomMORIPnXHVc4t16Mq299brrM3TOM3QWekzT
         oYJFttvw3u9wIK+VQa5T/hnD7wPYh4DxCvXf57Lta9tOzKi93tZ2puw4n+0MkGf7/iPM
         nsOqVXSoaMHQZ1USl2mYc8Z5poV24wlE5MmisLjruWMWdM0q4mjqQHXpa3RKVvyMMv5Y
         sxWwOjY3Aqm1aT9qlms0Lv6RI26fTdCbk4w/Ew9iwagTc7cubDoh8Pb/oACjiiSOO/62
         PtnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gBruVQKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tt94dY76OPAsz64XI+AW/gcEuG6os5LdZsMl8W14A+0=;
        b=bWNGV2XSEItEMcIdg0ZujE5k7nUJ69sybvjacI5TiWpg47bA3uRFirl4arOQMtrcsm
         ihd6hyNd6KwOy0aWAeNmHh1U2C6ornjAT4uEBE3Mf2gaNbN+pn7zJ8e/drqAi+rgzjrU
         4P/CuKNERLGXmvu4Q5tuwvFNXtJpK+qd5p0UMIcEBlyhWX3nhJ81Srqpg+tfgiQUmsw+
         0eBPx6He9flxriooqXKV8s4qTVUzFx52FMUbq1kIkuw+Azpp2NMKHxWLHbiPsFk4EpLm
         WU7D2EP+rzPFStp25oII93eh4l/Cch4mtFc7HJkQrWYTuOM/Luu8xMmec7xTviq7d4Nl
         xNcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tt94dY76OPAsz64XI+AW/gcEuG6os5LdZsMl8W14A+0=;
        b=UmEMutFYUqw9oxYyijkJNqkzKtPfEDRmpVrinCzdP6Lzh9M4L3wBRfHKC/iuRCrihW
         lNfU0aiBpJ927Hr562xG9lVOBBrVIsi0GmsTlldvd0UKJ1ouP8GruA00W5N22poEQJFd
         /sRz/g7BGjPmezGT4GpbZdG0gA0N5h/FLivgwrHh52wNByznTyaXGBjVsM6WXr0EKrOJ
         mA35T6REDcEil5Za11vHvqp4BVTaYjO85jbebElznt3YDJl/qA/Rpp7DVKObHMHAcTad
         1MbSgGxkTh4G/KlppGjYSYnNmAqT0F6ewcsC2GuO9fsJbsckcsJcLiaIRk8L5MFGYKNb
         2BtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tt94dY76OPAsz64XI+AW/gcEuG6os5LdZsMl8W14A+0=;
        b=mH9X0rwtrZVi381uFMHMUIcggAKE6LorjUgT4rJv9kt3gQr8rEoQJMuejAxrKaAnNR
         FkHiilQtwo8iI+7t04d5x691YdS1JGe2KVLcThgazJT720d6UiDvrVSL9QIzO59p96AS
         xH7ykcFh/Dpxub0E6hoZzkarXVBiVWdNbnQ8WIZCKoZd1CtcEP76XZQAkdMrt3aZC030
         u38FPcbT16igF9poTJY5JZZtGHBUz8fsEV3Sx1hpmZcFcmf4R5koHVck7Q6dngtp69nI
         Rtz/jqgELLpJ/xuNzkjRT0zyewmppqENaRXsUikkUMtDbBEVjae18G5b3fpcE5Y2b6oq
         DoSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/elNuMsIx7pXFj4ZFtedpNOR09ev2HDPJQrEbBbU6EqXu5Fp8
	yU8aTTNc3FB5o6Oxj75kSzE=
X-Google-Smtp-Source: APXvYqwWRBh4jzlGNFAszzgr6URAt+E6YsYbK10QFywaT8R1WAvkF3dMZcZ51ijMNyOehrRF79FZdA==
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr12022226ljk.157.1567489509365;
        Mon, 02 Sep 2019 22:45:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:43ba:: with SMTP id t26ls1294195lfl.13.gmail; Mon, 02
 Sep 2019 22:45:08 -0700 (PDT)
X-Received: by 2002:ac2:5483:: with SMTP id t3mr4399678lfk.39.1567489508898;
        Mon, 02 Sep 2019 22:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567489508; cv=none;
        d=google.com; s=arc-20160816;
        b=03+EH173HdoiOEFyAFuNAwtlG0qSRbeYzZG/A7VC9JpgCIGBeHh4DDo7JXe5GzZQ9S
         sZLseWZDxx5x45Hf6IDdmDGLwGGnjoEcP2Cwz/J1cfnrACIqVC9/xryieKrzWrm4PXzr
         Gvi0iwisdx4pwJEEHam0GR7MAQnGC8UNki+xEMJzTq7yRl8RAfd9lff0fcJU4afxWyF3
         AaL/6i6T/pGk7vkYetAiEC/JIp9DpdFws8cWOpLWtHXyvrnFoAcBuP2j/h0VWngyUqRT
         JzArMqg43dKb9s19Iq/q+DpznLMmYjazNMngHlpMtuIvRBXu9PjZbCX8pacak68D4z0S
         mGwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EhXnlCKVuXOF6BrvmlaHOg9Tj0zxKpeIvej4UW0x/70=;
        b=QmFusKvm13dEQ9ZaPU5yC1t/Cd2K/IYRiQ8Eqk6sPqdAftgmRbWBBC2iYTP4dh03V5
         jq/vf1VuClpb49SDrG5Ir9AvdXRUlZMpBrybVJ8IG9FIpedz/LldoBG8PhfRoEqWhyEj
         uKOHN7NmGpuhpS+HgHsv2m+4DYeA72qUgA3+B3Jjox3MaTVMp34ucrHCF3QRBdA2uGvi
         +CZSyClFP0r8wtAJxo12jHHgqEUxShqUY2KGZus9IfDMQ+jJplSkSITvBUmCNa0+oT6v
         gQtiUbcgLPmiFZYJCNrpAsz+LgCL8zbDPlDVoStR6kLv7j525jl8suLwgaCbf43h97Yb
         BxMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gBruVQKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h19si966302ljj.3.2019.09.02.22.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2019 22:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id q19so7767113wmc.3
        for <clang-built-linux@googlegroups.com>; Mon, 02 Sep 2019 22:45:08 -0700 (PDT)
X-Received: by 2002:a1c:a011:: with SMTP id j17mr14340732wme.97.1567489508177;
        Mon, 02 Sep 2019 22:45:08 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f66sm5955729wmg.2.2019.09.02.22.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 22:45:07 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:45:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/3 v3] tpm: Remove duplicate code from caps_show() in
 tpm-sysfs.c
Message-ID: <20190903054506.GB60296@archlinux-threadripper>
References: <201908310120.B7DYie8O%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908310120.B7DYie8O%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gBruVQKt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 31, 2019 at 01:56:15AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190829204947.2591-2-jsnitsel@redhat.com>
> References: <20190829204947.2591-2-jsnitsel@redhat.com>
> TO: Jerry Snitselaar <jsnitsel@redhat.com>
> CC: linux-integrity@vger.kernel.org, linux-kernel@vger.kernel.org, Alexey=
 Klimov <aklimov@redhat.com>, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.=
com>, Peter Huewe <peterhuewe@gmx.de>, Jason Gunthorpe <jgg@ziepe.ca>, Jerr=
y Snitselaar <jsnitsel@redhat.com>
> CC: linux-kernel@vger.kernel.org, Alexey Klimov <aklimov@redhat.com>, Jar=
kko Sakkinen <jarkko.sakkinen@linux.intel.com>, Peter Huewe <peterhuewe@gmx=
.de>, Jason Gunthorpe <jgg@ziepe.ca>, Jerry Snitselaar <jsnitsel@redhat.com=
>
>=20
> Hi Jerry,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on jss-tpmdd/next]
> [cannot apply to v5.3-rc6 next-20190830]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>=20
> url:    https://github.com/0day-ci/linux/commits/Jerry-Snitselaar/tpm-Rem=
ove-duplicate-code-from-caps_show-in-tpm-sysfs-c/20190830-190410
> base:   git://git.infradead.org/users/jjs/linux-tpmdd next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
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
> >> drivers/char/tpm/tpm-sysfs.c:245:6: warning: variable 'version' is use=
d uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized=
]
>            if (tpm1_getcap(chip, TPM_CAP_VERSION_1_1, &cap,
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/char/tpm/tpm-sysfs.c:255:10: note: uninitialized use occurs he=
re
>                           version->major, version->minor,
>                           ^~~~~~~
>    drivers/char/tpm/tpm-sysfs.c:245:2: note: remove the 'if' if its condi=
tion is always true
>            if (tpm1_getcap(chip, TPM_CAP_VERSION_1_1, &cap,
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/char/tpm/tpm-sysfs.c:220:30: note: initialize the variable 've=
rsion' to silence this warning
>            struct tpm1_version *version;
>                                        ^
>                                         =3D NULL
>    1 warning generated.

This is fixed in v4:

https://lore.kernel.org/lkml/20190902142735.6280-2-jsnitsel@redhat.com/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190903054506.GB60296%40archlinux-threadripper.

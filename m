Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAWIUXYAKGQEZRU6KSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 305A312CBF7
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 03:42:12 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id z9sf17876856qvo.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:42:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577673731; cv=pass;
        d=google.com; s=arc-20160816;
        b=vmLZWGqSS61Q+BgyVPZQjnl2OkD1dXbV5BLVv4D5G76KzUEyCtxmbUu8pi6TYlpafT
         siMKsDoXe3navCVBfNQa+eYknIJw02Q9dHQ4oSiq7Vak8h2L/gswpfajEC5sqGZIdNQl
         98R/krkuEZ0kmMeEAdf3X7B5clynTGLWnUtrSWOoCQydbdu3gyFuqOJafQlAakikCAsg
         ff3PAVLIz+jh9oouuNei+8SZKd523Ex1Dvy9YmiUjbgUtg4QQF4YtZpg/MJUmwpp8qeQ
         6M7aHfZBzes2Sb6h6zlmRQnydWqpmewZRYfHavxEQOQ9ZGb4ov9Z2+KwYDCDR62ZfVzx
         fLCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=h8SOqh4IsY2bNlmsZAr1eVtQeK57PjEZSOqxk5FtPVQ=;
        b=GHcJpOmcfkFpz/vmAfjELUN9uvOVkIStlTD8MhB+zj9REEBxwuuf/bq37txZTFXS7u
         OQEK46B0siiac972HZpaPy3zvytSTd3rj0dEAfJnri6dsrTWVuD6XPvKd2wWkb2dTcip
         H0k5VfI/woeINoP86kwIjVAuH6abmWliDSYtC2GbpW0nlT1w+jTvAfdPzOxVY2XBRU4x
         48OuPV+Vz7GjFVEQgGbXd0JSAW1HTwJcwyCQvLf48ye9kFjiBh2NW6kMewW7Wk+8PtMq
         URG+RGIj57QSgzzPRYsxnNxx65wuqa4dn5QObaSp97JsMgF/UhYdNX9v9shaupgk/UYv
         YvWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NHWfLTDq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h8SOqh4IsY2bNlmsZAr1eVtQeK57PjEZSOqxk5FtPVQ=;
        b=iaL1osbPQz28tbDH0UcWi1MPL6vkz1pMPHyxCzuu/0ou7wwMGjHWXlKpVwyiMIaOi4
         kdLiswn0guqFBW5jId+6v66UptNoQrCJUTyVbUfkWJ3aks//LNNhBoevegdqrSNyHQM/
         NX6i6MXQEwTMAbEHUk2Me1RFvKDDQ+kPlpOLZdIAo9Ur9Hm6R81G/XbzsoPVVToqz/w0
         g/efvSf9dzbKuxrPgoDqu6Fjy2QXC0OBDparDqkXXedjXe9O4RG8JWHFvOqmN9JR2pKS
         7kNMWwkOwcjIEGu7JlAWE0LxxsAt23U0bsIOK2iWNVFum6zylvpozCrsBblLneI9hOGG
         SyDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h8SOqh4IsY2bNlmsZAr1eVtQeK57PjEZSOqxk5FtPVQ=;
        b=AlIEpFzi3ETtE+tufLNwc+7K20Dal1dBq3XSoKBeY1JAXUicetexf3kELpUnaQVOIV
         Cr3O5BJRmoAQpWnJsNE8I2L1YtpVP/9PDrsbPw2UQ5Svr7hRZm0W9xLOa+cvSBEg6J6D
         daKRS2Udyy1wqNpBOOem1EuS5erIlyOX7QtNDI1JXTRcXE95DSrlo+VqlAd8DEF0/w88
         wTurG4HCNkRDqDrtxE16C1wNGoizDngzdSlYd2FNTsDuTD7MDGpirnaVwqFV/Up6vh++
         bB9zVIVSYxTi20JaBcFDtvDekPAKn0peDXLygRcvkh+AH8U8H3LEhWwwtuzux3IOXOQT
         pf3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h8SOqh4IsY2bNlmsZAr1eVtQeK57PjEZSOqxk5FtPVQ=;
        b=M/Fr7DqSuN5fju8pbcO9UdSsYdGPDnyO9R+QAc9tcMKdIJvSuHDclVPlUyApCODqZa
         z1eip1Rm7zgMzz1JyXQE8rtRY/er7AbxY85h7754H9tzHL6RuFzSfSAf5k1nMwClQa/V
         ioB5JN8BKmDoa9CBGIgGSNlJmZgHw8kHR79TjDSn77g/zl08xwYG0TQ7tDJiiPhx85bR
         qJuwQv0d7FlwDWrMl7o+aUAj69zMXL5zsqmwURAy+7eFAk0QuFJ8eDLf91vGXrlDPOX3
         pGw3Z2GwgUzbKAxbG9BC0kG4MD5IiTtsXpIFcjkMbUXKMPlORi/CGZPlS3Lh8O1bUBLM
         vOXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUgULWksT4BQFai9kTUAyfkvZaAb+okCGK08r22bWztWqBfVjY+
	iss8UcS8W0JC8mC5dUcnfAU=
X-Google-Smtp-Source: APXvYqwSoECONu8zxdSQezv6Mit70HkvggkxwG6JAJc1lSaD9hb5eT+mE2jmmaqLeBczwHCtjMoUkA==
X-Received: by 2002:a05:620a:62c:: with SMTP id 12mr53009066qkv.154.1577673730851;
        Sun, 29 Dec 2019 18:42:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:73c2:: with SMTP id v2ls1503605qtp.11.gmail; Sun, 29 Dec
 2019 18:42:10 -0800 (PST)
X-Received: by 2002:ac8:690a:: with SMTP id e10mr46906112qtr.266.1577673730574;
        Sun, 29 Dec 2019 18:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577673730; cv=none;
        d=google.com; s=arc-20160816;
        b=OB1ljKhB80B0V4h6CmWyVyKpb+DBWf3Hi/0nciV9mtTy0jYheW295gG7ST+Xp/B/aU
         UWThw8TcXL49R1/fxJivlj09YcvWqhdpsImu2o+3/oKc1xM+fG23NDzDYV2ScY69E+In
         DBpIiIpPYEV+PiU376+PYwx8yVjJT4JEJeDMFEgNPZFbyZ/lo0JTs/P0C2bSOiifssJ6
         oCiH6wLyUuspbsCb80QBtOVwf4Da1KVbDsHx00whSddjOyJaVgei141DDpgWLp2qVGch
         8UdqNUUw7Wn/OlUXEIsDDCOGAkWB3WDbNyli2k0A6cMFnWNF2Mw2WmaJFOoLVwHugj/S
         +Npw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kujmfmbimXJBGxoKWGxiZq/2jw9wVJ8jjzdt8qSaqu0=;
        b=mQfAlMIxDqvdvTyhMzEqf8R8aUJ9GrLLpX9QDQ2gNrVHhcABKIMd0O9Q2o6EBiQfor
         OUY6zCl5ZkgfJHjreKjRy81pWkv53/h41mUKJtTjqLLQ0u0IeRM2YJ5l8WU+y+4g5ZFz
         nnvWLF5o/yAjgKAfZ6qvGpC9OidqH+MlfTxCg6x8E2RoOWXEjfPP48cJrqVsgXsa0V+J
         T5XNfMoUndBqk3LYa4SZF27M1lzkIXz6HONQ8wbmD8BTDmsze/VoTdiBOYGdmKeWxHD1
         JfoPs+RSJAXzoQ9wfMe1ReSJIqFM6dsGTBmS08q/c0XLaGXanCOhvv/L/rXVnIRbTZ0M
         dRSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NHWfLTDq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 145si1414217qkf.1.2019.12.29.18.42.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2019 18:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id a15so44503497otf.1
        for <clang-built-linux@googlegroups.com>; Sun, 29 Dec 2019 18:42:10 -0800 (PST)
X-Received: by 2002:a05:6830:12da:: with SMTP id a26mr49702669otq.223.1577673729986;
        Sun, 29 Dec 2019 18:42:09 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g5sm15070590otp.10.2019.12.29.18.42.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Dec 2019 18:42:09 -0800 (PST)
Date: Sun, 29 Dec 2019 19:42:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/12] pm80xx : Increase request sg length.
Message-ID: <20191230024207.GA6257@ubuntu-m2-xlarge-x86>
References: <201912260309.WtW4w53c%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912260309.WtW4w53c%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NHWfLTDq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Dec 26, 2019 at 04:12:17AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191224044143.8178-2-deepak.ukey@microchip.com>
> References: <20191224044143.8178-2-deepak.ukey@microchip.com>
> TO: Deepak Ukey <deepak.ukey@microchip.com>
> CC: linux-scsi@vger.kernel.org
> CC: Vasanthalakshmi.Tharmarajan@microchip.com, Viswas.G@microchip.com, de=
epak.ukey@microchip.com, jinpu.wang@profitbricks.com, martin.petersen@oracl=
e.com, dpf@google.com, yuuzheng@google.com, auradkar@google.com, vishakhavc=
@google.com, bjashnani@google.com, radha@google.com, akshatzen@google.com
>=20
> Hi Deepak,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on mkp-scsi/for-next]
> [cannot apply to scsi/for-next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Deepak-Ukey/pm80xx-Updat=
es-for-the-driver-version-0-1-39/20191225-181036
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-=
next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9a77c2095439=
ba41bd8f6f35931b94075b2fd45b)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/scsi/pm8001/pm8001_init.c:42:
>    In file included from drivers/scsi/pm8001/pm8001_sas.h:58:
> >> drivers/scsi/pm8001/pm8001_defs.h:102:9: warning: 'CONFIG_SCSI_PM8001_=
MAX_DMA_SG' macro redefined [-Wmacro-redefined]
>    #define CONFIG_SCSI_PM8001_MAX_DMA_SG   528
>            ^
>    ./include/generated/autoconf.h:10861:9: note: previous definition is h=
ere
>    #define CONFIG_SCSI_PM8001_MAX_DMA_SG 128
>            ^
>    1 warning generated.

Also reported with GCC:

https://lore.kernel.org/linux-scsi/201912252340.lP6Q1qf6%25lkp@intel.com/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191230024207.GA6257%40ubuntu-m2-xlarge-x86.

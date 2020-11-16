Return-Path: <clang-built-linux+bncBDOIB4GOWANRBZ5EZT6QKGQEAIQV7ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8FC2B5570
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 00:59:36 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id c2sf11997884ioq.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 15:59:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605571175; cv=pass;
        d=google.com; s=arc-20160816;
        b=trq+kPLec64ycUiEDyLXByLIvkn75441qZH/JxK0EODuOKRmJuaRScr9zjlcc5U19g
         zLzqiGCtn32iZzSpGXtRpujVgxGtCkpK3zfOm/2LTSZYEPRD24mqTHU0X9KN4zeKVwMT
         ZTXElOlBMOlaZhIEJGcjVmNABGig6Yovg240kMu0gsPqYXohLAbInMzqvJq8MK8tuzBx
         r8Tet+rI5sYeiFOvchF/W/j++qa/uWRIiTH0U5wtvlMNXUKOD21KuSXC7Pcn6EHi/c8S
         SR6sZCAT4hRKLZN/Vm4yRuhmE88gcdnocGM2SHPxpa/Iikh5yqPPemsD7AoEHFHL/GBg
         2FSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=xaBc9iXzmahj/PPArvAMWY8bADUAT/6fIoPwr3Kp1jE=;
        b=Ja1ZGq/EBoTcnIj9w+KKmcks97ABsgPYwRYZvhApyYouiSpfHwjUzQ76LgORicR9Ww
         hGUpT80goDWlbFLNJ3GO51Zve9kdYzacA0YfsRgzEYNQ2ZlHB9TAZ6GdxY+hYipT+MUw
         4+SoSkUbsoflIOcV4EkZxJaBtV0wAOkyxg9E7KoWLMmOkUMD8MEJ83Tn31JMGWxh6qMD
         QUeplU2Y5JnLcKJmugltSb0hjZfN1cJR4LPyO+RV52uJhwh8hjqZEUM4tjVswOfmx4SF
         5Mgx5VbHP+Rl/hFjqv7Jtsbq46qR9P9vU8oyTaC6NG2j9pz6df1Tg8oPGqnfGlblbfQs
         +DUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTvN2Gpg;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xaBc9iXzmahj/PPArvAMWY8bADUAT/6fIoPwr3Kp1jE=;
        b=K4BI/kDFggfpil4rNTU5LwsXXmhrVzns6PQ0lingE+lVKzQHyRPNxYkNuPdY3yiHsy
         EQgrmZ0TuV0rkJKwnTDFnYYv+55oHGfoqt+AwNx/T+nALZonQOeKtyGfo9kBfCqJg+PO
         ckhCVg+lwFXbAii2W/SGTQqOFTDxptgxDp1chkxk6t1SL8qo6C+ud77mgudGgB/cYrsD
         /W8UubrD6fedpbCDDHiXOLQTjjpWIExIGTo2gq01hq7DEJwHkG9XH9JwrlCUm0IQiR+Z
         IwwK9Ivrs38vvSjxFw+jIDq1tAmzQOebcLov72mbKT5KMtgGqTWkFQCfnL6mn7TFXVo+
         5Zzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xaBc9iXzmahj/PPArvAMWY8bADUAT/6fIoPwr3Kp1jE=;
        b=u2uPxoZoEYp2OmPbv4IdA6HEI5VimV8+1AnDzmp76hbyeNU0/85ozLrgVlwG3cb2Mu
         VGLbHS9KFDvjXnbc6p+PjOvgai0aAzgbC6gcIBlEdgYbipNPfiZoEGewKuGRvbjhJp22
         cURxkNWCCiBJNzcB/Ivl/fIh9OHWUDL8NiRDOE5bRv51gOr8nMzalJ8LzNTC0BtOb/1T
         9hs4koVIdJIij67CENzVwROxZsjnTW7rj/Eruzd2BpbGuS/fP8PhmBSJyHDnx7uPGJk1
         9cYrR9KNyV3YvlmsDWSWo1cgvn/IAx6MBG3ucvn07ZNiZukJISOuLsrkqR1hivrptMGM
         bqhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xaBc9iXzmahj/PPArvAMWY8bADUAT/6fIoPwr3Kp1jE=;
        b=Bt3l6rmY6sqe+8x8TrXQXKLH8HpYKmw7lxlDJIz5zXCA6KX54wxUi8SB/UvgAqOf9O
         HhOIcDMc/IHfiKPAXxUwplj0a5BhFvVX2FnIEQW+vQPeojxu4JItnnR/NNtTUSVEkPuk
         oaGlgvlyzA5IUXyTdG8j2ZCYoyUW+crMPDcmVzMIfd2G6g44gKpoDBasp4NAA9jqzA4S
         atzN9BkKpFp3jaonXJ4y9XsLhTorTXopQnp5up5IDWjjtU/vXBy7Mk3j91DX409y73LI
         BdkPBCvtsG8dZvVK2cClc+uuL+zxXKynWenq8r/eAHrwC4/pgNOVo5zaYXlFIGxjwo7f
         RmuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U2761/vIgANNUdzQts/Fev6ucGho1Vk1xMRqCy/n7JD7slsfE
	kbtLOlMRGTzDZgc1LjZ4lvc=
X-Google-Smtp-Source: ABdhPJyuqkBcVZ19CenVS8avQVkawfAJ37RujCYUb/USUZ2I6FDV/sagOPjFeooe+/7APxxODEj8QQ==
X-Received: by 2002:a92:4109:: with SMTP id o9mr10469665ila.239.1605571175291;
        Mon, 16 Nov 2020 15:59:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f003:: with SMTP id w3ls2227672ioc.11.gmail; Mon, 16 Nov
 2020 15:59:34 -0800 (PST)
X-Received: by 2002:a6b:fd0c:: with SMTP id c12mr9389320ioi.107.1605571174835;
        Mon, 16 Nov 2020 15:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605571174; cv=none;
        d=google.com; s=arc-20160816;
        b=l4fCEk2Bx5iN61TlYInYhVuZoqYCFF9xFMmjusU6t9I3Zb8/VdGok/mJRARfmraHJw
         WxwjP6hx8P+GEHZgcxkoOBnkGTw4ystHk+egorfJ7GWhE6bPyhPXG9ZWZdMGKfJL98uO
         vTP/OQRtOaLSp1UrBqPfsr8nua4LbQ3TX8HcbfzpAx+cM+3/0fur2RTVOHOnBr1fozui
         tpqPseSnJpigYlBsQo3bxZ1IsoyotIIQFMGyP2gFTFLYk+FLwWt2w2mZfA1YWAoJ4Afs
         V7DwrryweNxX5A8zqQyLzd5fuUHULUNDEMyeyAM36OJrGq/X18GJ1plk9zgX1CmqbbGf
         2pJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=O1xH7v6ktQVn3E0/2gxoBsc75hXO4ialu92ExENyQt8=;
        b=Fy/C2XM4E0U7uOOnNEERNJbtjZyI95GveXNGeIiwNqSnuf89pQBwpq7iHlJKv9KD8z
         MfvmZ4sFNmjBWdNNeA/wJsxPbqlakXl9pvpJWEYwxd7I//y1P1Tnkyh8FCQr6KZ5GdWZ
         bkvzZHSabEsTyVH9unMFGna69dVHXXe4/dXyVCU1LXOIbLvBr9QqwBk6pZDdEjRgYSse
         mXRfrcY3yzxjPoEa7U6Wzp4Ae2j/0YeNxvuzeKNZVPkQbprDuJhL7VNBvQDX17IjjZNS
         iH2fXxbln2r+Tv7+zjISdCP2OAAbMR3oZ90ExCzxHuy6VOSSLys3LopZJKNzXrb7nyrc
         z7lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTvN2Gpg;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id y16si897521ilk.4.2020.11.16.15.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 15:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id v12so15683745pfm.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 15:59:34 -0800 (PST)
X-Received: by 2002:a17:90a:5d93:: with SMTP id t19mr1437516pji.220.1605571174368;
        Mon, 16 Nov 2020 15:59:34 -0800 (PST)
Received: from bubble.grove.modra.org ([2406:3400:51d:8cc0:2b49:d8db:361d:de4a])
        by smtp.gmail.com with ESMTPSA id m3sm19708513pfd.217.2020.11.16.15.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 15:59:33 -0800 (PST)
Received: by bubble.grove.modra.org (Postfix, from userid 1000)
	id DFD9B85935; Tue, 17 Nov 2020 10:29:29 +1030 (ACDT)
Date: Tue, 17 Nov 2020 10:29:29 +1030
From: Alan Modra <amodra@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201116235929.GT15956@bubble.grove.modra.org>
References: <202011131146.g8dPLQDD-lkp@intel.com>
 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86>
 <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
 <20201113200444.GA1496675@ubuntu-m3-large-x86>
 <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
 <20201114002037.GW2672@gate.crashing.org>
 <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com>
 <20201114005015.GZ2672@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201114005015.GZ2672@gate.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: amodra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QTvN2Gpg;       spf=pass
 (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::433 as
 permitted sender) smtp.mailfrom=amodra@gmail.com;       dmarc=pass (p=NONE
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

On Fri, Nov 13, 2020 at 06:50:15PM -0600, Segher Boessenkool wrote:
> On Fri, Nov 13, 2020 at 04:37:38PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Fri, Nov 13, 2020 at 4:23 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
> > > > > > > Error: invalid switch -me200
> > > > > > > Error: unrecognized option -me200
> > > > > >
> > > > > > 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
> > > > > >
> > > > > > Are those all broken configs, or is Kconfig messed up such that
> > > > > > randconfig can select these when it should not?
> > > > >
> > > > > Hmmm, looks like this flag does not exist in mainline binutils? T=
here is
> > > > > a thread in 2010 about this that Segher commented on:
> > > > >
> > > > > https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD=
2391AB6E@kernel.crashing.org/
> > > > >
> > > > > Guess this config should be eliminated?
> > >
> > > The help text for this config options says that e200 is used in 55xx,
> > > and there *is* an -me5500 GAS flag (which probably does this same
> > > thing, too).  But is any of this tested, or useful, or wanted?
> > >
> > > Maybe Christophe knows, cc:ed.
> >=20
> > CC Alan Modra, a binutils global maintainer.
> >=20
> > Alan, can the few -Wa,-m* options deleted from arch/powerpc/Makefile ?
>=20
> All the others work fine (and are needed afaics), it is only -me200 that
> doesn't exist (in mainline binutils).

Right, and a quick check says it never existed.  There is e200z4,
added to binutils with dfdaec14b0d, 2016-08-01, but the kernel -me200
was added in 2005.  I suspect the toolchain support only existed
inside Freescale and pushing it upstream was too difficult.

--=20
Alan Modra
Australia Development Lab, IBM

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201116235929.GT15956%40bubble.grove.modra.org.

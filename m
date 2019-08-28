Return-Path: <clang-built-linux+bncBD37J5WD5QIBBGMCTHVQKGQEVQWI2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 467369FD83
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:53:47 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id u24sf127912uah.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 01:53:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566982426; cv=pass;
        d=google.com; s=arc-20160816;
        b=fzaqN+LS8CcGohQlmfBN6L5YhkKfUFNRk1iEheczcklImaMwqJ8AKgcYb/Kth7DgmJ
         kZnoSIMNNQ9wW5VsUo0VstIqn0cUyOKhQVEpFjL3hM9uPVyfiWVQQH70y+ry/c4bDEp8
         N1eho9/zTQLxApuUPXOqEfBFMOCz/QxZbx4u7LbrWrCsiNR5Pp4TSKEViapipTtJUTPr
         V0SA1LLsUxb3jlGrjMq2HBv5W3z7K5OKyT6j60OntZdHluwn/vw9lu/ZWYYO051g+ulR
         3/fV+zxvOfmmcnmW5tKdwdGfwX0HpC8abuKz7v7zksYsOfe9dBIVYc7eQUgvZvMggN/G
         0mTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=LTuQb7tnWsfL5Mc6R3BW8Kn5x2BloAcro8/R7ShmoJk=;
        b=Vk88O9sG+/yBjEJDuSJ+a4nRS361mqo64uQaUKINtWev5+OSmXgC10qtYwMInIrCA8
         1azJROM2BD8l5MSB9vtvp+U8G0z9AnxPJvRP8+tHhYFsk17VWO9DO1MITTKe7KTdKKiY
         1gD6K9V4YHrskVSJODdZOXDwW/n8jilATzuKhpABGMsvZoQaO1FtH0qYT0MJd67Yw5Kf
         TaNF2oIS1OE+26bBSjU6fdUVssaIUHB7VQRFPsaAu1fCiY/USPMoel0yl2+Gx8RIjYFi
         oiD+2PyOny056DfEU2FbK/oxyhRfHd7uAnoW/edmdNDMHuwrS4kmW6XY97Alh44JrnEd
         Lzng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LTuQb7tnWsfL5Mc6R3BW8Kn5x2BloAcro8/R7ShmoJk=;
        b=mpZGOtggMnwwM7H/esHxbczIXeafXFIJbEqfpvJIebx257N7Sq0H6Hk46PeKoOoKQw
         4DLz7+X+X4NICWortY6ENPTmWXxWMVh8rdKeaDOEFa83oOd1pF8DWB4qtoOD62y+t2tk
         g/op2vbPO8nnBWQ9TgfEEL0jXu8eM0PleKeIhJrAYpmo3QLlz9I/sW1qK/kMP5hJlJjM
         fVfILB1UxtWWuGMLv6otHjV6Ypz9T+Mz1ZTT9QUsca8yUNC/3wBAN8a1CGrVHQExGs3a
         /nux/iPq7tXdC/WM1k3knL8htolWGeBOlsDL9YtdTsaCBT7LWPe9VaE7moGNgIO1iJNT
         /uPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LTuQb7tnWsfL5Mc6R3BW8Kn5x2BloAcro8/R7ShmoJk=;
        b=dYZ787cJTZr38P60HZf/snsbE2l8cgkMXDMpad6auEAakeSmqgFcIOqDFQoeuDvTs4
         UwlkIk2di0BkacMXU9s5cXq6vVlgFyIEKyYTEtsxDZbOFzPfvNTy79lbv8dWMIKh8unm
         /9lhHS/5dRpaQoqm7I5eNHlyYQSe1FHXNqOsQZspItx37G+8mt4JGDNWhdgPN7jr12p4
         dGJ7wXlAyhC1xrijfmbNPVxT0EBGcZGQr4skQu3hTi9NCRz5I9SQ5pXFjCL41kp+XdLK
         qYFnWKJDiD6U3iEzYVZzyByzAZ/Lqu6JGszILWaEtGNmpXijtaAiWkvr8iufZLUetWOp
         dqQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU38gG4lbdmi0Lxp7xqm2Bq9rwyrNMVaozc2b9tkG2QXpo/iifH
	EztRIlcMYFGruCYVN43oRY8=
X-Google-Smtp-Source: APXvYqyt/g1rWZg7R4FqsXGyGR8nCUPVCJEFkfrNeYkzrVjfmFuvoaEjWY3OufmXrPJapxEZl/sFhQ==
X-Received: by 2002:a1f:f48f:: with SMTP id s137mr1645489vkh.10.1566982425844;
        Wed, 28 Aug 2019 01:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:318e:: with SMTP id x136ls241595vsx.0.gmail; Wed, 28 Aug
 2019 01:53:45 -0700 (PDT)
X-Received: by 2002:a67:d69e:: with SMTP id o30mr1760720vsj.126.1566982425651;
        Wed, 28 Aug 2019 01:53:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566982425; cv=none;
        d=google.com; s=arc-20160816;
        b=iILS3V8rByS3Ex9N5HnZkceDdaJst2zgkPgAdTTDZFy6By2SK2tx9OETvNtrwhUmMG
         /rdE6qqC1feIoarKcGcq/xonKNPjJvlcx4QYBeyUI7jQfzGbihwkfXivuqgAZXfYl0Wp
         73zdukPCFar3tL/Q5P/VYK30o3kO1a6tNB1asyfkdEyecdwEIqveM8kc8je3OsDsSLf+
         VR74FgG0xVUFUggW6EucIxGmDjRhXtf/TIT15sCoVLcWO38YK9bNRc4pMd2vBSwmsmMr
         GjKxG98NQhOD/9Gb/Hf5LP7FjUf5KdB2j7LxKZoKBojt/HAVLOvK452f73iG3BcAwzUg
         LUNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=BlLu1JyW+Ocf39pV58sB/KQOqFBNJxQ1sssTXNhJoEY=;
        b=iLptcI5ZH2m8LX4eD1KgbF6XUb0tbsbBIT4zv6vtzIFEM9M92Y4R3fAZhMO2ekWC/l
         7lqy3Hsm3J911Uo8ZIN64Y/vCMQrchuXbvWKWxM1Z86vFKPNotdKsasZO8RRPsHVUnLV
         IvIvDnDtEY+/v1Qp+xCFIUUYleSOBlBHj/b5rxlAvOEN4WgmuKZJYn5R1/T03/I5K2hT
         /HoRNiV+WXlc9i1Fz2k5Sbne0LEtqnjC2/j2tc4CmwrMTXxu8vNSkjwjoBfB7k9blpSX
         FzWLN/IQm2Qd4hC91nLmkbusCvxGXcexNHiU3PJhxlPHGQahGnojmdZDVwvXPvkXaRrC
         +SDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 129si82503vso.2.2019.08.28.01.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 01:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Aug 2019 01:53:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; 
   d="scan'208";a="332095289"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
  by orsmga004.jf.intel.com with ESMTP; 28 Aug 2019 01:53:40 -0700
Message-ID: <b94af6b2101f436c1bdeec744e164c78ee7c2682.camel@intel.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
From: Zhang Rui <rui.zhang@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Daniel Lezcano
	 <daniel.lezcano@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, edubezval@gmail.com, 
 linux-pm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry
 <nhuck@google.com>
Date: Wed, 28 Aug 2019 16:53:49 +0800
In-Reply-To: <20190819102131.41da667b@xps13>
References: <20190613184923.245935-1-nhuck@google.com>
	 <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
	 <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
	 <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
	 <c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org>
	 <20190819102131.41da667b@xps13>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rui.zhang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rui.zhang@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=rui.zhang@intel.com;       dmarc=pass (p=NONE
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

On Mon, 2019-08-19 at 10:21 +0200, Miquel Raynal wrote:
> Hello,
>=20
> Daniel Lezcano <daniel.lezcano@linaro.org> wrote on Thu, 15 Aug 2019
> 01:06:21 +0200:
>=20
> > On 15/08/2019 00:12, Nick Desaulniers wrote:
> > > On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via Clang
> > > Built
> > > Linux <clang-built-linux@googlegroups.com> wrote: =20
> > > >=20
> > > > Following up to see if this patch is going to be accepted. =20
> > >=20
> > > Miquel is listed as the maintainer of this file in MAINTAINERS.
> > > Miquel, can you please pick this up?  Otherwise Zhang, Eduardo,
> > > and
> > > Daniel are listed as maintainers for drivers/thermal/. =20
> >=20
> > I'm listed as reviewer, it is up to Zhang or Eduardo to take the
> > patches.
> >=20
> >=20
>=20
> Sorry for the delay, I don't manage a tree for this driver, I'll let
> Zhang or Eduardo take the patch with my
>=20
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
>=20

Patch applied.

thanks,
rui
>=20
> Thanks,
> Miqu=C3=A8l

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b94af6b2101f436c1bdeec744e164c78ee7c2682.camel%40intel.co=
m.

Return-Path: <clang-built-linux+bncBAABBPVM535AKGQEF5NDMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id B8284266204
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 17:22:40 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id a8sf2532576pjk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 08:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599837759; cv=pass;
        d=google.com; s=arc-20160816;
        b=LJVDnIT+f1x6A4gsxaN/q6mPVcLvZcO+ASFLKTm9LGuX2Q4Hj0LHqw9k3Tm0bVUrUq
         5hoHo3PNzrfFGkUmRBThK+olaW41Ef4fInIxdx3UObwepenaMzhomRVMCldsAYFhxBlM
         H/0zxdWhrBX2oCHyI9KLgc800RO7yx6jZMD86rY3671LKqVFGGB9ANtZi2v0K7QdmNjZ
         RlMR1wLMumrt/uFl/peNtjUZL+FVszqX+too7Aw8F9RJQD+tfwN6vusgB0p8tk/g0u97
         i9qwikRkmjbrpVNMTMZRE8j8f3plB+/E/W5eHqwWYX2rdZIiVZXO//5nzuqwcCxJHRDH
         qQjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JUvRFtR8803myfzujNrW2bRgSWNksrt5hemUfl46FRo=;
        b=Wrd1WQCLECzTqgDzpcdWMnA13Db02IN/rpkZKIjEPUm+hd0+/e3xSk6HG3pAzKxDbC
         Hz3Eb2KYF3mNKMTdrhTYdxrSD9UnFEW2vnguiiZHsCXId48Hk9l1j4q0WgGF7W5WnZtU
         cWm0h65wzASMtRA1zMAAhiluoHebR+46ASlBMvspUa0aWlRT6kzzCyRlCfHIlctLDdoc
         DwLvpWj9v99bC2RLlyj3OjMpbleFhDM1A5MlZ+lx//CA0HFmvdSVRI7M7EUtyXJ8DAsr
         ftO2ak7e9GV8PRTWSfBXfbb6xf7Fl/wMisy4VpeuGr0vZBEN00kHXIx3LJ6U7Mx27LVA
         hMmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="hL7tU/I7";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUvRFtR8803myfzujNrW2bRgSWNksrt5hemUfl46FRo=;
        b=B75zgSQTuIiGYALNmTUJvOdx3qFoT77c929PUBBKGICjm7+She3iDQnx/8QJQ1ZGGq
         zci7ARrFpnm5sNaxrFVUv+lyY5FShPyRSTGq7JnDqp5xyvnmJb23P/Qul2dsxZJErtez
         xovQ73So71+nipFtaap5l70OYJ3rIPIOllVIdB2A4NoyiKo8UdXkOXnRWFVYhYEumwXZ
         YV9dVzZTGATG9L/stD/tAsCN9CLXAJzxLbQt98bQm/BEeuAywr8Gob17xkez4td6Kvyy
         R8ihrTw53HGnrPUzRhsMQeddwnJ5UTTdM377/+eR+L3iEbMCy6KPmrsjws0mW8JmOlrF
         copw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUvRFtR8803myfzujNrW2bRgSWNksrt5hemUfl46FRo=;
        b=YZ2JS3c2NE917XzQYcO2RbkiJkoMaBUpNlSBw4ZzxdhUKveWI+0VRW1ZIgVc131zy2
         cpO0SFlRhPiuJCIpvnDshKJXlogdbAQyoi1OLYZP7nRvV9JNYSPKNRMwaKaX4mdP7KCd
         NBf5SwPPTg8EVB4NegE39pbn2tDdGxBzEphZ9hCLt3wPaGFokC+ortK7/smUV2OIj6jK
         fbR0FtZ+ZvtOGf95btWHkivBKxGe0FX7zaSbXJV84tKbddQTf9PbAIbXsokpASd5Fp71
         DQtbYMk9V5ZfGocQ/PNU5b5l1Sf8qnN3YohYSFdNvj5mjbQiVOIcXYi6KUFzn15Jeogk
         0Grw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331OKe8cglYHyOECqjvRal2RAI4uAnnIYwuGe/jjc8AFPKR2QeH
	Ex9jR29QJQDhlgOcMBznV8w=
X-Google-Smtp-Source: ABdhPJzSE3z5Lr2/pArrqjUZ2cD7FDxpD6zrfofKS+R7SauvhPAokjuXbDFdsgBAx8MWU8AN/CxXeA==
X-Received: by 2002:a17:902:9a44:: with SMTP id x4mr2511803plv.31.1599837758960;
        Fri, 11 Sep 2020 08:22:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls1223896pjb.1.gmail; Fri,
 11 Sep 2020 08:22:38 -0700 (PDT)
X-Received: by 2002:a17:902:a585:b029:d0:afd3:d851 with SMTP id az5-20020a170902a585b02900d0afd3d851mr2958481plb.2.1599837758478;
        Fri, 11 Sep 2020 08:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599837758; cv=none;
        d=google.com; s=arc-20160816;
        b=n1RpH9tC3QQgz69VQnPuuPmTme7ljpSPeCPydxB3cCAOjFHSyrNhhd7muGaxjh7rbv
         42rYL/UKgQfN0U89e5omvXXrt/EX+q7qpxyz4XsRFBamdVESiq+wDfOSzg2geSqXHKyt
         laOrJYWNpQNQ7nPSH60dDDdwAbKn7SszL323fplFebeehL2tUFfIDMJ8HsIdzxUdLUxB
         ybWNAHXow+zxhnOqYDKPC0v92s0FSkxrZSWMMsmbQsl/l5DEBMdawjMUHSiA2H+NXQ8/
         IpGNstttfp3DfQDzVNrMOd25y42+j2hKqqCKGh0hsNLzRvzLYQSrcHQi6l3v4NvJW6wN
         g0HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=w/9PBNVGHi8knLUQFsl8kSkJYygP2ZoB7NKStUSadKg=;
        b=k6yQPluok/skSVt1jedEk8bCrQoec+BUurxAqJabpeBAJzxtSyy23mCTPrJ7BQ30Ls
         AFW3bNYuyNvFu4ULCuLYpjkOd2XYgWyc0ugcQrvqojLWsKOzU1PEY72IE28/LKRGvnsX
         oeKurklnO6zHzSTPFOxyoBs4A8VkShAuTAcl15OK1TDC2YGLYAfUKd67NKIg6ufF2/h4
         In0VoyMmaZN4PBXvrYJaOWe70rO1BuVVfieHyq4x0XN7KJvcMW4NQGKX5RqivuXJ2Co8
         IIC/PNPO9TAxS08rY1L5bDWRNgR7cg5uZmzBPoRwUiItGruMjXFUUHB86OKbOr1/39tf
         hdBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="hL7tU/I7";
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v17si192857pjy.3.2020.09.11.08.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 08:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9045207FB;
	Fri, 11 Sep 2020 15:22:37 +0000 (UTC)
Date: Fri, 11 Sep 2020 08:22:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Nathan Chancellor <natechancellor@gmail.com>, David Miller
 <davem@davemloft.net>, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
Message-ID: <20200911082236.7dfb7937@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200911111158.GF1551@shell.armlinux.org.uk>
References: <20200910174826.511423-1-natechancellor@gmail.com>
	<20200910.152811.210183159970625640.davem@davemloft.net>
	<20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
	<20200911111158.GF1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="hL7tU/I7";       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 11 Sep 2020 12:11:58 +0100 Russell King - ARM Linux admin wrote:
> On Thu, Sep 10, 2020 at 05:31:42PM -0700, Nathan Chancellor wrote:
> > Ah great, that is indeed cleaner, thank you for letting me know!  
> 
> Hmm, I'm not sure why gcc didn't find that. Strangely, the 0-day bot
> seems to have only picked up on it with clang, not gcc.

May be similar to: https://lkml.org/lkml/2019/2/25/1092

Recent GCC is so bad at catching uninitialized vars I was considering
build testing with GCC8 :/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911082236.7dfb7937%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.

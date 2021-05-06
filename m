Return-Path: <clang-built-linux+bncBC7457HKSMPRBBVN2CCAMGQENDCESVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-f184.google.com (mail-pg1-f184.google.com [209.85.215.184])
	by mail.lfdr.de (Postfix) with ESMTPS id 3464337584D
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:17:12 +0200 (CEST)
Received: by mail-pg1-f184.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf3523310pgb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:17:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620317830; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRI5n1TuRgt7N6/GMNoCWAUiy4A6QVIC5IcPVRR0LFmqoi4QF83qwge/BZcdIl63XK
         Cz2nbumxOMRBsBjppPe64D2Zk6eU6UVmrjQzolpeEdNyVBwwn0ZzpvkamrsxDiLSXT5N
         +HcT6h6MDRuyPndSXUSAcRUQUnwEnSmHVrWuV6kqx0hlHyCAPiJlQW3GHxha4ZDKPM9h
         WFsOJVv7YUm7Z6B3aYFs1C33cSDG8Ymh4SlyRzs/wBYdLnGS8wDlBYjksuNBtOAolnt6
         Ges7SyIgE5MBnlwtjMWK9nVs4iV59ORDTgB0Kc1CCqe0wVECmKjcBOWaXJPx0ehazRGc
         hqFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=t29lKZG27/3TV4bgJ8qe0zqjyIbEqmmtvaadsGwDJxs=;
        b=EPSkyuQtGxY/eAttw3EeEqgrkDk8Tljb77h3UQ8YTQ6aLRNTiCbvqt1LEqgTz+/v0y
         VEdruBWuvKoNwM6YpLb3xVptISuFcnh/rRjDkk4fZe7Uj10rU5d0vue9cQHobCYHPNxH
         TE1+0Hhtz8uXVvzHtlydkgWKNlwdh6Ghhjo+OdU3DGrvIzo8ZusXkUnyGAA44Kch4Bc4
         GZxke/LvnJ4I47n61TNYXDvH7sWDsE39IRYhdpBGNF2FfYAe7OqRATYYzsuU1/HbEQ5f
         JTLs63Ro7yGJ0gfYWhhwylbU0BIBA2hOkhR9jmcLacyrQiqOOv3Eqi03ONt8lG0gFemN
         KcQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="nk2WV6/m";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t29lKZG27/3TV4bgJ8qe0zqjyIbEqmmtvaadsGwDJxs=;
        b=r+v8z4t2LBlHtGcCiyMT2X9Hn7XSKGrgPLtZYQ6kVyABD5SdHE5sJoUiBla8AZQv7c
         2rw6N8r52HEinwq9O8W5Q+6sft8XBiYpQD510qaYKW3s6UEts+qip0zkt6bpyvPjUFJ8
         RMwVaTiLm0k8Nf4wcdEI06xQRrsTJmim6yaHIMN8aih0BgdatV/Bd9v1R37QC9eEyUo0
         Z+ev8YS5M+3G19zwaCGUwQYowsMK6UzbZtfS7EZsQEUwEkInAbSWWP9XfTSTjL5K+ZCE
         HNsMSnYygkLUA+9TWI0li1nt/GBwQZNwlHC2itdbQgIisf0GB3/3sfol9g1AgWPVFhpz
         X9Jg==
X-Gm-Message-State: AOAM533Zd1E5nQgCc43ZrMYop2hdrFSFveqRzMojOSVJ09cNLKO3d5aM
	LPj3D88ZdJ1O8U4d6Pab/xA=
X-Google-Smtp-Source: ABdhPJwrlfRMDJobVqdH3njFpzjgJPh2LxwOunViv+qBqF5A9OK+9ES33uXG+XLnXbdfCLHzHVBP/Q==
X-Received: by 2002:a17:90a:bb93:: with SMTP id v19mr18804440pjr.127.1620317830594;
        Thu, 06 May 2021 09:17:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a4a:: with SMTP id x10ls1761570plv.6.gmail; Thu, 06
 May 2021 09:17:10 -0700 (PDT)
X-Received: by 2002:a17:903:1ca:b029:ee:5aa3:c077 with SMTP id e10-20020a17090301cab02900ee5aa3c077mr5101459plh.51.1620317830096;
        Thu, 06 May 2021 09:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620317830; cv=none;
        d=google.com; s=arc-20160816;
        b=QOkdAyoHfkH94xnHFWn5cAHrhLkOoc4eLcajHwlkYz1en7K/qvc4OOpMiePIUe0diA
         t0e1d8Tb0RhHuM9d1kRbceuTJTnwkk795WWfIe1LPRjeESPnJyGJKRTFaZ+GYTi0Umva
         dR2INrhNEgRq3KWGPiuaKMlkbV3oB2F7biE/SiQEzGXgcpCr416X4J+5N/29Y6fJxhtW
         0dFl3P0IJq6X1X3Pld07jtjoiJp23I1wfC9B9No7Ygs6Sb+i4F1ZFCn2uBQ30ObrJBqE
         5yQTFqinwBNQZgVDHVnp3E+jlaJ0FdMLN5x6EiLa3uPK5euvicRkyJY70j4eMl7Udcp8
         zqhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=ZYIXNIJQToFO+yqUROpRHa/peGqV+Jnugb7ofs9QBf4=;
        b=XygLOlVLwX/LQPqbf7SywCMhHz3PSBEsfJt/VgD245tq6yfknpq7Zu9p5LQlI7R7Gy
         nEyJdL7VlC0TZCv55BuDJXybDwQUBnWu0CxFqIXDldxyu/7b86XYQLu6kSq/h3x1He4O
         HfI1vGqwWH10ivk8fMwuL8uZw4AIREGS+c664bDh0avDyCC3wqN0VUy5y659xhkaR+3W
         Bn6nelDe7RJASYssRzw3KJLY2YMuTgFIFT8j7yY0JwnIfnULlDoGO44gZOCKivIsBFcQ
         QTRhhSvGZtNpuUuY6E7R9ByidyMK0FToAMitIzZmCzLBFSU9ekb9287tWjhqDqSyVBio
         hC7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="nk2WV6/m";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id p11si253620plw.4.2021.05.06.09.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 609416748166b7eff7f83e55 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 06 May 2021 16:16:52
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 0B189C433F1; Thu,  6 May 2021 16:16:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 88093C433D3;
	Thu,  6 May 2021 16:16:51 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 06 May 2021 11:16:51 -0500
From: bcain@codeaurora.org
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-hexagon <linux-hexagon@vger.kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, sidneym@codeaurora.org, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [GIT PULL] hexagon changes for v5.13
In-Reply-To: <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com>
References: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
 <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com>
Message-ID: <81ecc015b1bd773f583cc86490e392a0@codeaurora.org>
X-Sender: bcain@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="nk2WV6/m";       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

On 2021-05-06 11:03, Linus Torvalds wrote:
> On Wed, May 5, 2021 at 2:10 PM <bcain@codeaurora.org> wrote:
>> 
>> Please pull the following changes for Hexagon: they contain build 
>> fixes.
> 
> The pull looks fine, but I'm wondering what key you've signed this 
> with?
> 
> I find your key 175C464E541B6D47 in the kernel.org pgpkeys archive,
> but your tag was signed with RSA key 1A54AFB8E5646C32, which I don't
> find.
> 
> And the standard keyservers are - as usual - not very helpful.

I apologize -- in my initial account setup I'd done the key creation 
without a signing feature/capability.  So in order to sign the tag I 
realized I needed a new subkey for signing.  I tried broadcasting the 
new key but perhaps I did not send it correctly.  I'll try it again 
today.

http://keyserver.ubuntu.com/pks/lookup?search=bcain&fingerprint=on&op=index

^^^ this shows one that has 3d66aae474594824c88ce0f81a54afb8e5646c32 but 
I'm not quite sure if this is a good keyserver or not.

> I'd have loved to see a key I recognize, and I was hoping to also see
> that key signed by Richard Kuo. And maybe it is, but I can't find it..
> 
> Anyway, pulled, just hoping for some clarification,
> 
>                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/81ecc015b1bd773f583cc86490e392a0%40codeaurora.org.

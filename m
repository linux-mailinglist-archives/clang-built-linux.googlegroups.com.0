Return-Path: <clang-built-linux+bncBAABBX4N7T4QKGQEXFQGY5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C62B24C882
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 01:27:29 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id e73sf2435684iof.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 16:27:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597966048; cv=pass;
        d=google.com; s=arc-20160816;
        b=uqiiBRnQt0dzW7KZLwUX46v243ID6Tcd9G+1L39SgizYjSMDnzL7x8KRqX4fuOTh0v
         MU4LRBCcSZroc/nsyJSyDVWkezNcqippibRikkR13tdfZwXPuYL7kngUMI4jI3MDcTEI
         nDdk8UA+FcAEKih0rpWTCBZoIIkFMNO8ti5ErpiJEzvY0L7VBLdJ6ROOcZRr+DxjVXtC
         1pQ6K8SJzecUUHATNjrTI0dTUiBzvvbU4u2PNXKWhNfnQ+lqKh6Mb8jO17sllL5c4DwI
         70NB0X4JXnPkpF3n5P4qJsNJFWJYnbsw28R7R5JE0ukkOWqyibMINDVsNnGN7RjSitUv
         IMDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Npk49zNp+3h3ufZf5sQLM9Z2HhjmGj69mtna6sPgwpY=;
        b=NUCRtalUbnJwq8mbN2+wfmp9KXBNfU57mTHykmkOIY8L4JsN249r4h3EWZRMal96co
         xs0zIbKILALcE5L0jKD02T3520vcjZaRAi5ZJrPjutTf1s9gwYRQ9A4603XSDOAVITpY
         54RWF0JZFRaq7mFiDP6f2RNg0S7tw+CVFalSeJLnAt+ykkXKJ9+F2n0JQxXOZ05Jilxo
         XTA8G5duwh0ZYSNfbKDxhLM0Hp7/cggnJS16mg7bOnCeVYC5zywAL0Miy/28RiazED10
         AXgTsfpXEA+Vg7199vvfwiceNbOhmjYWnMp4JWmrhVtkDYgmPj1U0K2EujSBvam+ce1w
         n0GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ILPKEenD;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Npk49zNp+3h3ufZf5sQLM9Z2HhjmGj69mtna6sPgwpY=;
        b=mMkgmeWsjKmePgw9BlI6WvlmMaREF0Qq9ESaIbwuv+ZuCmmOXYD/gMuRLc/Qdvcjbz
         6cNpF33nrUugnmeHv0FNf76cUoF4G6dit/cXgaew0TRCyzkWql53hBObs1uoxo96+FXg
         dtOdM5cBC0tyYtXQnICN/fPkcZhEW7Fbc3eJ3q11SHK6UAsMJTdhb1ZpvM+NppO9s3oo
         IdSJgZIIoKDm9TO7uSvSTq2ZiLHcZs9/2md3VZWYD6KiAqpH+c/JKds7tJnClco+CPbl
         kZxcGCiTh9Wm5myK9AVm/VLeCsaOj4GFiYTFbT4FJ3c4Uh4pS0uaNZBcRbpmRHhqN6us
         JsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Npk49zNp+3h3ufZf5sQLM9Z2HhjmGj69mtna6sPgwpY=;
        b=UQMhHxJd+eJcTK8zrUHuC8ej4cE/uIzd/DhSBS9G4L6KEabfz48NM5V//avfH4SXrH
         P0XWmGsMOGciUqYvHCYWH/GnLHihxTeywYn5rVd4tPb+5i4/L5wGss4Q2Dbbs789rT9T
         7U4ziHGaXDqumSJE9d8/MwiVSZj3TAiqjKWLAP5xh5a2PHwEQa3jgMP/71iPkmFxaer0
         OBS4N7NFCoAjWNL79DmwZEdFSMNhEEsINYee6jHlhlLsbHCRtB2/8BkyV/NyBzMKF4dR
         X3E4IPDjoimzmeISMJeYkf2Oi3MZpGSoR2bwr/eUsanZMLjdxH6D05JHlHeP43WmGmzQ
         AOew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UtcWfB1CgSTNl2vamcll0RvaPYacrjILv/Rs+6Te9LoPTL1PL
	XxYJPAQL1lL/th9ELbIORnc=
X-Google-Smtp-Source: ABdhPJwpMjQi8KvAAsyFxhSPtSTGerPd7PdCS2jtoRc93gbYox8ojhEcGFVpGLkE5hc851LBHXmJWw==
X-Received: by 2002:a92:c811:: with SMTP id v17mr314645iln.143.1597966048055;
        Thu, 20 Aug 2020 16:27:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:140c:: with SMTP id k12ls7359jad.7.gmail; Thu, 20
 Aug 2020 16:27:27 -0700 (PDT)
X-Received: by 2002:a02:a04d:: with SMTP id f13mr229852jah.112.1597966047624;
        Thu, 20 Aug 2020 16:27:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597966047; cv=none;
        d=google.com; s=arc-20160816;
        b=vaUbvSxCwsdh6nBhwbBSiEYD8MksBGSO4bDs/XjLYLrp9Wuyrn01kQ6Q2roair9PJP
         ifJ1sv5Djo1ki+/zyvSictCFfvvoTNl6Pcz7loPRbmJB9FD13mSRMJRU6jsGJzI8xiEK
         X6Mca/kSzKxhSx05QrIRIPKGaw9r4kcSqny7AFwuuGdSq8T7hrkAov/6jB6/bRicdlM0
         UQYpw5nX+7r7+mIqJjHVgO9cM0QIKJp6uVSgZTbSBuw9olXkYoTQntpfdC/ehkUDPOpt
         CyJ1nEVTlKQhnGA1zxI28prHTKUFIzTUZPH7MPw3yhK8bO+Kw2e6WpSLUtft6l30h7v/
         pwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lTtK25cmAAKy7THCXCKbu1fbXxZ2MNm9dpn0VfU/IZA=;
        b=DVQVYUbb6bAg/8566V6OE7BBZ4Vf2tpnJ54Db4RQgsbkU2oTQN9+oAZSCjGJcsa2yY
         arTnhClO1I4mGrWBr+aVozhd4naU2icFZYkZx3YmGZUb2/J5QULH5l+X4E15cucdA4/g
         482OF/GYr3wrJqTbCJJr1XgQcXOML55+JADNfgYdkz+N6GBlIqEVAE14Qz6yjcBu+emD
         bcgnO+1xkZcVYUbvi2tKA8xGrejocuy8SsHjefMBDh4atMmift6n0HlcOvGINqPCVlQa
         r3kfFuojp5Jtsocgt02DiUYUkTpM6A7JIGUufKy+Lhd9fo2N0sAgsCpTTWF5Y8Fimjlf
         qZNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ILPKEenD;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t7si7019ilh.2.2020.08.20.16.27.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 16:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 183F620748;
	Thu, 20 Aug 2020 23:27:26 +0000 (UTC)
Date: Thu, 20 Aug 2020 18:33:13 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: keescook@chromium.org, linux-kernel@vger.kernel.org,
	torvalds@linux-foundation.org, clang-built-linux@googlegroups.com,
	natechancellor@gmail.com, miguel.ojeda.sandonis@gmail.com
Subject: Re: fallthrough pseudo-keyword macro conversions for 5.9-rc2
Message-ID: <20200820233313.GA5113@embeddedor>
References: <20200820220210.GA14894@embeddedor>
 <20200820221511.3328330-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200820221511.3328330-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ILPKEenD;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Nick,

On Thu, Aug 20, 2020 at 03:15:11PM -0700, Nick Desaulniers wrote:
> Just noticed this on lore.  I'm curious if you'd had a chance to test your PR
> with e2079e93f562c reverted?

Yep; it builds just fine with Clang 11.0.0 :)

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820233313.GA5113%40embeddedor.

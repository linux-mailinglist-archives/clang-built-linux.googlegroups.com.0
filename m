Return-Path: <clang-built-linux+bncBC32535MUICBBFPCUPZAKGQETOMITYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 02384160257
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 08:36:54 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id n14sf1001963vsa.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 23:36:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581838613; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLYNou5u3RvF+JY41wo5txIWFuRXmGsvS9+OF2w7GukT0nDnTvf0ruKiDe5BpUqSoJ
         FtMoZZSDEyopLPlnL+JO12BqzcMkadnTLXKyXCtvo1R1azN5TaDjUMrIjZgEpbduQgDS
         4bjzstRxhLZq6rTVyKQWrCLQO/gFUx3Fjb81zymxRW4ZTRiiNg9gEKwpYqBJd2qcLiL1
         BDs+C3WZd1BFzAjDqWs3Eupvk2wO6Zz4FUuHxkjHC9gjw2IUUimd/6pECeTUs1tAUi2F
         Yrjjl7dp7tiW3eQoc8Rvet+XFR7clcy50fVVx9Q+NfZYNTXWRN8uiAzMJLzBxurzM2Xu
         O3vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :in-reply-to:cc:references:message-id:date:subject:mime-version:from
         :sender:dkim-signature;
        bh=lPuOpVhcvdIosWKig7p2StwaqvCWVAMQv3WNFuizxbc=;
        b=NvoEjZE+f+L34qXUi/jBHPls9UrlPy6GjHFGmOdJ5cswRujfUqMjiw1ZPp/B9BY1XE
         c1ZNZoymx+hC1WR2w1yq5vsEmWOG6L5Dy7nsDTwHLNsEJqJndzfVgZZTpq+eU1qT6OIP
         +ZMlBZBaaCfig31BKrLJKRBGOikIEIi5GLND6dGSrzouNODFKvrWoWR10Z8WpncflkR4
         U5lQgj7BigSG8Vs+jqHjNM9Tu4x0gTOhNqKzoqCte5p/IEl4ekU0CbtxU7O0BdmtON3x
         J9zyHnnLSNiH1WIIPufp5ZgrQOrTk/skaOKKOSxBY33cmTLUyAD/RtMd7kyVRxiRjP91
         GpSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WGVksVc+;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lPuOpVhcvdIosWKig7p2StwaqvCWVAMQv3WNFuizxbc=;
        b=nu+xNgDLnKZ10WKQwdUHXqfshYPC+2VrZTnV9biSIgrwLwHKtLtpbdshiaj1flj5iz
         GYUYz9CGuplJAh2VLOEzql2vy2ig7DFIMzLfh6mP2FiunoIi6+tgDZH0kZXVDSXU8R25
         z2+NdckjAdAZyau6NLlmfcGs+HYOTFwI56mvbrCg2jEDPicD83p0otvrBQblmQEw+xr5
         ys0U1TZjnzF/mfhevGIyK9D2GDvdkj+wj1egQkt/3vA0/h6u5iOXDgVUTHUVx/lgGl/H
         wkVYuQo57eT94QgMNb2sUqfFIXJqWLmCF2wawbG2Sv2OuSVwgfvcAPMcOfN2PBlIYGhc
         DBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lPuOpVhcvdIosWKig7p2StwaqvCWVAMQv3WNFuizxbc=;
        b=OA/45BFBvoUZaSgpwaH69zjOfP3xljSc+Rz9+GFNSCEh92Jfwb8F0y5rVV+D0CC5et
         GVds1N0uWe6RKhBlIgi8APsyNI3Cnovuw5nVQJhuqrdrjM9JiJkZy4VX7TGQdVAA8chL
         mlu7Ota4ISgBZpTs/BKVOgsHPvnv2AdFbPFEG8pitiGxpGMBcBFd9e/U6YMPFF42ArLh
         vOwDKoJIix1YCb2ybAfGgjuMSR5KtA4zwam/Y4m6vtjmhmq5KsW6K8DZnL5NBEiMhIwP
         JAluFZjhjG+TyQTit2ilz+ZnifsKUyyullDNpAxPste4gbcGnAtFrqa+/sCIlbDbVzH0
         lD5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXooxMIUCfM+0dmJi8J9tYi2lpgR9EWfyhTDJ/TVmzyq/0PSDIS
	AthBU2MpzyGkfRst2qWM7xg=
X-Google-Smtp-Source: APXvYqzt9vp8FQmCm1voBSfGVBDnYgIOLunt/fnM6d9C41yGXiShjp8pqcZLerWEaOl2Xd+K6rsEKQ==
X-Received: by 2002:ab0:6902:: with SMTP id b2mr5200715uas.32.1581838613741;
        Sat, 15 Feb 2020 23:36:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c805:: with SMTP id u5ls757582vsk.2.gmail; Sat, 15 Feb
 2020 23:36:53 -0800 (PST)
X-Received: by 2002:a67:ec12:: with SMTP id d18mr5433060vso.129.1581838613341;
        Sat, 15 Feb 2020 23:36:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581838613; cv=none;
        d=google.com; s=arc-20160816;
        b=TMGsMshKTnRYEPE/ogWjZGRupK+Nb2TGt6ZMmL/e6QKSE5ImfkU7PuJghuqAu+Aie+
         K811agYFqkutb4PowdwDTHkGA8kpKIx8KzHwawYljli6edSAfQKAMA+k+Q2CWniR+XIr
         0VJ8/VJ04fFmNB60mysfJvP4mroo4qQqKgObT8y2mJsI9UymF4v286ymt6OpHm02iFuX
         tF+aAmElPb+rswzIc+8G8BAMwke2RJUrn0FN/oC0SRY+lRU4PyUm6Lmxf/HN/NIO9BDm
         h0Vj25a/Qoqz06JshnsP0L6BV6yTBTE1Vz2zwlrhD4RK+zH0/Lx3JdrSNggsnhoUi+QX
         sdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:dkim-signature;
        bh=4bNaF/Khk/K3TQWbK8bP2zjniSSeyEiuOxI6++XNPO0=;
        b=jS5mhw0uNKjiMcEggCMHtp9zE/CVzWIIx4W6RmLfKeUca+XUAXd+ONl9trfSy4m2XQ
         shNFmW+HXBI1M8bFpCLzVQaJdWCRES3LZjjJlacOqjAa2L6/QtMjo4recmx9LCH5QfOF
         g4A9pTLCoD7uFwVc02DC1q70cXnBrAodZQ9ab6tckVryqcRrnD1LvGlxTSZDIsbgn1bi
         DEisUevW8C5lCi7n9sXt2mptvhGv9+R8wbB69olZFa8wJlWYCZmxNRoT3Kr+RoENBVEn
         g87C2C0dLwh8BoYD3j9ZZWzBne9TaucmEYT9nafWzVK4a8eshIksJWk1FjcVP9JOHgXp
         BNlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WGVksVc+;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h7si604875vsm.1.2020.02.15.23.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Feb 2020 23:36:53 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-XvRcurTMPiCMWubPacKTxw-1; Sun, 16 Feb 2020 02:36:49 -0500
Received: by mail-wr1-f71.google.com with SMTP id w6so6929091wrm.16
        for <clang-built-linux@googlegroups.com>; Sat, 15 Feb 2020 23:36:48 -0800 (PST)
X-Received: by 2002:a1c:b08a:: with SMTP id z132mr15686478wme.73.1581838607885;
        Sat, 15 Feb 2020 23:36:47 -0800 (PST)
X-Received: by 2002:a1c:b08a:: with SMTP id z132mr15686445wme.73.1581838607531;
        Sat, 15 Feb 2020 23:36:47 -0800 (PST)
Received: from [192.168.3.122] (p5B0C616F.dip0.t-ipconnect.de. [91.12.97.111])
        by smtp.gmail.com with ESMTPSA id e22sm15636901wme.45.2020.02.15.23.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 23:36:47 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] virtio_balloon: Adjust label in virtballoon_probe
Date: Sun, 16 Feb 2020 08:36:45 +0100
Message-Id: <67FCAE69-05CF-4588-A7BC-664267D14BAF@redhat.com>
References: <20200216004039.23464-1-natechancellor@gmail.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, David Hildenbrand <david@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
In-Reply-To: <20200216004039.23464-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
X-Mailer: iPhone Mail (17D50)
X-MC-Unique: XvRcurTMPiCMWubPacKTxw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WGVksVc+;
       spf=pass (google.com: domain of david@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



> Am 16.02.2020 um 01:41 schrieb Nathan Chancellor <natechancellor@gmail.co=
m>:
>=20
> =EF=BB=BFClang warns when CONFIG_BALLOON_COMPACTION is unset:
>=20
> ../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
> 'out_del_vqs' [-Wunused-label]
> out_del_vqs:
> ^~~~~~~~~~~~
> 1 warning generated.
>=20

Thanks, there is already =E2=80=9E [PATCH] virtio_balloon: Fix unused label=
 warning=E2=80=9C from Boris on the list.

Cheers!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/67FCAE69-05CF-4588-A7BC-664267D14BAF%40redhat.com.

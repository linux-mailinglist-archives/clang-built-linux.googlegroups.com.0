Return-Path: <clang-built-linux+bncBC32535MUICBBEHQUPZAKGQESDBBYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB5B160266
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 09:06:41 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id n129sf1010556vsd.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 00:06:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581840400; cv=pass;
        d=google.com; s=arc-20160816;
        b=g/kYpuGZvwjyvGnkw8EKO7X1+0tbHdb9VBGazv/l9Bgc8ATqsQlb061nbDwXM3owrj
         pkuXy6cJwO5Dq7DAyv+iNoR+RWjNtIHZJoiDDH+9fAmyxIGgIUB60p+tf7A39fo39aa8
         oH0hnFnyEKp7J14vsFFZRMltkpVngS4OmEaZiyrvU04gfSrOmTipo+7DxbXT0zKng22x
         NKCOXVbwBpyZBvxwtfam+Fg8jrwP00zWWBSRvbDJL/HI0RppUKEg+8Yu+Rbzsim9Ck1P
         9Nm3u6LI061v6RWhPsvXunStmwhsMv8FOwLMVTKi0fmEld/sd6xRvdQ3Al30H36lf5oa
         Aimw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :in-reply-to:cc:references:message-id:date:subject:mime-version:from
         :sender:dkim-signature;
        bh=G/f6917nJE4/nsMaMDhOWu66+rN4DV6MUiGPvT25+Qk=;
        b=v9MwYa8QDhx1SzIKDpy0aQZQjBZotjQySp9+fHlfPCoZiFA/nRevbMNRyyWHpjWLpJ
         i5VomSrsAOJVtJF2T7ARfYMJQcmia+A+tmKDiMPYfmGIMxGfEC/jF+cCY6nfViiOj40n
         Up7BHTqgbOOVNjAD5nynQeDNc1WuTG12/sv1A6ZgreYdZqa01i56IFXasZwwLkKLmb+Q
         5OUwoeBV80suB85LVhbjMwozyNaXKgMk+zCegb7u3t1mQ8Ay1guNIhjHtn//nAROHkx1
         qO0DyF3toU2zOjmVwaCchuDS/6uh/9GpxcZJjPPOJ40HTsCBok+jiznnvqSB2IlzPXmW
         0oVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FNQwZ0Y+;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G/f6917nJE4/nsMaMDhOWu66+rN4DV6MUiGPvT25+Qk=;
        b=dyAbEr4Dyu24ucMtcJzrzAq09vd6quj/eaqef4jSa4WtTgoMPQSoKngq73ftx44vDw
         oVsZyNDhgeSbsgUGdn38b1Iwugae6J2JH1bJ2Rwa9a7qv7tdjsQndOoChtrfAVAoAGu4
         qMTeFNVzHpHiD/YvYGIv2T4jvX934GzolGXOclFc8rtBTKcfS996TkPd3tQdJ1fVFt7d
         NKkp5RruKtIPxvHtZ5RAXSo2zfy8Yn7H6Wu2HHy5RnXuKGaiTww4gc42o4VWUgeg7y3l
         Bnk3rOcbxYGv0593dViihBUUnB3DTWxaiRUrMn+9iGG1Yu83ILxc7WKn0oVzhwrOhyxX
         XORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G/f6917nJE4/nsMaMDhOWu66+rN4DV6MUiGPvT25+Qk=;
        b=h1AoeO1DC2KmpQEZLDejl2il4Iae5JMqPzR38nU6qifIGs5RMKzHAiZdxvtWryqSi5
         2c1cGALwFXPjM3pX1VgDl6pHp4p3XqdOuMhp/qVza2CFsTcYTIz21mkfkEOayDUVtiq4
         kYKOnTNEcppus4wHAAJg9lONBrDNRYZ3dOwia6Zh2EF107l6vCQURkb44uAWUnekMbN8
         NcOpF24liJg+P8uH7ncI9TwLuIYv+7cJgwA3D6MBzrCXI9ktb7IttEy6tNweIBQTnVP/
         sqjktKc469OeUHoDE276ZqiDLXTTAS6dP2FZIVWlGtiXV3kpd9pPZ4+uuhoSV2IXny7s
         Px1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmJkki3btYOSFOVLonHq17e9U4B7Vaop7SRHnWhfkamjaz4r0F
	bztw+Qa+9aH1wsa4pPdrTds=
X-Google-Smtp-Source: APXvYqx1Fk451MQUJSCxvl5xGYXMqjkbUjfHI6Sj1slTPSaQvZSadwDjP4mNessMLrjF7q8r6qX0Yw==
X-Received: by 2002:a67:fb85:: with SMTP id n5mr5225904vsr.50.1581840400703;
        Sun, 16 Feb 2020 00:06:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f3d4:: with SMTP id j20ls756897vsn.4.gmail; Sun, 16 Feb
 2020 00:06:40 -0800 (PST)
X-Received: by 2002:a67:7943:: with SMTP id u64mr5258658vsc.91.1581840400266;
        Sun, 16 Feb 2020 00:06:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581840400; cv=none;
        d=google.com; s=arc-20160816;
        b=LtJPAAM+wUGb1kL0gusxNsT42/UL4UIBl/bGL425LWQJHatpW9GD2dM2y+6MHQXoNs
         +dM9u8lBMjXcbiOzk6Bu8heSuDgVDVFWVa3KeHt6+V/pGgkoXjYVnT0M842T9NZXuJt1
         2BQxyusyv0OzsxxKHtXhL3AXs0pbmUCtDmJPqU2E3jh1TESuxfqOrljvdi4GT3nRZyWR
         8foeKeykhrSUfICYzNXlAWzvK/eiXp0VjYWUQ9HuCReXDRVO3RlrnFjeUZXVoV6bbOve
         0Xo8ZeEYVM6HkTIdhwSVVKteZ2L3i6OdA7LSBWa+4TsSlkrXAE+JSRY1GxRUPgtLXP6D
         gqrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:dkim-signature;
        bh=Zq2Jciyfh3QNHNW/s/RDbN5AoOhPvvGsldB+8B8iIr8=;
        b=V8PJhlGQBF8YjFCZNpV/x9eGwAbMSfHiZqi3LGirts0nYWi5c58xr6lFZ8Hn7BgjqP
         5FSNWFs8JJFuoVXG1/IbneRF0L9U3GqiAohHry6O7NtP4t8QAcxBgTLMLljIJePVa5bf
         W322/h/Q7BoqM9tLC+yT2ikOdFbd6VFSiOuq9lBXcCpbLopAeoeVhWbuH4gMgyBe5ely
         xUu9Q+D2jLnGudPYDBevdgm5SDBzjjq3nsFV2hLi//TPhCDR7NAey10UnxW5EOTGwIJy
         vdDPAm7jqZqZDplI4qO0ypTvEKuhDHDgbgd+ENgzlWKPbgPABll3ZpQvjDomJyBdwz44
         KH/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FNQwZ0Y+;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y126si498488vkc.5.2020.02.16.00.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Feb 2020 00:06:39 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-286-vUwbXEgXNa-97dAgHW8png-1; Sun, 16 Feb 2020 03:06:36 -0500
Received: by mail-wr1-f71.google.com with SMTP id m15so6896380wrs.22
        for <clang-built-linux@googlegroups.com>; Sun, 16 Feb 2020 00:06:36 -0800 (PST)
X-Received: by 2002:a05:600c:285:: with SMTP id 5mr14928265wmk.120.1581840395837;
        Sun, 16 Feb 2020 00:06:35 -0800 (PST)
X-Received: by 2002:a05:600c:285:: with SMTP id 5mr14928233wmk.120.1581840395601;
        Sun, 16 Feb 2020 00:06:35 -0800 (PST)
Received: from [192.168.3.122] (p5B0C616F.dip0.t-ipconnect.de. [91.12.97.111])
        by smtp.gmail.com with ESMTPSA id h128sm16289582wmh.33.2020.02.16.00.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2020 00:06:35 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] virtio_balloon: Adjust label in virtballoon_probe
Date: Sun, 16 Feb 2020 09:06:34 +0100
Message-Id: <BB1929A5-E718-4FC0-BBCD-E673F4F0CC18@redhat.com>
References: <20200216074735.GA4717@ubuntu-m2-xlarge-x86>
Cc: David Hildenbrand <david@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
In-Reply-To: <20200216074735.GA4717@ubuntu-m2-xlarge-x86>
To: Nathan Chancellor <natechancellor@gmail.com>
X-Mailer: iPhone Mail (17D50)
X-MC-Unique: vUwbXEgXNa-97dAgHW8png-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FNQwZ0Y+;
       spf=pass (google.com: domain of david@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
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



> Am 16.02.2020 um 08:47 schrieb Nathan Chancellor <natechancellor@gmail.co=
m>:
>=20
> =EF=BB=BFOn Sun, Feb 16, 2020 at 08:36:45AM +0100, David Hildenbrand wrot=
e:
>>=20
>>=20
>>>> Am 16.02.2020 um 01:41 schrieb Nathan Chancellor <natechancellor@gmail=
.com>:
>>>=20
>>> =EF=BB=BFClang warns when CONFIG_BALLOON_COMPACTION is unset:
>>>=20
>>> ../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
>>> 'out_del_vqs' [-Wunused-label]
>>> out_del_vqs:
>>> ^~~~~~~~~~~~
>>> 1 warning generated.
>>>=20
>>=20
>> Thanks, there is already =E2=80=9E [PATCH] virtio_balloon: Fix unused la=
bel warning=E2=80=9C from Boris on the list.
>>=20
>> Cheers!
>>=20
>=20
> Sorry for the noise, I thought I did a search for duplicate patches but
> seems I missed it :/ I've commented on that patch.

Your patch should be the correct one! :)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BB1929A5-E718-4FC0-BBCD-E673F4F0CC18%40redhat.com.

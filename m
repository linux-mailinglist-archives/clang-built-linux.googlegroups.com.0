Return-Path: <clang-built-linux+bncBC7457HKSMPRBOFN2CCAMGQEO7IIPGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-f58.google.com (mail-pj1-f58.google.com [209.85.216.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F740375852
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:18:02 +0200 (CEST)
Received: by mail-pj1-f58.google.com with SMTP id w9-20020a17090a4609b0290150d07df879sf3197486pjg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:18:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620317880; cv=pass;
        d=google.com; s=arc-20160816;
        b=NdDQg7m9hqvI29e2DpVpqsIomvKb9TFc82KqznrwzkPQOg30TmmIEMbIJjh4Cj/P4R
         RSafwwaYbS5YE1YI286mKz0G5NLF6ZFhnkDL48vUoMYLbLLKYTvdtf37obwy9CduLOdu
         MKpRSo88HTKJfh63wDiSEWvG9opBuwUdRLi73onkdt3CLFFfXxJIP9I3rUhBR/RHhXKH
         7FNLuXXmvApQLgSchtQ7N9WmaebBi13CxJuKedWgmged5/Vl91HHxmQaCmZ9rCDZDkfl
         XRoo8RItd307XlPWmhrryRzW9ELKDImpE997VoJC/cBz1rgJkIwdRmOZc/Tnc4PssUm9
         9img==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=9LnUMduNjEz4r28Mc4vQmk8uwGcQGuPWJhtz+RoirMs=;
        b=qa/cCI/8FI0z+nhys88AQiXI8W/JpWW2rVygWpMM4Sv1KiqnROXf2cwbQ6xZQVgYSZ
         mhoZj/tRGFMlr5WEsx2zG7dXIP8f6xHDh0IZQnzAZKyBwIDkkDBaQUmCBFX7Uo+rQ7sF
         KRbAf4wW7BJe8udDLs7W2RSUKQcpP8qF/WuifqcLDeMOu+XUh1dSh+dwUCcamsuyEv14
         0ochMlqidZZrLLWpZI0RTSsPZPGwioof8OVrIGgo0JuLgm8fBALe0BJ8mKVEALjaelD2
         t3TWX2AFyunWMon988Xowg44uTnyH2S2V9oVgLEqN1NlznusWoThPcAt+DAoms8aBUW0
         H5/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BVNMdAUV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9LnUMduNjEz4r28Mc4vQmk8uwGcQGuPWJhtz+RoirMs=;
        b=hRB6cg7xO84okdDe+GVKtSu4mAw6JfHwRH0tifzNa5PxryCS2N3dWdLhTjWtZQJtOY
         N2LPEMOo7rgu/rLm/uUD4sBJrkehejGef96glJPbon4Xyi3YXXzEPCoNmK7R2J336LmY
         1sIwC9P0dYMBG3v2jSeRUZrXg4vF8rlDe2raLro8Hz285EXlts6KfBLgSfKsc/UlmAFn
         jpd19zi5+AQApZhXzyf8UHHeayl/Rjy+r0akKXfAD0k/rZqzDjnpjNZNKxPJiK3U/F5D
         pli6N3ZqKc5AVKbHV8m3iZwjzdTpF6K0Wu3kabHFuNYxjLUo+jhrdfHch+Hn3oiL5aoW
         R4JA==
X-Gm-Message-State: AOAM532XuX8ipDM20vl/JYHHCFUcd9mSjQCPIFMq0+Txy8KQCS4uuJ8D
	50tdYnPT4pWgnS3KBJBdQ6U=
X-Google-Smtp-Source: ABdhPJz2tF9LuhjO/IPEGtvzB6p8/JZFCn1CRlevrTwbRhnm7uUnZUVgxD1MRHSCYh4A21zHvBxx+Q==
X-Received: by 2002:a17:90a:f009:: with SMTP id bt9mr5311620pjb.137.1620317880551;
        Thu, 06 May 2021 09:18:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls1772565plj.0.gmail; Thu, 06
 May 2021 09:18:00 -0700 (PDT)
X-Received: by 2002:a17:90a:16c8:: with SMTP id y8mr19149073pje.174.1620317880005;
        Thu, 06 May 2021 09:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620317880; cv=none;
        d=google.com; s=arc-20160816;
        b=jrAxwMuaW0v9QDpTsRvzppxq8vceSLXWRODGR4BKrBRpzaelRtY5rNruSO8SjQ/jyj
         ttJTLk5HxeuHN/AxHqjabul/kueaD7fKy/221eUb4QHzA/ixTERwhSX0SyVT6TSn+nIy
         FRSukVkQxwX5WaruAWx3UJo7FZuEw/mx0FseHiUDTdzsnl5KFPrIyU/7D6UGoTXbJ28U
         ZvBqNrplyYbJb5NRDVTBqqY5pBSAqrLi6VjmWA3GhTKvmfOnTaAKclGbjTDn3jJZBGK7
         vsQcu0z2VLbseONWeVDU0pXHLHBbVhju2eqhFXifzlw2CQYvg4CRmdIQThFGCjMjXizP
         5tCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=Ayfl19XdqX6m/TbOtD8KiL0xKcwzcp5FHJ6ltxor5Ow=;
        b=TmxUyYd5GsTSrnQtew+ysBbTYg+kCw06zKt7pVZXTI0PNcvCJk1dlDEwNiJKYw4ae6
         GPthgarijU9VSbLzIYtP08p/Z7MDr4a+FY3/1S92V5mCFTRaz04sp0Ed35rMR+MNZ/TX
         OZ+qpuHnLFQVRijwDqyoJPjGigxClTGeoFV+gxqGgbJDuISo2nyVQtaKLqe3cpxxfAfy
         bPAsZRr3YJDbpRCTJsd6jOBzPlzXAOw5nmsniyPu047lENGcAAtPlrDdijRKUbTG64ex
         u648fVpHKSHlx57R0EACqz3J8iPGRp6AUnxM5L9pkMuqNwnDc4E+Pa/jrbheDvAENmtu
         L/dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BVNMdAUV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id p11si253620plw.4.2021.05.06.09.17.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:17:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 609416b58166b7eff7f9c019 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 06 May 2021 16:17:57
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 0A9F9C4338A; Thu,  6 May 2021 16:17:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 18D19C433D3;
	Thu,  6 May 2021 16:17:56 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 06 May 2021 11:17:56 -0500
From: bcain@codeaurora.org
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-hexagon <linux-hexagon@vger.kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, sidneym@codeaurora.org, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [GIT PULL] hexagon changes for v5.13
In-Reply-To: <81ecc015b1bd773f583cc86490e392a0@codeaurora.org>
References: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
 <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com>
 <81ecc015b1bd773f583cc86490e392a0@codeaurora.org>
Message-ID: <43df6483efd78b46f53e865bd75d75a4@codeaurora.org>
X-Sender: bcain@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=BVNMdAUV;       spf=pass
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

On 2021-05-06 11:16, bcain@codeaurora.org wrote:
> On 2021-05-06 11:03, Linus Torvalds wrote:
>> On Wed, May 5, 2021 at 2:10 PM <bcain@codeaurora.org> wrote:
>>> 
>>> Please pull the following changes for Hexagon: they contain build 
>>> fixes.
>> 
>> The pull looks fine, but I'm wondering what key you've signed this 
>> with?
>> 
>> I find your key 175C464E541B6D47 in the kernel.org pgpkeys archive,
>> but your tag was signed with RSA key 1A54AFB8E5646C32, which I don't
>> find.
>> 
>> And the standard keyservers are - as usual - not very helpful.
> 
> I apologize -- in my initial account setup I'd done the key creation
> without a signing feature/capability.  So in order to sign the tag I
> realized I needed a new subkey for signing.  I tried broadcasting the
> new key but perhaps I did not send it correctly.  I'll try it again
> today.
> 
> http://keyserver.ubuntu.com/pks/lookup?search=bcain&fingerprint=on&op=index
> 
> ^^^ this shows one that has 3d66aae474594824c88ce0f81a54afb8e5646c32
> but I'm not quite sure if this is a good keyserver or not.

Oh, but the new signing subkey has not been signed by anyone yet.  I 
will see about that.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/43df6483efd78b46f53e865bd75d75a4%40codeaurora.org.

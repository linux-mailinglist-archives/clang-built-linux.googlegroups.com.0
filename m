Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBN6C5X6AKGQENZZ7I7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 326BB29F9DF
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:41:29 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id 2sf2989536qtb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 17:41:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604018488; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLnUrEJwi8S2xZr5F+1GqHnJwDwEqUPAYJd40BRX+RCOIjC8Zt5lkFJRfh56DNQKn6
         U+9vkst1j+1Qt9n9OY727DRiGgaK4C5cPGX+M1qllqRq4jDEJhYYv6FU0J7Bf9GR7OjC
         5EmoO5s0A32hBDS2f6Muj/zuCeMEp06I3vXzhoC1HcCqWETDZ6yOAADK8PNXQ9kndCA5
         z0VSm+Ov/YGAZgByETkAMHZtcqgzqEDC0jXGE62rSw/eHtosTKm1RWBpT2RXUdiDza4r
         QIBVuuHju3r0G0ofz7zfYMrKdMeJCqE5LLpLFUlMb4gcUs/OSnx6UrT+afvRGAP07YsZ
         f2pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uiax61n7P7OdNPIqyKAbc1C30fn3JMnVWBgaVrJ6yDk=;
        b=T3VGAL7zQAZQoBXvjAWF55VtMEhLwis4EyTfkKmQtT22xFAg1IfFfU2rbs9IDKgGyq
         1awxRVSppff7yG7b5HfxEGm8cqSwF6o2qI5mOLn0Qq1t4jPw+FAWLVwOuaPy83LH4Gq+
         MG0xic9GYKGt+eVySbBtx/QMRR1NoOhjbUp/FkivrRXQ1nMpgl83KN1o32oZ28KWCOTx
         MYJvl7KmUGiFOaGPVuyL5Um2xyBhkSmtvuMvNL7+GBnM1ARIbWUe42zVxJpesCGY8q0a
         jU8BcKkml4Em5ZFtTAk3pyrDxHSegdi7ZxBlDETaW+zPlchFSMDLpb7hRB6yZAPYtbrh
         8xBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QtpEEOsi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uiax61n7P7OdNPIqyKAbc1C30fn3JMnVWBgaVrJ6yDk=;
        b=jYqF7rW1a5826FKnGJ3LdFVyS9p29ZDvzXyuuOdL09J1m4VvoKbnmxi+3DshYz/TWM
         kfwHoWLVv5I/7KRWj50h3C1uRvqH8+aDN7CEaXF0juAEjeX7W1UFenj731bCrm9Ssi2H
         TvRgns1Js1dwqQ3Iq3FhSHtrlsuCmEIg2j915MmWhSKbDEEGdbhPesjKBvrcjxVMlbZi
         8apXk0psTkftxUR8ao0V61k7802i2+jf5BUm/xyhYm+hK/KrSikhjEOCoUrvJihLyzHB
         T9qZ56i0HkSjX4NITfgtbnvF0MHopDdFX74myZAWyCWP/1l3vOet0RGKAg7fwv4Ldgvr
         cvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uiax61n7P7OdNPIqyKAbc1C30fn3JMnVWBgaVrJ6yDk=;
        b=rvw3+q/NNnDnqrKMlrznPMZtWbPoeEPVCVUik5OFsuFjuSCVWmQt6U5L89lKXZnzdj
         K/yEivwO3K/KyqdtRLGwhFue5rcKX0os/Oe9EvRPF9B2iWiUE8p6O/TQJSim9Xjw/HhL
         fhP2NzWDxQhrfat/3kQyvgTFXlWqXDD8pXX+BaxWxwGebaj7YcInaSmQ+QALFGS71WyV
         krpEr6G98WE52P0AsR9BZCyymEr3Pa7wAhTO9DN/oMM3qN0ebFjSNTot2F4VycW4VB3C
         VParFTfYng8aj/1SfC1YChtiyRWP3HtF4/ZjYFc7/K8a+3DM2dW5Ct+UL2WcQseaMuup
         TTag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZZQ7QDD45y6IaNLXvoGwL1jjT8TCLXWKgn3zrPUWIwwEZDUJe
	8K2oeKzx4Hv2RJNqHXKWpoM=
X-Google-Smtp-Source: ABdhPJxodUPeO63N9JRMoU4hzmbx+A0pH081+CAzRcTbLA6WvD7NPFL77bepUNic5UPnw2PIJDHapQ==
X-Received: by 2002:ac8:183:: with SMTP id x3mr6294264qtf.218.1604018487944;
        Thu, 29 Oct 2020 17:41:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1248:: with SMTP id a8ls2257849qkl.11.gmail; Thu,
 29 Oct 2020 17:41:27 -0700 (PDT)
X-Received: by 2002:a37:9942:: with SMTP id b63mr6852172qke.85.1604018487487;
        Thu, 29 Oct 2020 17:41:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604018487; cv=none;
        d=google.com; s=arc-20160816;
        b=bnwhkLpYyWXzrM6ZmQ+IANNESjkSV1aItqEJ+en+tb8A+zsxwx7M4XEi01zx1T3f5h
         OFuj9Oh2uF7cCbpfCcPHweOx5qT+cM0rmXx3W8RlcWDaMJttreR2LMdOQk5DxXpm47jn
         xpMsW2AaL3naA0iMAQG8PW7fcRdGe6bddGrRxbnRGO5ofymWYxzWS1f8FpZpM4bKxbHD
         a50sulAvHIS2oeMwzBVfWl5rU2vxg+fLHJIBleLOgzRZ9i99Hw1fLXI2cCZzxTkG6FCZ
         hvsg+2qRn1FsNiFOY9Qd9ICl935EHw0awwKfA6zP/6tfHB2uJgFB+IHHDHY48EvPSCMy
         w/Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xwi9v6G+KXdvr9P0rg4SC1RrPK2xGX6F+WnyAdSAtZE=;
        b=DhK59Umbhxq/CScQwptjNENfggB8nEZp6tOwHDQpw13TGyqCQTszLCjPvFqzuT9uEt
         STXw9M01e1C9Nl150B4s6xyoGd8Mid8l6PWN9Jak6390yuSFNeHdUiMrCiUhGEHRRoCU
         auLGMaS2lPCsjJlBILqV6NB/XkhLirS2pMe3xa33WpOK2CUwR0CU7WfYEBHByoRz0Wcq
         WlLhsMblljZlRLfStvwqlxHRr0N6GckEQwfaOlLAjjNicSnW9g2JulAm32Yfpc7w0j10
         4yTyKtFUmzXK92CcuBeaAlEWBjCSjaCQjk7nXyMR0XKO4sK9QYEhyGbYacNCf93LAyrh
         alpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QtpEEOsi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si216203qko.4.2020.10.29.17.41.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 17:41:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 18627206CB;
	Fri, 30 Oct 2020 00:41:25 +0000 (UTC)
Date: Thu, 29 Oct 2020 20:41:24 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
Message-ID: <20201030004124.GG87646@sasha-vm>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com>
 <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm>
 <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QtpEEOsi;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Oct 29, 2020 at 04:45:52PM -0700, Nick Desaulniers wrote:
>On Thu, Oct 29, 2020 at 4:36 PM Sasha Levin <sashal@kernel.org> wrote:
>>
>> On Thu, Oct 29, 2020 at 11:05:01AM -0700, Nick Desaulniers wrote:
>> >Hi Jian,
>> >Thanks for proactively identifying and requesting a backport of
>> >44623b2818.  We'll need it for Android as well soon.
>> >
>> >One thing I do when requesting backports from stable is I checkout the
>> >branch of the stable tree and see if the patch cherry picks cleanly.
>>
>> btw, an easy way to get an idea of possible dependencies is to look at
>> the dependency repo :) For this commit on 5.4:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c
>
>Why you guys never tell me this before? :P Very cool, how is the
>dependency chain built? Is it built for every commit?

git bisect run for each commit on each branch we have. I have a little
stable-deps tool that looks something like this to make it easy:

ver=$(make SUBLEVEL= kernelversion)
cmt=$(git rev-parse $1)

for i in $(curl -s https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v$ver/$cmt | awk {'print $1'}); do
         stable commit-in-tree $i
         if [ $? -eq 1 ]; then
                 continue
         fi
         git ol $i
done

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030004124.GG87646%40sasha-vm.

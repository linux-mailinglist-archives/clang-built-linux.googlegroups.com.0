Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB3MMRT2QKGQE5BPMLSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F5B1B7996
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 17:31:58 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id y6sf3833037edo.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 08:31:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587742318; cv=pass;
        d=google.com; s=arc-20160816;
        b=v9Vw9t2yperuFHVijTbQW3/NJbvlf2ZFJ87ZDqs7/yOhfYnAQV06J3/jq23Js/72SN
         Qcn+bE62yvqaYwcfUh+ZOXJERnmpHo+oBSU2rT2B9AXep9xDxefzwLYxfBTuXy/oT7E/
         bomenRY/HxMoWz82vjwJq7aNE8CeswVvx7ghgojYyqfr/vJwFfBt0Y6xE0XbBnmajpn+
         Wb8pfaxfn290o41vLivxjK5F2bcm99HvQI1lm9RhtxW4T2TWFCU/iQPi4jsNV+liV/v0
         2e8wOWHf07WFR96DsmHVz5QH2FmIZLQBwkM51gJ0CL3LBOVKGC5VLhtbYBLHjV/rcKlz
         Fjjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=OAvzs4NwO8rrrhFLRaFSvDHAlovf32/vd7ecl7loTeg=;
        b=qjNObP13Z3j2orOyzv8oUbW9E2FZ7sPReglEzDsrON+ccIoWfRUfK1ACt6MeGc4Rwg
         C6F+lLJJVTzmrASm0Bnv4xuXS93VMGyf1vWFeisku1r2a1pEI288WrIoMj0go/UUjx88
         Q+ox5sWPC6WnmBHeM26N+ubd1ACXuOoQKeK/oBCOGYzvlWgjyhfWnVS/m50iYKxprz3Y
         d2d8KXgsArbnD5B3JJaylw7MGn+CD4KcYBTz+XJCgHrc0xCsOOKqHYvUERla7K61h1Wm
         ZqeDU2URYo9AfZVmheOaKWpA78YNbQplIiQWI0H6kbUwVP0uX6AVVrHiMkmChv07dFHR
         97fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=zrtPPVVp;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OAvzs4NwO8rrrhFLRaFSvDHAlovf32/vd7ecl7loTeg=;
        b=HQ556/l7rMFr9qAqv5k50vBcOpyRm0g47BRejLO/7JCGcu4DJcAkXvmxIjzXMJvxCi
         7L4PvZCOSvdDWQNtbmkQb18UXEx9S+Z7KQVFrSshIy1KfCqBAKxGQys2fNTVLqXeJuDD
         /7H+rP7rDSofM+gAtH5kiUSg5BCs4Ov7h9uPItqTd6EPBHoHH5qRMS8iC4XMaAzH2w5n
         GLQBmuLigbzXNCbzTwmhpRhNVdorMxXDX59ih5RHJAkh78WczBAhUpa0mE7Pf6f39gWk
         DQ/2KjtXtVVhw39pdevH1CNsKkfm8p+xcjtgv0R/1rNW3b4yvGWLc2wIkJpEED4c1TV0
         eL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OAvzs4NwO8rrrhFLRaFSvDHAlovf32/vd7ecl7loTeg=;
        b=MFhosLr2a9GtwpI7r4KehbELjhRF5S0o/4NlFb2omCC1v30rHqBOu0jpcDxqIsLqPr
         zFkk3saBxLynS587bv6mr0BdVyTviojRcoUvXZdtIoQw1whUs/10IzcWm5I2NRNtidOB
         UWipgN0gV3XA2+VGFHx088FPvJDf0jzxc7XE0kXjXzZp0JY91pfVL9AVQ0c+dBWmphfa
         3zYd/4n1rnbV9zbXrCtonCixBqighS68gb1B8hYZ0u5WIWzjMjP+kUHtKnszYKjnZZI4
         mP3mxY1N0mMHakwfAcQm/kPbIvn4JyuaOEJKVoyTeSQ1jkc/IB+qCvpliH/nE73bV6g3
         zW4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua7mR4FDx1SBJP14ybK59oBPGxyo5vkywXrF+7mOVgoUkahgrC7
	Ai+E2ShEdzJyDFy16YsqML8=
X-Google-Smtp-Source: APiQypIvCAy85/3qMHkOtOYU3akqGcXUzzX8yCg4uTyleN2qU0A+64p3RPTp7LQM38ZUoTWiRqEF0Q==
X-Received: by 2002:aa7:c312:: with SMTP id l18mr8166948edq.161.1587742318035;
        Fri, 24 Apr 2020 08:31:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d1ca:: with SMTP id g10ls3960349edp.6.gmail; Fri, 24 Apr
 2020 08:31:57 -0700 (PDT)
X-Received: by 2002:a05:6402:2076:: with SMTP id bd22mr7957312edb.334.1587742317511;
        Fri, 24 Apr 2020 08:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587742317; cv=none;
        d=google.com; s=arc-20160816;
        b=c1wfNPnzpd7hMZx77A5dMrt5CZAc0Aqms7T8wjsYJHj9+qwWEQukH0fjxU6QcLsaVw
         RjJxTAk6p1qwXkjz5uQUHi0BwHMiGBjslVlAVv0fgRGvaitqrESa3bhEYoXq4EnM+eex
         qN/YQYe3QTHNpEr6dGQkJwD2teZLdMevgTOSIlypxlvIkhUzbpPyUOkkH4IyJhXKga5P
         fv0eAEam7j2QJPBXkwlJg7Vdd0fjd8D3ChfWAxy7KwZKVRomajfuIQ9g2dYP9Ksiaha8
         W4fHBQZjx1bu6zuVV6oNrOSvRfkkLFPm/eADRMsuK2y6PX5e7HpLIcFfQVM5UR8fMp44
         mq+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=9oBhUqx3p7upJ9svhLsfPjJ85Lebz4RAXJTbYph1Zos=;
        b=HfFLGFiQx8aU4jBC7wM7rkjj9lX10/C8HqRZdOsIBu/zVLTpdpB1baz5qAV9weBWuH
         XpPCgC6yBBCRkpp4Sd9fuX+WsYxKU2Ekot5Uq3eDAQbgPjhubLa1Yh+olXfNHXSE1KT0
         NNCHTURVAZmZwya3tQeDqufeYLhbzMBDAQ+E2F8c1Dfmy68gw9ltSkP5pIaWFkzQK0LB
         6ixz3PZhr433Q2ua/KAitSwezk4ltrGIHjLPcqm5rKrgu/cr0sD5pVr9iNAMsP914rID
         qxCkyQJ2tnr6HOrEPB2PJGF60MOliYwjIvYa+CJVWy2MOVWpwLayKaUd/O41Cc6Wo6Im
         8dHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=zrtPPVVp;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.45.250])
        by gmr-mx.google.com with ESMTPS id o23si115601edz.4.2020.04.24.08.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 08:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) client-ip=192.185.45.250;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id 5E2A4404A25BE
	for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 10:31:56 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id S0J2jTIpYVQh0S0J2jblT7; Fri, 24 Apr 2020 10:31:56 -0500
X-Authority-Reason: nr=8
Received: from [201.166.178.29] (port=57820 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jS0J1-000ifQ-P1; Fri, 24 Apr 2020 10:31:55 -0500
Subject: Re: remaining flexible-array conversions
To: Kees Cook <keescook@chromium.org>, Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
 <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
 <20200424121553.GE26002@ziepe.ca> <202004240824.F042AFFBF@keescook>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <da06212a-76d7-d68d-164e-9faafded5c09@embeddedor.com>
Date: Fri, 24 Apr 2020 10:36:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202004240824.F042AFFBF@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.166.178.29
X-Source-L: No
X-Exim-ID: 1jS0J1-000ifQ-P1
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.166.178.29]:57820
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 15
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=zrtPPVVp;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 4/24/20 10:24, Kees Cook wrote:
> On Fri, Apr 24, 2020 at 09:15:53AM -0300, Jason Gunthorpe wrote:
>> On Thu, Apr 23, 2020 at 08:47:04PM -0700, Nathan Chancellor wrote:
>>> Hi Gustavo,
>>>
>>> On Wed, Apr 22, 2020 at 01:26:02PM -0500, Gustavo A. R. Silva wrote:
>>>> Hi Linus,
>>>>
>>>> Just wanted to ask you if you would agree on pulling the remaining
>>>> flexible-array conversions all at once, after they bake for a couple
>>>> of weeks in linux-next[1]
>>>>
>>>> This is not a disruptive change and there are no code generation
>>>> differences. So, I think it would make better use of everyone's time
>>>> if you pull this treewide patch[2] from my tree (after sending you a
>>>> proper pull-request, of course) sometime in the next couple of weeks.
>>>>
>>>> Notice that the treewide patch I mention here has been successfully
>>>> built (on top of v5.7-rc1) for multiple architectures (arm, arm64,
>>>> sparc, powerpc, ia64, s390, i386, nios2, c6x, xtensa, openrisc, mips,
>>>> parisc, x86_64, riscv, sh, sparc64) and 82 different configurations
>>>> with the help of the 0-day CI guys[3].
>>>>
>>>> What do you think?
>>>>
>>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d496496793ff69c4a6b1262a0001eb5cd0a56544
>>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?h=for-next/kspp&id=d783301058f3d3605f9ad34f0192692ef572d663
>>>> [3] https://github.com/GustavoARSilva/linux-hardening/blob/master/cii/kernel-ci/kspp-fam0-20200420.md
>>>>
>>>> Thanks
>>>
>>> That patch in -next appears to introduce some warnings with clang when
>>> CONFIG_UAPI_HEADER_TEST is enabled (allyesconfig/allmodconfig exposed it
>>> for us with KernelCI [1]):
>>
>> Indeed, I've tried these conversions before and run into problems like
>> this, and more. Particularly in userspace these structs also get
>> embedded in other structs and the warnings explode.
>>
>> Please drop changes to ib_user_verbs.h from your series
> 
> We might need to make the UAPI changes separately (or not at all).
> 

I agree.  In the meantime I've dropped the changes for ib_user_verbs.h
and will do the same for all the UAPI files.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/da06212a-76d7-d68d-164e-9faafded5c09%40embeddedor.com.

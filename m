Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYNPXP6QKGQEVLWDEZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C61992B242E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:00:50 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 9sf7338453pfn.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:00:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605294049; cv=pass;
        d=google.com; s=arc-20160816;
        b=r3NxVKfSdmEggmO0Z7QsKkDy+YauWZKiLqw8/M/VafHFbMh6UF8u9OpiBQjUT7GOmz
         QEVItIYVEYHmjgLaR3Fo7IPyNaMVoQeUr3X92cOd5Ows3UfmT0WqZ3k/pVXyusWQP9Lv
         KiI1uWur7Lp4f+vHPnZybVZhtfElCFaBPRvQxkA1yKxWNPBwPYm3KZf/BVbugBShn1Oc
         nM9YG+PwcDUxO4LjK6h0a+8NuZVEiERbT38zzv2dZ2dx5etr73fWcGCOA15AEl0NOmcE
         iQ1nSf9FQsD80/eqQaQyHUWYMN/+jHz+emHRDqv0wm1Q54QAj0KqHcSClD5A3h9VG++S
         VCfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=gCshJfCosULpBrnGxkhUZmxamz3Ec+R50uUqAEaBu2w=;
        b=n5VG0eArtx7my6LPkMuaFXKKNKC5rLOsokM9pzV+0gUOO2RlZ+ODYoW+SC4EQcPIqs
         1QgVfm4N/6V2adKnI/co1Vsu/OoxulNnibKmK8ZN5g9sa3ExLh6/SiUlmkNsN2fnyi26
         wCQivqet9pRBZhGwmHTdKz1LYhwVjMaLtQu7PC3sqZVkQ/sALiTihQlajg3IdHu92jGK
         rjekzkdwLQCXkSHdBev6KRIxu8YV1UDtiph/grp69wF+fSSgoT8detxiKh+KoLh5tlok
         RV+dZhqhAhTnBDi2up/KTFgh+OBPvmeAvlvXxiUdMWe/xowa9w1klHcoH4ZwQuwERHUZ
         NPjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVH8SOcg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gCshJfCosULpBrnGxkhUZmxamz3Ec+R50uUqAEaBu2w=;
        b=EwrEIzAPJnBpAtaa7BoyIPURKzYa4MQ/q51/mkMdf80RY2yUE1hXIliiegYc5tcxra
         8aADO+mg2oQU2EHsnI/RXmGM9wIH/lTg8NfK+eI1gZUZEaHUR73WG2kRLoQ7O6lrvyRv
         g+gHphI+CAsTQ+l3S1v1qKWhQX/L8UREt7YEUKS4beXy7UWjpB8nu5nUJvaeJoQNTmqL
         SgFF6vZZFSkAVdA8GMHKKmGw0ym87HbhEj0wAQjaRpdBacQdr1HAv4zp9Lb2hrV0sEax
         bPUFiELSZflhuIEZ5mIegHJLOZQVj0NTtw41iNHOWdjou0W/Q1AjtY3xkunhSId5ldOv
         4bag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gCshJfCosULpBrnGxkhUZmxamz3Ec+R50uUqAEaBu2w=;
        b=nNBOdg985gFcmb46eyjNjG8vb2azim8fvVXNgkJIKbG6nrb2vAvcxsn+ptvALXlQSl
         XlLiOKra/06I7jtkLBiQU6b8MUzwn7kg4T4y85yPlrboqPLTnPdgSb8ZLG7S7La9VoBM
         63M1eVfE9dXa0bCr4jm09tt0LCUf2Kubu3ah7bjeT3S9u47FNMrJzKDP2M3Lbv+Y5rVp
         GXgoXV4I3CtqOSAgQ6ZPnRaZWMF0zk+fufRqXEGw5SkBdKxfh8qZp9D/yXwcZ4iZUh2H
         erdNZtMm0We8pAOMzDXzcziZlefc1vCbUsgEXyh3spSWcDFJB/mnN3k8dgvIyLfuF0gn
         y/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gCshJfCosULpBrnGxkhUZmxamz3Ec+R50uUqAEaBu2w=;
        b=iNBchaF6aXjS2pHrPliUbAjqhbzH5Xf4x9ZAZg1X8uX8l5J9kWUaMZQsMifGfofS6a
         9TDEVkBCNOrctYTts0sf1d8XI9cLWrwNRB4vMEH7o1A88txavWsxelYXeGN+5JWWAH41
         VxJH6ATMEc5PESF7FkKKrlLyJmfpgYvBp6LJGZ+p9E50uT2Qncl1alwUwByoLEHcZJVq
         Bt3o+xf23TYh+wCKMajqU4bSMl7tpSYCl3IqBK3NPz9hpo6KxYfPm4TGKUcU/MpvOCcq
         cB0ih63YenWWzKn+kLWBJ3DqvghGvkkvsfAC+ndO8amoYHM9YtvEM4n+N0Z2HCBiz4sd
         TM3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fEKwEGtCzqQCdHllPq7OJwcJkHTpoiXkoK9AhLIXjOfNgTkun
	6VgkiUIGhF+U/62ub7QTDcI=
X-Google-Smtp-Source: ABdhPJyoM7gSpd88cx+PFoDlpS9VGExZaFdbf3oFLI1WQrCT3kEsWPzTz+Mb0Wopgl642RUo5Bn5KQ==
X-Received: by 2002:aa7:9f4e:0:b029:18b:3585:21e with SMTP id h14-20020aa79f4e0000b029018b3585021emr3183790pfr.23.1605294049490;
        Fri, 13 Nov 2020 11:00:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7488:: with SMTP id h8ls3446075pll.11.gmail; Fri, 13
 Nov 2020 11:00:49 -0800 (PST)
X-Received: by 2002:a17:90a:ee8b:: with SMTP id i11mr4644556pjz.118.1605294048891;
        Fri, 13 Nov 2020 11:00:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605294048; cv=none;
        d=google.com; s=arc-20160816;
        b=panLHbND16TJfvb3Kzi5FM35dZeSLFnbOCKI2JUKAqF0dItn2h4b3B3yZZg1x1btk/
         LCSJipZHzadjDevPGDQFIRV2oFxhn+GzlCPX9BuGdcY3oORzTRcnuWPLGvTl7P40uj47
         sU5s9MLwXTafu5bP2A3zX9tee6pwoDOKmkL04UXZ6gk2a1KaUZxxUf3JGfOST9T5sVUn
         5tnzCposXjyVC60c0qZERIKaBlY3DsHlRgYpkNRoABCHUva8+fiNwsxIU+0JuCjvpNxu
         D4Evm/2fB7uIBLbhgIe6BznXkRrZFLP8H92o8oJkEO5NvYMxFQCkjjPqRK4DYwEaRouP
         9umQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q61m3Kag5Q/urXoUxGuvFJyxhAGq2M6Yw4QQ7h8f4/g=;
        b=kpL0FuZg/BMKBvDJWbIv0W5fYddWBANkgHJqVE1F+PxRKNUDq1AZAzc2ndEgidI7nM
         qPL2jEaSDjY8DngCk4KYqU02FeVe4joQHpfVrl57GpGZRYnL3gd8SvdSXtrFurEYpsok
         fIFySvwECCzI5AvZAbDPyiUHDp39NLxBU0eVnSEt7dlQG9Jiv2P16d98NsrQ8uWq5XQw
         IW3IDHjXZ4zN5z53enZqIkv5qQ5bmUWY7o4GV8rs86rGUNl8EdKMZ5Tn1gEipCXm/jrY
         M7DNEwIm+hLm4WMceXshvBfQzQiGA0E+7+QIWzH1w1NjPUFoZmzvjfXtYrNk+DNbl9sX
         vhqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVH8SOcg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id e2si793922pjm.2.2020.11.13.11.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:00:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id 7so7452460qtp.1
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:00:48 -0800 (PST)
X-Received: by 2002:ac8:6898:: with SMTP id m24mr3404486qtq.157.1605294047936;
        Fri, 13 Nov 2020 11:00:47 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k4sm3314691qki.2.2020.11.13.11.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 11:00:47 -0800 (PST)
Date: Fri, 13 Nov 2020 12:00:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Ahern <dsahern@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, kernel test robot <lkp@intel.com>,
	Andrea Mayer <andrea.mayer@uniroma2.it>,
	"David S. Miller" <davem@davemloft.net>,
	David Ahern <dsahern@kernel.org>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Shrijeet Mukherjee <shrijeet@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org
Subject: Re: [net-next,v2,4/5] seg6: add support for the SRv6 End.DT4 behavior
Message-ID: <20201113190045.GA1463790@ubuntu-m3-large-x86>
References: <20201107153139.3552-5-andrea.mayer@uniroma2.it>
 <202011131747.puABQV5A-lkp@intel.com>
 <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <c7623978-5586-5757-71aa-d12ee046a338@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c7623978-5586-5757-71aa-d12ee046a338@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eVH8SOcg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 13, 2020 at 10:05:56AM -0700, David Ahern wrote:
> On 11/13/20 9:57 AM, Jakub Kicinski wrote:
> > Good people of build bot, 
> > 
> > would you mind shedding some light on this one? It was also reported on
> > v1, and Andrea said it's impossible to repro. Strange that build bot
> > would make the same mistake twice, tho.
> > 
> 
> I kicked off a build this morning using Andrea's patches and the config
> from the build bot; builds fine as long as the first 3 patches are applied.
> 

I can confirm this as well with clang; if I applied the first three
patches then this one, there is no error but if you just apply this one,
there will be. If you open the GitHub URL, it shows just this patch
applied, not the first three, which explains it.

For what it's worth, b4 chokes over this series:

$ b4 am -o - 20201107153139.3552-1-andrea.mayer@uniroma2.it | git am
Looking up https://lore.kernel.org/r/20201107153139.3552-1-andrea.mayer%40uniroma2.it
Grabbing thread from lore.kernel.org/linux-kselftest
Analyzing 18 messages in the thread
---
Writing /tmp/tmp8425by7fb4-am-stdout
  [net-next,v2,3/5] seg6: add callbacks for customizing the creation/destruction of a behavior
---
Total patches: 1
---
 Link: https://lore.kernel.org/r/20201107153139.3552-1-andrea.mayer@uniroma2.it
 Base: not found
---
Applying: seg6: add callbacks for customizing the creation/destruction of a behavior
error: patch failed: net/ipv6/seg6_local.c:1015
error: net/ipv6/seg6_local.c: patch does not apply
Patch failed at 0001 seg6: add callbacks for customizing the creation/destruction of a behavior
hint: Use 'git am --show-current-patch=diff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

Even if I grab the mbox from lore.kernel.org, it tries to do the same
thing and apply the 3rd patch first, which might explain why the 0day
bot got confused.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113190045.GA1463790%40ubuntu-m3-large-x86.

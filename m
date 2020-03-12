Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBZ7KU7ZQKGQEXZJHFHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D98F8182B79
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 09:40:07 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id y17sf1797444lfh.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 01:40:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584002407; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1JkP1b8kJL7PqDnLKWkFjNGdj75xtLNmQTgrJi18DkL5fX9xz+hj9ACx3WvFfMJPJ
         Rtw42dxb8H6aDoojKAeSrN2TIILWNKoZRjedBvHJn8e7f5sYmaunBq9ixoJjjIvRrqZl
         tL4FHvunFDimpC7Xoj1/uq6aeSG7Fa/ss8vx/bGF4W5frMiQJpwOMaO5dRjKVGR0jlIn
         UUjMbs7mdgUTewz5NnVAteqg2wfsywMmarTSL57ZsAcp5+cXQxklxbtwHgITe08XNIZF
         NwWqZc9x1mRXPqgOAIPWvSXomH5ViwFtIpJrnYepSLXwkhG52BXyp3jaGhdT2EOuy9hq
         /4xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SWX8FnJQLHmSl3z1ZMCuYnbY2ec3pCBVKKubDL8z5mo=;
        b=ftYS5kxsOl+KYvhTZ/d01ISCwt77bs4b+dz1Kv+fU9Y6vVdBFAIMKbDfXoMVAuypbN
         Clkdt38l4hvMVGPfthCfWwWVPbZ54KpIgllToKrZGNVnsUP4r3gSr7UlzZI2ZQYQTu5u
         Zyx7+F1hYNm5mMbyXFZLlHXGD2QjUuWKwciDH1qDz0HBo+TrJULuFOBQd/5DIHv0xuQo
         xEyTzG7cGo5DQGqU1b+iq7QyeUBnFFwNAZgwapFLoMkgkD7YswxrnFExabK3bQTjQglo
         nj5EVHvqCy0CwN5UJCxgxPKjrB2kRexsIrAh7HrrNE6x0HiXlpXem/V0ZXlCSDyqy4rY
         dM2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SWX8FnJQLHmSl3z1ZMCuYnbY2ec3pCBVKKubDL8z5mo=;
        b=TvJosr5/9Sl0kNRUV59pqGFKJIsuSI6c2YtbjWKX7Tx9uG2buWfBJq7XLizUrSuVmO
         8O2Uj5q8UOxvfJsIvLzj5Qp2ZdWqK+no/EDXFTMmUAb1gUUP2BiGxG/O0/bVYKrnaEjx
         89wf9AyS7iyWYGX94Oaa7SpuV2lQbA/wuezEwBgYO3idb4EkAH3wtYyGvTBuAqCCz0PI
         9+Yrvs4G/M0XHOhNz9jpT973ibDmt6HMxZLEYHKE7pi0ZeSjyq/fGrrXNt2VoaxFetqJ
         pBpbew5U2kQpoVa5lI/GQ+q1xPqjIlPF7cdUZW1F7dZW19QNNQ4m88KdZrzDLcW3hhul
         kknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SWX8FnJQLHmSl3z1ZMCuYnbY2ec3pCBVKKubDL8z5mo=;
        b=WxwmVWTdR35mm+1iSpAzkjnT/nRYUDzw17NXipWUOdbPiseETZJxlvLYoug2rVX8RH
         yrqb69zz77GbXLBT2uList3WwtLn5IOrl7413x2ual8vxheZDM4KVHgOSuflQpcuWpHh
         nokIgdvDbZ3cLM/ZvJ1P4xh7/2cxtnRB9e0fXirWvTKdqxMptKFkrJasGuJ8379H76pk
         w3F6hqRuqsWCJ3EnWGAwo/bItMjujvtR7NOJkbwYarszNRU6MmuL3Khy6eryrxX8Jpmz
         Zuc4xTi3GaD39MFn7ktN8mjwTvOHJL8Fpq/fD0+tVkvFh/JKRAfjUKyoAEmP1n2k2c6Y
         byBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ12rqDrpN0TvIvOxsw5E3tknlNx9n8qU7TPD9/H/hSik0C1nGBz
	a79migk5ucC0tBxm2U137RU=
X-Google-Smtp-Source: ADFU+vs2kQnZSJMqw6ODhS+SmATD0PFSO8vlB50RCe7EVrSdlvQZJ+3F9kvDg3sN3wcPWsHpl98OhQ==
X-Received: by 2002:a2e:9cd0:: with SMTP id g16mr4455019ljj.11.1584002407430;
        Thu, 12 Mar 2020 01:40:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls931145ljp.4.gmail; Thu, 12
 Mar 2020 01:40:06 -0700 (PDT)
X-Received: by 2002:a2e:9f49:: with SMTP id v9mr4519016ljk.238.1584002406687;
        Thu, 12 Mar 2020 01:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584002406; cv=none;
        d=google.com; s=arc-20160816;
        b=Iizv69/3+qVzV31oXwuT5jvAQFAORf82GmCvepxkQalkdLmqRQw85x9FxZz0742mLa
         5VPF8xxLXGyVXxql3m4bsv9NHG+BO1neGyFgVPHWmsVfo3fyiilN5q6VTRwRHU97qK3t
         MgRVqIQbLbyXudSW5taoo/Em+oeoikZOoFV1fK3MATJHBmA3YvpW1WyzlFEY2ZjlOMtM
         Slzo28J5J19Uz6xMZKDeFvVbYMH9iLbzeWkEA79jftD7r5J96GiGANZ+wuEQ7G/JJRA+
         aoJUxhuGDY8zn2D0Ov5tixYcPQHQRmZeNEXMX4wnTQAO413VYUQxxrtciafMYiXJ8ZK+
         DxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xIglOqk2jWr+uWDBSGqt1p/RMENfV2P8yDXfLjmC8No=;
        b=t38HdIKwspPHa1jNm/HQLlRfIwthWUeE3jcIecMQQNWfHiKDiGyeq7gpoL6ZXrtwBW
         3mZuR4yEct58BfQPfm02CgNuamLvtE2ZG5voBX5AinlQGlf7mVubrXxSMG0i6SypPQXx
         m0XP+jJutgbSdT2nIir7yq3ZjFKurnl+xUk7lxhfhPe9uGTxHn3aNwncIRq4XgXwwjPB
         QKBcCuC4CkPSL8B5LdfMYvs+0Lx94Zf1PCJHT/18MeNqytyJb2iw32ygC38wQBF7CD9a
         3hChIpaJUCcFzXVIA3v8Gl5TbAiddv/DOcKesK/l3zosOdvEuKWlyu2izJkkRnpTXJdO
         W/GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id c15si190007ljn.3.2020.03.12.01.40.06
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Mar 2020 01:40:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jCJNl-0004cr-00; Thu, 12 Mar 2020 09:39:57 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id AE512C103F; Thu, 12 Mar 2020 09:39:43 +0100 (CET)
Date: Thu, 12 Mar 2020 09:39:43 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
	kbuild-all@lists.01.org,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"sparclinux@vger.kernel.org, David S . Miller" <davem@davemloft.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
Message-ID: <20200312083943.GA7278@alpha.franken.de>
References: <20200311223725.27662-2-masahiroy@kernel.org>
 <202003121230.lys3M8E8%lkp@intel.com>
 <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Thu, Mar 12, 2020 at 03:12:28PM +0900, Masahiro Yamada wrote:
> I got the following report from 0-day bot.
> Please advise me how to fix it.
> 
> 
> I am not sure how multi-platform works in MIPS.
> 
> The cavium-octeon platform has its own implementation
> of various functions.
> 
> So, vmlinux links different library routines
> depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?

for cavium memcpy is directly linked in via octeon-memcpy.o, while for
every other platform it's coming from lib/lib.a(memcpy.o).

What have you changed, that this doesn't work anymore ?

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200312083943.GA7278%40alpha.franken.de.

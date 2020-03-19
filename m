Return-Path: <clang-built-linux+bncBDPL7R4J6AKRB4GRZ3ZQKGQEHPBKXEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 943CF18BDC7
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 18:16:32 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id f13sf1314423wro.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 10:16:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584638192; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbHWbqliQMr7ga43ZTzBrq+0x8JfzRKHgzI2EoxgGkz4d3rWqqY6D3dA9GSejVNmMj
         Hkqkgk92SMfMWIbgcgnDhCtd5YHj2fNINbN7zSsawhNwvVL4/fm0Q7Tkz8S1FjjtFIxv
         dTW3haEydjcnH4a7ZO5MjHdTPHzkWMJdUkxcMNei+msbRepVp8rd7h92b9iqigF+0UAC
         2pcR3M8DJD0Qc97aX5/DLpMbfhSO2emzrVEJvjdfh/5YmKh32E/nNG/wwOUqUCwhF0KQ
         EY5pW3Hf7Rz+owAcsQJKIX/BdqG//y46QdMj+glVNNyUKrka3KfOAnMImVxc+UbzXl5t
         3pSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oTacZI6Vw/cmWDewS0Dwjh9sotpF1+U3LtraY+lugrk=;
        b=svZ3MNJ6Uzb9utAc3VRjNh/G09T9S21qpHEE4TboKbyWXIorA8WtollsCrYzcFcs6Y
         w3ZPdqMvsIDDsPyFojOkz3Wmy0ngPJmZtAGL1pxqQt9IFUPQd2KzZcvdkOr9KCK5yeAe
         97458T4UGknC5qjYMyoauAE34i7DQxjGZsj5739lzQ7Evgiv856GOfJR8j3Wbsp9qu/l
         vikRTmvxfRSA7G/IYEvVJ7TRk2nnbdis1YqJCgQFj50sT9W9eaR11V5+SEYOoDHZLUDr
         0mG8a/G8lnas6gM6tuvTmd9GL8ji1Jh8i70QciWIC5KPVuBANW0E2/NsRmw9B6v0/rDN
         lSVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTacZI6Vw/cmWDewS0Dwjh9sotpF1+U3LtraY+lugrk=;
        b=MLnje+tKLCvUKuJPmEOpB9AZBKsc1zPQYQ0yF8uP3ZhA3LzD/NMKats9j/4aXITVHG
         pjTqyHAs5Z4GStNGakgg4aRPoQ+/j/fuCCvfplt8nZ+2/a9Iul7l5c1ofAWEYGdevImC
         RMmz1EjXU28R2vCBG1Td2zjhiqM2KPi5JSkkRGyGxHnjy0q+99EfymzMv3TfGxRGSUcF
         PJNaDQrK9eWGiloLYUtQlnqKLOw/NFoSibReo4xIahvwkgNa0acz3jAfDd44nZ9ua93U
         Px6H+wU+g9YK5EGhWVDIZbKhUwhe4wLn8H7aApiqi4+BqDuHhRdrygRd7D+tmoPhUkC1
         wvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oTacZI6Vw/cmWDewS0Dwjh9sotpF1+U3LtraY+lugrk=;
        b=fO5RW9EguWX/EdkK15iufYS8cdH5/Rb+tkjUPBH4XDyYX/czej24whc1H3nZkdutIq
         ol56jn+YrBCP7C4JpYrqdFCkLZKqsjdM+RwdofGt0Cy7VpG3l3viYHO7+O2eKUWr6Fyv
         nNQfeSchima5H2ZvRLCIQnSWvkBB1cS7+DK7RIGMKD7M4K8ywlhz1ZTl7FnTjI/mwk2z
         C38opY2O2A4K6Ebm3zpi51Wm0by/nObmmHAiZlsr3OtVwSiN+y0bFXnhI5t+vehBBvoD
         xUnwd4i6jkW8OYa1Q1G8tcde+joqjyu3tByjrs7J0etYnx4rIzQOPQ4TMI2KbN88K47Z
         5/nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3eyTaKJEVJ8rGcVx7+mRMpBy91jLhD9NLAtDgKT4uBikJEmnCd
	Px6LdddwIkc69n/TxFRogvA=
X-Google-Smtp-Source: ADFU+vv5QrzWpHJ/46bkmP2EwaWNg9BN/eBd4aZO+eGl1g6IJcQFUjCBTLL80tsba43zw3eA2Jl1rw==
X-Received: by 2002:a1c:a78a:: with SMTP id q132mr4940769wme.107.1584638192290;
        Thu, 19 Mar 2020 10:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls1503483wmk.2.canary-gmail; Thu,
 19 Mar 2020 10:16:31 -0700 (PDT)
X-Received: by 2002:a1c:e257:: with SMTP id z84mr5154028wmg.91.1584638191572;
        Thu, 19 Mar 2020 10:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584638191; cv=none;
        d=google.com; s=arc-20160816;
        b=T0kzsEqGVs+zS7wgxRkgD4sh6ixh415XNSDHut2Nu9brg8mWmfMkQrZWLxidIQI+9g
         OOlarRa1Wpx/MFa8J9vzk83YMHA+OnqEbSEVCWHzCERzvLjEmXj/Ub/2rDBYyY4Akbh3
         Cw1vtOlKQRiPY3/oPcnab6DWjajUj+9XX3FAfPxs5JsI6Vy9Ir6QmIwfzW6lJwdhTF0b
         TO8S9zZcjzUtA65t0GZRZYMCKTO/koFGodKtyOxAVMtLG3MP89q6tiWGS7cjkWxcS2fo
         eY7wtuIXkOf86odlUiAoiddYl/jKIMHUbN3/8eS+DxRhL0+Ir2CGhR+i9pzvlRvnjoOl
         WEew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=dksTMqAr2xu+s4bSfcM8doEP9jHFyJabaN9PuKfUbKo=;
        b=bAlfqmZCnf9/R1kyl1pOt0eKMRo61BZzQ7uSz0sW/YuujmUpgHwwXZASYydHgjbxxC
         ygU9Xi+ihcxQJ43xfbFiz/zUSPfttAXgoHU/ca7dE+CZIdEkAMm41B4YT2N+48Zt0LQN
         F8Ewq7m7qZJ2jNmY5uk+s9vNIH+7VojrIJfmYAy8FBCqHJoVMnTBZL0u/bNglk2WpGJz
         acIwMu4Fp3/CjMcZxTEBON0g+DIF+l0gklwX5kMZJ8rnwg678Ydk1Na3ogy1jdNq0rHX
         ukUeqV6IzerO5QlV7FiXk20XrtcTX5y7bvnT6CQj6M1AT3MlnYHkWzBlSnRRBBGSfLXG
         maww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id n9si132429wmi.0.2020.03.19.10.16.31
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 10:16:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jEymJ-0004Hm-00; Thu, 19 Mar 2020 18:16:19 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 5A023C026A; Thu, 19 Mar 2020 17:22:45 +0100 (CET)
Date: Thu, 19 Mar 2020 17:22:45 +0100
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
Message-ID: <20200319162245.GA19404@alpha.franken.de>
References: <20200311223725.27662-2-masahiroy@kernel.org>
 <202003121230.lys3M8E8%lkp@intel.com>
 <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
 <20200312083943.GA7278@alpha.franken.de>
 <CAK7LNAT8AVh8PawDsUoStjYMsOq-DLJbW30SpX7hDDJHZNCd9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAT8AVh8PawDsUoStjYMsOq-DLJbW30SpX7hDDJHZNCd9g@mail.gmail.com>
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

On Fri, Mar 20, 2020 at 12:48:20AM +0900, Masahiro Yamada wrote:
> Hi Thomas,
> 
> On Thu, Mar 12, 2020 at 5:40 PM Thomas Bogendoerfer
> <tsbogend@alpha.franken.de> wrote:
> >
> > On Thu, Mar 12, 2020 at 03:12:28PM +0900, Masahiro Yamada wrote:
> > > I got the following report from 0-day bot.
> > > Please advise me how to fix it.
> > >
> > >
> > > I am not sure how multi-platform works in MIPS.
> > >
> > > The cavium-octeon platform has its own implementation
> > > of various functions.
> > >
> > > So, vmlinux links different library routines
> > > depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?
> >
> > for cavium memcpy is directly linked in via octeon-memcpy.o, while for
> > every other platform it's coming from lib/lib.a(memcpy.o).
> >
> > What have you changed, that this doesn't work anymore ?
> >
> > Thomas.
> 
> 
> I want to change all objects from lib-y
> to be linked to vmlinux (exactly like obj-y )
> if CONFIG_MODULES is enabled.

ic

> So, annotating __weak is a good solution
> (thanks Nick!).
> 
> If I send a patch, is it acceptable?

sure.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319162245.GA19404%40alpha.franken.de.

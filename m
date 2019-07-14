Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5OKVLUQKGQECXVTDFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5146C67CCE
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jul 2019 05:45:57 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id r4sf6842180wrt.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 20:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563075957; cv=pass;
        d=google.com; s=arc-20160816;
        b=tU9pyWWkaCVc+G66+CCsvZV/DFfuYWVi/aPyUd3rTrJ81pr3K13pvnvs3Mj0fdYIKZ
         MdySwYat73nDzLdkS+7hWleSz7WDb8tm9pAx/WElAAobp51JSEt8f35ObNlpPJQ+dyn8
         xhNkxYtkvXgMVXXcI/yeXSxCqjHUyw2gGFeLGx9D3p4O5kv1kwshD3Tx9lgS6AooeHeo
         SeJOZitkRSS6LWVbteDQfjLCXWyxepFwrAgRLm6+cnNvQ5Xf2aoUCc+itBV72rwqmkmD
         kRunzBY1F8kuGtwt/o5faUsgLEDo/6B2lGdaahYDZG4WbsZy/3zRT+xFEFAlReKFqUHh
         5fRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=oEdciPa7qgiSgLB2oTRkJu5fhnYA5mkOZYFp3AowGfk=;
        b=gI7m5wGKXfeTZpPwzOIn4m2qDHqtnAcNIEN2wLjZFc365AozaoLWPcaMc2kQQiW/Qq
         3M28ZTpx/M9sik4Ng0CKuHXQvjMBNainRY8vHymsc1wOt9uraO6tdatl2tH+siEnpvcY
         oqia28aHroqxZI8NmnyUGMPfJF2oqdlywBlPBWT5GnebdSREBBxRu5ps71T4LRG1bV+G
         TKcRsV3XEGfcjMs3V/Vbesf8W/u9f2E6PKW0qH3RICTAoBtPhHY7VTpop5G1if5P0Vqg
         Alx14SiNA/WC5CwmtejbCIODk2xAAOV42SgrZDuwx/XKPmAau31hj/J0DZAWEuKFWEf6
         XYBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dY2x+fGI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oEdciPa7qgiSgLB2oTRkJu5fhnYA5mkOZYFp3AowGfk=;
        b=W791l+fC5HD7E4ikxM96Mg/eAOCu0dg7bgXAAYw1sYpWKWa0HJwp1e577YJbpCAUlN
         xooDDJSd60QzwPmxmQl3nFLI2MN/tYvWMjjCfbkql0sBsfEOpMybbveYMMYdvqhFdWdk
         016TQjLB0n7/LoH8LN7Rol9mcGQNj8/XsYlSBy74dbobO7yu8mUdTKDqZTMx7s+aerWe
         lzNhied7xqauibPi66bkX1aYmLqRpzTB5tuXLk/UxE5wRlIO7sGi0UtKM/ZWqCE5u1nx
         HJ1HrKjuKMn4L8uqxlSW0+2rtbOmRhy01cn14LRy0dv9HG8qGURhVzHL7RCPOALDAKBO
         gCqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oEdciPa7qgiSgLB2oTRkJu5fhnYA5mkOZYFp3AowGfk=;
        b=qAVjXb05Ga1OEoo5ZTtSVNIRERWySlTqFWpUa1PwpmEfSxv36hBtAZKSN+2fWKkt2g
         nn6YJclWXu6qvhjqFiIHpsXCb2qJn98WjRUlz51TtZF3LD8I0mY3sjAZ34mdy6hvtIb3
         xYlUPI6f76jyO16UW8H+Qznh74I5YdiVt3qdn2752UoXV466Rxz9f4ezsvE8q2a+hcOQ
         o8TK52BjvyYp7EyRJyiBTpzLrk/9iQQKi5/w/XXdCV79KGYJY2JhfBYKTOA3sVfH0PRB
         b6tHP7+z6Z4+ZAEHD6YH1HYOhgSIhcg4uiKdEN1CINF/wbowYhUr0sNNd7uHYUS7qwfk
         wixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oEdciPa7qgiSgLB2oTRkJu5fhnYA5mkOZYFp3AowGfk=;
        b=ta9botLx5omGczpBgUlWOidRqNpasvTXCMAeh55MXQEphzgBzCyqkB64bcXacJZw9G
         R2vOh5BLo48YCn2hhVRHX52uz4yhcDY4S4fbgwxJjwais0QSunw3XM0Iscq/oO6jRZ4R
         b0tOjXIq0d2KzMdORovVv6pEu1oqTS83+SdceNkpSCJsvoQbNpnBvjZDZ9v+utDim4DB
         ped+RzPLDK5G5vlpxS83wvoG2xT9eJkMPmnp/8BuQjSVKZP2PiPAz/exCMzyUjkD3/N6
         u1QryD3Y97ds+4Odm90UtDRGWK94WdEiIWaY72osQGkxSKZUIjHXwEdElLUcZPa5JN1U
         Iz0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPvU8/zFWVv5Ic4n6W8BbtaibkQEIt4/b82MFjynbki3QlbQHq
	Nk7Ea/Uwr/CH7uqbRjX36KY=
X-Google-Smtp-Source: APXvYqyxxLadkRoCwaejKDYEiUhBSlxA32hlReLGwHueJ+5ucdZEqbavLeewJr0OrZK6h4v6pPR6jA==
X-Received: by 2002:a5d:56cb:: with SMTP id m11mr20081830wrw.255.1563075957049;
        Sat, 13 Jul 2019 20:45:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9083:: with SMTP id i3ls4295733wri.14.gmail; Sat, 13 Jul
 2019 20:45:56 -0700 (PDT)
X-Received: by 2002:a5d:6508:: with SMTP id x8mr21252771wru.310.1563075956641;
        Sat, 13 Jul 2019 20:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563075956; cv=none;
        d=google.com; s=arc-20160816;
        b=jny0nrUf5xK/dm0bl4+016HRLsuj+MmmEIEcd/AtVtKUk9IXkhiojP2V2Hi/AEans/
         TJ6K2MK1M+Ad/unIEY1jszL+mox/YrfjHqNDvnAT2EJqVtuN44ESWYgLFmGUmw7h9MSc
         No8gK0z4S6wJxVvfEWfxUkHk9vvft07M2JQ3OwqQ1n6EqRbgmga6oH08LRhZZFU53m6F
         d2qj6QJ9oKLX6ZFVe5xLE7qDVY86hNQIZRuU7415jBjprpOfYabTu533AcLat8Sp/NFB
         Dr0hh1gL9w48j35n3kY2n1sGgdL0IbD+d7IcZh8QrNYD79cCKWetIkWbkQziYuYh2fIF
         Snuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ggJIsuxJtFXPDh9xNRfFfdtk6eD18vpDTTf0T36AFJ0=;
        b=TPAW6XfOaMxqspnxt8QiHEP5JS24ZS4gDDepVr5y48aHKavOo4Bk3+7F5WzfwvKyPL
         jUzsmNC/vLzPjN8RUgtpuTsipm8DYPKokRg99bQEL9wlWarzITduuDZAB1SNMXAybHtH
         1wOMNcZ1GycDqLjqb9ZYhiN8Ihp3XyuhuNV/oBZLHjHYEumx6Wj1DVfsv06L+yQP2De3
         cutLWrs9IDrRjqRTBcWZy0DKuZR1AZQ3GZkd8uWIxxuK9FM04Yg4Cxcz7mGloi8aKyjX
         ZRpC/yYAa9s4Rx8G3gcH28iU7pYxlWR3G/XcDYlIKkWLHh8mbHc+Oi5sddsAfQAo5cC1
         fS/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dY2x+fGI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b15si257860wmg.1.2019.07.13.20.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 20:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s3so12037065wms.2
        for <clang-built-linux@googlegroups.com>; Sat, 13 Jul 2019 20:45:56 -0700 (PDT)
X-Received: by 2002:a7b:c310:: with SMTP id k16mr15999430wmj.133.1563075956079;
        Sat, 13 Jul 2019 20:45:56 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s25sm11650959wmc.21.2019.07.13.20.45.55
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 13 Jul 2019 20:45:55 -0700 (PDT)
Date: Sat, 13 Jul 2019 20:45:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [linux-stable-rc:linux-4.14.y 9981/9999]
 arch/x86/kernel/ptrace.c:659:22: warning: ISO C90 forbids mixing
 declarations and code
Message-ID: <20190714034554.GD90669@archlinux-threadripper>
References: <201907140611.AydIXYEe%lkp@intel.com>
 <20190714034125.GA90669@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190714034125.GA90669@archlinux-threadripper>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dY2x+fGI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jul 13, 2019 at 08:41:25PM -0700, Nathan Chancellor wrote:
> On Sun, Jul 14, 2019 at 06:55:15AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > TO: Dianzhang Chen <dianzhangchen0@gmail.com>
> > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > CC: Thomas Gleixner <tglx@linutronix.de>
> > 
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > head:   728f3eef5bdde0f9516277b4c4519fa5436e7e5d
> > commit: 55ac552ebd34f9687cc1bdcb07006bf7f104dc99 [9981/9999] x86/ptrace: Fix possible spectre-v1 in ptrace_get_debugreg()
> > config: x86_64-rhel-7.2 (attached as .config)
> > compiler: clang version 9.0.0 (git://gitmirror/llvm_project 87856e739c8e55f3b4e0f37baaf93308ec2dbd47)
> > reproduce:
> >         git checkout 55ac552ebd34f9687cc1bdcb07006bf7f104dc99
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> arch/x86/kernel/ptrace.c:659:22: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
> >                    struct perf_event *bp = thread->ptrace_bps[index];
> >                                       ^
> >    1 warning generated.
> > 
> > vim +659 arch/x86/kernel/ptrace.c
> > 
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> Hi Greg and Sasha,
> 
> I was going to reply to this on the GCC version of the thread but I
> don't really see a way to get the original message or the message ID
> from the web archive since I'm not subscribed to that list :(
> 
> https://lists.01.org/pipermail/kbuild-all/2019-July/062379.html
> 
> This is not an issue in Linus' tree because he fixed it manually during
> the merge:
> 
> https://lore.kernel.org/lkml/CAHk-=whhq5RQYNKzHOLqC+gzSjmcEGNJjbC=Psc_vQaCx4TCKg@mail.gmail.com/
> 
> I would say that it isn't unreasonable to fold that fixup into the
> original patch, with a note that it came from Linus' merge upstream:
> 
> 223cea6a4f05 ("Merge branch 'x86-pti-for-linus' of
> git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip").
> 
> Cheers,
> Nathan

Re-adding our list, which I messed up when adding stable. Sorry for the
noise :(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190714034554.GD90669%40archlinux-threadripper.

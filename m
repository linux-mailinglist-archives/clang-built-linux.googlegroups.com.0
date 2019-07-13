Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNFGVHUQKGQEMIE453Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B861B67C30
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 23:55:00 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l7sf1027398lfc.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 14:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563054900; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBgK2IAIUU5Uk3OzBfq+AFc7eVWilf+4ITMgUPNy39j6g8qUQ37FNmf5rLpgpJzhO7
         OIovvl8gqMTBgqXKwZoK1nahPJik/PlPai5yy65tn8iNff8W4pu8RFwbv+LDqMW6KNmi
         Eb+SWLGwS8+3k213y9oXMvaKAGeO/g2wr01XD5vGG9u+8MAp9LvJf3q4zPPmbbQ0H1eu
         2UW9fh2Ykp98u1BZ6T81dQEgsyJdWs3VPtu7jN6yT8EzE2cmaiV1P8ROxfKpOKMhVCze
         6Cv7dLpJamw1zcgb9a1dcKempATfefDkQiUe0/MbJWrGjxlpMg13qG0LTE6D9/6b3KDs
         dqIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yOFLM76NqGYLTwWJhOl3ub3mSdCCfWC6tc/XKwGI7Z4=;
        b=0P+NNIge5JQvPzU082uHxgW4pbO/2C2NZ8/APRzIAtyR4JbGtLPg9Z2GbagUgyNTxH
         U6LHFHTzcn6j/658VTkoDmt9VSVvVzT2IlyzEZ95teuhNzjYh974snaO/w3ytu1RPwaj
         iM9zjqMJEoDyFvwlQCWVBo3SeUQ1XQz79z4HGAeErAEyt4uiWWHVSAK0yY/lPxymMwC5
         cdgqI9B4gdH0xGENRmJYYkK/D94ykj1QqQNtswg3UJ6fmY7YtUzFU643WxPQEFmTa303
         of9ZiBrecFVOdPBkJDXjc/MaAfRUEF577PaoC9KtKY1Tf4ihP4MUcLJ4RAFUsayklNYH
         p/fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XXOBMjRp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yOFLM76NqGYLTwWJhOl3ub3mSdCCfWC6tc/XKwGI7Z4=;
        b=RQxWgMr+QtkDoThSum+TQ6ZGwuR/y2moBUm5mR0Lg7eheGM6Pj7BxQNUT32zNqEf8B
         oVQ7hUGsOLzneFhfZ/KKk25vjK1K4QeB2N0l3uQFWpOwgqVasXvnGkd6N+2oqJEB9SO/
         eRkRP6GJLcuBxzbF1HI3FWR2GTPCI9Khmzm1rI3Xq7PvmNl5tiYLOt/ZvAYb5XZxCZyN
         58ZIE+pqY/06mMVm5Bx/Ut76R3JnoiMgu1jiQ04QRJSZS+Yv06zCYhJAwDa0iM6u6Lkc
         pWVNaJeQLZL5YmhO+a9pP9CTs816aLGi7ZC4BDXDM8mj5wiMQ3+ljJiKBhBkpwTqHquU
         A8WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yOFLM76NqGYLTwWJhOl3ub3mSdCCfWC6tc/XKwGI7Z4=;
        b=rpfr1fuezIeLAGVCxONOeC6QESSX+Yx2MdWA2uSfOATZNQzIKBhmf2/nX9oEPhDnT7
         JivrjcJKhhlQjAhaW0Mfg7a3RDPvXgf566Cz3kviSoy0gNDKHDvAk2RW8xZ2yHH7klZ/
         IE1XTlGdcgxGNktHLXCaJ/KSyhRe34xvmX/xZj4l0YiLBOUNK4SUcS1XiXLBo91eTayS
         WMf1f+yaw2+mVovndFJ79kycbQ2bTA1EiZNiEsV6YVWvexRgpPzB8Q+vKcFP6TrsFT/2
         1Us9a60Jqj0RZpDUDeN25I7MVvTLYtVXDFjArTvMt9aDxecEKo7xf4hPNmBx0K9j++aD
         Snmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yOFLM76NqGYLTwWJhOl3ub3mSdCCfWC6tc/XKwGI7Z4=;
        b=rfa/6twjP+6X6F6t9uhd9lNIL8Ym2+HtxXtbBthXRIOqw404LtkEdodIfmuEXfqDIv
         hkOIIsmW6CxrfzLPvtspVWm/oXb9I8LU2FI/NPtqiSC1j3fzBTe69aBEAlVYLzdGpUgc
         oF1jKfXYPn2eKN4U+XBDhiNPxfp8RiP4ealKg3XZzwCz0wbW1xAFTk0ylgY7oCCgiDWB
         ArS0kRH64kJWke4q4ZFIXjxKcpEI9NIU1+As2yeN9Blx9VILSsueUR1H5yRvYg3ipQ1s
         ikxqXdcwjGcXsB3tpLeHRFUXnBEiNtazLmxNFHP1jh8f93ALI11EEGxAz1AWc6oXFn4N
         5aAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVpwtlxJLHGQUi1vmuN4viC1Igj7nqi2q3eYf9943nAygcg75k
	x0U3SCKNDauPzHbik+XSRx0=
X-Google-Smtp-Source: APXvYqylUTzlceHNHWqBtSYHf/uRoWpjtAg4GJFI8JHh12vOTsLnOuCCYhcYp9V/o+8sWioikZMXbQ==
X-Received: by 2002:a2e:9701:: with SMTP id r1mr9698342lji.12.1563054900369;
        Sat, 13 Jul 2019 14:55:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ee0a:: with SMTP id g10ls1029380lfb.13.gmail; Sat, 13
 Jul 2019 14:54:59 -0700 (PDT)
X-Received: by 2002:ac2:418f:: with SMTP id z15mr7451035lfh.177.1563054899876;
        Sat, 13 Jul 2019 14:54:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563054899; cv=none;
        d=google.com; s=arc-20160816;
        b=i92jvHL+TLLdr3OpsYSRKyLu7zoGt5i+F65Acqz0uK2CDDih9k+PGOesQWIT75/8iM
         mYQYkEbu6zLRu7WiS6KZcvjvmLwxzX6i5fN16C+awYyYa+IvI6+AOVOuEkWDh1TnUVSy
         B75eXuQd8jIdXxrZ71pMaSX2CVV09+mAwJ7xJdLMkXqJYOLxa7WYBZ0ahx7Cvn7HhlC+
         Atu6I9KDEYe2F5+E/IcoZAcx6nbuir5je4wJIIy4LatLyrSPfo3Bd5pn6JbKWn+7gnX7
         ggWyQsEKhIJE+06EYF+j2PhamsL9iu0tJJasXgw1X5KKoZkdM5URBm+3V6mzZgAyxczq
         RAwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LRZHtRg1fhhf/ccL609xXpY6NeFiCHo1K7qXcvtLVns=;
        b=mJVZeSQ4VMbw1mH+HOd7vFkHlgG5fbZRZeAJ+xE0TwqBaZAYRnR/d+Bw9Vxoigtndk
         m67H0ljdU/zxE9XImBNX6Ha26WqX+GPajE/irI6VLhKDyg7yzzIGRX7dBFO8RhN09U7I
         Hm20p80mH5Yu8CqMaFwOameZN6RO/oXe+NlIeiy6k6XvRrm6e40HaM+1tmvuqjXkizSN
         qkrlfJYwo/mUoCNr5uNsWwftFFTGifg3YngQ7qlYft+O43+PV+KzXiMfORlxKr53UpRB
         yHudp9LJXfF0/Duu5nKfz45At57FYLXS46UlpVk3j+Hq1lCS94Za98g5p2gQzO9ErnWX
         cAdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XXOBMjRp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b8si473544lfp.3.2019.07.13.14.54.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 14:54:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p74so11737928wme.4
        for <clang-built-linux@googlegroups.com>; Sat, 13 Jul 2019 14:54:59 -0700 (PDT)
X-Received: by 2002:a7b:ce18:: with SMTP id m24mr15342232wmc.126.1563054899083;
        Sat, 13 Jul 2019 14:54:59 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g17sm9470716wrm.7.2019.07.13.14.54.58
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 13 Jul 2019 14:54:58 -0700 (PDT)
Date: Sat, 13 Jul 2019 14:54:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [sashal-linux-stable:queue-5.1 8/87] net//core/filter.c:5181:10:
 warning: incompatible pointer to integer conversion returning 'void *' from
 a function with result type 'unsigned long'
Message-ID: <20190713215456.GA16521@archlinux-threadripper>
References: <201907132234.OpOxlO0h%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907132234.OpOxlO0h%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XXOBMjRp;       spf=pass
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

On Sat, Jul 13, 2019 at 10:40:36PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: Alexander Levin <alexander.levin@microsoft.com>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/sashal/linux-stable.git queue-5.1
> head:   908f65498e1d2350f5195fbd399b9cf466d2748a
> commit: 2ccd99836d2e51efea58691ba7afcd698ca9a75f [8/87] bpf: fix out-of-bounds read in __bpf_skc_lookup
> config: x86_64-rhel-7.2 (attached as .config)
> compiler: clang version 9.0.0 (git://gitmirror/llvm_project 87856e739c8e55f3b4e0f37baaf93308ec2dbd47)
> reproduce:
>         git checkout 2ccd99836d2e51efea58691ba7afcd698ca9a75f
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net//core/filter.c:5181:10: warning: incompatible pointer to integer conversion returning 'void *' from a function with result type 'unsigned long' [-Wint-conversion]
>                    return NULL;
>                           ^~~~
>    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
>    #define NULL ((void *)0)
>                 ^~~~~~~~~~~
>    1 warning generated.
> 
> vim +5181 net//core/filter.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-July/062368.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190713215456.GA16521%40archlinux-threadripper.

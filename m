Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7NEZD2AKGQE4IBWW5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6A41A5376
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 20:54:56 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id f124sf5034010qke.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 11:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586631294; cv=pass;
        d=google.com; s=arc-20160816;
        b=olMvYf4yZK3ClGV5ksa9/wsnVbsrtuIQPNZtL32bsToCwGoR5TPWOxEqAAjuiC/NVN
         DhcUcJ4BydIs12Tff6oSGbhiJ2aKNFDmTbw8RuJbttRzf+x8Kzjn6epylbi4oTSoQdyB
         sTW3iS8BgyvQxcDiULcPchBupersxa8srj44jPvZN7PsrXRttsz0mCoTqI6Ezb2OwYva
         Ph8FC/EFgfsw5NkkjOjigSyUj2p+iLGnR+LorZ2DNgH8nwsO7+xNGafAuoceThe9Igeb
         tC7NX/C3WDtZMkRRW+vJzG0nNkVi+/4Eq0T39SdHre12JsKJFGh12u/qbSESPVXMnBk2
         K6ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Kk+BSrjSCfQg0V/1vsFmSgTidoBQtoYgukLPIsT6UOw=;
        b=lzabrZJXsT3543C63dVu0XFC4hWEvupDV7/orNyRhJ2y5sUnY+Vbsy+uy0IFqSToRj
         CiUox6SZ2JxtlAoQ9cOtdDShelgysYmLCb73skbT+KR8n7ouejDma8FisIq6dG+FnouN
         miJhvM22q+J3fR/yqK9qb07l+a56+3xD2l6HFJfnjlrerqs2GurafsqUeszwcc8XDGtp
         Q7jvm9ULXvDGkZ9IiJlgR3KQlCd+IzjJwpraZ22H7gNHc6hcgqdmihdqfxr8Hb+8g2Ha
         NXvxlfwy+HLQKKcOM3rPn21xwaGWaX+UF1Fw4e5p5vpr7mEZ4HP6wnyTBay14NBVHOBb
         attw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kv+gBxBZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kk+BSrjSCfQg0V/1vsFmSgTidoBQtoYgukLPIsT6UOw=;
        b=aluOh61zG3w6rfiVSejUnDspK34VuTBlUzOt0roudpEL1zSmu96Fo7WU+0EyrNLSE7
         bIU8t0n+Y5VbRRnWL+r4HFKgnCyemtJyL/fEtGLXaNfdhMnMLYt55ygff1L8B9GVcZ9P
         emV4wJYcDBFlfvgiTDtNSly2OVhdmehF0jqRdoIhnBCLfVeuCbXqk1+5K/Mug6TiNLgF
         xY7mC3PJcS6NUNGbwmqQqfvqPRjPmappZ9XY8XqWEV3cMHUwoJzW0ywLSnI3iBaAXxDd
         Zr+LPM7gxGVdLtQ/g05RwFG4EJb58o8T1ltTmXV/5Tx46esTXQbRA/nI9GxE3RvE6Kf2
         +3gQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kk+BSrjSCfQg0V/1vsFmSgTidoBQtoYgukLPIsT6UOw=;
        b=f0jz2v1vZD5RG/2GjxoDqyBS/Rn7MgzijInTYSpP++ycnjqg7aR8eWx+muM113wE01
         EQIGH+pQHqa6LD9L3DjFNC4BejLxbFPzZK7BxZL70H/d992WsTMhyVzEVn9fCziXwP2c
         biwbLh++Umv72cGqIQesXoYDGAfXoNsiybzpXythajTV3qLGll43Z2ba/Z7RHEJbKCDV
         wuGlmYLrjZit37M2y4KSwWYS/mJMXAuF+ejcj1t0cAdTJWYhE6bobxg4b2oPdyj+UNmU
         7ZMvI6hYKML7CjQXKTJbatJBkXPeHL593r8zOAu9GbpVna2CbFBWYMaZmnEeKUHi5J67
         pbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Kk+BSrjSCfQg0V/1vsFmSgTidoBQtoYgukLPIsT6UOw=;
        b=s5PjQjbHIuzn7iuLyTejX4wFiQ8Wc3puasbmblmUT91vlBl+4NGk1La9iKH0V1TuSw
         QarTKxsfSiVCArxnZCZTKpz9AdAigmwYcThq3xJazZhPoqXBlZsuFaECugt6a+WDmAT6
         xLui6PN2L+36jAC10F0EyQTyqYVQU6o976BYrV71AQ6bn/jGwwrBWHZIIXuqpqFD9wXg
         dKcUGbbxjpiXtVjHPix08A3CLLEi8WS0EWPkmu3Un5YDHxzGdr1Lr3zAOJGAeuF/PR22
         GT/a+pWBfyYlvZ0ACEvR8X3bN6gNrC4V/gBTkw45TcMS6zFD/x6tjpyzH1kk+nfPZpcG
         x1jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub+YftNsCtGNzSqgG4SOX2kH6kfPJKWYKHOII1ieN3BogdA0wlF
	HNfK54SQ5rbBx3EJmI7yqwM=
X-Google-Smtp-Source: APiQypI9quapVPHeaMmGfGx2ddEEOQ9iAoivUCf9qv9/eD9KNSuUJDp3fJTTb60XGKNFeZFt/mzf6g==
X-Received: by 2002:a05:6214:134a:: with SMTP id b10mr10543415qvw.206.1586631293978;
        Sat, 11 Apr 2020 11:54:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c97:: with SMTP id 145ls2345682qkm.4.gmail; Sat, 11 Apr
 2020 11:54:53 -0700 (PDT)
X-Received: by 2002:a37:7846:: with SMTP id t67mr7069926qkc.438.1586631293539;
        Sat, 11 Apr 2020 11:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586631293; cv=none;
        d=google.com; s=arc-20160816;
        b=lolC+8445iMgcxqmcqvbv1s+2MfDX5KM00F5yqwsY9yYDxu3RHwepZF4bsg4uOmvGJ
         mwTzbFEdQ38XNdoCAaul/fYhrhbcXIcV222E6z/GqAsiAGHkfciPTZI7mEOMc8QqHq9W
         dKO32hYGWEJRKK5O4WhwTVXWT/H3jPhfw6J1AXp3/QZKXfP4faZkhf4ft9/k6Wl0UxLh
         A7NkizqaoS0HHncBYf1y8HHJe6Lpr4J3pZ+9s5gITPIz0oKojujFyFpD3WXMROwhaUo8
         b1ZZbGouASgvYoS9tdOhi+A1ZUrcTmLawryc6DqbBn8LaIV/Rg0g5qurX8/LOL++7Sbh
         mgAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OXh+m5eqa8Lnap23w702yNK2LAZ+lP+pfPxrMKGwnbw=;
        b=w4BvkaYKYtJCWL9UwLtK9S1sndHa+o5u3wJmJEvvHna0fP0ioxwvIAzzV16fbgyEYz
         GH41JAxFFmH0c8OnB78K1QPTRgwZu6UN62dsbqJMj00PkTsQPDAHM/zakP9/p2Y82lRx
         sttDmSjh5yf1eL3CSrsDGYfGDlZw0QsA0p1oNQr+ERdsDRnUKWGSWH99nge3CA972ABq
         z5G4i+oelJiH/zB/xEBP2F0vwpUoSYOc/SMZke2YDk7TJmdxlRNU0WKFFdADb/ppdeo5
         v6CA5qCEv+4mBIISMxiXu85loHjO6FxAQJYNF7SmRR+tsTBv7DRJTJ3w/Ols0Pwao9fz
         pZGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kv+gBxBZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v26si315318qtp.4.2020.04.11.11.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Apr 2020 11:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id v2so5126516oto.2
        for <clang-built-linux@googlegroups.com>; Sat, 11 Apr 2020 11:54:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1f5a:: with SMTP id u26mr8720886oth.208.1586631292964;
        Sat, 11 Apr 2020 11:54:52 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 10sm1345980oto.80.2020.04.11.11.54.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 11 Apr 2020 11:54:52 -0700 (PDT)
Date: Sat, 11 Apr 2020 11:54:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.19.y 9903/9999]
 drivers/rtc/rtc-omap.c:569:21: warning: implicit conversion from enumeration
 type 'enum rtc_pin_config_param' to different enumeration type 'enum
 pin_config_param'
Message-ID: <20200411185451.GA16014@ubuntu-s3-xlarge-x86>
References: <202004111002.9FJNMZuZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004111002.9FJNMZuZ%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kv+gBxBZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Apr 11, 2020 at 10:47:08AM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   7ec457f57a7540c70239b0935c3db02324cae4e2
> commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9903/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-randconfig-h001-20200411 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 7149bb70681a91de5d490b4bb0714d9e55a05bcc)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/rtc/rtc-omap.c:569:21: warning: implicit conversion from enumeration type 'enum rtc_pin_config_param' to different enumeration type 'enum pin_config_param' [-Wenum-conversion]
>            {"ti,active-high", PIN_CONFIG_ACTIVE_HIGH, 0},
>            ~                  ^~~~~~~~~~~~~~~~~~~~~~
>    drivers/rtc/rtc-omap.c:574:12: warning: implicit conversion from enumeration type 'enum rtc_pin_config_param' to different enumeration type 'enum pin_config_param' [-Wenum-conversion]
>            PCONFDUMP(PIN_CONFIG_ACTIVE_HIGH, "input active high", NULL, false),
>            ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/pinctrl/pinconf-generic.h:163:11: note: expanded from macro 'PCONFDUMP'
>            .param = a, .display = b, .format = c, .has_arg = d     \
>                     ^
>    2 warnings generated.
> 
> vim +569 drivers/rtc/rtc-omap.c
> 
> 97ea1906b3c220 Marcin Niestroj 2016-09-16  567  
> 97ea1906b3c220 Marcin Niestroj 2016-09-16  568  static const struct pinconf_generic_params rtc_params[] = {
> 97ea1906b3c220 Marcin Niestroj 2016-09-16 @569  	{"ti,active-high", PIN_CONFIG_ACTIVE_HIGH, 0},
> 97ea1906b3c220 Marcin Niestroj 2016-09-16  570  };
> 97ea1906b3c220 Marcin Niestroj 2016-09-16  571  
> 
> :::::: The code at line 569 was first introduced by commit
> :::::: 97ea1906b3c2201273ea6bb40c43c611c056ddb3 rtc: omap: Support ext_wakeup configuration
> 
> :::::: TO: Marcin Niestroj <m.niestroj@grinn-global.com>
> :::::: CC: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Fixed in mainline by
https://git.kernel.org/linus/c50156526a2f7176b50134e3e5fb108ba09791b2.

Obviously not caused by the bisected patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200411185451.GA16014%40ubuntu-s3-xlarge-x86.

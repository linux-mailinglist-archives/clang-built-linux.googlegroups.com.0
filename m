Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5EU33VAKGQEL2RLL3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B90A290D04
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 07:02:44 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id k8sf707396wrx.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 22:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566018164; cv=pass;
        d=google.com; s=arc-20160816;
        b=notNLAiPBhlX3E8qj7cCVIRrm+LjXYJtSrgSLOQ6UAL2zVR5V2MSPaC7XSQulKWy0D
         v/I6V2y+03t4cD70gQ0uqXWitMlGO5StgsCIZ+SmeV/Dhavr/C/bdcDSemgfyp67k8Av
         HuwchjU/AVKMGoMpt4DGGyL+uNW1rVr1aa9SzXelhteBQc9RT0+e2C+V1wyfsfXudFRD
         0Mlil+zIgMsB35HXdhv7IKLU3CcVN+4gjW5BARse7+g+1eX2vuJ4Otkviy+XgtQqNkk6
         nX1w/ecR34NDuZ5tqinLnTwaXhlXiCyplJq8jS9/i5PBX8GcBRm7hZEvdgCm01bl22sC
         3saA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=uBY/MarWlx3Ls8R708rDLiZvRm0Qifdt8fTw+WMZppI=;
        b=vDzUUtCoDeVTdLIwV3o9CZuueySeQ0fGAKQe8ZcWppn/TDGORc9v+3gt7n9PKy9M+L
         U7Z9oUC+mt6iLtofexJWJsWBHZO7hVgE4xn5x+aQvtbZXqla7SW9njqznvCUDrxptYDQ
         XD6y6vtrWPErBy0KX3Kzu98z/y86LdInF5NLdOH00XYeOaiLWZqdKkvoEXBq44pC3/4o
         VUsueUyJoEeR+FJtcYe6S0RToPlV0rCEBrUMAZl+tPHbulCNz7XROiwM5Np+k8xQSaS+
         yST85BN0JItfPujG8ibf18B1UUbQqiiZZupAVZ+uSb7hhFpULuTtH4UbtawI5+i/6ZKR
         JfzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=amjxBlA2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uBY/MarWlx3Ls8R708rDLiZvRm0Qifdt8fTw+WMZppI=;
        b=FEwym7XpSYK4HR68eXfO1KiZpNk0fVd8wDJMKwqzKGW6mHxQHUifZzjn+F4Z3fsufA
         kq42dCPnR9q1Y1645As5/b7RhOJN8bB7DCmDeGQUOavLJCvDOvN4v1YYIItjt7GxBmS6
         GpZkRAFwtJoDoRwuaM1RGnV7uEmg5SjTUInpQlH+WnBnuJAKbZdQpZRaOmLyardk+Orw
         EOwub68ztIvAbUxQv6GHk601F5MkMGEkJwO0nanKU3DYVaC6u+HCiXCD7bczlC94K0Yb
         e75B7C0vQct3hBlzsxHq46h0bszo0rQiph6a5r7BvzUDV5Zvc+Ri3uheH42u7kIm4dpr
         6zAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uBY/MarWlx3Ls8R708rDLiZvRm0Qifdt8fTw+WMZppI=;
        b=qhaYBXJnzyOQNwFnksf/0ZT8xcFcQcpbVZNFnJv2XYFEdZrO6Jk5jWDNTlRlaTk5OH
         Jg91eIDfAvSMajIR+2smvOIP6pY3K2YRRUm+swPuEeTRxT10+lgthpDmhHIxdfQ10ttl
         qFq1kj2QaWUSXKjG98T8IStyt2oS0b16zxw0NrCbsJIOv9+I/4tkRIxdH3hYGuyYoeCF
         JqKCZoxRyL8OUoqZuyrUNb+CPTcHI/ZctU4AYlDWuuVbdAQjb9yEeiQ9fihmk7hw0Bmo
         oh8Cnwklo0RNGiKtUq0baLn6pPguxfGlXrbdYMHO8/lblSY37s0Fi8KhCgAdhqNOVkka
         G27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uBY/MarWlx3Ls8R708rDLiZvRm0Qifdt8fTw+WMZppI=;
        b=pne3q8Ucu9bM1+fFqw6lZzUuEuCHSXPV4Sb8h+rFeXqdcIPDjXZOyf1C+Z+HaQM5rV
         1rtpxf57SLrlTKEfRrBvNzz77dSSITuvZ4B6bTNW7tSQSCz+r3uYsd6nUhxdx6eOFG7n
         L459V9g/TAT4cid4jt56NeuNmWZSVSSS/BPUhrTjczhL08WjcnXB/ojhaCow0S4KfWJh
         KQVACJrauUfZXlq1q3Wsl6u7aawf4nsuop+DiaNfcZ/EikaP2ybt0vmHlNGfvwS2xZXv
         kLikg06UdnbhhGZag+epmjKLF+zHAQNDuAuZuaHQaP9uuhf6ZahI0g4rFii2t7GPplkf
         7gQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFbCZTsxZ0pP5f14NeoIVfvq5HwT/HPPz9/qp6TQffwYjfrJa4
	+POXAwok+rIiUfhHguwGWsE=
X-Google-Smtp-Source: APXvYqyl+h8buipaRMyjp62ebcOyOYC7naBQ0jVBogmLCXpXQ0QQN+43uUAIdqOinJ6tHLnYG+JreA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr10440100wml.175.1566018164344;
        Fri, 16 Aug 2019 22:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls2968436wrn.2.gmail; Fri, 16 Aug
 2019 22:02:43 -0700 (PDT)
X-Received: by 2002:adf:f287:: with SMTP id k7mr14418282wro.183.1566018163938;
        Fri, 16 Aug 2019 22:02:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566018163; cv=none;
        d=google.com; s=arc-20160816;
        b=lbTw9XoA3syVpFPgKtnJETYSJM5gRh2u4cb7IQQPmqzGA8oUcB/ppIWwYN07p0mVKf
         oTZ+9LAnjtYcO6/WRA+vQLJ9kpoIZP3QPpeq1UKduPHLnMY6IgCAwOvFIFPlwuBd9Bm3
         qlIQsJ4VC4OodMgAtjTa0TtcnuN8cW8FW+hfgmDSYUCdP9Nf36iAZ7D6Uzvz9+GV0g85
         RokrRZwzSrCgAhMm3PaJwULXDUVg2T3OOf1fx2ck/Z5ZdknHI663MqJNZTpqk9NqTmPn
         BMV8k9leNctaVUbdWanZ4HIQhwNx7/j/VrlA/pl0g83KKEVWo/Vqc58E8mqZM1SLFdrD
         iQUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LaXw5xK/J5u3tChK7qumm/SpS6Ta4XjQUI4LsBLllAI=;
        b=N31+H0yW4AvEIL8CvJC11tVuUOh5t0vptRzE0CH3BLL7YpPCo2E2zvbyNAPRYV42Jo
         MyzyteDSxfKVccZh0rnu6L0V7LAGCt65VsLBkTHLXuDqMnSvhm+V4ZVkNxzx61oxUCZ2
         s5y7vtaAz8vWu/yQfvWt/kXd7m0i6NK30qbbhbocfd+ITv7dqXNtY02J4y20imz5b4CD
         xRRUMmKKvw6wr8ns1fo9UsAMxu5hYsqQfzKu5qwkQ3lvt3MOwoYwU3/2Rjbn9vArADAp
         7dVvOvPeXkq3oQCeWvhlftTCgUyiRlyl3h5jNI7SSGWa+VfKZi5pmSuuchbyfpHgS7La
         o5pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=amjxBlA2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o4si410357wrp.4.2019.08.16.22.02.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2019 22:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id c3so3394723wrd.7
        for <clang-built-linux@googlegroups.com>; Fri, 16 Aug 2019 22:02:43 -0700 (PDT)
X-Received: by 2002:adf:fac1:: with SMTP id a1mr15045322wrs.56.1566018163333;
        Fri, 16 Aug 2019 22:02:43 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c201sm13055441wmd.33.2019.08.16.22.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 22:02:42 -0700 (PDT)
Date: Fri, 16 Aug 2019 22:02:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 3/3] linux/bits.h: Add compile time sanity check of
 GENMASK inputs
Message-ID: <20190817050241.GA69583@archlinux-threadripper>
References: <201908171038.SsJs2v31%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908171038.SsJs2v31%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=amjxBlA2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 17, 2019 at 10:59:54AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190811184938.1796-4-rikard.falkeborn@gmail.com>
> References: <20190811184938.1796-4-rikard.falkeborn@gmail.com>
> TO: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> CC: rikard.falkeborn@gmail.com
> CC: akpm@linux-foundation.org, joe@perches.com, johannes@sipsolutions.net, linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com
> 
> Hi Rikard,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc4 next-20190816]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Rikard-Falkeborn/Add-compile-time-sanity-check-of-GENMASK-inputs/20190812-182740
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous bit-field has negative width (-1)
>                    inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
>                                           ^
>    drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:201:50: note: expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
>    #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
>                                                            ^
>    drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded from macro 'UPDATE'
>    #define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
>                                                    ^
>    include/linux/bits.h:38:3: note: expanded from macro 'GENMASK'
>            (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
>             ^
>    include/linux/bits.h:24:3: note: expanded from macro 'GENMASK_INPUT_CHECK'
>            (BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
>             ^
>    include/linux/build_bug.h:16:53: note: expanded from macro 'BUILD_BUG_ON_ZERO'
>    #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
>                                                        ^
>    1 error generated.

Solved with https://lore.kernel.org/lkml/20190807192305.6604-1-natechancellor@gmail.com/.

Could probably use a bump.

Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817050241.GA69583%40archlinux-threadripper.

Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV4BZ7UQKGQEIT7F4UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA516F12F
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 03:33:11 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id i6sf17203757wre.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jul 2019 18:33:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563672791; cv=pass;
        d=google.com; s=arc-20160816;
        b=YN/vQF4CM0GFubKlw47h/TKW63Bwejwes+Bgnr3dPCbSQYPS1guxpTwD8eCqwMuR0G
         u7rCzobosoLSKvRA6OZYJfcv2VnskifSGkDunCVcXezBe0HVIsdgsHQeAjrcYNvWM8ou
         qEhMgxkq0dpAKq3Mu/okdiQGj1v6JIZnbfZx2M5a4ph/utcOByylMuic4oYKIT/tTMEK
         ySRrtJZrlyDHR7fb46VzPA+FKbiTEgX/ABRhkqc65NR3IiUqbRymLIUxi04/ZAwIMUNi
         x+cl0RwifCxXoWfTa35EeHpYx/YebHuUMQJr+/hZOuZ91MoDNs5/AU3RQZDqcQrvrpBf
         mC0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8+65tEF8MI3DTjWUfadXt+Zxa0Hc8eiBRSSF+OfS7XA=;
        b=YrLnSqE5Y1bcvlmYMoNAnRcmJRA8rxGFw1VpMICHbUQtLfzCvWJBnOUrauPFJJ9bJh
         ctNzdGtniC99PsIqfP3kpcQg86SNcDc9txE3rADPtA3WsrYHqoxDS7ajcsC3vpIU706t
         MUaEL6BJfKWUmlN2x5wvpW9/JUteaCbl6CRUX6c3GKUBlx8Vo+/CVPDHUnr0hjYWvnvD
         M9guI7zveKl5jb9uS2IUbhUa0fH/f5OBb+HqCl2krV8gzojl9FxEDSbLc2AON/CPmoG+
         bTxZkRVMdR+uqQ4a2Fgvh12K3j6Nn2wuLPZo6y5OPubb0gRb8RHqiE7paMcSTvtYQcQw
         4Myg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=arailSMa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8+65tEF8MI3DTjWUfadXt+Zxa0Hc8eiBRSSF+OfS7XA=;
        b=AqnKsvi/h60jojAM6d7SsMw6hUlZ3ScrKDc3CTOuOKZwkvF+Nk6k7oyBHAgM4cr1BE
         rTIxhI7fbo04PDWuQHjq+CNk5nsUw24oiCGUXpXy+9xViuVaIbZj4mKwyDnqx593f80x
         dRshVuWA+wX7Zl3aQT/qyVq91+NRFWtW0q0cXkQcPeWqIsFTPGn2JFI9RjiJe4rN0BX7
         Wo5wpmwuK/iwHSMH8DKVEQ4FHvadoCZTZT5/X+M9hGUfvHvwynPaBc6mPebQ/xcf1b2w
         ZHvEZYCQqW9412HFDvLR8rCS31i0NiVjFXPim7MBc8x9XrY69WGxbjSSw1b+2Otu2/Vu
         qAmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8+65tEF8MI3DTjWUfadXt+Zxa0Hc8eiBRSSF+OfS7XA=;
        b=QEFsJPpkTxyqbjvhSRz2HrVnCAlAU7GmvFsxRRLMoacH6rsngZvk16bISGdMTlU+x2
         Fy6rICmMENnDyWbVCXllif6bUSDxOvBa5MMBSCnqMNvepiU2b3DdEALmLDGPdVkmIz33
         ByfR2kUoxOPlz+X+byo775S20fPRaF0NO1CnpcVDbkiMPeYbA4D5zs7NkpHxlLz87Odi
         yZ8cXp5ko3IGJS1aNYG3ZclTxZUinSkf8O/rRJD6kbNVjm9rW0XgC8iAyiaWCDMdc6d/
         4cKvHiN001ao8OEatK79db2ixk0zKUEvLeWQdOVr93SNFk7f/BKpZElmqzNkQLzs3y8y
         Gbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8+65tEF8MI3DTjWUfadXt+Zxa0Hc8eiBRSSF+OfS7XA=;
        b=P9ppWoF7C5qAYRgTS/MIOrtYl5Qq/GSoTm2H457jwS6i9eiJyLVl/TkogiCgd8eBE8
         Nq/t6uVsRt1cNythdVS9WjoMSBfTFjh6H4yHZIP160IvpQ2p9BToyrpVT5OivCACEl76
         dDrDkxmKcx/o94kpb1ToCXMMCmyrTbCZrnCdY+e5moUwJgh3tF9pvFvgJYlQqTrkCySR
         YhsoJKBMKUOIAi7z9k2ZFdk7Ixs3V0a59yb1A6q6k2RvaT1CcgHPeCzGca20XoRn8/Xt
         gewkHgT2rg4urzImAK0FJ3RU2R+y/zdiApb7V8ai2s+QviFPv29fNtqSRqO70bQBEdBI
         4RnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcFYTYPPMeHe7THF3NXrwKQCOl7Y8rj5pdQgrsStdhkU2lQXSj
	T4/J0omrTM/ws6xEg0yiRbY=
X-Google-Smtp-Source: APXvYqxkER/oFMF5AB/Y7FvM2MtXiDU2oxs4pmk+zpsVOAO1lcry2MRAlPCLUn9xW+UcJMR9yOQoFQ==
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr57185533wme.43.1563672791228;
        Sat, 20 Jul 2019 18:33:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca58:: with SMTP id m24ls12887086wml.1.canary-gmail;
 Sat, 20 Jul 2019 18:33:10 -0700 (PDT)
X-Received: by 2002:a05:600c:2549:: with SMTP id e9mr54355571wma.46.1563672790782;
        Sat, 20 Jul 2019 18:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563672790; cv=none;
        d=google.com; s=arc-20160816;
        b=WaW3t7MIbK5a1LYtKft83AHx4wMlCsvX5WqLYV8l4imFvsXSa+tuNc3i8dkQvvDJYk
         MGkhe1tqNuPurps677HuBABH/s53LPfXrHXSillR3YDjpvd1BgKvyIi3OK4Rdic8oq8p
         Qid9/Tg9+LBhyrP/4Z055xbrbjK+L9GQkMx3KAXh/UOClTyE3ny9O8K78lH4DfxJ/lrd
         F/i/vV/B7qGNOBqBbxvA/lMlOMqrDL0y2iuPL6ruMa/701ITiuH2bkSs1+mgV+fpP6Xz
         MLCoB+C0dALkaNDWRcooqJ1YEU7FDBFbXcd2QqJqYrkbiyvCKnGYRfTT+4jWk/+IT7IO
         Em9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=520zmAvu02rBLXUYb4fgLKrobtpbJPyYRyuUQc4ll1s=;
        b=VcPGvQD47fWD0uQ2qOgnsjaqeRvGq+uU0EONy0ZwElAte0D2lKAtNgMuagNYeYBwrX
         VmpYrvHG9BcF32ExJJGEa6GIC+mhdplpVW3UxwyolqpqeFr8PQPb+lBh3XmLKrBSBHwP
         VYVmzY4AXewBh8g60ILiWGEe5y8Czz9RQ1eebAUTuFIE4liydTxtXgmL/3OBxymBTcER
         6srIy4a8HTFlKWhaaRaoGY2bF69wQ202tUIonexdNXYuctITiuMBLTK7HXyZUJtpGO5A
         ZDSiinsLdqW70Nnj4OHYISe5d83Cz5M02i/LK7b1fn+kVH2gkN5lPK8H40MLH3bqfwrL
         CIrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=arailSMa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p15si1378686wmb.0.2019.07.20.18.33.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Jul 2019 18:33:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id u25so21787841wmc.4
        for <clang-built-linux@googlegroups.com>; Sat, 20 Jul 2019 18:33:10 -0700 (PDT)
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr53815913wmm.108.1563672790182;
        Sat, 20 Jul 2019 18:33:10 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f70sm39618008wme.22.2019.07.20.18.33.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 20 Jul 2019 18:33:09 -0700 (PDT)
Date: Sat, 20 Jul 2019 18:33:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [luto:random/kill-it 7/7] drivers//char/random.c:1787:1:
 warning: control may reach end of non-void function
Message-ID: <20190721013307.GA26249@archlinux-threadripper>
References: <201907202246.KzzbG0Px%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907202246.KzzbG0Px%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=arailSMa;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jul 20, 2019 at 10:14:48PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Andy Lutomirski <luto@kernel.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/luto/linux.git random/kill-it
> head:   faa7ba7ec20e6c82400a64907d6d1ed4ed124e7f
> commit: faa7ba7ec20e6c82400a64907d6d1ed4ed124e7f [7/7] random: Add a debugfs interface
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project a29002e59b5258a2d00aeec51313a29af9ad1bd3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout faa7ba7ec20e6c82400a64907d6d1ed4ed124e7f
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers//char/random.c:1787:1: warning: control may reach end of non-void function [-Wreturn-type]
>    }
>    ^
>    1 warning generated.
> 
> vim +1787 drivers//char/random.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported by GCC and fixed:

https://lists.01.org/pipermail/kbuild-all/2019-July/062469.html

https://git.kernel.org/luto/c/ed4aa378fb32a62b2e282fba0a787120e03dddef

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190721013307.GA26249%40archlinux-threadripper.

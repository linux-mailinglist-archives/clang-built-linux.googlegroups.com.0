Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB36G2TUQKGQE6AM6YYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A91F6F746
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 04:46:08 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id w27sf3454486lfk.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 19:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563763567; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQ+a1a3816ObGuir6Y2G5E6XloC4eHAJjZyndRF2zqbkxX4KFjtN4CiMt4zUj7ZL1S
         gkPIrgbXOL8z3vpKTl6gDxGJWfCFZ7wBAvswGFJ1oRabPjpXP6ExLKbKUbs/Rv/WtZgZ
         5gTgsUw1B1naZ8CEKhHQ6cUR4a3A/jp38t0b6wqyVZ42UFILQFOf5Wg9YnLbir7koN7n
         C0QU2V3lZsrcA6CV2nVr5Xf9+h9YTTy5nSgvI4XXPC+PtFv9PwB3/g7JDXysKHzXz6Vq
         1gVSNfBCbkvHti7eiQMm6nrdPAVgKLgZJ8Ausb8vN7Jeu/98TwJlV97lWhUpdtIh/gkM
         h0QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=CtWZmBuHTu8lc1w887eIFKhzk5+kMLcnFIyijyvJDmg=;
        b=0iXECyNU4aL9KqAt91WyWYK/H+1/5yB7j5AynG5tdD96AkKkyol4xzID4WB+QqkXxQ
         qvH7dQyS++Bk6W+BHecb3AmjIkIsUEXW3kdrTZTvUjGFPUCzcvJhiXQGH82GSVmhslKY
         PnUawhZyuF9qjQid9tNXaXLnoBoiOxDlNdhq/DZDTR9k4T+aJzz6DHvS+2pWDLtfMG6g
         gn93egwYJvH9JUoluwh4xYVdIdJaCUlI63uGssIl5y8+lkmnJ/LJ9BpZEx+VhYxKlMhT
         GetoTCbmLUlgVVP245c+58Iy829GDxf4tu2BqNXenxWC4S0aUgprKhs/mVG5c/vW089p
         xb5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4c51Bwd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CtWZmBuHTu8lc1w887eIFKhzk5+kMLcnFIyijyvJDmg=;
        b=YijDzMk73e0502IGtveTyXsnnUMmg8MGSS0s4A1IwOQr/fxNznaKnLUC+lUuHEapT0
         ItdhuqQOEOE4eo1p7uOzwHtF/o5nTByo0o2aUYUELIohww8r3xlxAeuFOWunwCJWv/DK
         FVKfnw6Ztl3UrSv9nJvkDF6HqZZ8GYAPZBZ5bCFUYjE78H1C6tESAUIKrlFngET1ZHKr
         03djY4ZfbI7FhgrfGPLdrjMImsW4ruI9b8sNTbKoGTMNI9NIYHtfI+Gn4bohCzvPBU5N
         0BGkbwtkL+ZWJolDjWFAH8dhY5bFZdyRj0qsgVKjXI522jBmmf+JsKjI0NHHj8FDmbW8
         rzNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CtWZmBuHTu8lc1w887eIFKhzk5+kMLcnFIyijyvJDmg=;
        b=aQjeQJKOmEeav1CV3WzwPqb6QMBtUnq7GIwpLDCU6A4O/QUNuYsVwkTPLEMEOixF7A
         fZDSuiYGD7PinnLzY6F2FvUsUV2bWmH3eov7swnx7VZwIrUZijUKJomO6pbn9Q3yoltz
         VyOeFbqolaR6UNxB4vOBWQtPG3MNHrHKFb4zcIYi68E9xoY/Mgc7QDxN1c3g0X5IVeGn
         6mUadM5AsK49b/ybzPTJguoU4mNvthrHr+bg7UJJ/EVNqZzkqZsiSTrYMb1rAWAPglFE
         1EOlb3/JJjtfy+L+1hoRR7msTeOG0992csxEG5ZlrjbeB1mA02lByk8Lm0oFGtJH0E3l
         NLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CtWZmBuHTu8lc1w887eIFKhzk5+kMLcnFIyijyvJDmg=;
        b=klinR+3X7gbQTpiXpH9XR7IPaJfGeMkyser+NbbJ74nxNCGyB0Gn0YBbiC38UP9Mbl
         Pd4WHywk6XLhi4emw2wzUHlH/l0fz1gy5SQUKISqlUS6+ClEf6Ch4YRVov9bfKS7XGTT
         9p9mF1K23QDj7ONaKRhZHIpcjiI0W2BbcV9YZVbIZfAUfAdUTyc7hmXE2AmuCo2kELH5
         I4x2NrQVanvc3Z02fDaiNFlxERBbxux1OBVUTeHqkyHq51lG53/MvvnF+td51XdI4mD1
         slZN80Sx7hKmnzdfCELrnlz/3gRCt2zS6+rlnDl2Fn0NZWVMkKKL99DYmeI0kx17hsUF
         AbqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSqycVs1rISH9dg4yYzBdMWrN4KZXlMsmi228T39jif58S2aBE
	UMWTN+aZKSPAqv9qGRs3KR8=
X-Google-Smtp-Source: APXvYqzkrSzNa6cl6lQRiy+4Rd/uH75cKHHL7avmeFNQ6bUxBKfXYkFpR2wkgSLUuX3KFAwAa4wWsQ==
X-Received: by 2002:a2e:8396:: with SMTP id x22mr35793258ljg.135.1563763567636;
        Sun, 21 Jul 2019 19:46:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls4241605lje.10.gmail; Sun, 21
 Jul 2019 19:46:07 -0700 (PDT)
X-Received: by 2002:a2e:8e83:: with SMTP id z3mr34421150ljk.98.1563763567129;
        Sun, 21 Jul 2019 19:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563763567; cv=none;
        d=google.com; s=arc-20160816;
        b=FD6V+hH7kCuu8/VpTDfjXd9h9fb9yZdjKgdBiNNPWNDv7gybQsSmJGiPmCSFbxXULf
         NMsqB4JXPhg5E627oRxc55jWGSH0s3xbU54T/uH0knKKI09BYxsOhlCawQ1rhhH4UoQf
         jP/hIFmfZKrDJNjVm3eKRYsqyD4r/1GwEGK+MCfFthGKyFEaTg4XLAgLDLDO55dq2rII
         tjnT7VzQz+cGS57ilegfongfPBWEPWpWP7rnJeyH83bWHiLSCT3dl74+ZYH99x8cKi3H
         jll0sMhYrKVxP5p6igU1SDxWjqN6C+Jx5oOLSCNnpczvn1vXafWxI55UrYHp6cqYL+3m
         qGLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GY8snTACyTFrvgClVPn2d/ZFxzWcVavjFJ5tIghBHt0=;
        b=Ul472ykuVWTcWsYrPliQK7NmbSYxs3RKGguZzeLjPSrOvnvxG4S9XUsF/4BkujXExI
         uCZ5V7IpsG7M+vuVpP324O2l9Sr33s5QiBzSiDrY5g0yx0xBTc0VS8YKs95nGsIulLFA
         NDMWVTo5D3iKHEZ9fhw3NXXrsr0TFucjxmI6lNVBVPx7RY6wkUo+6BC6hekkBGsJinXR
         usQuX7cRx0daops7O7LdW/+5owGUxYUJyhHnE/TyksV5sunHkOY62npLzmDC2/WhdL+x
         78fVFgvdQYDdiVujBEXbqVoN8aHHEjMIosaCiip1HeQUi+jxnAlpJYdAGMhUdXMJweHk
         0rAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4c51Bwd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id s14si2202476ljg.4.2019.07.21.19.46.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jul 2019 19:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Received: by mail-wm1-x335.google.com with SMTP id a15so33577723wmj.5
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jul 2019 19:46:07 -0700 (PDT)
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr63261183wml.175.1563763566353;
        Sun, 21 Jul 2019 19:46:06 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p3sm32806703wmg.15.2019.07.21.19.46.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 21 Jul 2019 19:46:05 -0700 (PDT)
Date: Sun, 21 Jul 2019 19:46:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [brauner:pidfd_no_waitid 3/4]
 arch/arm64/include/asm/unistd32.h:883:11: error: array designator index
 (439) exceeds array bounds (439)
Message-ID: <20190722024604.GA55262@archlinux-threadripper>
References: <201907220735.mRmaoBlM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907220735.mRmaoBlM%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N4c51Bwd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jul 22, 2019 at 07:30:40AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Christian Brauner <christian@brauner.io>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/brauner/linux.git pidfd_no_waitid
> head:   a4bc5d777bc64625603ba8ddd03fcaa0a40f65ca
> commit: 783cce593d3644d6c30e11ca0e14e160f6e0b0a9 [3/4] arch: wire-up pidfd_wait()
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project ae4c30a4bed9813203280d876a552cc7ab5ffbeb)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 783cce593d3644d6c30e11ca0e14e160f6e0b0a9
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from arch/arm64/kernel/sys32.c:134:
> >> arch/arm64/include/asm/unistd32.h:883:11: error: array designator index (439) exceeds array bounds (439)
>    __SYSCALL(__NR_clone3, sys_clone3)
>              ^~~~~~~~~~~
>    arch/arm64/include/asm/unistd32.h:882:21: note: expanded from macro '__NR_clone3'
>    #define __NR_clone3 439
>                        ^~~
>    arch/arm64/kernel/sys32.c:130:29: note: expanded from macro '__SYSCALL'
>    #define __SYSCALL(nr, sym)      [nr] = __arm64_##sym,
>                                     ^~
>    1 error generated.

Already reported with GCC:
https://lists.01.org/pipermail/kbuild-all/2019-July/062490.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722024604.GA55262%40archlinux-threadripper.

Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAGX4H3AKGQEWJUB7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2400C1EDBA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 05:33:21 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id j26sf1667084uan.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 20:33:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591241600; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYWYn1A6hgeOmwpfrrkO2BDtMtQHmGpTx7kKImQXwwx74oSyyE0lYbj51U1o2V8hi+
         oBmi8G9FI8+SW14z58DZQH1HC0bwXx1rch8uqEQFB7UejKGB2WPne/mUhzbwkAFc6f7i
         7izfG1qSA+8/dV9abtO1KBa+EGsnczBXRC1ToS9tFBZifpYtVNBC/RYuLoHnq0L/LX7H
         tfLqLj8c3yuGQWI6gG/WDX7zOeqpwfllPnoWKVareBjM0kuWCueeZ69RW1PmClqbNCRq
         BvmUk9eEViDeHEZCAaF3qIya0cvkHQTu8mQa1AvsaKHcU81OpDfnM422PP1rpRNZEPd4
         uxiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=+lJggKTCxpIiYhfLjBQNgRagC+8aquGPAZG0BWItwLg=;
        b=mVXKm8zndl1tQWvHcj8kuTs53kaUwFfkUcMGA/u4+PxhBxAoEdKfwgwKLiBbVBDGuy
         x2RzokQWpY/zImxw2avchYi93VBDDNRFHsT3AMzTp3OM12hqWF4MIAqI9vdsytGkNBww
         R53km0/QJ6cdYSqhAjpKvPnLe1KxcO8nOWhYOto9Mu/Ijjzxu4NTaKt3QCXTxaNi4xKG
         aJimQRGWTMmWcs2aDaIx8xKOR6nAfx3sTkMv4uLwumW99DNWMSQKLHjaSjzNULaMno4R
         IwIVkDWaVL1EimBVOgkppo1e+1dSZvbt2eTXPkdnJ82Vnqu6VSbw3zw1fyBfasbwHnzu
         kvDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=An50kzaF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+lJggKTCxpIiYhfLjBQNgRagC+8aquGPAZG0BWItwLg=;
        b=qjJtR7hMT2QLVPfn9uhD4YRNneHxtGU659WobvRubnXV1zP9hOffVEqIGqgVgMMuQd
         wbqfCmwddxuKMCGLBgEsB3UHvYz8CzTBKNkqR7fumYH7IVoMms7Ncr8fRSFsKEAV44Mm
         U3F/71HqmGgODUeShOUeB8Hg1gYSkEn4wKVc/l2PjfECWJ65t3MGSGOFDuPHKmDOFrt2
         ZuybywWB0gzR/8kO1tHP6AO2fw/Q5N9/ZyyzGiCOdbrOSvWUy/4YtJs7kIb3ZuTx0YwL
         /H441Y1uN4ZSNiw/43tbKosYfNuw5Ejm83H92R0MN8+0lSKAKi8OLibdRh5TYWj7zfYP
         y9EA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+lJggKTCxpIiYhfLjBQNgRagC+8aquGPAZG0BWItwLg=;
        b=AQ+YnxTD74/sT7M00Pyzrf/Wjk1+mdMBmoSCX+QWu8RuNeMcyXJxoJkO6iMbkq6hx5
         Mac1RPBDo0XQQnyUoGxb/J9y53RMK8sMmj8jfeJj11rPopqbu4n/bUeMMl4PHubNtm5A
         9r1BXDXyc6aVJaJLKVUAPRQMkNaOfdJL51aGhIVMRPp+Ot06eI+mhF1RMzGUVxqjQTA+
         iX9ZxSno0Bjn+CA7gpkBSmUGbSR0ZGzP7rOoMgwVmKnLeU8LUDppOZd0gn9klwul6CX7
         8+zu3DJGdIulSzOFsBp7Tw4CkgF0OVSeQL50dZu5DGbZzx43qL6EYaGZHQOrP74a7jWz
         0Uhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+lJggKTCxpIiYhfLjBQNgRagC+8aquGPAZG0BWItwLg=;
        b=UmCa1LUD3DdhAPUbZztmpFBlgppWa4yU9GTy163DJsulIQg5tsrcyXdE4yDrLlUzJz
         Y04zeowYGHQV/gRquUHyQjWEUpzPrQdvhrH3dtDV9MJXleWpIkNkhTL06OdrF77VJr/6
         ll2P7hNK3rV2H3bce0U6PiegkTY9AY7JTplMPtyHhnDuVieog/xmHF1aByPwX9td/Gx9
         2f/Qg20Hu6+vcxx869rXZgy12ljZ1TbZksr2RMVjd8JCtzmDuddEbgyjxpyZDFjXf3rA
         RN50GeOxNw2cPswDrtWMLxlA8ZVJkjDnpuaTIsnWYFTOtMFGQlbbZZQgY9Y8gzJp4fn3
         Wziw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CBAOFIuj8l+pZAtkVuSCAB1YAMfHH1kQ8qsHZqT6fbC/+uLaK
	X3IuBLAhPIfuRiQX4npjTyk=
X-Google-Smtp-Source: ABdhPJx2/RhTvEGDxFZHTXAHxwhKsDn7OBa49KnRyA4YuHjcAL3y7v7GWPB84WqLI2+0awggtnwxFg==
X-Received: by 2002:a67:ac45:: with SMTP id n5mr1939337vsh.108.1591241600128;
        Wed, 03 Jun 2020 20:33:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:26d5:: with SMTP id m204ls174295vkm.7.gmail; Wed, 03 Jun
 2020 20:33:19 -0700 (PDT)
X-Received: by 2002:a1f:1209:: with SMTP id 9mr2061337vks.102.1591241599801;
        Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591241599; cv=none;
        d=google.com; s=arc-20160816;
        b=cgU/g8BywyuXr4OPGuaVZvgdWmwOs+Ydfvg0M6ZvIp7Wuom9/TVzPGmI/JvMdueQmR
         nUuoB8LBApXz46RoPkM7OrH6NjpMu0sj94ZzqulS6rHRzAp7EVJmrm6AZRPCMFboTGCp
         bhmAUF85uDRopJl4fJ0Nag0hA/CtVVm5qP+MXdjKoKiKqftA4AESUtkFpwkEjxL8mEFQ
         3YSPQwhYrIpYE0NZ1yCPyffcWFTudUtU1kbt1mr5s4OuMTXeuDAopz0L3AUTWiRetLOC
         FX0oMtmurZVk1ZZWP69V1la1nib+1o59Bp+SoeFZwDOd1ztslEoqwyjnVFVy7cnaS1sh
         8utg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8Faii11PvSo51bdsAemmq3+A0d7oNRL4/GLZ67cBSMg=;
        b=Oqwh+Pr9D84e+fwkcDl+DMzSdFkPjV8p8yGMKxpqpJZrpvHZCD/eXCrXVLs5qfjZ3O
         KK1Oou4zSwLvuTKXwhcfFiTwkOIZBoSuMxZvG3JL39ysqmyv/7Kn9/+fz7LbLsj0Efcv
         MfBcDbCuNgMUGYA5wjNVZAfUbiZquHBoYj0DdeDsZC30PoIefCRhlOqmfnQQrYMDFGnz
         xcFn1QT036OnM9bBEhHy1tOQYsiknUUeaNSZMqSln5Udfdmod1yE7X93lSk1ajfS4tl/
         91uF7w7PGvFFfBcqPOsl70YNJoM538k0bq9ZksbpjbiOjj2WOjfyC5DyiTcstWFD0f+6
         2/dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=An50kzaF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t9si231645vkb.1.2020.06.03.20.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id m67so3856343oif.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
X-Received: by 2002:aca:b707:: with SMTP id h7mr1938490oif.174.1591241599191;
        Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id n60sm327816otn.75.2020.06.03.20.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 20:33:17 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:33:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=An50kzaF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
> 
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> 
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
> 
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

<snip>

> diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> index a0f6813f4560..a71fa7204882 100644
> --- a/arch/powerpc/kvm/book3s_pr.c
> +++ b/arch/powerpc/kvm/book3s_pr.c
> @@ -1829,7 +1829,7 @@ static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
>  {
>  	int ret;
>  #ifdef CONFIG_ALTIVEC
> -	unsigned long uninitialized_var(vrsave);
> +	unsigned long vrsave;
>  #endif

This variable is actually unused:

../arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
        unsigned long vrsave;
                      ^
1 warning generated.

It has been unused since commit 99dae3bad28d ("KVM: PPC: Load/save
FP/VMX/VSX state directly to/from vcpu struct").

$ git grep vrsave 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d arch/powerpc/kvm/book3s_pr.c
99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d:arch/powerpc/kvm/book3s_pr.c:  unsigned long uninitialized_var(vrsave);

I would nuke the whole '#ifdef' block.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604033315.GA1131596%40ubuntu-n2-xlarge-x86.

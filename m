Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV7T2PWAKGQEIBZTRKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DA61FC9252
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 21:26:15 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id z1sf7888002wrw.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 12:26:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570044375; cv=pass;
        d=google.com; s=arc-20160816;
        b=VQtkZUvzlUxTihpFOAjYEkSRkVQWk/GegL/4T8ij8Ft5m1nb1CyGOv+oyHBb40DRCy
         3gRi3IbgwxlMNiOg/FwykQs/bdcoUlFY/WvtJ2HhXT1TuEdVYAopCoi0vC2/wFUAEqUM
         XF7grxBegE7VLRA+1q0zNFOJShNGxQTF0W4d2/D1+Bs8aUj5yB7Iup4zi/CsrX3Z8mQg
         a//dhny6MXzNv93Ch4Ushot/H6qHhk76nF9XtmrxzyL3FDRk+eY8zV/0SN5VkeCka0QQ
         B9dsQSbXERHVzj3JIjxybF2RwwgBqFPOyuvgYzVi9GmyX+KaTrhEJUQB9IT81VKKYWw1
         Gg3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=pnJUOqHSOCHejn/p41LuANTZhmL9sOFAWzvqP2XhE6s=;
        b=nYp3j+Kpn/Dstqyuz3tH+nEkkEccVWv4RgAWJ9ES9x9Xg2LYPAGf9hiWKF76UmUiJS
         1pjRtxHTXtnkYDCV21QkHf9IfxZWHTUNg7UUn2mPnSjeCjzrk5AchaNI94AFrNdM/jB8
         tVLG9+69AqesDCczWVMpOqfOC1hyEqWn8NiXjoz0RWmWzAQfGoaEsw6FWj6vcFc7U0jR
         xKYG88XU4YLlauyscYXT1QCiJP01vTqy35uxJJYxId2NEVxxUfRMufAVOvuhguwyj8Ua
         m0/QvrQs5vr9KpTqWN7shOCCgwEJVqSeKQFUcfHF7iAfBFATH7ofm/bWEyyPWe5+iEiD
         HroQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QRehO0SL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pnJUOqHSOCHejn/p41LuANTZhmL9sOFAWzvqP2XhE6s=;
        b=Rczo9/39wwYZIQoDQmMvAuCGk2lm/r7i0uR44cA37BdVr4LpyNKCnXLNNKCW9CpRDg
         ujiPKEpv6OdWGRmrKMPa4+SzyDZ8qYZiqDifyJXMbWC9k062izMtxuBRxejzWZpQR8z9
         fjiFfuiyrywpaGZu9aVRiMG0QDzF2OR/3P6D5g9QngZSpz9vvn5mpVHR8xKJRYVxVKKY
         naFCL1+uQv8fdfBqZF/WZ5ukXAeR1ckYh5cZA4UJ2j+p8e9XgTwg7XZAqvFzzGlBGPmT
         bSR08K0rXaLXkvWDHMzdj0VkQPDIxx3hTZSh2IAoFzX+wiYqceDkB0f6bMeedRpzK2I3
         JowA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pnJUOqHSOCHejn/p41LuANTZhmL9sOFAWzvqP2XhE6s=;
        b=dKk/ZwP3wM3rRVmvAstab6mBsKUTJy5taJ25EFu3D7HTK1B0DhXhXfEzGBQGYwYKR8
         tjW3BadCwb3NrJHbjkbixzpT7r3zf4dfMEiMI2JIVjAxEfgNjKSEM9xjUuV7BmMdWsnN
         ISUSiN6zFVwWz3OtrvzY1ZHVOseGb0aSHZHO0ioZbQwhstm5DbmjsW/3fNkpM8w3T+ip
         KoLR0GL+7XsXur3v/coDCKsaz7I73mqKmUuLggmS9Mp6ssFHp4XdIkStNXRkcw6Nu8ZW
         O3uxcgAvwwgWLTyH6K8oUq4DXXw5JUIS3jnD23qEbv6Jg6ASilmOHE5KmE6shnFI0Yii
         iVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pnJUOqHSOCHejn/p41LuANTZhmL9sOFAWzvqP2XhE6s=;
        b=idUhffcz/Y9sDZglcXNp0m3GwqVBV0Jnj8bSrqa5D1RS0bS8ZtS5iSQ+DJVOApXQNB
         YGNnyNc0tXzCzz7R3TjJrTnycqYW1sYatMgeBBy6Q4FT8UUMfpJycRj4xerEPMx6b2a8
         7WYzebQ0pGSjhugqcNFIhVcrmV30cvnUM1zosOIkz/Vxg9xHOBYspjPUk+WhZSKstvp8
         uhwVvyOMMYgx2FGHbi3Y25icniJmSp+aGtORIlADAikpvaJeIQU3ORL4VVVnGo6/Mrol
         SPT/t/EwgJhGWzKoP2olSdyOLJVpPbBl+gmRLzRSXM436AlUgUonb1hgOBEq7TS5OlPg
         ug7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZ4hlJTniDjxt2WibBpV/lqzCQEFe2WfcLYMBHdbFeKt3hPb+J
	+cRF2c+sMsRvF262T+UhaWY=
X-Google-Smtp-Source: APXvYqxg7IcGcjPBE9zu642t598mu2iRXkP/5nDPa0BDLG/dZrLz78dC1Pq/sN6bsDtlNDpmAXkHVQ==
X-Received: by 2002:a1c:5f0b:: with SMTP id t11mr4184065wmb.76.1570044375572;
        Wed, 02 Oct 2019 12:26:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e90e:: with SMTP id f14ls900005wrm.7.gmail; Wed, 02 Oct
 2019 12:26:15 -0700 (PDT)
X-Received: by 2002:a05:6000:82:: with SMTP id m2mr4115148wrx.241.1570044375057;
        Wed, 02 Oct 2019 12:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570044375; cv=none;
        d=google.com; s=arc-20160816;
        b=t1gmlzVZeinxHiyxNGlGJBFsgB+8NdWTFPspK2FPlskYwzKO3IkeRCe+DycUJjO1/S
         l/i4tNrUMUkDIiXW5m3UGiqrTnDvsyt2MBkUHEu1Mj9ymbblf0EG5zwDQHkyyuh91sdD
         +ORWNSsv4Ig63sPNjEQSbFN3lOVAd04ucBO+jQkIsKpngnT+ac+p4gYvQ7T23E8F7f4h
         HuhEmnJFsn/GkbmgMhEwIBV/x9m8H0h3inboUYhpxsZJ3G4hWUK7PRQf4B9vXiXC1rBF
         FT1ijSiS9+AisOzi6hxo7OnzJKGR1Ja80vuldabVFsQcrVFfFuu7RFB+hH27/rJY591h
         pEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Dr1yUgKAt8dznjTt7Pfk698kOeRzcKFfOyMmmq2Kpq8=;
        b=hT0GYuGdDxyZ5B3orrCU970zAXBy6isRbXaq1BfosgenF8h2hR7AWCKnzv3sDq2Ybj
         1vXBq0OORAOE0uivN+DhcCDFo0HxY+4BtolH7Wiu4B5e+ZmMW5VpBZsnlXMwUrSejMz/
         A0IGp/BBiEHPjgWJHeTJ7oiQBjtWFi5bhYcJmq4ARINcWMlrZ3JMF/XpkzT1VrGH5yru
         G9GjfgpPQVsaJS12BZOXOyCX6jiSFol+duLV333lJTYPSBMO7uXrrx7z4WdiogV6xHK4
         J6mEJKV58dc0b7pvm6UuczQNXOQA5wEIlD1tLSQA+w12KOqy70V2We+BCp6KxXRPGZzK
         uBrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QRehO0SL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r1si20677wrn.2.2019.10.02.12.26.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 12:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f22so121148wmc.2
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 12:26:15 -0700 (PDT)
X-Received: by 2002:a1c:f004:: with SMTP id a4mr4079085wmb.42.1570044374494;
        Wed, 02 Oct 2019 12:26:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q22sm140249wmj.31.2019.10.02.12.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 12:26:13 -0700 (PDT)
Date: Wed, 2 Oct 2019 12:26:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [bigeasy-staging:preemption 2/36]
 arch/arm64/kernel/traps.c:146:7: warning: 'CONFIG_PREEMPT_RT' is not
 defined, evaluates to 0
Message-ID: <20191002192612.GA1103206@archlinux-threadripper>
References: <201910030352.dmP5iotj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910030352.dmP5iotj%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QRehO0SL;       spf=pass
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

On Thu, Oct 03, 2019 at 03:17:56AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Thomas Gleixner <tglx@linutronix.de>
> CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/bigeasy/staging.git preemption
> head:   94ad72514bd0c0c9c31dee81fb6339daf06e508f
> commit: e650d59c300fd88df0edb4b52120c75c28e205db [2/36] arm64: Use CONFIG_PREEMPTION
> config: arm64-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project a77c3ef03c821d448296ba2abb658288800494ac)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e650d59c300fd88df0edb4b52120c75c28e205db
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/arm64/kernel/traps.c:146:7: warning: 'CONFIG_PREEMPT_RT' is not defined, evaluates to 0 [-Wundef]
>    #elif CONFIG_PREEMPT_RT
>          ^
>    1 warning generated.
> 
> vim +/CONFIG_PREEMPT_RT +146 arch/arm64/kernel/traps.c
> 
>    143	
>    144	#ifdef CONFIG_PREEMPT
>    145	#define S_PREEMPT " PREEMPT"
>  > 146	#elif CONFIG_PREEMPT_RT
>    147	#define S_PREEMPT " PREEMPT_RT"
>    148	#else
>    149	#define S_PREEMPT ""
>    150	#endif
>    151	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Fixed:

https://git.kernel.org/bigeasy/staging/c/fffe8d9dadf69cb4974a173d05314645c8cff128

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002192612.GA1103206%40archlinux-threadripper.

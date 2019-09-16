Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRVI77VQKGQEZWE2ONI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C3DB404A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:28:23 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id m24sf186044lfh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658503; cv=pass;
        d=google.com; s=arc-20160816;
        b=yPFVganrv3n/mdIqibj+1BbP7/U5xFyzInTL+Ixw66GFgxpFWmA97MtDDypWI6WdSK
         OhJljSrvDtzY2/S7TPImlimJn1GtqK8UKGc14yQW9wugLDRzxPJbvMrOzl2GcYdw0enb
         hnULVQGVGeuxNsDvMPmeKXJKFLAzvf5LZHzjOZS+ww4d8Ww971zXqzwpFSu40NNSCdtm
         dh9hTA2o4GJrhWSfR3TKlekJtNsbuPJwBSobmRKAwc7fpEcPNHiQ0kbdQM2jZp4948ro
         X0zniZXibjakEEWrNEmZ/KjwhzlzqqdmyESq6oRYq9Em0p+I0W2YyxihTNHrQ94t1m5m
         4a8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=S0Riwz41K//9sy/OBIvM5g51mogPuIFdyI/CdGasI1s=;
        b=QGJCOjC4Frw9wZFZNSMcYkoGoppojbMLZOjJvBdS2j8bCnXuTNkmIxsUuW+pLU09bu
         OB1JNejMo4NgGak2mYUTrEFWr2N0+UusyxyVGMzb0joElYUIVYQzGwyuJhAhJ++oNcj7
         qerKXPWJZBbJ/TInYUymudDLemh2swyWy7ZHPSMrY0WnqOS5ULh5o0jQYUHHtXjTT28m
         NMabrcMdsuTbSIhh6m7KTgtdeOnRjhm7kYPf0Yt3tAtx5tTKLZdB/yIOYjAc/E4oMPLS
         VU7ho/HESthtOfnqIOsoUIAkf4gSW9Nu8Wd8roKhyOUjyLtaDHnp3a2KRg+EjLsmmaE8
         MFVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pMutUpY2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0Riwz41K//9sy/OBIvM5g51mogPuIFdyI/CdGasI1s=;
        b=H3h5xdOj1E0wh7Tlrt2YluSXDp5wpTNJuITpJY/35czFSnhf7hk0BpF6IKLWi3REw8
         7aEVzsbGYc+eha/jeKVRD0Bhr3HOjBjUHKmYm45AUpmbRgOLgoz7gSvu3cKClJfDBM0g
         YzCqIqPGalZAvZof1KjQyN8tUjeURBSWWcBktbCjO+KiaDhh7+g0+DzkQv4lqB/rwP+5
         RzTPVSWG8Ibtp+igbTa1OqZl8C+K/CG5AOtkjlRhFr9jzwzBlOf93BoKTSMY6r1iii8O
         pQf63n0aeZuWImbG0bIniMR3azbRQ3lF/2TraoJoGxd8QAcYD63BPKTg0FbtVb2wn+Qn
         +QIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0Riwz41K//9sy/OBIvM5g51mogPuIFdyI/CdGasI1s=;
        b=Ff5LvcV0U6DVHF+xikw2fvwvw4FecSuU2oNrN8TFCmGqDR0Q7qk7F5HLfysj4HZprr
         Mt8i235OkiOlo42pHoy+T5sYnjWYma+r8iBY830Lt6vHdgIkYpRSYbAscMkqzwBg20HE
         QbHUqklrCWxFaBwcLQd+IPf6M/e/bj76RFKtSThek+r0xMKjEp1egVn/FAnvgTjHOA7S
         pchUHZ9ajyfOAESuPF0bbWpQUFP+3VzcvVXq1LdfZ/PTPlyJHoT7mB84hU9wd3ZMcsRY
         ZJJekayU434LqCplG71RlntwCVl/HdcIkR4NlsRst4HMgDy2cI4swcbKMRan7v/4YreD
         wsVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S0Riwz41K//9sy/OBIvM5g51mogPuIFdyI/CdGasI1s=;
        b=tBdBe5XYOrdfJtyofOOcinv6XNDZeBrY4UiACD1XEcbK54GU2BL0dUxrJL7WL5/mtt
         YCS6UYCHU5TYhuIOQeNy7POxmH89fMfwdeKmSTIuVvHUcGJqWzcl1MM54o/3rsLl4vOP
         lPfKFMx57bZ5lrwBLswywp02KgMFF31iNb1ZJHQE/JU4/nGNBb1LLcjER/WaBm930a4Y
         dAD5j9qEHM6HBC5P4gn36tXABGf8tBgRqfc7g2YU48PjNwuN6T2O8ZVffvmYPwGIKR9Y
         nRYii6mnoGvEmUonKepefoCZjP3/saQbVodYQ4/ajqd+V+n2t7XOAIVSi8RR6jnHtC2m
         KdIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUm1dMB+wNDDMXXxcp8lY4TXZ6O4xZWaeqrWk3yIUcRB/nQe2mO
	CzoMKwlNCNwhmI5w7a4H8OY=
X-Google-Smtp-Source: APXvYqxO/oAuJ32GPiRUz1p7lEP4ZQC9Kv79qWcuAYbZMoVc5FkHxllynwx3/UY8UhyF64h9UVed1g==
X-Received: by 2002:a19:2d19:: with SMTP id k25mr470989lfj.76.1568658503213;
        Mon, 16 Sep 2019 11:28:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3015:: with SMTP id w21ls62067ljw.16.gmail; Mon, 16 Sep
 2019 11:28:22 -0700 (PDT)
X-Received: by 2002:a2e:1614:: with SMTP id w20mr511715ljd.159.1568658502460;
        Mon, 16 Sep 2019 11:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658502; cv=none;
        d=google.com; s=arc-20160816;
        b=v5LTYSzfRKW25YR8wGbu0G6DgXzhYgN6cwUvZIVGYfcTmZBTClOOKOQNZ35lwUPXsh
         xylSyOLQ1eL4cDE5JY4mXGeytvfTvdbMFoIipQMaxfc2zIBjdJsG7n72guqvhJhe0yC0
         lOjdQWsLpgpzZcltlY6J26egRYBDigtgXs63b5enLVGwCiAz0zVtCgimjYPXZiALBwcC
         LdTwj/QEbHGr5IHpn5ykLXa+8/4BdHwT0qTOlDAPj53nB3raUfNq4qjBUEo2tIbgyd9a
         PvrzLr73BrJEeUrVLFVC0DU8edbqW17ActkGvJdVEVrufFLs1NFgmLPPrNWqdNe32ym8
         dhig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A7hNM8uyIpagmT0R4gJOA39ctmX9eKuoA4G1qK+uJFc=;
        b=I0QpV7FCEVNd3pTdLbhkEjWBumthcIPjYT25oDSa4zK/uzjICpKGplOkRDWRf3aU48
         sZbsdKsBbcQ37cQCGZKRDnI92Kh/E1b9X0DfNaCWOaKDgxhnV9TvGsJYYSnGxM8cLJKI
         lb6/K0BlQHo1WQjnSIypQ93rIwaXbmIwHbWWKT+fPKM0CJzrxXeiz3VTpZ74PLETi6vu
         6QuKy5QorYqRdswY6snJ6bsqlEuL8W5p4SHFat3Y0OgJZ6DMFnreTwuWq42DFCdmh5kE
         X+nfPeKaPYRKrjHfnptwC2r8B8DMOenn/oD26NLdtO0W1cKHJsp1Ka3q39g6NExhwdZG
         szFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pMutUpY2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c8si27089lfm.4.2019.09.16.11.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id q14so449048wrm.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:28:22 -0700 (PDT)
X-Received: by 2002:a5d:628f:: with SMTP id k15mr847963wru.124.1568658501709;
        Mon, 16 Sep 2019 11:28:21 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b184sm206877wmg.47.2019.09.16.11.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 11:28:21 -0700 (PDT)
Date: Mon, 16 Sep 2019 11:28:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] nvme: add API for sending admin commands by bdev
Message-ID: <20190916182819.GA108668@archlinux-threadripper>
References: <201909161624.ltY6M8NY%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909161624.ltY6M8NY%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pMutUpY2;       spf=pass
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

On Mon, Sep 16, 2019 at 04:38:45PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190913111610.9958-2-robert.baldyga@intel.com>
> References: <20190913111610.9958-2-robert.baldyga@intel.com>
> TO: Robert Baldyga <robert.baldyga@intel.com>
> CC: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me, linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
> CC: michal.rakowski@intel.com, Robert Baldyga <robert.baldyga@intel.com>
> 
> Hi Robert,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3 next-20190915]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Robert-Baldyga/nvme-Add-kernel-API-for-admin-command/20190916-134358
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
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/nvme/host/lightnvm.c:9:
>    In file included from drivers/nvme/host/nvme.h:9:
> >> include/linux/nvme.h:1395:42: warning: declaration of 'struct block_device' will not be visible outside of this function [-Wvisibility]
>    int nvme_submit_admin_cmd_by_bdev(struct block_device *bdev,
>                                             ^
>    1 warning generated.
> 
> vim +1395 include/linux/nvme.h
> 
>   1394	
> > 1395	int nvme_submit_admin_cmd_by_bdev(struct block_device *bdev,
>   1396			struct nvme_command *c, void *buffer, unsigned int bufflen);
>   1397	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909161624.ltY6M8NY%25lkp%40intel.com.

Already reported with GCC:

https://lore.kernel.org/lkml/201909161438.IPyN145h%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916182819.GA108668%40archlinux-threadripper.

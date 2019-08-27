Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGPTSXVQKGQEIKP747Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB159F28D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 20:42:34 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id j10sf11872206wrb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 11:42:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566931354; cv=pass;
        d=google.com; s=arc-20160816;
        b=aYRN053v4G64QUzoCUmQkOkjnfeIKW/wVQqgpBGiNWKOjUTp/NTId9irHUoeRwOrht
         hTjcWEhGWIcd11RohiKfVq0uVySrlLeeMO+aD2TVno6bnM2BnOLFf5RAB94j4EDNpMGl
         VYFi9HEtsgOgKINMxrWwQObHBaWGuVyK+nn7cFcwV4bJBWP09hkMw4voLor90jKsFksv
         WWrkznfFZqVarxEs2eo0W7JNZbnjv/r3kXB4sO04WWrQJNyQpEdAcFmT5+mwVB+pN2ka
         fk0FeMKcSa9NaxCbxqiD97Hgwp+7ZRwMZ2U0JzTouMhWGX2KCki8YtuMZgMSlxSclsSL
         wrlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=fHbchG//Jk3W6lQDxcBYLsFcNBvIdVlPHkoOzFmiPnQ=;
        b=mG0m6gtROpjns1y0RiQAJKb54WyuL0qBRDwliofSeuMSbLeuxb49fBqzoQAhhhDF+u
         cRhOKN7El2BTezZWH2MeQzJKyWc5g+Om/JOfquIYFj3traepdlsy/ptPYnMtV4rMLvlW
         SXFDCRxEMRAWKDs4hjalKlTdCB+XRxj29gu/R1f6ubbwMpzMhYSGKHyZHumQpxANP0EA
         O8pyrX3NftWBqn8pi5LzuyrWXFGpTZIXGJx4f9e8mBmX5wgmmyxMPiH3SihmMUrl2T6x
         hW4DetFgZnefH9ULyjGEYPAz9HqUGeukzX2VDcuR1REBR5SB7vwptbMLb1PmsujXmlQA
         0U4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M6bYQugm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHbchG//Jk3W6lQDxcBYLsFcNBvIdVlPHkoOzFmiPnQ=;
        b=AMpRbGcQm2BfjIyC1pkuyJUNn2lGw1bQKe30Luf+KN8Ovt5P4GuXi98M7RFqD8RV+8
         HJo77rlskwEwB9Y/QoHgmdCI9n5nH4hfAgRnPvQniuHwRemG3GmxVGEI3NemPtGw84eS
         bT/db1+VxdBApFn0v/eu14yO0/dMsDdQD6sqzF/PtZCtqcLZ7LviYZnhpg3+NfqN+9HV
         uR67eBM6DiIWgS9e0r+kJ4L42AoPpM6y7XCL+/kYV6Uy92xyQFBa9bm851FJBI6H9Jbp
         Wsmf7Y/thT+y9ucV5NFKXZTRhdwojlAkp0tANLU4TE5ofN7or5uDt8JpmMn45iq9sM8I
         0eeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHbchG//Jk3W6lQDxcBYLsFcNBvIdVlPHkoOzFmiPnQ=;
        b=Xi0mlKxPR+ethtMYeXoWDG/cCfvgLAFNBzuMueHJrlPmgYeLPUXwNKqrE2+UK0fnHU
         Qbj/N6g4Oatwuc+uvfre2BA5UUTfhgvRSCpbFDJuJ3RzhN8zyps8TJRKDASHUKGVLq1r
         /WmGBAWv+PAqWN10od8DhrI9pqMsYs6FRkqnKzeOclCEjff+TnA1S/jvqVcalsL/mXMl
         r++EctrlkvgmkSSNdcySQk5E0T/ONfdpbQxf+DQP7ik4ZAkieOCiDPaEnA+/lwIIt1HC
         Bad9YZAkQDKBzX6jIUx4hC1ZU6xZMtOTV7gV3OjzWrnH0vUB6taSzQzE2S6YOQUTZAxn
         9fsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fHbchG//Jk3W6lQDxcBYLsFcNBvIdVlPHkoOzFmiPnQ=;
        b=d+i/Av3iDprJOiwrMRdfd4L0a/p2E535Sc1SPbaD14FHDPe0dlr6xCO3GxlWFfXNm+
         E8x/evY/ORjPOp7bTKnNbqvyrIHP6PKey/Wc6StOFymSIqXoz81KsT2YrYbjsZJ+i154
         RDeFLRb9tgUDx1Xj0ouGyvFIbVTXYP9Sjofxg9nv77cOZWRREEU9A1U9mpg9WDUsJwuZ
         MLjOXQU6pFuUu09FvXIjQ4Y6zgkQEjQ7jumgKPKKuLFNZ7/RB4VZInM/gD8i+NHg8d+z
         j+tNTp0wOscAYg76YiSBaIBtlI4r72syklPs27QxnJGycGmlM33Er8leQmn6lpo7WLMI
         aPvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWThVDF538tOkjBcpS5RmAnpQi1UmBvMcdcwjcHB6Gzo3w6Q10K
	E2qjQqFN4z7em5I0mLuA9HM=
X-Google-Smtp-Source: APXvYqwf8bMlwYfXY/wTeKRCfWCkM45f8vAOUELfMzFeP2qxmomjLcc3WKD2prNDB9YMX5SzafHIZQ==
X-Received: by 2002:a1c:750f:: with SMTP id o15mr395623wmc.131.1566931353877;
        Tue, 27 Aug 2019 11:42:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4404:: with SMTP id r4ls66632wma.5.gmail; Tue, 27 Aug
 2019 11:42:33 -0700 (PDT)
X-Received: by 2002:a1c:6782:: with SMTP id b124mr405696wmc.143.1566931353399;
        Tue, 27 Aug 2019 11:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566931353; cv=none;
        d=google.com; s=arc-20160816;
        b=rTrtgf4cpVlQJ9cFyT9f5sAI6c5+RsB1FJsqNI3EReC2evIoTP96Y11mxZfobDI8Ar
         w9u7/xsOglOy9JM/lwScT4o+IYCsCgJuvdYYqwL9AGxpcNOn4r9rr8DZRCfrA42x0SeI
         FOfA0BUx3sRmGLAzbwC3QRav36VWwE1raYZfSxXn7mAiHoKfuaF49FlCOuB/xqgLG7Sk
         xCP9WdOOKpbhZcgQJKg2Z+sNdCllDjMoYBUHgIVrIXr/C8UV1HdTek6+So/QEgEivTpv
         xtQmxcyPtptZQKoTPY9ypc/AoOB+c2SjjDuqEKrXDnaPGY9Tf4/XOWJ5AJwu03Ob6bkl
         +iDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=w0idAjhrWRBUq3h6lJct6ZYhQX8UhLdeSMVgKjkW8Sk=;
        b=m1vP+cQtWl2rJZSCR6071qu8sK4pkmEnkr2NuRUWOVi1NbbmCLKxnW9I3g1K2x3zhx
         AvbKc8yZ9+m/ehj7M+N3E/QsVjyrjeXaB1boBRwhkxgKhlgo+tnp5xgZNlPCJZgjIWHu
         936GdhKNhUJT8a0VkExnWxXXTTC0hXYLv/zP+iEauXXsmUyTg/+E0QZ7NRKnU7N8DNOQ
         9gbNQ8bFuhWcHMvqSxIvQxWcLVbGCtmv7tUnvujEL2dh1w69F5blw6XPWtZ/rGpXhCDh
         5Dn7NLpGZ0yFZ+RRN6tAdSlz4ehuhl+LT2HqjH8Xmz6c9AM2YR/j74/1bIy6viJxYznx
         LfMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M6bYQugm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e23si7477wmh.0.2019.08.27.11.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 11:42:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id m125so150709wmm.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 11:42:33 -0700 (PDT)
X-Received: by 2002:a1c:750f:: with SMTP id o15mr429251wmc.67.1566931352930;
        Tue, 27 Aug 2019 11:42:32 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c132sm524803wme.27.2019.08.27.11.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 11:42:32 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:42:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [nfs:testing 16/18] fs/nfs/proc.c:597:27: warning: '&&' within
 '||'
Message-ID: <20190827184230.GA504@archlinux-threadripper>
References: <201908272202.6mSzVPEe%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908272202.6mSzVPEe%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M6bYQugm;       spf=pass
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

On Tue, Aug 27, 2019 at 10:23:03PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: linux-nfs@vger.kernel.org
> TO: Trond Myklebust <trond.myklebust@hammerspace.com>
> 
> tree:   git://git.linux-nfs.org/projects/trondmy/linux-nfs.git testing
> head:   a21b5ffadc8276bc5a7be22dbb96129a47bbd249
> commit: 63ca4f83bffe058abb445ae7a37614305c00c1e0 [16/18] NFSv2: Fix eof handling
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 63ca4f83bffe058abb445ae7a37614305c00c1e0
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/nfs/proc.c:597:27: warning: '&&' within '||' [-Wlogical-op-parentheses]
>                    if (hdr->res.count == 0 && hdr->args.count > 0 ||
>                        ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~ ~~
>    fs/nfs/proc.c:597:27: note: place parentheses around the '&&' expression to silence this warning
>                    if (hdr->res.count == 0 && hdr->args.count > 0 ||
>                                            ^
>                        (                                         )
>    1 warning generated.
> 
> vim +597 fs/nfs/proc.c
> 
>    586	
>    587	static int nfs_read_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
>    588	{
>    589		struct inode *inode = hdr->inode;
>    590	
>    591		nfs_invalidate_atime(inode);
>    592		if (task->tk_status >= 0) {
>    593			nfs_refresh_inode(inode, hdr->res.fattr);
>    594			/* Emulate the eof flag, which isn't normally needed in NFSv2
>    595			 * as it is guaranteed to always return the file attributes
>    596			 */
>  > 597			if (hdr->res.count == 0 && hdr->args.count > 0 ||
>    598			    hdr->args.offset + hdr->res.count >= hdr->res.fattr->size)
>    599				hdr->res.eof = 1;
>    600		}
>    601		return 0;
>    602	}
>    603	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

GCC has a similar warning:

https://lists.01.org/pipermail/kbuild-all/2019-August/063575.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827184230.GA504%40archlinux-threadripper.

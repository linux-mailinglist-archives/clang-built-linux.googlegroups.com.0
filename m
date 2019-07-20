Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEUIZLUQKGQEKIBXOZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC146ED67
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jul 2019 05:01:38 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id w11sf16056199wrl.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563591698; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXCQJgJOMR/kFYqSDxPgBAOfunqY8v7Y/0DRD5opMw/TcdWlsrXJKboRjPEBNJXH9j
         SgFC1IfXvBm4D3lY5bjyi4HVT6ZxWAeGkF00b81F57SH2XAsu/0+RVbPPAwuiPHn3u7V
         d7EOq5cBz575JWMEd/Q8zLMpb+0t42dVzOM+PoMoKMgcyI4NuprEO3aYXriIuDPWc+Ax
         hVA0F6h900lnAQ2OwbygKLfnyfRV0mLL/vwGpfCDkXTMJKokewz3lnkKL9EqkkM/kNnL
         LdRNn54l5gnjtepuAH+sRgInVPZaCgq2/wFbNQZ8GjXME2bGTxBcCK86jjGIMt4SELDu
         oFsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aoI/PXbVg6oRUkjYbFgUSGHRiwaZ6V5QTM9EZ194Rl0=;
        b=LXgU2Opmn5HfZz6uqJKQz49njMu7VoEaakvVGr5t343qm6YTVG6N55C6uZVERsSYF6
         GlYn2z/9jXdLFwmf0jQLubCCQmPCx6cpdhXH8c6sdkPrJkXK7LSLFKpI2M1QqWYykKyz
         G44dRCoZQAD6LFRJTi7L1sUno8ermC3iMvr74cw1GKgrADZUI5CDsb9S/wmhgShEwG4b
         sf2z3+Y7/amoH8EQFQJl8Ledp1mNac/GYLrUtVcMbRvMqLJ83aXjppMxdQQCGh8vI8M4
         l05ieQ/ER/ed4gr3opmqKexZvT7L2qsjbNtFYkUW4XaB+2D0R6xx/6P7DhbFWIIuI7H7
         M0yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iD6GH4C4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aoI/PXbVg6oRUkjYbFgUSGHRiwaZ6V5QTM9EZ194Rl0=;
        b=khDV4ZwsUrJFbQt9xbgKkzudmig5H+Y3uHcsCEjoFbqO6Hk8SEvFGF+ZNFCQedQqKu
         Ng8kPRvXjT3wnJW1d6FtSYZJRvgbLazxblfB2fhZeQ9l3MYYtgu/UCH8RccgWFIpDS26
         bNNOdxO0JspIn2NXZmp6/7ANuAdS86y+kXOTiW3Qd8XJQTGQdGkumyjFoMPHgjs4blsz
         8k8koolaABlsCSmDLq4+ucgQ+ENLo+ARvIh/fmi42XqQoywc7JBTqpx51N6aUCSDY2yY
         TJ2XRjpZWsMfsWbi/R6oRHW//Cw7VKOvtaExO6rVtcxvhyjZ4Iprplylc1KZrSSNJ0bH
         vatw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aoI/PXbVg6oRUkjYbFgUSGHRiwaZ6V5QTM9EZ194Rl0=;
        b=ZIui/azZn23J3O/vEjCWHfB4d5RjwlsKajVscGpv56SZiL8CQuZC9CqcVE29MOaS89
         N870VxSMY63m/cWZDV1k6xq5BpzkxaOQ/mcxeryb1xe/Ms40hBpZ87FWHDC0voaJJpIq
         gKoHftp6GMA47kKKhG5APeePvcceHz9S0z9A8gPLV6dgXyYOkK6r2L4JkNurqdMLZKYr
         qOhvyUH0sXmDL/razQ2zfXHvPyLpAizBLhX1dcknzjay+zCVwb3/WaPpdKk24KxPFNjM
         FHQzwl0kZ2n1Q0AtyLRW6pj15C/TGzOcka2XQS5dvc+0w843AdGhZm1U4BzPjq0ekp6Q
         TKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aoI/PXbVg6oRUkjYbFgUSGHRiwaZ6V5QTM9EZ194Rl0=;
        b=KX7vvqeWfNEqF+SPuBQss89EwZ2IOj//LUYQ2mHT2XEHP7wXvD2tsAaF5wHn0trfIF
         6nIfx0J+K87wqR/tzMW53m8Ebx7EDNcivH0iUeG+2VGDAObEd3RH/tdJWo4Xe0LmuMnf
         2c+KFk0B6ZCUzELzTq+Hbdi+og0EeD5AsqzVOsK2FE8mk3qbdw6LUhkXQc7V9TJRtp57
         /IjkdxsnHzAKIe5stfiRJqNp2WEc+co0ysLjOfFZPMI+9wylKdBn4EuZtcwVhj/yejG9
         aMKKGLq3PUSbdnyzbP8wxczA9JcCyRyO3O5wfWQ1RrLKfGZhs/wZZgXVvolv8r2Ylodz
         4Sug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUJhuSJq0bX4QEu747XVQ3Jd7Anq0Gj3oeQZpL+tGLbO+BnnAr
	ZKjlL5oTX5Dl5xd+aiUVMrw=
X-Google-Smtp-Source: APXvYqxTtYHDpo+44pnAlNPs6XkQiTsajOFL0fVVtHJ0LoPzTktm+ESpbSzLvH3BzKhXfnYjHquaqA==
X-Received: by 2002:adf:c70e:: with SMTP id k14mr61159415wrg.201.1563591698614;
        Fri, 19 Jul 2019 20:01:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f711:: with SMTP id v17ls7420687wmh.4.gmail; Fri, 19 Jul
 2019 20:01:38 -0700 (PDT)
X-Received: by 2002:a7b:ce83:: with SMTP id q3mr52881736wmj.116.1563591698188;
        Fri, 19 Jul 2019 20:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563591698; cv=none;
        d=google.com; s=arc-20160816;
        b=UDQsuV5juGwAtl598rSJvTDqoRKD3Kli9EK0cB2lfqpHWEPKM+q4iDv210yo4GNgX1
         9/4ld0RTKM7yDtoKHRE+SQEN6LH0TLPkXHcf8qiMaMhoyot9a9goAceJAjNKlHIBZbKG
         ltMec174PRjXymrKCUciog2T3XkUF8NN/nDf4VX3Fth291LhhK0A/72JVX75wwbNRAps
         e7n97OhG/902GY/eTLfIXvZAjPleXQQ2/Xgq88eB+tUZsHrf82CKVrz6KQMuwBrescgX
         UowiEjjbM1etXrcnJD9UwC5CtR6MhRj6J+mGXbD6zRz5i56Kvre1kEJl6NqDlEHbw7j+
         d49A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=47m5hC5fShAKikJHH8cP8EzjevQJ5VmSKVXBlZ5+ATk=;
        b=g5lmZ820aoA/+s7wWySp4843pOGyr02n5PKWVcpMB7HRHvvJJLot+eVkV6SMCyMLQb
         AtEA5HkfQPHEYpd4hXMYcq8d47VHrYkeaIAc4LGyWBzu1TZPSuoHtFDGxuHEvXvhaJCL
         3T0P9A7DfbkVwrTHO3OqdNEHNS8E1nBV4lgduVPKiUfpvYKUh/l5rfm3TS+C/pwgU4on
         UyIfWw051SvhQncuvd+lr29okoSl7/6VLvICygVZIFxs2mD+kag93fndlDyT469eChCm
         j9kaCMZryFIXN2s10Lbucrx9z3PXuCikXeidU73sQNUb/jj9HB6cSfzhAYKfbDBSziBc
         ry1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iD6GH4C4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a10si1845122wmm.2.2019.07.19.20.01.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 20:01:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id x1so18947021wrr.9
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 20:01:38 -0700 (PDT)
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr62608457wru.27.1563591697566;
        Fri, 19 Jul 2019 20:01:37 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f70sm34738849wme.22.2019.07.19.20.01.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 20:01:36 -0700 (PDT)
Date: Fri, 19 Jul 2019 20:01:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 14367/14533] fs/cifs/smb2ops.c:762:28:
 warning: incompatible integer to pointer conversion passing 'u8' (aka
 'unsigned char') to parameter of type '__u8 *' (aka 'unsigned char *'); take
 the address with &
Message-ID: <20190720030135.GA50235@archlinux-threadripper>
References: <201907200802.isP5u5NG%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907200802.isP5u5NG%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iD6GH4C4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jul 20, 2019 at 08:46:50AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Steve French <stfrench@microsoft.com>
> CC: Pavel Shilovsky <pshilov@microsoft.com>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   54efad203f37d23bd2872a11b4f15fd9a17a1ede
> commit: bf63aef07199d8b4f400234151931ba4d599e692 [14367/14533] smb3: optimize open to not send query file internal info
> config: x86_64-rhel-7.2 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6a6f28f7b72077708df4411acfefd7c0cfccc0fe)
> reproduce:
>         git checkout bf63aef07199d8b4f400234151931ba4d599e692
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/cifs/smb2ops.c:762:28: warning: incompatible integer to pointer conversion passing 'u8' (aka 'unsigned char') to parameter of type '__u8 *' (aka 'unsigned char *'); take the address with & [-Wint-conversion]
>                                    oparms.fid->lease_key, oplock, NULL);
>                                                           ^~~~~~
>                                                           &
>    fs/cifs/smb2proto.h:234:11: note: passing argument to parameter 'oplock' here
>                                    __u8 *oplock, struct smb2_file_all_info *buf);
>                                          ^
>    1 warning generated.
> 
> vim +762 fs/cifs/smb2ops.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported and fixed:

https://lore.kernel.org/lkml/CAH2r5mvBMMa+tp2W16qSNF-gChZ65ZUqe22VMBFicPaFkUmHuw@mail.gmail.com/

https://git.samba.org/sfrench/?p=sfrench/cifs-2.6.git;a=commitdiff;h=89a5bfa350faf87156acda4d7c457808bfecaa0e;hp=bf3c90ee1efe4dd3417d2129f9f6c68a4c76de00

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190720030135.GA50235%40archlinux-threadripper.

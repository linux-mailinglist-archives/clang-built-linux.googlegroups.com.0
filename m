Return-Path: <clang-built-linux+bncBDZMNZPOQUERB5PE275AKGQEWZDE62I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id DB88D25F587
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 10:42:30 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id w38sf10672368ybi.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 01:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599468149; cv=pass;
        d=google.com; s=arc-20160816;
        b=YnGH5+mp+xt2HIlowIGON5MThlu5lZDwCPEalWrN/tNtcRi8M3XVRzUs7uZyglTEEj
         ihMAJentMsBhDFF7abQ6QSpWY/4jFqFMBmgdf6B5SoRXPhC3SA8sBib7wPnQ2Fzho1L6
         LRZWL+8IjOEk9D+EBpr34g++YDPAbHxCIF8lOP3MBD/TvKOwdPstEZYeTC7HnhvMJLVI
         tXmvVMiaFFyWblena3njP2Kba5CSplTPHhPv1cSl8/aWAIzlwNGttp+KIZIZ3YVNtfgm
         cVlw10To98aLdfAm3q7c4gHBguoIz6p6s1Plc2/tN1P1nDArSfY4tlycEFvl8fcqBKbr
         A3jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=iORizgRyBhBnAR7YGm7qx5hmS69FhbHYXqTunT0LMDc=;
        b=SgEvVgnnTCOxyBv7jCxUG7QUSOkmkH/6JV7zyG2IBIHETgvKNBkU58YVkI7lm5EGc+
         VQOBkPf3dYBKSGAqHTtXuvbTne5D5hBJnJSr5+y/iryOfqB8KwdJXfx+MBpDNlnhPSzg
         aBvDjhu5Zc7P+ElrjhZuO5sG8iRnOt4B4PRtiAeBnxcLUfWSsp/2aQ6wK03R7iHWBeNA
         R4dJM9DtI/v4W0TaMyumuC3yETST88YW2g0l+3UVSp43ubsw5N8uQdtCMvCotWksuNBh
         vYVTcNI5yfapsVYE0gzVmlJJA+qMPGR0qmh3HACpSvMX0qRmvy6Mp+6qGDl1m2SRNnef
         bA8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ctqy4W9W;
       spf=pass (google.com: domain of jthierry@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iORizgRyBhBnAR7YGm7qx5hmS69FhbHYXqTunT0LMDc=;
        b=Z5n2HeElufvKra3+2ALgii5YdBxSc5oM6VtsiUeI09b9eEi46UczTCEZ5+5BGuUcto
         /BVoNogl7RPKafg5D+Ideo1n9OJjWpWgyWY+53js51hx71ik+l1nWi750aA7pGVWHD49
         QWCD2Pwqx5i6IhkCCieDBONdEk1OzK943ZmoTuWeCeL61j2cgZZJ8qrdYNJnSHYVWCQR
         HJSHbv+KkLkqY2Y/g55/ttzpc1LsGdK0V75Jjo/rSypDIcF1Hvr1q4eXk3Ucs9CASA6X
         Yjg0j+Ic+bm2JzykSyyIvTrqWX23/Bv2p/mgnkE1QqJFSc0COMRVPjoLgtLspVMEvMAW
         a5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iORizgRyBhBnAR7YGm7qx5hmS69FhbHYXqTunT0LMDc=;
        b=AJTFnwoV7qhzczlhjzWvoyTUhfR/Uq+D04s7ysoimELl73vyXa1jJPut0A/loFPXU5
         XjW4rTABza7kSArk0HHqiBzZ4pgoqvRHbYf8ngUpALTctW2PgVYu784U2g9Z/HX6Uhh6
         APHiCmznPPkoAPiM6caP8S6HUQ4RsJjCyUD8dPJd5MLKmq4iUX1q7k2uRxJ4mZ4ToQPS
         k+c8eMxWBClDGl7MTY9eKBtygVXhv6jU8drRyj/k29dfbzfz2NyYCCDqaxhAXKlwI8us
         L9QPeVKX+SHBfNzXX7YY1qCFQGRJ6E0SDBAJ2/2i5woN9zV2FZ6ABbUPlV7OFBQKZUxc
         2G+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FnUQB8aDob1SuRHxjRts0WGa4SfQ0Gj4IFbToCWZ5VvsiRpTk
	tDY/e/5d3nJUpV90MJ46Jho=
X-Google-Smtp-Source: ABdhPJzJ08LgXjTGI78G+v0Xl6s+TNh8QAuDu1XJja8NYu//ETsFf3VCAhYyEFPHSNfYcGpjBVRAZQ==
X-Received: by 2002:a25:7007:: with SMTP id l7mr26291269ybc.85.1599468149759;
        Mon, 07 Sep 2020 01:42:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b04:: with SMTP id i4ls582427ybl.9.gmail; Mon, 07 Sep
 2020 01:42:29 -0700 (PDT)
X-Received: by 2002:a25:2006:: with SMTP id g6mr29110434ybg.143.1599468149394;
        Mon, 07 Sep 2020 01:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599468149; cv=none;
        d=google.com; s=arc-20160816;
        b=LxN3n87ZxfJIwHvHJJDo6D90q00yRSb/NrbJ7h0SmFxP/KbgJm8AmWi1dm4Eh/YzF7
         RqKj7gXioMiz1kW6xnXjqMNyyZHDlg/vgEYmnKsmi1x6maIGBQDSsJ6kuuM1v7+bWGQi
         v/4XSl8FFO5/x3kNY5xRHP/pgHKHsyVwNmq0jN3hI3F9sQDPSIN2uwQw3C1Gh/Nigrdj
         z/aLubHHpZGsbQJVS0wA8LYtFPU0WYd4In0XiVWfe7XQyLfCQWfwFEACseraLvSI61fp
         T24PMb6B58aJXh1cFOn5KSCLGB5P3penD7YOjothBKERNVw+mrkNSBxHLwCZwws/icQJ
         cw8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VJ3OFYCoUbQfHOlgxAnpGI6Ou2klPUnQKoKOz4ukdpI=;
        b=N5BsyG9rJOp2TbOj7hHJHPfwu4CU9VT3VAX0BGdljr+D6aVsXX3spjXi/ti5RDlJ6O
         S4d2PMw1d+RQzJnlxhhluw7ATEeS5tJ9b+E/zeEfNQXKDyLRqLofV/q/H0wTbzkKsIyQ
         reFBQKm8LdcWifSehny+VXUGwSvkYIDJUdJgmQA2aQn8iTqmXnIYi3YoAyWJFx6CIJUE
         wVbmngEMZwS+Twz4i4kuIIK6lJGiIndqc6SVy2Auf8r0pIWb0PslYl8HO0k+JF96GYHl
         FeAybPR5wCNvaK52ykK2G7o6PF9si+XA3DVduoVdRCcpdD4hOKbiM+E9K8YMq1I8nt4t
         yldQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ctqy4W9W;
       spf=pass (google.com: domain of jthierry@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m193si1059104ybf.1.2020.09.07.01.42.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 01:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-va9aS7uFNK2QeJ6gDMF4-w-1; Mon, 07 Sep 2020 04:42:16 -0400
X-MC-Unique: va9aS7uFNK2QeJ6gDMF4-w-1
Received: by mail-wr1-f70.google.com with SMTP id f18so5451022wrv.19
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 01:42:16 -0700 (PDT)
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr20006902wmj.33.1599468135179;
        Mon, 07 Sep 2020 01:42:15 -0700 (PDT)
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr20006880wmj.33.1599468134945;
        Mon, 07 Sep 2020 01:42:14 -0700 (PDT)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id s11sm27722217wrt.43.2020.09.07.01.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 01:42:14 -0700 (PDT)
Subject: Re: [jpoimboe:objtool/core.WIP.julien 5/14] ./sync-check.sh: 54:
 ./sync-check.sh: Syntax error: redirection unexpected
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Josh Poimboeuf <jpoimboe@redhat.com>, Miroslav Benes <mbenes@suse.cz>
References: <202009050512.VSnsZ4vs%lkp@intel.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
Date: Mon, 7 Sep 2020 09:42:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <202009050512.VSnsZ4vs%lkp@intel.com>
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ctqy4W9W;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



On 9/4/20 10:58 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool/core.WIP.julien
> head:   bc5b275638c5e74126aeb8ae394f2b784a8346bf
> commit: bbfd86269d713a8f26fd4c90b6b7b90a5967e1fb [5/14] objtool: Group headers to check in a single list
> config: x86_64-randconfig-a006-20200904 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1284dc34abd11ce4275ad21c0470ad8c679b59b7)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          git checkout bbfd86269d713a8f26fd4c90b6b7b90a5967e1fb
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 

I've tried reproducing this localy on fedora 30. I don't observe the 
error, on the same branch.

Any suggestions on what the issue might be?

Thanks,

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection unexpected
>     make[3]: *** [Makefile:67: tools/objtool/objtool-in.o] Error 2
>     make[3]: *** Waiting for unfinished jobs....
>     make[2]: *** [Makefile:68: objtool] Error 2
>     make[1]: *** [Makefile:1890: tools/objtool] Error 2
>     make[1]: Target 'prepare' not remade because of errors.
>     make: *** [Makefile:185: __sub-make] Error 2
>     make: Target 'prepare' not remade because of errors.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
Julien Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/89e8b630-b4c7-cb6d-94ad-d954a83c0c0e%40redhat.com.

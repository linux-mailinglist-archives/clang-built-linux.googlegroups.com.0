Return-Path: <clang-built-linux+bncBDKMLAXVVQHBBG5X7TZAKGQE3Z4K4XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CB71788F1
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 04:08:12 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id j204sf239003lfj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 19:08:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583291292; cv=pass;
        d=google.com; s=arc-20160816;
        b=ytA99QjCQXABi0yYjqiAFAbE3Tmg7Wb53iWWF+utghaDHRdHjAZ32bEJvGE/Isw9PL
         U/jsFxhU41nyest1506uAfWOv3h/gZRLpv2NrJhT+hOPZtJIjXjDwdo7p+Qc0ldoKPGy
         jCCrY8PN/Cx2Hwf2i9tqm7ohLQuxDVCKtW9p6OIHPWLp5ceG8vQ2plRoRVrDREjq0hX5
         hPMOCqBlIpIVFrsMbpoMh0ML+C7mXhk8XsrLz5kOjorjjCGC+G/SGZV6BllF3BlLQs+N
         R8dwoZgiZ4BPL6I7e7B6YTtjoTwHusuDZQX53r/9Vcb3UQ6eSZjTHrQkLZ0W2rzNOJp+
         DO5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1VvP/Q3AhO99QoIVsuf6UtFYngPeca2JERftjelSR6w=;
        b=OIe4vgekbjJzhlY86nrS2Cjsih0m+FBz2sH279Ysd/QrvlGoxb+jgixrGMUjLtRKeR
         d33HNZfY52otCH0vFW0lH3uPZeRKbTx23LsQsAvTXvXlYD9+5eseLxowCbQ4PcqurGzp
         mSdfzB/M95cepd+eMME/zOABx/mcAreZTXB+nquWWNfQKKvx82pen+TbuPpBHKQ4y8sK
         dZr/17YRw10S42LjHju/WFHIeCPEFf5jvcZmMiIPw7WTXDTIGgXYI3WbMCoyDL6naa6+
         sDNSVJ8gLxCNDDykh/hhh2S3kE9gzx2WX+4Mgr/UY0Qp0n8pJSvXodGnyLhAqBUuV/hm
         Q1wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1VvP/Q3AhO99QoIVsuf6UtFYngPeca2JERftjelSR6w=;
        b=jRd4zrbyyWfe7wBrK4nfQzDFUiZti8pKje7GW9b4yy5btEFqSUZ7qI0v2FLrowrOdR
         /Lg0Xw2PSuOWlTc3uU/GNIPDgZCrbhaMorRMzLrX2Zy52+EKk+UMIh5NGPBVEcual0Rq
         04kisaWy/PvdsCxxUZDboS4osVxDul9y3jLnl4lae1kQ4jG0l8PLf7FfIK5GubccEMjn
         kKWTrnMzsKdBMbZOfGBzfoJGCIaZhnGCvdlyCFFFIKUiwJSqYlfgRC83cUl9+oacVOn/
         iBqxAgzcHG7VTlya+69U16lBPFIPZ9G72qgyjy9E2f1yTgEomovJN7ZWomT/xjjF457x
         gqpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1VvP/Q3AhO99QoIVsuf6UtFYngPeca2JERftjelSR6w=;
        b=U4lf4V4mZHZOPaDPZJ0C2gJzoD6Qc+8Uf8z6XlEhwIP9MzFxF1cvuEJ5d/TvmW0pJd
         kOfUgSWrNGV70HVl56uiYp9gVkvCjHT6LAA7ucfAiGoLpX31xnxhMALnnjuuqOXVhswu
         rJPSnS5T6VYZZpnehzwEr180n1+/xVZg+W8iWjvbrC6UelTQ+RJab7Y31jvGp0VleHgw
         eRkD2Um1aWSg53WV8DpdS717safObG3n4dW87IkfG8RlQaLu3FqALlcr2ngMQfgR4Fu6
         IPHPXLAsyComlcict+b67W1b5YcGyUeSv03U6Cq4pj2C2f5YBiMmlVx3klS4+D8EUSj6
         RSHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2XAVU9k+Ygg+cPkk9cYPVGJxENqYMXgjmsEDynatQ1v+3Rfu7m
	k8JYVbmmDuxHp6PleSSCj9I=
X-Google-Smtp-Source: ADFU+vvIrK6o/WbP9P5ZQPbkw1bi2511TzRR6RFiMV8J4TF0XUOcW7rRBPKKs5NaYcuiKlR1ZynArg==
X-Received: by 2002:a19:5210:: with SMTP id m16mr612941lfb.118.1583291291945;
        Tue, 03 Mar 2020 19:08:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:97c2:: with SMTP id m2ls78057ljj.1.gmail; Tue, 03 Mar
 2020 19:08:11 -0800 (PST)
X-Received: by 2002:a2e:890b:: with SMTP id d11mr592427lji.79.1583291291372;
        Tue, 03 Mar 2020 19:08:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583291291; cv=none;
        d=google.com; s=arc-20160816;
        b=H8kxCWvnWt7duK4DH8ZBtw0KIDSwEnvXUarcEIaUEtedN2HqTIDLVikMsaD/fvzWtq
         tk58C3wMmbrswE22S/AElH9Nea0WMy5dGX8GLA+YxGDBD4z14z49E4j6nRPtzxxzlhvU
         X9+yTZpS2SDf8sgNMDOuKsgF3f2u4QwQB+fhEsjyQYytM7nxZumnYQUnv8dciFHMbU5L
         EbHRzLUnvNqFBNz2bf21ENXah4E6AzViHF7+CWZM14hckSBbV/yqCr6uGyu2i9iPen8H
         FXqaKxrp9rvtLQ3h+FYj6HPCJUs9H4RYNwFh9E1ghylEKJYk/ZLC4nMQTVVB4SUvYPqX
         HwyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=8qHucvkEHqKKVaIh2m2W5/frYZFYrKXH1e+UU08WUns=;
        b=Tjm0aZIwTi+ZkIK5wE49geZCAhV9twygFMJ5SjxJgDhQZkvoBsPP544uP+5khjKk3D
         s41dqIZpYqXSfvg02g3DufbrO1/OVGVLwTwOd16yJIkkK5AZHhWKqzRdEE5jQPcbR9hx
         ONM7bJ0TJnqUcvrt85qs0Klp1OlW5Z7Zufp3Vqw7zqIaAa7fVBgys9GUsye8JGQjSDdD
         57ZS2sSuhpxQnIUO99sw+KpT9OGEZNThefsMkv1Xyqj1u9Lw0sF5A5sTpMBPJGE0i3le
         7+vbmyaze60x61y/i6n7DHsCH9DvA5/yB1wXAd2kIJR2gUKEbk9SEa2CKdMeTqOg+Wno
         7vPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id w18si1947lji.2.2020.03.03.19.08.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2020 19:08:11 -0800 (PST)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id E5EC1EA8B3E6B6BAF3F6;
	Wed,  4 Mar 2020 11:08:07 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.206) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Mar 2020
 11:08:02 +0800
Subject: Re: [PATCH v2] f2fs: compress: support zstd compress algorithm
To: kbuild test robot <lkp@intel.com>, Chao Yu <chao@kernel.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <20200303094602.50372-1-yuchao0@huawei.com>
 <202003040907.IRHXX5zM%lkp@intel.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <b874abae-70e7-4f6c-e4b6-c154a0f2d701@huawei.com>
Date: Wed, 4 Mar 2020 11:08:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202003040907.IRHXX5zM%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
X-CFilter-Loop: Reflected
X-Original-Sender: yuchao0@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=yuchao0@huawei.com
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

Hi,

Thanks for the report.

I guess we need to apply below patches first:

[PATCH 1/2] f2fs: compress: fix to call missing destroy_compress_ctx()
[PATCH 2/2] f2fs: compress: add .{init,destroy}_decompress_ctx callback

On 2020/3/4 9:00, kbuild test robot wrote:
> Hi Chao,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on f2fs/dev-test]
> [also build test ERROR on v5.6-rc4 next-20200303]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Chao-Yu/f2fs-compress-support-zstd-compress-algorithm/20200304-020312
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 211fb91f1067ecdf7c0b8a019bcf76554d813129)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> fs/f2fs/compress.c:450:3: error: field designator 'init_decompress_ctx' does not refer to any field in type 'const struct f2fs_compress_ops'; did you mean 'init_compress_ctx'?
>            .init_decompress_ctx    = zstd_init_decompress_ctx,
>             ^~~~~~~~~~~~~~~~~~~
>             init_compress_ctx
>    fs/f2fs/compress.c:21:8: note: 'init_compress_ctx' declared here
>            int (*init_compress_ctx)(struct compress_ctx *cc);
>                  ^
>>> fs/f2fs/compress.c:450:25: error: incompatible function pointer types initializing 'int (*)(struct compress_ctx *)' with an expression of type 'int (struct decompress_io_ctx *)' [-Werror,-Wincompatible-function-pointer-types]
>            .init_decompress_ctx    = zstd_init_decompress_ctx,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~
>>> fs/f2fs/compress.c:451:3: error: field designator 'destroy_decompress_ctx' does not refer to any field in type 'const struct f2fs_compress_ops'; did you mean 'destroy_compress_ctx'?
>            .destroy_decompress_ctx = zstd_destroy_decompress_ctx,
>             ^~~~~~~~~~~~~~~~~~~~~~
>             destroy_compress_ctx
>    fs/f2fs/compress.c:22:9: note: 'destroy_compress_ctx' declared here
>            void (*destroy_compress_ctx)(struct compress_ctx *cc);
>                   ^
>>> fs/f2fs/compress.c:451:28: error: incompatible function pointer types initializing 'void (*)(struct compress_ctx *)' with an expression of type 'void (struct decompress_io_ctx *)' [-Werror,-Wincompatible-function-pointer-types]
>            .destroy_decompress_ctx = zstd_destroy_decompress_ctx,
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    4 errors generated.
> 
> vim +450 fs/f2fs/compress.c
> 
>    445	
>    446	static const struct f2fs_compress_ops f2fs_zstd_ops = {
>    447		.init_compress_ctx	= zstd_init_compress_ctx,
>    448		.destroy_compress_ctx	= zstd_destroy_compress_ctx,
>    449		.compress_pages		= zstd_compress_pages,
>  > 450		.init_decompress_ctx	= zstd_init_decompress_ctx,
>  > 451		.destroy_decompress_ctx	= zstd_destroy_decompress_ctx,
>    452		.decompress_pages	= zstd_decompress_pages,
>    453	};
>    454	#endif
>    455	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b874abae-70e7-4f6c-e4b6-c154a0f2d701%40huawei.com.

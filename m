Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBJNTXWIQMGQEAKE454I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1174D87B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 16:05:11 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 9-20020a630509000000b0037c8607d296sf10211346pgf.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 08:05:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647270309; cv=pass;
        d=google.com; s=arc-20160816;
        b=kDEVQCFM9qArUPPM8J9urdZuVqjgZPf4cDL5J7cY2daeyt4PWgq+96HDhCLt5Jm5g2
         +wP90Q8Ivbar219eq8wtEDCiIFBkgXMZdfqihoxACdSuA1FIYuxt4EjXieVSHg8t19pi
         DVD/87QSPIK+nJ5r1/isl92+QSXrsk9pYEktYQ5VSpV52hmUZU6casiCohMLluWTmtqg
         1PIGvZ9zM4kyJ2wvvSsBkHxqiB2qk/IIvdo/GQ4Fh613n5HCuIVP65IeYheGiSlI2FPX
         aqJvE9iaItgtM5vKE7+0T6D9yElL4nS4O8q59hSdoxQSAW9AW+tLK6umFMfBlK39+GAl
         Jung==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=w+zPz3zB2DNFdqkiaqcq8NoKoI1UEHFBaF05NRWbEVU=;
        b=hp/YXTQcTthG9Bv0Xu1Kz3OvSGss6gCEvzrpi858y3iONmBPehm7JSIVs8Fhz6socX
         lPlAaNoBY1MnFEuphVfhI8TBrW3pRSuD8Ego1LPXGXPrKOyVTKsAXyyZsKyhHJD3LXqN
         G9By+t7lPHqnR8Zb7IzBj+0TIUaEq7BS2i5pofae1hnl5j7q0CbLhsM/1WlIPNa2Yi7E
         emuS+L2o1CPjzfcl3EJxzgodkPdhWy/JLQaktpmOC0YhqWIzmQ6NoKgYcsYtpfJ8cehu
         gQ9TmfZ9ILOfitSXRYbnbr9aINttgjUThyqIg1Rk1P9QpXGWNKz9PUpI5JNKC/RyaoZF
         j6Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=N9hg3BIE;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w+zPz3zB2DNFdqkiaqcq8NoKoI1UEHFBaF05NRWbEVU=;
        b=G0VMmxdOjLZET/w/nMkgPlubvYyyUirCqAGOk4ysmh0ghZJxkJN/tPztj9+k0Y/Khj
         fev0zHNcKGWGioEasxhs3IMTLiWTg28kTJkO2D4ux38SRZprLKUZzDi864iOxwasLmZ7
         rsUwLL8EtXLBjXYMBGHx+6BWmZrHu9OEdv5CWg+zsoAkOEWCezZIRUyHjfTARBIMgNKt
         mmb1ibPpWlIs8Vk2RAmTKSp6apZRQrLr6Hb1dzRcyNyM9xFeT7r7jAmi+N9ZaarMaMNm
         y58LxG7ZN1BLYH6HHlP18fBLwCVqjEms5kOjkBOm4tjVHvA/Qo9Wc06zQhhAYYs4VObk
         2sbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w+zPz3zB2DNFdqkiaqcq8NoKoI1UEHFBaF05NRWbEVU=;
        b=P8JngzhDr+dr/T8AHPqn1EMCsWTao4eOCDfeO4yJj6TRvTE3NO7Dzw5S2EEClXG22y
         ky3Xq3Cg4QckQmxaKmIwNPzLQ6VwTcXe5NCetwz8eTej1pHZr0Sps/Dra5RRfrx9GNrx
         QToTEStGINdxXBoN+UhMRkDxfEECkZqYnaVZeHGxD0aKhNtU+L+wCy6XXV99d5t3ooPB
         WesuO1iFUqkt8KavjDq4tx2HYi2AXaY+RCmaQjR+HOfB7UeL2pWGieW7+0L3hQGzrHly
         UONbydkmaCVQ4cJvJGHoMv07bpySSkKKbgpQH6x5fZWMnd8l6c9NK/tkheLNhw8kJbv3
         9xbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mlDKvLoUbNuqS1gha+pQWFag5Rz+Mbf87+ApoM1rW58cmv+EH
	3PE2RQ0kyaYlz6VpwBiRuYw=
X-Google-Smtp-Source: ABdhPJy0q3byMZOIYOANGgTh+F29AvxmuwY3LByPlmRhA9PYm2iNev1WFAVUB6eYm17aV/LeGJgRLg==
X-Received: by 2002:a17:902:e751:b0:153:6afa:c067 with SMTP id p17-20020a170902e75100b001536afac067mr6072436plf.150.1647270309507;
        Mon, 14 Mar 2022 08:05:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9152:0:b0:4f6:aaa1:9027 with SMTP id 18-20020aa79152000000b004f6aaa19027ls4466199pfi.11.gmail;
 Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
X-Received: by 2002:a63:b10:0:b0:373:393f:2015 with SMTP id 16-20020a630b10000000b00373393f2015mr20603860pgl.322.1647270308867;
        Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647270308; cv=none;
        d=google.com; s=arc-20160816;
        b=H4cgjQkzjlVZg7VoEdkpozaHkAR8SrP/SQT6ueXLS0+ols2ZzRAXdFNVAWRaXpKZI5
         n4j9bC6O1QixCoz5YlDowj/86yrLVksZRbjAd0IEeJQ9kN94iRWyIZPr2yI5KsxLk9uI
         VTBgoIVAyM2miMisj7ixgVZu2k2nAmf6yKIzxAHC5TG63vDSDScsPBOA+3RI3yQpHZZg
         oIEORP38GCoCKLV4dAX4JAaQon3TSUMiMyLve4YPuqE9TMm7AqtP2vZwccRLmCtQ5c3g
         UYYlhEzWGs9Kkny32nw0cW/v26RXiHVAK9Ho7toY9AAqwgu4caAnoCetDCTLeCBNwSIw
         Bjqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Qv0ctZNGjuMHErRKtH6tt/mtgdEahUlvx8zamL6m8vU=;
        b=hKMXiT5p9JJV7cxxs4GNjMz6QRuNF1g77rfd8UOfWkP3FGo8Bw1AJYrJDVJaUOlNV9
         M+2D8ExjXl5oGqDSM1hZ5CoroMZJu3KgD25SkeCeg7RyyBo6LDtTB9aVvycPiSxEqqE/
         2vEKF2oQA32zOPYckSl36/caLBat5iEDrcg6FEl9Z25VMG08e8VEe0Tk1fzelfodqf3g
         m8IOJD1uzBDWSALOWg7nR9nJGOK7JeazE1c5BtI7cQ1SotG8P+k6w0PqnHuKoBqKSulg
         3NnK9CRy6I4cLp9HKdiuEsBylZjvGIneMRKwTC10Jj2V34MX36DakhROzwGi9ZQUdgvY
         cb+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=N9hg3BIE;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id o64-20020a17090a0a4600b001bf0a82f880si18432pjo.2.2022.03.14.08.05.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id w7so18569308ioj.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
X-Received: by 2002:a05:6638:2388:b0:311:d1bb:ed46 with SMTP id q8-20020a056638238800b00311d1bbed46mr21122474jat.212.1647270308486;
        Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
Received: from [192.168.1.172] ([207.135.234.126])
        by smtp.gmail.com with ESMTPSA id x14-20020a056e021bce00b002c7ada1bec5sm512482ilv.88.2022.03.14.08.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 08:05:08 -0700 (PDT)
Message-ID: <0d79b44c-d51e-282c-99a0-78ae6c9f6f01@kernel.dk>
Date: Mon, 14 Mar 2022 09:05:06 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] sr: simplify the local variable initialization in
 sr_block_open()
Content-Language: en-US
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-block@vger.kernel.org
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org
References: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112
 header.b=N9hg3BIE;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/14/22 9:03 AM, Lukas Bulwahn wrote:
> Commit 01d0c698536f ("sr: implement ->free_disk to simplify refcounting")
> refactored sr_block_open(), initialized one variable with a duplicate
> assignment (probably an unintended copy & paste duplication) and turned one
> error case into an early return, which makes the initialization of the
> return variable needless.
> 
> So, simplify the local variable initialization in sr_block_open() to make
> the code a bit more clear.
> 
> No functional change. No change in resulting object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Christoph, please ack.
> 
> Jens, please pick this minor clean-up on your -next branch on top of the
> commit above.

Should it have a Fixes line?

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0d79b44c-d51e-282c-99a0-78ae6c9f6f01%40kernel.dk.

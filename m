Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSMRSGCQMGQEM4OPU5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74A3882F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 01:07:54 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id w1-20020a6bd6010000b029042308b21fb9sf7337542ioa.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 16:07:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621379273; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0jf/3KkOrUrjRNc4oFtlgg7dURD4bQkW95B/F5Q7djdveL30XFTVbdLrytTNDMwhJ
         jdza2u0guJxzCkfHgdp/3ovvy75hL30hdBx2dIJ5TVQKHAsE8dj9brQAmeDrIl3fqE2g
         p76uZBHZPdCZaSe9cXiiftbGYHQgPfjr5w9AMGbABINuDLBU2lfYImnp3q9ubIq08teJ
         7avybYOH2xWTnQSu2LYmKW9q9meYVjDV9encN63qqwcnI6SG+DiFyi2OW2ak0f8zxpSC
         I7WePzXDnsclsHk4vUOGwbfGaPDvDSDvBNPYrpbqWbJri8Rita/2uJL+2KGxK32iDwtG
         XBWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5nU38c7oWma+edsZFWhP+aCAzp6IQPENdtV6HSp1/QE=;
        b=uGexKBVzJOwwzDBqj8H7pYOItOI0vz2eZOVUsm5mOVKsZZPoTXBOfvU4x3lYcYHW/s
         QkyiRvQWxCil0Jbyo1RNi2B0vNDCc2sYlHJCnS0f+ZEYh91+Fu4I76XGB8/tKskyjgXm
         CCjybbtpNe81+6Ekgl4c7KBYUhGDBKeQ4LoirU1/npX2Y/ImXsHsASwSFZDq7G4qGiKj
         0wVQjarJsx4XtHh//H/HMtY8j/RRIB+u7My57jSOiTR65d8oDDJzVyrQ0xxOqBDq3iTV
         /jgHV2CiS5HW39MCwhUGkyuv3SCCw2r9woSY0ZCj63yB/DJHuY60uDVMlRWT/ZcECBzx
         oi7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gjiqeQs9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5nU38c7oWma+edsZFWhP+aCAzp6IQPENdtV6HSp1/QE=;
        b=XhwpCDz7enXFzMGaYClwE4sBiBaMob2hRIX3rFnAYm8nXjgFiRGh/U7Cxvksf/0LPc
         CANzsvLaelLqt7KbHHqnkReS1zCQ2LkDCe+ZYJgWArIfFgGOmKkBUtTSTVhM9w95pRRc
         jP6CIZxsP3DFn0BHYBopLVwyU2bFhpeI96Ck/Ovyoy3hf5opO1BvN0c9Azvu8SvSJyhQ
         kQCxXQY/duS0yOx0/A0FQyxP/RoB0+IXYsmlYc/QhOBdM/7DqRsfhF4NgMLRkNs1Ptk6
         tIPe7FSY3hif+7qkLzcDhFLWcssf7WkDCsKfibb8frhK1eyCRHHcG9HDTBlzTXd5MxnW
         U4Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5nU38c7oWma+edsZFWhP+aCAzp6IQPENdtV6HSp1/QE=;
        b=FGMsGWIOs96HMtmmyMwOZwrtr9564a5AiY4ZLhPVSanbI+WHqeVeHKOGQPuDnZNQRS
         VmairZCpvckloK2YjpUyir1xb6xw3HF61KZLQQoKD/qMfAsgvUGpUQPztju2t1aYIQUk
         kCwZ8kNTzfUllbCm5NXMV+2b/8yVGiDu+r+EJZriuquZ7qjqsVvAKmsIn9T+73blH9LO
         4LnlVFhuGJCuE2/IQYHae+g4s9PPYt7F7gN2f6Eh9FUSZ5+FYsjn6H1wc10tVuNoXG2H
         rCAiaz8Yj24R2T+Qh67b+7iyskqQaEZgnKju+7sLEJDZZRSMYJAI3h78EvQVenaq1YNU
         R1ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rF9hW+Kx6MjXjzOtjNSYg0V6cGFnlb0L+VctpEN+GggcJhkgq
	u/8GB6PQvaqJ7g5qSjq3mOc=
X-Google-Smtp-Source: ABdhPJwDbLpp6y7QYU0MZArqb3zcncIO43sy8y3HZJqaSxL5K5DSvqIhrTeWquKmb18j9W+7iDemHA==
X-Received: by 2002:a92:db0e:: with SMTP id b14mr6521415iln.171.1621379273451;
        Tue, 18 May 2021 16:07:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:dc8:: with SMTP id m8ls2711050jaj.3.gmail; Tue, 18
 May 2021 16:07:53 -0700 (PDT)
X-Received: by 2002:a02:1c81:: with SMTP id c123mr8905117jac.42.1621379273098;
        Tue, 18 May 2021 16:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621379273; cv=none;
        d=google.com; s=arc-20160816;
        b=r9g4NhMeWbwan48XvVWifeFQaOF7K0pSLr+zyd5+bDCHfLXPmhxVmtXZhXIvYQb0np
         brkzxri0n3kBHghaxJFC9lLvJhq91UDP97qRPaqqDGej2Ns0DfiK7/2akjfnCinjjTO4
         NDln2d3z2daDTvS6e2WmdSiZJJpUkaF3vf6NhEQZIWaTz4Z9yKoTSodEN7O/tez0Xajd
         S11v3H4brLHqA8vtcsxGXoIbRLIKz31W/W9QkXC0i+3/56QiZigR4IFPfInaVABa1h9J
         0WYwjdH50KwYYhPWYkP6S/ysL3noBYDaTCdHt9/A3/Y+cKqeJYZRU013NY2cQnmukkDB
         YhLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fi+LO4wA2gceJ/IAwYVw7P87k8kpxz5DDGHbIwxeKOg=;
        b=Npy+NG5uWMIR5X/84sUQEkzTDkqqtdMlLLnWs8OS0sBCaUcAvc8yzn5SryjXyzt/Xn
         gQ4fq0vHqJb0m+IOcoeAVur0ghOeURPZk9uYwJ/1NDrDO5s//eZUrbtc0694Of/3goGc
         /NgI4RJX99mOGVNx5j+wmowHfeUWZykKc15gq694/GDSl5VgPVJ2+4uLs2hxzJdswYv9
         f0Zwy0EP9/GvjuAtEf8bxZ3K+54MwChOeHCpRY1XJKisCMqpNxDOkvibvCYycpp+agwN
         5Jm0lJlEk4E2QlZeEJY8+b/DkiyD5vIcs3RyWvl/BKZFLGxIXBXuHGT0kFxhmzlG+l5U
         gCjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gjiqeQs9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si87324ilm.4.2021.05.18.16.07.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 16:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA139600D3;
	Tue, 18 May 2021 23:07:50 +0000 (UTC)
Subject: Re: [PATCH 00/13] Reorganize sysfs file creation for struct
 ib_devices
To: Jason Gunthorpe <jgg@nvidia.com>, Potnuri Bharat Teja
 <bharat@chelsio.com>, clang-built-linux@googlegroups.com,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 Devesh Sharma <devesh.sharma@broadcom.com>,
 Doug Ledford <dledford@redhat.com>, Faisal Latif <faisal.latif@intel.com>,
 Gal Pressman <galpress@amazon.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org,
 Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
 Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Selvin Xavier <selvin.xavier@broadcom.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>, Yossi Leybovich
 <sleybo@amazon.com>, Somnath Kotur <somnath.kotur@broadcom.com>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Yishai Hadas <yishaih@nvidia.com>, Zhu Yanjun <zyjzyj2000@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>
References: <0-v1-34c90fa45f1c+3c7b0-port_sysfs_jgg@nvidia.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <34754eda-f135-8da8-c46f-3ef45a08ea11@kernel.org>
Date: Tue, 18 May 2021 16:07:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0-v1-34c90fa45f1c+3c7b0-port_sysfs_jgg@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gjiqeQs9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jason,

On 5/17/2021 9:47 AM, Jason Gunthorpe wrote:
> IB has a complex sysfs with a deep nesting of attributes. Nathan and Kees
> recently noticed this was not even slightly sane with how it was handling
> attributes and a deeper inspection shows the whole thing is a pretty
> "ick" coding style.
> 
> Further review shows the ick extends outward from the ib_port sysfs and
> basically everything is pretty crazy.
> 
> Simplify all of it:
> 
>   - Organize the ib_port and gid_attr's kobj's to have clear setup/destroy
>     function pairings that work only on their own kobjs.
> 
>   - All memory allocated in service of a kobject's attributes is freed as
>     part of the kobj release function. Thus all the error handling defers
>     the memory frees to a put.
> 
>   - Build up lists of groups for every kobject and add the entire group
>     list as a one-shot operation as the last thing in setup function.
> 
>   - Remove essentially all the error cleanup. The final kobject_put() will
>     always free any memory allocated or do an internal kobject_del() if
>     required. The new ordering eliminates all the other cleanup cases.
> 
>   - Make all attributes use proper typing for the kobj they are attached
>     to. Split device and port hw_stats handling.
> 
>   - Create a ib_port_attribute type and change hfi1, qib and the CM code to
>     work with attribute lists of ib_port_attribute type instead of building
>     their own kobject madness
> 
> This is sort of RFCy in that I qib and hfi1 stuff is complex enough it needs
> Dennis to look at it, and the core stuff has only passed basic testing at this
> moment. Nathan confirmed an earlier version solves the CFI warning.

This series still passes my basic testing of LTP's read_all test case on 
/sys with CFI in enforcing mode. If there is any more in-depth testing, 
I can put it through, let me know. I'll continue testing the series and 
when it is in a mergeable state, I can provide you with a Tested-by tag.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/34754eda-f135-8da8-c46f-3ef45a08ea11%40kernel.org.

Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBZXDVSAAMGQEW765VPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E4300D73
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 21:13:27 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id m14sf10596076ioc.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 12:13:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611346406; cv=pass;
        d=google.com; s=arc-20160816;
        b=pS7poxYwkSFbGmxOvalxOpF3yLud5vMwxK46RSEQ4dwSs2ukByfD0mp56uaQuZhpcn
         WfmVCkODPty3jMKyhSfXTwpuXRB9LBbxVW2dQCVhcl1kpRL6uU79uBQAzTG6JGZ/iXHT
         +IP98fcwmvvzy9x87OFVeIv+pb9nYUU10+1NegnqLvR+T9PLnWhavoubcGNvc26iH/5k
         eGyeAZzvWg4lSWKDmJIKX+NuJuzYNcw/MWYZbxkSMBmzoB4PmzTNiRkd9Ye+wEAiTAZ7
         d2fw9btUaeTjphEHd+EhI4PkKv/DUn4mFBsTFvsgqYUZW/bRwi1qHYK5B/BnRZnMYsKH
         3OWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=z948TnI1yBA5tB6FdwxqfjxmDg1SMc+bG5DUsKeJebs=;
        b=gX0EJa9sE7Yuh+CjrQcOA/ykPI3dd4UebcOlQTKlN/BFamPCd9s3byoDBHH/sL3OkR
         SUcntR5yP2uZZ8U1o0D7P0qRdEH9gqWzAgPr2HSqMNxAmYAcYeJy+eiuVxuGU5XPo2cC
         HG8TPMqL3dBjT90Ys120XaAOZHBBCVXJhYPvVBHHyQwGE+KucVmz5bOINwCLuVyvDeRN
         iAuGxsUHMZPBN239wKl9ab2SoP6MmeYR0k4Y8camESx1ZB0dDHW9TN+PqQOxcNadP24p
         HzDRH/I3reuZxhd9QSTsMc9QL/NGBqrKW0IKc1R5cIF9DFU/pcX19ByzjXZTlcTMh+XS
         SmBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RqFQHT/c";
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z948TnI1yBA5tB6FdwxqfjxmDg1SMc+bG5DUsKeJebs=;
        b=kfS0yUR+sFDBh5YThLQ+nPxa6RI7QoQqsFFPP0MXkxMrbyWmmV104QKV2/Szg1Guqw
         yF6ETNH9i661qvCULh64uQBMtKnMPtipIaJRbw9kJXI3RI7EUlD96TXHju88jFANMV3V
         hRwnf2CMY46BMpzbFJzGjI4/quQ2Cda7Bi2F5syFWg4JYpEtBzMZsHGJyxK/q6uJtr0o
         Qwr7d47dqXzKuYE9hi5uf3qG+S8+81dBybBrSoAbgHd9CMxp2F8DNxtIEgFuldSSEezQ
         nZWa+nCSwrrhQ+RxLGr8G8+aOvthJogB9YviqbL7tr8rmXd2gWS79fm3VURPD0Uf50ih
         boTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z948TnI1yBA5tB6FdwxqfjxmDg1SMc+bG5DUsKeJebs=;
        b=HPAVf7FEdkDiVU+AIf+RCTztnPjOyz9SsCwd1pUzWJmDDhB0m3Kj5Y0fGpFQeTN2VT
         n6G9JJrV5IpfdVjbWMJkafphr3mKVPGCtwg/qJiKkyLYEFBd5f7NiTjgwGf4o9+xCYaF
         anJE7sF7CQkck+Dq71mDijHz6Szb0O7OorEq2ZvcO7sRMAxYAfLtSZneABgCZcgNLQPU
         +mBkmJ16tIZgz5blza42/PEzIUvA/NIGOxbmVyIOgnYx4lQFAus3KitMrdCw5pV36oNB
         4nsQfuQm8wByfqWDMNG3AWqoREzox14uN/XwwoRH6qzgVKxRuU5bBG9xF3IEq2TBedWx
         yaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z948TnI1yBA5tB6FdwxqfjxmDg1SMc+bG5DUsKeJebs=;
        b=n9OF4zy4RkTnbdAcH89H3eRUiI3qgiR1pkIo6/9yAiitQsvMtLODJ160ocPGnO5nbo
         3CX/jsHhxD13W8/KtnBrlmxRfdv/x5/bU6FDMTeym0270CPzjbgWj4NW3fq3rUC1RpSm
         oD7uHrkmQXgUyHSpEdIoOu1AQMmA/Mk0LPWogUYFVQH3e3h8OpSmwIfIAc31PG791G9U
         inI47KLXQWzWY9vTmiCELLT5sJOS554uoPVFLD3mP0CjP7Yh68/NL86sIYU8uESBcvWl
         hbeEC24e6K24OA9D5tqrDfm1S93kwc3LsZX9Ctn7j7QO4wUuPSJUw/W5wOLSS6QWy2fv
         PHLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cFR6nLTZ3kvyrS+HxK8FW50OzG5Mh4yrd9xwYFxwn4GuiGPIS
	HVjwpwQ0J/EyM5+KvplZKTc=
X-Google-Smtp-Source: ABdhPJyhiC0OAn0+ar+eAOITwOR1Vi5WFRA6L1s23msTgFoUjaWfnS1n6PJFZ1ZY5+Z9FyQcHPYYfg==
X-Received: by 2002:a92:c242:: with SMTP id k2mr5572293ilo.12.1611346406553;
        Fri, 22 Jan 2021 12:13:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls795373jat.11.gmail; Fri, 22
 Jan 2021 12:13:26 -0800 (PST)
X-Received: by 2002:a05:6638:e:: with SMTP id z14mr5139415jao.22.1611346406164;
        Fri, 22 Jan 2021 12:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611346406; cv=none;
        d=google.com; s=arc-20160816;
        b=yM8eDHPdIx4KbxDYSUAPp+iCGzysfDYglQf9ORuYzGaCxYc2GyK0PCzqmCWayxDZ6n
         ZwkvAXyI2oam2HTBnWxkRgMFMsfZh//x1gudeMYPT/C+EIEYx/rvkI3TJ8naMLJ7cuty
         qbkYFNxG5rj7v+yof4errdF6lCyr20uapgFoznSlQPINcxWpuniAHwTBVxypWBhuNT14
         SD/frk+a9BhyPzLE9Jvm6etEOMvrYUHaKmrG0Ql8zWC6ylbpdXXZUHZgWiRwXrYjc21K
         TlRvhtRVuP78s2V1YvYheyIkderkZ/LmhlCoqDh17YVxd3vjQsEVtnFeMVRRWiewAs5h
         0fpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=P9tYxUwkT1diagUtKn01/sYWnChBZ13cYDuFtjNNJ6E=;
        b=Dp7KDIz9yS+1oFXDGVgyMidMeK8vjs77eEc4gcPZELN6O5HeFPXW5o5+U1c2+hAVOh
         flFd43v6p515mvCJkXQ7gBvH5NzvNaIZQ5jO3ynH6Psnv2yKFHWmS7XXIBn3F7vgD+01
         XunEjIpDo6CTrWncg9mS+qZ1Z/YmIE3+bdIa+Wk6novkMhw0pxdvlC6RJBLrviZOsd7A
         Z/vHYbsqBWKQFpOC3qhzYBkaaF6C6/1BEE+c8xEG/9QoKGEyKdc7obgN7HPZf6mul73o
         XxPZDHf8SkOC867n67YKhV3+Pxk5eYWfMRbAmz6CKu68xmzmXV/B5EZU22vwVEwEM5WP
         7DKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RqFQHT/c";
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id s10si541444ild.2.2021.01.22.12.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 12:13:26 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id i63so4553347pfg.7
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 12:13:26 -0800 (PST)
X-Received: by 2002:a65:5b47:: with SMTP id y7mr6136443pgr.221.1611346405325;
        Fri, 22 Jan 2021 12:13:25 -0800 (PST)
Received: from ?IPv6:2405:201:600d:a089:5548:7837:8dcd:a8? ([2405:201:600d:a089:5548:7837:8dcd:a8])
        by smtp.gmail.com with ESMTPSA id n1sm9689327pjv.47.2021.01.22.12.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 12:13:24 -0800 (PST)
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in
 assembly files
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 clang-built-linux@googlegroups.com
References: <20210120072547.10221-1-yashsri421@gmail.com>
 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
 <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
 <98d40817-1f80-c772-eb9e-a6c3c04625b3@gmail.com>
 <27366417ad75e0300d4647f776ca61bb1b132507.camel@perches.com>
From: Aditya <yashsri421@gmail.com>
Message-ID: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
Date: Sat, 23 Jan 2021 01:43:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <27366417ad75e0300d4647f776ca61bb1b132507.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="RqFQHT/c";       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::42e
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 23/1/21 12:40 am, Joe Perches wrote:
> On Fri, 2021-01-22 at 18:48 +0530, Aditya wrote:
>> On 21/1/21 12:13 am, Joe Perches wrote:
>>> I believe the test should be:
>>>
>>> 	if ($realfile =~ /\.S$/ &&
>>> 	    $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
>>
>> Joe, with this regex, we won't be able to match
>> "jmp  .L_restore
>> SYM_FUNC_END(\name)"
> 
> I think that's not an issue.
> 
>> which was replaced in this patch in the discussion:
>> https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/phKe-Tb6CgAJ
>>
>> Here, "jmp  .L_restore" was also replaced to fix the error.
> 
> Notice that this line was also replaced in the same patch:
> 
>  #ifdef CONFIG_PREEMPTION
> -SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
> +SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
> 
> 
>> However, if this
>> regex(/^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) is
>> correct, maybe we don't need to check for $file as we are now checking
>> for just one line.
>>
>> What do you think?
> 
> The test I wrote was complete, did not use $file and emits a
> warning on the use of CODE_SYM_START_LOCAL_NOALIGN(.L_restore)
> 
> I think it's sufficient.
> 

Okay, Thanks.. I will send the modified patch :)

Thanks
Aditya

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bd560a8e-7949-933a-e4a9-508cb42c2570%40gmail.com.

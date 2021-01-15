Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBGFJRCAAMGQESCZ6FTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9EB2F883E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:18:01 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id q140sf17439292iod.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:18:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610749081; cv=pass;
        d=google.com; s=arc-20160816;
        b=NI8ll1uIKuRKEpKQ37PpU57eHhJOQmIDN5cy3p08sB/sAyaZdlmvoFUjcraYJ8ZCgy
         dXS0NSzBRWKVMSv+JbHWAyn3CFa8HBtviGR+HJbEVvmmEMQfZRjh2tKtaXjt8Ss8c0RN
         lALoH38xYmpUkOz5WPaNUxsS+7OafRWfgWsAw5P84CVp45HqjLuFbfFCBcAELg7iD3od
         WGbR+9EmYw7p/6Rry85XErubUrqCoLo4yTht/yZcp89Iw9+hmQCtxFbv6lIeyJKY7Vbx
         TNGShBdQRmcsuRFWdl62OKT0xRuEHcbq/zV4zjER2o0b3mSE7b6+hgueQ4UEzVrgpAQk
         Eeow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=9EoaRHZYQWUTg77cWDn5RvHZSYFOoPdd+B9tGVdPsRs=;
        b=rlGmwr0xJopCit5Q4TW7uf2iTps0cd8rcxWwM6EcOlrfATjIdUdKIYSnarnhQTKHk7
         MeTTXwnP2TvbcwvnpliSOvPHXhw8yZRSrk7pIJjMg3PQ83HXCD8fnUgf0IG9t6aLYc8C
         zPwzTUh1rqkf9PCdHB5AaDcayjknnPN4zcxUNMetsMLXjFIaf/vpmd/zArd/OUmqbs6S
         yVvHF2LfMbhfzIq8XoOnsXscNfur4jxXERRR89QLqTmo/MkYndDgPkx7ENiyfeozTRre
         OZGdvlUX+HyG5nwMlea2OrIMXE04MYChDp3yqX9hR9SnPHY4HWRGPaU+cUMiCn1NOEq0
         sJVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=M8xWXfRV;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.107 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9EoaRHZYQWUTg77cWDn5RvHZSYFOoPdd+B9tGVdPsRs=;
        b=H9kjGos42F5R5jeBQa865jRunHmvhzVe3qbfH6eBr716tv5nDK3FoPah/GdP5tILzR
         QqwxRVMWQS+Kkos4NawQiDNe5iNfW+bRCnsYMkJXNPoVKWQ2fDt37QGRCJWp9nPU0Ixe
         5dk2Df2z3hWD4DgPks9eTmdyxdsuqtJHxwp+SWxp9g/jeoCuRvxdJS+G7OALjQv4rays
         1A/G11unHl3utlbqtnNCoFtc65/Jznv8gGKu1uM2SY64vwXr4hS7k3gbRNBLcC40O+z/
         ydOtpLxBFW5vcQMlOHmZqEhMd0oriFxqd7jctHN1X0FoYBmx51ZxHIkpqrtJeKHqot7y
         1mWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9EoaRHZYQWUTg77cWDn5RvHZSYFOoPdd+B9tGVdPsRs=;
        b=pqc97WvC0+CgJ7ARNgfVbl0l0TgvWg+3Uqk8kp0fRe5syYsLA/3qe0jpS+2tjxyDjX
         GIRqR5EzjGm/3JCm4X3/u461QU7Q6C/yQffffp/hGwJ8S2dS6WNiTZ+UoSUmtAHxESbx
         suQv+/6RCw8W87CfDq75AL2TgXDrfVe/9431TA5xrCmrFGo6SyCiXSQlCpP42CTQqTmV
         R+XFPa5XI8k9JGezjQTGDygz1PNbjyasCF+3/R08yKF9dOFtC4lwezlowhdKvvkf0JVJ
         Z1s0n8SKZRYDLkKVIyz0jr/ZM+ysEZG4q9BNtNqZLtCsoLRSY8bovLiA8xMrnGYutGKO
         5Bog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NaACHLsXnM+/kPeUQ70JNmL6z7qlVnfwA1wsLO6kbufvKn+FK
	oiDKnKWvtAZFduudLCO8FBU=
X-Google-Smtp-Source: ABdhPJzQxfS2vU935ZkgT+vb+9W9tG4b8LqBFfPM7N5+f1RpmhKg7/0CHUY1o3RzYtaDyOAB5hs2ig==
X-Received: by 2002:a92:ce09:: with SMTP id b9mr12336715ilo.69.1610749080885;
        Fri, 15 Jan 2021 14:18:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8356:: with SMTP id q22ls1607858ior.3.gmail; Fri, 15 Jan
 2021 14:18:00 -0800 (PST)
X-Received: by 2002:a6b:e615:: with SMTP id g21mr5661188ioh.31.1610749080305;
        Fri, 15 Jan 2021 14:18:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610749080; cv=none;
        d=google.com; s=arc-20160816;
        b=H0bnoYYLI8GoGVzz5DMNwA00s/Ov8aU3o0sGvdAlsUDX7V4FZdY57rH31bPWvSRaT6
         1LuZwdN6GgYRlNyjVCNUjXbq6WNHf7x1QVwTCC9WEweNbT+TWMVbvnFkSpTZ95rf1ZRb
         eop3M3qYwyA1zzBUvPd4yAcRti6EpHW/SY25T7PzrhH7CEde5mc+HGn4BXyLSny7D5t4
         WntFdK554am2H9mOeTfgU46ywP++bTmSqFFtB+fBqLv4Ix8QD4G+yA6vzuGbUnX4rfQA
         y80cxXRKErytxyPI970fVhKNKVhFKOy+/uchDTuiJFbDkaSn2BbKB0XgyQGc0/V2+gfv
         GhCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=V9FjvqDyuK15O0+zdg/gKUUlgwJunY4oNeLjPDDL29A=;
        b=QI41/r7nPicHfAumd5TfUq6b+PYfRExhBiX8LZdRzBr6IBR8R4YTYCVEJVGnb6qV2l
         MGeY4GhZBT3v0Ex4J93uQyIoUgFH8nmJ02hCEaAch9vSWn/v54HcyhvZgiCmq5kLUeME
         d9hv9xQMuLmxiU+tFvALvx4ObE6hXTqwN8yVO61eIT5xpLE/XQkrDWnkNn6VY7DAyF00
         7tbhdVJbtv4XWrITbFybbsUfIDhGAAhQAU7ADR836SRxPhqrBCQJSWcb49GeAha1lp2G
         N2LZ9Z86KXmz4cTyzSIEfJKIfKbA5Ijxa2K2bOLZGlOwN6LCrxIpue//dcSIhk8sYDzn
         +JRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=M8xWXfRV;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.107 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway23.websitewelcome.com (gateway23.websitewelcome.com. [192.185.50.107])
        by gmr-mx.google.com with ESMTPS id b8si1229138ile.1.2021.01.15.14.17.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:17:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.107 as permitted sender) client-ip=192.185.50.107;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway23.websitewelcome.com (Postfix) with ESMTP id A45559628
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 16:17:59 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 0XPrlSgZCsvw90XPrlkCHm; Fri, 15 Jan 2021 16:17:59 -0600
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:50364 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1l0XPr-003Nk3-DL; Fri, 15 Jan 2021 16:17:59 -0600
Subject: Re: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210115184826.2250-1-erik.kaneda@intel.com>
 <20210115184826.2250-4-erik.kaneda@intel.com>
 <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
 <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com>
 <CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a+Zgs6ZnNxohzOhHg=g@mail.gmail.com>
 <b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a@embeddedor.com>
 <CAKwvOdkB=Uc3Cxcp=UFHMUnCLNj9k5XkVoTPJN=wroN+Q1Zy=g@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <d5352af0-0bab-58a2-125d-4d6b7fc3d38c@embeddedor.com>
Date: Fri, 15 Jan 2021 16:17:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkB=Uc3Cxcp=UFHMUnCLNj9k5XkVoTPJN=wroN+Q1Zy=g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1l0XPr-003Nk3-DL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:50364
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 8
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=M8xWXfRV;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.50.107 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 1/15/21 16:13, Nick Desaulniers wrote:

>> Yep; but why don't we define it here as fallthrough, as well, instead of
>> ACPI_FALLTHROUGH ?
> 
> IIRC that's what the ACPI folks wanted to call it.

Oh yeah; I now remember that conversation. :)

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d5352af0-0bab-58a2-125d-4d6b7fc3d38c%40embeddedor.com.

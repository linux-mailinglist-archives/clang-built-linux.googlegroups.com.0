Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBJUERT2QKGQEXOVAI4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A911B790F
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 17:13:43 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id g7sf4903976wrw.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 08:13:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587741222; cv=pass;
        d=google.com; s=arc-20160816;
        b=nHuyz6NaUv5AyTojEtcsNKufcFgiSZzo8/ek+LZTsDdJweB8CR3+8WXvzWi2ixFQee
         LE58ekcoDnaulLoJlGx0YNoWjYto1duqZfGWlfBJ+okJC2HiNX7MpDygFNWsDe3IYsMk
         H0nFeBorm7xsO/Xj/MNnQ3pFD7yVLSRdPo2U1p+dgPLxdY/ae5XJuA+FF3Hy+QpFEzdL
         UpNL+wVu+3ekpUj/Xl2U3wxYqGYuYtcdQfzXWbhQUiPytcH1UOgI7g1Xeab/kgcH0Mj3
         a7PTvDbX6+muYJ7Ibg1V6GDLf5sHEc+Uql4BdrqtrkXBtKfCfMquvO5LrymX3L3eNXQo
         SuQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=Vt2IXXdvezCJoww8I+J5ggI+Nt/23u65qa+uUNyfwBE=;
        b=REuYSUa+ozSIwLNZa5QNWjidVfr38P55yzNslJZ8uDWeuO4dOYiu1h10zlq5omxEsw
         FhFrLEx5eSyKGQ2tNHD/rjEOT6mhl4VKO1yxE/780bCYj+S75u+x260oCG0e+Udp51P+
         pDdwRO46Li/k18bMLcx06x+QeI89uvc5ZkVNatLtqlwy8eXMSk0xb+W1ffL6E3rKyvyg
         ux7D6ktdAa1Jbr77mLD10V9LSBrjY7pWMkrtkvqr8ETYUr1U6l7xKdoPF42J6p4alZqt
         /keXibwRwLaZ6S92XW/0cl4yPynOvKydB/NV7KXWcsOk2BtvQ9PU9xxWKIwPbopYuHtY
         sskg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=JRszSWBI;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vt2IXXdvezCJoww8I+J5ggI+Nt/23u65qa+uUNyfwBE=;
        b=HLdUzzFjXGrp30VLF/0HPwdkuSBNU5+LCUkLmXzpzuO1ZhVYW4LJWM6hmdFEDsSVos
         nhVpvHq4o9UkLaFFnDkL41QN9Gh/p3n4ZPmARQ39BlIyeIsDR2IFHCItDS+aPTFoyCWf
         Hi1jFMUERw4xqT3DffBi38qD+xOplZ0SbDRb6w5IaeAuOyOBgvlPLp3XLZakgwfhkYK4
         44uYQwAodDHkt0HJWYjKUccY/7k6boccG0BnPtrauc4ErZsWN5WgQ6vhFXjRMDoZDQMg
         ZUuzDbe2vnGCbqjX50kFnK/NdhTItEdgs7fMW6kuLFXnD2EklFe03RIx00TT5CtmjaZR
         fvVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vt2IXXdvezCJoww8I+J5ggI+Nt/23u65qa+uUNyfwBE=;
        b=PWNNq516yzy6B0lsn1upbZsR1H8r6K0SxE9b5FTjexLYG6bBumgo3OKA20eqPMgF9h
         OIb+vUodv6ql1x121F3gdCfkT6a2d2WicTOOBdzdsHAbqfuDuaF54ZVURMZZDssKr+/X
         NQcRTH5XpwoCDSuL+GXGXbPioNQnlyIBXZmhgedolbtjZFbXd1IXaDpf1XLt8fzRif9Z
         CW8xoJBtyLPSDF1h7NjJPEAW4rifzGQRVEWp9AGxEziuLxq7uKfysn1BrEfNH7ArTrvX
         WcFpdDxEDCfVN028M3WU7y8rXVBKQIfEUFMhAcL5SYjpg00NO++s/j5bU80+z9KPnWAf
         W8hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYHAIMlzuwMOBctOgdt9X7/Ge+NE+vTiSo0H2EsvKHUUmDXo2rg
	66x/pdHWX7oOErEA6xd68gw=
X-Google-Smtp-Source: APiQypI4qxnlgdT+dr2cWgZN3Zcqny2rfDsq0ekD8hBsWhqk1vuZ/PuboALvUHiqbp0+QpcoE8MFPg==
X-Received: by 2002:a1c:f615:: with SMTP id w21mr10170295wmc.183.1587741222830;
        Fri, 24 Apr 2020 08:13:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4a83:: with SMTP id o3ls9782780wrq.7.gmail; Fri, 24 Apr
 2020 08:13:42 -0700 (PDT)
X-Received: by 2002:adf:dd8f:: with SMTP id x15mr12458160wrl.201.1587741222266;
        Fri, 24 Apr 2020 08:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587741222; cv=none;
        d=google.com; s=arc-20160816;
        b=V7Xo47FEd30KxwLxx1045lj0Bpad6aqn8C2MpROJl1E+xsOFJUgnqQCr4oX+Y//Ic8
         vFhlvuG8oxb+JFoyXNuF69BUT7n7rM2Xb17IR9RevJ1zuinQ+wvrNuw154auVoK8ijWA
         b7L9gUB7rYae1QQViHj7fKK7mT8ulwgnXnmfFSJS5lyCPu5TB42bH+2VfBtkJugTwHqo
         0dbIOwJUc9ogNY/GZftiA1wzdXCMXwtshxqclaolC33MW8hIBvvaO1Z7aSBv/OAejST/
         eolDuii1IX4oWqbjvF98hObDvYQ6hgcSzf68UKDjA2ECrv77ylyudZICFX6MKTZT6deO
         zM4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=GtcnpGsolmgR53+FPf7YoLxFdbs5TBp3BgCqahnxZ6Y=;
        b=OeEZ/jP60HtQANSz2UwNS86DEavhjftoBncwgPtPt6JuTdr3tJr2kZ4yvLZeSU3q29
         /VmwQiZRA15BHIzOBpO1LxrW4TNTkFnqsD+WQEb3G2k0qzGd1fkGFkPR0yIRMoSTrSZS
         ynI2rW2VygSmLvtkNAIVmJ+BL5m6/vyEP2XvRK/ZGWcrx8ZhsMJyX1iBl0cQcGXb+Yo8
         +O4LsaCfgDFx0kJaHxf1H8lSJZgEGqxUJIwcV7bND6cYZ50eixv5X+9ptPGPMl+g60km
         BKJgNvy3UKKUm4KZOrrCJ1sUnlVGUQ6Ku26biBeonBTMNG26oK5Blfa0+L7taHX1eX8m
         I0fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=JRszSWBI;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.45.250])
        by gmr-mx.google.com with ESMTPS id q17si155027wmg.1.2020.04.24.08.13.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 08:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as permitted sender) client-ip=192.185.45.250;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id 0CFC1400D3210
	for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 10:13:41 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id S01NjSwjpVQh0S01NjbPVf; Fri, 24 Apr 2020 10:13:41 -0500
X-Authority-Reason: nr=8
Received: from [201.162.177.68] (port=57568 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jS01M-000a3c-JL; Fri, 24 Apr 2020 10:13:40 -0500
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <keescook@chromium.org>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
 <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: remaining flexible-array conversions
Message-ID: <f636ad65-b313-90e9-557b-856d44c2e14b@embeddedor.com>
Date: Fri, 24 Apr 2020 10:17:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.177.68
X-Source-L: No
X-Exim-ID: 1jS01M-000a3c-JL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.177.68]:57568
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=JRszSWBI;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.45.250 as
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

Hi Nathan,

On 4/23/20 22:47, Nathan Chancellor wrote:
> Hi Gustavo,
> 
> That patch in -next appears to introduce some warnings with clang when
> CONFIG_UAPI_HEADER_TEST is enabled (allyesconfig/allmodconfig exposed it
> for us with KernelCI [1]):
> 

Thanks a lot for reporting this.

> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
> variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of
> a struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_create_cq_resp base;
>                                         ^
> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with
> variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of
> a struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_create_qp_resp base;
>                                         ^
> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with
> variable sized type 'struct ib_uverbs_modify_qp' not at the end of a
> struct or class is a GNU extension
> [-Wgnu-variable-sized-type-not-at-end]
>         struct ib_uverbs_modify_qp base;
>                                    ^
> 3 warnings generated.
> 
> I presume this is part of the point of the conversion since you mention
> a compiler warning when the flexible member is not at the end of a
> struct. How should they be fixed? That should probably happen before the
> patch gets merged.
> 
For all the cases above, the solution seems to be to move the declaration
of the "base" member to the end of the corresponding structure, as below:

diff --git a/include/uapi/rdma/ib_user_verbs.h b/include/uapi/rdma/ib_user_verbs.h
index a390a667b3f3..e05538be8b30 100644
--- a/include/uapi/rdma/ib_user_verbs.h
+++ b/include/uapi/rdma/ib_user_verbs.h
@@ -644,9 +644,9 @@ struct ib_uverbs_create_qp_resp {
 };

 struct ib_uverbs_ex_create_qp_resp {
-       struct ib_uverbs_create_qp_resp base;
        __u32 comp_mask;
        __u32 response_length;
+       struct ib_uverbs_create_qp_resp base;
 };

 /*

but I guess this will change the ABI?

Also, notice that:

"A structure containing a flexible array member, or a union containing
such a structure (possibly recursively), may not be a member of a structure
or an element of an array. (However, these uses are permitted by GCC as
extensions.)"[1]

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f636ad65-b313-90e9-557b-856d44c2e14b%40embeddedor.com.

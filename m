Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBIHKW6DQMGQEXWMVFEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF413C77C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 22:18:41 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id s11-20020a05680810cbb02901eef9e4a58csf11455363ois.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 13:18:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626207520; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3p2UFrFRhLQ/NtZ72qdnGGEnH8KS5607H1wSTenEY3+AjnPIgcvO+8Yd1vRk4MLPT
         NdTv2SEHOiVI8iq0hyWuUdoplCdU+y1BWBzfKsLAMP3Jcg18ds7UechxaFVKltV+IIMq
         yrCzABB6w3O3RHokYlovxzxer8wMLErW+ETAPZBcmlQowa3jZB2idnuR4vQ4k5pJJdvH
         e6XU61H6VZBg2Xd0WTw19CPqVna1mXaqVrBNGrU9DT3B1r0+XvIStUQsFhII584jArFU
         TLJupKLoREHK1lCMjsHM5zdVWoI+pNDucFjlCNQksfAqCVVFDo+X6s1MreXldAeqdm/6
         vMNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=afQz36lLddG9qfrGrvDtt59x/pY2Rxn9YFJ93pz+4OU=;
        b=aWjF9HBhG2GcQx/H0QczBC9XL7YAQxzBJqfLt3ed9x89tTsZWI/C15nnlvIKVsNFU/
         STpwrsuaPMmE1cVwTLAp2Pv6kWLSJEw7DpmVCJ2YPDhRTZgW2b/K6oEz9GukN0gCesdv
         78ydA3Z5V65sNlBFjnbbJpq91jKwTSb7XjcobO4AroSnp3zkyWMn+hykHqQyJdMQzEV/
         Fveu8SLT5FbaB6NA5KFhWtj5DcmqeMfXjV+FGsBbD6CDeDWVSU4+NPBLdcRCwjWax5KX
         5kloLZdaNceVZGaK5++ZNqnebr6TCyg5N7N1AZ5N3bQ8IiltSnbvb2VvwVamoHMARvZe
         WFUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=M11WCJvc;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.191 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afQz36lLddG9qfrGrvDtt59x/pY2Rxn9YFJ93pz+4OU=;
        b=KA5VwhWdOIBXRNtuj6CZ1aF9gxYayU2Xdqw/8IyCxkokbQ1g6zD5hpqU/ShD5v7L4z
         p72EBEdHp/DZD2RtalRCWdh59BIArs+QyX7I2dPF0HWzJcBAbJt/y1aaFasWULy3Nh6k
         oTR2Y1on7X1dnBGKiMDyD7pFuJQ5giMspv3F1xeBhQT8HmB/LBYzoA/Z8yeSIBFIRAak
         spy/bGzcmxoaKY8uJHneMfPUiQZEyBPcYWgehaBunrr2KGu5dJrbMbRxQQIRkku0FJgf
         gS6p/5krHo5aG6RgP9KBiX2Ddxq3aWeb0zO9JbhjxUvvdVd4eH1NP/spQ4Hnb8q2FgmK
         ttcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=afQz36lLddG9qfrGrvDtt59x/pY2Rxn9YFJ93pz+4OU=;
        b=mRmG9SiJuYUs64z5DJHp5k0jwtvy+F0rotQq7LU014yM+DbAPc4pfX2CwNKOO5BnDA
         44UY7n6RDFJA+hQrJckD2G0I4EPM32FqeHz0+FUp5dC0PBtR+GxZuiTFaN0qGHiQgQuJ
         aS8i21EBh/vXeDXCLQgcBycBEpM1W0AHtTyqPoDbrR/NE5t5aIXr2RsbMxLHkQgEBTar
         PjdeF6OcSKMMaq2D+5ev8ORRUHS/DuWuqH6ILJZK6ePu6Ei7weC2smfkkHiuDJ3J1CQQ
         MqTFUfC7KrKjcvOZK9NkFQwwXnKjL3RZBkhLVYjLlfVm6NdqcBw3A5Y3jkaTylCWil3a
         qY8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532skZHpTLfpow/etRozj9+i/JwI0ygIhX2rysAmEEgeHdQqJnsq
	+EOG4oTCHzhvCZrTWd64Sjc=
X-Google-Smtp-Source: ABdhPJz5wZYvozVKYUqW+VH3ESnTTz0BlaHkht7YopOq6Q4fYSCPKNTJDn0RIz7X5Bre5q1fQe43Vg==
X-Received: by 2002:a54:4616:: with SMTP id p22mr898751oip.103.1626207520561;
        Tue, 13 Jul 2021 13:18:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5ec2:: with SMTP id h185ls941892oob.11.gmail; Tue, 13
 Jul 2021 13:18:40 -0700 (PDT)
X-Received: by 2002:a4a:cb0e:: with SMTP id r14mr1458012ooq.70.1626207520152;
        Tue, 13 Jul 2021 13:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626207520; cv=none;
        d=google.com; s=arc-20160816;
        b=OoJKxdM++6pf82I+Ge3dDn3iDBUrjtEjpF4ZNkYdoNWdkmS36IN6iwiVlJX1d84H2R
         UA6sL6QochrQ7HTNYDHUDJFwv3eIvcs/q9qGoFvKtKR4A5y7taujhtf+N6zThhRuG55e
         /yP5wDxgBjFg5gx3iaVOLWOkwVsL7i4UxugXuMl8inTLdOGJPVQeh14hGenZZNtD4huN
         D9swBOCjbOohHNB809QRZnLxHtu+cxIU2G1m/CBNc51fzExmX9BDKGpGaUlJROzoOSHv
         rCpEdK1w63V3e9n+I1F+wS57cg2YjwNhyFh5h6Xa0IbHlTxCp0ZP4VRcxIG5iC4xhRE6
         11Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tT/2zOxCCa/v/Cl/TEcxf5MphWoiOsvd5RryW/Gaof8=;
        b=dXdVrxxFaStFmeXnEm1et2HTLt92JBgM3sCZdkfX5dAykl+wOrcdrA/s3KRxEDHNm6
         oQ4IXecN7NVTHIPqehm2pQtxiDW6DwNio2Zxa43QbmZc1UdtcsYBrWfJqa2Q140kHkzz
         5C77eg0mXDT0rRopxHes7SWtlTPWJgwWuhU4Skp2qNrNsOyAQynul6uwKi7FIPPrYRQa
         PlXXFQSpw9I4mdtueU0tpvnIZpx46EeZ5n58uz6k9C/r/4v760tkcU/UnnNm3ut67eRp
         ocp3246n27SfmFKlV26luf5YDnGdTn+08euk9Trbpox0pQ5IzucTwzzhlTULtmbbQGnA
         wC6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=M11WCJvc;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.191 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.45.191])
        by gmr-mx.google.com with ESMTPS id m22si228oie.5.2021.07.13.13.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 13:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.191 as permitted sender) client-ip=192.185.45.191;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id BBEAA400C95FD
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 15:18:38 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 3OrWmihnkoIHn3OrWm0MUI; Tue, 13 Jul 2021 15:18:38 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:47084 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m3OrV-0047AA-Fk; Tue, 13 Jul 2021 15:18:37 -0500
Subject: Re: -Wimplicit-fallthrough in -next
To: Nathan Chancellor <nathan@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <26936f8f-b8de-7c52-0112-7fa63dc454e2@embeddedor.com>
Date: Tue, 13 Jul 2021 15:20:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
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
X-Exim-ID: 1m3OrV-0047AA-Fk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:47084
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=M11WCJvc;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.45.191 as
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

Nathan,

On 7/13/21 11:03, Nathan Chancellor wrote:
> Hi Gustavo,
> 
> Apologies for the HTML email, as I am mobile for a few days but I wanted to
> make sure you see this.
> 
> Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
> the work you have put into it! Unfortunately, it looks like this breaks a
> few builds due to -Werror and there are still a few warnings lingering in
> architecture specific drivers. Would you mind taking a look? They can be
> viewed at the link below.
> 
> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499

I have fixed most of them and updated my -next tree:

https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/log/?h=for-next/kspp

I'm planing to send a pull-request with these changes for 5.14-rc2 and fix the rest of
the issues for 5.14-rc3...rc7

Thanks for the report! :)
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/26936f8f-b8de-7c52-0112-7fa63dc454e2%40embeddedor.com.

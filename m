Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBCPYW2DQMGQESHQLTRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id A32453C7405
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 18:15:07 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id j10-20020a056a00174ab029031e1e93e88dsf15587028pfc.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 09:15:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626192906; cv=pass;
        d=google.com; s=arc-20160816;
        b=nv0hkEkpV2CTqST2Ciz9jLGZtPaVMrtlsvF1z5D/6akaInQ4R37a+lo/+OKcZZzdzR
         xbRU7Gf/lAMVxj9UDWpnj0N8vEcC5zkb1aKdcojnBEEUEEhU7f9NTcbkqJkbdQUAz7Si
         LH7l6ikaS4faEHQfvh0IKVqZBahpFA828fTKQglObMPSyjbdamoQQtgrL/TmPLJ2gtgA
         B5h/LZaOS0/MVGWpZcDrjataVxmD0QQeysQvBsKYt6NDfvrPHr3VAhZXarPBTn7cbtXG
         dBQY2kh16ru6UdDJQ3MvOrh2jfQUQNO8nh5SUlEdMtjTrbLKjXf8JiXTBAbMtJk++Y8k
         dvkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RyUApZossQkxMbxCWTtJB/MrNH+oXpfhIsCdAIK2uoE=;
        b=Y4f7DalhNorlHgNrdikFenqsrFwFdHWu7O8EeiJzJELS5c8r3LDAdBNj3aOJKBdFfV
         YNT4DM8l158Dtax3xdxRWxFU2JsVAW/6218yc1EWXXGi51WhegU8BOY+w7j1PKkYJT7B
         /TDdOe82w4oMtiVeiUw1+g6NI7MGUUUuuWli48oBLw8Y7/Gm+kR7Rb7S73pazRCFPxTe
         Iaju87WCTYBz0M69uQFjln5eN+ewYGNXo8Mmu+OK6bQJBvKftIzZ0fMrmoTWsO+Euo+L
         DSG8LKhel3Dcmq/dpRC5/lyBUuN4t8+X0h0WGn6AkGV5cn9RqirxDj4NWXC7m21Bq8g5
         5C2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=a2Dkij9J;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.171 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RyUApZossQkxMbxCWTtJB/MrNH+oXpfhIsCdAIK2uoE=;
        b=aA4DQ4OTynbLKqM8s/QKEAMCSGRIlnUZSKQ782mDVJ0XHqxgfXbT8rMjTBFvc/rWx5
         zL/dF+yL6Ew4IshdWb0vb3lq9YcrUI3popmYQnLSa/71DuDc14mSrOyRQZEIRsESu8Q5
         iDdu+kN2MJKnq7ApFxZ8Si2M1Ys5S7b6IYtJc1wdNswUShz/vYFGHtasU4PLRqW+zqCH
         PJdM/yVeuJgwlpcnpgT/y9rDLeIh9utL7403m54fvnIOw6Xwcob15wifFebDlOCy3ayY
         xkSYOtRlilgMjKLaZ3GnRgRI+TXmrNITAW7XAAm8Z36gajJ1NPU4z5fMIrUVARK9BGTX
         vWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RyUApZossQkxMbxCWTtJB/MrNH+oXpfhIsCdAIK2uoE=;
        b=XIB6t/v5K3z7M70NpY9u3jgn8QKPRtBWyWLBeyjdq4w7twUol25ey0W4IqW3d6UbpB
         Y/ljb+S8gIILdiTuxv4YRkn0zzGLZ5Y7xGynQCInJY66yb6Tqe2HnmztQ87nLhRXF5Xm
         pZVmO3JSTZjMJKyUt5Ma69LSR2IHwINo8SesdxwTqo57pXIMz4JbIJlOuUUPj7dsG3hf
         0gvPUP0msVUpoICoOQiKvhAcBHcuruya/BPriS1Bdm70amA0xd2q4iFaxYRAB/r7FGVf
         EmRk4MaFGHSQUIxN5rE7P6dOp8MYBjDu1amCBXwKPatQ4JtcJmVEIpWWJrAx3SArT3N3
         4nXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IDH9b7VKA2JTN+Lzl0J8Bxz2ahTEdc6FKn/ILlutOxV267CsV
	/lwcrEbKjdY5rFT4Tuc1HCU=
X-Google-Smtp-Source: ABdhPJwiBeprzM4vhDvBvLzQeuv6FX+myf1YjNNzKT9Ybop65OV2EUuGscRAR/ECZNRRg+DrcEVlrQ==
X-Received: by 2002:a17:902:b717:b029:11a:fae3:ba7c with SMTP id d23-20020a170902b717b029011afae3ba7cmr3957918pls.28.1626192906114;
        Tue, 13 Jul 2021 09:15:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:24d5:: with SMTP id d21ls9412077pfv.1.gmail; Tue,
 13 Jul 2021 09:15:05 -0700 (PDT)
X-Received: by 2002:a65:6641:: with SMTP id z1mr5012289pgv.44.1626192905381;
        Tue, 13 Jul 2021 09:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626192905; cv=none;
        d=google.com; s=arc-20160816;
        b=tLGuXX4Uc8KQxMmqv3GUojl/OXV8+MfuGC24pIEIn+gUTLDF1kvZ23axmjNGSB0e/d
         2CEJ2w5DTdcPg9ucnZCUcdvoUuzkINA2l4dVDKwZCl3IPMAvxK6l3E8js7Zve07ciIAI
         1awV8eyfF2x/hyNHw/6GSLsZgXUVYL8AzpUQgv1k09La5fAcX6EaxAW1RvFPgi7/GF9O
         BG2KnIBSHOPhMSeM0o5/iqJUS/uf37Lxwuk+h4IX2S/rrzOCGEWEaM3E+Bd7IDPwFCxt
         QZ+mw2kniSgA/rUrSwV0UPECwMDzPfqGNifncDJngS5+xviaU/XAjqGn8eqZk6lk+DZF
         Tvig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=sob/jYZ+ICHMnKeN2+IbUq4k00ydiQQaht13e+sC9v8=;
        b=EC0Tenq5eKLWpKyC/YvmScS07ht9KxNyW5QC3S0ansuTMp528M3X5eRjczutw0wrMY
         rH4F64DJ0RihIp+4roO06+hxNdWg+ISFKh60cPZzHlrY1ikRKNlHAeA+epo1wUPUgA8n
         wNklPWIjVDQvDBblqiDDCupwhWceewfPznAMyF9E5JtMS7XAciFC4qClXcvmk4S5s9h7
         zx2cv9lQnR9ke13oAEwk2JSrDeEF3sxWm024gvyHhXnbKJ38laEmf0LTW3h4AYibrLcx
         VoFQ7LiOd6zB+w+xNDmgsEVV0fh5fkUVXjYOLD+/NxPbnppPPWIiPWpQclZ/fghSEbx9
         UHWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=a2Dkij9J;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.171 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com. [192.185.145.171])
        by gmr-mx.google.com with ESMTPS id h13si88892plf.5.2021.07.13.09.15.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 09:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.171 as permitted sender) client-ip=192.185.145.171;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway32.websitewelcome.com (Postfix) with ESMTP id 419683B53F
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 11:15:01 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 3L3lmk8HdrJtZ3L3lmd30k; Tue, 13 Jul 2021 11:15:01 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:46140 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m3L3j-003Zb6-PZ; Tue, 13 Jul 2021 11:14:59 -0500
Subject: Re: -Wimplicit-fallthrough in -next
To: Nathan Chancellor <nathan@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
Date: Tue, 13 Jul 2021 11:17:01 -0500
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
X-Exim-ID: 1m3L3j-003Zb6-PZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:46140
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=a2Dkij9J;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.145.171 as
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

Hi!

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

I only see reports in this form:

ARCH=mips LLVM=1 LLVM_VERSION=13 malta_defconfig+CONFIG_BLK_DEV_INITRD=y
unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]

Is it possible to see the file and line of code that triggers the warnings?
That'd be really helpful. :)

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/91ca3e43-9fe1-ddc0-ac65-bd09950fb39a%40embeddedor.com.

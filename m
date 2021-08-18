Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBRM76KEAMGQEMKSFSEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8803EF99E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:42:46 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id p84-20020acabf570000b029026702f1769bsf880781oif.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629261765; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsXKwGeCA1UN2ZMu4WGxNa4ORVvqgkRLlQpOP8Ky3tlGrLUk2TgMThvzP1paYFSU/j
         F9UGrup7ndEvSTb0nD0+Pl1CRlrxcXkkk2snNjBDqavz0hUzoqILS7rEzEJ9xqf6vKX8
         27lcdvFKttzYY91knK+Re9899Lqi+Edd7R+KCSlibwIR4VzjNWsRxxUaZf/OUFMz5vBf
         e2nkY7lCA+aeCPZNhWjF7D7Hx+7QCOiWibJWa3XNG3ApGSFi8s1rkkXXAVNGJSgnPiWE
         p9bmFGng+oIMLv86VtDwZ3TtLqwJTyW7kEW+JeVywFveoq+MfWo6nD6POKk2VFAKUpwT
         ExAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=L11Vbb0eRaJj2zTx7Djz5FyWSt9prX41vTZbd9B0puY=;
        b=WXGKE5woQimsvlwo4VWT7G7ct0dmjp+PEXvau94a3tSK6J0nDREiaeXgeQyymsbdtG
         qdwaL4tw4dUys4onPb2ybBw9k0mh1JvQK8+FYnTuGhTn1SsIq1eRpL8d7lIdDjqBMf4g
         dcwD9cxj+6wlbkXYIyfH6pvGF1Zp2YubyEoXuTjzjCYfQp6yeJD2DeETeBBNWgIVETBx
         NS+dvzfKLSMvEvgFsduaz/UO+w+TN1x0HeYlAyqmpsAicwzoyw5o6F2XCu5ixeT4FTug
         TZq2QCDI+kWwi+IwOGSh54uifmJquJ9fT1Ofx6jGxjrrtdsGJMc5/BvKs6yhcKFx1vCb
         FK9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=be9hlQMJ;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.253 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L11Vbb0eRaJj2zTx7Djz5FyWSt9prX41vTZbd9B0puY=;
        b=VFC/KOLOvHgJGDB6JKNvA4AT7n0M9T1bL47mi+lM3QAYb6z+3NCSbqaLbsYnnSDDZN
         FBMTAk5htgRgw3TxQUSVCfjYqJb/yOeDFwgQPYRY55yVlxS0CGnopFfGZ+hIk21jxF4t
         mB1dSRM1VlEKi7vusKtNYw+OjfxeTLoe/hhaSpBuA+4nllBsBE9yLmfPDJ5tfn/ElUX9
         ZCYyDr/PMQJGlMQ4l5Zr8/cskhZwD+eiD9yZ2Ssj+g2k8ExrN7e3TF1K5AroC37CfjU/
         b1p3KHMUtZRVSZCzhfoF6Wv4kfw3TDYicsjyhrigJaqAhI3vgxsqC57rh5RgITCD2tXb
         ahZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L11Vbb0eRaJj2zTx7Djz5FyWSt9prX41vTZbd9B0puY=;
        b=F4iTgnuHR80JQY6MXRG15fkKj5Umq2YLCkEhepHPfG2mJJkIVRcNvWKcvKZcE2N+yQ
         pUs7qj9S5HUog47mSjc8tifKb4O2Iu6JpnJ5WgOIPBRTSivMiD8sdveHYUB6k8hNcdun
         zDrKy4+KT/7C+Wn9HURW01wWcidnyPYhRVW+jHDM2ENCpJkNRAvb12sDs9J9qW0IweBV
         MSq99Lowte9lC4ZgeaXz92ew2UNF1xm4QnO8waheZw+zVZNT/2FKmjlle74JG3xlLSDW
         Weh+sqPK2sMaGiGdMkO4LeWbAlj/OOLY9MQZ9HdWduxGpSs+s66W0KEwsSiVbE+ypNhf
         Vo4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309n1hV7+vhLSLGelJlQuztQ+sXHQjVFyDRC3oFbImb24Gcer1h
	GZnk4qZrQNxQX+yP3P+r444=
X-Google-Smtp-Source: ABdhPJyZTTGpAiVyX0O0t2bYiZiM87G/9AvB/dRu/dgGdAxQHswT+vZT9NkSdk9l0fjf/BXX+5uITA==
X-Received: by 2002:a05:6808:5c7:: with SMTP id d7mr3901827oij.147.1629261765622;
        Tue, 17 Aug 2021 21:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:440a:: with SMTP id q10ls244300otv.11.gmail; Tue,
 17 Aug 2021 21:42:45 -0700 (PDT)
X-Received: by 2002:a9d:de1:: with SMTP id 88mr5628920ots.60.1629261765250;
        Tue, 17 Aug 2021 21:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629261765; cv=none;
        d=google.com; s=arc-20160816;
        b=i8AsYHyd4cokeKqcuKNGdwR062eRnlVIo2Y4OTDWqhoRVyuyt+OFQEHoJh1xj8WHcY
         feBhq2k9y4aDsCQNqpF/6elvo+cJXZI176hRtq1G6rxdY9qrKDuALgZWq+UrHUPCU5Co
         kTKlFJBSrItDG91jeuXtwNRekyBrIzrlDUgHSJrG0PslkPS9iWZZCCl0kLVUPNJOR7kW
         6/OSCsL+IsIaOVdCAcksZVVitEQrjbujgN2pOhILK2OvhNvIVcbCogF4UTl6z1KfUoNc
         hTCmFP3QwMOaZY6+pI+2SUp9uyL/TFkLQ6qyYCe4duErzGTWBTILDCDFqat/tpcwygf9
         obXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fqWho5z6HDj4E/uC18IyWmSmTMfo9JPqAgS3dawEvWk=;
        b=BSLXg4+d2lXjD0GVOoy+MlrBu6RPn/zSfTmLVoQmHcx8XXq1EqdYAyQefciuZROz5J
         eo8ASpttjINFt3NhoYj5Ormv9zFAUVHapqCNT4cgig60a/u0sdIOb1qJ87n73zuNJc64
         eMdV4sh74e3E2BpyFnDxVZxBAhm74SrOuR4RfHpJxrZmjAEOhKFO8ITncbYwo6plUyEl
         1/KTpYrrbo9DKLfMYOAhZwkI2ohZUVH+fhE3OnuzTj29WjOAsX6IpZ9ExQMaOn/KVRon
         F5/LAsuTApC+mUlcz/uG4npbbwdUMmBSBr8TJXFPx6MXSiwAOFhxhJ63E4OiPu2qdUu8
         Fzjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=be9hlQMJ;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.253 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.51.253])
        by gmr-mx.google.com with ESMTPS id q18si263894otm.3.2021.08.17.21.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 21:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.253 as permitted sender) client-ip=192.185.51.253;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id DEB79228E7
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:42:44 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id GDPYmqnCCjSwzGDPYmBfcd; Tue, 17 Aug 2021 23:42:44 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:45490 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1mGDPY-002STB-9X; Tue, 17 Aug 2021 23:42:44 -0500
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Philip Li <philip.li@intel.com>, Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-hardening@vger.kernel.org
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
 <20210818042720.GA1645557@pl-dbox>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <d19dd1f7-3898-227a-3d7d-25cddb0434d0@embeddedor.com>
Date: Tue, 17 Aug 2021 23:45:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210818042720.GA1645557@pl-dbox>
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
X-Exim-ID: 1mGDPY-002STB-9X
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:45490
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 10
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=be9hlQMJ;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.51.253 as
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



On 8/17/21 23:27, Philip Li wrote:

>> Philip, how often is the kernel test robot's clang version rebuilt? Would it
>> be possible to bump it to latest ToT or at least
>> 9ed4a94d6451046a51ef393cd62f00710820a7e8 so that we do not get bit by this
>> warning when we go to enable this flag?
> Got it, currently we do upgrade in weekly cadence (but it may fall behind sometimes),
> and the one we use now is clang version 14.0.0 (https://github.com/llvm/llvm-project 
> 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
> 
> We will ugrade to the head of llvm-project master today.

Thanks, Philip. We really appreciate it.
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d19dd1f7-3898-227a-3d7d-25cddb0434d0%40embeddedor.com.

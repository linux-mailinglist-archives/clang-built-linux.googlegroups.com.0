Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBBUP2CCAMGQER537GZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA7637564C
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 17:13:11 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id b24-20020a67d3980000b029022a610fc6f2sf226311vsj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 08:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620313990; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q7kMcDcBOejjpPZzipjRwVTh1hwzlDi8B8yeSHnYFWreuEDoteMPsCdhSfYfdrXUC7
         u6oe05m85vY9H7jw74o15wdBiI1ClDa8lKjZ2k5X96Hh4qQSZjQhfrTpN9Q8ar4HetLY
         UbJpBD+9nfzpH7j1oV3qg77u0oW3Pyuc7u6KcEcMzMzWJPw/vBnyeqXeD3yLDCK6eIPC
         7IFqZdd1W/QTWZX45CJS3oOgQMgYriLWpKzfmraYhHzaEfcRx8Ap8sPjKmdEqjZPCbHl
         KNxx+lsUPh3ruSdYwRxI0MhhV8rbFsunUmJ7zIwYrqjOxkj3CEhjAvzZG3LpIZ48pJfI
         o+gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=82mH6FbK3XKPpCK3SaX7H6EPsnL5zELTMb6YGMIq++Q=;
        b=jsmSPzvrPkpvEKIY6jqlwT4pbPqG87tkOz4vcDdsoTnoATWDxEiZtwqPz/snfPRSCs
         6myvmo1QzMiRTgxAqK1DDMdS91Mu82akeuM0TwJ2sMSviVwyrKqXAEx9WSlr5AHTwXT3
         lb9ibWY2ViC5bjkFB2hS5ZQKLT8h4hH7qIybKKCmcN+s3TqLdCkCxd/V4HhPHKXnMTIE
         5iYuWfiDeLJKQMj0OgWig8LYKZvJ79154VfMkOb38Hk2fgFRZnQXqr8GwRZLxYPztIsJ
         JBXBjH1F9/3vA5qCQpvwuubfMKBsBpX25ItCyWMUiJVSkp4V913niK0B++W1L/UM0WTw
         XpQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.176 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=82mH6FbK3XKPpCK3SaX7H6EPsnL5zELTMb6YGMIq++Q=;
        b=m0tVAndsTlqFGdg75yupOT9z9+Qd+V0xpIiwU5d6wJZZSaIjX3Dzdi6YkFMPkXp65z
         VkmV5qjYFeJH6rigX72mn7PD+hJVD/Zov6njrkqHOMMJhRYdMGC9eduRRs+VUO3g3nsl
         reKlR/OiIjoPI6HEcMlpeaaXnvLEJtHsOBCiFpZY5pqMF6BDD0icGEZukEWRWoXbgaNF
         R8jAK0PJc5Xe/sBIDM+j1TL3IEoyv6rumVZXypNdDh4Ps+XpfjWU+qNCCIqQee1694S8
         MECLLhJ+4QSleLxMt/Ce6jxtZJTcKl9zIpWYPv0cIq47AVGquiebB/8em8frsHmKAbIj
         H1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=82mH6FbK3XKPpCK3SaX7H6EPsnL5zELTMb6YGMIq++Q=;
        b=PjAfOtLCfqp7makgfy6m9RTUWVE1XN3VHZIjcNsd+ilzY1K5J1Ng+wRsX3TJVpN/vO
         M30O9QmyamgxChOB2lH8XWag9budEJyOUvL2+DsDqbqtV0ifhNYtQTY3SEG91xLyUb6T
         b2YmzbsU2Ynl8Y5AnTie865Ko08ZOerfBztSuQAERvobyzmNVkfC4RHrv7mS2fn7fii2
         /06LkZaPRdfSIUEQdB4uMWrTR8W+T+rYJpBm1yQqTg1IGYXGLBFZYTp0JaCOxIU2m0Jb
         QUoPcXJAxfaD/2s85749uF4maDUrsFWbwZJtlFOWiQHSx9itWWyNX+vOXqCNCNMDXtoB
         2BVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UTpKmKhVwFZmRIYQpeW2euICmYF2svODmao/Vh35lorWwMt5K
	5os92PlVFEuMz32N9hKS6Yc=
X-Google-Smtp-Source: ABdhPJy4FFOT00PkitpRcKwJH5lHubWTo+2QBGRzrgJ74sAiKTEW9JZ9zkN2b7Y8vHQe2JrHRUEwNw==
X-Received: by 2002:a67:ebd2:: with SMTP id y18mr3945443vso.7.1620313990398;
        Thu, 06 May 2021 08:13:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:54d9:: with SMTP id q25ls319195uaa.10.gmail; Thu, 06 May
 2021 08:13:09 -0700 (PDT)
X-Received: by 2002:a9f:2124:: with SMTP id 33mr4503919uab.134.1620313989566;
        Thu, 06 May 2021 08:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620313989; cv=none;
        d=google.com; s=arc-20160816;
        b=sMGNeQ2xOgPmEQdYl01jkhsUciFXQvX1uJoKPV/BP8Kz9PqNQa3R78lzJkPWHIRk1q
         EBEarYqq37WWd/08dRapDqk8pnUSr9oSMEaDjUIpzoUVQ6uakmy0ydHI6ZUvBfDsQRER
         W2wij9qu2vUbfcedAvhDBuJk1SsbPKrqxxdQwIZFeApIXUtVEyQN4+Mc6MsaZX08opWw
         YyEzz0lTs3yI5Xd40jqhOMFqNRX5etIzcKZ/BbxGQyWnlqC0A3hDw/1JreaNai9L0MxN
         7h//9mqjaqGx7A70hypX6Zg384lr8/L/C66uJwE7tSZ2RSN1xhPkh4qJspHjpu0dPYis
         D1tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=pRnGiGHsKWfVBqXpARWMO9JiAiHKrow49Ba7ktw3qHY=;
        b=B1L4nV1ARl8/yK5pm+qKsH98/3B7GOVR4kyuSEtQSiZD7wOrplC/A77kLgR55rVBV4
         gnXA+U2fCF3mciF5n4fLm/mcYStaP/NLhpN3QzAhptg4lL/I6vULumL+1+IkqrloMRp+
         bhiCyePPpALhP6ug5Otxmfj6MIiijd+zwcD2/BtrfwgpBDVHbKLj2EeUMXLV0LuX3DfH
         AnGeaN8+eGS8tusFXKby4I+WrYHgFQ/HFY9aVkduRseE16Bith/vXwvTTV92NIpdwRCL
         e0zZ3KfSu40puBJeLyB6zO4hXs9bxJ7K2HCl9/URIUla2miZWaCgiKDnkGFthF3NRFpu
         x/Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.176 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com. [209.85.214.176])
        by gmr-mx.google.com with ESMTPS id x190si151488vkf.1.2021.05.06.08.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 08:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.176 as permitted sender) client-ip=209.85.214.176;
Received: by mail-pl1-f176.google.com with SMTP id n16so3553875plf.7
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 08:13:09 -0700 (PDT)
X-Received: by 2002:a17:903:22c9:b029:ed:7d2a:8d13 with SMTP id y9-20020a17090322c9b02900ed7d2a8d13mr5001619plg.72.1620313988091;
        Thu, 06 May 2021 08:13:08 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:c791:bbbb:380d:7882? ([2601:647:4000:d7:c791:bbbb:380d:7882])
        by smtp.gmail.com with ESMTPSA id j12sm2374018pff.49.2021.05.06.08.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 08:13:07 -0700 (PDT)
Subject: Re: [PATCH] ib_srpt: Remove redundant assignment to ret
To: Leon Romanovsky <leon@kernel.org>, Yang Li <yang.lee@linux.alibaba.com>
Cc: dledford@redhat.com, jgg@ziepe.ca, nathan@kernel.org,
 ndesaulniers@google.com, linux-rdma@vger.kernel.org,
 target-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <1620296105-121964-1-git-send-email-yang.lee@linux.alibaba.com>
 <YJPUQkQCS86mS9gw@unreal>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <b67909dc-c5d6-a8ce-5bea-36b1c7a2b04b@acm.org>
Date: Thu, 6 May 2021 08:13:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YJPUQkQCS86mS9gw@unreal>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.176 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 5/6/21 4:34 AM, Leon Romanovsky wrote:
> On Thu, May 06, 2021 at 06:15:05PM +0800, Yang Li wrote:
>> Variable 'ret' is set to -ENOMEM but this value is never read as it is
>> overwritten with a new value later on, hence it is a redundant
>> assignment and can be removed
>>
>> In 'commit b79fafac70fc ("target: make queue_tm_rsp() return void")'
>> srpt_queue_response() has been changed to return void, so after "goto
>> out", there is no need to return ret.
>>
>> Clean up the following clang-analyzer warning:
>>
>> drivers/infiniband/ulp/srpt/ib_srpt.c:2860:3: warning: Value stored to
>> 'ret' is never read [clang-analyzer-deadcode.DeadStores]
>>
>> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
>> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
>> ---
>>  drivers/infiniband/ulp/srpt/ib_srpt.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
> 
> Fixes: b99f8e4d7bcd ("IB/srpt: convert to the generic RDMA READ/WRITE API") 
> 
> Thanks,
> Reviewed-by: Leon Romanovsky <leonro@nvidia.com>

Reverting commit b99f8e4d7bcd and handling queue_*_rsp() errors in the
LIO core probably would be a better approach. Anyway:

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b67909dc-c5d6-a8ce-5bea-36b1c7a2b04b%40acm.org.

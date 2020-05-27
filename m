Return-Path: <clang-built-linux+bncBDH2DCX6QMORBLXAXH3AKGQEXDHKVYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86B1E4467
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:50:39 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id 70sf18212892ple.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587438; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFhUsAFK5Xx+Ip+PTZWVV26R5wSgDeuiu4w70LhU5RwkTIAwhEa9pQ5+Gg/oM99svL
         Ug2I9xLuD84u6qz7Xr10AOgbko5rLJg7ry09UUPs9r7bY3n1A44xI8/jxx6Ic3wdJSEh
         1js80szPAVRcxQo6YidXNYcebGeehZJjhxj1FZeo4p/6EIvJkiqCf+MZlv6pxeo/dIwe
         UGE0w6re9DK8UTU/IHnamvce0f5bkvbRhnL4/+2WS32sC0crfFV1Zu3qZhkp7284jpEj
         662lA8cLaVEU3V0yJ2A/0YmDfmilkDjTyVBOdYmRbdcZszdJM5QJCnKIBuVjTzMuld+f
         y/TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=6XkcPkMU0SJXt5kupW5Y5Sle2UBt1FC/OhvyR4UV/bQ=;
        b=jHuG/nPnJplI0JzxPvlrZSkBsUgO5OUIB0yB71LI1dh96jzFYGYbNFIY4xn9Rs/8ZJ
         cflHFFQmAxrDlpHhUtvi6kt6XVqwQJmQeZmox+UntBb8pHh5u3C6Q7Bxk4FlkizFXd9g
         vIZwtXq9nbOxrT7wlKV21AL/JCxx26gtr2XdKRfURq9PNcmMCEZ8jDcDxKXiHuMzXX0T
         LrgqqSW843BK749JkE0iTnli8KNx2YrcZKvXC1h4RcML2pgw9lRloD0eDaETyqYDQm9e
         nUUEEkSImvsGe6FYeela8ZWwhCaz8lXfmPRlFsNMLwct5+DGU9WsWE/m0IICyAUQIPaW
         43LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ma0FMBM6;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6XkcPkMU0SJXt5kupW5Y5Sle2UBt1FC/OhvyR4UV/bQ=;
        b=JEa3RUWek6ZvXFvV027lddbB73OuHQiJDXaXixaChniJR6sJln2+GRJxIk7zPzMZjk
         vDVR5HkIcc4tit+k8XjbcmsilmotN0JxYZKiDM4cMQD+Xu53FY5YujxcJ9U8g7RKSTR0
         ai4I75/awTlc5rEIm1A8kd5gg9q5bE4oQvHAeU4BNq3DY81vinVFtD1ZzTzTgFpJvTzq
         QHaTiuMK9dPalogYqX3z1erTCjaPoFTf7f4kS/rTyxMlwC1YeLxOAXaAPeYDYQ2FFIEf
         TjteBBokWF9qWuz81Qo137CQsUl+HhgPlfZEy3GXxYUf9qQp2zpVPLSfx0yLf3fPWc74
         viig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6XkcPkMU0SJXt5kupW5Y5Sle2UBt1FC/OhvyR4UV/bQ=;
        b=Y+euLSenWkIsNuUoNbydccLkPG5fETZrQ6/37t5Pqm0zMPkpBJ5uPD1K5hQIb/fgq1
         CdM3PnYzbOfkvL6qcxQApwrCPo2uW5XrvnMNxxGfNbi5f/PPXQTAvFClUfPY9p+vr+/a
         rkjMY3QutwrIu2WneBYzry/PGc43WAeNTq7EWqk/NKVESTkCeAN9abxseYN56TA9GZQI
         897HkV9V959KAV6IuCVfIp0VNnzxgJaEKYxW702kWFEIeDOApqmVKcolkS1/wMgEcZXT
         WnFTIT4W3WobHgeqqGTQisTPJ6aZbd1VrIe+sUXCqv9VPZC8FC+T8R83hw2qTJhIRqUC
         Iltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6XkcPkMU0SJXt5kupW5Y5Sle2UBt1FC/OhvyR4UV/bQ=;
        b=GdfKggKt+L/ZH39OFl8LM458Wz1qh9GMOHg5dGuCRuXFzbO2kQ5rwl/dQfSlrU+JLh
         D5ddJanKrxxFbZXRUokl3Y02w2WB9ARwdPP81oGEYFwZ3zrNVeKjalvDtfEew1LKZ7pI
         gMVScBxQwSOYTJ5c1b1qIPUkngGWzwX6ddABya6iWuuvytcx5BI4CIH2FPQf6GwY749T
         LYL9Tjnp7SIxoQWvLqIz9Tk62wV+LoEv4DL8q5L8UFxRnqA2G+rDULSbskDXJ6VSgZmf
         v3sXvnE9Dzlopxgbs9BgGhkdZsHo841muKnePohhix83frKo63pCP4jv6krlgeQTBF17
         9F9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53134ko7aCZoadtEdH8Ru+2mpUev4x472ieTt6ksvrQP0MZcsjff
	pICywtND106IUhxIkPHuRjg=
X-Google-Smtp-Source: ABdhPJwhsgnCPF1lY6vc3hceK6lTdx/R7tmmbwTAIbUHF2P1S+hEYeLSMnX29hRvXy4Y19PZRDLyGw==
X-Received: by 2002:a63:9e41:: with SMTP id r1mr3821392pgo.97.1590587438177;
        Wed, 27 May 2020 06:50:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7697:: with SMTP id r145ls2157961pfc.1.gmail; Wed, 27
 May 2020 06:50:37 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr4145626pgc.12.1590587437795;
        Wed, 27 May 2020 06:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587437; cv=none;
        d=google.com; s=arc-20160816;
        b=ndtO3CxyjGVcfyr5ZbVKIU2rnoEkhfZ6SLjSCx+QEUOQ2dZS8Vl8tQiVUzqdiwdPfV
         htm7+OsAI55AV2b3LZO36XagsUbliHiOfg/fcQZ0+QID2zKWwCgUblKiBOhxOaoHE/HD
         OkeiInBo21MCSVmWUZ8CTr7/EwnuGWzVmhyEAvJGN6iTzr1b7OVihXdun1dF/uObNImq
         5KTWakGVAtKYKqUd/CublBm4Hia55+nO+bc+AU0/46brFlu9Wz/MLUmAVxF1JwK/FyUo
         pzKYC+5RYl7cojjH5OV/aZaQqKc/G8iVbEila+IjrWDbhCE+2j7G8XbD/2Xg5X4iRwQW
         /Zyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=c1yMGFc/Yll5Sz5MGXdvhG1FugIsGM9W+ytuc/q7G4Q=;
        b=uT9wFq/KlTnboW1+HLvlJr5vuS+ETtYIlNOmKZVEIfM5QoeSKBL+6XTT502vC7BIuD
         a5tN9CnMxLfgwmxUcmDxX0Xcvpy1eTEV06VgGgJWzxeF3SG8ByJEFsUe7pD6yYii25dX
         08X3ms3AHi4DDtvOHcGgLgXwUVATdniT6agYUzqS2poebm76kqSp/xu/rGmsT8ejMwrS
         rDc/bHRZf44lb+gMN4cW8VaBNHxRbJRrw7Xi88UNqKdAmUvmnDKeKg0QocJFu6m/UU03
         uIQLWgKqXRakR6xSTDi8BocCA3WrpGwKBsC6DNurkC6A8xIyVbmkJTdy8x6fx3OAFXkD
         iJTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ma0FMBM6;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r17si185666pgu.4.2020.05.27.06.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id x22so19196392otq.4
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 06:50:37 -0700 (PDT)
X-Received: by 2002:a9d:23a6:: with SMTP id t35mr4652252otb.217.1590587437175;
        Wed, 27 May 2020 06:50:37 -0700 (PDT)
Received: from ?IPv6:2601:282:803:7700:85b5:c99:767e:c12? ([2601:282:803:7700:85b5:c99:767e:c12])
        by smtp.googlemail.com with ESMTPSA id g10sm57046otn.34.2020.05.27.06.50.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:50:36 -0700 (PDT)
Subject: Re: [PATCH net-next] nexthop: Fix type of event_type in
 call_nexthop_notifiers
To: Nathan Chancellor <natechancellor@gmail.com>,
 David Ahern <dsahern@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Jakub Kicinski <kuba@kernel.org>
Cc: Roopa Prabhu <roopa@cumulusnetworks.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200527080019.3489332-1-natechancellor@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <37961e7c-3f71-a095-f2c4-bd9e768fc05b@gmail.com>
Date: Wed, 27 May 2020 07:50:35 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527080019.3489332-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dsahern@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ma0FMBM6;       spf=pass
 (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::341 as
 permitted sender) smtp.mailfrom=dsahern@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/27/20 2:00 AM, Nathan Chancellor wrote:
> Clang warns:
> 
> net/ipv4/nexthop.c:841:30: warning: implicit conversion from enumeration
> type 'enum nexthop_event_type' to different enumeration type 'enum
> fib_event_type' [-Wenum-conversion]
>         call_nexthop_notifiers(net, NEXTHOP_EVENT_DEL, nh);
>         ~~~~~~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> Use the right type for event_type so that clang does not warn.
> 
> Fixes: 8590ceedb701 ("nexthop: add support for notifiers")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1038
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  net/ipv4/nexthop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: David Ahern <dsahern@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/37961e7c-3f71-a095-f2c4-bd9e768fc05b%40gmail.com.

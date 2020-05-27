Return-Path: <clang-built-linux+bncBDH2DCX6QMORBE7AXH3AKGQEROHZ3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE1A1E445F
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:50:13 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id k91sf11332258otc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:50:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587412; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwXQtQ5v/3FiolWqfxwYmiaYrr9ZI4pTIxBy0nGGiQ6NDLcQU9lnkQBFACiKaYsZuN
         L/rswzU2EKOV3TvpIGIReIZoPwQ4z0N9uthrypzGoq2an0/dlCfovPXa/OrJMKbqouNf
         h+jofu01gvBkkhZUbdz2eX3F4eVe+Cg39zJl1e2K6XZsgq6006/zHS590y4itL4ut/Ld
         RtS+uQ4V0ryUXOi9G0O+KhjmMY/nTaATjj415pB9E5bIDHHlDWAp5LPSiJDkAicbiyfa
         GAQZHc0uwGUN0AUh9SLCD1hQ+nwslxVVgY3YLs1kMurFiiJX0MxBI3BHanRfLsH8/l/P
         uRaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=jjSFSAMrfzMCxChPcgCO98EobemIN5qBjXLwm6/5EQE=;
        b=eOh+n1Pdvx30NT7Wg60euX+0M5do5TuORhjfU4k1QYYkEMUK0vIhoioY3xccb/mph1
         fEUpHFaTlqNKIJUo09ZbHkdUNOpRcTXIVCgYkQHP08LvT2J3OYPRw+VL+TwMB4U5GNLn
         fZwWOxdpDQJD5rG3a5GhDw6oG60yPuErzAzyz8OjvbYa8xYKAdmEC2aYdCnNT8zWgxZe
         o4cU2dGpljP5yiTdlpiDUo8ng8AGGHHtIvkTWDMap697Hx//uH3XENzOToChWeRdex+f
         doqPQ1fOiREC5HZtAxvXz2j/LEcy13KGwpFwlS/MFboq76Pk93PQ19kBMy2Z6xFi3yRD
         h0uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E4KWr1Ka;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jjSFSAMrfzMCxChPcgCO98EobemIN5qBjXLwm6/5EQE=;
        b=M15TC1q9N/jUOqalLezCe0yBXl1MUNyzNmu4PL/vDZkuDhcKCAgF9OVQpwEAIL1U5a
         M/TmByuCBbMvxMmuipYBlbByp8dx0J6ppSab+fJ/iWwJDVhFlqeC2tJgRicaOLgfPJ4m
         d8YG5qLiN7YtMeQfX8NDkyTC8mv274npPG8G8ZJr+TAeOpWKi8neOFDeQfpByER2eaT2
         zBLdRQImH0bRGUvj0bZEyFxFMZH6uuLBG/ferVZPVoIguRt9xGLLzY4bCC5zIBMcJCQy
         YW/YI/MeenMZx9uWa4Qthcz5f1EUIKUZiEk/PYL/WsVVss5jVq77LUonKQKQEVyDfEFa
         fTBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jjSFSAMrfzMCxChPcgCO98EobemIN5qBjXLwm6/5EQE=;
        b=H7u9ceogeMO37SfwBhgIflxyroBa6u50BMzZbGsj21ULga+TxlSa78LLe5Cs5S1FVw
         qJ+Ds4kBoca/6j6kBujnZFZ6+m1z2RexWBbnVRRIXWw9SJxBUoqcHKvd5mFso6yZsMh9
         q3xlJ63HRXfEUi/ZijOxqEnxAmVWUGsKAUucnoE2jmNQEWAF/vevvbycXmVY2tSHFyK+
         1Fq4kd/OnamLgVf6Leuxtw12V6Ss08IsmGi+f39YYSHVLB+GwtRl4uXnWGMDIJx/+2EB
         hJCcdDxlSDoqqBtI8V+gWjSg2/CexIPr4qC8MsUUE9x3cDkezBth2ErQKkOu4LSpWbke
         QJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jjSFSAMrfzMCxChPcgCO98EobemIN5qBjXLwm6/5EQE=;
        b=SgddlKKpST7pYKvJOGl7QhtrfspNSqVB7V8Fy4Xqu9a5n/5PULJAS2Nc/eFNiyWoGl
         X10G0o4fGzTYg5TdYmwHC7BC7nz8Dn7tNrj9vZknDiSkh69XsWeRII3jKPA2sk8o0Cob
         YnpN0bcMunz+799QNY3xIn5Jmg6e0VI8mmEcpPpeIVQHW6nG7OJNfoYXLiK0Y6IM185i
         72JTocqw3kFGO6hYD7M8h9vrV+tDhMaarAVjWS6EvxyqNsX/D1CQ6MZn0x97TZaQBz89
         jKN0f0hecr027vaTbi2mONrFcaLZwLmgJpE1QCY6P1sA7ls/fM9qF130cXUcTgWXrh34
         qeLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lXCfNIqO5eIeSyJg/+4t2nrydJRPkDBwIaJQSAJnlLzU4Np3W
	eoPpVZxhw099rwoCtfJCaXo=
X-Google-Smtp-Source: ABdhPJwDBWe4zVa2gJFrUth4g1PZ1jWuacTnjyV3dDmqjRyEiDD4UMSvFbYgD9vM3PwoOq5m/EgBBw==
X-Received: by 2002:a05:6820:28a:: with SMTP id q10mr3173506ood.79.1590587411914;
        Wed, 27 May 2020 06:50:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls2822727oip.7.gmail; Wed, 27 May
 2020 06:50:11 -0700 (PDT)
X-Received: by 2002:aca:1c1a:: with SMTP id c26mr2676459oic.147.1590587411654;
        Wed, 27 May 2020 06:50:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587411; cv=none;
        d=google.com; s=arc-20160816;
        b=wnxzRa/O4RvaWcW4ahUZVUDzqD8IvC15FhEl5hO847MJMu5pl4F8yZQj2u6EZryrd1
         rQHWF4XJmw9m+V0UHNAN2PtD7TzrYNHPefSd6xt5KsibZIlKAQXIhiUXxXlFfKiOVh71
         1eBwzxxTBboR+fjn8ID2vJYDIVaW+1IRWx+J7uvjmVYHMN27TNPU8wdstJUGuENtTH+R
         gsixB3M6kj+W3dOQ7zDXlna88sjkii5wKtrVJ7n74ZM/+v7/F+gAH4WdZx/HT7vws2mj
         0FWlikang0PX7lYsbgUfr358FIPzvU2aMobZyWmKfB4Qu37wsmmh57rCXUWYGPQu8aU7
         iyUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=a1TUEw5/JsL8gsEryhTxvgCweegsIr/EsyDfyV7zWRU=;
        b=EdGhb8vBS5GhmdLQ7Ck0Rb5BVIBnLbhcX7wvUOLohpC4reZcImOFUlyUiCFuOHZv33
         +WrlXMOcJ27rh1gMN5XUrpEJRj0OCafFz4ihQYGWH1BivWr+o1sk0GcWAErjl1XiChJn
         7FJZjojrcffmakxnhTn1jrd1MBXs/BMtuFTOq1TQqaDSS8hxrL8EXTELRPPOgcwqmXvL
         sL1DQO1WUw/W7aapp74BwwiRbvFM2xh5OmxoZo4HWig8d3WQX+4claPkRSDTZP/5jj0w
         TGO3HRh910xHah1bC4H5S+21plCbipJGsxXCuOJ8vXkE3hzWfdOLC0NnrljwD876JGrd
         LThg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E4KWr1Ka;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id e20si278413oie.4.2020.05.27.06.50.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:50:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id r67so788694oih.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 06:50:11 -0700 (PDT)
X-Received: by 2002:aca:ba86:: with SMTP id k128mr2884972oif.60.1590587411208;
        Wed, 27 May 2020 06:50:11 -0700 (PDT)
Received: from ?IPv6:2601:282:803:7700:85b5:c99:767e:c12? ([2601:282:803:7700:85b5:c99:767e:c12])
        by smtp.googlemail.com with ESMTPSA id w8sm828792oie.12.2020.05.27.06.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:50:10 -0700 (PDT)
Subject: Re: [PATCH] [net-next] nexthop: fix enum type confusion
To: Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Jakub Kicinski
 <kuba@kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>
Cc: Colin Ian King <colin.king@canonical.com>,
 Stephen Worley <sworley@cumulusnetworks.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200527134755.978758-1-arnd@arndb.de>
From: David Ahern <dsahern@gmail.com>
Message-ID: <3722aa2b-667d-eef2-b901-ef0ae943f8f2@gmail.com>
Date: Wed, 27 May 2020 07:50:09 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527134755.978758-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dsahern@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E4KWr1Ka;       spf=pass
 (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::242 as
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

On 5/27/20 7:47 AM, Arnd Bergmann wrote:
> Clang points out a mismatch between function arguments
> using a different enum type:
> 
> net/ipv4/nexthop.c:841:30: error: implicit conversion from enumeration type 'enum nexthop_event_type' to different enumeration type 'enum fib_event_type' [-Werror,-Wenum-conversion]
>         call_nexthop_notifiers(net, NEXTHOP_EVENT_DEL, nh);
>         ~~~~~~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~
> 
> This looks like a copy-paste error, so just use the intended
> type instead.
> 
> Fixes: 8590ceedb701 ("nexthop: add support for notifiers")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  net/ipv4/nexthop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Nate sent a fix a few hours ago:
https://lore.kernel.org/netdev/20200527080019.3489332-1-natechancellor@gmail.com/T/#u

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3722aa2b-667d-eef2-b901-ef0ae943f8f2%40gmail.com.

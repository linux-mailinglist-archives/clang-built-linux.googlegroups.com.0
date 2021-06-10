Return-Path: <clang-built-linux+bncBCS5F7M6QIOBBOFQQ6DAMGQEIRIV5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0F23A2806
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:15:38 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id x7-20020a63db470000b029022199758419sf3981000pgi.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 02:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623316536; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vde8L5r0WsMwKbKT9RPmr72LpmIcrxCveNbZEzaHHLs5CxarWksG09kz0TV9NMK5SN
         tZeu7n+BUwYyHgUiNCAzkrGgcg1GILi+z+WCFBOWkJcdOaywg2Hu4uJ23FDbSxUdwKaW
         IsixPE/YbVtzkGgojmnbRVO8FUe44SDpaJ/lu0OxzGWkN7PYv2kxfHwzflYhd2VKbw4+
         LOBnxr9h1fwMENYAyC0fWcqeFt8CGjhD1QTR/U/1L48bToJXgBl71ME7qpSQsjOSvVTx
         zWFg68MWYXFKBPCh4k7gcd6Yg1EDqvqpVFkQsG9tqm6iUg04ODfNxHyZR/tY8K4zAJQQ
         FxZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wH6sJIrALqDBatEP4mJmngpkQS0ir/oA4/GQk27QrsY=;
        b=LG0ugWFSvDA10HpypOQ9wwcRaxTUZ4XvywtiJvEYjek1Bz/j/dnng8od1sIPLQGDK4
         0d46MRq8JQoXgrjWsL66hucU62H97oDBR5L5oo1nUSWkxqvXjBaJISP9wTtxTYLOyr/d
         VmuQEqoGizKa3cBT2J9/bdMIPVVhR4m+kdJJurfYx7tRvWIaTo2uKEAxSQ9bghnvhK3G
         zZr7o/SiZPod02EI5PvNuX0yfHaMIwameg7UY4X8KY5JAB/qFHCE4SSWZtWeh2BV58Zj
         CjBi/mGHHCAnYTyZoiY21c3IPm/IIjohTeZVyBqhYsaOGhziTqk8yaHcpKS2vGej8ODN
         fVBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OT9SW+pY;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wH6sJIrALqDBatEP4mJmngpkQS0ir/oA4/GQk27QrsY=;
        b=CRVnd8c37B+m61IRhO1JCbaGKGBbB132KbPyQtR64O0AuO0+v9h7Wosozv0Yf+ptPh
         2T+AKnvFXjA75NvmZgBNEJv5k2xhupG0xM8h0EP0ZAAO/mfyJTLPIENIgIaRrQRgtQGI
         +IxbLr08k0ooJGdN7r7aS8i9dwRccwSGqwc4IjN5OX81LKm5pyNpRyfiNt7QEZ80fWkt
         6LmxLSmCQE3gmYzX/EP7MNF1ZitXTI7nAxIy4cx5H90fAUrlQCYHtOKkQsvykfKmfHqG
         8CXIgiA3ztc0VTZaMOK6tRCR22VESzX0r8KzmOpNJ1ktbrqqBsX6WKgqXLb/LM3yR2Ct
         8ymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wH6sJIrALqDBatEP4mJmngpkQS0ir/oA4/GQk27QrsY=;
        b=BoEetkQzvx739I1o8+KpKF9m5ZAb+83t50KZuBYvIxhHuWE8M7RSp66tRoD5bwjRy3
         Xz3XymVnhwZAOQepksw/VtOBCBlGbucgVaXmnwEp4AqGizGzjwyvzOAVUlRbsjUDpY4p
         rdwO4XSDM+6+IhSPS5jdULaWDd3GWzg6CLTC2xGenNXvkabihOcRN5bdFIiZoLlAIViu
         LBNn2oeIkGWqqLSwCclBEYTifNcEilXkIq/JZJINsp+nl2ELcqkhpVUJUPv4tBuG0n93
         PrEpWzPWy0zJVXGDRGaQF6aFbrYetnPoHuMuD2n0UmLyRco/ACFo4xfAPGsxR5AElnhP
         5M0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sxDoQ4ff8fQ/5xh/C1rZVA56z7vbki1ljMJJCwkqaqGrVv5IV
	ndTYQKZ2rHSKbb44g4XpdMU=
X-Google-Smtp-Source: ABdhPJycKaJmLVk+WsWJVXWCrJwPrEV8xaMe078RUngmjx+T1zD6PLjl82hkaBdRHIJcwwFUV9KuYA==
X-Received: by 2002:a17:902:e80e:b029:10a:c1c:c6e5 with SMTP id u14-20020a170902e80eb029010a0c1cc6e5mr3714365plg.54.1623316536444;
        Thu, 10 Jun 2021 02:15:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1d2:: with SMTP id e18ls3137389plh.6.gmail; Thu, 10
 Jun 2021 02:15:35 -0700 (PDT)
X-Received: by 2002:a17:902:8493:b029:107:15c:271d with SMTP id c19-20020a1709028493b0290107015c271dmr4042490plo.68.1623316535843;
        Thu, 10 Jun 2021 02:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623316535; cv=none;
        d=google.com; s=arc-20160816;
        b=iRYWNFCIS58Mo9CBUP+Q5zr2kvbqCSqmUwt1SFkEn2O8giv6WZ2hrhLr7YTYzL52yA
         9BhE3LJpo493/T3e9xqQt7Ra6IfVHDFH4A7r56Hnv8h55exLDMwv0Sqcfd1CL71SG2Tv
         BxrNyxBEzszQSlCg4IRqR5PyWc60H0srNXXh8BQMElKJZZCqRoSLoWuENwljudFQy17c
         0pekuAsPFrxD1xfNgV5c740Oi5wpU9fVPtMk4tt1nogfSVz/ObD9EjWqnj9gqpY+mRu1
         m5xinUCi+t2eTJhhGfj1ucnbjnLbIoNsMOPxDPSjASdXBqtzQkENdA5xR4gch4QTO73N
         DQcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ddflb+s18g2mZp/XRM9dirLH5LQbiPlV2t6L/Ctm2gQ=;
        b=domqqKNvTX+ktCkk7e/MHP2EeFlxykDq+DuFTIUUnUwxKcSRMYG2kbMuIZN2oCygHO
         s8wQHZYzPlaW/3xCbpYgNbGvTjlABs9MUiGqOXg6N+M4pCfDHsdiS0p0LbQN707REq+l
         E6iaXmXqkas6SGOIkh8qx7CRlXsXYr4t/H16xgx6QdHCT5a0ri9PU/hpOSDYyCVSHf/4
         LSB6vQlTBqFcfDhYylkK8R/WcwBZ8ULruYjcZzhrfjNY4B9BMaOQp1mNfmyusKHnZz4D
         RCJbOreQj+joWDD72fIGwsIHdGCl97HV/3w4Z942Iy/iu7qNpf1/VfvOP96lhJHWXgQ2
         DM3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OT9SW+pY;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id c23si256130pjv.2.2021.06.10.02.15.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 02:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-oRh7R-LaM6y8LjWXxpQc7g-1; Thu, 10 Jun 2021 05:15:33 -0400
X-MC-Unique: oRh7R-LaM6y8LjWXxpQc7g-1
Received: by mail-wr1-f69.google.com with SMTP id z3-20020adfdf830000b02901198337bc39so611311wrl.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 02:15:33 -0700 (PDT)
X-Received: by 2002:a05:600c:4282:: with SMTP id v2mr13879322wmc.18.1623316532306;
        Thu, 10 Jun 2021 02:15:32 -0700 (PDT)
X-Received: by 2002:a05:600c:4282:: with SMTP id v2mr13879306wmc.18.1623316532092;
        Thu, 10 Jun 2021 02:15:32 -0700 (PDT)
Received: from [192.168.0.118] (88-113-28-221.elisa-laajakaista.fi. [88.113.28.221])
        by smtp.gmail.com with ESMTPSA id 30sm2716677wrl.37.2021.06.10.02.15.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 02:15:31 -0700 (PDT)
Subject: Re: #KCIDB engagement report
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nikolai Kondrashov <spbnick@gmail.com>, kernelci@groups.io,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
 <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
 <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com>
 <CAKwvOdkoCzf2+-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg@mail.gmail.com>
From: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Message-ID: <c64167f2-23e7-4efa-4945-6398bf99683c@redhat.com>
Date: Thu, 10 Jun 2021 12:15:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkoCzf2+-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nikolai.kondrashov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=OT9SW+pY;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com
 designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi Nick,

 > Cool.  Some notes from playing around with it:
 > - might need to de-duplicate
 > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git vs
 > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

We have a preference for https:// URLs in the schema, but sometimes submitters 
overlook that, and submit git:// anyway. It's a catch-up game, and I ping 
submitters when I see this happening, later fixing URLs in the database.

Similar thing happens with other fields (e.g. architecture). We'll be 
tightening the requirements as we converge on a common, better defined schema, 
but for now permissible schema (and messy data) allows us to ramp up 
participation quickly.

 > - consider sorting list of branches in drop down

They were sorted in descending order to have things like queue/5.9 on top, but 
I switched that to ascending, as that's more universal and easier to understand.

 > - "tuxsuite" seems to get truncated to "..." for me.

I assume you mean the "Origin" cell in the "Revisions" table. I substitute ". 
. . . ." for origin, when there's more than one, as more than one wouldn't fit 
the table. Full list is shown when you open the revision. You can also use the 
"Origin" filter on top of the page, if you're looking for data from specific 
origin.

 > - builds over time are useful, but it would be more empowering to know
 > which of those builds were green vs red.

Yes, I was thinking about that as well.

I added graphs for build status, as well as test status, over time, to the 
"Home", "Repository", and "Branch" dashboards. However, please be aware, that 
those are results over time the *result* was produced, not commit order. 
Strictly speaking, that can be any order, and results for some older commits 
might pop up e.g. a couple days later. Normally, though, they wouldn't, and 
there's some use in these graphs.

We don't have commit order/connectivity data in the database (at least yet), 
so this is the best I can do so far.

I also added a few basic graphs to the "Revision" dashboard, please tell me if 
any of those are useful.

Thanks for the feedback and the requests.
Give me some more, if you have them :)
Nick

On 6/7/21 9:09 PM, Nick Desaulniers wrote:
> On Mon, Jun 7, 2021 at 4:13 AM Nikolai Kondrashov
> <Nikolai.Kondrashov@redhat.com> wrote:
>>
>> Hi Nick,
>>
>>   >> We don't have a ready-made UI for this, but I think I can add a Grafana
>>   >> panel/dashboard for that rather quickly. What would be most helpful?
>>   >
>>   > I think so.
>>   >
>>   > For a given tuple of (tree, branch, configuration), it would be neat
>>   > to be able to link to a deterministic URL to quickly check who else
>>   > may have built this recently, and what was the result.
>>
>> I made a stab at it. I added "Repository" and "Branch" dashboards, showing
>> revisions for a particular repository and branch respectively. They are
>> accessible from the dropdown menu in the top left corner.
>>
>> Repositories are also linked from the "Home" dashboard, branches - from
>> "Repository" dashboard, and both are linked from "Revision" dashboard.
>>
>> Additionally, "Home", "Repository", "Branch", and "Revision" dashboards now
>> allow filtering builds by architecture and configuration name. Please be aware
>> that neither are really standardized across submitters yet.
>>
>> Finally, whoever is reading this, please be aware of the time range selector
>> in the top right corner. It affects every dashboard.
> 
> Cool.  Some notes from playing around with it:
> - might need to de-duplicate
> git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git vs
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> - consider sorting list of branches in drop down
> - "tuxsuite" seems to get truncated to "..." for me.
> - builds over time are useful, but it would be more empowering to know
> which of those builds were green vs red.
> 
> I'm not sure quite yet how to drill down to see which builds were from
> which toolchain, but this looks pretty close to what I had in mind.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c64167f2-23e7-4efa-4945-6398bf99683c%40redhat.com.

Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBR4BUDVQKGQE7N42D4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FD9A212F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 18:43:53 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id b68sf2308055plb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:43:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567097031; cv=pass;
        d=google.com; s=arc-20160816;
        b=nY3Q+oLC4CXbYy6F+C0PFWXKqfzYW65bdIeXbJ/8hQue50d/KPmlgKiFSyOJ045kfs
         raV9Z1t0JIJellT40JbTZB8dvYto9WTkLsz7yWkkszrHCg++afV6bwwXybo3RpaLJW8S
         KSARa8xHYjxK2/EKrhE2TrgjTM65A6VwTQVJkJooOvq4EDYd51jqkfCGMjGPOv0bdX3c
         +8/eGgzXdcRez+VZZ+WkxYDIE4QZIMeVHQmOvURszGufOXGX3u7U4FXve4p8NgjU1azc
         tFvmRh7sVAE5YEMa1yx6B3zhPsCRL7N+hjdMRnfU+LrNjeRRujZxpXM4BqbEAWzPSh7b
         Ze+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=smBaMArjEPBmZZAMpe+43r3UQOiS0Cn9kx+k4S2AO7A=;
        b=BVAZZNpBxaFKh8ZlZwsnY6cP2ucz2cwTkfamG1uIpNotYhXRSm+CufxoKgWcI4XK3H
         1Esy+YZQw16LpJA91+2RH1lcGymYUvIfiAiJBzCg/iRGKKqRq2imyK0PtuWE9AvWOfnT
         l26+FhjVkThLohwfeb7St7HlrqvlmwjkO02FDpLarhgTYmEHhD6JhBKQjw+zlgnvwESV
         7VCihulhHHqfsZGQuyjDNaoxEmNVPzVbVd1Jc5ZpASxGXThTYxfOfmDPgXageKGh66NC
         or4vpiVp4sdICxWsjpCnYJ/3a7GugJl6e1ofS/jhLipH2SFpw1G/eTQsb7SrMLnjxZj4
         MD7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K92dt0qQ;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smBaMArjEPBmZZAMpe+43r3UQOiS0Cn9kx+k4S2AO7A=;
        b=dCrMjK07HtOPr89bP4TdP4nOFT7/cJW1L0l0xpx4oClxe0nhjBRCOx89KHFQ8WkOYJ
         aDyh2o6Nj4ZnJMWCjCeikANsjxG0qLMY2wZKwutyZD9PccewGpk4h6NRIwoPinkqCHN0
         UnGpatz4OimBs1lWKchelV6VpgZ8SwkTWnVhJI1sEwCNHPxylsKL3bxjmUt+u/NBvS4X
         JcqrRPfdVLi58Xlp7c6A4AxAEq6nC7Yr+FDBlP07Rdf9TsNUpApyfTGHZTAYUII6Hjuk
         RTErmbbHWAYJRYS5diF7wGCAJqhQgNac5UDaapRJAIT03Zmiqq7TGO+xnHQcygepYtcO
         kTxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smBaMArjEPBmZZAMpe+43r3UQOiS0Cn9kx+k4S2AO7A=;
        b=X978TPLavH2Q0g7CR2sAjjR8Gw7qAmEembVdezEmdalo3EE8C/e7vJ7fHKg37z6PmO
         I+ye9iQBBFV4KYGBVvq2HNx2GASieLJeDljtPouIxCwXjIQfh+nBdgrT+Ck5r50dKIFw
         2Dmexw6yHa2D/9pX3IyDJo801JoAxWJ/Z9ZNf/eOW0m2Pz6uE6IPCmV7nTo3QCEedhI/
         KKVGCDgcK7AOSiQhHU79NdRJ2+il8+3xhxdvewu1rJVZnKKJYxTf8PIImXYtiAAo18ct
         fWwQq2t4JhG5z1BYlf1ITOR4lvy5IoeibfCvD96NEH/Uddzgvq9cT7bw3xY4MWFHoFYF
         P/dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXK3b7ND8OFUAvRJoW4qLU7lXgBBHSTveeGrcETsLJ9A+DA1duE
	H0lvzH9xS8XY3uW/y8UFSjU=
X-Google-Smtp-Source: APXvYqxjzdj9CS8qN+ojWICZwIifWNs3Zt0HYX6GUYMwKdRrxGOdS5iTTTW5bx0ERPvIm9h+iI0LXw==
X-Received: by 2002:a17:90a:244a:: with SMTP id h68mr11117858pje.100.1567097031243;
        Thu, 29 Aug 2019 09:43:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1c24:: with SMTP id c36ls691751pgc.14.gmail; Thu, 29 Aug
 2019 09:43:50 -0700 (PDT)
X-Received: by 2002:a63:1749:: with SMTP id 9mr9413295pgx.0.1567097030803;
        Thu, 29 Aug 2019 09:43:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567097030; cv=none;
        d=google.com; s=arc-20160816;
        b=TGyjSPXOn+1gNjG2RK354SqwcoTNqhFFm26VsDo5EX0PHKuc8t0FZ75Buf6ugz0Tac
         Sg6wozvHzGlkYXKHbpqT5X4++aeq5312PpZXJGJxcQWT+DLRztanpLQlY37zGJHYmOiN
         bx3tiIsrTzHYcxF1rV85GmtElXy2oXh+kqcK0WrK4/S24witjjMLpoSiDN/X5ePaT3DQ
         8UIyduLBfJnd/nAgvylMSlRZ1VB/xFMPI9nQpEurQdHXTgAePdxxJw2H/Q1g7UNp94kP
         HLJj4SF4QLpC2/xP+a8v4qV2FZ0za9vpOjb5SOHJfX8WeEGwf0pzxpR05RrhS9FaQW0e
         Hsiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JJMfRpqnJ32b9ZVrm6BHAh6sfN8fiwjeoAwHrQQQdZI=;
        b=WSadYwl96QgeAJQ/lJdfmUMP4S9tWoYi772Ex27mXLthLDRIeH8XF206H9cNAPAKaZ
         Vd7fH0NGtY2jyrPEXiTr59me+jww4ujbtYGFhvDtE3mV3Jaq0rgRyBT5zooGb5k7+VMx
         tC8iQELRPwCTa84xGbHuzq9uM7l9Kx4cvjEiWdFU92WmHiZ7hfljs6fzCG83l6VtQcOX
         TcyTxJImB+bL9iY+hXhlJUwm5gxHYfFTeNYFRRn8pYgp3JUGBcY2CF5BDJhl6h9VcQPg
         NHNGcAEuWx6EQU4YYR4mdEGjSdEJ+8fSscZYXNmOrz5GrNEi59QvAPAdlx3WNwBji3OA
         D1ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K92dt0qQ;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si174229pgs.1.2019.08.29.09.43.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 09:43:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C9092189D
	for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 16:43:50 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id n7so4394641qtb.6
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 09:43:50 -0700 (PDT)
X-Received: by 2002:ac8:368a:: with SMTP id a10mr10766806qtc.143.1567097029511;
 Thu, 29 Aug 2019 09:43:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 29 Aug 2019 11:43:38 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+2vR75ofq=aKOt1bb1T-JfhiGSR9dnHWQf7VLmgJP4eA@mail.gmail.com>
Message-ID: <CAL_Jsq+2vR75ofq=aKOt1bb1T-JfhiGSR9dnHWQf7VLmgJP4eA@mail.gmail.com>
Subject: Re: [PATCH v10 0/7] Solve postboot supplier cleanup and optimize
 probe ordering
To: Saravana Kannan <saravanak@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=K92dt0qQ;       spf=pass
 (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=robh+dt@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 29, 2019 at 2:46 AM Saravana Kannan <saravanak@google.com> wrote:
>
> Add device-links to track functional dependencies between devices
> after they are created (but before they are probed) by looking at
> their common DT bindings like clocks, interconnects, etc.
>
> Having functional dependencies automatically added before the devices
> are probed, provides the following benefits:
>
> - Optimizes device probe order and avoids the useless work of
>   attempting probes of devices that will not probe successfully
>   (because their suppliers aren't present or haven't probed yet).
>
>   For example, in a commonly available mobile SoC, registering just
>   one consumer device's driver at an initcall level earlier than the
>   supplier device's driver causes 11 failed probe attempts before the
>   consumer device probes successfully. This was with a kernel with all
>   the drivers statically compiled in. This problem gets a lot worse if
>   all the drivers are loaded as modules without direct symbol
>   dependencies.
>
> - Supplier devices like clock providers, interconnect providers, etc
>   need to keep the resources they provide active and at a particular
>   state(s) during boot up even if their current set of consumers don't
>   request the resource to be active. This is because the rest of the
>   consumers might not have probed yet and turning off the resource
>   before all the consumers have probed could lead to a hang or
>   undesired user experience.
>
>   Some frameworks (Eg: regulator) handle this today by turning off
>   "unused" resources at late_initcall_sync and hoping all the devices
>   have probed by then. This is not a valid assumption for systems with
>   loadable modules. Other frameworks (Eg: clock) just don't handle
>   this due to the lack of a clear signal for when they can turn off
>   resources. This leads to downstream hacks to handle cases like this
>   that can easily be solved in the upstream kernel.
>
>   By linking devices before they are probed, we give suppliers a clear
>   count of the number of dependent consumers. Once all of the
>   consumers are active, the suppliers can turn off the unused
>   resources without making assumptions about the number of consumers.
>
> By default we just add device-links to track "driver presence" (probe
> succeeded) of the supplier device. If any other functionality provided
> by device-links are needed, it is left to the consumer/supplier
> devices to change the link when they probe.
>
> v1 -> v2:
> - Drop patch to speed up of_find_device_by_node()
> - Drop depends-on property and use existing bindings
>
> v2 -> v3:
> - Refactor the code to have driver core initiate the linking of devs
> - Have driver core link consumers to supplier before it's probed
> - Add support for drivers to edit the device links before probing
>
> v3 -> v4:
> - Tested edit_links() on system with cyclic dependency. Works.
> - Added some checks to make sure device link isn't attempted from
>   parent device node to child device node.
> - Added way to pause/resume sync_state callbacks across
>   of_platform_populate().
> - Recursively parse DT node to create device links from parent to
>   suppliers of parent and all child nodes.
>
> v4 -> v5:
> - Fixed copy-pasta bugs with linked list handling
> - Walk up the phandle reference till I find an actual device (needed
>   for regulators to work)
> - Added support for linking devices from regulator DT bindings
> - Tested the whole series again to make sure cyclic dependencies are
>   broken with edit_links() and regulator links are created properly.
>
> v5 -> v6:
> - Split, squashed and reordered some of the patches.
> - Refactored the device linking code to follow the same code pattern for
>   any property.
>
> v6 -> v7:
> - No functional changes.
> - Renamed i to index
> - Added comment to clarify not having to check property name for every
>   index
> - Added "matched" variable to clarify code. No functional change.
> - Added comments to include/linux/device.h for add_links()
>
> v7 -> v8:
> - Rebased on top of linux-next to handle device link changes in [1]
>
> v8 -> v9:
> - Fixed kbuild test bot reported errors (docs and const)
>
> v9->v10:
> - Changes made based on reviews on LKML [2] and discussions at ELC [3]
> - Dropped the edit_links() patch
> - Dropped the patch that skips linking for default bus nodes
> - 1/7: Changed from bus.add_links() to fwnode.ops.add_links()
> - 1/7: Update device link doc
> - 1/7: Lots of comments/fn doc updates
> - 1/7: Renamed device_link_check_waiting_consumers() to
>   device_link_add_missing_supplier_links()
> - 2/7: Moved DT parsing/linking code from of/platform.c to of/property.c

Why? You'll notice that of/property.c doesn't know anything about
platform_device (and struct device):

$ git grep platform_device -- drivers/of/property.c
$

Everything related to platform_device goes in of/platform.c.
Everything related to struct device only goes in of/device.c. I'd be
okay with a new file for this too.

Rob

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_Jsq%2B2vR75ofq%3DaKOt1bb1T-JfhiGSR9dnHWQf7VLmgJP4eA%40mail.gmail.com.

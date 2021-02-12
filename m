Return-Path: <clang-built-linux+bncBCTKRTXYNEIJLE44QEDBUBAFWXE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 507EB31A829
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 00:04:54 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id w14sf1115899edv.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 15:04:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613171094; cv=pass;
        d=google.com; s=arc-20160816;
        b=xY9FxEucoVLB6ZfMPGkmAFECv5KUtXRNx9RTDbdApDA++SAkzAlTcYhx4m8DNqSxzv
         3ec+3P12ffAqExCoeJt8+ngcTBqXI3vDrq0ikk/qpFYnbaPGrQafU8mzNy1deGn1NP7w
         XwIngZjHdj3H4sIXodKpavMmWE/Q9SnYCdzSVjPbuTWM8d0lh71Dqnh3JT8sHOkW3035
         ndBPEIWS7XmJCadgGA1B7j8nKdZm/bf0LUOhdd1Y3P00NZ5FE4wGYU//L8e3bMg7kN5S
         0bXS/MBugOH+NASWQPpIAuEZQJCn9sHGvoWv19X6yRC+m/u4ph8zW5FM22BkZpeot2e4
         TTJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=94026rYP4bK0m/qON17ek0I6j+hZKAErc5XLdYamgdE=;
        b=uvK4fGr3apd+FkMmAUXGBLgaZZOax8eLeg0Ug2e6slTawZ0MJDfJcedpMY7P2X/Vtx
         2BUSF/Xkiz7oz4PO9jMO+MmFeilUKyyOeoXV3fdU6wzme8vUQLsSXOiKbgkdQxEDt0n1
         ZYsccZkygatauMsCnI43tZ7K/9PqYIyEk2zC2cYJXYCByRsvC07uIVHrvYz6QFrsa3Bc
         SaJp9TRfz0IRspSTDtoYt/ZlhHdG4P+cpmca0IO6prnl8KSFj24Ix5yKX3JSMwup/pNb
         BPdkl0/A+SEu7nAYgPY4Wl0RBF3RmzFoXQBF4bKcT0HFGrD+Hbh5ncbpFdLYENFVUFaZ
         BH0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=94026rYP4bK0m/qON17ek0I6j+hZKAErc5XLdYamgdE=;
        b=Deu44UInZSPferhzWUBkGv7HrUXEyx5WAhh/6Tll2qbDogC6Xim92UOz18PuodDLJ5
         WkrWO3ifp84pnoE/vYkUpVNjIEMahsm4hKE2MzrYtDd5sDaOPv6ZyKbb/rG+xqRESnSg
         xFZdakA2nitQo4JYbfg9z20lzy6bvsfBHZqqZtzu165hpun9S4E2EKumXhelejEap5cE
         Wk4rVqx9sLeSOcukxdaFCR+AthD+yCPBUoVd5Br3a/PvLPbySdML220ldcQZOid5fZWO
         kXTBMEbcg0F3rVLT6/y+qbDqIEVnoGq1ZyF3XU+v8Q14gYsIQVZ+MW0Q33u3U/USaPRM
         1qDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=94026rYP4bK0m/qON17ek0I6j+hZKAErc5XLdYamgdE=;
        b=bqwCYK3goIT5L7mdgxGJIWhZgY/P9I4AneFec2eOSjSl06bJJxR1F+GMDGGBntXQBP
         QoasraRGyyD62wtTFKHKQD4MwlkSSClyJTD/wKyX47PdgCyPakbcfdW2gb+3MahT3gZj
         xpD13vqXVmC93n74kfhryHISNuxEGOKpTkLloPCzGNPgtKHiGo6uJDqbxAmAQ8vAeS1j
         w+NUT0xctY/yKhGttYk0ZuLDekXfp6N7FNUV+1ks4gUolLnG5LjCVPwOl5meJLUpTq3m
         9fqiq2Gb91Y7oQ+hm7RyCKgzUdrHpK5yKi/lkVBlZKloCAfR48t0k0KwvcKRxVaj5L0h
         SYPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pNbOF1hwyc4cvtCCYztMXsC/48q8cyghBxs7WDBS4IM7QAeSr
	j83OJkiAO2xObvbdffgM4ws=
X-Google-Smtp-Source: ABdhPJyqt7tIsX9jMWZ1O3xT3fE44llOq8uGapqxyEwWEuJJ2gTQqVLEIBgnibyunstqhl6C08qs6A==
X-Received: by 2002:a17:906:6087:: with SMTP id t7mr5351938ejj.90.1613171094078;
        Fri, 12 Feb 2021 15:04:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd14:: with SMTP id i20ls763275eds.2.gmail; Fri, 12 Feb
 2021 15:04:53 -0800 (PST)
X-Received: by 2002:a05:6402:4389:: with SMTP id o9mr5649424edc.164.1613171093198;
        Fri, 12 Feb 2021 15:04:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613171093; cv=none;
        d=google.com; s=arc-20160816;
        b=YJQSv2DmQNxjvuKn3c2LVz2ot5ZbH4VslzyBATg4DcxEI9T/+Sy2GsKj2XLhtENLJl
         wYEZDDHY+NrTdA85TFbdfLbaoFLbx0CFEPNEqPkVoIHsuvj1KIqBeQ5n1LzXGBe+iI/X
         P1XXs5UHt1SwLJKwGJ3eEKy6XnSldp7fay+Fy+nhounNr3+RFli2G2jaJ8ro4c5lf68u
         7KSV/ML+IPAkYuS93k3IxvfVYCELbEdZN8l/5rg/62trPO0wqh2Wm6Q4kKTPJFM+D30p
         VzpfTwH5xpBSPZhDjd2fWBpUfVcRHOVNJ3pL1FhhmrEq1xqmtYNj+5kvx/FJ+47X+Fw1
         g2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bswjtIZafUgo0bCq5Yo6euzRdo6GxKjY0HYClphImNU=;
        b=SxjKnfTF3NcbGKCvK8K8zU1D7lw41VaoROEiJJ+SFEKpZK283NlR91GGhu5GuWR3VA
         suD0snxLsdzYqu2bfr2a9tTdIPb8FqNCylvv4l9y80BCMGtEZ5zoE/Gqe2nd/z+PvK/I
         9WO+UJLZeAWGMVkhX4DpzZ4G8sc97ghx9+nHWzlKmfdXyRBDIY6Z65+CV1OuRvW0Ksw0
         6v8vkK2muHWmyci/cxL+kbjS76SK6jVuFLyQe8LCHK2Xyo9P6ioZlNLZzTRh1CHfkQAh
         6s3DAliz3cY/W7AHdNCqLfV5dq7u2O6ugxvu5FeqCv5C7lu++fYgto26HLPRCFm9D3Ax
         Mc7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id r19si500878edq.5.2021.02.12.15.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Feb 2021 15:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1lAhUW-0003Sk-7S; Sat, 13 Feb 2021 00:04:48 +0100
Date: Sat, 13 Feb 2021 00:04:48 +0100
From: Florian Westphal <fw@strlen.de>
To: kernel test robot <lkp@intel.com>
Cc: Florian Westphal <fw@strlen.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [linux-next:master 5178/10581]
 net/netfilter/nfnetlink_queue.c:601:36: warning: variable 'ctinfo' is
 uninitialized when used here
Message-ID: <20210212230448.GG2766@breakpoint.cc>
References: <202102130043.4UIBML4o-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102130043.4UIBML4o-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fw@strlen.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=fw@strlen.de
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

kernel test robot <lkp@intel.com> wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   671176b0016c80b3943cb5387312c886aba3308d
> commit: 83ace77f51175023c3757e2d08a92565f9b1c7f3 [5178/10581] netfilter: ctnetlink: remove get_ct indirection

> >> net/netfilter/nfnetlink_queue.c:601:36: warning: variable 'ctinfo' is uninitialized when used here [-Wuninitialized]
>            if (ct && nfnl_ct->build(skb, ct, ctinfo, NFQA_CT, NFQA_CT_INFO) < 0)
>                                              ^~~~~~
>    net/netfilter/nfnetlink_queue.c:391:2: note: variable 'ctinfo' is declared here

Looks like a false positive.

ctinfo is uninitialized only if ct == NULL.

The config even has "CONFIG_NF_CONNTRACK is no set"
so ct is always NULL.

Could be "fixed" by adding aother ifdef but it would
add even more clutter to an huge function.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210212230448.GG2766%40breakpoint.cc.

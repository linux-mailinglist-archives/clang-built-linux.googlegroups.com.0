Return-Path: <clang-built-linux+bncBC27X66SWQMBBLPS4X6AKGQE7P4KS4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7463A29D02C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 14:59:10 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id s25sf977881vsn.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 06:59:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603893549; cv=pass;
        d=google.com; s=arc-20160816;
        b=lXWqOoeLrToJicowHpCn6pv2uF+T05OugEmFq/nES8qZ2Ljn43vcl2A4nQefd5bd2m
         sZma0q0g/oCiMK2K6v3mhOwWqGc8l0AUB2PZuYDDlsVx4BzElPaChmg9PdA62P1AMWTc
         n7N0s0sw551xzVL3HsghPpCLQxSE2sdP2sIKCAwqfOhwbOYcDXV5/XxE3rZ+u7zF21Dj
         yJ/iZ04VfOcI54zzlR44dMNWV5nhRjPQ0FqPgaktek3oyIqFbqy9YoKTyCn0MGmPc80m
         9wLkeGpNLYtskwif3iA+RCqeG7c2q/gds3BvJVHsBgcg4O485HmE6CcRdDXvRH2hj0TA
         Hyug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=7rmaK5ePMRfupOZBLD6+TCBzEnnK0kz7mt5AQj9XBlo=;
        b=PTzt4iByMSMeaqFRt4x4LQMq9Ih8byX2eglU7sI/NQ82ff9cwaYUZqSMTm+9zVOisI
         QoUBPMbLHqsJjrQb/0ufOn++3tFIT2DOcNHPxCpjz8Lgh/+Sr0GnccmTqEioXSqkoZJD
         8e+gKTouCyhBhYoZSe1yDtWpxiKRPdmMUIyiH8x6/cPJTkxvT4/D0nFDmjvwMo5poNtt
         dcDFyTEjrCUc8o0LGUF4qbUuH+PfbUBQtZteU10FzHWIiB7plv2i1Ydsgr+COElbzn61
         cQ5t1oUkG3TRVoadh1U/5Q53DlZU60NhYgomHW/Hc0niH7h3dpdX+V1k4L8b7QSnZpnL
         9LUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bp8BLXdv;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7rmaK5ePMRfupOZBLD6+TCBzEnnK0kz7mt5AQj9XBlo=;
        b=NRJp1eQOXkTed01Jc3Jjj4e9hPgxiRXW9np+O722inv3Zf2NEbgGOFd/a2Ksduyd03
         W267qSaH4kS6rNXxWqeF0AmveI6Z9oUv6rdz0rkHsIYRTj3Gbqnxuvbu3NvesDzWQM3I
         AArG6D6hv1qFK9w4bt5YKundXcEQzrkm9+BkQz/UIF2sc7Bfzu0OIyBJ6+CP3nr9TJWU
         gVHk4rwg9HGzO2vfSuhWml5uaqcfukIQgd5/ydccbNn6D3agVk/z4MUKTGJKwGZrINIM
         OEeAVjxbk8Z4ebiBu6afAw1GxMIoEFuxVL7FI9vck3OPU3oIWDHyY6h0nQk/gZhr63j4
         eICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7rmaK5ePMRfupOZBLD6+TCBzEnnK0kz7mt5AQj9XBlo=;
        b=PQErArBHYX85QLnECqowByz3Tz477m+DcSr6VX1cI/+9jdvFAg7aIFpiAo2ygbKpDK
         CfBJJwHty7mdlvb4veR9vMmrlknoE0ZvU7LhRwL8R2rV5XHjpCxv3o4ecklgN3h+pbmW
         YVFAGQpvxgLl77mlqOGUei/cPV12YI+XGZWn1vmK6rH6QkO7Q/WAcGXPf8JYfLkHHjIt
         l9LMb5rbq0RRY2UhScFpjH6V5K8mSgW+zA2jtR5bPKPrtuFKq6vnFZKRF5qdx9VdhK3f
         M7SUIfrS+sGvAQXYR+h5rfPI1SasQ9v+ZAMIdC69vnTYIZH5VcGYedJY0tSDLO+KUDwo
         5u8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bicoifi9IVrRxJw3cerpAr+Kqc1LafM6YHuTzR70/NPa7fHkO
	DxyPFWOee5AGqfNqnMVeAks=
X-Google-Smtp-Source: ABdhPJxXaSM66kjOMd4IzFstyTzMHuTXloOJVtXNmjE6gl6R4LERwz61b8jLW2qP4geKXrOGXP8JZQ==
X-Received: by 2002:ab0:3254:: with SMTP id r20mr4492660uan.2.1603893549499;
        Wed, 28 Oct 2020 06:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e29a:: with SMTP id g26ls661766vsf.6.gmail; Wed, 28 Oct
 2020 06:59:09 -0700 (PDT)
X-Received: by 2002:a67:d79b:: with SMTP id q27mr5308035vsj.31.1603893548984;
        Wed, 28 Oct 2020 06:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603893548; cv=none;
        d=google.com; s=arc-20160816;
        b=H7JRkBOhZQQEnPCGiMjBca+M5sYNHrRxSNHWNRwJ7lMmB4FFpFffIZuRK9dxHHegP+
         2jYk/00DGnbep9CTFFysaj4kcyH6XcCusU6rrO43ijIjP0vL7QMVf+llL/qs0brkmCpJ
         5unXWPQ6lrYDJAiq4SLgbEJ214xXXa+JzYKRirOA62XpEhWGhgRAvwnPFN9XHoFkvnqH
         aagOVeGFZpcrOC6cx3TvNo246UBglVYV8mHaZz2MC4JMznV2C6INyAldbvVozCqVtu/T
         vUjuIF0sBuoRpCTR6HLqoIU+biMIgIFsNN2GGy7CTVD2U9XSqEC6HXIvsQ83Y8lW4REP
         z+Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o9/CLvMtl/VDe8FAQKlYw2/08Jd6hZteFLUw3bqy7TU=;
        b=iyvj+jCC6KFwVR+v+QO1Od3X728tNAenBstB+epKztrjLw+VNSoUYFRGuE9pkV93EF
         +zK/Yg8DGJgfTCEkTIziUXumQU7S5nfIFekDHMuZb+sb6Q1+6YRhkh/cBtqP8lVpXGUJ
         AbiVGihliYLMnllm2UCEWXhDnfUYjhIAkqAEo6a/43Hn7uRj9qQw0otGRmQ3qy1V0h7a
         KXUHPiaJfgqX4Et2nJOq7tNrNJMjS+KDEvY2ytBDfLCfZoW4oo25lkxuyz+KbiN00WOj
         SbQ6Q0rIBCHY5FLiGlJ2H7Iw5jjE4vE6f9Xbe0qaOZF0TtK5LgfK26IZz5lMHpXEgPAt
         Nb5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bp8BLXdv;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id e7si369114vsr.2.2020.10.28.06.59.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 06:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-FvF44aInPU-K2kkvBPQSFg-1; Wed, 28 Oct 2020 09:59:07 -0400
X-MC-Unique: FvF44aInPU-K2kkvBPQSFg-1
Received: by mail-ot1-f71.google.com with SMTP id r4so1651941oti.16
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 06:59:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1009:: with SMTP id a9mr3705434otp.312.1603893546067;
        Wed, 28 Oct 2020 06:59:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1009:: with SMTP id a9mr3705422otp.312.1603893545799;
        Wed, 28 Oct 2020 06:59:05 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id c20sm2031463otm.49.2020.10.28.06.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 06:59:05 -0700 (PDT)
Subject: Re: [PATCH] net: cls_api: remove unneeded local variable in
 tc_dump_chain()
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
References: <20201028113533.26160-1-lukas.bulwahn@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <d956a5a5-c064-3fd4-5e78-809638ba14ef@redhat.com>
Date: Wed, 28 Oct 2020 06:59:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201028113533.26160-1-lukas.bulwahn@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bp8BLXdv;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/28/20 4:35 AM, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
>
> net/sched/cls_api.c:2964:3: warning: Value stored to 'parent' is never read
>   [clang-analyzer-deadcode.DeadStores]
>                 parent = 0;
>                 ^
>
> net/sched/cls_api.c:2977:4: warning: Value stored to 'parent' is never read
>   [clang-analyzer-deadcode.DeadStores]
>                         parent = q->handle;
>                         ^
>
> Commit 32a4f5ecd738 ("net: sched: introduce chain object to uapi")
> introduced tc_dump_chain() and this initial implementation already
> contained these unneeded dead stores.
>
> Simplify the code to make clang-analyzer happy.
>
> As compilers will detect these unneeded assignments and optimize this
> anyway, the resulting binary is identical before and after this change.
>
> No functional change. No change in object code.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201028
>
> Jamal, Cong, Jiri, please ack.
> David, Jakub, please pick this minor non-urgent clean-up patch.
>
>  net/sched/cls_api.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
>
> diff --git a/net/sched/cls_api.c b/net/sched/cls_api.c
> index faeabff283a2..8ce830ca5f92 100644
> --- a/net/sched/cls_api.c
> +++ b/net/sched/cls_api.c
> @@ -2940,7 +2940,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
>  	struct tcf_chain *chain;
>  	long index_start;
>  	long index;
> -	u32 parent;
>  	int err;
>  
>  	if (nlmsg_len(cb->nlh) < sizeof(*tcm))
> @@ -2955,13 +2954,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
>  		block = tcf_block_refcnt_get(net, tcm->tcm_block_index);
>  		if (!block)
>  			goto out;
> -		/* If we work with block index, q is NULL and parent value
> -		 * will never be used in the following code. The check
> -		 * in tcf_fill_node prevents it. However, compiler does not
> -		 * see that far, so set parent to zero to silence the warning
> -		 * about parent being uninitialized.
> -		 */
> -		parent = 0;
>  	} else {
>  		const struct Qdisc_class_ops *cops;
>  		struct net_device *dev;
> @@ -2971,13 +2963,11 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
>  		if (!dev)
>  			return skb->len;
>  
> -		parent = tcm->tcm_parent;
> -		if (!parent) {
> +		if (!tcm->tcm_parent)
>  			q = dev->qdisc;
> -			parent = q->handle;

This looks like a an unused error handler.

and the later call to

if (TC_H_MIN(tcm->tcm_parent)

maybe should be

if (TC_H_MIN(parent))

so I am skeptical that this change is ok because the code around it looks buggy.

Tom

> -		} else {
> +		else
>  			q = qdisc_lookup(dev, TC_H_MAJ(tcm->tcm_parent));
> -		}
> +
>  		if (!q)
>  			goto out;
>  		cops = q->ops->cl_ops;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d956a5a5-c064-3fd4-5e78-809638ba14ef%40redhat.com.

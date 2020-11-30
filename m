Return-Path: <clang-built-linux+bncBAABBEGIST7AKGQEM3N4Y7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E652C89F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 17:55:45 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id r13sf7285318oti.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 08:55:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606755344; cv=pass;
        d=google.com; s=arc-20160816;
        b=TI4g0P0W8lre/NCbVZV/h1XLsS4j5Z9slYiEe4MLq7gDQNJ0HufXEHGh+/usRho9DV
         j016wY3fi7m0WeiOe66y+Kd2UGw6BHm5ukQABFsJXgp4iKul+GIjFUxDau7mhKWn6RmK
         xNrS9mvGNnz/q7RMHej8Ig9fvt4hEHSXvYTxrSuylhqFpzSddxRFkZ5Fj03KOtZgpJIq
         PpR0F2rZSQLPLdZ9ZzpmeNhF0g91mp0XsfDLU6ykNAD2vrYdhUyZ0kKoBpdoxcasKYTZ
         K4uYxlwOWM/UnNepFzOeFEO0CLsIJGBjFoWokBlCjw4B+jVYRxaFvUfZc7LQRtbtHEIL
         AG0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GJr8XsQVkx5fwSC+vxnrzNvKF+AI3oPWFQPwLtA9LGo=;
        b=A4Fi1PXwOzbZVCJ+NzFm4UugB2PpQfR3o/HpIbY8fBhbSnvRNz9T8eQie/dk+88Y4f
         qoo/r47cZ1+OSFV5TAf0T4YeK6EUkwJvk6FjjkFQKtrQoiwbxMa4T7vICcgyDPtC3mJw
         Wtqf9DQDlEBDzxr0KQzCv3EF3DpTrw0F+pkTzLpuGj2W1ERuEv4pnY+0SYZtr9qZnf6V
         6QVD0Bk8U+xbI8hzg5s+jnfvT2sa2PvDGiEzx848RkhpXFTX2haG3NijilTQ0LHkfbMT
         UM+hm9ZJY3xnbZjnakS58wKZnL1AJzgaowqmgQJ9VNCI5w6TwCmL6YhXTHByuxQPbmfn
         8Lmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fcnlTPWW;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GJr8XsQVkx5fwSC+vxnrzNvKF+AI3oPWFQPwLtA9LGo=;
        b=O5MmJUYfd0dXNCJ9nYiDRisQ5+CQ9w41mQbZMehGbrFDHE73dRoi1E92KsHV+8GlRq
         Tj8OkR3e5uwB1k6dMqHUiJtCQOVysqTTRvsoBEpCqUK9lTqFTaj6jClWtuhwZ18DcTU6
         6JyLsHxF+7IJTDj2CvrAJDJAUoVdWJx8iD8WnFjvsGWEkW/zLRrZTiJ6p1W5ov+eaJo9
         4+dr1M859lyl8ex6kLkb9iPJScjwhTn1Cj2wjMCJmcZ6PHT6enAbB7qfsAVaMOjVpiM1
         JaLLYY7UG5VD07me8Lq8X6CUcA+SRHDpmNppxF4LHtrLBeGKQLr5uXorUhN2LHNitHVT
         YGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GJr8XsQVkx5fwSC+vxnrzNvKF+AI3oPWFQPwLtA9LGo=;
        b=hzGg3HfF1s+lWag7QdGLBtVt3fQ+MCsWH/tqKvh4kMEc2f5Px5j5bV5F305tYXTwir
         Acn08SYUovCI/cQxSd6C+4hxTmbyNmTyUQwvmE/a0D/53H7oYb2k1zz0cIAjA4wBJC96
         jp3sax5lwJprliuoe3vtoj4kU7mZN6Y2QOS0PuvaJRVIbDm9oqWFhqxZgGwGISzdc/Mh
         gmKGl/hMreP+SIYZKaacoPFKsjBX1A0we+z4LEAwW3LQ2cWBKulEsr3BAF4hc7OSzn/G
         dq3FRwwv2XeWGkYPQVIPt5dzv9akyTYdS9YMQYzvyAvzNXTVs511vpsL53M2CBpUWJqm
         o6Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mJ39rSj3GdcKW9A7iBffvP3kO3yfE24yAofb6YhEWDCj7imhi
	t6zb08SvSzA25w5vtiA1W5k=
X-Google-Smtp-Source: ABdhPJzyyquAbgFPG1fEqVmgKotLwSPLyIZaPUOqR9eYKjg5si98d9ekBCXFug2DfL8s/m5u2xJncA==
X-Received: by 2002:a4a:45c3:: with SMTP id y186mr16112222ooa.13.1606755344165;
        Mon, 30 Nov 2020 08:55:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4c0e:: with SMTP id l14ls2107642otf.11.gmail; Mon, 30
 Nov 2020 08:55:43 -0800 (PST)
X-Received: by 2002:a9d:5781:: with SMTP id q1mr17956683oth.325.1606755343770;
        Mon, 30 Nov 2020 08:55:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606755343; cv=none;
        d=google.com; s=arc-20160816;
        b=psIXBUrTXi/KNcVgBQVaBCyIdGB/Vs2nJ+rvfP+jA9BDpsQ37lluiEmaf7tm/7tA0A
         1FnA9Aecipaww10LaJXTlaglV+61YDVT5SYN/KGssCJFpRkTDL+cl0dkKu4nYGrmBhop
         NPELt/oX0BGvx8iSwCOE9MgKHPZSPES4FIs8fpthLlUce+CDoIm1qJ039uFoX4ak1lim
         mJd3pEUk0YGbA8haF7ssUMSA6hxeojbN23hS0BTl8FHNKxK60FM8kp9LIHEyxhEEsilU
         HjrD7LAFr64/bUri6k+f4DorSW604zYQOgqGtBXDFrfzd8h4XqpFZXxtXFcEHR68U0lO
         ZDJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fVgqX/OcJX6JFwP1sX1hr80IRCSO4yicDkTzTwrqyp8=;
        b=ffy2cREeZzmA/5Pus/xTryzMothfJ6Pefff5i+OCLzQmf2x4cfSA2rtCEeypamXVsf
         d+mMOTI/qGYWZSYEU8U/SlBcyv5ESwMqUJnS7gETkws4S+214pL9LD5mDrkD9esAovrX
         /NhazbbIGbjBIkRjxwyHeEZPOJ+Exi040wlUtT6Om9d3WOjhxhbiPbwTvS70jee0PX/y
         zPfSDsaSZOEmpMK/B5qq1WgZ/wMBXa24zokgWdqK1AX+YlAm1rSC6YPjXndMBV4T+kpo
         Uc2GYk7Q1Nr83WSnNPG1vByTfNk1weVdHOuZvYnJ0rQZ6g7l9uDLdEhxkSYA9PXKtpRj
         vVZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fcnlTPWW;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si737156oti.2.2020.11.30.08.55.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 08:55:43 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.71.85.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 76E982076E;
	Mon, 30 Nov 2020 16:55:38 +0000 (UTC)
Date: Mon, 30 Nov 2020 18:55:32 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "bhe@redhat.com" <bhe@redhat.com>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201130165532.GE557259@kernel.org>
References: <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201112145149.GN8486@MiWiFi-R3L-srv>
 <DM6PR05MB52920B2D4267AD7D073D3C36A4FF0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201122010844.GR8486@MiWiFi-R3L-srv>
 <DM6PR05MB52927C9962D498F1E49BABAAA4FB0@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB52927C9962D498F1E49BABAAA4FB0@DM6PR05MB5292.namprd05.prod.outlook.com>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fcnlTPWW;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Rahul,

On Tue, Nov 24, 2020 at 03:03:40PM +0000, Rahul Gopakumar wrote:
> Hi Baoquan,
> 
> We applied the new patch to 5.10 rc3 and tested it. We are still
> observing the same page corruption issue which we saw with the
> old patch. This is causing 3 secs delay in boot time.
> 
> Attached dmesg log from the new patch and also from vanilla
> 5.10 rc3 kernel.
> 
> There are multiple lines like below in the dmesg log of the
> new patch.
> 
> "BUG: Bad page state in process swapper  pfn:ab08001"

Can you please run your test with the below patch and send output of

	dmesg | grep defer


diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index eaa227a479e4..ce7ec660c777 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -455,6 +455,7 @@ defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
 	nr_initialised++;
 	if ((nr_initialised > PAGES_PER_SECTION) &&
 	    (pfn & (PAGES_PER_SECTION - 1)) == 0) {
+		pr_info("=> %s: nid: %d pfn: %lx\n", __func__, nid, pfn);
 		NODE_DATA(nid)->first_deferred_pfn = pfn;
 		return true;
 	}

> ________________________________________
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 22 November 2020 6:38 AM
> To: Rahul Gopakumar
> Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundation.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linux@googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jonasson; Venkatesh Rajaram
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
> 
> On 11/20/20 at 03:11am, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >
> > To which commit should we apply the draft patch. We tried applying
> > the patch to the commit 3e4fb4346c781068610d03c12b16c0cfb0fd24a3
> > (the one we used for applying the previous patch) but it fails.
> 
> I tested on 5.10-rc3+. You can append below change to the old patch in
> your testing kernel.
> 
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index fa6076e1a840..5e5b74e88d69 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -448,6 +448,8 @@ defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
>         if (end_pfn < pgdat_end_pfn(NODE_DATA(nid)))
>                 return false;
> 
> +       if (NODE_DATA(nid)->first_deferred_pfn != ULONG_MAX)
> +               return true;
>         /*
>          * We start only with one section of pages, more pages are added as
>          * needed until the rest of deferred pages are initialized.
> 




-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130165532.GE557259%40kernel.org.

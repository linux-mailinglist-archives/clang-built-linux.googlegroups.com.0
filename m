Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYF4VKDAMGQEUZX577I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6EB3AA855
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 02:59:14 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id e13-20020a37e50d0000b02903ad5730c883sf796615qkg.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 17:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623891552; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZIh4CiGpPgpCkn74KPH8bD7O+/AOXdWTeP88o+yBghPcngXCLG6VkqBommwOOTha6p
         2WOlPTpQdR10BVk6WdRb02TCseq+qeVm2VmG9QS7QAX7xugPPy0jSDgluTjGL3QVAQj5
         1d1ewNpqdTj2iVcVJRQjzfqHf8KbS1K1qJg3WXKMh70ykPIAVbxgC3kTj7l2tzl8XUFt
         I9hU/1RljuAToTsANp3Ncml7hIw41W3Y2kpD9TA70sp5QyQ/S3rpGdCNQi9grIGawUJd
         mW4LiAV3eTX+ErnUbvpei5kkHqpGUGrFO709CV/KCP4puwaYyK4yNGZudL+rg3HuCbQg
         BD8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gBbsMpqeCFhryLwBPvx9cmQrppDh6BXkoN7EiUpb8H4=;
        b=R6Lz8W/vdTu+37ZIFPTOTux09nF/AVywQBSqLlGKvzftsdjTwVZ9qeZZbcPDDWwwTS
         e7kIixbUGwBTWu1D7IUFVcH1c7ijMTIBT0ENHQM81x2g5dCQxVKVl9NjQyr/cZUtgUqz
         5i6km3rNGsncGl+zidLoJ7L0XsuluGz3sHQYJh/IbZLblE03B+HM7A5WDKF4W47dLuW+
         FpEZKLy+FqQxyLW6zVA6iRi6GBzEb7z5SUBnsVac1TDA29ifbcxZJsD/T1DiLASVqLKP
         Spxm0zlrPfPj/2aAf7MAZPczB4DvQXXp9bc9xBbAqAduwRn9lgdDzZU0nYTteboI6XbW
         G1nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ksFcBsQk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gBbsMpqeCFhryLwBPvx9cmQrppDh6BXkoN7EiUpb8H4=;
        b=Rhbhyz/zQ8djjAEqKx6b2oEuMP1hJdo5ag9RHhZDmVrRUfP2uMhjXBwj3Ok+UQjSXP
         yClfx87KYzKlfIjP79SpnzS0kU2IftbnvBrfc7uWDj5f3OpG254mFnOWphfXRiW9xSOz
         0IVS7fcR85V7tPxJ29pD6uMz+WyLKTaDwWaXnIy/33457eu9i4LXCD/11cWaEMhMHcya
         PcdwPNfXbbm58G7UPR6NIcPT/0NF+/LTVchkxKFvdSGQm7dls+PClpohvtaMHV2+SkE7
         Nb4V18TjsFEWUKZNqQNLbNyyTLaRTEM/XUSoN9xaMZNeBeoxr2V4PhCP+5jD3Bl7H8zg
         7pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gBbsMpqeCFhryLwBPvx9cmQrppDh6BXkoN7EiUpb8H4=;
        b=A4eAiMO2qxORWlUw/jwQaOhkruwJi2uqeeKUpTeVTF/CI8vkz/c2UZGWUFlU1uB0jY
         IDbX0bvoyN016Q6l6ljlfqN+YJrzaE7CYDmCQs3huGgWYHZ7tbF7yDpVy12fYTEArvG6
         W2zJLJV3wsBx6D9WbVlcGJqyX35bfaHNib2FUuZAhJMB/HkzLB/xVWju0n+8Ivt5kR7H
         CUkufX9HhdyaxAF1iG0x7/wXfLd2ll2xSZP1n520akirAboQ7rO4TvlA/7+qSKV7k/zn
         5Ec5J82yAUFNg7x8MURCHJombmB+G6IjbpWm4g9x3X1kOoJ++icEBztWr5/DHFyfzuTl
         diYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302Tf30Oe3FZyA+GReR4JfFBWjKU4fnsmytY7Gm5uni+uigjls5
	s+GARM5BY52l56jWD32RQss=
X-Google-Smtp-Source: ABdhPJzZJJjfH530fgH/C6Ayvj0tXwRXeHFY5ZVBYBJMjTgPn89ZoEktfqhYO4a5pgyq9/oSWgZXTg==
X-Received: by 2002:a37:9f47:: with SMTP id i68mr1167433qke.266.1623891552857;
        Wed, 16 Jun 2021 17:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:d4d:: with SMTP id r13ls2233532qti.6.gmail; Wed, 16 Jun
 2021 17:59:12 -0700 (PDT)
X-Received: by 2002:a05:622a:13ce:: with SMTP id p14mr2615750qtk.261.1623891552400;
        Wed, 16 Jun 2021 17:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623891552; cv=none;
        d=google.com; s=arc-20160816;
        b=NcZ7a4q5swf0Y5PDdyVK8BOS/ZSN3fj0AufboInDfw66YxDtuED742neZzmt0JO7o9
         5GQATS+EmfV9Y06LpCtiXlioLY03IwCfr3rpYEujUYSvZ8g1JmHbJYqd4nufYMecpPHD
         RBAm2WOX2nUIuStP9Jc7cNCTAqGst2VU9nxAHCCxfkqeYz0hHML5mreBhJsnilKtrkPw
         PGaKW5U40uZ+83ppget4POc8jURV6pEi4wuxUoM/nGmGy+KCBsCevSrGMY8xykP0yI0j
         QvUwYFy0sxy43mKIKgg4Qey/YQV29q5+ObbJYkhs5lWSJgpfXj8eUASMgo0OUTQf0PDa
         K9YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/PwTMML1q+5y4eYI8MLc9qvqxGE+hbMvwAq97eZpqK0=;
        b=MIU1RUo4xRxTzFj0tV49J7ZUjuoIMMcBmNLquinpJQyPErhC/SjP9sNJk8/8T3Ch/Q
         JemXk3CcV9JWXpIwuPNsNVF4iGCgnOtL5f/bCj5FyoO0nWxkBcRxN76uRhjc+5ljZxWG
         83zeRPHnslRVSdo3bcuX8yiAmRLwCmMCMt5onOkcI8zbrYQAopJ4bR1z0l1cUlGJGxVr
         DKJ2asxJuaEcuCd8n7ywrz1JFlkzmFnoBC+2mIxPihoUSc7Tnc/621F/oYuY5melR4TI
         AkLf0bn/a0pAvgqe3toP1B7f7TYCe+H4kTY18z2hHEXf7SzjJlBE6Hp78A9UCYu2vIFV
         +3Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ksFcBsQk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m9si394596qtn.5.2021.06.16.17.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 17:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FC39613BF;
	Thu, 17 Jun 2021 00:59:09 +0000 (UTC)
Subject: Re: [PATCH rdma-next v2 00/15] Reorganize sysfs file creation for
 struct ib_devices
To: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leon@kernel.org>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>,
 Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
 Christian Benvenuti <benve@cisco.com>, clang-built-linux@googlegroups.com,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 Devesh Sharma <devesh.sharma@broadcom.com>,
 Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
 Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
 Mustafa Ismail <mustafa.ismail@intel.com>,
 Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
 Nelson Escobar <neescoba@cisco.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>,
 Selvin Xavier <selvin.xavier@broadcom.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 VMware PV-Drivers <pv-drivers@vmware.com>, Yishai Hadas
 <yishaih@nvidia.com>, Zhu Yanjun <zyjzyj2000@gmail.com>
References: <cover.1623427137.git.leonro@nvidia.com>
 <20210617000021.GA1899410@nvidia.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0b6de703-1071-ca39-5657-cd00862bfbfd@kernel.org>
Date: Wed, 16 Jun 2021 17:59:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210617000021.GA1899410@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ksFcBsQk;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 6/16/2021 5:00 PM, Jason Gunthorpe wrote:
> On Fri, Jun 11, 2021 at 07:00:19PM +0300, Leon Romanovsky wrote:
> 
>> Jason Gunthorpe (15):
>>    RDMA: Split the alloc_hw_stats() ops to port and device variants
>>    RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port
>>      pointer
>>    RDMA/core: Split port and device counter sysfs attributes
>>    RDMA/core: Split gid_attrs related sysfs from add_port()
>>    RDMA/core: Simplify how the gid_attrs sysfs is created
>>    RDMA/core: Simplify how the port sysfs is created
>>    RDMA/core: Create the device hw_counters through the normal groups
>>      mechanism
>>    RDMA/core: Remove the kobject_uevent() NOP
>>    RDMA/core: Expose the ib port sysfs attribute machinery
>>    RDMA/cm: Use an attribute_group on the ib_port_attribute intead of
>>      kobj's
>>    RDMA/qib: Use attributes for the port sysfs
>>    RDMA/hfi1: Use attributes for the port sysfs
>>    RDMA: Change ops->init_port to ops->port_groups
>>    RDMA/core: Allow port_groups to be used with namespaces
>>    RDMA: Remove rdma_set_device_sysfs_group()
> 
> Applied to for-next, thanks everyone
> 
> Jason
> 

I just got done verifying that v2 still fixes the Control Flow Integrity 
violations. In case it is useful:

Tested-by: Nathan Chancellor <nathan@kernel.org>

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0b6de703-1071-ca39-5657-cd00862bfbfd%40kernel.org.

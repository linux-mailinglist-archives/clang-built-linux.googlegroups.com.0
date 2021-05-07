Return-Path: <clang-built-linux+bncBCZNXZV44IJBBT772OCAMGQE2HWSQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A29B37626B
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 10:52:33 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id l10-20020a056830054ab0290241bf5f8c25sf4689134otb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 01:52:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620377551; cv=pass;
        d=google.com; s=arc-20160816;
        b=IKh/wSQ8J/5OfibmI0mCvQJ4SiqKqbfncdSDe1/DOJYj03spwSNxu1ke6BNbqIoE6f
         uL9GaXP2EMRSuoIbhYUiwskRds0+ynilA4MBVqrQqVzkXoHWD8tIv7NxBC30uJzfjlff
         GJ86mNCJL+9lgw4JVKNdA0+cVQz9o/xtymUcqVMwJE79QGPN9CfST6Tp522b9feEos5b
         jB3+VLDu1k2pUBP8fcN52s6HGsPTxTv7mFuLOSHObpdcNb1MiNb3lns8OcqrfNxE9qp3
         UNb/dENl3f/RbYJT3gDCdQaxeaCHA4WlTxV675CMzpYZrT8VdNo5qfG7lJfVU7PMbWfl
         r/mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=2fEygEPB/CJnmO0WxK6bV5Fa8RndV/T+jrwqqlON3Mk=;
        b=MW80kCMhf+jABr0yr0DZhhara1swcn4zAE/45isDbOPFT/wuymh5wDhzz7Z6lGpxXj
         ePwCiZbcEKkt8nnfqZkuc/c2UyppL+k5HNBEC0ylQ+T2srA9aD3tngbSTx7pknP/TDl2
         qjb56tNPgS6KCjHUz7Tp3vNnR7YNM+xfulbErKjaBCID11tUrLrQ2MC8+uzTCV0oJnd9
         xsR6Tb7KOfKLeTVxlcJ8EK9H5qVPDPPUIcHByQG7LVYFCRm+shEb1sPzn/0uOKP/akGl
         KI150lWJBX1ZT8IJL1dMhqnPo/Tur+9wgGQykfwPN8hiIhIKOy3rBIXl56aqbiq7gbf8
         Wo2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jTfoq8LR;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2fEygEPB/CJnmO0WxK6bV5Fa8RndV/T+jrwqqlON3Mk=;
        b=fmcJmi+CbdyrK2OcG1LicH0jizIs8KQMWjtg3oZumzepNnelohnc6AcqncYYX8yoW/
         ex5IhHaM+KVZIruKk2KinTKPrkDi2K4KGIsjsPLcMHVJHdbjzUurtSe5VJkS6IWyePvx
         xHDBNsvF5e2/yGOHncKdkFlOrS/FJ25oPVLCgWhhdV8LMSbSe9FBGuSMDUw5kW2A9NiY
         xIT4CpnOP6i/Dj0lAJCASsjB4u61y4ahlyJWH3KzOa0bqKYQtuGNW1nilPhCRksANS/x
         36s+eZC2i59Ry/5B4xFaYJbf9WP0t5MYlkRjYO2S1BRFCPMPYtsb/KoIPUN8aD0cYJMm
         rH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2fEygEPB/CJnmO0WxK6bV5Fa8RndV/T+jrwqqlON3Mk=;
        b=iFN/dhItKnynfogg1eJ5A3DVJOqKDOrtVwUP0Q+4vfND9sf/gbahAPfGQcTpA6Gtos
         6oaTFQ6LgXAKrx5KGGYlxcHUjEaNAVcwtmO6xwqGm1+E6zbdijcpDe01/OE4rZAdC7uz
         F0WDm6T29G0hha+cMf18kav0F4uw1tiE/zfga6lC+04aFqMgk2kPU3ONv/N+m9T8FDD7
         JxmsUEEkYYmFL/C4SV4y+mExQCNC+gexGyJkUkfXKLqSoyr6JMHSb/Rqdli2rsLzxka/
         Hl9c+ZswbeDlEEVvcBgwH6ZUwEYy4mQTsc3a0VRdq65LgjQF2nX1kIat+PSP2cQWj9K8
         tgDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326Hbw+e87Lqz0CCiPbYFsZ9QB1QDMs+q1jbdejXxptroGNW4E0
	TJKyzCx8jLsJVflWrgBbYXU=
X-Google-Smtp-Source: ABdhPJwHr0WFzzdi+eAf+yxDzPoemNfzkvJC3Xzk1AdfoQOsdLDosC5qdCaXjVfZcVQ/QZ7G1+MaMg==
X-Received: by 2002:aca:3cd6:: with SMTP id j205mr6179828oia.28.1620377551631;
        Fri, 07 May 2021 01:52:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1711:: with SMTP id i17ls1585272ota.11.gmail; Fri, 07
 May 2021 01:52:31 -0700 (PDT)
X-Received: by 2002:a05:6830:140c:: with SMTP id v12mr232140otp.310.1620377551246;
        Fri, 07 May 2021 01:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620377551; cv=none;
        d=google.com; s=arc-20160816;
        b=voGfkQtiIX4f/nCwHrkPiT+NiAh3fkCdPeFcQsNkbuM0JcjKgnRgO/sE1nEaJfG624
         BRAH1vLrZsRXiMrZxx8RWLRyxKeKesT8asTc8P4Sz5yEVQML45X05bmrE80rfSLqD0cn
         OFMo04SYzg+D5OpmZ3Juqf3WCZjLbuEJI/sCBAFS2dtu30MS6FaFvA7WLD/n0zlIYI9y
         5D7ItnL7sl1hXKzNJIdchHwvCD0GJCUTjPibe7UZobNCNGeUiNDht9YlEj5j9QbXhrgV
         Xt5nP8z833DWNSqWM2qnBf8ZrwnGTEP4ZJI0zmCkxoYrFpI154GPiimNN+prGAcS9HkX
         BFsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=kk51ztpoBo8Zvuxk9OuoeLtIDzxLHuq4PIJWw7SMpro=;
        b=nqHw5+hMCwUgRTrJpRhtzJwAUKyw2a+jwYEDWOntGqE3jAt+SZUHKo2M5pod76R0oH
         8JopMO9l4gMHKCwPSszM55VyApefI9AA2/rn/sGHMojHDPkGM2lRxjnzrag08WsJTs0r
         oAEEgx8gvM8GxjUa8TfqWMnbICIb1jyp/JUta5lqECJqWzKMkFyFm6VWIlYMfRlDuLhZ
         RBdoZgP1KT9V4K3zuwPqO0CW+ZevkXmtrNkO/RmsmXBNkJkgWgO6hPG2rbdQmKwseQQG
         rwciHkfhlKBDt9ZDfPjTOPMn6N3XOimilsyCMyPVW8QC9YGXjYLswZ9GQHqMv9p4ARbZ
         jOQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jTfoq8LR;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b17si434695ooq.2.2021.05.07.01.52.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 01:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkuznets@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-uSAtB2RQNzSXw888cQdxTQ-1; Fri, 07 May 2021 04:52:28 -0400
X-MC-Unique: uSAtB2RQNzSXw888cQdxTQ-1
Received: by mail-wr1-f70.google.com with SMTP id 4-20020adf80040000b029010cab735fdeso3286631wrk.14
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 01:52:27 -0700 (PDT)
X-Received: by 2002:adf:cd06:: with SMTP id w6mr10724176wrm.93.1620377546893;
        Fri, 07 May 2021 01:52:26 -0700 (PDT)
X-Received: by 2002:adf:cd06:: with SMTP id w6mr10724160wrm.93.1620377546768;
        Fri, 07 May 2021 01:52:26 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
        by smtp.gmail.com with ESMTPSA id i3sm8908664wrb.46.2021.05.07.01.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 01:52:26 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Paolo Bonzini <pbonzini@redhat.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 kvm@vger.kernel.org, Robert Hu <robert.hu@intel.com>, Farrah Chen
 <farrah.chen@intel.com>, Danmei Wei <danmei.wei@intel.com>
Subject: Re: [kvm:queue 11/44] arch/x86/kernel/kvm.c:672:2: error: implicit
 declaration of function 'kvm_guest_cpu_offline'
In-Reply-To: <e671b62d-0324-2835-2726-6b28a0202b7a@redhat.com>
References: <202105070840.f1TZQ4rC-lkp@intel.com>
 <e671b62d-0324-2835-2726-6b28a0202b7a@redhat.com>
Date: Fri, 07 May 2021 10:52:25 +0200
Message-ID: <87v97vvsc6.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vkuznets@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jTfoq8LR;
       spf=pass (google.com: domain of vkuznets@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
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

Paolo Bonzini <pbonzini@redhat.com> writes:

> On 07/05/21 02:13, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
>> head:   c6d517aecd40b25ea05c593962b2c4b085092343
>> commit: 9140e381e0f2f8cb1c628c29730ece2a52cb4cbc [11/44] x86/kvm: Teardown PV features on boot CPU as well
>> config: x86_64-randconfig-a001-20210506 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          # https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=9140e381e0f2f8cb1c628c29730ece2a52cb4cbc
>>          git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.git
>>          git fetch --no-tags kvm queue
>>          git checkout 9140e381e0f2f8cb1c628c29730ece2a52cb4cbc
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>
> kvm_guest_cpu_offline must be placed outside #ifdef CONFIG_SMP.  

... and kvm_guest_cpu_online() too.

> I fixed  it up.
>

Thanks!

-- 
Vitaly

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v97vvsc6.fsf%40vitty.brq.redhat.com.

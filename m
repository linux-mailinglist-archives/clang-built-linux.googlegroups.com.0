Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBJ7T42EAMGQESBR7XUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1FF3ECC27
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 03:04:40 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id b24-20020ab02398000000b002abb9087041sf1680114uan.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 18:04:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629075880; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhAAKb1ByfcPGSKKsZTaFHnX7jslcID3/TPkDhiTkXKRgZd6sR9UxtStqn/Z1YUf4g
         s2ej18QzMDVWbvcMeP10prt8+NXHySjfYJMn+uDHZVLZWWBwdjXE7a/q0PFK3Jpid4TX
         ArbGAI+CGRkuB3mCORPTmr8mLzzDDbfMMjMCMtlzYarV7CmvQivLJbGrHcmYDxC10Wnf
         frHme/l2kNf0Mn9MrHFUrtpRIhXrbJyi4GwwbhoQwRZNY3e1YqCiwAamDG/unsh4majq
         hBYjGygDfDQo2W2G9puIFMNwvKM8IjHhkKwwIdKuMwHK7Sqs88zPO9JacbvHNZFVjIHD
         xRhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qqiLDku4eA6Bpmzekc1hZJL0hSYi9Y9SmFTX/WELR1I=;
        b=U92qx5q06595o0YIMGob0+sZEPB+OZTIlfgXsdyh7RGTQDRTZp8wh5OlYVzA4exhtB
         K771K2Z61ZldtAbqDpwOyPm0PgEVpr292LP0omhhE1ofTjB2r5R3pW4QTnghL9Ka0+kv
         uxr4qPI3aMBsmMuRWU4GlUZlliDe3OSRmijfN7Z9xyzvzqiOuJ9ppxP85zzSEbzjuA4Y
         Ie8MV6NJiaOIbVD/HduxaLU4eNDIDtShgyU6DpyafGAA1wuJ8HD4CtT7m68Egw0QQTu3
         b6VFKI3hVkVX5xXNCHU+YB/S4MF91sRx9EgkDMEfIcaJnjg3lHioEHUC2C0Q/7U9JnPm
         X+aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HvVRK4XY;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qqiLDku4eA6Bpmzekc1hZJL0hSYi9Y9SmFTX/WELR1I=;
        b=ekIf4ZqDYkBdm8temOsU+KNxH8vrDjec3rRpuy53w5eRZhvK+tQ+uKKXdNWd7Imni+
         JGm7shjLA4h5IiYaYsUyLR7QHpKzLX461XfA9hKacGKl71PzZIzqLFJSn7Wcjoqg4cL5
         Lh1eBr5UwCOzAPtPNDx8rde1SlPY1Go0XyEAWJvknu+p9CFAGPyBQmYDzht4xyDV8TI6
         QiMBF7T3iCCgf21ew5fvI3O1n17mL0VJ1nQM0zJB8IuWtlM3zcQCF0qBkUTf1yr0Byp+
         zROhA8fhy58D8oP+ntIOwvJt80EMRmFHQ4ZFPruqJ+t9gRYmUsBkIxTXmHJ5jTdngBN4
         sokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qqiLDku4eA6Bpmzekc1hZJL0hSYi9Y9SmFTX/WELR1I=;
        b=mf3HL5LioJUgjJ1inE6u21icAsZUZFUNYkHsyTS8xJr/pTcjr8RCOxKa1JDQ4mH9Y9
         8HOakZJx9bthTGBZbdjjv31aVYXYt2vlPVIF6nnQRrnXQgDbdBs/8YF9x0Ev1MTGRzHV
         lm+MDoRsrpvFdqeqX62XO16MHhZ+TX/U+JAGbXot6g2lBvcuBAuAGVDQQMd1L0oanb8H
         kxxJOhXo412nwLe2SSMJN8wx8MdMtm1SmmoFkQYxmokyZDcPFGSWthVTCY2v+/+WE2cH
         2Kz2tVsAkEf8I98Wvq3JB04XCin7tSPN7r1g19DRsem+I/gxIad2UyjbZdbVLkfEdUHp
         94HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bXUwpcQjl4o4wp+zvdRl16AZeNyl7f9GNs4jSfYo5XioSbsVq
	A96L5LMYYS+DErcp7gUF8/0=
X-Google-Smtp-Source: ABdhPJxm3Gk/MsuXjv3MDsMyMpIDEisNRbq/WEpoC/ew70G72zqv7HIxGTyDACI5Kfm374UYwk4uDQ==
X-Received: by 2002:a67:e95a:: with SMTP id p26mr8392676vso.56.1629075879393;
        Sun, 15 Aug 2021 18:04:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6701:: with SMTP id q1ls586701uam.11.gmail; Sun, 15 Aug
 2021 18:04:38 -0700 (PDT)
X-Received: by 2002:ab0:3257:: with SMTP id r23mr7323362uan.60.1629075878885;
        Sun, 15 Aug 2021 18:04:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629075878; cv=none;
        d=google.com; s=arc-20160816;
        b=qyIWcR0DbEIK7DBURrD/rYgp9TxzH7Tz3nfoHEd6jws/2ERMpu/DTXLcBG0jTfnwoG
         yuayfYc2ufioKx/or5+PeQVHqIuUdLpxwP2LU+0KFr3KF2qjZiSKq4pswViJtSJXg9EB
         2lZI5aUSk7aDDcswKLjJlC0eNbuxG3pfBMtNjqvbnSphy0UKCNpbpVj9yxgnhksJeywe
         2SAGHDBDUfYfUOx0TakKzuzZtjlvLHfBoli1SgsKe5YdF6QYG4oEm5Rklmz2Voch9avg
         RmyUdeBOPu3KLen/WGxdfPC3EUWeVaElTbGKixz+TcDALWea2NK1/QBLQ7Xv6vedmwRS
         hE7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HbfvwkokljU3OH/PzyLtJVDerFx7CfrHkMttzBcnp30=;
        b=xG1MTBd6ER7R26W+PZnm1B/4MN6CS1wFoV++Mr4L4fFfyQjCOFuAD7ZqP5VM7dCxSh
         HlQS9iR4AiIIkYOZb6hn+KQSfw+OEfpkBaYmVGBRUJghf79i5+McyS0HWPv14bdpUPN7
         8lli4ZE0zJ3GfdgTzgk8ru2u4vqwdVQbADxJ2qDG96p+D/yW1tUYE8+S5PFW7h5zcB/W
         b7FndayOclk4KILsREm4W3smSuUCUhW43A7izyx5HcdNelPtZCf+oirrnYyzRyKUAzgW
         OfgX6QVmxZxJtXuMoum7vAQ+Jn3Jn64+X+IJVA951kfMTn57IEdWjTnhbEUHZ3nQoTmN
         x1vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HvVRK4XY;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id q23si617352uam.0.2021.08.15.18.04.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 18:04:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-T7wyzkvIN2yAlijX0tPMew-1; Sun, 15 Aug 2021 21:04:36 -0400
X-MC-Unique: T7wyzkvIN2yAlijX0tPMew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F56F108292D;
	Mon, 16 Aug 2021 01:04:35 +0000 (UTC)
Received: from T590 (ovpn-8-17.pek2.redhat.com [10.72.8.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F184B5D9D3;
	Mon, 16 Aug 2021 01:04:26 +0000 (UTC)
Date: Mon, 16 Aug 2021 09:04:21 +0800
From: Ming Lei <ming.lei@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Jens Axboe <axboe@kernel.dk>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
	Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/7] genirq/affinity: move group_cpus_evenly() into lib/
Message-ID: <YRm5lXfnukXU8Ebh@T590>
References: <20210814123532.229494-6-ming.lei@redhat.com>
 <202108150001.EBuNGcQ8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108150001.EBuNGcQ8-lkp@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HvVRK4XY;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

Hello,

On Sun, Aug 15, 2021 at 01:01:07AM +0800, kernel test robot wrote:
> Hi Ming,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on tip/irq/core]
> [also build test WARNING on next-20210813]
> [cannot apply to block/for-next linux/master linus/master v5.14-rc5]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 04c2721d3530f0723b4c922a8fa9f26b202a20de
> config: hexagon-randconfig-r041-20210814 (attached as .config)
> compiler: clang version 12.0.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/759f72186bfdd5c3ba8b53ac0749cf7ba930012c
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
>         git checkout 759f72186bfdd5c3ba8b53ac0749cf7ba930012c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> lib/group_cpus.c:344:17: warning: no previous prototype for function 'group_cpus_evenly' [-Wmissing-prototypes]
>    struct cpumask *group_cpus_evenly(unsigned int numgrps)
>                    ^
>    lib/group_cpus.c:344:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    struct cpumask *group_cpus_evenly(unsigned int numgrps)
>    ^
>    static 
>    1 warning generated.
> 
> 
> vim +/group_cpus_evenly +344 lib/group_cpus.c
> 
>    328	
>    329	/**
>    330	 * group_cpus_evenly - Group all CPUs evenly per NUMA/CPU locality
>    331	 * @numgrps: number of groups
>    332	 *
>    333	 * Return: cpumask array if successful, NULL otherwise. And each element
>    334	 * includes CPUs assigned to this group
>    335	 *
>    336	 * Try to put close CPUs from viewpoint of CPU and NUMA locality into
>    337	 * same group, and run two-stage grouping:
>    338	 *	1) allocate present CPUs on these groups evenly first
>    339	 *	2) allocate other possible CPUs on these groups evenly
>    340	 *
>    341	 * We guarantee in the resulted grouping that all CPUs are covered, and
>    342	 * no same CPU is assigned to different groups
>    343	 */
>  > 344	struct cpumask *group_cpus_evenly(unsigned int numgrps)

But the above symbol is exported via EXPORT_SYMBOL_GPL(), in current
kernel tree, we usually keep such exported symbol as global, or is there
some change in kernel coding style recently?



Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRm5lXfnukXU8Ebh%40T590.

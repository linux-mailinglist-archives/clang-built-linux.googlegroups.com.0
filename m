Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBUNN677AKGQEE3AT4II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C062DEE2C
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 11:32:51 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id i6sf3304610pgg.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 02:32:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608373969; cv=pass;
        d=google.com; s=arc-20160816;
        b=QL42JMEL7ZY7CzgsPaVwCfLxVXjxq9M3k7GT2YawDIrPUgdFYl/LK2IxlBpaSKn1B9
         KP7v2o/MF0I9HmkK01bXsq51iTYr8Dbw15itO/HGBHFjED/uiTITkvB66KuOqTpKEcze
         Ck6ABvXZIDxwgH/zGcko6MipaHSMw9QiYYmEb1b+vsTpXXacK1aCugPHFPzvwy9TV3Py
         O+uaNnihuqNzGuPPdXp3/NTPzZF+uT/MExtp8I7+PjIek8URsatpsDupln8zLFFs+iQM
         QFd0zqqv56MkzQKSwrn8U7L4+rU2iWedGsrD39t0ZUstMlzYzCafh/7F/9zqiR7CyfCj
         h6qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=YoYP3wOgIyDgsyrQHS/FiV0f1IuUdOq97zXD5s6l/0Y=;
        b=Z3WKp3Fd7Uzt39rGFkmApHV0vXN2LxCswlkffmCBws750Kt4jNqdIHoV95QzLVnw4C
         u/2AS8lUCLslHfzOWcYswbo3afwUCxROjuwRgh8W746VcALqyPlxFvfoBT36rLVi8Avn
         OjG7rPBVHcw7WxSlu69fmGm1+wksF9qD+sDw0yh0fOyk9F10/zYIGyvAGOh3qM0foY6A
         ci8h5IHFJG5ntxc9hRheJydUD1GPsLQPjQqo8Nffw5UsL4zpZXG+IYoN7tjUjn2Y3PaS
         /AiaQffYaxbTaFKPE93rqfNUHiWIrDdU6/A9/k+QKj/C4/Avx9wSUIQ024oT+41uHb9D
         qXIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoYP3wOgIyDgsyrQHS/FiV0f1IuUdOq97zXD5s6l/0Y=;
        b=C6jIWGR3KiK6vN3+PQpoTpm3uXaN0X2BBshyYdVjbLTAkQdKAyd5GqY3h/CavjkK79
         jjr96VqlVwZy9bikHy7cqvKVNc16Y1SQ8+NcTRVq52js0Q6F36u2b9XhRJk6dgwreE6e
         UPu5jKMYjCaGwzyczyO/A6Z0EfR8gd6edA52STu3xksyoOcp2mv/wzJuMPAka3MGm+5E
         Klp4k3EtPsR32+uRFdxjIhsPvuDUUk1owjKZuCvbAtLHV1HVXkEbjyEuvw4phl7917Zm
         mLffjGL8mRGeZDrCuvZDSldwmTUN+6OjyK3uV+lp+KEEQ7lu4wnCvx/eXv7iRfbnxgTT
         nJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoYP3wOgIyDgsyrQHS/FiV0f1IuUdOq97zXD5s6l/0Y=;
        b=oV4xci1giAee+yZqGWWyCK/vdW+1OELmUYY1F6dqXu/9Id/LHM4dxJrX7dksiZ/8om
         NT9+cpS/OZOc8cfC4TsRBKUEOXP8P1j+KlG9ZkNNtzriXguptxZZpGIVwvFKzNiZsYlu
         QWzp4/gMg96CmB8fnW2blfwovIcMHaObzRF8woXPrvEXCtsVdDMjEZ6mNaXtMiKHzfZd
         AX1Xqj5YvGsHP3V51ZU1+y6wtd1WpF7jHV8hz3LnHvSAJMFdHv3hUOsbuklb36plWu5B
         xVG7klaqSJzZ0kAwvvwi2vpuSX8NKhDEwC6LDd991dPvc6X4klCTcRRwHpVsbOiGQDxX
         UlWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/arDaGSyb+3kCLNgjnXU+HAVGNOlKePCgoMMttT5dXB1cwtiN
	MaojN9Nel2BdJgONqJUbd1I=
X-Google-Smtp-Source: ABdhPJxuPCMnrgMFV15aHGBMGbCvmK3IKjNF1/legclooW5Dziy4vhOx2yiC0285HCWhb+2we+T/xw==
X-Received: by 2002:a17:902:9a90:b029:da:ba07:efdc with SMTP id w16-20020a1709029a90b02900daba07efdcmr8127757plp.1.1608373969526;
        Sat, 19 Dec 2020 02:32:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b893:: with SMTP id o19ls6261442pjr.2.canary-gmail;
 Sat, 19 Dec 2020 02:32:48 -0800 (PST)
X-Received: by 2002:a17:902:b7c3:b029:da:76bc:2aa9 with SMTP id v3-20020a170902b7c3b02900da76bc2aa9mr8374683plz.21.1608373968886;
        Sat, 19 Dec 2020 02:32:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608373968; cv=none;
        d=google.com; s=arc-20160816;
        b=xQRedRDNbJgEqQqsafuRkXbsNR8jiYG4KOYP8UYiP/JmtSzfl19avxrvAFtuFpVInT
         w5MWUhF1Sl0DaL8S86e4s4T7HPczrA0cueRJCLB3sCyzbPwR3+xDndQsoxMuW4wPTjCf
         bTpZoJlRrAz353Em8zlcpTzjcu+K4ZyjqQwpGrW0MpgnJLZj8F/upAuXT+ySvr+f0JZn
         knEH8q29MsK3A70llZMksrwtWVUHXwL8+PSi7F2bF5G7xBF5hgunxaMQinaUdnjglmBn
         ts022C0mOeKnqLGk+P2Vne0puCTYg15yUTEnOc2gDTbm/HKc3t/PYIHFjh6qcXk1Uu1t
         UfPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bX1lHmDGZ7u6f0LmgYQgU8K67tRD5Cadm00rJVZSw/4=;
        b=vQtGy4XZ+WR5GSKRD69uJ0mnq4CEJVQcOMBvtYx+QtyGWv8UPVxGaq5HRftLD5lYy2
         twWL6A93RFVgEwB7VbFTmC0AMVxd0pbQ1hYDDSMIInmamI/S2mL9YQqe9MwGY3BDd+pr
         vWX0V+DcS63yGcM9fAA+EbuW6O/yLf9ZizA8jmcT0Fy35Q1t4MEAxavoFmzv+rbb/hV8
         SYsj9lN59SN8npEai79uYIa7lBKiG5ymJQjypEiBI5bkhEmEkLSTyblvHVXs4fCTOD5X
         T0UszUrV2oCK7xC10qRFGpeg1dqTusFHx735sKDtkC+FytpcmjNTAp2eWrk2YaIKVYeQ
         FiWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id q32si721192pja.2.2020.12.19.02.32.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 02:32:48 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: RzxuHbaDkqc0vbYV+J/Em65VG1fwO0W3cmW3Y2LD7dsgG/Xa588x3FBsjCMH1FndBFx6mUuvpQ
 8q8k34WyvEfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="239652079"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="239652079"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 02:32:47 -0800
IronPort-SDR: YjI/WHP0bL8hO3OH2bnpMa6QiVCyUjLFkQnp7gjPKiOEQKRfUlZSlIBUymbAK20whgaUPqoPUD
 7swJhLgeMMbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="490289469"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga004.jf.intel.com with ESMTP; 19 Dec 2020 02:32:45 -0800
Date: Sat, 19 Dec 2020 18:29:03 +0800
From: Philip Li <philip.li@intel.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: kernel test robot <lkp@intel.com>,
	Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Alexander Dahl <ada@thorsis.com>
Subject: Re: [kbuild-all] Re: [linux-next:master 13540/13785]
 /tmp/do_mounts-997907.s:184: Error: unrecognized opcode `zext.b a1,a0'
Message-ID: <20201219102903.GB14085@intel.com>
References: <202012190800.zhlTY0rf-lkp@intel.com>
 <20201219004521.GA18304@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201219004521.GA18304@amd>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Dec 19, 2020 at 01:45:21AM +0100, Pavel Machek wrote:
> Robot went crazy.
sorry, kindly ignore this false positive, we will resolve this
problem in earliest time.

> 
> Nothing to be seen here AFAICT.
> 								
> > commit: 232aa16455db7fc1edb61878853d620067a30fe5 [13540/13785] leds:
>   leds-ariel: convert comma to semicolon
> 
> This commit is not relevant for risc-v (and does not really change
> anything), and does not even touch init/do_mounts.c...
> 
> >    In file included from init/do_mounts.c:7:
> >    In file included from include/linux/suspend.h:5:
> >    In file included from include/linux/swap.h:9:
> 
> Best regards,
> 
> 								Pavel
> -- 
> http://www.livejournal.com/~pavelmachek



> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219102903.GB14085%40intel.com.

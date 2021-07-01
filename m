Return-Path: <clang-built-linux+bncBCSPV64IYUKBBK4U66DAMGQEO24X34I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f60.google.com (mail-lf1-f60.google.com [209.85.167.60])
	by mail.lfdr.de (Postfix) with ESMTPS id 0932B3B9290
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 15:59:13 +0200 (CEST)
Received: by mail-lf1-f60.google.com with SMTP id bu14-20020a056512168eb029031226594940sf1833964lfb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 06:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625147947; cv=pass;
        d=google.com; s=arc-20160816;
        b=luKOJ5nrXqDKER6AWYy9SBv+ldS8wGgYavTtKsZIa4GuH/Cw1Hx5wCYAxArqGN8BaX
         BvXvv7iQQx25RwM+ADLFmiNI+Iuv3iYFi5l25NvJEqT5IsE+EARDaLli3jGvEfGDgwdo
         Xuw5xOK5/TppeZCxq8nRVfEZfptkM7J+5XEAGODDynOb3rAd/fb1XSM6CtD2v3LUBaUC
         eajj6TsRki4nJu3Tqhec4PWA5Sh99z+GrIO8qevInaJDDQJiVQ0Q5sMiF1B9y/pKUNth
         mnqAc4LPqhY/gbNsPXNuLm9NPsOi32nKHIXAQSHuAxOHPSc/bhP3pkPtoWmqXhUxGIC6
         2ChQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=QrFyUaJbWNZZamYqepAU0RrOcI6KXXPWQuIuPjV5+AQ=;
        b=qe33w/VAdhWCEhUT6X7xxO9WZSzH4NEw4rAdC/EtLKpG/nrCoQi2vN4ZNoIT2HP4eS
         IMuLrW9ufyEBtknXtp5Cbf4IaUtoU2cevhmTfpFEUbMnbg5efurInmWAxx+VS/rPFQA5
         7mCeADlevswyVMDURbuGVDysevnerKv7qjWXzzBxwL6Psw4sqqNNohOeLwiFl2aEYd0e
         pJ4FW00rcefOffjOaJll1AJLyfhFkJb8B86rSsbU52y3Z9sI1Y7NWXMmg81Y0k30R2XM
         M9wi79ssky/YqRaVwjg0+LJ468/SddeUBtYtbAE3dRZz/VcZ9KwKOf/w3iOaV+RWlTJ6
         DPrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=EsEoFFGd;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QrFyUaJbWNZZamYqepAU0RrOcI6KXXPWQuIuPjV5+AQ=;
        b=KM+CifohHfL/l0m9DAqtkNVF6vQHobl7MJ9shtO5ULTRr63og6Rr5Y0fJXIhtVB5b4
         yT8tkkZdfBR86KcaojlT1P3NsuX2/RsYcwPaaoagLxrBrLFrhXgNr4F9Li9+QN5qJU1i
         4CGkM/DYjI5MGK+eKYjaGQLUfs9LP+hzh5zHpu4qJQKi3vWkkrjDWGdeULrqoy53jVhD
         K+ZY1BqLp7Hwn7pLhQ8cS6mNDGECm3OHaLUqeU1G5xnss040ysFbn+FUZtRP6QQUQlRE
         savT7tV1Fp8O4AFdfzS58wq64furnaqaS7qj1oZwwXurVBPPgc/WsdDU+6bTZtB5Tn4o
         W45g==
X-Gm-Message-State: AOAM531xs9NoEJzoJ9LQYhztz9jE0gVVdrvfxxeEWqkp5sjMv4g7XyNG
	Ozezx0FL64tzOd9hCfblBrM=
X-Google-Smtp-Source: ABdhPJzOSNye4tuyDRJNcqFbsW3UZNxSmJlIohCtkERa/1Q1638cLLLtswkKI3Pc2MIiWGuMuKGFsA==
X-Received: by 2002:a2e:82c6:: with SMTP id n6mr12720405ljh.74.1625147947514;
        Thu, 01 Jul 2021 06:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a587:: with SMTP id m7ls1002896ljp.6.gmail; Thu, 01 Jul
 2021 06:59:06 -0700 (PDT)
X-Received: by 2002:a2e:a484:: with SMTP id h4mr11867454lji.393.1625147946396;
        Thu, 01 Jul 2021 06:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625147946; cv=none;
        d=google.com; s=arc-20160816;
        b=Q8VV3wIID+8+DPq082ZOcj50zSjhZdnMZcMAMue3ngdEz1fYY7hEG/FANOWefg3T92
         wsG0yzsTmzJx3SdJ7owf+f7NGL2smGZ3VcA/ieBIf/4HoaksCSLInKnjuCyCtt4t0kY9
         B4MHKjYnJrt4a0kcNdtswfUCgawogFFbPsLQlLFVXWTOg5H6IkGxJaz+JtU53CRADoaP
         aZZtDdo2J731MKtbSfNvYH3zF0WNsoYessFwFrMF2x6YcBD/cMwjCOY+xazvhAfb72bn
         b5wjZj96rJPQccuB82RGaWrcp58NRZm4r0lxQOFo6KUaCejRUTM2HmaRtMVTgBQl0SfS
         a83Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=k4p4u/aZFIZ/p2025fJJI8G1Sk0DknIcTvejLjSTA8c=;
        b=T16pvK4KbpNh+bXiOJliy2b2dxPbatbIruiiQx/V5hVouzN3GvQFkp5ZYmHxYHlm51
         6AUrxJOil/57ARQUksdOP2KIJf9M/xibsI6qP8rIzwHYi8fGBHh7NjPSbFbOWR+tEChJ
         7KIpyl16Snsrd4jf+x95WADhiXBjTfgcWtVjeegA9ksI8WMd3FxXws7TloZQ2ddyNuH0
         X/RmjvbyaclyxBFPjXroi8GEQHXnWdXisOeXDa6Shl+pjvlAlLOPR7PISPoLwoanLK/P
         1ocineCRZar9biIYcTv++W1VcIaZauxKERYWpLW6pcvfCUuukYxXCz9nzDnxhYgWs/pD
         rv2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=EsEoFFGd;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id n8si2959lfl.2.2021.07.01.06.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 06:59:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45578)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1lyxDb-0001G3-7F; Thu, 01 Jul 2021 14:59:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1lyxDY-00048P-2P; Thu, 01 Jul 2021 14:59:00 +0100
Date: Thu, 1 Jul 2021 14:59:00 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	kernel test robot <lkp@intel.com>
Subject: Re: [linux-next:master 6560/14009]
 arch/arm/kernel/module-plts.c:26:2: error: use of undeclared identifier
 'FTRACE_ADDR'
Message-ID: <20210701135859.GJ22278@shell.armlinux.org.uk>
References: <202107011205.9FEDdb2T-lkp@intel.com>
 <35d12988-6d26-bd7c-c236-ff78e0cfef01@nokia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <35d12988-6d26-bd7c-c236-ff78e0cfef01@nokia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King (Oracle) <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=EsEoFFGd;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Thu, Jul 01, 2021 at 03:08:07PM +0200, Alexander Sverdlin wrote:
> Hello Russel,
> 
> this is a second report on the same problem, shall I add
> https://www.spinics.net/lists/kernel/msg3968916.html
> 
> to your patch system?

Yes, please do.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701135859.GJ22278%40shell.armlinux.org.uk.

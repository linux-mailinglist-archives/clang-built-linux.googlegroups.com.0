Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBVXKUP5QKGQE4DF6PGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EC64C27322B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 20:47:50 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id l17sf6214279wrw.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:47:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600714070; cv=pass;
        d=google.com; s=arc-20160816;
        b=zV1qd2yosBvNkIqMLGH+VH9V3J2gjZvHoA6WzJ953TzUsCdUYaRG9IbrNq6dT+Mukm
         QQOApstmeCrpLR7RWk7r1eBFvXL8jc2MHXkfO516lVAXEKksPo4RcDBLtBwr6yMRZ6bp
         d74CnwPi5XIfoPXHr8+15O7SlFoKWlO4F4EAivQQcdRqtvboXM3YqC9ZrRHRviYecml5
         bDVCFHs80l9bV2/X3U+srrIrFQDZGEe9rGwQHvUyU9RP/F30iqT8sJA9On6219+jQV2s
         wpa5Wqx7rn+PFibXG2v4AfsaoERUk4xnJjhDRyn/9cfs7TEXAZbpzzmhuUpd08YaVm7+
         3GTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GWW4FOZgKAnRsQphMSM6ooHv+yGD0Smf65Ueh5wnKpw=;
        b=uN/ELTWXokg7Q0NIMhb12LVz9I3b9ZQDtD84tjXCjPHL+S2f77PW9jopj3S2KTvY2v
         Q6i1g6LIMk/mX71dK9rMHEmFal+1VeqI06ImbS7AywFNk8Q0nLVAbeXQqYmbg7qpAFC6
         MVqpgNzsYPcQmoKj238t1RgD8mmaJ35OrWTk3PqVuYWFizB04mQsajNVmdb3Yzdcabjv
         vSzsT94ZM9zYRGFQmoHuGrGwafN4UzItdbj4TS6dMxIuKwdojRtfhVXh79JBJdBz4rcL
         dSoJdtERt5HRN8vyTgGpPiG6PQfzKfucQW3v9LXPzdjXG1zKIfrX6C8kVdvXy6meevfy
         912A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=IoHznwPz;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWW4FOZgKAnRsQphMSM6ooHv+yGD0Smf65Ueh5wnKpw=;
        b=ByRwEPsoO82eIYKSMGJYLxjicDo4r9NILOHzQs+4/PaSg7dSSVZPLT40GyMsflu1yz
         FyOsRw3VjoBvGCw8lvR704XHLlyiGdE8EDJfjEI74sAUx0gvX04nGI6qqIKnYFPZeQ/r
         VVqffRMAKXxBo+jvDqN37pDvVs86c0HUPhk6JkIaLsWhddypL8uThgA8vxFOPg2uViC8
         9KcaitvnIEkkKlX+PYoaSim+Cx2kwfkJriGdqqm4ue/gFqUIFFs0o+iUWRD37GH/lbz6
         tD0J9/SPkWUtsKJV/euwTPMLCDg1+C8y25YHNmfhZyVhvTkMduRyDphtCAOkQ35xhOSQ
         qBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWW4FOZgKAnRsQphMSM6ooHv+yGD0Smf65Ueh5wnKpw=;
        b=U/GrmAhalHeGyYyWGfmrblO1OGvGQCkVv3UFCjh2TrwCSxEvDWfsdOkPhq5yy9NRIV
         v6y6Hwgj8jxJGi/TXBE4pzR2ZP663QaT17YsgrNcHZIpM5EYcvNppSpU8w54BajtHUyo
         th9sdBU9DEM72xFtmiktplLwrmO+WeWmNZr92xzeRZ3XjfG+3TL9vntdYFaxyHaIPu1I
         RRwJOtD1r2EZ5YIxq/yP9sRMFM9qyQhgt4WpW+m1P12LUaefc0jmvSXXyYHnevz/iOnC
         bks/WZdC1JkmTmmrE5gttF2YEQP9l+6l5IMxJyfJa3DyXSr1gCbgTT/Lro1+n64MlFLC
         NhZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339mpmqkjA5BoNrqd4hgmz8runVX6CfrBtSqL0pvgVg7tqMDLxN
	kL+0Rnicu8Xk0PY1DhnXptI=
X-Google-Smtp-Source: ABdhPJyLbBl7wzrSeKO/+kh+4S/00lr6H+LfUTexWwSkWXP99Bjo8ZWMXbmqISrGSoVOQmqQJqchMA==
X-Received: by 2002:a5d:6cb1:: with SMTP id a17mr1222154wra.386.1600714070697;
        Mon, 21 Sep 2020 11:47:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:98cf:: with SMTP id a198ls231777wme.1.gmail; Mon, 21 Sep
 2020 11:47:49 -0700 (PDT)
X-Received: by 2002:a05:600c:414b:: with SMTP id h11mr755700wmm.20.1600714069663;
        Mon, 21 Sep 2020 11:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600714069; cv=none;
        d=google.com; s=arc-20160816;
        b=okzxq5q+rt0y8P28yCaHz7sxtYXj6n4b3BxHt/HWm+CGpPH60dzZRnzyRLaUZrEG0e
         iIT93Q7xL+VeTBMWuuV0r1WcF9xAP6J8sgR7LOXoZ3+ekYl8mTTIoeZnacct0aZeuvSQ
         zoDWmjVCm06NsQwM5ABeFBNaSy8La3N0a8kXayDRq60TMmKhPufCHFI3S2EgA3WE4v+y
         v7aXEdqZFhuF1LmY4Rq7RqwRuAgrn/z9OC7CRAfRaYa40uCkU7g/nX6j0v2pFdnWObfh
         /SLN4okL/vJTnip3dJ8m6vSJx+cHjoKbtcwyV4wR7Nuzazy5k/1HPYbSCruXxvwCrJ4l
         dK4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pyDbIcQAdvsX0pQDLSC3IzwQOFdxADNEZk7v/eXeHTc=;
        b=QeJYDZP+4gB9JdyZoANs+6ec4K5Z8EnJ9tVMt88XY47wLI25P0P+SbW4Jeo/vme7AD
         XNp9TymwOWjpOqV2RZVN9CRUpb4gm1zSaQ9wQJyqaA5fBqfSKA70dqMlRaD4fEUW9CwM
         wE+WEeRlr34GqKzwy8ERdoUA4f5MFJ+1QCPg46kkkMt+D2mN0d8x97reYFnX7HFVpgT+
         P5krFvDuG7rzSbwwCkW79/veEwpO8gnZyuTOmOaV7C9wujlHkla6um8oihnuSJwwvVzu
         p33dxMHOG0+zOkhQFSrYX0OIJ9TjT+c9CGon8suMS3L3eQ7so1oZiqGJbRadq9d8PBJ1
         6jjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=IoHznwPz;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h2si27234wml.4.2020.09.21.11.47.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id t16so13842968edw.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 11:47:49 -0700 (PDT)
X-Received: by 2002:aa7:d04d:: with SMTP id n13mr324028edo.354.1600714069342;
 Mon, 21 Sep 2020 11:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkGd6mPw_OKHwmpVs_xxFW2oqAoXyr7M8hu3PCCwkqCEQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkGd6mPw_OKHwmpVs_xxFW2oqAoXyr7M8hu3PCCwkqCEQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 21 Sep 2020 11:47:38 -0700
Message-ID: <CAPcyv4jZfbuS8zHZXBNqRTi_1HzHLUztkxDmsruMk5PGinGhPg@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IGVycm9yOiByZWRlZmluaXRpb24gb2Yg4oCYZGF4X3N1cHBvcnRlZOKAmQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, "kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=IoHznwPz;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Sep 21, 2020 at 11:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hello DAX maintainers,
> I noticed our PPC64LE builds failing last night:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047043
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047056
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047099
> and looking on lore, I see a fresh report from KernelCI against arm:
> https://lore.kernel.org/linux-next/?q=dax_supported
>
> Can you all please take a look?  More concerning is that I see this
> failure on mainline.  It may be interesting to consider how this was
> not spotted on -next.

The failure is fixed with commit 88b67edd7247 ("dax: Fix compilation
for CONFIG_DAX && !CONFIG_FS_DAX"). I rushed the fixes that led to
this regression with insufficient exposure because it was crashing all
users. I thought the 2 kbuild-robot reports I squashed covered all the
config combinations, but there was a straggling report after I sent my
-rc6 pull request.

The baseline process escape for all of this was allowing a unit test
triggerable insta-crash upstream in the first instance necessitating
an urgent fix.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4jZfbuS8zHZXBNqRTi_1HzHLUztkxDmsruMk5PGinGhPg%40mail.gmail.com.

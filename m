Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBSMRSH6AKGQEJ6FAWGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746028B46D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:15:07 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id v187sf12211848pgv.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 05:15:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602504906; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkYIHJtzZ35AOkZxSpYxH6jbfVsQer+3f9BSO2I8tk/xTwJs2hnR+3mesA9tcjdK5b
         WVN5GEPXBRQKD9iSLSvlHL8Be/rM01L9k3Z4s4dBIbWIEl97X3bZM51lRHCDhsZbbijj
         l1MMJXPDus81vGbEFstGQxvMO6SxpvSsPtAANYmVkjN/U9DI0trdhBQHIdX7v2ACnZdJ
         grGtVjyJGsz3kHDPA5lXImU/GeK2QZCFRrrNWPRUtsR5SAgtjA8rfCblnApQ+CJjsAxJ
         0Sy5KxQN/PbKguaMSGX7euitxuGXVOyScaWjlD4o08sm7WiahZ1oFIdz/LXBoisFRcqG
         8HeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gdIsNSeL+p3SO1Yif0/49D56OH8ms1Kn42scc3Z2ac8=;
        b=bWobLHBtIeFBhvtgDCjWdxRGyJ+mvxu9WZ36uacCZQ2RCjEQCPDPtF54AgPQzgSiSM
         jOrGKKZu0q6loRJnzY1dyt0xZh1BKKn4+V4USI6PvmSrl4DOoAzK48AREF0nIZPnnuFi
         /ByGdAyyB9oa/gNWIpjZGxrW9YUuQ52o9ICMHc92ScDGOs8cIL0hnnLt2nGsMo8vTwi4
         6DCOb839O6hlhCbIW3PzdjSXi32WpefGqaSy5k2jpaYmORrezngHZkTnxdKUFdmQC+/7
         qr+pzPtzd5+F4lBeDmOUfCBDS/XH5pX94LFFzZEmj4xqvSmM88yE4n7tv9nzsk/Vp7Me
         toVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gdIsNSeL+p3SO1Yif0/49D56OH8ms1Kn42scc3Z2ac8=;
        b=ng7J7L+UMgBFwObsvDhlzwYnqEFDss/2kClRhR23TKqQ5Yeqs904OGDm9mCf7Fg0O4
         ru4OPL/+xB7FGOhRHTrsOeL0TL98LyAFA4oaj919vPDSs60WvNMqyxFC1DhV5Lu5b1I8
         cHzWI9VIsKU7AuBz8k6Nr46pvOF/mHqP/rLIj/Ys9Sogz8Nga7EipdrAAdZmz+LwA7Fz
         1HhLmchmlkvq2L4F5/XIniJlGJwDZhHOWXyGBPQaZlgYclShYRmNfzMyXKwSANA9iMjM
         HBu7TPl+fOPupi96fjepJdFQLLR1G3gSURXIoM2l3W/ixArsJlDAaUU5mbSYpGuU16gF
         4kYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gdIsNSeL+p3SO1Yif0/49D56OH8ms1Kn42scc3Z2ac8=;
        b=i7UX+C66IlwYshCsG85g5MsE7mbvXb+JZiFy301I/uGCAmoiPMsy3xQMd2VGTvaFgq
         ade0Dys3xJB3ENurBIeNnnSH9HmoS8BPI+VKCA/HCIZCXBvegvei17QMTz3397+Zkamd
         MEPGJMUJsVznuc6INmo7Ui+yPr5gt+ppo8/O4SfoPKPZ9b/HRuz18Eryb9Yuk9nouMwv
         gwgIJOqNgfIXat6kPTEnbECwoSgZWVty1d8iVNHPt3OZjK5Y/dxoS9JEoQDHJjrdppwZ
         +gJwE5QhH42/j2en/SoVgVPyKxriC99sG7pYNOgVsB45EP6LT8+oN68+f6aRZyKi1vNS
         DZRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HIUN6t1nyhluGS5Y4LNGY0pt5fKeaRl1/gz7EuDfesoMP9lOO
	LKCOlzubWwpf+NSE6VJ4wBk=
X-Google-Smtp-Source: ABdhPJwCfi3NKyqZ+AWW2ciOQXm6EQpAMv2pS9hy66CabJIoThsus8S66ojSebRFuW5E1KAtlD9U6Q==
X-Received: by 2002:a17:90a:7d06:: with SMTP id g6mr356283pjl.113.1602504905875;
        Mon, 12 Oct 2020 05:15:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls7600240plf.4.gmail; Mon, 12
 Oct 2020 05:15:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1050:: with SMTP id y16mr5955262pjd.164.1602504905275;
        Mon, 12 Oct 2020 05:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602504905; cv=none;
        d=google.com; s=arc-20160816;
        b=N0HDkSeyiG2fWm7UzjHkiHb3vNq9tAXignRBjGk/jrXUSReZreUb4awlVJKRy0gDA6
         j3sZrr9/ORfjrt8mxQE2gBmedgI1QTNxygqp2BocURxiTQflSSXmvGvSKpMUocAnzMv2
         jk+/8GaXbCI2zd4gjVLJ2rv/ZwuSd1CaFitA487n6j96UdyrYSuSksamL62USKgN4wvd
         OSMEhcF8vJIMjFm0jv8oLR6bRwIrz/ClVpPBMe1iJS8tLz0qmGustCd9JHaRQ9JcY6OM
         Xcee82OyOnybAolA2UCzIdN07zl3MnWueFC62bwO94z4u4S3ZWj/cOyBus/l2xWFKjnA
         e5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bP+bDWwm0DzcBmOd/aeSsSrRyfTOC7N0qZqTs7hdghM=;
        b=SmhuloDnBpxMF0tDjAMFABq5wg7PzLwC47ilaW+13IO5LXpxdQHHwTk+3qz/A96z9D
         0ykLspMxYIzlbDAr6npl8iIGff7G/sR7yxsp6bDuYcJ+tBCmiMiBhOgY1Lw8ynGfZM0M
         wLY/PePwf3ChutjKEnefHh3+ohO0Jjdota/G/+l6L/9KiJ7Id6jmbVH0UVXCJqjvoTWh
         f6IQiLN4pvS3qO12q5ozGtUQvCJEauIr3pOyAB1s3gpniQhQUyt3WARpn7y8U6ge/Avb
         ZIn0nTm5YDdCkBsC4Yv4MkuJVZocCl7SyjQxgYd74C4o9muRBHKJ4i0tdg3BGloBUmc1
         f1pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id c6si729544pjo.0.2020.10.12.05.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 05:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: TGjbs14LsvPSZnGuR/ptNOSCb5i6ld7mUSIIO2GUtHUAm8eHJnF7md+DKF5eVHrY2eQrZuTXax
 0ehNRyZdbyJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="164943103"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="164943103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 05:15:04 -0700
IronPort-SDR: rGf53e8Pj10rm9wrvjfCD7RYuQYfvkec0wbfylGXN2bBnC0c3oNew/hAtzwQBxb2FBRjYogwbt
 GudWLr5dlu3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="299208027"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga007.fm.intel.com with ESMTP; 12 Oct 2020 05:15:03 -0700
Date: Mon, 12 Oct 2020 20:12:04 +0800
From: Philip Li <philip.li@intel.com>
To: Dan Murphy <dmurphy@ti.com>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [ti:ti-linux-5.4.y 1/1]
 net/hsr/hsr_forward.c:244:3: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
Message-ID: <20201012121204.GC23489@intel.com>
References: <202010101513.xK0Ju6WU-lkp@intel.com>
 <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
 <20201012120818.GB23489@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201012120818.GB23489@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.115 as
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

On Mon, Oct 12, 2020 at 08:08:18PM +0800, Philip Li wrote:
> On Mon, Oct 12, 2020 at 06:42:21AM -0500, Dan Murphy wrote:
> > Hello robot
> > 
> > On 10/10/20 2:07 AM, kernel test robot wrote:
> > > tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
> > 
> > Why is this TI tree being reported to the open source community? They have
> hi Dan, thanks for the info, this is added automatically, we will
> disable the test of this repo. Sorry for any confusion.
oops, I understand the question wrongly. We will keep testing this repo.

The problem here is it is a clang build, and we currently cc clang mailing list
in case there's doublt that this may be a clang prolem instead of kernel. It
is not specially to whole opoen source community. Is this ok with you?

Thanks

> 
> > no interest in our product tree unless this same bug is in the mainline or
> > Linux stable
> > 
> > Dan
> > 
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012121204.GC23489%40intel.com.

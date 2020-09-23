Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBS4CV35QKGQEP4R3YEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6FC275E55
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 19:09:32 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id o6sf103236wrp.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 10:09:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600880971; cv=pass;
        d=google.com; s=arc-20160816;
        b=IOOoCAj7NcjgsZ0nKREZv0WRPMgNxNhjtJkgmppDoj0wAGcOLUFhYLKJq5sLd+/gGV
         vspVUEb0o5hjP7MrhbyK41jxnA0YiyWtIeL//DsjXBbbzvVkAbxLUXvbS8e8VL+w0N5L
         YATKoCG+AwbBHYO9Xtgzvf/EZT/Cy0NTJuSavwHvlx4ifcvLBmx6xlpaDYr7pCX+vRq9
         cvPofnodTPS0tFzDWZa0rHr4jFnuqAvNi+Vacw+pj5nhcsJdo2CGdT9uByqUOrACT2zK
         uYK+msVMUhClW5HX3v1MN/EMfqBrIw6kbPO02bcCrzjInl+hDxMNop6+gkCrr4DXzYxh
         h66A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:mail-followup-to:reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=QfQSzQWAFOXDSeUQmHko2hnC74mi9rLvHEtGHa/reW4=;
        b=ltXZKd4b6/32fXSfpvczzoWjWBAWH8ncOD/WOMBjn/T7WY4Pqcs0A/AsmR5kaeLd/f
         C44i91NOq/QEOewoyxYe7ihUtpdHIiBYctFV49s9uc5T2zvsGPJcYCuGnJgnCqlKe0dX
         74/OkW/hBKHtoiPg/h1rANmNtyHFQjZEqelyZrv5qoblg9Y/MSOuD8bCsaghJy8sV7js
         iDrNkRe7N62pW0b60FiDTMj+nViHLkEHJGbJKHD0sOIcirnlaz4BkWI3TZ0nhOoVQRes
         p37q4SrRwAHCZ2MMMggA0w6XVX7Nus0FcoDXUPHSQOSNg1lQe5xdDGYEtdgk7awJmdLR
         A0Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QfQSzQWAFOXDSeUQmHko2hnC74mi9rLvHEtGHa/reW4=;
        b=Njb/Zcg5Sm6HfIkFZU3ja23Dir23uOt/WP0ypx7ml2ki9rhNVr/BRWrzYqfc79FuJt
         YOH3NGJuGdMeMNvtpHNg808pnJeml9RA7RaAvtnq+0XupbbAG4RXJMtl1K27Twpg3Rn3
         I1dMFjaT7LjhnK52iyNV0n+1KBe7OtsfutUpQ3f/oLH6rYPLC9UeNIp1++9E3++bv7f4
         7XfV95hO+z2KFNVesG1Y/2t11BI1LiujX6LrOR3hq0FE2iVJIbS8XApEzjeDvWCgnvNj
         pVwBuN9vezCQcNqZpmyxblu9cT1xgAqhEzvvZz+3xNedEGN1DV/J1PXMEZH0eYFmo+Rd
         Ob3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QfQSzQWAFOXDSeUQmHko2hnC74mi9rLvHEtGHa/reW4=;
        b=Rk60uqzvXx8UdviS/f4g/jzzmrqUHhCvwFj4/yJV5FGdO0+MDmh8z2BV/OyBIqAsDZ
         31PMVDA/9a9PLrMByF1JhkNX3Za3CnhCsXkNDUKH/QZiGIBSYgpbZ7mV1iea180QqJUx
         wbBJE0fYUoWiMeVKkiKxBn8kyhtqsxp6n2UTZM7Qt0AYIQ5qS/GKtiPagg499ajq5vEw
         bBbac2zkxjL2/qlBXT0fdNOGXJluzhPXCQ3rF7T8iNUxtGsma9U9fGKMW/CnNwNL7/v1
         TFRnkU37xRmy1rCVozao/FJKcVEhp/U9aehfBZrdsSVt+Osz1qHxV5Ze3gzcXnL9dt2q
         pqBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uYPoxlt/kG83TbR4h14L/YSFxLSs7NLeEFPDVlrJWeunxxPZH
	3gw1tYH9oaxJvuT0MCfpRYI=
X-Google-Smtp-Source: ABdhPJy2dWJIj8tdRMgboNt2Y9ijBadpjPhGNhMkB+5Tm1krg/8vzPJt8dDh6WBn+48q08QHJi0Zig==
X-Received: by 2002:a1c:2e17:: with SMTP id u23mr561217wmu.73.1600880971760;
        Wed, 23 Sep 2020 10:09:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2e58:: with SMTP id u85ls86943wmu.2.gmail; Wed, 23 Sep
 2020 10:09:30 -0700 (PDT)
X-Received: by 2002:a1c:960a:: with SMTP id y10mr553653wmd.128.1600880970794;
        Wed, 23 Sep 2020 10:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600880970; cv=none;
        d=google.com; s=arc-20160816;
        b=mZWbIoDmV+JAjDZM87r/nhJF6LVusq5venP6/QFaUn8oWEI94YJjAz36NqlkU9veGs
         y0chXGZgSW24STa7AGHagX+8AW4R6Id1jBYAnOceJJDayENVC63PInh+dfAdAb5kstQr
         Ie3v1oipwVcYjk/NcYIK8k5epNONAIlJPG9QAdOvKctfNpWWcpSL/pS305s14qH5HCLB
         VQZ1fytOdXUnQILt386XQ2rAcERhGnm21xHBXGGBKVDbNZmclWNYQ7nZYCrETKhYDYLM
         P7QrUYqcNhMeMye+psXE0t3jW3AS2ctxA+BR3jyTFI1BJ3Q4aMkTJUkPx1iZZurSrFJZ
         T6Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date;
        bh=bR8QkTSKfqHYLtqBHWl/aBf5zOKobXWsemVoeFw+CcA=;
        b=M8Kkf2sWEQ0VJtPljpIrU/BIkDWxj+cRIfkfftkMeS3x/izNtNLYZMBvBtIY1A8lxg
         5cgO5zSk/cbSfwpF58Jz5XmvoBWxH/1+DTpDyxIAH3r5zgrXPhmHXztiB803wh/GhcNj
         Xj6uBoWrF4X7MDbvEU/8gkWKkfZR01KqzOp7eBb2g0HHIBBUWdntoYQs2SqppU0PI/DF
         fXelNEYSB7vkySRJKv4ZJEDZXTIWCSgmBJlLTruk7tqOLuTG3X5WekP0Bgi9xHx1J5Mo
         u+UEti9QAuDj571vfIJMaMtuc10BskpbKSy6tZ0vtl7Y+qaBGDVQg2lMMV3TDL2ZjsJk
         19Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h2si225221wml.4.2020.09.23.10.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 10:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CCA9BAAC7;
	Wed, 23 Sep 2020 17:10:07 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 5E359DA6E3; Wed, 23 Sep 2020 19:08:14 +0200 (CEST)
Date: Wed, 23 Sep 2020 19:08:14 +0200
From: David Sterba <dsterba@suse.cz>
To: Qu Wenruo <quwenruo.btrfs@gmx.com>
Cc: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
	Qu Wenruo <wqu@suse.com>, linux-btrfs@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Martin Steigerwald <martin@lichtvoll.de>
Subject: Re: [PATCH] btrfs: fix false alert caused by legacy btrfs root item
Message-ID: <20200923170814.GR6756@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Qu Wenruo <quwenruo.btrfs@gmx.com>,
	kernel test robot <lkp@intel.com>, Qu Wenruo <wqu@suse.com>,
	linux-btrfs@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Martin Steigerwald <martin@lichtvoll.de>
References: <20200922023701.32654-1-wqu@suse.com>
 <202009231428.5CFBSt9U%lkp@intel.com>
 <20200923093133.GJ6756@twin.jikos.cz>
 <ab9e6eb3-6aff-1ea3-62e0-4489fe73e066@gmx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ab9e6eb3-6aff-1ea3-62e0-4489fe73e066@gmx.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Wed, Sep 23, 2020 at 06:28:41PM +0800, Qu Wenruo wrote:
> On 2020/9/23 =E4=B8=8B=E5=8D=885:31, David Sterba wrote:
> > On Wed, Sep 23, 2020 at 02:23:18PM +0800, kernel test robot wrote:
> >> Hi Qu,
> >>
> >> Thank you for the patch! Yet something to improve:
> >>
> >> [auto build test ERROR on kdave/for-next]
> >> [also build test ERROR on v5.9-rc6 next-20200922]
> >> [If your patch is applied to the wrong git tree, kindly drop us a note=
.
> >> And when submitting patch, we suggest to use '--base' as documented in
> >> https://git-scm.com/docs/git-format-patch]
> >>
> >> url:    https://github.com/0day-ci/linux/commits/Qu-Wenruo/btrfs-fix-f=
alse-alert-caused-by-legacy-btrfs-root-item/20200922-103827
> >> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.gi=
t for-next
> >> config: x86_64-randconfig-a014-20200920 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6=
a6b06f5262bb96523eceef4a42fe8e60ae2a630)
> >> reproduce (this is a W=3D1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install x86_64 cross compiling tool for clang build
> >>         # apt-get install binutils-x86-64-linux-gnu
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Dx86_64=20
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>):
> >>
> >>    In file included from <built-in>:1:
> >>>> ./usr/include/linux/btrfs_tree.h:651:19: error: unknown type name 's=
ize_t'
> >>    static __inline__ size_t btrfs_legacy_root_item_size(void)
> >>                      ^
> >=20
> > u32 should be fine here, we use it for all the other item helpers.
> >=20
> Sure, but I'm a little interested in why it passes in gcc v10.20...

It depends on the config options. It passed for me too, but Josef
noticed it does not build and pointed to the CONFIG_UAPI_HEADER_TEST
and CONFIG_HEADERS_INSTALL options.

This is a valid report and needs to be fixed, I looked around to the
UAPI headers that use offset of how this is solved and it's enough to
include linux/stddef.h (or stddef.h for non-kernel build). Updated
misc-next pushed. Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200923170814.GR6756%40twin.jikos.cz.

Return-Path: <clang-built-linux+bncBAABBJEA733QKGQEYVPFM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A30213FBC
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 20:59:49 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id x22sf19968429ion.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 11:59:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593802788; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvzVyTXfUIRZy/xCWpa1o8O9xSKBAwJ/VyvA/ekr3H2Boog4tGamrI0kKQ0HYN1trY
         kO/QT5UCbL1VbIsxj+hiIWGx+NumBMMwAgtIvjxJjm6kq9P8zgNcISmmz7Ml1l2Goi9A
         676LRHv44Lvn0uq5S6UtAyV4y3W5hO57UHwAgZXx23JYRP2KATzLdZtkCDB61POYZ/1f
         1VV3Xx4Mo1O2dFnSdHlf9zY61ZPG7V2TWLio3Y6RlTK3f8vZSDcl7eDoYQgPOo1spedj
         rI7L0ZRBSyG8kbJ8S3c88XwodsitD1PJ4tNcsI2YYIr9UEEKA9czdzUC2l+JglqhYKhb
         gwzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=m9uVCeDaBkCu5qT9m5iEJQkzX8jp9FV6SOMAQTMXbJ0=;
        b=rPWP7CbFwrSmbphdY5a8gNoT4mm8Se9N8xs9oODy1mBvBDhbmCLMMPnQJ/8ZS5eK9y
         yCgTUKW3xLyusM6MOuE0CnC6vj15ZquLicGksKOMeGEzrbD1VH8ldIga8mBKnfjgP5BQ
         4NaOxwb8Vq25Bg+gpXg6FVXypq9IrMxmemv6CTOTm0QzgiTWZUXcbzRQOsU0O+LeBlMe
         Qqf9uZgT1NHWF4OuI4qHHsbqjE9UkV8EmHaVmBN1lsN6mfnHYQwpDR3KWUyntbYjOb0M
         7z9GTj06oEonnPH0CZyX/5ZJ9Ou8IE9t12cadtfD8ywsqlXQ9uayw9Sp9S00TLn6r30R
         FLXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=04532c9ef6=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=04532c9ef6=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m9uVCeDaBkCu5qT9m5iEJQkzX8jp9FV6SOMAQTMXbJ0=;
        b=O7J1A+W1MDPrkjVfUjKFvBk2OJ6MoRSKeJzS44NY+HzXhw0ZcQLZMUp+hN7egidfIj
         ElGy+1JU3i/gdLTnd5EVZUlQ8mhVk6abLMaD3BtIcxXi76yYraPT2jhtt0GbrM1/N9sk
         TT2SYMXomfgVJFAthn4/WqCnYk8XyCAgtFQpWpU2d/qNHlAPT6B5LJOCb03i1t7GOTUS
         46dg0a8r3Bvq26+OLjnkbvVNf3sobb3tQsgsf99Zw6r8HUDns1DG47Rd/JqJXWmR1RwM
         EOvFoJD7e9vlMKNdaC+uSDgrYEljzpubSEEKfh1upSU0msXkwty0Lis7o0qmbccV94By
         d8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m9uVCeDaBkCu5qT9m5iEJQkzX8jp9FV6SOMAQTMXbJ0=;
        b=cGAg5+SbViTT6vBLt8ACEsbhCOOWmUHtNYYdjfjl5aXbO8ZV82vd91i6urHzBEmTNr
         ABvAKsqbgUhwnBabLUlyNTmihLunHak5YESNfkplfm9+/IC2VVWTEVs49SUV5Bi8xs6B
         aKOYnn+DOwt6kFRVd5/G9EkPseWKoB6hFF/sVhG7HtebgGIu2vd+cyueFaO6vPDCP25l
         GE6LS5NQ7FRW5Q5rSFo3Y7qK7XoqWboOxG6TNpScNcIk/WQ9v4lS53zL8A9F1Sb6VvxB
         XyVdyheDFC4IzTvpcVKLMlGCWCUrtipD5u1AYzL+iWN7FbscB4pILvtcJQCKMhRGjRlZ
         wcqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uBKKnFrZsEBlZuO/SmoJhgFqIQHga78hyzgLxEOtZ7kS/gxxM
	WNKRvdsGFnQsULYaOQ714Cc=
X-Google-Smtp-Source: ABdhPJwntpnlOkJ0Wh4dcKFKKCcl4KGgtlIGx532wFAUg5O4b8aFVOUQYBLgx8QVzC2NrD3EQBx2Yg==
X-Received: by 2002:a92:41d2:: with SMTP id o201mr11053725ila.298.1593802788684;
        Fri, 03 Jul 2020 11:59:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2e8f:: with SMTP id m15ls1929987iow.9.gmail; Fri,
 03 Jul 2020 11:59:48 -0700 (PDT)
X-Received: by 2002:a6b:e617:: with SMTP id g23mr13846003ioh.103.1593802788085;
        Fri, 03 Jul 2020 11:59:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593802788; cv=none;
        d=google.com; s=arc-20160816;
        b=IYUbHszjhCH1zUNdeWZGy4WnxjYxqSiiXPzdE7SFOTOO3DdIkyGvhHLh9/W+6fV42r
         iJUk7q/PZiuoLetY+zB8iBlHvFv28zjnrcUGg0DuUvmN2IeNBmbcrduDxDgPh0Pnr70D
         FnylgCMm+SIfuZ/NZmB3bdk8rr+g9cVrLYYphQl89RRh/7TYVR16LRlECHT8T8+znZQC
         SvxCAKQoLI1DF4qlcl6qE8DmtlEUqv2Rng+IhUv2M1VbYcnQLh+OkrnoqUeXFFX3twpi
         0R1oC/sajdKXc8Q6LttxhV8MVWyFaoX9h4zHb6TzD/fEMWY4TxfwK4u7Xc1MeFW31CUA
         39TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date;
        bh=63JUm0CvlxCyfFicyKDLRXwpgaCFwZQmkAAIRfWRqF0=;
        b=ht+CuajebFVb5nKpXefiOtLMZ7EqmmGVzjnrplJVHzSB2Isu5h4I9A0scQnKR8j19O
         iQhfQDihuoQXFH4LZC+TjTUom5EZlGCX7kqz7y5v7DRK7gMa104bCCd3l3UV+4Pe3yQG
         VyTHenuWwldrMAs9rBmvTTJeA32JkzTRrJ9ucuuR4si+sXyLY47o/deMHnIFtODT6cuz
         Ab5ptbLHfyIsxX3vwae5j6RiCLVgayB0ngcMiRiFXfFPWDZceHDjD61og5TvkImhjjJ0
         1ipK7Y5cqnzEiV3WxHcUf++iXvuQfA991RbMncXWi2bISJ+liygaZs8VPMoPFglhbNsV
         INeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=04532c9ef6=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=04532c9ef6=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com. [148.163.143.35])
        by gmr-mx.google.com with ESMTPS id v16si775741iol.1.2020.07.03.11.59.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 11:59:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=04532c9ef6=steve.wahl@hpe.com designates 148.163.143.35 as permitted sender) client-ip=148.163.143.35;
Received: from pps.filterd (m0148664.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 063IrPwD003239;
	Fri, 3 Jul 2020 18:59:38 GMT
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com [15.241.140.73])
	by mx0b-002e3701.pphosted.com with ESMTP id 321xyxckyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Jul 2020 18:59:38 +0000
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net [16.208.49.245])
	by g4t3427.houston.hpe.com (Postfix) with ESMTP id 08A1857;
	Fri,  3 Jul 2020 18:59:38 +0000 (UTC)
Received: from raspberrypi (unknown [16.214.210.109])
	by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 199CE47;
	Fri,  3 Jul 2020 18:59:36 +0000 (UTC)
Date: Fri, 3 Jul 2020 13:59:35 -0500
From: Steve Wahl <steve.wahl@hpe.com>
To: kernel test robot <lkp@intel.com>
Cc: steve.wahl@hpe.com, Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
        Darren Hart <dvhart@infradead.org>,
        Andy Shevchenko <andy@infradead.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com
Subject: Re: [patch 02/13] Remove support for UV1 platform from uv_tlb.c
Message-ID: <20200703185935.GE9832@raspberrypi>
References: <20200701141731.692010374@hpe.com>
 <202007021716.fin6Bhxk%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007021716.fin6Bhxk%lkp@intel.com>
X-Proofpoint-UnRewURL: 2 URL's were un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-03_14:2020-07-02,2020-07-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 adultscore=0 clxscore=1011 malwarescore=0 phishscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2007030126
X-Original-Sender: steve.wahl@hpe.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=04532c9ef6=steve.wahl@hpe.com designates
 148.163.143.35 as permitted sender) smtp.mailfrom="prvs=04532c9ef6=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
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

Thank you to the test robot.  I will remedy this in a second version
of this patchset.

--> Steve Wahl

On Thu, Jul 02, 2020 at 05:36:34PM +0800, kernel test robot wrote:
> Hi,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on soc/for-next]
> [also build test WARNING on v5.8-rc3 next-20200702]
> [cannot apply to tip/x86/core efi/next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch ]
> 
> url:    https://github.com/0day-ci/linux/commits/steve-wahl-hpe-com/Remove-UV1-platform-support-and-associated-efi-oldmap-option/20200701-222312
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross  -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/x86/platform/uv/tlb_uv.c:27:18: warning: unused variable 'timeout_base_ns' [-Wunused-const-variable]
>    static const int timeout_base_ns[] = {
>                     ^
>    1 warning generated.
> 
> vim +/timeout_base_ns +27 arch/x86/platform/uv/tlb_uv.c
> 
> 4f059d514f7119 arch/x86/platform/uv/tlb_uv.c Andrew Banman  2016-09-21  25  
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  26  /* timeouts in nanoseconds (indexed by UVH_AGING_PRESCALE_SEL urgency7 30:28) */
> b45e4c45b13275 arch/x86/platform/uv/tlb_uv.c Colin Ian King 2017-08-10 @27  static const int timeout_base_ns[] = {
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  28  		20,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  29  		160,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  30  		1280,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  31  		10240,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  32  		81920,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  33  		655360,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  34  		5242880,
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  35  		167772160
> 12a6611fa16e9c arch/x86/kernel/tlb_uv.c      Cliff Wickman  2010-06-02  36  };
> f073cc8f39b48f arch/x86/platform/uv/tlb_uv.c Cliff Wickman  2011-05-24  37  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703185935.GE9832%40raspberrypi.

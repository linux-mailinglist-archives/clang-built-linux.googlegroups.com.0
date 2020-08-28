Return-Path: <clang-built-linux+bncBAABBJP7UT5AKGQE6NYF4VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F093255FC1
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 19:32:23 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id t7sf61628plr.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 10:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598635941; cv=pass;
        d=google.com; s=arc-20160816;
        b=deb/DeKWaEj6uR3PfTH38KIN4/ohwahnVmDkmyZ52V4JjfgEToMVrE7cg64XSv54L+
         7Lk01vjSNqdQB3v/lD/ddU2Is+ZLaA7TdBmJucGVV8USx8CcqedKXpSxL9hJfq/fVLvw
         HuggGex+bZ23xX01oPY07Fktc6BmKyanF16XYj+k/p9AcRKqDdbIHgu2cxFDMAK7mu0x
         XX2vXJwbTsQl6VDXsOwjpWuyE2+4VLZ+e+TdyOE7UjxZ/Rq9aVdfilHXrdnJCC2w6Rvj
         zZ/n3XV7Bq0GTFlp+lhJbYBswwGfXRJyFpMF0i6rY6TE+fNbWCOIdCAri9bxhBbQ08aO
         l9ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=+16VMOJyEiLKwec0477pb98GbB8pRU+h52t1tXZqTlI=;
        b=fD6K8HiM2yjvFU6anNVn3D5gvfw8v9t3gDQpC/fA5iAOLUv99WB+AQ8cc9HaAO9bKc
         CKihelni1ws7rPCyVkEh4muNYtakWm5eXG8WrZ3H0NBqImb/UfKVhTbna6ZqxryLh8Av
         VmW6V5sP5QLbiRXqVtTRHCiIiiyaK1dYjo2zflYSc/NvCNPi9VKZh/9i0Z7MJK8A8Gfb
         cYp4fSJB7H6iJV8XxysHeS/SNGGcKkj7ZV22w/zKlVx5JUzikAm9VVOeQe0rvZqQb/oD
         nDVR+4OJASwdLoKc0BNpG7j+3Zf/8/TnSocp/zmywkVUOjd46kmTHaz5Z9G754GhkgeA
         j/YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RoIcs7O4;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+16VMOJyEiLKwec0477pb98GbB8pRU+h52t1tXZqTlI=;
        b=XdRlQRE5cPxDzJsEPqmmU4KHf0G39LBUSRk93WqLbRd2I4FelkrQCQ5m9JIu4F2X0l
         EpW/h7x9eFLJa9suBYr2KFFhw+3YSVcnTn391EK5v5D6/5CZJWJ8duBdUUrJ0JZGUrOU
         XhmYCTLp2vd9Tn5VgRQDfeq2rtMZemAYt6cNdLhbj6/zXpEIApfF8LkDez4qTy1qGA3a
         8aoFbPJClA4XtV8EmaCKVmL1dhzX6Dj2kAOcmiWbKEzbLoqMuWpI99barCZqhIgaE/F8
         PEGoIrGEppU3NHmnYpQvyUYVk95rh7vFodWl+QqmMG90M4fXbpib3WTaiCrCeIBBYebk
         LdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+16VMOJyEiLKwec0477pb98GbB8pRU+h52t1tXZqTlI=;
        b=J9hF4GW7d5dVlzoGl4JBh8gLOBKBdZdjgEamTkII19x1zkxCT2/TFZbnWew41CbnlJ
         MUW5+TTZBojlIQIkR2zi0Om6/5mdXTNHL8gmBJreC3MCWrrxBwEK5GJkdJON8d2x7/Gi
         Zx4I7Ni9GSIayaaDs3GUXbFHK617m8z9O/xU793kzzToXHf7+i+oSsTDeMgYf3C2qUQx
         68jJGEBhClJtVpP0wUk7UU3buVYqEqa1oBhjFOKPAvvJhxPUJIzz6PVp68IIEGziHxHj
         DzHueGwHmeME3TRaW0mAOUBuyUjFCfvvoTaKvrjDxId/IODSQn+JKijchDHIqkiovQFK
         Jzyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NgRdybbtmLCj3mdlrmZ4kOED5tkEVEDOf7rkU+H/hI9fQ2H6C
	QaRO9uenLamAK0320/7NytY=
X-Google-Smtp-Source: ABdhPJz6RxBaoHNCBZ5B8PTz1yEysSSKqHq44H+cAVAYnw6ooWtmSOIgJfvLq0tgri9Vczr6Y48VJw==
X-Received: by 2002:a17:902:850b:: with SMTP id bj11mr2259280plb.81.1598635941386;
        Fri, 28 Aug 2020 10:32:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1013:: with SMTP id gm19ls45270pjb.3.gmail; Fri, 28
 Aug 2020 10:32:21 -0700 (PDT)
X-Received: by 2002:a17:90a:e286:: with SMTP id d6mr116852pjz.98.1598635940935;
        Fri, 28 Aug 2020 10:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598635940; cv=none;
        d=google.com; s=arc-20160816;
        b=P2NYb53bz6+YSjVR0/RzAwblgLbatk/YP7PxSV8ngzAvwlncQGkPqC16YoiBsJr+dQ
         /pC3K9aQRKB7hZNhFprwc5tttPtyM8uwRVLOT+DIKbSZzLKPwpUKcsEUhbjYRiD+1CQn
         YH/Lmmcq0FFvD+oU+mveapruPBfpM3Oi89TLCAEjkW3vdffawP3dTGYydaBx/aPLmwhC
         JcX+MzvonED0MSK4lBK4Uy7kA67h5Z8fZ03bCOY74OjsurPr2S4AL6iAU08pQdrpbzNb
         nHkyVfH134clYyZetNc91m/9GTlqjO0USjHnteyDNIYJL/De06PJNLRlWHqrTVcFxHjJ
         JgKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=qi1ykCg7MLfFlE9SrKFqxBtliqwro3Dde1aQSwevJu0=;
        b=TjotpDw8dElmM6tE62cE8eDsxqZHgfz/VuHZFtTLBpFJHcrEBbYkbNUvvgiQJB6fI2
         HOL8mux1JrO8c4nIRCBc13lCrf2uFlfpAojTFLf8j4jpYK1kfb4eILGJNPkkuAtNZvqq
         3IAmT6K7SLMjzXcD2YbIJuEZqWec8XFXRCUOJX/lSZ5cFE5/+lgMI7wLIAdwwl8wY44o
         5j041sgCRnfyidGaAYI9GeYnKZPPF6AgGkgOlBDhPa/HS6oVo91HwuZUyxRIq8Y211U8
         ca8JsK45KMBZIR+zregEmawXeWl3e+oIji3KUxmY02sThGlYTpLxWOtN3tURndjjlyDL
         luJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RoIcs7O4;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id 129si102257pgf.2.2020.08.28.10.32.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 10:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of joao.m.martins@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07SHTtjJ139480;
	Fri, 28 Aug 2020 17:32:20 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 333dbsd6ev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 28 Aug 2020 17:32:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07SHVTZZ007547;
	Fri, 28 Aug 2020 17:32:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 333r9puc8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Aug 2020 17:32:19 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07SHWHZ8032169;
	Fri, 28 Aug 2020 17:32:17 GMT
Received: from [10.175.206.8] (/10.175.206.8)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 28 Aug 2020 10:32:17 -0700
Subject: Re: [linux-next:master 3165/3717] drivers/dax/dax-private.h:94:12:
 warning: result of comparison of constant 68719476736 with expression of type
 'unsigned int' is always false
To: Andrew Morton <akpm@linux-foundation.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com,
        Dan Williams <dan.j.williams@intel.com>,
        Linux Memory Management List <linux-mm@kvack.org>
References: <202008280906.WPrik7QQ%lkp@intel.com>
From: Joao Martins <joao.m.martins@oracle.com>
Message-ID: <435778c3-65c2-7e5d-578d-68cf89ae19bd@oracle.com>
Date: Fri, 28 Aug 2020 18:32:12 +0100
MIME-Version: 1.0
In-Reply-To: <202008280906.WPrik7QQ%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9727 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 suspectscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008280127
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9727 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008280127
X-Original-Sender: joao.m.martins@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=RoIcs7O4;
       spf=pass (google.com: domain of joao.m.martins@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=joao.m.martins@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 8/28/20 2:01 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   88abac0b753dfdd85362a26d2da8277cb1e0842b
> commit: f464f9a6a06f2f521f78a6e1ac8680bca2e929e4 [3165/3717] device-dax: add an 'align' attribute
> config: arm64-randconfig-r013-20200827 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 71f3169e1baeff262583b35ef88f8fb6df7be85e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout f464f9a6a06f2f521f78a6e1ac8680bca2e929e4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/dax/super.c:18:
>>> drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
>            if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
>                ~~~~~ ^  ~~~~~~~~
>    In file included from drivers/dax/bus.c:10:
>>> drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
>            if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
>                ~~~~~ ^  ~~~~~~~~
>    1 warning generated.
> --
>    In file included from drivers/dax/device.c:14:
>>> drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
>            if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
>                ~~~~~ ^  ~~~~~~~~

Despite HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD being x86 only,
arm64 would still need the following fixup:

device-dax-add-an-align-attribute-fix.patch:

From: Joao Martins <joao.m.martins@oracle.com>
Date: Fri, 28 Aug 2020 11:33:14 -0400
Subject: [PATCH] device-dax: Fix dax_align_valid() to work on PAGE_SHIFT>=14

With ARM64_PAGE_SHIFT=14, we get:

In file included from drivers/dax/device.c:14:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
            ~~~~~ ^  ~~~~~~~~
In file included from drivers/dax/super.c:18:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
            ~~~~~ ^  ~~~~~~~~
In file included from drivers/dax/bus.c:10:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 68719476736
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
            ~~~~~ ^  ~~~~~~~~

Or with ARM64_PAGE_SHIFT=16 && ARM64_VA_BITS_52=y:

In file included from drivers/dax/device.c:14:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 4398046511104
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
            ~~~~~ ^  ~~~~~~~~
In file included from drivers/dax/super.c:18:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 4398046511104
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
In file included from drivers/dax/bus.c:10:
drivers/dax/dax-private.h:94:12: warning: result of comparison of constant 4398046511104
with expression of type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
            ~~~~~ ^  ~~~~~~~~

Change dax_align_valid() to unsigned long (dax_align_valid()
already is unsigned long). Note that in practice
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD is only set on x86,
so a dax_align_valid(PUD_SIZE) check always return false.
An alternative would be to invert the check to:

	if (IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) && align == PUD_SIZE)

Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Link: https://lore.kernel.org/linux-mm/202008280906.WPrik7QQ%25lkp@intel.com/
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Joao Martins <joao.m.martins@oracle.com>
---
 drivers/dax/dax-private.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dax/dax-private.h b/drivers/dax/dax-private.h
index fe337436d7f5..1c974b7caae6 100644
--- a/drivers/dax/dax-private.h
+++ b/drivers/dax/dax-private.h
@@ -89,7 +89,7 @@ static inline struct dax_mapping *to_dax_mapping(struct device *dev)
 phys_addr_t dax_pgoff_to_phys(struct dev_dax *dev_dax, pgoff_t pgoff, unsigned long size);

 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
-static inline bool dax_align_valid(unsigned int align)
+static inline bool dax_align_valid(unsigned long align)
 {
 	if (align == PUD_SIZE && IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
 		return true;
@@ -100,7 +100,7 @@ static inline bool dax_align_valid(unsigned int align)
 	return false;
 }
 #else
-static inline bool dax_align_valid(unsigned int align)
+static inline bool dax_align_valid(unsigned long align)
 {
 	return align == PAGE_SIZE;
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/435778c3-65c2-7e5d-578d-68cf89ae19bd%40oracle.com.

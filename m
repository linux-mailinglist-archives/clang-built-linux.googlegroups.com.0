Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAPSYHVAKGQEN3E4CAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1789E89398
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:22:27 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 145sf65199867pfw.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 13:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565554945; cv=pass;
        d=google.com; s=arc-20160816;
        b=JV+5yt9AlbImmIye/S0u7J14H3RUB9jWBaXbW44jxypeAdahgyQaLjjqpAe1vSIia9
         7xexIYnnd0FX5Hf++yhmIKCwHzUvQUH9j6gE3VPDacscdbJiXxrX50KX+tlGkKVIWE7u
         g5J9AVo8+Qyv0SCKUu61uiznXsQq4viJtEipF2scEwH2LjfD5vh7FlF92I0H8HfTQ7ZV
         sLs021x9WmGagb+KuZHcQs7jxHBX667GOsCrasyFhMxmHuYLo6V9xFArhy9aOA3yNtfc
         Taq0Vacs2MVjRS0bIsiVJU1wDqqlMv3hWGWwUkpXa5lymTiBbAP9A6agMdImQ5SADR7d
         hOcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=O4VD8rkpdxNNO8WwBWbrc24loQXxo8OL/cp2R47qlIk=;
        b=tjeU5xYgFxaDB6nZdOBdOpSpaw1kXPhYyVrXhrCTyed+OysP4Yp5J3zlE+G/1OW8Ts
         JiAypYjy7ZdoEfms+f4M1wVArkmyqqxLdKRhkqFIVZrvqW8aIQYZGETD1DLigC1PswPF
         rkEAV/dV8rhZIl4MUPXn06u1widFkSa38St/3DiVShaakQMb8RrCAeI8EHFiTL5NPA2w
         TDiZ5DMKwdlBYyyFxVgY9ygZ62kxVkS6ea+NGk1fuEgdZCTZX3SrPQuMdTYzaf/xELav
         KhnzX8r/3k67SthgXivaYjJNEoRixO2gdY8XqpcB5P9v/wEaF4sEJ8w2ZW7WF+ZJ1n31
         Oc1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O4VD8rkpdxNNO8WwBWbrc24loQXxo8OL/cp2R47qlIk=;
        b=ct8B+qScOmyqTYCnF0eaiGNcBp3pxJJ8x5GqQXkYrJ+/PLPalV1ZwsriqsEdK8WAx9
         T97pkf5XeQhHp+ymMZpJMySwCN4ONeUQyPWDsv7dg1/k4p74zMyOH5n9aguibBYTI+Xn
         eLqpeQiLfTf9KQSNd36dKx+5rnooz34QH32JW/XV5zpiN/yIDNukKINltixU0ocvwJa/
         SMY3ZJPkOo/5YOw06qGy4G+myBXwXB9vx7FKgt9lBn4z9XbRZK+ojNS0vefTb5j9I41z
         4zSqheq/OZm4YXf15IpeC6ZpFDKWbUHAhmXqvXLgcgY/eIlp4Ewvx66kCQbFeH9lNfYZ
         PR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O4VD8rkpdxNNO8WwBWbrc24loQXxo8OL/cp2R47qlIk=;
        b=PjUHtZQzadDHN4Llrbx9vFkWXo+hc4MouZOsH6FoI1OEXn8UznPBclL7LPRvJrh2f3
         tAwEl8qrcfnVmkU1jb0VP/AZNKws8BRGZZ1p6SS3JqEQuORbEMMVm4657pi0dMuUWsff
         ORKkBPdVLUC4SZZP3M9jB+lc1L4O5Sv+PlEKooERst4f4HMr6Sl6154y6xdQlhiFQIOF
         AwLf0wwEa+Gn+OD2NQqsVdVek9naPSGfJKpRqZBTt+SlsunVr4OH4kJcQ9m2xZ/zNiLs
         p6Eo7xBe4/k/aC3w2OVqB0UbHoe/nkII5Qs0HYAvNlDsSPrxMg9cTIUddLfTDIopSz1P
         ATFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiUOYhI5NVpBBBxXybIAWKezRONtJ19X+jPjF8lg3fUch+TVZB
	JIlaVTMwaT5TZdEVTkWgwiw=
X-Google-Smtp-Source: APXvYqxc4WoRrXTV8HXdN7wkpTdmz21pRtDZ0+dPSn8nhS+fJqteyciJbZYRorMTlkcBwVTAR+pV9Q==
X-Received: by 2002:a17:90a:3542:: with SMTP id q60mr2297224pjb.0.1565554945436;
        Sun, 11 Aug 2019 13:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7689:: with SMTP id m9ls2839446pll.1.gmail; Sun, 11
 Aug 2019 13:22:25 -0700 (PDT)
X-Received: by 2002:a17:902:29a7:: with SMTP id h36mr30303336plb.158.1565554945128;
        Sun, 11 Aug 2019 13:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565554945; cv=none;
        d=google.com; s=arc-20160816;
        b=RgiCn8MD7tNiMg3BUTRiCVWAb5YrYVSuaLGyzGKM/hEWFjDt2X+cb8t4ldjo+727kG
         aKo+GXDZzYzxazxSLD80QFYMMqBPgKzKe9LzzNStiyJAx0DwPEo7l5Rh9a8gSNpEzQwI
         SQa3qSWAI9cQ/d1H8mjGRKY0Aab+rBaE7pl6dddB+2UJjdenToKf/wUrFUtMCEHVs1zD
         Go1HHSwGKbTNqJXKQ4caLc1NkVc8VIGTOX0n3UDrVwsu0rlNUblkwNiuhRtYrN+Jz7Mh
         F2KdcE9Yx+Pd5ttelROOVrSiQx5brwEvxbvAQZrisOVm+eA/J5IXf8UeN8D5uWjg73Ca
         uoew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=sI0zY/KZNxcX/ydrF3ahHkWcZRm1nRNbpIaDv9x9JZc=;
        b=kXfP2OzFyNUs801VfVVCYJuxRgAZslC67k2J++CGwK8iaIJ9hBrVNJG6DTD1AKbTkO
         XZA9Hmva8HAw/x3yHHAn55bZyzK8cj90UZCtJv28CWX/RY+yLRTvxv52hgfLlSaBaz5T
         JxpePMfiRasC3kG6xsuKLzziC0nMraxeUTs5fLiFWkD4GyqvaB4Y59r20cHbes2qaT4o
         cT6K8NvBUK3zJV46xN6qPBVD37M0tmw3C/1MY338nNx8F2OUO+pz+lTdBxKvroEbW9mc
         +SzMDzk4olaILijyGEBKI+79I27FmVCV7Bcv7S+CmFnbJgPhFe41r0e+O+jiA11ZvH/O
         tSmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id l72si4460941pge.0.2019.08.11.13.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 13:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Aug 2019 13:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; 
   d="gz'50?scan'50,208,50";a="199927960"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2019 13:22:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hwuMA-000Cu9-KB; Mon, 12 Aug 2019 04:22:22 +0800
Date: Mon, 12 Aug 2019 04:22:03 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [wfg:page-cache-promote 24/35] mm/promotion.c:31:5: error: implicit
 declaration of function 'putback_movable_page'
Message-ID: <201908120401.OKHrPZAo%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yzwm2pchj643js4w"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--yzwm2pchj643js4w
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Liu Jingqi <jingqi.liu@intel.com>
CC: Fengguang Wu <fengguang.wu@intel.com>

tree:   wfg/page-cache-promote
head:   34e129a921dc3558784bc6d9181521f0cb8c5ee6
commit: bff6d746936488d5a18f5494ef2cf4bcdafde3f2 [24/35] shmem: compile the interface file for synchronous promotion
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout bff6d746936488d5a18f5494ef2cf4bcdafde3f2
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> mm/promotion.c:31:5: error: implicit declaration of function 'putback_movable_page' [-Werror,-Wimplicit-function-declaration]
                                   putback_movable_page(page);
                                   ^
   mm/promotion.c:31:5: note: did you mean 'putback_movable_pages'?
   include/linux/migrate.h:101:20: note: 'putback_movable_pages' declared here
   static inline void putback_movable_pages(struct list_head *l) {}
                      ^
   1 error generated.

vim +/putback_movable_page +31 mm/promotion.c

34078458048990 Liu Jingqi 2019-06-21  13  
34078458048990 Liu Jingqi 2019-06-21  14  /* It's called with page locked. */
34078458048990 Liu Jingqi 2019-06-21  15  int promote_page(struct page *page)
34078458048990 Liu Jingqi 2019-06-21  16  {
34078458048990 Liu Jingqi 2019-06-21  17  	int ret = -1;
34078458048990 Liu Jingqi 2019-06-21  18  
34078458048990 Liu Jingqi 2019-06-21  19  	ret = isolate_lru_page(page);
34078458048990 Liu Jingqi 2019-06-21  20  	if (ret)
34078458048990 Liu Jingqi 2019-06-21  21  		return ret;
34078458048990 Liu Jingqi 2019-06-21  22  
34078458048990 Liu Jingqi 2019-06-21  23  	put_page(page);
34078458048990 Liu Jingqi 2019-06-21  24  	ret = migrate_promote_mapping(page);
34078458048990 Liu Jingqi 2019-06-21  25  	if (ret) {
34078458048990 Liu Jingqi 2019-06-21  26  		get_page(page);
34078458048990 Liu Jingqi 2019-06-21  27  		if (likely(!__PageMovable(page) && !PageLRU(page)))
34078458048990 Liu Jingqi 2019-06-21  28  			putback_lru_page(page);
34078458048990 Liu Jingqi 2019-06-21  29  		else {
34078458048990 Liu Jingqi 2019-06-21  30  			if (PageMovable(page))
34078458048990 Liu Jingqi 2019-06-21 @31  				putback_movable_page(page);

:::::: The code at line 31 was first introduced by commit
:::::: 340784580489902768110c76cfa839acc46a6ba0 shmem: promote page cache pages synchronously

:::::: TO: Liu Jingqi <jingqi.liu@intel.com>
:::::: CC: Fengguang Wu <fengguang.wu@intel.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908120401.OKHrPZAo%25lkp%40intel.com.

--yzwm2pchj643js4w
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
oJ2lYJ5fFrzsi4LcJX89QRIu/wECMAMJ5WcAAA==

--yzwm2pchj643js4w--

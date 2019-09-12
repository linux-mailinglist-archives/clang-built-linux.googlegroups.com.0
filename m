Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4OD47VQKGQEWSKJF4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 35749B08AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 08:13:07 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id 5sf31459047ion.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 23:13:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568268786; cv=pass;
        d=google.com; s=arc-20160816;
        b=Scovx5GMRDgCvm1rG6zMTOZ+0X1niHfSMH4hSCnPczcIDtkOlyjUhsINbp6TX3Y1c0
         jaY+n0+XvLQX6wnow7AC7rDTgdBJO6a7jChPX3zeoMhi4z0gmPzXRNjM3OpqFjh7LiA3
         tUR3Z8xf+gXU7EnKF238qu5eueBL64jSszRKZqgZ8UM0vAwCd4vaet0ccP+2+V/kBhj/
         It9wgW0TM1/JPaUoRaUfj88s7nWouVFhr5Hpx3VjwzOyFgw9nAObALnCZPPnsDIJwhM4
         CyOTwpKIf9Edd+XbfR7u7pS4VWq5X+viW6zNQEoYp+wKAjkIxDw9fVoMQBKkdXR1u5yv
         KLNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/wYikZ+RYTMnCWiHKvdoDjUh0YcO3WDLgcCkoBRFsOA=;
        b=r8QMpIGbiaZOCo/xHXG3nCMcbC6pXasEI5Jhl1DCMJ3TWkNVDpgJx8ikgVMMUFBINr
         DOtKr5AzOSEpcCmlIJkX2k7oeqJNRTV85g2gzMSXPvSiY6bvFPJYnLBLAoX4e8M1lccE
         yCIohU+Zp/qLy4ilke5L4d4sILWmJ0jwXTis2AgFIgaPZ1MX02kiO7FKs+E42Zduj4JO
         QMLzpjb5y7cWyg28qkNR5CD3NOxs83ED5LeZM3qfi/wg5T1Ose/sAIu5LQPp+Pp2haaI
         C8x+KiiPyg88ilc5YG8Hrcomx7/TJLwrNFifoc7NEaXw7uaIYWKG1TZyz3GP+xhjF9BV
         tbyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/wYikZ+RYTMnCWiHKvdoDjUh0YcO3WDLgcCkoBRFsOA=;
        b=VCVfK5VG54vEmZGMwpIu33WSpem5jRvTNhWBLCg9wP0Nwh3tpcJ2XxvC/9unUqEkFp
         MtZ5x0wET85ePqViAM1P5eZP30i8paowQsd8GDwOn/st/kH9Y5sY0jJaLZr3iQNRKdnt
         rHWYbGCII/c+TmJ23p7czhoC6T36yEk9TaouTvKubkXNXG3tUkqB7UAnqbLL0vCKoK9o
         1gogqHiEG5togYkAffIlU6M78D3tbMKpOAtKGm8xCfAjDGME5ToqPZbfZZ4aAZcC4wCq
         FHPhEuNIUhYJgZmYaHUbx3r6UYj6T2ai19/g26bJNnLqc/eBSDoOiJw3bCDrGUcyph0R
         BmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/wYikZ+RYTMnCWiHKvdoDjUh0YcO3WDLgcCkoBRFsOA=;
        b=AytYGC9Gk+LbQ4IyU1YPHWlul/t0Pap8E0eWRz7iQQbVRneWJOoklYJrIZdoT9XxtR
         9PuPY5V7oQC6g0xfl62JhA6Xi5OSSgTCydLawbQjY9/SQnZo9fRnLxBAPd7uPZNPogyw
         XzdQ+Y0IqfBqYUOIrjIFLRSgdaGC2FXpguJgIC5lnRU2btferE2WJ57WGSMmonPjrfZP
         Uwu9tQvXDnRVj0TQnB4FMaJu2E3z9MI6NbuScQXEq1mQsBrP12bsYsl/puQrk/xNFt/s
         WQDiPXGSsVQ4kW4sThm5iGtJrQ+mzpakFPDfc588GGkJzkJAv9fOv/aQptDA7KvdXBay
         eeqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJgKS9mbTIeVpxRwlIBwIY9DUIa188RBVerJlNNGBmzIPDfmk9
	T4LSAZbwPHRuJyVTWsZMNOs=
X-Google-Smtp-Source: APXvYqwdHS7CvWXROst/t5hKb26NjoKYM7bgXFOwToHBEPtUjCfmlSbpTqYHi+xjGJ5QaaClJA14zA==
X-Received: by 2002:a6b:ba83:: with SMTP id k125mr2386766iof.125.1568268785753;
        Wed, 11 Sep 2019 23:13:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:854a:: with SMTP id b10ls4410579ios.4.gmail; Wed, 11 Sep
 2019 23:13:05 -0700 (PDT)
X-Received: by 2002:a6b:251:: with SMTP id 78mr2433015ioc.23.1568268785350;
        Wed, 11 Sep 2019 23:13:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568268785; cv=none;
        d=google.com; s=arc-20160816;
        b=Zyv/22SNiS7hyooGnIx69oaEEOghDNPoSPIl1cY+voyzgFtBgQaHuEEfOZPukCJv7O
         CZrSUClSlgW7h/atuJniXg/v9bl8jBseHO+y+KtmJjiKK2B2TbwDxrW56wqVbpsOmx1Z
         chSngIDKvqEOy995I9pXH36yVqc99PisK16x87iET5a/aBkuJssICFy76q5bgMU2YBdd
         sq6eXspisFqpM1IuKZ0QhUYSXKVnElfUanKWXJzm8xogUGnuHJb29qEb7K8zZGaXNmKk
         AGL0KNFSWjYI7HDy0tuVhAclInmgqRK+R/jKM0KyVRDvmsvU228Cx7znoNHSE4t56MgB
         bTmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=NHnYZbwlwx0m7mgws5A4v3h1siCyYTraPF7VG5bs2V8=;
        b=wyLjTCXjrXLbQa173ITvPyXeRuQdV203Za5613Fnlf9xNP6deqpIR/jLroYQbLiMPx
         PWiPAyyMEjha2wB0O/aa4PICw6m2q+7GnfrqyCn8PZy8hBadOua95onM98s5XVnQAYQH
         xDrA1tTuwvuBYrcM3MwokkQL0XcXx1Orup5yHADBk7VjKzKIoiYLBkjS5EZ3dZ5wYJ+x
         y67FzAL70bhoS2Y4Ko1o0jtcIDjBak1bs9+Y1w1dSMENm0/pKISubqXQWFA55VzBlO1X
         jiHDMfkEC7OGfXLtTDrSA8K626j4vkPiwvN0aovvPRY6dMDiVcDarWCXRXZ73w3Uo7Cb
         Huyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id z2si218241ioc.1.2019.09.11.23.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Sep 2019 23:13:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2019 23:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; 
   d="gz'50?scan'50,208,50";a="175867848"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 11 Sep 2019 23:13:02 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i8ILh-0009Ez-3w; Thu, 12 Sep 2019 14:12:57 +0800
Date: Thu, 12 Sep 2019 14:12:36 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [alexshi:lru_lock 2/2] mm/swap.c:320:11: error: implicit declaration
 of function 'lock_page_lruvec'
Message-ID: <201909121432.nwlTgIIB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6wirqpj7svqak35m"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--6wirqpj7svqak35m
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Alex Shi <alex.shi@linux.alibaba.com>

tree:   https://github.com/alexshi/linux.git lru_lock
head:   e6d9a352eb39a6d71ec34cec92c6274cb4d58648
commit: e6d9a352eb39a6d71ec34cec92c6274cb4d58648 [2/2] version 4
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout e6d9a352eb39a6d71ec34cec92c6274cb4d58648
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> mm/swap.c:320:11: error: implicit declaration of function 'lock_page_lruvec' [-Werror,-Wimplicit-function-declaration]
           lruvec = lock_page_lruvec(page, pgdat);
                    ^
   mm/swap.c:320:11: note: did you mean 'lock_page_lruvec_irq'?
   include/linux/memcontrol.h:875:30: note: 'lock_page_lruvec_irq' declared here
   static inline struct lruvec *lock_page_lruvec_irq(struct page *page,
                                ^
>> mm/swap.c:320:9: warning: incompatible integer to pointer conversion assigning to 'struct lruvec *' from 'int' [-Wint-conversion]
           lruvec = lock_page_lruvec(page, pgdat);
                  ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.

vim +/lock_page_lruvec +320 mm/swap.c

   313	
   314	void activate_page(struct page *page)
   315	{
   316		pg_data_t *pgdat = page_pgdat(page);
   317		struct lruvec *lruvec;
   318	
   319		page = compound_head(page);
 > 320		lruvec = lock_page_lruvec(page, pgdat);
   321		__activate_page(page, lruvec, NULL);
   322		spin_unlock_irq(&lruvec->lru_lock);
   323	}
   324	#endif
   325	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909121432.nwlTgIIB%25lkp%40intel.com.

--6wirqpj7svqak35m
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6wirqpj7svqak35m--

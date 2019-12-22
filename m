Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWX57PXQKGQELDETYOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id BE030128CD3
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 06:27:55 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id b15sf3714722uas.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 21:27:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576992474; cv=pass;
        d=google.com; s=arc-20160816;
        b=lC3w+qUicVmUnxvL0epmASGGjgz19zFBFoS4WjrV0Whmn7fawPwWXh3rdOtmGVuSfp
         2PczelqPfgIQucEP81jEFPAtC77bwrCPRXqivVYV1jhiL4KV/3hFJ17T7z5rNY3MlS5C
         D7vyRlvbIMYSJYABQpDyOo9J6fftfpgpP1ZfXhVpoT6WstqBInOWgaEAqPIk1Vf7N53g
         s8Y8Fne+ilWCw4Ch5cCM+sosuS4iD32LZlR2bJs3OZ4/rxUPeQPAeMCO0EyDkLC1K0lH
         PaaQ0d8SmVRpwaAMavxTHMF5rLxvYnF5DHloVstm1SfjWP/uvf+K7f+22ayOmUV7DMYE
         jxZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=0xCTnE5U8Kb1s+84shR7KsYqXUpZewV3s9NmF3Rlxl0=;
        b=cYUsOwQL+HyB04Hw3QFsSU7zmAZFTOo1eAldROc1cdbTEafUNSMzmbAONQjDa18HYs
         7wBxSCyv29bPvY9dEoJCarQoueWeVhS2mMbze3UOxAV/I+59BlTyKjEqbbIB5F4Htw2V
         EGCC9FhrYSqVtqP0lK0791W9M/b4Y9IS/jj4Eqk0jVhl9d+SpgNZ+j3X1CXg6lE2OnZ8
         8CLrJJAL7PiiWI5fYsuJdZEON0aiPVY+/WEMM0mFer5KubQjunG0HPZC1dyJBmx+7+Tt
         qkClohDSXaF7Ko0TcovnV5K7BLVMI138K/Q5Hoic5LHgBKj+8t6V+gRIOefdPLgBUyiY
         TRlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHH1vVG1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0xCTnE5U8Kb1s+84shR7KsYqXUpZewV3s9NmF3Rlxl0=;
        b=KCk9TaOI7+DGZZ03qPtl964zEB+ZnJjGaBMz4dybZfUi2FGarljYiMIg6D6FqYQ9AC
         Nhs72Yv6NRXi4n7iDTiHRArWqrmDE9NAgBKA2orwk+nUHCdy7O3qfD4wj5e6CeBLOtdn
         XS9spvZ7p30Tj2b7V9Jc7/fDWtLkanSQHmBu51mZD/WE+h3Xz6kpPF1qexFXVbGPDHDa
         Y/cwYEFSz9H1+r3ymlXn/vPXp9ZDLN1ISbxcd6o/tJJHeC05mGbfPATlm8JodfYlrI2C
         bXjMtgvzzDDOrJ//hsGWpCnSVPAjHx7A9+L9Sxg7WDTO2upe3NTzY51TLQYgS7jecn6e
         DoAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0xCTnE5U8Kb1s+84shR7KsYqXUpZewV3s9NmF3Rlxl0=;
        b=L+1aJ3TTggAnODnhx4caScW2Fssgex6IVf79ZjDVyrjV9Ie1CoPKQer0V1k/oaZ7TF
         xo2QFM6djbiRLJ8pI8oTW3avoYxT+kGKcv3ZfzJ1Y5jawg40z1X/RBnfb2ou7Mcn81vl
         +Vj2EZMV019eQtwP0QQZD99TAECek5hXPvXTkdtTKuDPNjm8J0eEgj34C9RKa44q8DXV
         qkQSVVZSJ3nij8ZQP3INGC9X3OX1zCfR9Z4NxpPHO7EdYd2vJE4E7K9p43CDLh+QXI7v
         s7VfI+QEQjTeRIENMIfb//0Me7yEM1mWVJaPdUfBIYcr/AuDAalT88LCFG85NT321KLD
         mWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0xCTnE5U8Kb1s+84shR7KsYqXUpZewV3s9NmF3Rlxl0=;
        b=rg4BGpBxWRIESNUDSabq0xISAb9wPZDV3c8aCLT0JktON1zZgRBO7uc8HGu9RWfO0F
         oFw+49dY3cC+xQEDMBEY5cDgWbMsNbHpyxhMNirymNjYxyiVBvocbE9dT3hfdlfcpkz7
         JYkYLzuPTWtAGq30cBzok27xzZ7zZw6unOaRQKEuNYMWQmX0omSulyG5EsuOBoA778nQ
         wtHnhWO8PZBlPAhAxpGrgAofJgzBNEOEla/RnpsOCb/RaQI95/+6srPUKlwqAwVYw5A4
         QoFQJnMmT/8Ha2VtsQx72+UrOZK6F5ka2J8q/b9UN3vp5YeyzDV+p8Nut5dLPSqsDteo
         ezDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLnx7iSHcn9Y2PRKnu35Keb0eIbDt+/oMZ10Z/eBhN/zlzBOzX
	0Gwzc1vrCCWuqKKDZgnpWMg=
X-Google-Smtp-Source: APXvYqwwwa+15/CID12hSAy/sOCt1RwP+S/13Yg6TsgEnISko2VKjk3nxBAP/R1y6uOcsOzVxy4rgQ==
X-Received: by 2002:a1f:4354:: with SMTP id q81mr15007902vka.31.1576992474436;
        Sat, 21 Dec 2019 21:27:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3308:: with SMTP id r8ls783509uao.4.gmail; Sat, 21 Dec
 2019 21:27:54 -0800 (PST)
X-Received: by 2002:ab0:2a1a:: with SMTP id o26mr14456859uar.62.1576992473956;
        Sat, 21 Dec 2019 21:27:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576992473; cv=none;
        d=google.com; s=arc-20160816;
        b=cVCfjaoPJoha0cPbC1PoIirNVVCU4Vhh+zj5epY9VMf5s/InVgWoVwqmGaKNQH1sY9
         XrkRXh8oBxusYC6U6WV6dNqufG1DPPlCuOz1FN8lSv/X0ooFoYdoimh0W7b9uYRhSCxu
         ZSl3u/MieXUeL5iP0jO7j+Rtc5ZbszdVBOhhwHQ2j1de7s+ciUzh7d9Z+s2cC2MZjS44
         Ub8sCS8DJSkc8Jz4nodCT2yDpo7iE39KuXM7KYFENMgyBYafkm0mRPsSpCPYMjmhpwCy
         kKSrhArvtUo+psBQKoTApJoDswP5AUl5NmTCsn/pFdGinKFj6NQUjW8+MBMN/+1RK54h
         xlzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=etT7hiKVBdhisagzq+239nAJpwF5avWPrnT2LN3jTos=;
        b=gm0tI2HbmDh+fGK1fS6fv/Tiz+tZ61BoPjKJuoc0xMg4i/wI56owc32x6YuJsdX5j6
         TuvD3KYOpku7/3ZlRrwkLqdARSIH/nW+dAXs3j55wTOmosO7kyO4zkQSR+3Vsq9glvxn
         vZSZa+/gnu6Z5Wi/LVTw7VyakMNJIae2mB2GEcp6qan09KGgiGpAXXxi7GXcPsahaydi
         d3SY1Uomj40nMmB1IhYvhlCrYSKrQOkEKU3ZjuJGik1l7uNLPVxxuHzW2buLJRekq+Zz
         t4KMlzkh2OlQlG0EOYfDCll4hUN1Pg68+aaQrHQiOjY3fLlTGoMnYHsHiZMGt4uVM4av
         mwAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHH1vVG1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c124si569192vkb.2.2019.12.21.21.27.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 21:27:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 66so17586816otd.9
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 21:27:53 -0800 (PST)
X-Received: by 2002:a05:6830:300a:: with SMTP id a10mr6830875otn.155.1576992473150;
        Sat, 21 Dec 2019 21:27:53 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r13sm5032017oic.52.2019.12.21.21.27.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Dec 2019 21:27:52 -0800 (PST)
Date: Sat, 21 Dec 2019 22:27:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [dax:xarray-pagecache 3/18] include/linux/mm_inline.h:65:51:
 warning: implicit conversion from 'unsigned long' to 'int' changes value
 from 18446744073709551615 to -1
Message-ID: <20191222052751.GA4575@ubuntu-m2-xlarge-x86>
References: <201912220130.juZ8cyZ3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912220130.juZ8cyZ3%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eHH1vVG1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Dec 22, 2019 at 01:15:46AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> 
> tree:   git://git.infradead.org/users/willy/linux-dax.git xarray-pagecache
> head:   bd90755124d0bc1aad5b77f829c2c69b57992fb1
> commit: 79d23f42282932ee0cabeeef7756c7e8806be279 [3/18] mm: Support arbitrary order page cache pages
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 50c3bd9e71254d623ed4f0b449d5620f4e965bfe)
> reproduce:
>         git checkout 79d23f42282932ee0cabeeef7756c7e8806be279
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from mm/page-writeback.c:40:
> >> include/linux/mm_inline.h:65:51: warning: implicit conversion from 'unsigned long' to 'int' changes value from 18446744073709551615 to -1 [-Wconstant-conversion]
>            update_lru_size(lruvec, lru, page_zonenum(page), -hpage_nr_pages(page));
>            ~~~~~~~~~~~~~~~                                  ^~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
>    In file included from mm/page_alloc.c:59:
> >> include/linux/mm_inline.h:65:51: warning: implicit conversion from 'unsigned long' to 'int' changes value from 18446744073709551615 to -1 [-Wconstant-conversion]
>            update_lru_size(lruvec, lru, page_zonenum(page), -hpage_nr_pages(page));
>            ~~~~~~~~~~~~~~~                                  ^~~~~~~~~~~~~~~~~~~~~
>    mm/page_alloc.c:4479:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>                     if (order >= pageblock_order && (gfp_mask & __GFP_IO) &&
>                     ^
>    mm/page_alloc.c:4476:3: note: previous statement is here
>                    if (page)
>                    ^
>    2 warnings generated.
> 
> vim +65 include/linux/mm_inline.h
> 
> c55e8d035b28b2 Johannes Weiner   2017-02-24  60  
> fa9add641b1b1c Hugh Dickins      2012-05-29  61  static __always_inline void del_page_from_lru_list(struct page *page,
> fa9add641b1b1c Hugh Dickins      2012-05-29  62  				struct lruvec *lruvec, enum lru_list lru)
> b69408e88bd86b Christoph Lameter 2008-10-18  63  {
> b69408e88bd86b Christoph Lameter 2008-10-18  64  	list_del(&page->lru);
> 599d0c954f91d0 Mel Gorman        2016-07-28 @65  	update_lru_size(lruvec, lru, page_zonenum(page), -hpage_nr_pages(page));
> b69408e88bd86b Christoph Lameter 2008-10-18  66  }
> b69408e88bd86b Christoph Lameter 2008-10-18  67  
> 
> :::::: The code at line 65 was first introduced by commit
> :::::: 599d0c954f91d0689c9bb421b5bc04ea02437a41 mm, vmscan: move LRU lists to node
> 
> :::::: TO: Mel Gorman <mgorman@techsingularity.net>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 

Also reported with GCC:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/NSBRH2HU3JU2JTO5FT5O4T7XCAWIKTFK/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191222052751.GA4575%40ubuntu-m2-xlarge-x86.

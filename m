Return-Path: <clang-built-linux+bncBD26TVH6RINBBRM72SCAMGQEJQO3KMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4493837633B
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 12:00:39 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id a15-20020a634d0f0000b0290209ec44cf15sf5114592pgb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 03:00:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620381638; cv=pass;
        d=google.com; s=arc-20160816;
        b=fpcE+t1xoJcEP/KmA2QKU1xsW0/wIAe4EauCquMuFKo5KCp9+SBOjNkLmsAzKMgbZm
         kR3HViC3Q2+U0KwEXAJushyxgZC1u66L+FY62w+5HvNzXgQSBH6+2JzAYE/rQ66yLL5I
         JPzWl6MSBJRj1wKSE3bP+T4+hkLWlxcjQCIAzbBuytueNtTQ2nuFlAAoyI/ZGbZI1rCk
         ww1SLTqH3UDryxIyf+yWIziit6NYjDXQDzu/+e3fExtu/rJmFs4ilTiqT3yi9aF1KdRS
         oT34Tcbb++zAB4GKruODwxpFxNcbiq5U+ZttisoqefteoHuUXfaSrqwmoVZCpoc32GYQ
         OHvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=uH9+AlPs2Z7YNvdWHOFE/ORCcrX5KutCW4/c6gyjVIk=;
        b=oCkYjNCVxY3JNIR50VxXnLtEwqL6YBoXO5VfXoxz8mxgXmNgMPBn3GmcJIDP5Vfknk
         zMM4l0R7XHTZktrnfBEKvIHv7t3GAqrXlsVVhwRouDsbBh9VsYPDDaqK1KmePHPI8lG/
         JA1ehNh+ulI3lz/EBMplDoj4kXsQ0VgNCZJ3iWm9G4i0Gaoo1Nz1Nxwjll9g7uoopDmL
         A4IT4PtckllCnIB74lpLmW4QX97uBy7WhXltQlV7seuIaij9Wg4v/ztAvXet7on/ubF+
         KvRJ0fOoA3CqTIXUSBNRQMAekhK7JlOIRi1K04MrLC7JT0F/aqUySpO+1L79qOCxQGUK
         2wKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uH9+AlPs2Z7YNvdWHOFE/ORCcrX5KutCW4/c6gyjVIk=;
        b=bFe4o1SU0E6/O89P3KP9/8hve5YLtG+qjvgrdSBkjtEdxSRSQLfDjBlPQOrrOXvyRr
         zTAzAnjQ1FmAM/z/Oxv+iUfR3SiAt0SgoOT0xOtYNmHSHjC0ZOd1sRNXTKOjcBw602k9
         +cPa6Hns3cgYNlznE1W+OeOMf3plxxDes+HlnJq2KHEZof1PflCAxCidkYtlCS8+qmPD
         5nbaXUTbu0FUAEcisR1O6nJJDypdhrw7XOGKYKCjpG3QQKCChbB6Sz50oN9Ht6EfAhl3
         wWmHU1cNx+9jz+xFSLANHhkh40xWoC5h3uBb5frrzQidd0iL3ZQI9eCmC5if2kp7WV2v
         REVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uH9+AlPs2Z7YNvdWHOFE/ORCcrX5KutCW4/c6gyjVIk=;
        b=UohrY+U3RyKqKaYNLMPBD4KTqcc9LtlfTL0r9HyQZqlL/vGjnkdIpbslWIf5qiWDOz
         5A/sv3S6o/4WTBsYsAkTKMYM+/3wAm0CPnhRKTARMZjlzCJiMdhmwJxnnotNmsTrrocM
         A2LWIU4NVAz1SmyTuYcPAHNEiAtGMP1zzdHDr24m5xUbuMpyWCTikwg6tMdiVTZuxdth
         Lw1fN9s8BVZ2bFjqn5DkF195GtncltJ0xWKAj9ndEqfPQ38iEX5BnsdAXfgOrDRo6WDa
         XfnW8ubEmu9vfF1Erp2lKMEKf4iNv4jdbPpWMkf/gqdz032iAt2cyKjOz5+BidcLw/RS
         /ENg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Tfst6DPjI2xSrpgIHFj12s74mlkSHvs6VT22UuIm8/f479+04
	ZBnBbwbHIcNvreDC8wfpPSw=
X-Google-Smtp-Source: ABdhPJyvumq67VI236qHUvWMHRuOki3HfOe2VzP73RLzhN5ZAM3baBFW2dYov4bsTcEZfUAH4Q0mYg==
X-Received: by 2002:a17:90a:ec18:: with SMTP id l24mr9327435pjy.131.1620381638051;
        Fri, 07 May 2021 03:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9255:: with SMTP id 21ls2567747pfp.2.gmail; Fri, 07 May
 2021 03:00:36 -0700 (PDT)
X-Received: by 2002:a63:ff52:: with SMTP id s18mr9015393pgk.163.1620381636635;
        Fri, 07 May 2021 03:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620381636; cv=none;
        d=google.com; s=arc-20160816;
        b=z1qvWM5xppXufDGSNfZ9F9r5BEFnXCodH1OI63e+IO/skkrZuSs4Ii6cjU5Luhp1n3
         ReXBfNEltrZXUdioH6Yqa1GEBLa7CiZv+seoMcvDwSFfFhSFcVxTT8ZOLfSZ9FsRW75O
         TX+5XC4NW2AX+A7H1NNtms/JAWzC4YS/CE1htCe30OGshV1uNS1YA4pvu1S6U44t+PjW
         zefR4pUwqTodL3t9tTiKdsZerhWYNz9R49AIqYQm7Qw9XACAYS0TMR+OpUYRq3dlrk2O
         b6TA4PYNDPb+o2z/CWDHBJYN3v6Rgd0V3o4NA345jehHKLiQpzvoHmt7VWL+9JM5nJ8D
         y7vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=a2k4ypEGHXoqtdh9QxOcGFnr75bgaFTh+VANu30TjMk=;
        b=Pve6W3ArvVPPTr+LmtzLvU/P3yjH9mJy1sJB6C91rYBYhFQ7I5fL09z60/ohY3N3Mw
         4vHRo2oMVwIMlD03vQOMMKI39Dr5w1m/F3CJHwSvJPGtX7WkheQscxxXus0Toq9x02Q5
         AGp7Y3WgsYwbktiI2w2jBriNOyAQZ8nH/6yBJphicjdH/N1T6WnHKzPzmkUWx9fRM9xf
         zBJWoYTRRTrENFHPbU8zT0NmD7pSQZOxIqC02M1Wlv3mxGz4GU9MhgIfuG3kF4+qfBvy
         QBn87R/EJQWRVvAG6RPNcMJS0Ix1d/XLICVpSFy/gWj4l8/Xj/tJMAzeScWAPuepWaO5
         OM9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id d30si281941pgd.5.2021.05.07.03.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 03:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: Gpy4ql5j/V/0fQ8KMB9mY4N3UE+gKb4uYIGHMX59pbvUtVRoA4xycfE3QQs0hqU0xGlpByeWHr
 AIBdPMl9Y0dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219594258"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; 
   d="scan'208";a="219594258"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2021 03:00:36 -0700
IronPort-SDR: 9kBkUl057/ytEEtNK/DAOum5ocXAtvMl75Bdv6DEOzUX57tQJ6cTWyVEfNyz0xxTD6UtKA0wvW
 i/BfZ+W1A5rw==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; 
   d="scan'208";a="434842685"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.175.201]) ([10.249.175.201])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2021 03:00:33 -0700
Subject: Re: [kbuild-all] Re: drivers/hid/hid-ft260.c:794:44: warning: format
 specifies type 'short' but the argument has type 'int'
To: Michael Zaidman <michael.zaidman@gmail.com>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Jiri Kosina <jkosina@suse.cz>,
 Jiri Kosina <jikos@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210506115546.GA1745@michael-VirtualBox>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <0102b8fe-3edf-3d4f-2622-d1fefb36274f@intel.com>
Date: Fri, 7 May 2021 18:00:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210506115546.GA1745@michael-VirtualBox>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 5/6/2021 7:55 PM, Michael Zaidman wrote:
> On Thu, May 06, 2021 at 06:47:46AM +0800, kernel test robot wrote:
>>
>>     drivers/hid/hid-ft260.c:515:59: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
>>                     hid_err(hdev, "%s: unsupported wr len: %d\n", __func__, len);
>>                                                                             ^~~
>>     include/linux/hid.h:1190:30: note: expanded from macro 'hid_err'
>>             dev_err(&(hid)->dev, fmt, ##__VA_ARGS__)
>>                                         ^~~~~~~~~~~
>>     include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
>>             _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>>                                           ^~~~~~~~~~~
>>     drivers/hid/hid-ft260.c:507:9: note: initialize the variable 'len' to silence this warning
>>             int len, ret;
>>                    ^
>>                     = 0
> 
> This warning has already been found and fixed by Dan Carpenter in
> the "HID: ft260: fix an error message in ft260_i2c_write_read()" commit
> on March 18, 2021.

Hi Michael,

This report is about the below warning prefixed by '>>', it's still in 
mainline:

 >> drivers/hid/hid-ft260.c:794:44: warning: format specifies type 
'short' but the argument has type 'int' [-Wformat]
            return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
                                              ~~~     ^~~~~~~~~~~~~~~~~~~
                                              %i

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0102b8fe-3edf-3d4f-2622-d1fefb36274f%40intel.com.

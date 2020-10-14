Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBKPYTL6AKGQEB6ALP2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B3E28DC05
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 10:51:54 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id j14sf1105966pjn.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 01:51:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602665513; cv=pass;
        d=google.com; s=arc-20160816;
        b=PgKPAxJKR57PQO6lAsSYeSkilgN/db8hGAfsp4H6SvtE3HkQfxHQrUp7qiz4I4zX6C
         AnrKB8WR+pcbENgcsLDNLNpZ90pXGX5JluCmqid8NI+ega9lpMVOGbK3W+jlM+5lfHML
         NvJ3/Le/VwzLOOXBeXqORc30bF7Qeq1juT2NFYp2Tr36uDZM2DivxiArb6F9HLBYx3EP
         mi36KT6HQu5QA+2bWzlBONxs02I1g9KiOWP1ZFyHIA4lTmcf4z7pkSKuk9wMlwl9MGHo
         N5v3cMPHvFAFkgg1xuL7E0X8BUWoYEm7sThlsLA0BBP0EkTOLxyV2tE1iOQfX2jiK7m8
         Iurg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+CqKjc6N3PhBFN1EX1BaKwS87r8U2SyVYDM5hD6vNh8=;
        b=xweoh2M6XSIiQLHZX8WaJxtAKWNdooZZl7/dM/VHxtOSU5f31Tk/l4sZR9F6+nOVgi
         xnjBV1YdO4Ga+Lvd968AUx7aCGXS+K378vOvw683L/NtNfGglZbZ5XpurUABrBxMrnOl
         XqYYJlxnn/+k44ui2RBTKy4YQQRNu3Tx1MTL2hQgX+Rx0dORMoNYChE4gT7g8rRU4wMb
         rS2W4B2qw+b1b6XjqlRQp641gTtkyYxZZu/6/ryk+EqkbbDwE3kINK6nf9Sehr7Slqvg
         LQMndU7LDkqld0sZhV+2xf0ANl0HQTBCZfP8OYGxEuwUerQCGjykVrmbrFjZ2bWr5Jbi
         G60w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CqKjc6N3PhBFN1EX1BaKwS87r8U2SyVYDM5hD6vNh8=;
        b=swPwwpZimXywbG9eNlS5Nd4xqRszGlArnPCcoxV7cJdgbo31l7zxnJLIgBPC7TIbP5
         4vrdvO3wD8fOF0t8kjpw2gsH+26wmKgdcD+R6+AmQM3D5Ki1pLI2p0oJ6Sc+yqY9T0Hu
         /2I6rOX1yANKQteC16IZ+Rw/Tz3Q1UA6dWvVsNGpg+E5U0EA/XPkroi5giQlOxedNtp2
         EZiBILF714w7OIrOaMaYWNMBiFbEDSGQevMqGxh9NBgXh9QKmWKhaKeGawZxBK7Idd+H
         UxzydSarT8qvMRr2FJ+u1GqZr0vkHx5/AicKeNWKQ1nZKa7MrZPlLSPVUY9iXiuOrk+m
         Ac4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CqKjc6N3PhBFN1EX1BaKwS87r8U2SyVYDM5hD6vNh8=;
        b=jhdhBsu4zV8kynNi0TWG75KWcHb0C/exuWJxdFEsPnpJBfBn6qDfL1Hz9F5q7/EDue
         V+j0mwqPHBp8j3H6aAEgVE3l0zWgDcjYt4z+OjqTEl8fntWNlVgqpyonNW7RzgfpdObD
         vJWJkLCHrrKfKfZZkhTYqcwiJOV1lkoDYZRmq2K4WdkpQXCV7OcVVfjhWjLFUmosrydn
         cMy6vuh7uVIVZucsAh23CB2aQpVG/vG7BFy/wC4SlsbqXHPhWgWnV34CyCeWMfzGzqE2
         9MloLUPqPMIoIMVCRTDfzCCuNoLj3LzioYQqXPFCna3hAVcnrkHEkf8wAJjls5Gsseme
         HGPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QjabrLKf8yU5oEZUZFxxflOAfcECXHq1le8kwylJbT4wVJecq
	5B+tXRouNFjsGppHVQUXBaw=
X-Google-Smtp-Source: ABdhPJzOJ6VozGPXpAAPCPs/aoUDQURzrVfETN6YcphVtZzMh1T8Nu+0AzrUGmsi3Zja+ZofAjwpLQ==
X-Received: by 2002:a17:90b:1a90:: with SMTP id ng16mr2541284pjb.172.1602665513637;
        Wed, 14 Oct 2020 01:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls863311pgi.11.gmail; Wed, 14 Oct
 2020 01:51:53 -0700 (PDT)
X-Received: by 2002:aa7:84c6:0:b029:155:d56e:5191 with SMTP id x6-20020aa784c60000b0290155d56e5191mr3336934pfn.41.1602665512990;
        Wed, 14 Oct 2020 01:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602665512; cv=none;
        d=google.com; s=arc-20160816;
        b=CvRuPTRErR+8aqnI1W/HFSGiDnBdOOCxmCK0qwdNvKUd3lJfhubqu/AEjksBRJW3Y/
         Zki95Rtq2P6rGtFPM09cn9xKYbivzVbiclRKl1EunlTVT9iEU6IvJD8vWnQL4EMx2C14
         VZGxBF0PM9WHsuUWVbUIP1wl57rfuEtUOAEOTCrSN86BjuliaOFD3n21JRZkMbLPDa91
         2Rcir+H/yCuNdOz9hw/oIP/KylXDbbx+2KR65gWTgqlCAGajFbUXltg2AA9oLnsH7Uj3
         DcIOyyqgQQC04KjpMk9cGXfSqwX0Qw2vzVYDNddDv0SXngLIHV178gFC17a7v/wHQI2o
         xCTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=dFtgkDl8FuYvdGHQ52b1ShW6jXBANot7IFMp9hVG+fA=;
        b=xXDN/T9janfSXmkp1YpHl+VXsSSI4nvIOCp/cguZIp2NleVOPqTgQTQdFNRLBmDB8D
         g905fT6Iihw3tag7O00Fftf0B6QmmqFBNeBDP0aPGGTf3OyDQqEYh/KyQHW9dgIpJO7e
         zzqZqErmNDa3kNwKxRMgJMPAcJgRpz/v1i7TPbNsZXz4B3VFEQrHOAlimdP4WHZ9ffQZ
         QO4KPEmF9Kvq37JsX/uvWdJe5sYX3dVigOyC8f0+oJMxzG6ZV2e1J3LY4drG1I4GylnR
         7dcz/J2QO5MLeF3iZYvnM5PuGCUW1KL9OmpLtRVlFqTEEAdrHBiKWxWb5SWVEGbB0Mlu
         hf1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 191si155538pfu.3.2020.10.14.01.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 01:51:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: jcM/WdvWhvpjqS+NVksT0agGNvZhbKXvpd3ZHXUGjgsUYIuJaTsTu/Kw2V9INbl3FYqiurxwpI
 QfmT1eYLIfNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="183581078"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; 
   d="scan'208";a="183581078"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 01:51:52 -0700
IronPort-SDR: 8SsOq+mpUdos9FvYszS9UxZl4Klz5Ltjj54ya2MfDZRaMXDYjnVb/CozTdgNmFIAO4oQmA7/kH
 USsHdYONDHig==
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; 
   d="scan'208";a="314095386"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 01:51:49 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1kScWh-006UKY-VV; Wed, 14 Oct 2020 11:52:51 +0300
Date: Wed, 14 Oct 2020 11:52:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Michael Wu <michael.wu@vatics.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Morgan Chang <morgan.chang@vatics.com>,
	Dean Hsiao <dean.hsiao@vatics.com>,
	Paul Chen <paul.chen@vatics.com>
Subject: Re: [PATCH] i2c: designware: fix slave omitted IC_INTR_STOP_DET
Message-ID: <20201014085251.GS4077@smile.fi.intel.com>
References: <20201014052532.3298-1-michael.wu@vatics.com>
 <202010141551.Y4x2qiN1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010141551.Y4x2qiN1-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Oct 14, 2020 at 03:39:51PM +0800, kernel test robot wrote:
> Hi Michael,
> 
> Thank you for the patch! Yet something to improve:

Wondering if you compile this at all...

>    include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
> >> drivers/i2c/busses/i2c-designware-slave.c:181:42: error: expected ';' after expression
>                            dev->status = STATUS_WRITE_IN_PROGRESS
>                                                                  ^
>                                                                  ;
> >> drivers/i2c/busses/i2c-designware-slave.c:195:22: error: use of undeclared identifier 'STATUS_IDEL'
>                    if (dev->status != STATUS_IDEL) {
>                                       ^
>    7 warnings and 2 errors generated.


-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014085251.GS4077%40smile.fi.intel.com.

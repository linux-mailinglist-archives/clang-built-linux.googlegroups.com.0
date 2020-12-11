Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBB3EHZ37AKGQEHBGSEBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B822D7800
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 15:36:29 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id 15sf2290979pjg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 06:36:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607697388; cv=pass;
        d=google.com; s=arc-20160816;
        b=LeMrxNcfw/EP4YwbLd7KKj2mHeG2o7qd8jdQp/y0jqj//LQGTYY84e3OwMwnXJGmMC
         H9OctTQh/rWlb8S+9bkh+XHAtyk9L+Rz1tIhv9bq/Qtk1oIhrusAZt/fufMJhRTvsmtv
         YX4su48PclKk0dFjqFFGf4S7eOOaF5pVQeuLweYWePPEWAu59X96cA2cee/AkytMN3kV
         OIM17PwUAnRxmIqHCYNX1+dmjBFIY0i9brT2OPkQhszGjrcF6kgFdkioASrHEVwBZENG
         03n9+UZ9Lfx855WC1ZykEKOH7yWfE6ZYLWmhhXwE5h8YGws4dy+8qm/QeX4bZ99YCXgi
         nXXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=5A+Vu837G/L9CGkAh46ZUgV3+ZjZ8z+CW30IGQGI3gs=;
        b=YhT6bwd1bH+IuP73Zv6Nxf+B4D9JGWkuDwmo6YI8Xe4t+K0w1okWSBFh528fmJEO9c
         hYxU2fi12P9TeuCMpH7NgfuqBaPwI3UCF0jfo4UbDuJY7uTowfkl1vWvM9YkQzJBWbh+
         0H/Ft5UGfhFVGkLthnvBvwcTsS5IX2tM8G/7AruKI+pnekMSbB9GWgtjEhKhSoRe7zas
         gPsd9+xLevmLAotJIgZDBPKX3Cft5HRSVe6HkVoNg2t/IpVWYnxHbLCJcpRaKlEPOCm3
         P164XzznY9tMoqvuaxUhgaCWqKGp1nvJ6oPqZYPjznhk49Ho2f1rqBZ88p17gzd7/qMW
         aN3A==
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
        bh=5A+Vu837G/L9CGkAh46ZUgV3+ZjZ8z+CW30IGQGI3gs=;
        b=c9iPP2629QcfQj+E2wBC/pn0ntFQN6VQ5Zvc+81pbU8EMhi3iVpBwDuN3d7etWHboK
         MrxEXjKWFZmUzkl3yYJ25k7Ucb8cWvru0LbeCF85DI0lUKjBObd7GNzy4rMnv5ufqb6R
         dxkVGOap8lH0AoqrxGZdrxGztEbbyrsZ6FfCNP/77AS2JZMq02JF2t2PNp51m7uzhEYD
         RdnCBKJjAm79idPZaPfVNbrkd/+PqVY82adSuEkZKAiJ03mzjmPXvHMdiFicsCNTfAq5
         OtcK0sMsldbBVtDwqQc072oItYYUopo/9eAPiNBwGkp2pmdr+v40zAJvXQEcD20ptEUo
         c81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5A+Vu837G/L9CGkAh46ZUgV3+ZjZ8z+CW30IGQGI3gs=;
        b=eqkBDzvNkKFLTm8FV/t0+YkGhB5m2bmczy1RdAextGGS6w2OA94O+A19uBtwZ4WtPn
         pfKS5WVxO+w/lIqc421nEAKIweDg7124+Y5KsSuxBb8Ab8ulIIL9O17cZtS6v4HPqloI
         RQAeZDp7liZS9tx6qG5MP2Ex8CZ3dbQZxIpCrXmzDTNnS1DRUCrg8q12KvWuXOATidXn
         bMmFk8SpNVGQ806cMqphxkMylpJ0nRhQMYimOk9nbLh1rYYZzRrUppOiyQOsJGkbwZBi
         WOlga3MPNrxyYM4O8+XZL5ujUR0cphJ9OJCb2+VqgjC89W93vP4hR5Ij9KXcN0QIRB2Q
         h4Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v1a7nEmVoFuMDMeYmU0V98xlueGImLgBtLq6XQztqqlRjLk03
	BC+unS/46etoy/hI0BKTeSk=
X-Google-Smtp-Source: ABdhPJythM7w762pxDDW5A+5fXulBtoaryCUV1Qw8CjNfLlWaYQTDcRT3HE3BZ1JnY9n41f/AVRz/w==
X-Received: by 2002:a17:90a:6d62:: with SMTP id z89mr13785696pjj.71.1607697388247;
        Fri, 11 Dec 2020 06:36:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls4145416pls.10.gmail; Fri, 11
 Dec 2020 06:36:27 -0800 (PST)
X-Received: by 2002:a17:90a:a781:: with SMTP id f1mr2388229pjq.111.1607697387626;
        Fri, 11 Dec 2020 06:36:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607697387; cv=none;
        d=google.com; s=arc-20160816;
        b=qaObTsI9ws3h8NFctDulQT5bgl9QP2WHPgPoCpc2IZN+vFkdmdn09hkMDimKG7/vMy
         YfbB8kZuW3z687C+1v1564AS2s2U0FqVJ9/5h1WmyN4L4CK2NJ0DwJyDPsgC0xIiNIgo
         PqSAL4exsfwe2LA45lySS6tFLNf0LrZrFIV9TRddvyaAUmTfd2CBAOxqySC5i1kLkmtK
         yOkCMxQz1gXGtZn4+LuD9qDeXmcCzDBxIPpu6IFbDZVuaj0rEWlbcplWfbhvaP2rl2CB
         +h69ErBrAZkkwy6WZ0gerUinqeqBopTFRXL8vyLt3dAYqdjyMgtk08oSdchGTx6QpuVq
         tHWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=ktyitgZnOve18k71uFnVKI60Re35PL6izWnX3ory25g=;
        b=aCWRnUtN6UStlEAjpgQVpQeZAJhv/IsILFa5dVyBL14iXsp4wNvSOhi0cqcP6LUg6S
         261RGz4UxlB1coFqZ0dL/vt5cH8E0JdTobEmm8AiNgxPTERS2S7ehuIrR7PRwYCOli/Q
         fPHVg0iZZxe3FRW6j4/YZjnh5orZz9mCaMr6C+FK+L+OWYAvwZLD7X97rx53r+wzrpcO
         /YFFQUyVmc6uiYH38BZsnQL1NZYVtcSTAW+OniIUJO7DVF7l+qwUn3ctQiSdEzmceoTi
         eZZ4+gjp9EoRjCA6SXfzfuYq3fxq3Dl5a/xgt/UlM77pzmGc4HP+8FpTEuwv593gt4eN
         Guow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id y68si724444pfy.0.2020.12.11.06.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 06:36:27 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: KqSsV6Ts6OfxHaZygWKlTZxK1WWfMeq/4SRVTDV0MZ/a2uEArnhlj3sFzEFQVfR0dcZvoa/jM2
 tdMbGyeHCk4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192778784"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="192778784"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 06:36:26 -0800
IronPort-SDR: MqTNuqq+3L6eu16x8ue2Wf0ste6ZbJR0iuoHT6mArdvDhJlQ8NtID3uAuAkIZb2RULjYmA1jVa
 aPwX6f0ajr1Q==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="441205225"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 06:36:25 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1knjXz-00Dg3K-8E; Fri, 11 Dec 2020 16:37:27 +0200
Date: Fri, 11 Dec 2020 16:37:27 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning:
 implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short')
 changes value from 524288 to 0
Message-ID: <20201211143727.GS4077@smile.fi.intel.com>
References: <202012112151.6XlgQJKM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012112151.6XlgQJKM-lkp@intel.com>
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

On Fri, Dec 11, 2020 at 09:20:55PM +0800, kernel test robot wrote:
> Hi Andy,
> 
> FYI, the error/warning still remains.

Already commented on previous message with Message-ID:
<202011211600.bZyprrVg-lkp@intel.com>

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211143727.GS4077%40smile.fi.intel.com.

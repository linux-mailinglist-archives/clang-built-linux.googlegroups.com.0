Return-Path: <clang-built-linux+bncBD26TVH6RINBBEVK6D6AKGQE7RUEK3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC542A066D
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 14:28:51 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id w78sf4895923pfc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 06:28:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604064530; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCVRhU6rzwH8yJrcopG53ulpfay7Fbk9FsKndXlHf+E66g51r/eRr5+YWXM4DV9dP7
         tAEj0rckEHriZe0zj0baTv99isoXup+7CHJYCoynRQO+hecbaP1h3xFzDDAeve/m/upq
         Qyo/7E6NV5xWhBVGdzuPKvFqQd63nRTAG5iqqllILf4qh3xBecqPPFSY9Sl2WY/aEhKF
         5t2B6hAaLDNOdzJetkN74uz2JgCyJRPMgc1H2socDvSfu2EtPnJfZ4GnvWhFkhR6M2hE
         dpVi7cbHdoMJtQNaAnRNxnxFeGZmAgAftt+VgD/TAatayPYa0eltPYfVaN7sv/UiaUwb
         aXiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WJBxKGenHbQcoeedCAEvORVSmOnFvQ+dvaV2laE4Xj4=;
        b=GVcJJRgKYlbCfh9Jjxjci4oCHbHB86jPQrAtcWlW5jdO5SNGeHlz9SqsixAb/DBZuy
         Yt8ABLgxlG+WRg4nQ2RUIVpthxPYikK/n3hgkF6uS8A8E3nXzCCkIz2L3DlXynRC2aKw
         uHIm6qoTCPSVW5Cwlv/rcHYsj9M+J7Fa8fXdMMLicaCSeUJSO8j3zLgERt24U7+QT/oX
         icPzPuUibEenUbDqhEr3XXMIsOZjb6bV1gFWnSm211bSknfP8Ak32hwpKwGQ74w7OuVQ
         wmrOAgQBoLc474sOiWpE7sk9jEhhqTUQiE59pFAUSzxYtgbRLQmyjtR/zz35GIXBUVDO
         gIZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WJBxKGenHbQcoeedCAEvORVSmOnFvQ+dvaV2laE4Xj4=;
        b=e2nvenOAZssLA1aoFvpxvBxFyPomJNa8gAToFkXBSk91aaBtpcbclRVJcz68dgSxZF
         Iq9fYz3UZlrpQFC9isLH8By+STPIscyRgCW9TF/T88F2HgNLlM/bqXxbAg0KTdxnbWJ6
         S+6cM5n0oehfMjueezuOcxRKvJ4fd/TsoILBfgVky8rDkMpCHcAYEB9jRck1pDL6/Xki
         BIjuBAL9kjDk1GW3DmFMYj8nPyHYzTX/eu19y3l61zp0NZpMDNjC5wY5YHlwRJNJqgX+
         iyyBpatA/EBWYyKz8wa6LCXq3+y5yf2cfwF84urS8ChQxhdA2xiJCnK8fudDlko88nGs
         BqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJBxKGenHbQcoeedCAEvORVSmOnFvQ+dvaV2laE4Xj4=;
        b=PQ6OZUnbsqxk7Ve5iYrqJaroCFnqbmsr57CUv9O3F3lIZblDmQzaj57vuPjRQWi1b5
         wNzVEMo0wVy38KEDCVtPQMhfYPp2HNy5efNRLiiNCF+E0C5Un6+R7Q/FZ8d6Wgzst8z2
         2x1VlmvddPQIdeHB+EMlSOedCA4zwDp6A8V6UXsUZQg6nEv/5mUKlcOND8pSFEG+Vm+e
         SPAwd+A/u2mDjpNETbKLdrgiBQe4qVTflEEc0pfCFBx4pasQaBRKlDvimKvSIjibm9yy
         9ig2/mQdQw/9gR6B9pI9u3UDckicOxGr/jKGcOUJ0KeFJbDLk5BXAAhXvPOLnwaEiDpC
         b/qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X2mGbRjVM6iXU7a/LpCKPbZCMwD3GvIUAROL9kh5DZi50uuQO
	wJUXYrEEJRMoj25pCMdbYIA=
X-Google-Smtp-Source: ABdhPJw0EmcdfZ/xbVvYg7xMUMafou6KtdtNNhCjjvdb6HK75YjzXLjFqdVyLsUw29Det4Lzy+mJxg==
X-Received: by 2002:a62:7895:0:b029:152:2640:644f with SMTP id t143-20020a6278950000b02901522640644fmr9331753pfc.67.1604064530223;
        Fri, 30 Oct 2020 06:28:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ec06:: with SMTP id l6ls1733864pld.8.gmail; Fri, 30
 Oct 2020 06:28:49 -0700 (PDT)
X-Received: by 2002:a17:90b:3d5:: with SMTP id go21mr3047623pjb.149.1604064529572;
        Fri, 30 Oct 2020 06:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604064529; cv=none;
        d=google.com; s=arc-20160816;
        b=vjxc8Er0MQtyFpWzwwLOM4CY/viEBxPCNUDAyRo40Vap7Hec/mZ/8AtCoJ3lneXI4/
         hMXOA5nQ+mVd0V90tS4ofOIgVcB2lCWgPqkXshm1AjQCt4tNujoK/cLhoCu11FWdSs8f
         oEGZvx0PLZL/UkoqZywPW1nlFIy4MlB9ybxxqrtsu1Dcn9lejXk/kInbVCwkvEo1SzEC
         sE1auLvvbQ0mDcNdWjNYl942v8oUMkfFdqpvFY8kfTbYuxYtthRXZsdPZE6Fw0BJEeFh
         BKC7zdWW4cxwBIVinEeigh4QjXqCdmfW/JF8XGTPUXvgyNicrJluObnwNgE1ZjC3/Sda
         JTSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=GID+jw5cbfy7lAHLute0442sJFi0k9wl+xIYn7xL9R0=;
        b=F3IIRbhCQego+3cBpmEzb1cnJPgO/y+K29ZabMuYCGWVtMSA634VvTRBjRIl/VVe9R
         /5RmU9euUm8XQEMX1q5zg67ADOn7f4kCqzPz2Vya/JHPn8bQFb7vULHshvJ8/H/Jd10e
         EYLCa3zgllyud5poCzVSyCQJo1tHufSsL6rWMAuQMJ7LN+uU5yhRjP8lx01CKGz1SN6F
         lgeNFmCEeTb3NfQH4PJtPzwE4z1BRr3M8M7jNGUKbf9XAWwcjAK6POTPHuLEp89HdOxN
         w3R/I0tPHrG9tztGB3mQLkgIf25k9FW7rgpAPZQLH9KzaISgYttpCoxbN8uJDuWue6WZ
         8hEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id v8si446761pgj.1.2020.10.30.06.28.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 06:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Zco8GoJ00O9EQWsl5d0IOy2cgQyzinSbnetus7RT/ZbNUSOKO31NesQAondW9grHqyftt7ZFew
 GO2OCCuJqqGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="148459759"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; 
   d="scan'208";a="148459759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 06:28:49 -0700
IronPort-SDR: d2vczdT8qt0jfMqhqbMv0zVLWQV95IAonDqS5Xd0n1QDDz0vD/czgebU3kb4llfSyyl104I3Ve
 0rqvpTmhVm8g==
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; 
   d="scan'208";a="537065891"
Received: from lshi-mobl1.ccr.corp.intel.com (HELO [10.249.168.224]) ([10.249.168.224])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 06:28:46 -0700
Subject: Re: [kbuild-all] Re: drivers/video/backlight/ltv350qv.c:192:12:
 warning: stack frame size of 13472 bytes in function 'ltv350qv_power'
To: Andrey Konovalov <andreyknvl@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Arnd Bergmann <arnd@arndb.de>
References: <202010260230.VivTG0Gb-lkp@intel.com>
 <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
 <CAAeHK+wdv=X-iD208M2m3Xte9F+g2kYRDqQr4A+GP7Z1tY85BA@mail.gmail.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <650988cc-2f70-d03a-b456-bf1915b64836@intel.com>
Date: Fri, 30 Oct 2020 21:28:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAAeHK+wdv=X-iD208M2m3Xte9F+g2kYRDqQr4A+GP7Z1tY85BA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as
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



On 10/29/2020 11:28 PM, Andrey Konovalov wrote:
> On Sun, Oct 25, 2020 at 8:17 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>>
>> On Mon, 26 Oct 2020 02:15:37 +0800 kernel test robot <lkp@intel.com> wrote:
>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>> head:   d76913908102044f14381df865bb74df17a538cb
>>> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
>>> date:   3 months ago
>>> config: arm64-randconfig-r005-20201026 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1c8371692dfe8245bc6690ff1262dcced4649d21)
>>> reproduce (this is a W=1 build):
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          # install arm64 cross compiling tool for clang build
>>>          # apt-get install binutils-aarch64-linux-gnu
>>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>          git fetch --no-tags linus master
>>>          git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>>          # save the attached .config to linux build tree
>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>):
>>>
>>>>> drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame size of 13472 bytes in function 'ltv350qv_power' [-Wframe-larger-than=]
>>
>> That's a lot of stack.
>>
>>>     static int ltv350qv_power(struct ltv350qv *lcd, int power)
>>>                ^
>>>     1 warning generated.
>>>
>>> vim +/ltv350qv_power +192 drivers/video/backlight/ltv350qv.c
>>
>> Odd - the code looks pretty normal.  It is possible that your compiler
>> is (crazily) inlining ltv350qv_write_reg()?
> 
> This is the same issue in LLVM that was reported by Arnd for generic
> KASAN (also see KASAN_STACK_ENABLE option description). By default
> KASAN shouldn't have stack instrumentation enabled unless
> KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
> for KASAN_SW_TAGS config on the kernel test robot.

Hi Andrey,

Thanks for your advice, we'll take a look.

Best Regards,
Rong Chen

> 
> [1] https://bugs.llvm.org/show_bug.cgi?id=38809
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/650988cc-2f70-d03a-b456-bf1915b64836%40intel.com.

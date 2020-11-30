Return-Path: <clang-built-linux+bncBCKZRC6YR4JRBVPWST7AKGQEUEIGZZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 872CC2C8CE1
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:35:07 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id z28sf9671398pfr.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:35:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606761301; cv=pass;
        d=google.com; s=arc-20160816;
        b=wA5io1KyGUNnYLiSTB9BWnpXtOSaLAx5lFcRUU+ucVBuThUAKPr9ks474NpiraT/RZ
         v9kaUtAB3MJuLilKfSvuE3KwsZrr9QjfOthlGxw07wER596z219eNyaQQPx7e0HHOmlq
         yhbqysCkmt3F+KUOTJr8l4Cm4PJfzdNpG4i5cZtEJadS4SczayY5Trdt+nIcfNgo3RAk
         F1CKCbGmR+0tJx5sqq01VW5zEAEeEPdhE+eQpOnmew+yU3RvR73/ghnZv6pNJGN4hrDX
         NIBwV8nGIHoGy0+tLPlqMWbEAS7h2ZK5aC8MpRL5Yu0lAQAJk7Vxx/qkPK6FScha6+ie
         fDcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=yBn/KOahp7Kvv2LTBJrqxLQcnXPY5lN8/XQc23w7xWU=;
        b=Gv/9kyCG3ilDpMuS/iJ2O10ef0/noMLYvh/OzIASAIv4XheSl9XQHmaFGgrbrzmwzA
         4bgDVh1kiYpIvwn6ZClTe0PJNOCHcxKSa/ARRp8qUSHwsLDM7c/hZXxG5TyCCWzpZFVs
         2Nbmvn6I1gfTsiioOQuG+V5/ekaAo8JdF9RZrOWDx8lF6J8XXdx4ij8wJTyuBHGMa3fK
         0VOeomn7ybGz8W4M1+piAak1lQjt7PLdyLildQBc89f1YEA0968aCP6TBYZMVSVd0Gtc
         zF8j4p/M7ry4pp+eeVNh/eRely2Vq8/yFXCZNgUfx3iZVWXohM66jApJPLj1RogHUSo/
         r6Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yBn/KOahp7Kvv2LTBJrqxLQcnXPY5lN8/XQc23w7xWU=;
        b=rMKs2rU+e7yDXrGgzC+WW3K5Gu91pPmMCuYPES0PbI9iKzxs9cTSGc2haVHrd1hPhE
         ELhxaOx6d+kXma8YAF3CvsVVicU1ET8HRkajGEOCKhN9naXJabp4vea5yAWkruhaVVsm
         /SjGea/9kzur2ElmjDf6PUQ9r0/fuPht3VsVfKVVH2yhsXLnLcAMnjp3t3c/8WZZ7lsx
         AQMoxUCoQx2hBEW6WJyYKpSAednJqvIoJ7+QNVGxg4CLplQShwSW54YKzPX4RRLUDT86
         5yde8DzqHVZQy+ztNYqw1a0vDtV3w4rS0zjhEa+WykMYKpQsWucY0bgt2ViwOcMPhPgj
         lvew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yBn/KOahp7Kvv2LTBJrqxLQcnXPY5lN8/XQc23w7xWU=;
        b=C8SnzL/tXdW6fjsr87zBQjB66ZiZ8y/2xecP2VGsVa3MRX5mM8AoTMQ8WEnGhogiOh
         pRhapeOX0hyfaHvR3EMTlenQGtB8Jq9SnNR7lpKi0eg9zyd4o+bCoYRGH81PkO92Tfyt
         oFr12p94OfiIHg88c0XhxDxux7ig4DwjNMBRtnLRTqSGjdAPCctVnDK5LrkLCbNHSmKJ
         4fLkisUm85E7wTZ6mcpa1JcOJxqNTSDM2vGyTzVL0Yt2G8d+JnxfxpA07E1a5MPB4ols
         99Y3jJMVXtvdBJU1Tdb9q8+eSTNZo09MJSm5MAwUsV6xS7qgooMiZWmURgpWaqnHL1Yp
         Ne9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315lWBelrPaPHuRaPeWsOR3ty+93PQDkkfbw+HWTgwK79rIOhml
	CJ051UIC9DUzsMB2DOk/ZKU=
X-Google-Smtp-Source: ABdhPJyXpYupM7b+5M9dCJgXVpWSHR6HvEkf54PihmjCMupAXb7lCYIqVekKCe1jGL3nEPQl7woz7g==
X-Received: by 2002:a62:ce47:0:b029:198:1512:16e0 with SMTP id y68-20020a62ce470000b0290198151216e0mr20082652pfg.65.1606761301254;
        Mon, 30 Nov 2020 10:35:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls3420070pls.10.gmail; Mon, 30
 Nov 2020 10:35:00 -0800 (PST)
X-Received: by 2002:a17:90b:a4c:: with SMTP id gw12mr174683pjb.96.1606761300597;
        Mon, 30 Nov 2020 10:35:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606761300; cv=none;
        d=google.com; s=arc-20160816;
        b=sMwEKxj8FaPxiqLO8hdWLrUNax8fynLp+ScfKHltorMvvG11KSnxNaP07DemS7D0vJ
         kvKU4Wk/xn6c1SyzCpBCYfYPc3UpnDvO4dTN83nQVDASJPaSpUSaqkZw110XKlTimvFD
         3vnuDGHulMnNtTzdlNG5XaB7komraVvkbySaijlU8g16ZNoY6EXOOHq2ZzmMGDTmWDPF
         76OeA4m2si/9NaWonMBTYMl0ozL71bAIhaaIUIFy2ireWh8XXSDe4Ds0IFyq6hN8qIcX
         lNLgMct5weoJ/im7qGs1UshKnJDULGG+RiuayvW61VhSLzAyZ+3ICFZVZz8+0r4NJMPa
         BuNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=+RSIe6dq2R40ptvYE7V/FV1HaMbjmgQB7aHoLW01pLw=;
        b=nALQnvuMGENcgCBCyu+2+gBWNYUHwtFnAJAUwu0+iOLhTKq+nv3GZ1V4lIFUlCCkWg
         eYdJAON3PfVeqJTD7sEsNgu3QA2kQHEGUGSlNr3pNj1eauKREp+FjY87RSSgFNvgmmnd
         RbgFPdgEi1qr8CwxAL7xT85ySl0ESkb7/hIwFSkJJtho9vnAX5dFY1JB3SB2yVbakPu9
         XpATyCoLdQ29hu1Y4X5MCQpKGP+62pVlPmddG257gNKFvMbl1lkyaL/hYUoU0E2vnMKB
         Tvvp+aEpeFFOUZYbRVvuO1K+ez3bDERCp1noAmLbVulXSKqbUXt+/w1nu7kSCwVPr091
         oJJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d2si1221990pfr.4.2020.11.30.10.35.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:35:00 -0800 (PST)
Received-SPF: pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 7xLzRlfzRJd+op/t+jKjgNwXcICaEJsbxjqVWkzl7A4yNbTtxwavg7gPf+bWXktUeRjeVXwvnC
 9Q53cYgfJiZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="171903567"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; 
   d="scan'208";a="171903567"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Nov 2020 10:34:42 -0800
IronPort-SDR: 9dOX7jHwsdaXZ+0ublJbeehadYhgfNdrRIew/cg2EBrlxQ8Z8VCjMhjxmSSYjpqFnIOReAcFrd
 drhoHvA7exmA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; 
   d="scan'208";a="345167847"
Received: from yyu32-mobl1.amr.corp.intel.com (HELO [10.212.122.22]) ([10.212.122.22])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Nov 2020 10:34:39 -0800
Subject: Re: [PATCH v15 01/26] Documentation/x86: Add CET description
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dave.Martin@arm.com, arnd@arndb.de, bp@alien8.de, bsingharora@gmail.com,
 corbet@lwn.net, dave.hansen@linux.intel.com, esyr@redhat.com,
 fweimer@redhat.com, gorcunov@gmail.com, hjl.tools@gmail.com, hpa@zytor.com,
 jannh@google.com, keescook@chromium.org, linux-api@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org,
 mike.kravetz@oracle.com, mingo@redhat.com, nadav.amit@gmail.com,
 oleg@redhat.com, pavel@ucw.cz, pengfei.xu@intel.com, peterz@infradead.org,
 ravi.v.shankar@intel.com, rdunlap@infradead.org, tglx@linutronix.de,
 vedvyas.shanbhogue@intel.com, weijiang.yang@intel.com, x86@kernel.org,
 maskray@google.com, llozano@google.com, clang-built-linux@googlegroups.com,
 erich.keane@intel.com
References: <20201110162211.9207-2-yu-cheng.yu@intel.com>
 <20201130182641.29812-1-ndesaulniers@google.com>
From: "Yu, Yu-cheng" <yu-cheng.yu@intel.com>
Message-ID: <4fad528b-e467-f96d-b7fb-9484fd975886@intel.com>
Date: Mon, 30 Nov 2020 10:34:38 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201130182641.29812-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: yu-cheng.yu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;       dmarc=pass
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

On 11/30/2020 10:26 AM, Nick Desaulniers wrote:
> (In response to https://lore.kernel.org/lkml/20201110162211.9207-2-yu-cheng.yu@intel.com/)
> 
>> These need to be enabled to build a CET-enabled kernel, and Binutils v2.31
>> and GCC v8.1 or later are required to build a CET kernel.
> 
> What about LLVM? Surely CrOS might be of interest to ship this on (we ship the
> equivalent for aarch64 on Android).
> 

I have not built with LLVM, but think it probably will work as well.  I 
will test it.

>> An application's CET capability is marked in its ELF header and can be
>> verified from the following command output, in the NT_GNU_PROPERTY_TYPE_0
>> field:
>>
>>      readelf -n <application> | grep SHSTK
>>          properties: x86 feature: IBT, SHSTK
> 
> Same for llvm-readelf.
> 

I will add that to the document.

Thanks,
Yu-cheng

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4fad528b-e467-f96d-b7fb-9484fd975886%40intel.com.

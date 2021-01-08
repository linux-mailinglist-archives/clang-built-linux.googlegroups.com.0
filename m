Return-Path: <clang-built-linux+bncBD26TVH6RINBBHWZ337QKGQEB4IGHBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EF22EEA90
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 01:51:44 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id t14sf5131987plr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 16:51:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610067102; cv=pass;
        d=google.com; s=arc-20160816;
        b=K5BO2WI9vloKCuQQ/ULD9cw6ignGN4EKKjgEEWgIEQU3ijXdKXUUGwLrhKCUc2TXK6
         FmTmQfy211Q/raR1uDXKogw0pAVGKiSQ5aWwxayA4ZCsq4t47jS08LOZzxmOcWkwd0Ws
         KcVYAwzSY7zkh1H4D7kiriTnlE8Nt2dS+47Y5SPO8660NolZOUxhEtsTjNi4hVvXYyS2
         enQOYO/lPoaiTyhadiiWZPJCvGTDU0+PfpykGuKQPbrkE5Cn4QD2pq30HImhmoRujtea
         tHL5vdME60ZXO3LnDpP/k2fKjvp/W6+I8UBvdadaa66ZXO4zJr5DEwczca3ftuKOrRDn
         YsYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=XWtEAHPwEzt+bxi3bbqrwGuGeRQWkkBnYKp99BVHNSQ=;
        b=zdE3J1kpzWHYI1nrlCyyimRqUENPmZcOsHqVunXs2LSeIPCt3yxl/FFDZ8S99CTwdq
         zBTqf+klsrfq/2uey91nLL4wmSUTy5oys82NRygYQ7gKHLNdLsG67fveK0rf5IedbbNY
         aOGPNXnns2/KQWOq6usv9Xs6irg5+vO6bqCD7V2xOoXogcIdE1ExQV6cWDOHR6JXTv8a
         9u5kgKXAXenf9BHLnjRO95OeIdkFU7JuICr6J3CRZUiK9wcJnId5ok8pxjppREv95jfH
         d+zT/EywyPwJ00oxWnI64w4cdCWxRGQ0SKqbCr2A/cnw+K2CBWGY+rOpNqJjhYJqLWpq
         oZ/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XWtEAHPwEzt+bxi3bbqrwGuGeRQWkkBnYKp99BVHNSQ=;
        b=eip6S3wAyUREByiDhWQivU/urvuzH8wVP9zkdSrsZ5dIhCVRenMzsIUhelDggeTUTx
         70/OKBbWRtpgXCd6eSmF5anj8lWv68ZWi0CQRoDOl/dwM2iV4iLU1XKTKFWR1nCGhkja
         qb2e9+889VLeLV0yZXTMrgscGFP+S9Y5QWevozkNK5jX2dWDx1RR7ph3riGoBLn4YK3R
         9SGX18pCYI5xlwh/L9NNKvSpYOMEBdV6M9wwWWg9O6kl2BsU7p8E8NV36YI/10+3cIyO
         ouLlzW5J2JYqtcBtVImlFk2vdAG/m3+BdIRG6jhRenlZK+Lf98Aqy7DS1szZYZz0cVxi
         uXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWtEAHPwEzt+bxi3bbqrwGuGeRQWkkBnYKp99BVHNSQ=;
        b=oRuvFQclgF7PUXtf77rkcjA28wXBZfTKXOdCQarbngfS5h77RKUBrM9Poy0F/SOysR
         njESjnCdfOGSZlys4Amzy/1cfYUgb9HRPKJgtyRqKWfQP2zaUdHZFvNsDShoqtnn4Okf
         KABNtIddEGxhA7i8r74aSd5XO4RdQYXXY7YpjWlUzezLvzpMpUK1JkjGybF/fXD8MDmp
         QLSmf/jm2n+xiEK45HY5lo4HHx9rOX2QST+a6g4c1Qd+B3D2BfV8ILSLx+RZDYw54Uyu
         JKqmNMCHvQuXcFEKMOcvDUNUBNgecXRRGgOQWQNpn6A5N+VIR7tqfArlBsdQcUWc5MRy
         72vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Fgh+EFG36r6STuEvte0ybNMddZSrEa6ZLyJHdPoodD/qcDfLr
	8Sdkzr5uUQcfHjyYWopbec8=
X-Google-Smtp-Source: ABdhPJxacjHhZJPGvz3NreFdcufqcK5uoQ+HtcQ6LkpjbpisC0b2psxuWFr6xlj4rBD1Q0ljDl8hlw==
X-Received: by 2002:a17:902:521:b029:dc:2836:ec17 with SMTP id 30-20020a1709020521b02900dc2836ec17mr4470473plf.47.1610067102535;
        Thu, 07 Jan 2021 16:51:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2a8c:: with SMTP id j12ls76667pjd.1.experimental-gmail;
 Thu, 07 Jan 2021 16:51:41 -0800 (PST)
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr1093667pjt.212.1610067101491;
        Thu, 07 Jan 2021 16:51:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610067101; cv=none;
        d=google.com; s=arc-20160816;
        b=E7uzuL7Jo1T5Z4+HW+KQbZE471YFLXHUimifgznMENQluzYtyQ5sbliq7kzC7aE4ss
         wNrnfR0a7w7STQvTQjKcwmhZymEOSQDJeX/2uLs5UEcWdIfz9N1BqEr2vBGWbAYxfacD
         vK4UC+pAn/r388dN9vC/hzFf9C8SkRWETbwxNRgIQZ4JH1mj9OJErL6x89BJoG70M1lZ
         6kYEmAG3pegtNC+6nuG3QkJAB0tCK5KVdqWyHqjd4C2SQ4IUh9ZBsi2sn+OVG2+KeMKX
         DqLKXRPTUveYnChvE9I4VzTJTsQyFzEvFvj9BEyCjoazvKAgEHcBRXuv1NfeUJ6/Ifnl
         F7lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=Dmp9JKTFNF7E1tsknkfomHG5UxVz+OU5gkGJVUgzvwk=;
        b=Ne35D16nldvad6cJaAbTRlk8Rv6RPA5IhGNPdGkwJ/59VeQAGBXLgF5y6a2/9PNYRk
         1wqlstWvDD2FWufxrj3VAeUmw23AbnNo7cWae0zAHZsp9503aJ4mELR196BVGbpNiA7p
         WV/80lKIIeMO5SQVktApQRlv6nsaTBhpP1twdf/gnMjdnLcUCUIh+lY/6KqjHf5hDx5z
         pz8q6SGgED1+a1GZJ9RrhqVvjstwgNYUKCJ6lsY1VM9/YgxQgpbCRP5SyeA8aKMH3VOx
         kdhXT2tV5bdeJq3MG3qvtyex1cZDm9Fq9hG2uE57ZFeuFucJihme3uYX17Wjgrm6l9ca
         aNEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id f204si517763pfa.5.2021.01.07.16.51.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 16:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: VpkkafwZCyFNMnA4/swrdGeFFvlWgyvYi1SR+qcSNUXPz3Zx4HFuJzcI4uoej8X675ZZO46xor
 poHEAkXqSHMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="156703208"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; 
   d="scan'208";a="156703208"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2021 16:51:40 -0800
IronPort-SDR: tT3u3vw48Msccji5GBwP1LuGc5GcfVfkkRKxhxl8/xzfRxf1C5gr5iElFBe0QMd0o9tb1ikYuO
 PPCtyLGPBQAQ==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; 
   d="scan'208";a="379924893"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2021 16:51:37 -0800
Subject: Re: [PATCH v3 net-next 08/12] net: make dev_get_stats return void
To: Vladimir Oltean <olteanv@gmail.com>, kernel test robot <lkp@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>,
 George McCollister <george.mccollister@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
References: <20210107094951.1772183-9-olteanv@gmail.com>
 <202101072035.p3B0IIfz-lkp@intel.com> <20210107131558.lcmuhqymqvtos2d6@skbuf>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <771f44df-5da8-9e85-7854-bf69d3d335ba@intel.com>
Date: Fri, 8 Jan 2021 08:50:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210107131558.lcmuhqymqvtos2d6@skbuf>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
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



On 1/7/21 9:15 PM, Vladimir Oltean wrote:
> On Thu, Jan 07, 2021 at 09:01:03PM +0800, kernel test robot wrote:
>> Hi Vladimir,
>>
>> I love your patch! Yet something to improve:
> These are not scheduled to run on RFC series, are they?
> This report came within 3 hours of me posting an identical version to
> the RFC series from two days ago:
> https://patchwork.kernel.org/project/netdevbpf/patch/20210105185902.3922928-9-olteanv@gmail.com/
>

Hi Vladimir,

The issue was found with a rand config which was generated in Jan 7,
the bot didn't notice the issue in the RFC series:

url:https://github.com/0day-ci/linux/commits/Vladimir-Oltean/Make-ndo_get_stats64-sleepable/20210107-175746
base:https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git  3db1a3fa98808aa90f95ec3e0fa2fc7abf28f5c9
config: x86_64-randconfig-a005-20210107 (attached as .config)

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/771f44df-5da8-9e85-7854-bf69d3d335ba%40intel.com.

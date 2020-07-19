Return-Path: <clang-built-linux+bncBCE252F7UACBBWNWZ74AKGQENOGLUCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5261E224FCC
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 07:34:19 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id x62sf10110849pfc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 22:34:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595136857; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nqbyuko4iona6zmP2hbVrhjyh4vbTDH9AylY8t9bjF8uxIPMkJG8A0Te8T0nVc0vK6
         zeKx/DndiBJP7qyz4gddxih2XZ5KRH0fVl2s5Cdef+BFhAAseQkGRFGASruKliHFkgeS
         dAUNq8sxGBr1/SNq6bu2tNtu4tvHRdRJFFyBcP95dHVFHS8XCNcj9FPY4tyqzL18PNvP
         Z+TkpIVnnI4Rmk+oYj6bhY7L7wxR0k+/C+FGMV8d2bBVxYP0sbehlcBbAtcszMo7QXTi
         vzYp+yU+fc+VN23hMV+E5q+EW2qrJmkVeEmI6J0lPkOvlBHO4BCHMJtXKcp9XT8uPcrA
         HTwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4vpCc+GNGCIUSa+tsLJHuvyYEDlUGTDkO/cty8/F72U=;
        b=MFd4++ut8hYqJBnmhk5gaRduR4Ojlr0CqnyCGDnuuzW0FhZqmkaqA/MCkKdxtoO0rG
         mdgPbUQQZJ4NMWMp6DleuG3XSsbPw2euGqWPw2hKOcTdixk/JYDmk2zkoH1+WTJbqHHD
         NgoTue4Ismaz7ITGNsRyyucnmew6EjLF4J8Qo/3+w0GnNX5GFRlLOanyHpgoboRurI7o
         2qQ1Hu0v+J2xdnB6cI72u8AZO0XuCYHmqWJ1UzacRMz4Z1Cq+J8P9UtQxM7+2k9gjUhk
         m45puQknZDav0kdyVA5M+rbFJJdpXWdT1/4xHMUHl3F4OKUhxv+KlQwR00IR+wyrOHPG
         QAOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sasha.neftin@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sasha.neftin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4vpCc+GNGCIUSa+tsLJHuvyYEDlUGTDkO/cty8/F72U=;
        b=YjPFmCpv3TOtdxmLyFznFCWq8NEo/V/o+Ir/X0EwnO4jLqTKFK944ILad8Vocy8BOm
         pChrPFIRp2Jc60CDoHb78IIHQQtZO6bUjZ51AM26HXCxSV6LlytLcZLO8QFgjShu9Dv7
         i7VBPIffzwzh8u+mORQmpZMIHLwSzc1Ipscdy4UmuDdzFMl307myhEgVbpx+4olsfjo2
         LuiD5JfM5gePKt9QWFVSRAkEu/bCbkiMIn7kMPli1KYLCoZKL/Jmmr+00iipmjOjBcBH
         Jj1IAdS0zGum15fk7YWkRmdUntuhRAijQN0kwaAlD7atC85I3nFrPCz9d+8LNZCeO8Q3
         TLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4vpCc+GNGCIUSa+tsLJHuvyYEDlUGTDkO/cty8/F72U=;
        b=RBPCGI0ZzxHNk+YHuysU4wYvHS8+3bkoIfTv6YW6u/gsd2g+tL+51cZUxU+593e50X
         mPwqmkgQ8ZJf49rY1Seucz8SZUQ9J9Nd6HzIMzicCSF5qt3kveDrqc41eNauyF9AwnQT
         Xgf3LIQYmT7T8VCSSWDPZy/5Dy/e6+h/caNHrhB7Nxx7piYXYYlkgZ8/ak01oj7PZTua
         rQ05TrTT8kDTPpbh6RkLk5z1SF4eehqQhZeunztd64WgJwUjiCPJww0EUWeSXpEcHBSa
         rhtUlwuMXdfhvWdiMv6K+GHO/8wUrHGc+Ib9IvSNMBQVw4AuhtRhrQO+Ufi1vlFLGDyd
         klhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yFEJLIKsGU9mOPrpRFn8Os87nka8CW3KiQNrpFo7g4QN/dRY5
	5KWCQfRNi8D4AoYprzbMPx4=
X-Google-Smtp-Source: ABdhPJyAk7zx2ZaabN7i/JU6qFuHFosGgG4oktNHKQGX5XAdz/IgKC1AFqQ19gJaFzRQH+TTIXUiEg==
X-Received: by 2002:a17:90b:4c12:: with SMTP id na18mr3133620pjb.0.1595136857480;
        Sat, 18 Jul 2020 22:34:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls1041426pgc.1.gmail; Sat, 18 Jul
 2020 22:34:17 -0700 (PDT)
X-Received: by 2002:a62:8489:: with SMTP id k131mr14593654pfd.4.1595136857071;
        Sat, 18 Jul 2020 22:34:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595136857; cv=none;
        d=google.com; s=arc-20160816;
        b=w6f/tYlej4JMK5MXuuwxIiVWAXc6ZbHa98ez82uKCu/tf9HOPrUBv2cBgln43ZszKI
         mAy/dta/NeP7YLRbblcprso/dv4i6uvTzyBC49qI58KWfk1hEDJC8LaphTxaHtPDb0N0
         IsRTBtKQ2fdIrF+cZDl967UAPXxVXlCQ4R5RH4C3XDmHvcxRFWUAAIWA0RCiueZqIiwi
         K7ZBuSOd9riPEfpdqPr1OprYPGjUZE2htzEvM8CrdsWDTEe6D8CPZjE8ZJ+33qvIMnKl
         4xPtW0gp+JbYV6yFoC9WvzvCQnAkFNKlgTW1LRsOCsL9JTWjqu0Q+ub8GbW7SjZJR5sx
         OOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=E5HM9ZU5YJ7wzVn+qfhyQD/VktLrurnWVxK8lMqOFUI=;
        b=iUVks3HiE+zugDrcNZTN7eimLO+TVkKThiiX4eCYTh1nyvzMgNJu2+3dXKPtU1u/Da
         o7CPWvd9dpsWP1o6BTQeUCho0BQxqeVhiYmc/aw+VIBOehfua7x8ltQuzSHzwZvpMoBW
         4vXYrokueW8KBiQgwM8rwiOCT9gbEguSznavAVpCUgJ7JftLR0zalvS4p1yGbdD+SqhO
         +KH3bu/WcxHk0B5Kmyu/GT+E1Ylyddsvwd5z5psmf7D/SUJxiRhI2p1CkIH5Co9EPq8N
         SdrKMhxHeL6+C3MRCNeIHRTfCWf9OmqEOphMWU0LvkyCgWcUlRuv1N1aALlDj+Tstzgz
         hIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sasha.neftin@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sasha.neftin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id v5si581790plo.4.2020.07.18.22.34.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Jul 2020 22:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sasha.neftin@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: lK1QsmWVBMQjvcrnRgvDeC4jKosP7xPJGLCtzi8JP14x8mQvlh9SQvQHcLQcl3XlyiQ4fffKdO
 6WpWhxCfH0Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9686"; a="147749569"
X-IronPort-AV: E=Sophos;i="5.75,369,1589266800"; 
   d="scan'208";a="147749569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2020 22:34:15 -0700
IronPort-SDR: FXW1Ac7iCitpqkwhFvTSn54O81Pc62W1bjCaB9G8zwy97xDiluuZbiRJb2PRtHwllONbbVj6kR
 IbZFJPomRm6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,369,1589266800"; 
   d="scan'208";a="269858023"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.249.88.79]) ([10.249.88.79])
  by fmsmga007.fm.intel.com with ESMTP; 18 Jul 2020 22:34:13 -0700
Subject: Re: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20200716044934.152364-1-natechancellor@gmail.com>
 <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
 <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <96131050-57e4-934a-3d9a-a285f234e633@intel.com>
Date: Sun, 19 Jul 2020 08:34:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sasha.neftin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sasha.neftin@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=sasha.neftin@intel.com;       dmarc=pass
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

On 7/17/2020 05:12, Nathan Chancellor wrote:
> On Thu, Jul 16, 2020 at 07:29:03PM +0300, Neftin, Sasha wrote:
>> On 7/16/2020 07:49, Nathan Chancellor wrote:
>>> Clang warns:
>>>
>> Hello Nathan,
>> Thanks for tracking our code.Please, look at https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/
>> - I hope this patch already address this Clang warns - please, let me know.
> 
> I have not explicitly tested it but it seems obvious that it will. Let's
> go with that.
> 
Good Nathan, let's go with my 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/ 
and let me know if warning still generated.
Thanks,
Sasha
> Cheers,
> Nathan
> 
>>> drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
>>> is used uninitialized whenever 'if' condition is true
>>> [-Wsometimes-uninitialized]
>>>           if (!mac->get_link_status) {
>>>               ^~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
>>> occurs here
>>>           ret_val = igc_set_ltr_i225(hw, link);
>>>                                          ^~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
>>> its condition is always false
>>>           if (!mac->get_link_status) {
>>>           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
>>> variable 'link' to silence this warning
>>>           bool link;
>>>                    ^
>>>                     = 0
>>> 1 warning generated.
>>>
>>> It is not wrong, link is only uninitialized after this through
>>> igc_phy_has_link. Presumably, if we skip the majority of this function
>>> when get_link_status is false, we should skip calling igc_set_ltr_i225
>>> as well. Just directly return 0 in this case, rather than bothering with
>>> adding another label or initializing link in the if statement.
>>>
>>> Fixes: 707abf069548 ("igc: Add initial LTR support")
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/1095
>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
>>>    1 file changed, 2 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
>>> index b47e7b0a6398..26e3c56a4a8b 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>>> @@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
>>>    	 * get_link_status flag is set upon receiving a Link Status
>>>    	 * Change or Rx Sequence Error interrupt.
>>>    	 */
>>> -	if (!mac->get_link_status) {
>>> -		ret_val = 0;
>>> -		goto out;
>>> -	}
>>> +	if (!mac->get_link_status)
>>> +		return 0;
>>>    	/* First we want to see if the MII Status Register reports
>>>    	 * link.  If so, then we want to get the current speed/duplex
>>>
>>> base-commit: ca0e494af5edb59002665bf12871e94b4163a257
>>>
>> Thanks,
>> Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/96131050-57e4-934a-3d9a-a285f234e633%40intel.com.

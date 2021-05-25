Return-Path: <clang-built-linux+bncBDUNBGN3R4KRB7XLWKCQMGQEUZZWX6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70C38FCDC
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 10:31:59 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id g206-20020a1c39d70000b029016ac627fbe9sf4543996wma.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 01:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621931518; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKb7zZ5Bd+rcchFFB+NlukwfrfpjdqLAlVZCAlYcZw2QiWeYz2AHzkYQhaCWrygUBH
         uo3jWpNkeAFd3omeq07k+nCrq+qsfBUK2MhMoCccwkRpFrl5CHUIn+0dzv2xH1BgwnXC
         eSdszu8Xkjczgy0C+bRrAAmMzxGuT2miSYQDB8q0BgMK7Po+vtvx8653Cy1kQfy8xQUG
         KP6J0WmGt4Dh3nryE+/NdQ16HFPCCJYwNE3q5olTOYKPjMOkNhd8PUXR1d9agiEtrxhR
         5Z3LeI06A9CntBuI3Dapuit3da6UL/E7N6wmDoR7xKrp1yB+JlD44nrmcpgQO4MrsLfC
         tFHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l1TzNsmp3YhkETjZBoMVwtRfTZdDvS6UuP2vCt5Nynk=;
        b=aLmoZGPgt4xOQqTwaYa3TDXopy9UeQoHk4z007kWUP47y8QcUWFZuRV/qgEamADfUG
         k2HVgvVpCQWWCf7vX44J472P1SWs7kKTbOfmQxA1oIL6/7Vf5gzB8NPMLTmj7Kl/x9fl
         HmRLtakhhtVuIHWt+bEN+TKGyMfNv8w8+1m0X4mhGdz7r3hIN9V6UupXAbrCtWdqaDH6
         ONEPYyj+M5Ag7tPFWW9iOhkP+V9XGIq78qau4ksPTO/t7yJaRGFBvgqhAMSwprtVRt1w
         Z7fV6tmEUzqKBadP3KIA55q680wcluD9UL4SgT48A+VYHBnxPKXvEcUY4DNTP9JrQsKl
         izYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1TzNsmp3YhkETjZBoMVwtRfTZdDvS6UuP2vCt5Nynk=;
        b=KBPGyQ0qlQIUYQC3bmhBnh3LRa7P4RqMi9io1GBRpFMQdpI6WoG5SZGegch7UVX3ZB
         XOGOHiHCDKQi9xkYZ+W6HfmqZrM94Jveqdht3ANa1xvcV8FNYG9lELV+lpZWbLX0TpIN
         F/S7u3gPn21LxxerwSo9uIgtGqeMgW2jwudUin1i9y5AZtFf6wrV70NjIjJIFSUgxO4q
         0vqPRgE0iYqlRWR5l3/Aw8JW3FeMp5by87A3rwj/0o3BChCicQJHvwSuvQ9UUTZYVD+7
         wlrL9maXbCDR9rpY4y7pInoRoacXiSQ+H7MbpDICvevpLfxj5KRJ4hiIvJm4IFb/X732
         CHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l1TzNsmp3YhkETjZBoMVwtRfTZdDvS6UuP2vCt5Nynk=;
        b=KsXVkh7G37u8DIelRyeA0f95DSMgKnWLkpkwm8BWeKRi5Yrf8RHJW4Vja17HSY6Nig
         AjSHjDoI517FMFcFp/e+xq7gZ7DxSuGpD0SkN8Hk8QdGCBKd6N22DFVVVlfkNvZZcJ4Q
         lIxrmIz2unZagETplvzuW+CNG9UjqTF5NbcvjEUfhmePgvO42q44axp6XHfX6n/6LpK7
         uTdrD6Y3KoI2Hid6/bMwyAwzOQVkt3CwNi8Jn29HsiW4qtm4a5cuJYQFYXHcbk9yn7kg
         ZyDHvJ4yMYebSphji3stG4C9tFYpLdSVdclKgGzFBZPVXw2mqI7dWPEkalPZDOMb/1yu
         XG7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ja0UZtyY/9n+eAAZ5aCFM1EPlPFycrSSP7ef9jWExD5Bgke2M
	gkkb38QrLixr2NLjZlWz0ZI=
X-Google-Smtp-Source: ABdhPJy7Nre53+USemwd4REmI3zznnNpAaPQAuOjnuWhcuwyJKoxdNhxep5Rfde1+rH4K/m7iKsLbA==
X-Received: by 2002:a5d:64a6:: with SMTP id m6mr26275159wrp.425.1621931518835;
        Tue, 25 May 2021 01:31:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls943694wmq.3.canary-gmail;
 Tue, 25 May 2021 01:31:57 -0700 (PDT)
X-Received: by 2002:a05:600c:2cd2:: with SMTP id l18mr22646465wmc.142.1621931517910;
        Tue, 25 May 2021 01:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621931517; cv=none;
        d=google.com; s=arc-20160816;
        b=jaBHgpac7aqpA8fPQO8nl0Zptbi0BLXufzqoKPRtyr1gJXFJ5OVeo34iqFH3tDr5DJ
         eEED1S8kR9SmagS6M/bouJCHjJ0LiiLzUwbhbKanbK/8/T4ApEgzzkhsQK2QP/IavxLC
         W3Z3AML/VwO/IqlfjDOZW0QzXY/grCMJz9nCBd4pUqcAD+4OqhjuybC+3xkpCgq4Te9j
         qiQHSu5KvZVScki8ajMog9+uZZJV2nKUKoFiXRzggi9UOnSXPVFPfFgMHSLUPm3WR+05
         0byWXIcnJm0/eeE7tVAsM3JnugvxrEMTfusPDcdwYhwvvm+htkQAIJW+xNAh4I1PIMXf
         7cmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=veC9VfH3g2HQ9m0K31enZMa2MDUmq80HCx1U9hr1/wY=;
        b=oClYfLetPYmOdWzC5a/Xqfz4lIZiw+gE8HRiJbgeT+TFpAfbSl1yWTBPIuIRIQAwvN
         U9jHUWSv554wp6nxs83GOkGkCwHinZrTlJZ15AXWM0Rtuw6cWDTmVowPOvYvzydo+5zy
         KodUmGhGRckfoqlqclmB99/mq6MWSTkFZ/w6C6d3c3PGjpFe+jioOjrUkelY095bgVcP
         QUrDbosI+ViU8V2OYJ8nQZeQJQgzDJH+d3N8spYvbHCB8adGCY/RwA+3NiLc1Cqc6ZCt
         zt4xbTOmi5N6IBMipFFc2XVguDgDOBZi+NUuCIN2z1+ZkVHRfpsVJblduo05tGQ+Ckao
         4H8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id g18si246650wmc.0.2021.05.25.01.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 01:31:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 3623567357; Tue, 25 May 2021 10:31:56 +0200 (CEST)
Date: Tue, 25 May 2021 10:31:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: jlbec@evilplan.org, hch@lst.de, nathan@kernel.org,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] configfs: Remove redundant initialization of 'len'
Message-ID: <20210525083156.GB19018@lst.de>
References: <1620811079-105280-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620811079-105280-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Thanks, but this isn't needed anymore with the patch from Bart that
implements ->read_iter instead of ->read.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525083156.GB19018%40lst.de.

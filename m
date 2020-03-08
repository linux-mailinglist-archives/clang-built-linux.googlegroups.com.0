Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBOGWSXZQKGQE43HZBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0A17D69B
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 23:01:30 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id f14sf1162636pfk.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 15:01:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583704888; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3gBaX1h44rDBNhI6PYPffJtCBtFBcxbYgGhsajN4jGUbIawFdKCx1LSteA2a8zJok
         9X1gXv/0UR0lEi5xrybNpGmXjP8sR5d8JLSGoyRVOB4HbV3i6h7QehS/StlSowoInH4H
         iZ69HzMo9u1ay00HsWyh5P6wspACPnt1yrg14X2z42SbTJSs6Qkhzwqg7NNtMhckhfMX
         1e4T30MPX8t4SeaCzCoKQ4VqCwhXippZMlEhjHo5CP4Vq6hQ0ufmvLFDvWrDYS9kmR3x
         RxkWNCN4I1vDa/B7kShcrKbwu4hC1JY/aqXyLaycCaFI2zc3w4pPKMinF/5/QxjbkEMK
         VmpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=MIkLva0IoXX63qI210xq2C9K1KQ/2TW8Pw3wNZWSdXE=;
        b=ywHQkqfR32s+OZdgQVEKYiih228H+V8PP6JV9huQkkIhSfhckbgTQbDKp+vgAU8WbB
         zZA8nQ/DfQtCcFi2lZy3+h5TCMlr5128QntBg3yxIRINgJRUpHHAo/AAVV6ieTFwWCnQ
         NoEJTXta9F5k8pO2MZJnoJvRqgrNwNycewfjDTsi0zCJty0IxaiauTJa5TiMblqVqw7E
         VY5O9jeTH4yt7CoW/oKxTbjfiYz3njh1k23q4y11CY0GSKUT5eqrpLTXEx076rbhGFid
         zMSRpitk5/wfyXsFaS4CF7ojTjZtX6nonPVhrzxUmGsa8IjgjQGYxKKqc3fBHbtt96iN
         Y/pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=tAUZawIw;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.222 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MIkLva0IoXX63qI210xq2C9K1KQ/2TW8Pw3wNZWSdXE=;
        b=e/dQZonEZbFNbeAx+tqPOwbL/ScZ/zMI8gOBp+5hOhl1Z5aKanFSOm76iz4tChSKs1
         eQahuo8QPcF4ow5oywMjdGaq7CYnPRHCHU2B4PE5Nrm5Wd0pNCHFSd2kYAVz5/sXphIU
         QEwdymneZ8Kqj67xqHCJT43liftcdzy0gGYDpJwzMD1ERbC/1A8xLu+f6x+j+Syfu+EK
         iIZQAKHFysLPIH81M5zs8dAh0brHFSF43YM9u3HjCQ+vNy3+NrEkRuNrsA63nRy52L4M
         ExI/YYENa4sXYwiYZ+BOP2+YPvrFr0mQiTEMOR3XLXsr9ZL3hR4QtNTEr7v5rftI8kSV
         z+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MIkLva0IoXX63qI210xq2C9K1KQ/2TW8Pw3wNZWSdXE=;
        b=UC1S3ZV0Zyvz+NOLL9nWBL4vau5VH4RGSIjh1V3JZwBKQFP5Rzz9wtivcfdthb3BWz
         oclTRTuP9ZpaatMtwPe2w1uFILOViskX3ClWShRDxVit5sU2hdOgnDF7hag+dEgVsHWE
         Gfq3yI6Hr9yw6+/DjlkG+Mili3giY+oRK/gWcGEwZgtqjDcJlhvNnlhInD/gB0natBve
         esX6E++s9XYMWkKWLU7BZgTCb4vAe05821/nDSl6mkg2LMDR+y5dCYSOMuDCh2HLp8t3
         IjlOXShZp2X2d/x2JPRBUg+GcweC3NZBvd7lR0e0qCcO4ORxf1pbDp2jsAshGGmmALrF
         ILLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Yb1ueAc36oB5FYONRWCgTShSY6h8tRODzvxvDnQQ14rvsavbl
	w8Cma02qf+c6qvthfqTNZIQ=
X-Google-Smtp-Source: ADFU+vtqN4zLcfkki8fErR4v7MV3OhO0p/2Bcn4cjj7e7nAiJAduAW2pBo3z+pIA6t/M16hzATJyzQ==
X-Received: by 2002:a17:902:8207:: with SMTP id x7mr12818651pln.185.1583704888269;
        Sun, 08 Mar 2020 15:01:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:82c9:: with SMTP id u9ls3384701plz.3.gmail; Sun, 08
 Mar 2020 15:01:27 -0700 (PDT)
X-Received: by 2002:a17:90a:9af:: with SMTP id 44mr15796794pjo.160.1583704887750;
        Sun, 08 Mar 2020 15:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583704887; cv=none;
        d=google.com; s=arc-20160816;
        b=r48/E/vKfGwfZI/7HqwC0c0rGq3dad3M2N2CWslRBQ3Bs7GVREPzj/Rc5N8/xLnfUi
         kZ1VZ5znwfhxIrdIiXv0fF2wAyLQY3G1lPYd7jW6aUiUBIC6t9QSBmnh3YcOhOd7zAEo
         k5TNufAY3GZoL4jr6glZahB8V2kdiawy1OKoW3rNC9GHOn7ZPTub0z7Ay2HcuVGKodXA
         LpY92pgwq+O2Aq/5ATr1HclXxhyyAaekTS6m5OTh3ow0MDJwK0R7EBY4mQQe0znZ89dr
         /Hn8ze8W/jx7x7teEcFdvoMWhD/LYMXfQJvZgRgE7um+AhnEYU2NatmCgJytwj0OZ1yi
         P2kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=OfM0PV2NPh6zo4GtnRF2CEx1eLJtwsZSs9cp+93EPOw=;
        b=boGUnFxnyKy9Zc881ZXUrvlC7hRN84HYkj1Vxf4BOEqDGePF9h4tAnKidCu50kVfG9
         u9digBJtalSeovKnZHgys1GFngZqgo/EYX5QULJR8gynR9McoXE7DtTqUr4pAfNtcC7W
         77GLR+Yp+Gll0PZw/8EGLxCs2HEQzNYhVEeUgrKfkMDD/9+uutCWuD2hGKAuzAx34J1K
         DSmaF79JfcBfGzw/dq5EIf0SaQ18QdjPyut9wB/rKAy7P063PseKMsoPUNFJNSlV+o+w
         CSFRgX3zJfFqHmjYwNV5cj/Axz3yT8+vQc2H/8fZ8F0pp4tw7gpbLjlN963eOVDcv+bs
         sKeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=tAUZawIw;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.222 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com. [192.185.148.222])
        by gmr-mx.google.com with ESMTPS id 59si449035ple.2.2020.03.08.15.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.222 as permitted sender) client-ip=192.185.148.222;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id CF60048B82
	for <clang-built-linux@googlegroups.com>; Sun,  8 Mar 2020 17:01:26 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id B3zCj6rvYRP4zB3zCjTWGw; Sun, 08 Mar 2020 17:01:26 -0500
X-Authority-Reason: nr=8
Received: from [201.162.167.15] (port=18184 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jB3zA-001xwJ-TC; Sun, 08 Mar 2020 17:01:26 -0500
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
 <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
 <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
 <7a0a3e7b-9c76-22f8-8dbf-acd9960d7950@embeddedor.com>
 <b934b12940ab50218be3b7c5d1b98f5d4f24a1fd.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <6a48e37a-a377-c9c8-3de8-c183b27cec46@embeddedor.com>
Date: Sun, 8 Mar 2020 17:04:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b934b12940ab50218be3b7c5d1b98f5d4f24a1fd.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.167.15
X-Source-L: No
X-Exim-ID: 1jB3zA-001xwJ-TC
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.167.15]:18184
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=tAUZawIw;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.148.222 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



The point is: will you update your patch so it doesn't remove
existing blank lines from the code?

If yes, send v2, please.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6a48e37a-a377-c9c8-3de8-c183b27cec46%40embeddedor.com.

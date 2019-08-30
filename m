Return-Path: <clang-built-linux+bncBC27HSOJ44LBBV4VUXVQKGQEPULMPVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A0681A3BAF
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:12:07 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i4sf4452699wri.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567181527; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2tKSzKW5/TsWZ0brmhsCXu3krKkjCwzyVLSFLzsA5fAiyBtfPhmVeMxLwUasNN7Fd
         I/CFKRNX/WtlGv7FXTessdGCt+8go8EHrj7yHW3afCLhLkNjnNBPCPiHe/19Pjjgk5Kb
         SIbeSSdzcaTDTNYPlT/lRRwcvC0MNGO+v/5RI6rb3qcpdFqX2a0IAwFGoypyjBOtszZa
         si+oorw0sIogvVZfTiLAf4GnZxFZ3NyNuCEvrmkqKvDYdPxqwREeMpUaHgt2fuMH9p3i
         4RV2VUeIcITqUdjHyH2gHUXwq9B+dMaE52z4s8dhcAOlFVsuFCnXh0xrS6ASNOj1advm
         EH6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=2ueMp16HD+P7XZ+Ha5bSM+0unAOLFcE+qYJeX7B6rIM=;
        b=l2NJRs8TvTzyAfHUvxVL2RMTrzw+5O0cQtifpLbQc84FEikJJvNJMA97BWwc71cZtV
         0+mITGWE+6aZShNsEGBeKhN0+KO3nD71fOG9W0jaElwHi9VMWQHLhPM7f5suA66O5oyL
         OfKU2JzJ8WxLQh5HYUbk6+SRYRwjlZrjW1OQN3Ds93tdflWY+zuJwtoiT/qiQtEs+19e
         sKtjtx8l/zgA4UWo65I7NmY44OirgGjC3BWy7+Lc7Vss8CRlOOGFbMHY660yN8vgshDA
         8K4o/bDwLedRAe0F576J0HyIUEJbiIl2gI04CXqF/qjw7k9jiLm9lxMBbu4Y+54yEG21
         niDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ueMp16HD+P7XZ+Ha5bSM+0unAOLFcE+qYJeX7B6rIM=;
        b=Zop0cjKDNrCwqFhtzrRVR6h6oxMR3xNygacT5f6r5+s6JCjBmYzq3G29iDYvsTBHhN
         8JM9x/L3ii4El8uKa8qNvCaYEjoqXkYF6U2xcxfoqSmhq3SB+hGYFOUcJcYcwf6rScZh
         8/EGRpSRl14yfmjFyvVLI5GJJ9wh4btLM08VVyz/SpDODuvxrnQA3iZ2m+GMrZ5aOZ+F
         vEKTzYB/HTXnlPaZTN0VnXSL38KtEglSP/+2wHVdMprW5a+swKYaveJMVaXdvvuktMsO
         4d1KSREDESR5QxqVccekSsyUDifmTJp5DPMfiLiyqhpSXKqPtYMV772wj/diJATTaWaK
         ogzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ueMp16HD+P7XZ+Ha5bSM+0unAOLFcE+qYJeX7B6rIM=;
        b=XGETUoM4+1u+X1DepMnMX8n+SwtbgqzOjBhbUnmMr7ZSPOyvjDZWP4gzt+0Iw+EaCh
         2QnMSBZ/Qt1HkT9Ped9C2cliZXbjJNER5HCoyzKHeintzr1sZp5gvCX1xVvII+3pbikW
         eLUa7bFYPxg/pvjq3VhCH9BVgIc7xrLldYYn9wMGiWM6e+0rO2o5y3caStBwpnk28VRr
         fnIKHn35NTo9U0Sgio4WVD5FRcpkR5H/h/wPswyJM+MGXPlzUFoOiMXaNNmO2+AJmBd9
         Lql36rIiMc5Svg66XxBs7CwO/ekNnGurU6RDwwATisRuJeUFfH0NnLHKLFQtFROZBxoc
         9NZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYnmo6ZjxFINh6q+JbmtbsI47UrajCkZ1xDHUlC49h5RlE4qAa
	XUT8vvboqFsDbEkJDYk5D5E=
X-Google-Smtp-Source: APXvYqxbkkbs0nPu45PIMnk82VwG48gStEMiscnBoXBQ2oLTO5WMFgvJgKJx3iOPo48+pohL/w86+A==
X-Received: by 2002:a1c:1b58:: with SMTP id b85mr18406654wmb.95.1567181527235;
        Fri, 30 Aug 2019 09:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6c06:: with SMTP id h6ls1634361wmc.3.gmail; Fri, 30 Aug
 2019 09:12:06 -0700 (PDT)
X-Received: by 2002:a1c:a546:: with SMTP id o67mr13452846wme.55.1567181526754;
        Fri, 30 Aug 2019 09:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567181526; cv=none;
        d=google.com; s=arc-20160816;
        b=Xzl6IvDkj0OT46CKyDEoiraBsUbJWcri82on3Mt1jCT7AvVM49mRZWKtOCmgq/kjpN
         ta2GNBtEHQpjnd3FoqM02NtO6SV8ejyjU06ptC6wbLcP11Z/lcCQVCYKnyr+oOZ3CNXZ
         cAdu/A6RqMp8DoGNGgeRGjkWfcfEDw/VLAIOnHNMZ5ZydMD40MomoBJqOh1qbB+lWtVi
         1iZAe9xspNaTxoV6Xh5C7b3PE0TO0kSDPTes5IJFQXw1Wx3IJktCzhcdJ4h1viSJrmbv
         IlUUdJxQdxvQjiTdAxG+TUn0is0BPQn9LTbZ0B8W4D0mVWDH8l/D76H7h6C0BNIKBeRt
         sfQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=NQb4NTbz/qCiOVxCXGSzRuUoc9mccUuByoFQseAuHNc=;
        b=r2l9b5SyQ/zmG+ZoGu3lZObi95lC8D1QjmvOeDDrr56kf4i7KMdJ9GkLDw0He43HLU
         +d7iy07o2bK0dHtDzMzxFnyQZNsC3IyzOk8cJfrhTk4x1TZY/pT8qEWNlILgHOHJkN1L
         v/4R4nvoe5cO5ExNg0Wqp6zK9t/mvUPnybLxVOSCezd02ZvvZ9JHyxJWutONCpPLMUnR
         LsQaEUG/UbFhb4AP8XdVyFVFCVlxRVDL08Hphpwb/ECmux+ZDJQnzO2zdUgkxEiDWsPh
         lxLoMDDzZ9urMN/UON4+tsZBMmAw1APjdZBA3uDBi/7aIdoWPBTDpiQaNtAyGgBwlw4g
         vDVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id r1si111158wrp.3.2019.08.30.09.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-8-vPgvCSCrNQKAFRHlhul29Q-1;
 Fri, 30 Aug 2019 17:12:05 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 30 Aug 2019 17:12:04 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 30 Aug 2019 17:12:04 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip
	<ilie.halip@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>
Subject: RE: objtool warning "uses BP as a scratch register" with clang-9
Thread-Topic: objtool warning "uses BP as a scratch register" with clang-9
Thread-Index: AQHVX0vKqj9VEXOMQ0SdqQ13OMpYJacT3FgA
Date: Fri, 30 Aug 2019 16:12:04 +0000
Message-ID: <7fb03b2951e04c5f9b2529a6b8d5c746@AcuMS.aculab.com>
References: <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
 <20190829232439.w3whzmci2vqtq53s@treble>
 <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
 <20190830151422.o4pbvjyravrz2wre@treble>
 <CAK8P3a33LQAzsReSUyB_aZxkws28RP=oJocQXonYbxxBky7aaQ@mail.gmail.com>
In-Reply-To: <CAK8P3a33LQAzsReSUyB_aZxkws28RP=oJocQXonYbxxBky7aaQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: vPgvCSCrNQKAFRHlhul29Q-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Arnd Bergmann
> Sent: 30 August 2019 16:59
...
> > Or even better, it would be great if we could get Clang to change their
> > memset() insertion heuristics, so that KASAN acts more like non-KASAN
> > code in that regard.
> 
> I suspect that's going to be harder. The clang-9 release is going to be
> soon, and that change probably wouldn't be considered a regression fix.
> 
> Maybe Nick can find what happens, but I don't actually see any reference
> to KASAN in the llvm source code related to the memset generation.
> 
> https://github.com/llvm-mirror/clang/blob/master/lib/CodeGen/CGExprAgg.cpp#L1803
> has a check for >16 bytes, but that again does not match my observation.

That looks like the code for initialising a local structure variable,
not for merging 'random' writes into a memset().

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7fb03b2951e04c5f9b2529a6b8d5c746%40AcuMS.aculab.com.

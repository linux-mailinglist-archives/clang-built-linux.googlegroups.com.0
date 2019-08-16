Return-Path: <clang-built-linux+bncBC475EUZ24JBBOXG3LVAKGQEVX7YXWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id DD51890359
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 15:44:27 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id k22sf4023394otn.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 06:44:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565963066; cv=pass;
        d=google.com; s=arc-20160816;
        b=YWyhxuei1w9poftTQIyzxg8CS+sCxQWMvfV8rM4THPHFKbrPfd7y2wBFa+NMYZ+4dt
         0BC12IcshzVKhMeX8rIlBz+k7lZqxcsd8Scs3VQyGBhcchtIRm9Ww1nhEnDHtVJf7bmF
         H96Er/yuc2Ce/hxWVHfiSsP/h+pmqj+ggG3Uu6HPs/qrklrUXz18kPSIVGQEUE2XnCPn
         KhzSC2Oe6ICzvIxrB3sF5fSw1OcXUMS4r/CMr8asYmcFmSDCskrHy2yaXR64HFg8qF6Y
         406OHpuNH3TtKbWo7J/M9dPO45NheNzwlfjRKcyh1U6wlmp7P2XI3AAhZik6MFQPGj7H
         auNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PVaacJrKfrsNTAuEx/M1LJrBwWyRFTLORo/8wpol/Uo=;
        b=s5ayCwZTM/GFZvMSlM/SUOd8s6HnUgL1Nga8gtpRlQ64BY6mJpINAT4OumklVuNHej
         mQwvENqlZKblyykz2BJNXBmxMuQSFWNzpkc71ySgOl/eWMIoF5tUEJYaXumF0ohsbAYS
         ux6DNG0lsfeQRCOX69c5VeQv9kez9qTILjIqQhTJI2vHr7VindesldxccE+0pDh8tQTD
         nD04CJVZR5mEs5NR8VXeQMVr6nLcC2Qiv/LJ5GwV8CMBU8CLM5s0Iixp5s7HrrJ1C9QF
         dvPqCi5orCls/V6QOr+fVvTGCrzGRIMG1pmHOIq9NecAkkPOiFoitfNJlSte7fG0Pp/p
         gggw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=keith.busch@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PVaacJrKfrsNTAuEx/M1LJrBwWyRFTLORo/8wpol/Uo=;
        b=N9cfPep1LhK9nxKgl/jtZZ0q6gAgoWVrAm9ZZ04j54rW6TKZtoy4VMr9jWKVPPkucJ
         6G9mZOuSSqXNNIIMR6LAEQbH/vT8io7B+2qGiPFsKGz1Zr5EPDniFti9aXRLYrbApXUo
         rUrPzKZClV7a3UT/9HsXmyts0uLhbPGUNUHOt1BgOU7vjBic7PkUYqtGtrInCxNVOgwj
         x3yQCsxeFo5X36/YAok5Tnw5Aj21ebRZfSGQXwsDDEumwbaUAkpvvXbjpgYf8qUNRRYd
         RNE1EClcg3MABZZXuT2EUVfbRTbwaiOxDujJgtGN1U8mfX+QBto/N0d239oS/T19zSJy
         6DRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PVaacJrKfrsNTAuEx/M1LJrBwWyRFTLORo/8wpol/Uo=;
        b=Dw23UWHx4dOLWxZ2rAZUU1UmEbjeocqQzHlNERwEUc0OCXsK99uYvNFXqeL8EvsHLO
         bN8KY6eFzRlaSE1ugkfRXh0PPuPtup7Y63o8ncRVuxOrZI7SQXhyTVBMxMQzO8zbmGxK
         qAXwt3AEekWit9vL4GQL9xF68iYSHURtly85OTd2a8uVSvcYlr/ZzpmNg+HD7Hjk96Iv
         8RtzFb5exT6s/zhW6biOkmadLN0r+AtfHqIj0Yc+3GzWpR6o3hXPYCKl5r9EuVC4VDqP
         p225cDw5+VE0fm4ubZPmPX2etNDigZ2V2LlboYvIPQ/0SjBHDE/tUtVwawduJl62wv3i
         jWig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTpR1jn6v2g7mby4RqjVBkzyBVn76x8DzN60cnyD1pSg+hWgxJ
	QJuj4hFGeHGG+V6Z/z7Z4WY=
X-Google-Smtp-Source: APXvYqwRwrzU0yrrcAxBurUOMkdB6DP8wU3cx6N5eNH0G2P28e6MThFzC+z1I9Iq98pcpYxVf4pgoA==
X-Received: by 2002:a9d:694f:: with SMTP id p15mr7912911oto.160.1565963066739;
        Fri, 16 Aug 2019 06:44:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3db7:: with SMTP id l52ls1656936otc.15.gmail; Fri, 16
 Aug 2019 06:44:26 -0700 (PDT)
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr6242984otc.301.1565963066321;
        Fri, 16 Aug 2019 06:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565963066; cv=none;
        d=google.com; s=arc-20160816;
        b=ROCgnIuYkfJxJx3kQJbuYO+nUCEqMe/QaXafbA3fbxoAsUZGmPUT71EEEFqZ/l4LeX
         6AV2pxETspL9OiFweOCJ5j2ETtWb3ZYUiIluEVrQfR0nQOonuC4sWg7n8O885R/V2FBc
         qtbptCKR1bDx5/3yjScbWRZW2ba6/x4ZyiZwdpKAnUQ5CKYyUIp9RqUG9i3MNmsKviAI
         f8A8CjnQn6Met++YCAG3YABzwRwsxPusrZ/Gwio6UMHy0EO+Xdj+rxseW7IgyZWA1btc
         oMIEMtEd14SvzXIeSX7qg2cxIFbpvdowKtJfFWZdKUZhq4GJKaKAHwXhf1anhKZtzeI7
         Ehww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vPArm3AawCbMfkYB6fElhhiSoUdfhTzkS5zryKSbBPQ=;
        b=uG2etx9YNPhjrnbbbx9Gn49fVGzQ7r1N/qdUhC4ps3Jlkf5ri8lfeEmfXJFjhcEq36
         lguLXXr5JqP4L79ZRHnDYRUruOMNe+PTV6unLXWvyiyIXlLrO6jwEtN5rewZ74viNA5X
         JzDRPFHtwGeAWpT3/PNhjJecAuY4w+8M8Ic6roZQ/OH14zsCmtKmZL7Wf+9JoTuVAWWf
         8FQgbDk1PfEqh9YCZVZ9XBOvWVWi8xzAyeNFtSjn68N7p2D7vBdn0zDYSu3rmAKJdvuD
         C5CnDme+peBxoADCmtVXrdYBk7p3uryEZ+VMbNs67H6tXHTkZtQYcOOiIzD5fIFjazMJ
         daSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=keith.busch@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d123si182590oig.5.2019.08.16.06.44.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 06:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Aug 2019 06:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; 
   d="scan'208";a="194994238"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
  by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2019 06:44:24 -0700
Date: Fri, 16 Aug 2019 07:42:15 -0600
From: Keith Busch <keith.busch@intel.com>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Keith Busch <kbusch@kernel.org>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
Message-ID: <20190816134214.GA6807@localhost.localdomain>
References: <201908151055.OL6W1ZPG%lkp@intel.com>
 <20190815201444.GA119104@archlinux-threadripper>
 <20190815201726.GA5813@localhost.localdomain>
 <CAKwvOd=Wgr_HhJACpO_x93owqXKCUp2Ydcd7CjF=9V-1b2+4tw@mail.gmail.com>
 <a2ef668b-aac2-cdb3-d747-bb1331cd7568@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a2ef668b-aac2-cdb3-d747-bb1331cd7568@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Original-Sender: keith.busch@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=keith.busch@intel.com;       dmarc=pass
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

On Fri, Aug 16, 2019 at 03:13:27PM +0800, Rong Chen wrote:
> On 8/16/19 6:10 AM, Nick Desaulniers wrote:
> > On Thu, Aug 15, 2019 at 1:19 PM Keith Busch <keith.busch@intel.com> wrote:
> > > BTW, this is a pretty experimental branch. Is there a way to mark a
> > > branch as such to have 0-day skip it? I occasionaly do some pretty quick
> > > 'n dirty hacks for these PoC features and I only push them for easier
> > > collaboration, and 0-day can end up making a bit of noise for things
> > > that are not quite upstream ready.
> > + Rong
> 
> Hi Keith,
> 
> We can blacklist branches with patterns, could you tell us what kind of
> branch name we need to skip?
> 
> Best Regards,
> Rong Chen

Nice, that's a cool feature. I will name experimental branches with a
"-exp" suffix in the future.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190816134214.GA6807%40localhost.localdomain.

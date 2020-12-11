Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIMUZT7AKGQENZLW47Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6132D6FE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 06:56:50 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id z129sf5744111qkb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 21:56:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607666210; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCpYNtb5kVIRZ0G8gGSVD1Zi6G6HDl82a8kecQnz+JaJIoI2ypk8YZcI5IbrVhkPKB
         n3GTEyUPKfQcy2FhwIOtxUt4oL9fKsDsBrE4hcPOX9D7uqF/ZvoQL3GFfYBFEW9xfiaq
         2CaX9WnrqYIL5OK4gsUArFW0u0WNKboP3NQ0aZWhQ3ZkFpJs9dbuUl0Qrbvo5B/DBcEv
         VanowSPKO6VXZBS1JuU68EDnDkUHc8wA5UHD2w2vaNIAGEuVmotReJ9pvajvr7y1VnMo
         c1B2VG0o6HQYZzNAlmAlmSvFfRmtBJ3z0eczZwu5n+IaRApp7kUo186TlxjVQUMg3laP
         pSJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LMiWK2RWtDI47IZZ3a346IFFoI/BxxM+bQx2y6vUXIQ=;
        b=IbmQcUmNYwWbnqvEEUfKMSnaCSSgFiZSusdplhZ1N3tCK5I3dFc90ceMcwL5TnO2+W
         7gzTbkzaCDe2dJVgjvZjQhuqLYgfewT4CCViAGkC4z1aU+eO5KhK8O7A51XUyuvV7gjm
         y8C1sWEoAYh87iEVmmg/UL/SkmneciugLlPj1cTYBkNEtLIJgrjQvNMabKRV0cdQ/K9Y
         OOI3UQVdTvh6qmzmbMe3b0NwEhhRdRFme99Z3vJQSdqxTrQ8+4P83H1RLThJFGRWUjuc
         ZeWl5WNGsgLfGtpXbhn5ip6T+FA/xzpPk38hnpRbOMTIILfryAgPBoyE5U0khtL3/rev
         txXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xOckNfgw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LMiWK2RWtDI47IZZ3a346IFFoI/BxxM+bQx2y6vUXIQ=;
        b=bdBvcgznOqKM16nBuf4QurRGfglq9ukExMGHWXIat2sOQUbzEPToK4/NwqK+02nHl+
         LDkGlDpS5Yee0UL2uxgY5YOh3+YgLElNv82yZPNMK0QAdXqwOV4V07TrC98omQbZx+jw
         uz5Y2126ii2oosWgl+K3CuxL0OpRs78l/KbQ/0EJFoC+ypyAB5XmFyMEsv9ryJEwPP6A
         FvmLvylUns4RLEC4sJBOigw+WoX+h5sANLNm04Dw1TnYv6TEG9ZHWuKhsfM+9O9mbzHT
         nO+oCBc9iNVvh6/3p7zMREDHAByINmQd97/uwJnCtdfpb3NbvFakkuGBbYPbQ6xCYwHJ
         nNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LMiWK2RWtDI47IZZ3a346IFFoI/BxxM+bQx2y6vUXIQ=;
        b=UeKfnkEh/tdbeJ/8tT3/nxwiok81dC6IxAIpgTVb/COmEMTdaDNqGLyWtkMZgHUWNU
         Z2j07tRkvCyhTxcgRz5NFLQiI1DnpnqryJQp3EmmZm3QdYEELPK3hJY/NsGKcIEzVZ+O
         t6tuGd19RKeDZwuNqvccLJ+hu9XX/DdMQQustHLsKUMU+Rp3fWTAew2Suo3D+Yi3uNMc
         xqYxa637Q/LMkDgDevYN2p/ROX09MTlfq08B8L1qG935JlwzcoNcCCtgBz/mJRI/u2KK
         fK7Q5H6PIpCVKuLrp1hWlHd1oi9sWM+EqQXbGgyAnC1OmqJEYKFkg9LG+RRca6vBlNUk
         4fmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MsAS5h7leZ1cx23B+NhDks/RyZ82cnGG74bygJP+gzC/VZbcy
	/kOD668aYts2iIY6TCeX3Bo=
X-Google-Smtp-Source: ABdhPJxI7e+KJB87CkCAqq0GLfidNPaIEmLedsvRfiyNbgnC4j07EsDf+ffWuxmOv+t1u66m2F/OEA==
X-Received: by 2002:a0c:dd85:: with SMTP id v5mr13834856qvk.60.1607666209886;
        Thu, 10 Dec 2020 21:56:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4149:: with SMTP id e9ls2837402qtm.5.gmail; Thu, 10 Dec
 2020 21:56:49 -0800 (PST)
X-Received: by 2002:ac8:a4e:: with SMTP id f14mr13547119qti.234.1607666209431;
        Thu, 10 Dec 2020 21:56:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607666209; cv=none;
        d=google.com; s=arc-20160816;
        b=DoGbKX4x8Vdubg11IMaY+9XbOGicWSf8jO1d5Y5kYJxTD/zCYxmEnzHg1rcFoYctXp
         zX93nEufkm5x/pwGyeFjdmvOQPStLWnes9k+jh4lNqOCTWIP72ILW3+23TjcUgwo+NM2
         0/PV7o4MEd5UQBTk38XoW8jwlhw/u1q13CK4gAJ9K8Lz4RrxszNf3yi2vufJVh/Vk+Dr
         ddN1W83Jdfd56HceeUEGBakBIXZAqlxNwnsauFkVGno2qGOIJqIx8Aa0thCGfjo3WUHe
         lB0y+1ttBr/PFVUUg0Iy6PPbIAXmxT/VUYbGDO5oaNEV1UMPp1APC1f0deHLOT93KHDH
         FTnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=pEECW9zDXjuOTkoRsyGMlbDDuIq6/mcjiWWAZ3tGC2I=;
        b=Ou/JVzDdVLc4VJksIM9SNGggbKofzMJunf5bBxP3oA3Picm+wg0I99LYp4FUwaFbrX
         KOkSqC9fiZZTYPHl14ff/ydipu9c29Pd9GMjvYvZR2SjmdYmt7uywR/UZOVZA7Ppt+wO
         1+h4o2QPaS7KX7UIda6zCFNIRrUh2SZq+wFUvSoLC9tHA/FQbVegTAHSzED0YENlk38R
         MtxtDXL266MOXOfSImIm1mQVWq034Z940tsLyXXIyXZ1TLWrvzbGbC0w/pSeAvQz0iTl
         9e3NXdUjOduKicYKJwyQTFqKG/fZFQ/2kA+FjXP90jVYGql8ZjHVeKWwmmmsQroZAGqO
         21Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xOckNfgw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si235593qta.2.2020.12.10.21.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 21:56:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Fri, 11 Dec 2020 06:56:44 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dan Murphy <dmurphy@ti.com>
Subject: Re: [ti:ti-linux-5.4.y 1/1] net/hsr/hsr_forward.c:521:13: warning:
 stack frame size of 1664 bytes in function 'hsr_forward_do'
Message-ID: <X9MKHK+KJkerDn64@kroah.com>
References: <202012110950.vF6h5mLH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012110950.vF6h5mLH-lkp@intel.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=xOckNfgw;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Dec 11, 2020 at 09:38:57AM +0800, kernel test robot wrote:
> tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y

Why are you emailing me about a random vendor-specific tree?

I can't do anything with it...

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X9MKHK%2BKJkerDn64%40kroah.com.

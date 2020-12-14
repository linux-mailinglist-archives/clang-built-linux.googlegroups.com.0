Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ7L3T7AKGQEH4HLMYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C07D2D9586
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 10:52:40 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id 3sf1285290pld.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 01:52:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607939559; cv=pass;
        d=google.com; s=arc-20160816;
        b=rJlRavaW05Wy+aKTC/IT3pt/I/D4JrFOMxMPGJvZJJsvOSy1uoJx1RwcMcQhSIoC3Z
         utD5OKnBRQbOXYpQzZY71x7WEouEGWThz6UMVQUype1v2KHEI2gcjC2WO9AxGEa5mLIg
         hDGGg/I99UmUfviWU0lc+oiDuIoRcDj3DZBWrxHfBsKkmkFK073//jkYX7oiq0FTViwG
         7NqqIAmAgk/Qs7s2w+dIrKs8pnvyd4asO9b55NVx6WlOWvUn9Bl1QFgWVadsDCG7ytCG
         +CNSocO/bvMbdHi3O8ym8oJSWGt646dGvV6ym+S/OKuon8SXalVLBbDFYvGoSL6FRhgs
         HJAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=q9cugwWGxe96h6FOzjj4t9l+ddJaDNWf5L+iK5OqybU=;
        b=pOM32+nCDJ0M3suX29X5pSYoK2P6ZAd1qJzo+GNOLV2fOu52cufc5/DeXxdGFBkr2W
         nq8mhgrhlV63AitB6GTeQvl++l7MDCs8pzHw4Cc5ksasQEAQRfW1x//1F3cEvee6BNdA
         mlgyzvbAP/KHH6cpSn+DXCkLgB1h1nu0Cf2GbyofTStIlztEavAECoJvCUFzb3EVrTAF
         kGjzKBJQoH9uZoPTIKiK54ZnxxON1DTl1OOdKyDSwGz18Pli4L94lSddnRlIV1uF2MSn
         rXzxVUNr/Pfk6MryHDx4z3IUtgHcnE21JUcZSrhYnUEDh4IgDFsR6mfiHgDYLKpK/pYO
         wKyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLhaXHyi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q9cugwWGxe96h6FOzjj4t9l+ddJaDNWf5L+iK5OqybU=;
        b=oEGMPrZW94bWx0RTCxk7N6j/FSy0whadNM4Xpr9qDc7F/k+sqCFhKigAdGUYYgUF+g
         DAJmrPslVoR5gYm5KThXzRXzE22Z8TFIdjKGO6POtuBcJYj02uNKVz1CQiqXfqbRNNnw
         2mQjXYOYaswBIbFlvrMX6qm7XjBAaQfq/n7jCHoDys//mtzq9Dzxrz8cHYFWBlN8rguk
         F2xSGgcei9qyen6bPyJEDxFIllYb14ycI6izvBaruzaDTfJ2J4Bm7YsvQ39kWnzd0wwv
         akLhgEZLuyfIDW4s9FtnTrJsJ323dCP39S+6Rbs/c01jOtTcaVdKmwGXupqFX/TyLHiR
         W0jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q9cugwWGxe96h6FOzjj4t9l+ddJaDNWf5L+iK5OqybU=;
        b=YgQH9laZrX0iObSwy1H7N9xnZy10ub/l8lsjRW3y3ARdSoL2GC15t524/gxgdddjRG
         zBpEgq2DwsbKGzYDB9x44yCTVsYM0DvgoVDY8223DvvaPRKGDjI1YJBxInpjlx3dHqYL
         IT7UrEe6HlVwFaIz6uOMbtom4Slc97DAIElrUpaHsDbSMJf7Tvjmsg/s7uSlH8DIhK2G
         JsZTeL4qJ7WmyALTM3vajQhp2HWhTEMpKrhwREkQnUoNlVBZY3l+LvIrV+KVH5uv4wjq
         mk2l7VKExzfupW4prhEiXch89Rn6wx5Qdlda9pqO7nn/avd7yQjUhRGCKWBxePRpfc1H
         ZZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q9cugwWGxe96h6FOzjj4t9l+ddJaDNWf5L+iK5OqybU=;
        b=PzqVaaHbD8g1RUT9jTdmZCc2ksYqNMb4fyovYWfs6vW7rAZG65CqiaadUdOj33XQl6
         1VgPRftt2WKkgUlLICjqRLflohRvJcRMOhWSqYHgSCcPO5bRMzVPfox7WXfbJpfNpe1l
         LBkg2mFe1fxpRtxZfkGr64vwveX9Xi811q3MVVhCM1HRowCRcp044V0KP0d6p3XHIeEl
         RqXTCbcPwim8etaHh1nIKyADEz5VE2Rl6oh3oxA4g07O7PW1H5Q8bTz90AIj1n32WJan
         stXnKsCszItrZwdASKsDodWnpttbs09nUIYqfmzN9vLO14+mUoEa3AedMNQRW9SQ78xD
         Tehg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320kyb986HPpH3ODgnIYTaUZAf1gbEnryXUkhfX7aKN43VrGSKq
	+mjAcnNqCDkMBpEXUcMc2gM=
X-Google-Smtp-Source: ABdhPJy5lrsdgVh6aHIyvsXDgG9byZC5ZSsTCq3GJJ/lr9OXh69Key3JuJON8mPSPF8dfj9OFSZxdA==
X-Received: by 2002:a17:902:8bcb:b029:dc:55b:ed with SMTP id r11-20020a1709028bcbb02900dc055b00edmr848651plo.48.1607939559330;
        Mon, 14 Dec 2020 01:52:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls6188147pfk.9.gmail; Mon, 14 Dec
 2020 01:52:38 -0800 (PST)
X-Received: by 2002:a63:1a5b:: with SMTP id a27mr23499823pgm.169.1607939558769;
        Mon, 14 Dec 2020 01:52:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607939558; cv=none;
        d=google.com; s=arc-20160816;
        b=EYfrs5kVyzy+SGHg+EN6Aa9SusTaHV3MJKNzOMmGWmT6eMPrTOBUqtWD4pkP86MIkl
         ldZrDA6vHMjkm3E8WsSy5RdnAvjaftpA+mBtVXERwC4nXoyU8KndbtQHHn7XsO2x7Mdc
         msXMzltjYTkxJfDWkU1dNNcuBKixqskyA2VXPyZKiTBUpx8vVewTdCDVV5m8+mmznBTH
         tFyR5KrrXj4Tvba+WZVhOAcDSB9+TVk0rr1F62QEnqHPrTNmxjK10IbvWM7Iu19GWvlq
         e+viPXWcIpmU2R+Y9Ah8EwIZ3XRrWfLcQrr6L6XeeR19t20vligCKSBlAPX9W3u5pZAT
         dLHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=upBy+LuDc02a3mjWj8MmMkoDRZK4Sn2xJH06jQooKnE=;
        b=NDUY3qJyFxuP6L3MBaJVY21BA+06D5+WNe7Y1ECei8v9ceXm3EU1nqD8uQ08OvXIUX
         AJi3X6n6SK+TpQ0aacQsZDRo0fXOTW3axPsg0hsmJvHNlbrgGFoEw44iRpQwLC5W3bF4
         v+Wptr2hGT04RmYPk8pyYb080oSxUofg1+oveUU0g6gVDrpSNyc2danWO5s6r4uVYP66
         0ML2Qi2hPDxEy46cchgP05RYuQfmNaV4eq/ySsE2eMRrtWRR1+yhw69bMJkCiEEbgfh8
         Sg1dv5ZK9jc8Uv9mEUThagqtaRxtfRzKR8NISFPOv07SsWIAuRq0yXyEJHybAw3ZEpxO
         JzYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLhaXHyi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id f15si50286pgf.3.2020.12.14.01.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 01:52:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id q137so16261563iod.9
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 01:52:38 -0800 (PST)
X-Received: by 2002:a5d:91cf:: with SMTP id k15mr31700661ior.161.1607939558157;
        Mon, 14 Dec 2020 01:52:38 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id e89sm11864779ill.44.2020.12.14.01.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 01:52:37 -0800 (PST)
Date: Mon, 14 Dec 2020 02:52:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven French <Steven.French@microsoft.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [EXTERNAL] [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202:
 Error: unrecognized opcode `zext.b s7,a1'
Message-ID: <20201214095235.GA1507297@ubuntu-m3-large-x86>
References: <202012140423.qZB2nYtw-lkp@intel.com>
 <SN6PR2101MB106938225B5D96FF917D8FF7E4C89@SN6PR2101MB1069.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <SN6PR2101MB106938225B5D96FF917D8FF7E4C89@SN6PR2101MB1069.namprd21.prod.outlook.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jLhaXHyi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Dec 13, 2020 at 09:13:34PM +0000, 'Steven French' via Clang Built Linux wrote:
> Ideas what in the small clang fixup patch causes this

I am not sure why this patch is being flagged as a problem for this
build error, it has been happening quite a bit recently. Hopefully the
0day folks can see what is going wrong here. My guess is that RISC-V
kernels are not setting LLVM_IAS=1 so that LLVM's integrated assembler
is used, instead of GNU as. I guess there is some issue between clang
and GNU as that we have not uncovered or tested yet because we have
purely been focused on LLVM_IAS=1 for RISC-V due to
https://github.com/ClangBuiltLinux/linux/issues/865

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214095235.GA1507297%40ubuntu-m3-large-x86.

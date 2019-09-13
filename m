Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBXMS6DVQKGQEC5VQ6VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 61062B272F
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:25:49 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id j2sf5891399wre.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:25:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568409949; cv=pass;
        d=google.com; s=arc-20160816;
        b=WRvOrvsNGJ5Mb5lKLoqwYnYeWahACytrrToEhMNQjGgOW58lbo/9iaJl8Xm/T/CXwt
         AwPzwSmOiuOFDEwZxMZ8olO7hYksJNvDCyDY/nDf5Id5VOwLEg/oQK0CkgGy3+c71l6a
         3Ph44TAjM3mw08Jv+v+T8lONQC47Clco2ZM8cfnfxw2YvH6i9BM/Lr64o9bbfLi2Tteo
         RdOQlMmvNDo2l+JSs726yAzxxSPQR5VzqyFIiYY8Nrg83nH8Zp2MNDu0Eaf0vs4Wgrt4
         gV7P3Wx6QjN/LU4zVP7/ncBYQzv9qY1puhFtdBUHqKDinqAREn33WWQvSQqO/CKM7CvC
         rRag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=vAkqNv5OLKnZlcOLpf41Rh8XdPVE+rsJzrqzyXx++6Q=;
        b=nwnUulOOzsrMWiUsyDbqLGubILIPYk7Qmlir+srN66bI2CGSDIGsWJk3Pu+0vR5jL+
         6dkJsThBwMWIEk8fGntmBb6P+Md3F0f/9ZI8U0mCQKLHSD42mwcojaz0WDD696wYud5x
         DYZOsXb9zFLItgQ0HwcfYGxniWZH1nCkPttpn6INUOmT9LGZCqw0GAcm6UfH2adEzjC2
         S12g44DQ7pIiI43aAYMRQxG+Crk3tgSst0k01S9jPJAUZpPGkCFxw7Idv3RIc8vJ8qkF
         1/dqndaoXgwreQi6MC2cB9teSV9d3pCyhlQqeSQuU/CIudNHU/zRtm8pXKsW8artFsiY
         jlog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WnMuApb4;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vAkqNv5OLKnZlcOLpf41Rh8XdPVE+rsJzrqzyXx++6Q=;
        b=e4i0Lk/IykCZvxN6MncBbY2OoIcMCbRdKKYYN6ZLQHCCS5H4m6ZcgryOuLW699WhSR
         gJHDflLpzDHEWoVu5P2DC8VZT/T0J47Gwh7/ddzr4kHaeRM8YzOrdBBHWRrowQUwPtmK
         xhb1Q283vHpeQxxCcGUT5pNOGF36ZOgDFKby1hRQ4Rd7eMUCnBlM/g6BLP9Pk2gEdy5L
         d9CnO7VJi1ifW0iX5+zQ5gTh2HqjDAxQkYjVRwTqw1/i9rB9+2Qw0z7TwxcYGP6XBSm3
         kDKCESsaS/MpiPQ8DM0kj7X1Xh4tU7Hks8/mcunE4hzRKwDW21C2SIkIO5fWRbkFiRA/
         sVLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vAkqNv5OLKnZlcOLpf41Rh8XdPVE+rsJzrqzyXx++6Q=;
        b=XgyRXyBBnkumfG4EIvNjjJCOGkMR1lWJ/exvgJammkVNYy2vNzzDwa5xrU3iKxL9Pt
         5kaMv4vN7wWbPGeX4N8ZViCp6brG9SLJxEq1jZSQGE9oa7TpDt1HB4e9rE6c6J6qgP8g
         NdhAIAyTrPqw7unCo673oOXm4ZA0g5lkrgkf7YZsvM6yNbjLP/1GVhHrBkhv79SsbWqq
         5xrs7DBHfXsugXz0uNpkvZvUM6y9I5kAnuwnnT2T04lflAChHYgu/ioQEgpW9b+02Cgw
         tEiQhoG4vN+XBC6ebSkIks6xNknc3cuB59PtOWb+Ykp8e7ql6NiRLgkpX6XFVJ/xZ/zs
         jTHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVI7z6SXBr30pgx/reAQgyv0M6CH9xKWqPDsETwzEEQSW0knI8Z
	Q9UXgVs/VFtHt1mR0zsc3v4=
X-Google-Smtp-Source: APXvYqwf2oHgQLi0skEqQ1oayCa1wvKC+DDIkAwmRwesI8AWyGQheWp5mXNFvEsBuGbnBxcqxWzZXg==
X-Received: by 2002:a1c:701a:: with SMTP id l26mr5297733wmc.90.1568409949084;
        Fri, 13 Sep 2019 14:25:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:550:: with SMTP id k16ls1807578wmc.1.canary-gmail;
 Fri, 13 Sep 2019 14:25:48 -0700 (PDT)
X-Received: by 2002:a05:600c:2305:: with SMTP id 5mr5205150wmo.154.1568409948574;
        Fri, 13 Sep 2019 14:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568409948; cv=none;
        d=google.com; s=arc-20160816;
        b=RMdzEBZRNJP7N1Gtr3uJQDLXHW+RyeYQO8nVny/T8xSq/u+InJs8C5oBKiEfswYdnC
         ZpwT6KP9ZI6qpSYu2/XKOfgiq4L/05l2YC83E74Ys1Me6gSFuEIuVogCvKQdqcmtzrQC
         5HlbIIPndv4uZ9pDPGc3oqX0danckKLXrBgrDkx+2CwnmP6JU/1rnS5PfToZbV85Lq0U
         bFYJbjDjRH4saQ4yoVK2DwsBeUKolnQjcEDSn9JjpTfAWdwucRPJaQjOmfTwOdfyosBe
         RQf+/TkdEJWO1Ag3/T4+7YP9MV/dQxNFyAaN8Di8H0xTrEGVNbw2zbvN0vpzaYO1wX3s
         2VBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=SqwwqelpURFmzfGjcJ7oMuOIQ2kIqB4BOKfM3/6ZLAw=;
        b=VPibVXoaxhAbS902z9kc6z7Dcab8fI+12Pd/fgEUtFICS+YiG9PHllpWGBNLf/DgQF
         ew713EGr4mOyW5wQ2MrE3aseyQRNzbxSrNYqFmWeKjMZuiIZYD3/bWXauXkHLoYQN1tf
         E8ke22a65XZ7txgrp+oRgb7pwLr10RQegd56dlls6D4VPc6lV3nVYdyvEQn17Tl0I5O4
         4tY0N06NvhNtcA1OcMR9XyStbRHNPe4uTUEbLIXwbBqTHr73pn6PPY8p2XgRevo/cKBV
         Ps6D6Ixxf01xwUYe3RvmHH++c2d/A4lbChxLgt87cgRkw8QZ+6gNW9eEx1jAbk0ssV0z
         m9yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WnMuApb4;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id i7si475182wrs.1.2019.09.13.14.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id m13so483572ljj.11
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 14:25:48 -0700 (PDT)
X-Received: by 2002:a2e:99c1:: with SMTP id l1mr25527331ljj.8.1568409948002;
        Fri, 13 Sep 2019 14:25:48 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id y3sm7053303lfh.97.2019.09.13.14.25.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 14:25:47 -0700 (PDT)
Date: Sat, 14 Sep 2019 00:25:45 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Yonghong Song <yhs@fb.com>
Cc: "ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 02/11] samples: bpf: makefile: fix
 cookie_uid_helper_example obj build
Message-ID: <20190913212544.GC26724@khorivan>
Mail-Followup-To: Yonghong Song <yhs@fb.com>,
	"ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-3-ivan.khoronzhuk@linaro.org>
 <7f556c1c-abee-41a9-af83-1d72fc33af4b@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <7f556c1c-abee-41a9-af83-1d72fc33af4b@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WnMuApb4;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Sep 13, 2019 at 08:48:37PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> Don't list userspace "cookie_uid_helper_example" object in list for
>> bpf objects.
>>
>> per_socket_stats_example-opjs is used to list additional dependencies
>
>s/opjs/objs
>
>> for user space binary from hostprogs-y list. Kbuild system creates
>> rules for objects listed this way anyway and no need to worry about
>> this. Despite on it, the samples bpf uses logic that hostporgs-y are
>> build for userspace with includes needed for this, but "always"
>> target, if it's not in hostprog-y list, uses CLANG-bpf rule and is
>> intended to create bpf obj but not arch obj and uses only kernel
>> includes for that. So correct it, as it breaks cross-compiling at
>> least.
>
>The above description is a little tricky to understand.
>Maybe something like:
>    'always' target is for bpf programs.
>    'cookie_uid_helper_example.o' is a user space ELF file, and
>    covered by rule `per_socket_stats_example`.
>    Let us remove `always += cookie_uid_helper_example.o`,
>    which avoids breaking cross compilation due to
>    mismatched includes.

Yes, looks better, thanks.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913212544.GC26724%40khorivan.

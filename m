Return-Path: <clang-built-linux+bncBD55JLOZ34EBBLNC4PZQKGQEIMLOYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D634A18F844
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:09:35 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id m3sf3297051ioj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 08:09:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584976173; cv=pass;
        d=google.com; s=arc-20160816;
        b=OgqUt5sJXxoLeY3H2kGD9k9BpCswmnFz4ilGrbJH4RZ6PX5IyKA1w8Mw4pWowS0rGa
         OktMP2q7h1kU1b80mwrLuVsPn+YQhao1Xphb6o9tou7/RcQ9YqkpIB4yYQBHKnQN2x1c
         1eAVXeCfp1kUN4iIWstdDZ8uv/crQdsQSYsXeK1yOhAQ5zir2HnGgCvobUbj9YTsEqzi
         t0OltBO31AGj0KVhs7/6rwXIZZwgvZV3d/gu2p3UkqXymEGYPS4k8fJIh1Uavyi3iQoh
         hAy7blXyjMsnyyeaL046dUlJ84LqtlyxUBOjvp3G9XPzkOYtj7M5c9hs2odg8Q8e61MG
         edrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bskwXB6ZKR1cFx3QbUEACtrP2megqxBarotltLhdqGI=;
        b=BOBmH+23Arl15qZJRwQbNtFK/T1DYS55qWiGAlsWf5+FlDSFTh8/W98Tb0ZuBCtCVj
         WpQeJPZZftEeyyQbVISb7TJKlV5uOMUSRCEnqwCWTtgogbOaNsMWiyCgvqI3uIWv2KMb
         BgAtR9zZ5NR/o2gs2CHJ0CpTfJC9QCv6Jf7lWLUt7kcgGdKbCeqIeHtViAjs1r3Ntstl
         mHQv2UqyJ7oFgAp8MXB2Nuix0OX3kJoQFoVvRcAr1cgOmml3UMP9finVRzVJPrKJkI2Y
         na0XCavSkOCpd8fKZkoaZoXupJHFeVI1f5aB5/EDT2U68ybLgS87ipX/xT1WEMKsvX5U
         +2BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C7yGcjhX;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bskwXB6ZKR1cFx3QbUEACtrP2megqxBarotltLhdqGI=;
        b=JM3V3NigWQx19l5WuVHFcIVQkBmWml82UukxY6EoXqBtnJZM4bnTRqNTaPSTPvwXHb
         zUeDQatTrnYuuVDEpzDgVOE8gO++pDoaF9VnWG/a59cVtr7W86T2JycJknvxBDwb148j
         7zx6bwQzKnBimlar+WM07h7DhCvn6ZcMGPbJsTWiCcoKgPJgF4XDHYuBTx8CMWngiY8s
         gnG6vQMgnrf4Q9IJa6ZNOKbJ8WwCvFuk1mVypQqXk46adEC2TPniXCU3oVj3PxmJjKV7
         CjkxOa9VulwlhFnEPih/G9LwiUR6+cpUwCg2BEsh8A+2MAHENBPiGAKAkb7+CfQ1Q7jh
         fF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bskwXB6ZKR1cFx3QbUEACtrP2megqxBarotltLhdqGI=;
        b=Ysse/g3nL1vzBZPfRjn1pJMRWv1fHMzp26cjEJOyBMGMctOKcFjPJw/bcejBY92Mi0
         vYyIHf9OvqzT8ADzCCVDwvbhevlsxQ8N11SJx83kUkZX4dVibxPZwZ3B8zHVtiWEXDSq
         tqhUXHsprXYjvEwG9z/MTU/ShqSFysaHoUEeYR6ZtGw9pZ/XXtj6ksZxfClu5mOzqevW
         BZna4U2UYR69vo5mzJ0W823LbCFbtcSyEejxsckWtBL/RSrkCP1n2IHd0ui1Zlll+7Pe
         kXVPt20TYc6VL359bMyMj8Ndns+B9+ZXz/wx4HeLYv2VSIyn47FUQH0fUFHYwNq5NaOD
         HRxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3y0WZRWjFYomNnzs4vSFu8AGhvnwAdJNS5sApU5K1zZWeNA8up
	3SdYtwWoCnsmjlkiYZ+J0CY=
X-Google-Smtp-Source: ADFU+vv3BtxzGw2RyE7C/nXyhcodwd1dTtD+UVYU8w81JJIDLjpe7yXeVSlCLNV6DcrK3XrF9lsi3A==
X-Received: by 2002:a02:bb81:: with SMTP id g1mr4829746jan.38.1584976173409;
        Mon, 23 Mar 2020 08:09:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls3469801ilb.4.gmail; Mon, 23 Mar
 2020 08:09:33 -0700 (PDT)
X-Received: by 2002:a92:3f0f:: with SMTP id m15mr21630297ila.164.1584976173091;
        Mon, 23 Mar 2020 08:09:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584976173; cv=none;
        d=google.com; s=arc-20160816;
        b=M93wbXCISOuvJ8IbxT9ZVdpXde7ENXtggYdUWseL1/jxBdREP787FW+KUySKtL9t5I
         m3fDQAeAy/DkUn0VN0/zERTx2kwTJV50xNgw1wIoqE4y8kGAQnb7kY2Ecttj+eb6ihcY
         r/C6dKKiHVjxuyjBH1LpBM/b/tsmqUMZf3wTLY6wom1OaVt6o0ONSISQ2XzTLXwYn7+j
         S0zHbyaiJeTHZmH0xRxzwo4U2ptNgfhtj5ROroMdavR+YshtWhB3AVrEanpcefmKbiJt
         OF30FcBN26uycqsdLiPcrjiU6jxB38EW+5IPB2Malq8XgiChdX6HeNJyhDrCbU6TiYaF
         qhGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/2TOBgyEbhBRABibDVvg0F2IFNkds4LFFoQY/G8Yp7A=;
        b=Luu1TVI13U04Fr85drV+/TT8KhkzRrBKsK6elcdBSYZHktQmonDJUzwjE0wJ0qzCk6
         oQWMlZ/vBU8A8tRC8SdK/SjcS7cAOCEiRATiXqloFRNwWjp6STGUbvQdpH4PUE2hCrUz
         GNBIcj5ORI+lxXyX//vzU2MSkBAjgV2ZxrLxfHAilrMA/2+2zO9/fWjxzvpsnc1xMsIT
         CmMP+NIaYnyDKGqQSJlDqP2taIjp6fhQkPcJ8S00LIRzSilwQcldNQYysAduYqiAUYrJ
         E1c/6LMU2R4JSLXTihVqDbhLbj22OsjiZY6joJN96WphwQMrmhFDGdn5+XaMP9BqFlpz
         s7qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C7yGcjhX;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a3si1103115iog.2.2020.03.23.08.09.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 08:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net [24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CADF206F8;
	Mon, 23 Mar 2020 15:09:31 +0000 (UTC)
Subject: Re: [PATCH] kunit: add --make_options
To: Greg Thelen <gthelen@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: Brendan Higgins <brendanhiggins@google.com>,
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 shuah <shuah@kernel.org>
References: <20200227063134.261636-1-gthelen@google.com>
 <20200229015350.GA26612@ubuntu-m2-xlarge-x86>
 <4bb8eeef-54ac-86a7-4bc4-8e16fc149c1a@kernel.org>
 <xr93y2s34fp7.fsf@gthelen.svl.corp.google.com>
From: shuah <shuah@kernel.org>
Message-ID: <a4a1e84a-9cfd-312d-1048-04a5e525332b@kernel.org>
Date: Mon, 23 Mar 2020 09:09:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <xr93y2s34fp7.fsf@gthelen.svl.corp.google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: shuah@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C7yGcjhX;       spf=pass
 (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=shuah@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 3/14/20 12:24 AM, Greg Thelen wrote:
> shuah <shuah@kernel.org> wrote:
> 
>> On 2/28/20 6:53 PM, Nathan Chancellor wrote:
>>> On Wed, Feb 26, 2020 at 10:31:34PM -0800, 'Greg Thelen' via Clang Built Linux wrote:
>>>> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
>>>> optional --make_options flag to kunit.py allowing for the operator to
>>>> specify extra build options.
>>>>
>>>> This allows use of the clang compiler for kunit:
>>>>     tools/testing/kunit/kunit.py run --defconfig \
>>>>       --make_options CC=clang --make_options HOSTCC=clang
>>>>
>>>> Signed-off-by: Greg Thelen <gthelen@google.com>
>>>
>>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>>>
>>
>> Please rebase on Linux 5.6-rc5 and resend. I tried applying
>> on Linux 5.6-rc1 as well as 5.6-rc5 and both fail.
>>
>> thanks,
>> -- Shuah
> 
> Rebased onto v5.6-rc5 below:
> 
>>From 0517b2c8b481535fb52bd86e94be1fec9aaeead7 Mon Sep 17 00:00:00 2001
> From: Greg Thelen <gthelen@google.com>
> Date: Wed, 26 Feb 2020 22:31:34 -0800
> Subject: [PATCH v2] kunit: add --make_options
> 
> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
> optional --make_options flag to kunit.py allowing for the operator to
> specify extra build options.
> 
> This allows use of the clang compiler for kunit:
>    tools/testing/kunit/kunit.py run --defconfig \
>      --make_options CC=clang --make_options HOSTCC=clang
> 
> Signed-off-by: Greg Thelen <gthelen@google.com>

I can't apply this one.

Please send a proper patch with either REBASE tag or v2.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a4a1e84a-9cfd-312d-1048-04a5e525332b%40kernel.org.

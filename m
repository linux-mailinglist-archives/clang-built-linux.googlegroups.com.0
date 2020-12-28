Return-Path: <clang-built-linux+bncBAABBUWMVH7QKGQE4CV66FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B203E2E6B77
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 00:12:19 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id a1sf4939939ioa.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 15:12:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609197138; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7bAq+yeRAJu0AWUnXF0JeSX7ETe2uIxfvAaB8ysPp2tWPahptBBWwQjW/Wo7mQ+PO
         s+jRjhLXvvvfIN74glCbU6LMWFCmR3UWnvmCzb7SpwLiCsSB0gUU7xkOwBRS2aQvGuYW
         BZNzaSv+x4ityLKbFYtL2Sre/0e+1EnKvoDiWM6+8/ha3GB+d4B5ae7KVOLAzwBBb8X0
         n/3IrxXCLBiHlJHBqkqlVtYU9OJdbfACkG1/Mm4tpmLBw3+INafuoxK1EjwjLgGctnVE
         N7V847oPeUe+0FNWQADwyzqX0i/ys51FNiHPqfhhno2xpjRcoZpgMZ5l7XxrB5mbYNSL
         gXHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=miZQChkXykZnAbox3GS+JyoAwwmRxz724G7WXbxKCUg=;
        b=MtZAPeq0IXHOquSaQhkYgLdo6GUm1PM9ealjIGdZZzFjzJY1IDWOelL6OwlUf3oIau
         B/GKkz0uF5grGpc1s9uKI9rpoLsR/jG+X5xDrnrjnBGh30uuOW2k9RdDgixTiuL/fk+g
         iD2CDQi4wmSCA/dCsf5GnZOWL9pYU6EAxe+PMhXkqNDKU06+UvldgihsZixykNsmWRNY
         yzEXjdamiA2EnDisIW37vxdyLgjOqG1HelrcW1eeyAfFPY8NzKUvGZj+qxYzC11iGMim
         ZG8tBXsOWLlU+CC5oodiDDOWYWFrtxqO42bLEUJFEpRTjkv+3tAKBNfh7ZkmHkOLkVg0
         2pww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.5 as permitted sender) smtp.mailfrom=markpearson@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=miZQChkXykZnAbox3GS+JyoAwwmRxz724G7WXbxKCUg=;
        b=o2aM7eC8rIGanrkTn0IqttuqFgGZASDYStakHxnMFZ8CX7H3igJKBLkbk+K8UAkeF4
         Uw3ZIYmbZCb4S+dQ44UMXKBkBJURhIoZ7sB5CHr1PY367BLMXoqn+1MuTXf4spfeC7iA
         40HKYtfjrKqxz521kc66YgZRArxHjyUcRgqlxO+wChKgxa7Nb5hzw0B012ujWBy7CBgI
         uiB7P3NJIpyn66LRPNgAGe/zeSt6VImGPLyPvS/KjVf33ntwluSxqVuhL5yzdVVAsEAl
         eoTKrzGAJ1pr61t9IMyMSCkgtFfylbkksnM9Le7dzxNrlLVOcthSRCINkBwqBqAVPhuc
         TMuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=miZQChkXykZnAbox3GS+JyoAwwmRxz724G7WXbxKCUg=;
        b=XTE5LuOOSETq5ysHXjH0fK8gLKo+/pV7ncRQTdFAi+5/HZtfn7EckdKpKjA9BL2Csb
         o62omnDAkYvs6bzjj9AWOoLCGy4nYUZjgR2Y/DIBk2ta3YQYqyzx8aeEnn/QPZaqx0+S
         BY2qz79vWQSzwk9VB0+z+DSVhyY3dbRF035xcRiKL2SYeY0rFZ04hTqmxC9UCPeRGUFQ
         dH+zuV9/XlFg3CN7vrIjdC0zlCJr+lh7ioB8P+tsoeJGe2Bp6uZLALudhjnV/f8Hx5ms
         ovuBrVMPzJdoK/E+kCUnM4hJxnOTCXlqQ9jl10/AU1+bERhstrMAwmT6hRXF26DcKv+u
         yuDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AApT/svPyxwWn/o9WmpBoNF9/cU5zv4pW8x2O7jERq2NQd+/Z
	FIdU2sxZorcvVYuhGHHyxmA=
X-Google-Smtp-Source: ABdhPJzchT3MRxhGuxbkngoixGHB7IgRJ9BdzfQId3i6ecma9etcMYDQZBmzktUfSqS8PwZIpnASFQ==
X-Received: by 2002:a05:6e02:1010:: with SMTP id n16mr44876874ilj.3.1609197138590;
        Mon, 28 Dec 2020 15:12:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls9202866ion.0.gmail; Mon, 28 Dec
 2020 15:12:18 -0800 (PST)
X-Received: by 2002:a5d:9c57:: with SMTP id 23mr37659015iof.43.1609197138123;
        Mon, 28 Dec 2020 15:12:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609197138; cv=none;
        d=google.com; s=arc-20160816;
        b=RXLdpYW8r7n8M1mjg2LWBUmo3q8Y9ovpHB5ByELVKrV+HPQbhGK9gk1gX0X8LzSJfl
         /7qMZu49tpSo2A4yCb0DoCvNk0TZB32BIOf43VHp8NoLF1rUOaco+hkMbtaI4zCZc2Am
         ATXCeKv7uywTdoCUYxOjNOePPq4kREaaTckCYal+5nvA96TGdZt9D36rRdP9uPoHfZRA
         Pz4OhQHmet50c5D4KWamelmiHUKyD3joC26fuSj7sA8XNuBDVQ+o2thhokPvyTxCiQt2
         /n02z6lpUZqUr5+zJ6nDMfaRWvQr8b1DiRSAESpNPiG/de7cAM0tOgO944Gzy4NNEPaE
         I+Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gGKrhpr+azEyF6Cdl8ZALkcAlXmi96lctD/5RIzGgco=;
        b=AwPxtodDRbRXvwaRk+Yfxh94jjk+wf0aGZ+Amq/zsht1wtChRAuN6FyuihrfQkYYwk
         Q3G5S6Yd34M3AaOEcg6sN2+iePY5fgdhTjjMvtM7s2SMH5fY0XRPexs6AVTSr0nJl+CK
         spqo34g2VlwBiV6kbUgHyQ7QTxSRQ8VbkZzrLrEqwbqNm2Kjy97stajoMORBV285Au3Q
         XC8MROw1pC/QD8GSg9iZeo5mD0ulN3TvZte8yO8zoL3XzV7wWJnYZ8zPwxRN2+PdJdGH
         Con7pc294O62ny36aLLGnkrVLiFC7hA9TDCs3j4V7sCJDY497HUAwn9xv+f6WTlpHNGl
         MYdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.5 as permitted sender) smtp.mailfrom=markpearson@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com. [67.219.246.5])
        by gmr-mx.google.com with ESMTPS id i5si2485551ilu.5.2020.12.28.15.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Dec 2020 15:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.5 as permitted sender) client-ip=67.219.246.5;
Received: from [100.112.1.102] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-5.bemta.az-b.us-east-1.aws.symcld.net id DB/07-54546-0566AEF5; Mon, 28 Dec 2020 23:12:16 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOKsWRWlGSWpSXmKPExsWSLveKXdc/7VW
  8wfu9xhYP3sxms9g57TqTxZvj05ksznZfY7RYvq+f0eJz7xFGi1fNj9gszpy+xOrA4THx+yp2
  jz0TT7J5LN7zksmje/Y/Fo/3+66yeWy52s7i8XmTXAB7FGtmXlJ+RQJrxsUl6xgLvklX3G5/y
  tbAuE6si5GLQ0jgP6PE75ONrBDOM0aJTcf2sIM4wgJrGCXW995h6WLk5BAR8JJ42HIaLMEssI
  dRovPWM7CEkECKRMO7B0wgNpuAtsSWLb/YQGxeAVuJe193gtWwCKhK9H6/xw5iiwqES6xfspI
  RokZQ4uTMJ2A1nAJ2Es3T54L1MgsYSBxZNIcVwhaXuPVkPhOELS+x/e0cZhBbQkBO4vuKh+wQ
  doLEspd3mCcwCs5CMnYWklGzkIyahWTUAkaWVYymSUWZ6RkluYmZObqGBga6hoZGusa6piZ6i
  VW6SXqlxbqpicUluoZ6ieXFesWVuck5KXp5qSWbGIHxllLAbLaD8efrD3qHGCU5mJREeZMSX8
  UL8SXlp1RmJBZnxBeV5qQWH2KU4eBQkuB9kwSUEyxKTU+tSMvMAcY+TFqCg0dJhLcgFSjNW1y
  QmFucmQ6ROsWYyXH5+rxFzBzvfi4Gkm/WLgGSb8Hkzfcgsu3eXSDZDiZnLji4mpljFpi8334I
  SD4AkUIsefl5qVLivIdTgBYIgCzIKM2DWw9Lf5cYZaWEeRkZGBiEeApSi3IzS1DlXzGKczAqC
  fOmgkzhycwrgbvyFdADTEAPBJQ/B3mgJBEhJdXA5BDAP5t3c4uGuMrJJLHXMs9dph2zX3N/Hv
  sjNy4OhlcnslyXhydNzj6RP9N35pN1tm9ErG4UyeqeimHkcTjO82wW6+cUV57Zqz9Zdpg4y03
  NOqtce+/EomN2zHd8zY6++FIW2bo59W916/IfundedfwPCXf7fFCZh2fhnYnW9W2T2DUNntgt
  47wiY/Wk4EcUk25g0///s6LCpQrn6HpKtzyzdmx9138hZ9f1ZeKvn3N2+AQGuy/9fnfqpec8h
  t+muW3eoWj51Na3wWm1Tp627uU9fyQjJNgUD9sKeHNntfw9GbFpTsSuZPW0G6LLY9M9dVw23W
  V9Vb2xfEvjnDlx/Ba/eFoL/ZIucP+1F7qsxFKckWioxVxUnAgA0ZFYV/oDAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-386.messagelabs.com!1609197133!604423!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23068 invoked from network); 28 Dec 2020 23:12:15 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
  by server-9.tower-386.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 28 Dec 2020 23:12:15 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by Forcepoint Email with ESMTPS id B262F57C6C913E92313F;
	Tue, 29 Dec 2020 07:12:11 +0800 (CST)
Received: from localhost.localdomain (10.38.50.3) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Mon, 28 Dec
 2020 15:12:09 -0800
Subject: Re: [External] Re: [pm:bleeding-edge 8612/8615]
 drivers/acpi/platform_profile.c:147:24: warning: address of array
 'pprof->choices' will always evaluate to 'true'
To: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-acpi@vger.kernel.org>, <devel@acpica.org>, <linux-pm@vger.kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <202012271352.JvNDF17O-lkp@intel.com>
 <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
Date: Mon, 28 Dec 2020 18:12:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.38.50.3]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Original-Sender: markpearson@lenovo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of markpearson@lenovo.com designates 67.219.246.5 as
 permitted sender) smtp.mailfrom=markpearson@lenovo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
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

Hi Hans

On 27/12/2020 06:56, Hans de Goede wrote:
> Hi,
> 
> On 12/27/20 6:11 AM, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
>> head:   a33520709645543f108361fe21fa9434a351c4e9
>> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
>> config: x86_64-randconfig-a015-20201221 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install x86_64 cross compiling tool for clang build
>>         # apt-get install binutils-x86-64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
>>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
>>         git fetch --no-tags pm bleeding-edge
>>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
>>            if (!pprof || !pprof->choices || !pprof->profile_set ||
>>                          ~~~~~~~~^~~~~~~
>>    1 warning generated.
> 
> 
> Ah, this is caused by changing choices from a single long to:
> 
> 	unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> 
> So that we can use for_each_set_bit and are future proof for more then
> 32 profiles.
> 
> To fix this the check should be changed into this (untested):
> 
> #include <linux/bitmap.h>
> 
> 	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> 	    !pprof->profile_set || !pprof->profile_get) {
> 		mutex_unlock(&profile_lock);
> 		return -EINVAL;
> 	}
> 
> Mark can you provide a (tested) patch for this?
> 
> Regards,
> 
> Hans
> 
Will do!

Mark

> 
> 
> 
> 
> 
> 
> 
>>
>>
>> vim +147 drivers/acpi/platform_profile.c
>>
>>    134	
>>    135	int platform_profile_register(const struct platform_profile_handler *pprof)
>>    136	{
>>    137		int err;
>>    138	
>>    139		mutex_lock(&profile_lock);
>>    140		/* We can only have one active profile */
>>    141		if (cur_profile) {
>>    142			mutex_unlock(&profile_lock);
>>    143			return -EEXIST;
>>    144		}
>>    145	
>>    146		/* Sanity check the profile handler field are set */
>>  > 147		if (!pprof || !pprof->choices || !pprof->profile_set ||
>>    148				!pprof->profile_get) {
>>    149			mutex_unlock(&profile_lock);
>>    150			return -EINVAL;
>>    151		}
>>    152	
>>    153		err = sysfs_create_group(acpi_kobj, &platform_profile_group);
>>    154		if (err) {
>>    155			mutex_unlock(&profile_lock);
>>    156			return err;
>>    157		}
>>    158	
>>    159		cur_profile = pprof;
>>    160		mutex_unlock(&profile_lock);
>>    161		return 0;
>>    162	}
>>    163	EXPORT_SYMBOL_GPL(platform_profile_register);
>>    164	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/16284400-7c71-ee40-b694-614d6daf21f5%40lenovo.com.

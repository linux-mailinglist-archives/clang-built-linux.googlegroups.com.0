Return-Path: <clang-built-linux+bncBDAZDFVM5UKRBZET2HYAKGQE52AAM5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DA31321E2
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 10:05:41 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id i9sf12021186wru.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jan 2020 01:05:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578387941; cv=pass;
        d=google.com; s=arc-20160816;
        b=pNYSj1YbB1NLJi+t3EEo16TsLJUm4DrNN2r/zMiUODDuzdOw/AMWPEJEQJBrHIcD0Q
         YsXIGBKUmyfL/OZibHhQ41VOLv9XdZajKm9WhZc5k52GY+fmkuHW11gD4xX5MlPqQdHT
         Qko8fjp0i2bZ7+51OEr6Vfx08eM0KpqdjrSc5dACC+oA4eWvNCTUBiSp6KPtM8iMvgqN
         eQIsf7j4Gyg3cPKS9XXNMO+ZE5fKE6JiXdXaAJ68wSFNU1F3FcczNdAvQ4ZPsClQDHOn
         tltRLp8eKjCCXJOuJ712AHeqh8vbptqtXgosGFeM5jRZWQCMB8UHzg6uD5TogLUsEfeu
         TDog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vNNs/shI12BQtJw93xd6qqcnDYv/lY1+GRoM0YwUdTQ=;
        b=VoTCtjudxpPMGKiWkIjWZ7mD50GrMxH9h/rXSTgl7q0Y/AQmwwJVvajSWeGwowcj6f
         mbDXSpIbyyzu4xm5N92hNzpxqNNFwdlQe2Hi/cMdKQ493qzkEbIKWParyzaXbmG8XQq9
         gFg4H/60R8RDbAyrqcX19H25nzOXQbnqKO4JFK0196OXXeBei2aAVCzJmmJFU9+GZ3+m
         ap7NlPmKOI5vegT2SNXKYcgLiLu3EqgdqjVMAT5ldKJ9ic5tdH+kE0KyiW1TRGHhglNn
         yOiV358B/hyrsu1ZWzZFP/thThzk8HWN7tm6mBl/LRRxnfs7kzcoXwFecyoAfVswQs9x
         mIQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=Z47IJrpM;
       spf=pass (google.com: domain of guoqing.jiang@cloud.ionos.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=guoqing.jiang@cloud.ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vNNs/shI12BQtJw93xd6qqcnDYv/lY1+GRoM0YwUdTQ=;
        b=Guon+8oYqDZ0pZbuQg2pXNRfyfIVO/yosvHOQeIhubW0/jNjuX/nlVFtcDL19DA/pz
         VP5s7TTAadmgxK9mi/E8AXUjEg/PgrWCfhBk1rywOEXjMb1KTJ3geuEm3Jqajx9vUTXu
         Ook/C9qlaXkaeSEGc1ie2m91DvT/K00MCJiIfjopxXujG99z4vQqP1Oja9fWFSwZzLQv
         QtQwCyKxnMrzU+SykUvl70QtmPqly/eoAAnkq/7AyPP0rfm1L3FyNdUsCb00OJVaoDBb
         VdcUZLofz6oWnTykw27MMxdjoNJQ55K1EMV3QRgSDpNjuBkyyzvaE68Y8s0mVez5ObK4
         3OSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vNNs/shI12BQtJw93xd6qqcnDYv/lY1+GRoM0YwUdTQ=;
        b=Tav/5K3Io3Ga04CYZe+BkpaRoOrMGbscnp3jVDwnoWa4sSUv0XALAaWveuTPxCW1Kj
         iJdFGbDX8S9uGP6IHTOht6qz3Df10Yojfgp9Q4pDz5MWBkc+wtczgRhoavPmuuB09oVq
         gZwF+KwAr2LSM4gVeW5cwxKcLX2vvOOo/ZBYv9k0aXnZAyTuRgHCdP8FZ1fkPndBtSJB
         9xFHUsg4SdRjpRdVD8AT9dOT8zkYGDTBUOt44zpRf/U6aew3HnKy8bO3FD18dWTpIKp4
         0DcUgrRjH6iXvMbyRXg7mBLk4ygngRcya0M09dCtY0PeogFCgHGhsTYRu6FlatJzXkMX
         yCuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKfm7G2y/Bg1rUh83h2PL0/QujDE5+61uazNTtiNr7kG5ZM7Ml
	7Osw9a3OV6arrfdw+6ueE34=
X-Google-Smtp-Source: APXvYqxd7JNlCZrwqtd+mHoYchIuh4YmCHIsE7Q7YncJZoQywEUC4beH06U3R+egHUIh0Dp4PLS53w==
X-Received: by 2002:a05:600c:224a:: with SMTP id a10mr39985058wmm.143.1578387940998;
        Tue, 07 Jan 2020 01:05:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9808:: with SMTP id a8ls657914wme.0.gmail; Tue, 07 Jan
 2020 01:05:40 -0800 (PST)
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr39250127wmc.21.1578387940353;
        Tue, 07 Jan 2020 01:05:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578387940; cv=none;
        d=google.com; s=arc-20160816;
        b=lxThKwLgNYb3bhzRyw5Pd+dfNrxoxnBV7Fl9s1vhgs2j5GMWf//t1LleOTHr3jpOJi
         Ba4RGkRVvq1j+OjUiSawPBi0g1imcXdlU5LqVOVJiXWCKo1zGCldxPW3raJ2cLQzW20N
         4avhyCwE3evoo5grBZcuIy7T8Epjm7s5KjqpfXCSxrg1mwFYrbJ467MprfuozR2hAnwU
         /+IlpMXMXam1RBdb6hES//N+9PD/OgMYYww1SFWn+/HZ7tuZ5NGzVqzoxP4a8E/cMWNc
         3EXtQyTs6Aj+AAibI0//rFzXhmOcJTc7i449uejkMEtbqS7BedC6bjVR/ddjLGxVorrT
         BrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4p4XHjIok74zQLNweYWbPwtj0wrNpVQiaSJeiLOIYvU=;
        b=CkxFsxumXIyp+kEDxDMwQfPxD3wdmOzuHT+KRp05T8jB+uoRXew4hPoqli7t8jgTn5
         lfFf2LgQGUNpB0cj7td/zJqnNwUgOxJSxMEng3nr3L7db9xKxKbqBd43iI+oxi9qxKU/
         He8ynDHle870ycZT9KDz3q2RFwd3EpJYdH/1ptkeH3ET8mpOKRPXUpcN0bUV1sziM8tr
         K4NQLopovywO21JsLtX9UwQT0ng75PPTlcMnZvtBZo7cvhIMCYV3UJZMY7QnbtRkIX9m
         kaRrc5FPGv9LBB+jSGRGEgUa2KknoSzxtTMWSugvcKEvMEMrpeHfcbjidce1opghJ7+r
         eWnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=Z47IJrpM;
       spf=pass (google.com: domain of guoqing.jiang@cloud.ionos.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=guoqing.jiang@cloud.ionos.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id g3si2576254wrw.5.2020.01.07.01.05.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 01:05:40 -0800 (PST)
Received-SPF: pass (google.com: domain of guoqing.jiang@cloud.ionos.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id p17so18482425wmb.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jan 2020 01:05:40 -0800 (PST)
X-Received: by 2002:a1c:4d03:: with SMTP id o3mr39493664wmh.164.1578387939962;
        Tue, 07 Jan 2020 01:05:39 -0800 (PST)
Received: from ?IPv6:2a02:247f:ffff:2540:e4f3:29f0:7223:b595? ([2001:1438:4010:2540:e4f3:29f0:7223:b595])
        by smtp.gmail.com with ESMTPSA id z4sm26003570wma.2.2020.01.07.01.05.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 01:05:39 -0800 (PST)
Subject: Re: [PATCH RESEND] raid5: add more checks before add sh->lru to plug
 cb list
To: Nick Desaulniers <ndesaulniers@google.com>, jgq516@gmail.com
Cc: kbuild@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 liu.song.a23@gmail.com, linux-raid@vger.kernel.org
References: <202001050333.SnzanhNo%lkp@intel.com>
 <CAKwvOdmkhS+jmu9erpnqr6+bvxjQD7yxQSvs3scokJ42tkF4mg@mail.gmail.com>
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
Message-ID: <8cbfa385-d3c3-b1b9-9bce-1ae109072904@cloud.ionos.com>
Date: Tue, 7 Jan 2020 10:05:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmkhS+jmu9erpnqr6+bvxjQD7yxQSvs3scokJ42tkF4mg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: guoqing.jiang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=Z47IJrpM;       spf=pass
 (google.com: domain of guoqing.jiang@cloud.ionos.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=guoqing.jiang@cloud.ionos.com
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



On 1/6/20 11:29 PM, Nick Desaulniers wrote:
> Apologies if it was already reported (working backwards through emails
> missed during the holidays), but this warning looks legit. Can you
> please take a look?

Thanks for the report and will fix it, not sure why I didn't receive
the mail from lkp.

BR,
Guoqing

>
> On Sat, Jan 4, 2020 at 11:48 AM kbuild test robot <lkp@intel.com> wrote:
>> CC: kbuild-all@lists.01.org
>> In-Reply-To: <20200103135628.3185-1-guoqing.jiang@cloud.ionos.com>
>> References: <20200103135628.3185-1-guoqing.jiang@cloud.ionos.com>
>> TO: jgq516@gmail.com
>> CC: liu.song.a23@gmail.com, linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>, linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
>> CC: linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
>>
>> Hi,
>>
>> Thank you for the patch! Perhaps something to improve:
>>
>> [auto build test WARNING on linus/master]
>> [also build test WARNING on v5.5-rc4 next-20191220]
>> [if your patch is applied to the wrong git tree, please drop us a note to help
>> improve the system. BTW, we also suggest to use '--base' option to specify the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>
>> url:    https://github.com/0day-ci/linux/commits/jgq516-gmail-com/raid5-add-more-checks-before-add-sh-lru-to-plug-cb-list/20200104-172752
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 3a562aee727a7bfbb3a37b1aa934118397dad701
>> config: x86_64-allyesconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 320b43c39f0eb636c84815ce463893b21befdc8f)
>> reproduce:
>>          # save the attached .config to linux build tree
>>          make ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers//md/raid5.c:5484:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>>             if (!atomic_read(&sh->count) == 0 &&
>>                 ^                        ~~
>>     drivers//md/raid5.c:5484:6: note: add parentheses after the '!' to evaluate the comparison first
>>             if (!atomic_read(&sh->count) == 0 &&
>>                 ^
>>                  (                           )
>>     drivers//md/raid5.c:5484:6: note: add parentheses around left hand side expression to silence this warning
>>             if (!atomic_read(&sh->count) == 0 &&
>>                 ^
>>                 (                       )
>>     1 warning generated.
>>
>> vim +5484 drivers//md/raid5.c
>>
>>    5461
>>    5462  static void release_stripe_plug(struct mddev *mddev,
>>    5463                                  struct stripe_head *sh)
>>    5464  {
>>    5465          struct blk_plug_cb *blk_cb = blk_check_plugged(
>>    5466                  raid5_unplug, mddev,
>>    5467                  sizeof(struct raid5_plug_cb));
>>    5468          struct raid5_plug_cb *cb;
>>    5469
>>    5470          if (!blk_cb) {
>>    5471                  raid5_release_stripe(sh);
>>    5472                  return;
>>    5473          }
>>    5474
>>    5475          cb = container_of(blk_cb, struct raid5_plug_cb, cb);
>>    5476
>>    5477          if (cb->list.next == NULL) {
>>    5478                  int i;
>>    5479                  INIT_LIST_HEAD(&cb->list);
>>    5480                  for (i = 0; i < NR_STRIPE_HASH_LOCKS; i++)
>>    5481                          INIT_LIST_HEAD(cb->temp_inactive_list + i);
>>    5482          }
>>    5483
>>> 5484          if (!atomic_read(&sh->count) == 0 &&
>>    5485              !test_bit(STRIPE_ON_RELEASE_LIST, &sh->state) &&
>>    5486              !test_and_set_bit(STRIPE_ON_UNPLUG_LIST, &sh->state))
>>    5487                  list_add_tail(&sh->lru, &cb->list);
>>    5488          else
>>    5489                  raid5_release_stripe(sh);
>>    5490  }
>>    5491
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001050333.SnzanhNo%25lkp%40intel.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8cbfa385-d3c3-b1b9-9bce-1ae109072904%40cloud.ionos.com.

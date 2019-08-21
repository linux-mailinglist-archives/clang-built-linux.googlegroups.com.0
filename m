Return-Path: <clang-built-linux+bncBCN73WFGVYJRBPNE6LVAKGQERET42VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE6E96E6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:37:18 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a26sf324875otl.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:37:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566347837; cv=pass;
        d=google.com; s=arc-20160816;
        b=XoWrCa1TjU0X4Z9YSm06g/WOaxNh5bAAPDaFMTQS4gNgYZUy1XqdK7rKtHRkPqY8KY
         WBZYJ114QqXc10byyRYG1ixkpq5F7qLCOMRQa56rt409YAip8KNIPaxFvaQTlK2pDQ0F
         ZK4aIjKxDPz7ukbCNfX5QaeQIQDUE3HT/s7IunvlbLhp3iDiJ9ydbYc8Iq+IrHXbxaeo
         sz71oyFQvxmhpV1xwH3s8EQ8vhC34a8I+i+0vKnbnQbC6VKnnesNLLZjtaUCSEcabFqo
         QNLdRgTYxF4IQ3K52sUBOVKyKXQ6j3zUWMdsH1Bhs9Or988N8rV+b15+rrg1MtmAL/VR
         CAmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=hYm7j3+BodHOZQeFFANGpao+b7Bbb248o6tUWdtzLaU=;
        b=R5Hu3/LVWLFPkNgtPUjPM3ql/pWN3ccnlYygwcga6AIW+DGYd6fElmfwEIofl1EZ5c
         LGRb96X4CkC62k5uQ1IsUPLHahl4CsC92HbY10guq+y0t9uSan1LFzW83R4tRwVCEA1v
         9V5UqWsAH1RGSQjpR+yplUpE2U3MSgxhYTJe7tWXj8KlzBvb+J9dl7ZtiDhkXAj42A/N
         r2soRLx9roAD+eAXMTphv9sCfknlI5UeP0xkcODtkdDi21HQoK6bLUOY0+BOmtT0WEBL
         kYFBGjdjeg7VrAPCqwTWAKUJpRAX5hEOYo8EEKtur9wnl9QlKj63PobWTP6HsTVFqkWr
         cr3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hYm7j3+BodHOZQeFFANGpao+b7Bbb248o6tUWdtzLaU=;
        b=VZ/VIP8xkOUHjbTlf8UO+LyXVzJEwTSRRbJNqV/Qhmm4NPD4pBbvsulwVihvbjO5Tc
         YdlOUOcd4O4gzzLERyVJGtGcaPPPaChuGwbdK14k2VJEqQu/DPy7ZxqUlyRCAcDsGGoT
         dxMtjYwVallSbJQKa9gbkV9jcuLlq9TNWhh2T86HI074ZOinKs5XliwdjJDsxkz4VTMQ
         ed0N2OgmNZMv406h9dTKISLI/PRuaFGn9DVdk/0YibCla+5/SoyGErQQ5gjrEKIT6IzP
         gxA1OX+d+P8s4xAo2bDGzGMwGEvGVfft2sdY3vq4L62swar3UmPTtNw+KKELHAka+Jx0
         4Rrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hYm7j3+BodHOZQeFFANGpao+b7Bbb248o6tUWdtzLaU=;
        b=qmxM2qkO+zz48OZkzsLsPwiWyCHmSaLohSHWYHdafJIR72Jh3aVN78IFfLskoEtVSR
         FX3CnaQMDN9geVS01jX0wWnayyIO5q1tCaAKETF3F01W9s/s4QiGjppiiwtniS3YzGIq
         n1rcXjW6zYzECK7zjy8i0LkZIPkIttF9/HdgF2Ah1sSBhL8qJT9Zzbwu3RzGxo1PoiNz
         pzjXRkEeGcdna5jYLgd2mVGEiihYtk9iJ6tI2mHLrjryoqrXOmMZDjXDPaSG+tj+cYDv
         sYfVwzowb1R6hgDOpl3j3mfi3BzApw2RuizoFAqOR6kN1yb1OLqsWRJTtx4JOCCwxLLk
         ILjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0bq/Mp+jcXMlfJgcQOJd8TwvzWOB60QKUKkASh4SYGxh+dTFX
	lg00umFCN7Ex4S20zEi5jJo=
X-Google-Smtp-Source: APXvYqzoF5rn3Esu6bVX3nrKkY5n7itvXeA4sPMOx8YpN1FeBIVzyK8g5oz9wtRRX0luv7XQRG24sA==
X-Received: by 2002:a9d:66ce:: with SMTP id t14mr24059817otm.265.1566347837088;
        Tue, 20 Aug 2019 17:37:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:961:: with SMTP id 88ls123251otp.8.gmail; Tue, 20 Aug
 2019 17:37:16 -0700 (PDT)
X-Received: by 2002:a9d:4703:: with SMTP id a3mr25103267otf.183.1566347836542;
        Tue, 20 Aug 2019 17:37:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566347836; cv=none;
        d=google.com; s=arc-20160816;
        b=NdeaPes0Dk1N4xyvKOlHiLFzXOELx/dokfT7VbGG1cxke8zX8kTSBGAsQg5U5tzv0M
         mEb53eLS805pRuZ/wdGvaxIqcIlzAOgUp0FZ4CQm4yUhz+4SNTWIuvYFuwz+3mX6wBtG
         dSenVdpSpThfG/yBCJDSSeDHDLKesonas0Tu9WlMPrrOF9ybwS9KOPbsDG3Pp+3OLPyO
         jOn0HVEcI7OTqMVePXk35StLZvY2A1HAUHJ4FKqRJHz7ClEkcwZ9w8OXMRkV3XsDPPOp
         w4/bjr1aWRDCxwjGbvO7JLLcK5PvdciYJ2fOHly3iRfvoovwQGE/s+BG93zOfmkUSQTe
         suhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=9zn+jjOs8Qpu/XhJF+IyF4PAYpAHIDF/IJA//7IGor4=;
        b=N6JbCcUwcT7QtEATHpzvRByend/TzHythKueIYAoHK36WMf60dtCgy48/ZIs2zO2gv
         8LaUcnaf6ub5DtTPaRuYhUGqRiMd53Img8cHbYMqRZi4WQm6SCY65k7kEPrNhClkoBkw
         ru+Kd/YJGVZ40GHH0UnVhFyMOYTRbAKCgUbX/K4k0ipfKMSETFeprGqscEkQSLbFSd+z
         WjK4Ugc1IJP/y1UheKeZE7Bx9Q9Qk0P9dE3dksvR3V33QOS/v/krPL87b4qowALQK5NP
         eW6LnBX9dGxICwgKZzJMlZHy804m83SKJjzoBmWbb9JG8WLEzhzWI8mHzbn0P3+gmwP7
         5rRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id i5si835072otp.4.2019.08.20.17.37.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:37:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Aug 2019 17:37:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; 
   d="scan'208";a="180867706"
Received: from yhuang-dev.sh.intel.com (HELO yhuang-dev) ([10.239.159.29])
  by orsmga003.jf.intel.com with ESMTP; 20 Aug 2019 17:37:12 -0700
From: "Huang\, Ying" <ying.huang@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: <kbuild@01.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  kbuild test robot <lkp@intel.com>
Subject: Re: [yhuang:autonuma-r0.2b 19/21] kernel/sched/fair.c:2646:13: warning: comparison of distinct pointer types ('typeof (nr_page / 8) *' (aka 'long *') and 'typeof (10240) *' (aka 'int *'))
References: <201908162308.F6BiRZEg%lkp@intel.com>
	<CAKwvOd=2b0KbpAk+wgE1ymzmXWNSBZyz7JoF0eHtiOJ7df597Q@mail.gmail.com>
Date: Wed, 21 Aug 2019 08:37:10 +0800
In-Reply-To: <CAKwvOd=2b0KbpAk+wgE1ymzmXWNSBZyz7JoF0eHtiOJ7df597Q@mail.gmail.com>
	(Nick Desaulniers's message of "Tue, 20 Aug 2019 09:44:20 -0700")
Message-ID: <87blwjicax.fsf@yhuang-dev.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ying.huang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=ying.huang@intel.com;       dmarc=pass
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

Hi, Nick,

Thanks a lot for you comments.

Nick Desaulniers <ndesaulniers@google.com> writes:

> Hi Huang, see below:
>
> On Fri, Aug 16, 2019 at 8:39 AM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@01.org
>> TO: Huang Ying <ying.huang@intel.com>
>>
>> tree:   yhuang/autonuma-r0.2b
>> head:   c0d77303b0c04d55f2430f5c8007a9262529682d
>> commit: 31f0657a6ce249f478d6797783c4c20dc1952cb7 [19/21] autonuma: Enhance histogram aggregation and threshold updating
>> config: arm64-defconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>> reproduce:
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         git checkout 31f0657a6ce249f478d6797783c4c20dc1952cb7
>>         # save the attached .config to linux build tree
>>         make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    kernel/sched/fair.c:1452:34: warning: signed shift result (0x280000000) requires 35 bits to represent, but 'int' only has 32 bits [-Wshift-overflow]
>>                    end = start + (MAX_SCAN_WINDOW << 22);
>>                                   ~~~~~~~~~~~~~~~ ^  ~~
>
> Not sure what was intended, but the math looks wrong.

Yes.  Will fix this.

>> >> kernel/sched/fair.c:2646:13: warning: comparison of distinct
>> > pointer types ('typeof (nr_page / 8) *' (aka 'long *') and 'typeof
>> > (10240) *' (aka 'int *')) [-Wcompare-distinct-pointer-types]
>>                            if (nr < max(nr_page / 8, 10240))
>>                                     ^~~~~~~~~~~~~~~~~~~~~~~
>
> Probably should be `10240L`.

Yes.  Will change this.

Best Regards,
Huang, Ying

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87blwjicax.fsf%40yhuang-dev.intel.com.

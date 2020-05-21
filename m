Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBV4US73AKGQEZ4NPZZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7161DC38E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 02:24:56 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m17sf4200118ilq.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 17:24:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590020695; cv=pass;
        d=google.com; s=arc-20160816;
        b=wvWLE7oVg2VGzzeZLCNu8K+GjCRIeAQp/pAJ/EIkUzoSJ/fTJ6MQ0L5gLwMNsmf5FH
         3JNSE7CBuikcYxvptOy0G6S7c9eveX33VHXB/Hf4F6gDdwyVtaQ2yUSeCnA7FRIIaRdr
         G7EffY+Au09hoD1foP+jzFiumVa/1EWpkK1zL7O1y2FW53CCnTw2+0gCOHL7U9lywNMX
         hiF2CsJkbVe4GW8gCX8w8e4vCnRdOoRynfEnvV0EbhkUrnWAk9WbhAPYFMsB4PRFv0W3
         yJN4RLu+4RxsY7QleKXA1c3g31/KHJzAyJpCNuB/s+D7mqf2igqJ/evwAo8BqKY46QWv
         iIHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7KaLwdmz/48bQllfhwIKpWYOPAc0na+UBYuiq+q7H+0=;
        b=xYjqVS9AYgfmD3FaQbbeJcvIJMotAO8fah0GHOUgxMYXU4WqsZ4HfYAcnnb3RWsG6r
         TVW9qsNXxvy+KY/f9DDGRtqiwZ9IokIQbwuZFMrHCQodL6ZGMR6z4u7DasExO/yjZu8w
         FaBLKc5d4OQoo8YzGyd9eTvtqRSXgyXvluIT8JKf4KMQNumBOtoGW0F/o/w1afPVEUyx
         tTz8Tyfm882pWKF8VY0w6UK4xfoqJ5pnIjKE9RpspoQyDazNaI6NiReO5wEke8y2wag6
         mwcV5ki7hTW2XEaR1kdlOHmRq1SeC45ZpZbWB+zjc3GRtBcA4cTTl1Gm2QMrTcBNjuLX
         ArGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7KaLwdmz/48bQllfhwIKpWYOPAc0na+UBYuiq+q7H+0=;
        b=j4Wr6HI9yqHRrvB+xpUk6t4ZidEgtfsOrYUl8WYJIibjUCw4qAft+9Eio+gNYN/qPF
         UaUYNV50VR9jLp3KCUwac14WtNoGS0Yq6pnN7SrlFEAKSuShrlIcwSl/ggDrC584WYNu
         u7yMPosn9khsnUtRj263BqySdjc6nlKVRUyV2FYK9pMvi+32cpa1HupPzrC6/XKbCVrv
         USdhCtKx+Y6mOhi4ZlNG9vhricfgTVLKbz2U4uDSchLX8myV3oel1ia0/1aa0zLMM0ld
         qgeyE1dt+o4bIn8Y6aeyhw0FrBDjCjzJ3erQ/Dcdins9CXLZOCeu8e+QcnL0BKOyU+lx
         KiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7KaLwdmz/48bQllfhwIKpWYOPAc0na+UBYuiq+q7H+0=;
        b=YpCmEsD7xsGQ71R1y/7zA5g/5hNoumwDG3oyspmC/9xucdUDUGO/KMXz7B85BPt1Y5
         6AEfsM8TiHJzb0+K8sWDQRrvF2sQWZyqL3hpMtFArR+WF4byQmbWFbpK55MDO+Lf/wry
         Hgn45pWhgwKmtXpeGtNI70f59hXGgqNi9OH9YtZMGUhLjY29WEhtxoSPd/HQju0+e8l3
         pR7r8fpMujRluizbxW+XfwX/AIfIHDdquH2WFV+jmI8gsUQPVATYQTyW65cAV4Vb/7GE
         9ghSXnIzgf+l9wUNt7IzzX7qP4TRTfw89uS+4VuWEQo0kmETyaoZ6sKK9UqEjp9Dy1eZ
         T03g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DBEEEyw7VnuCqsWa1y9Rx2BHiBcDnjU+7tmN7yO34ztQSpk2N
	vo7kW+Yr0d65EzqPDuGvEwQ=
X-Google-Smtp-Source: ABdhPJxkctp7qR+Egpy515mngh8prZ6Jfc87IgiPY/kz0X/PSORhAeb/vmTGzIktkRzz9OADkS6S6Q==
X-Received: by 2002:a05:6e02:cc5:: with SMTP id c5mr6313573ilj.152.1590020695706;
        Wed, 20 May 2020 17:24:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1039:: with SMTP id n25ls74748jan.11.gmail; Wed, 20
 May 2020 17:24:55 -0700 (PDT)
X-Received: by 2002:a05:6638:cce:: with SMTP id e14mr1668171jak.34.1590020694922;
        Wed, 20 May 2020 17:24:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590020694; cv=none;
        d=google.com; s=arc-20160816;
        b=yCHmxtsw3DWnloX8kiGI5n4v/xsJVo5FKqbcHA9Yfvbj541bv8G/NVcJPxjW17iH3P
         BOnkZTB0gDhp/0TeooKiXX2gfiHMuyTqs5OLopFmyEr0lg7E4fDq/0RGVX2k16Ja6/z2
         Vc9A5Ffui8EbAvpuZPNkP6S5kqGBQ2MjwmE0weGh8OIPBqFBL6u9FoKFe4Ksu3T5S2lo
         0+LLKuAbY3Q/CNGyI4B+H9uClaSN2C2jTw4sQFGh9AiBi3LS9+C3s0NW5e/s9ynnhNM4
         OWfBLLSAg526+Jia3OUZ28P3zlEWY6K86u8TXhPwyfxQsbPppwdZdiZ1ePaPSAVzUpGd
         yUqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=WaEEW7VAtmp6aPINEoveeJHrow/AedT7R3ctLBY3LoE=;
        b=xhaoL1uiBHrg+wm/sVfjtSJd7iQ6OQEqodHFTnnaoq0RkAN6L4rAGfcJq/Qg91RipK
         cnTMwMo5ys54QyWPLUe4g26BNtJ6fkVYft5DUkkMD5vZwYPsON7ViB3MpGrg1sxOCvqB
         kvYCU4vyxdxPnCmmswEA2dSPyKVKsIzsSu03Kd8jca4WoAlxd2E/v6sQ+lNqY2UhPz3R
         aYrOdoIA/kehauQeK3fpRLp7DFsmRkUVXmNrrJU2bIhyDm/Ra7GZbdfzUFSheWzNSKdh
         x7JLQaGgZ8zZuFzScAIoPXrapl7O9gu3pwFLSVkUdHzbjhAiObxz6UvG6DheEu1qNT4N
         vK1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b11si241204ilf.4.2020.05.20.17.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 17:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: +k0O3PYeYeQ/DYypmvSPkyCsB19L62o28LzAN8KV4/XzjMjp0LMSktU/oldJrMmlfa9vi9YaUq
 +9uO/ih1zwGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 17:24:54 -0700
IronPort-SDR: xEOditTzw2CCYFmKj+V2z+qxO1Tf2q1/PdvHFbfdf1B5DVfLYYoLLuJvi+FZmb9V8GxYwXMpop
 ChtVKM4zcPEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; 
   d="scan'208";a="466582436"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 20 May 2020 17:24:51 -0700
Date: Thu, 21 May 2020 08:23:36 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	Chen Rong <rong.a.chen@intel.com>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200521002336.GA15716@intel.com>
References: <202005201012.pqmB8hA5%lkp@intel.com>
 <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
 <20200520173425.ovn4kvv2cvkdlrnn@google.com>
 <20200520173926.GA3365034@rani.riverdale.lan>
 <20200520174100.GB3365034@rani.riverdale.lan>
 <CAKwvOdns1LkmPNAGcOZRdXxD_2fTgbYzr0DndvsTVL-Zuuowgg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdns1LkmPNAGcOZRdXxD_2fTgbYzr0DndvsTVL-Zuuowgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Wed, May 20, 2020 at 10:56:28AM -0700, Nick Desaulniers wrote:
> On Wed, May 20, 2020 at 10:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > As an aside, how does one (should I) get onto kbuild-all? It keeps
> > bouncing me as a non-list member currently.
I think this is the setting of kbuild-all 01.org, you may need subscrible to
kbuild-all@lists.01.org mailing list to avoid this.

> 
> Philip Li <philip.li@intel.com>
> Chen Rong <rong.a.chen@intel.com>
> are the two folks I always reference for 0day bot related questions. I
> haven't seen bounces, but I also don't recall subscribing to any
> related mailing lists.  Maybe I was added to one?
Yes, and you can send mail to lkp@intel.com, which is the contact mail
that 0-day ci side is using.

> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521002336.GA15716%40intel.com.

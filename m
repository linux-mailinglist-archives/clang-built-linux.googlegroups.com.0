Return-Path: <clang-built-linux+bncBAABBN6EZD2QKGQEPHETN5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 907711C65E3
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:34:32 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id x197sf489057pfd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:34:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588732471; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqghAecWx+gAZaVW4lhq2sMtDMECgMjDKyloeqPCvKNzX+bsthmL2PqzFtu1amN3gY
         J5cb7VdZqMSZi2X1F2rJTQxMGqxEXyAJbg8lk195fM3UKI6Ok2VCP382wry5+2AX3quD
         ydMX+vrcGj5OAMnJx6Z5YTJJTikhhj3QelHZ4I1YnT2z9kcvO2GtZiypkCdnqqxyu5FL
         R5YL8MBDj3nCFHRq/WOE3UKWoPlF18ZF7IrNARTeh55qqcqPzRyUhUrlirxMfCEPQ+J+
         a0J1KvzdrB+R543iNoGwgIXI79FDucGCUrFz7IbVblHm3I0GIT4OUA9pCd3Z9HA8Q+BX
         9CAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Ihczeyrf0BixS/fPWF2UOBqJ/FNsQDHcIoD/4Ohe4gU=;
        b=GKeRn7BIE2a6yOjzsiBm3Kayno51kNYwuUMgATXmAt5Fw2p3abJeZC7uYPl/jsaPcw
         eIrrGkcJv/OeEWoMMjaKKdzB7dnK4cIqVUQ9gOf9cTcJ/rD6pONGScvh7jVt/1/RuBlA
         EgLwqTb+vLzlCgSKbldmueigOnnxZVva/gE4TbaBHPmmQ8hYx18NtPoo53+9owSmBhL1
         xqsa8qvOs19/ZUxwpCMbKLpAYm/wZpHLKHGuCgseDFQr7mXMWFBQrE4LGMYq8mcc0EFM
         x/q9ZiwBtkjwzWepopMlvJAb30kZCgFiFZihTH6LWUr6C4zG6RaJYJiN8thSespGBUfe
         Z9Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of yang.jie@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yang.jie@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ihczeyrf0BixS/fPWF2UOBqJ/FNsQDHcIoD/4Ohe4gU=;
        b=qftWFc/55/SfDX+eGNde+klDKc0Z2LHdOdgUN9gkrMGT1/70RnNZczHaAfCRh90vO3
         V6zdD72tTEz6wMCFNcW2AubcGQR6qMXa00w8WO+62bgDmNRaVx06AJQwp1jW9U2SpZC7
         txNU2/CpNx7lyylD9FxQGFU8iRI0nClYnKM7PnbUIEe0pxpWVZHYPmfb6w6wEJT6dzjG
         uaPNkV0qYUE0VLCDLnKS3OtUGpes5vhu0bgCuW91wUNovBUV8t8TTJpF2MED6y4v35s/
         IXtRWsX+nNELiZejzJd28zZjxYDyJXRd9gUzj318YWDgYqbNog8846tSunJdh1Ez30oJ
         e5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ihczeyrf0BixS/fPWF2UOBqJ/FNsQDHcIoD/4Ohe4gU=;
        b=Wquhks6Arwns6a8324/aKX0qt6Z72HtvtcjHdD+LmC6VSE2JwdeWJCcE/Yr6ArZ0B5
         UvSHWQ9MtMFLCFdWp3zaf3Tn8a/npBN79KPpk9e2J4VFUjlDl0lANXhBMlGf1u3YmG9n
         h04z3B+wi5PSMpeiSFehM6ejXZGJgZ7BzxVsS5ZYr5WSyFU6N16GiRz4QC7H2asEaSp+
         W6pazv+dpySbMQpRbHz4/hEYXCNMYubxKbDdOTYKPKPTEe5iwkQm1fK7dhGHCE2VHDmW
         J/1gaxjJ1aOMdlJDVa+AK3L4aXK+MB1iRfbGalQNk1iCFhjOJmJRaD6/7F2hZUmDkYr9
         jN3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub1oEEc7qYSiF0391rq2YstNLQIf8T+5Z/CNqmNGQ23tq7a13OA
	Rf6CS4hY5/UwuuCji1yzFhI=
X-Google-Smtp-Source: APiQypLN/EurJNOkkrWZsoiFFI5TDW02GTPWnNNLtyc2dZZV1h4rS9ta3ch9LvAC3tc67yIdk6tE7Q==
X-Received: by 2002:a17:902:bb86:: with SMTP id m6mr5559983pls.341.1588732471285;
        Tue, 05 May 2020 19:34:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c713:: with SMTP id o19ls1615361pjt.1.gmail; Tue, 05
 May 2020 19:34:31 -0700 (PDT)
X-Received: by 2002:a17:90a:30e7:: with SMTP id h94mr6741895pjb.186.1588732470959;
        Tue, 05 May 2020 19:34:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588732470; cv=none;
        d=google.com; s=arc-20160816;
        b=TbSc+ZMTdnr/pJuH5Y13Os/GBDFNFVKms1pO65HW+gdBS7YHGftJINOskP07uDvFKI
         u0SV/y7RBtu32EGq76vpSQfWpRR5PSKD/1FKK7hRJWhB1b8+aJ74B7m9ZXyKZixUPbDn
         9rn7x2EgZLjZAeaj6GVRk97sAVLFBPrtPsQq5R9yNX5kENvx7LBfFgFfVzw+WHDB6jSz
         9vxB6ldj6/RB+/DrMk/ATtcs2utysOlfLpq27Cn8FNqJopMakm1RNBl1EJSF5OafPump
         jrFk6ziStpwa3EFze6vOBPSzlmdB3ER6Nr7teuijjFPxGbHuM34I5T4aHN1omUWUhy33
         dJcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=ITHPhZn7zlD7txcI0qhWvp2d742uyF13YEKeEaT5HN0=;
        b=kVb0O7zhjlJ1DWkTK5MemOmNGCm2jbHZvNR66TAIql8u1OgbCC/XlvJkgSGAsWYIAL
         /V4DgwvNQ/v+02Wcr+BN3a2OYjxDCycc1kbc6PYBMwnqZ3NRneYKn+MSZyHFkH8rxjIp
         l6+/OEL8BIpsYxNSueWRbOOEXjVrqau4+ZmvRD/O0dnN/Xo5qbmhPtdn/6jS/Suu5lZ0
         G7MiTifOk1TQCeGxWfwJa3RNib70HQoFGZ71ZhilCXtqdlrogHUBXkU9TqCckc8Ju2Eo
         QtMuxgUh/FrKGt/IJuJGLYVRu2GKmL3ml1oIIaTCHbY24xZ3cwqTRMmPFvEr7ZAQ/WXh
         VlsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of yang.jie@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yang.jie@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id g11si27460pgj.2.2020.05.05.19.34.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 19:34:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of yang.jie@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: PEbilRsAs95sn8I8UzCBsVOum05W8zOiaWMjPJplbBtmoYHuVqCdyIGKtMaxj3V9bvk6v0hG5F
 jrpWFdCLKRVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2020 19:34:28 -0700
IronPort-SDR: zyDBtX2S7VPVpvrTqzdmbBJHTOdw/2LBbG6F2vT1/GmoNDTnEYfNNw4D+Q2se78qNDxVnJn81L
 +Sjg6JTn6qMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,357,1583222400"; 
   d="scan'208";a="338853107"
Received: from nxiao-mobl.ccr.corp.intel.com (HELO [10.254.215.171]) ([10.254.215.171])
  by orsmga001.jf.intel.com with ESMTP; 05 May 2020 19:34:24 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>,
 "Rojewski, Cezary" <cezary.rojewski@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "amadeuszx.slawinski@linux.intel.com" <amadeuszx.slawinski@linux.intel.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
From: Keyon Jie <yang.jie@linux.intel.com>
Message-ID: <4623d6b9-8dc6-b301-c8ff-74dfb6baf2a3@linux.intel.com>
Date: Wed, 6 May 2020 10:35:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: yang.jie@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of yang.jie@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=yang.jie@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 4/22/20 12:16 AM, Lu, Brent wrote:
>>
>> Regs width difference between BDW and BYT comes from specification. BDW
>> has IPC registers which are 32 wide. This fact ain't exactly the reason to modify
>> sst_shim32_read64.
>>
>> I'm sharing Amadeo's point of view. Your change should slow down execution a
>> bit - but that might be just what handlers needed to make everything work again.
>> Debug prints also slow down the execution what could have prevented you from
>> spotting the real problem.
>> Let's ignore the memcpy stuff for a moment - could you focus on elaborating
>> the scenario where such issue occurs? Your initial commit message also skips
>> important bits such as platform used when reproducing and so on, please add
>> them.
>>
>> Thanks,
>> Czarek
> 
> This issue is reported to happen on BYT Chrome book (rambi) on Chrome-v4.4
> branch after changing toolchain from clang10 to clang11.
> 
> The reproduce step is simple. Just run arecord multiple times (<10) then you will
> see error message for hw_params ioctl failure.
> 
> $ arecord -D hw:1,0 -f S16_LE -c 2 /dev/null
> $ ctrl+c
> 
> The error message suggests the stream commit (IPC_IA_ALLOC_STREAM, 0x20) IPC
> command failed due to timeout but the msg id field of ipcd read after the timeout is
> also 0x20. It seems to me that the command is success but the host driver does not
> know it for some reason.
> 
> 2020-03-15T23:02:06.614151+00:00 ERR kernel: [  852.023766] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0xf0020 ipcd 0x2220 imrx 0x0
> 2020-03-15T23:02:06.614209+00:00 ERR kernel: [  852.023796] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
> 2020-03-15T23:02:06.614218+00:00 ERR kernel: [  852.023813]  Baytrail Audio: PCM: failed stream commit -110
> 2020-03-15T23:02:06.614225+00:00 ERR kernel: [  852.023832] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110
> 
> I add some messages to make the log easier to read. You can check the gerrit link if you
> are interested:
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2131507
> 
> In the test patch I read the SST_IPCD register in sst_byt_irq_thread() twice and found
> the value could be different. The IPC_IA_FREE_STREAM(0x21) seems to be the last IPC
> command sent in the pcm_release of previous arecord command.
> 
> [  125.009724] sound pcmC1D0c: snd_pcm_release:
> [  125.009732] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000000221 wait 1
> [  125.009760] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000226
> [  125.009803] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
> [  125.009823] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000221
> [  125.009872] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
> [  125.010442] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x80000000000c2226
> [  125.010456] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000000221
> [  125.010511] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
> [  125.011355] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc success, header 0x8000000000000221
> [  125.380506] sound pcmC1D0c: snd_pcm_capture_open:
> [  125.380544] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
> [  125.380554] sound pcmC1D0c: snd_pcm_capture_ioctl1: PVERSION
> [  125.380561] sound pcmC1D0c: snd_pcm_capture_ioctl1: TTSTAMP
> [  125.380581] sound pcmC1D0c: snd_pcm_mmap:
> [  125.380622] sound pcmC1D0c: snd_pcm_mmap:
> [  125.380648] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
> [  125.380717] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380737] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380766] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380779] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380789] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380799] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380808] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380815] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_PARAMS
> [  125.380839] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000642220 wait 1
> [  125.380854] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000642220
> => write IPC_IA_ALLOC_STREAM message (0x20) to SST_IPCX
> [  125.380931] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
> => read message reply from SST_IPCD and an IPC_IA_FREE_STREAM(0x21) is returned
> [  125.380942] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: ipcd 0x8000000000602220
> => read SST_IPCD again, this time the message id is what we are expected (0x20)

Looks there is race between the previous stream stop and the current 
stream start here. Can you help try changing the 
sst_byt_stream_start/stop() from 'nowait' mode to 'wait' mode, and see 
if the issue can be reproduced with it?


Thanks,
~Keyon

> [  125.380948] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000642220
> [  125.681171] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc timeout, header 0x8000000000642220
> [  125.681204] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0x50020 ipcd 0x2220 imrx 0x0
> [  125.681212] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
> [  125.681217]  Baytrail Audio: PCM: failed stream commit -110
> [  125.681223] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110
> 
> Regards,
> Brent
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4623d6b9-8dc6-b301-c8ff-74dfb6baf2a3%40linux.intel.com.

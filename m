Return-Path: <clang-built-linux+bncBAABB4NFQX2QKGQESPBCTGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BE71B5742
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:33:55 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id c15sf4029032ilj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 01:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587630834; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHYhGkMCiQ2eu3ZeZ9/XECq4wG2hhXUydcvROqaG5sjw/MGQbMcBpP+OtdEqsUi7Mg
         sP8XquqDqczVYKN/Nso8anLDByYbCm7JaOh9G+v8de63vgvC5r/prx2/I3D6LQy+linD
         BX/gbftvU2XR2ceM52T/Px3K+fTOIeNsDZcKyvxipidGs+uCQWZz95wfvjfFcsKeNPu4
         TXXauGg9usKreMqea284j+aupXDvnUzac70i8h4vJyGCPXV4FRuNKuaRKGSL3grdshdj
         y1PjaKxGwZukUj6gZJssOpe2rm7NiTKCvkXUmK71dSQbdzPEXZgTpMXvV971s3CJXvpP
         JM3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=smTPesTftjOp3QuiMH+sGl84MmuA5IM3rnANah2/P3c=;
        b=MhyliJffoj0J8ck/lZBZHCwuvaWBE9Dd30jodSOyhgiLldFRk6XOxnNuwZiLjd+afr
         HZl5ppszbDFsyviKswGBbLtSE8dEusrWmEOTR0QbJ6wMm25ff6jWcGO+MklNVFQj94vP
         pTmgO2V/zAxKoxD5y5clKPeb6q4OsoXDWG20H8o9JhX7xMf7IT1TMBfqANmyuPT54ETn
         SnnSRTrT0Cfb3g0o4wLNW8pFMAbQ4vaEYy41/syXS50fjKjonu3S+0Aa45e6W58BqE75
         JMJgtIdIYRIlC3OopNf+R0klDMgj6aKJ9ITDKbfkKWHsSFwVwAmTjk5lGKe3HViDpEmE
         Fmvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:subject:to:cc:references
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=smTPesTftjOp3QuiMH+sGl84MmuA5IM3rnANah2/P3c=;
        b=VaiBfjjPM1xTZRwcS518JQUmzOcYhnQAvB1e5LSuRiFKaP2XkmAzaguphW1uFCBO5A
         LXi64wuPvj/Po8XSaC2Tu0Y9voF+S2MJGuO0BcU2XvKZpZEzcE3gHbRuR8hXujSjC4gM
         WVJrnp5syIMrhkfHYCvd3GPhX1lbZXOFU/66NtxHsYwYLhAm41psBH3UbN5RhOZ/+JJT
         98b3ibxYOWiMtgs+XKHtvjbGayWLjr8ibY/XOmeL/Wvwwrl3R6IKm3mw60ea0SzgbTgx
         KTYnSYIW0Rk6POMtE3F/psGo2C5QuDK2xLf5jgiS0l/IxA8T/1JJOkxgsjG6k4BTukrf
         numQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:subject:to
         :cc:references:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smTPesTftjOp3QuiMH+sGl84MmuA5IM3rnANah2/P3c=;
        b=mLWTkw0t8EIAfQK6xu4Ac6Zg1h0DrNHuqP190K7p8xQdHGvOR7qMCt2pZaoLNuaF9X
         QMvfwIoAyfiCfgC/HIkyz7xLFv8fHAhINZA/RvfRDkKVXBxNExsTUmhtmNssxp+q+2LF
         0fjdt6nQgaH8k98T0OLvU59HPQLTQ8gBBMMruFFDuITV575ccpn6i+SrXDaTPGUWxpUn
         mEq6+B0Bl+DNPMn0+t0rbs+uzrs7xq3XzaKiKRrnR/MFQlqXUl4ArAEb4T9S3XdEroL2
         aw0b9J1Kvg20Lcuv44DkNJE7282hpGAew9i5QKfeXazliFEsTojyenpoz2EjHAqmV1ev
         gOpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubh5iLA57boRbjHGIs0I9wcD+57bp/QhiF7yf2CU2eqjEmyDztB
	Wx8MedBQkcQRw9/1zIEJ0Wg=
X-Google-Smtp-Source: APiQypLeZ0yEYy4sZNkHhnxu2lJoAjFxolPWRbM0TObMwUuCmqybBTjJeqL919Znph/ZB0SNmQTowQ==
X-Received: by 2002:a5d:93cd:: with SMTP id j13mr2676966ioo.27.1587630833844;
        Thu, 23 Apr 2020 01:33:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls870928ilr.8.gmail; Thu, 23 Apr
 2020 01:33:53 -0700 (PDT)
X-Received: by 2002:a92:690e:: with SMTP id e14mr2385387ilc.22.1587630833401;
        Thu, 23 Apr 2020 01:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587630833; cv=none;
        d=google.com; s=arc-20160816;
        b=a4CvkOMa4LQRfQieuwjz3nWb9aj7s8hLACjeaY0HRl39LNpGJLrpBQoIiafDFC/bTg
         zRVzyuakciXwpQPyOKLeE6spuo5qJwI25gVIPUeYY0/QCOuPc3ZytEam2AGWMp4gPWSu
         2OKHpWksXmCq5B/TIdCYqBgnSMy3qHYocwD89R1JRn9Q47XoyCfxMWp+gY7Aaj/aOfUD
         Qfk3jq4diz+WTAyfneYVP+N8eBo/MqhapJ81RrsZfFWZAuPSJfkeXEpHimbd7qFOk2sJ
         Rd1MPSyfC2JkOZpQ7HvM/1KQ9FQDtUXb+y7ePseOdX+kcYjgbyPrM+sMbsZlio4ExG1e
         jPTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :ironport-sdr:ironport-sdr;
        bh=yDV1BKK0YfNiI/fVvm4HyE2SwMWwTGHCBoTwQUQeScA=;
        b=B2gin3iQZiJN8f0xWDniPlnMtoTpw8amNYIAqTdogx7WiAPb8e8bFwe7l2jhHsbSYi
         gGcFwaV3iiahmj2Ql3QjJK0W4DC3aJiMGDYFF786MgTiAbJE1kBbfE6fyHBf4UIeKXm0
         kem64oJiZWUD+Vo85GnncZqBgVveUfQM7zBTF77FXCeohpI6mIanz1Lde8sevgvy3IUm
         LhJajJZIdp0ZjkC0r3DGBm2qBCsUYgY3b1JfVfH1Thilm7P9a7stlpx5BFNbOMi8YM/O
         MdEie6Ml+CP7p4i2Aw+41EevfotbW4/ZS9u+LJMCLycRBFb3G8lUon/iEuvJxykebOh+
         6pig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id v22si221194ioj.2.2020.04.23.01.33.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 01:33:53 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: aVa/zVKAfqOP852C+JWKcQNHkVvut0Ld0XqshgfwehazDnycPWZwA0H8qftc2pcK/OTgmGXJsL
 5lsUq0yUWBlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2020 01:33:52 -0700
IronPort-SDR: zdcdmdOKM+bcv8IcTgKstEsaeuv0+W26sT3uurrkTZ9SvF7wRhKHQh4oRLRJh/1aURwuhBusW5
 nqhE2HO5EJRQ==
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; 
   d="scan'208";a="402848601"
Received: from aslawinx-mobl1.ger.corp.intel.com (HELO [10.249.145.81]) ([10.249.145.81])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2020 01:33:48 -0700
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>,
 "Rojewski, Cezary" <cezary.rojewski@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jie Yang <yang.jie@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
Message-ID: <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
Date: Thu, 23 Apr 2020 10:33:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: amadeuszx.slawinski@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
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



On 4/21/2020 6:16 PM, Lu, Brent wrote:
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

I've looked at the code and byt_is_dsp_busy seems suspicious to me.
Can you check if following change fixes problem for you:

diff --git a/sound/soc/intel/baytrail/sst-baytrail-ipc.c 
b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
index 74274bd38f7a..34746fd871b0 100644
--- a/sound/soc/intel/baytrail/sst-baytrail-ipc.c
+++ b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
@@ -666,8 +666,8 @@ static bool byt_is_dsp_busy(struct sst_dsp *dsp)
  {
         u64 ipcx;

-       ipcx = sst_dsp_shim_read_unlocked(dsp, SST_IPCX);
-       return (ipcx & (SST_IPCX_BUSY | SST_IPCX_DONE));
+       ipcx = sst_dsp_shim_read64_unlocked(dsp, SST_IPCX);
+       return (ipcx & (SST_BYT_IPCX_BUSY | SST_BYT_IPCX_DONE));
  }

  int sst_byt_dsp_init(struct device *dev, struct sst_pdata *pdata)

We seem to treat SST_IPCX as 32 bit register instead of 64 one, which 
may explain wrong behaviour. (Specification says it is 64 bit register).

Thanks,
Amadeusz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5e84c48c-a5d1-b2ff-c197-5efa478c5916%40linux.intel.com.

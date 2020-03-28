Return-Path: <clang-built-linux+bncBD26TVH6RINBB35I7XZQKGQEXCWL7RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFCE196662
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 14:43:13 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id r13sf10784269pfr.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 06:43:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585402992; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tol43OrHMMn6DyLVZrWLkAPF7V178HDT+Dg1Q3BC/Fl9umGHPisg3Nn+FigU7UXCcm
         7KFtGGaxKTBYIoqe7aGIzcf6icFRPKfOOrYnGxJaCzoagAj4Ho0LLukigzRA0bUEK5cC
         SQRI+5nh5am80AZClpOo5JTezSREBToe/C+LXiLIC8gGUEH6MLRldsWS5c4NtMmqdi7t
         2WMXMClvIHQ7fHqoDBx9/wrosf8RXxJCkOMPvqjSK7+7B73fiHpMUq9puBdLYUM2+ADD
         NhZy4Dl280UEzqLCcQYv/RRzg0u5kfLEFvNRdpGs1Pg9nzvKI7L4goZOqmhQnPUghVj1
         ESmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=rFvOuxIAowVtfFKhJ9Ng3/jmx4G/9Ewq61Fd/+Xi1tk=;
        b=EovS3AzAM5wZvy82k5OoonxK+EZQRSg56os27Zd7Nhlt8sDXMfIMYyNzWIfLqGGhom
         AoJQs++FLGFl4I55AB0DbCVkqw+XDS5mTDmLtgC9miYTWiKUN7zwp0xJ5B5k5EoKKsub
         vU02qSJdYWqJCitnlLZnWpVTztcFCrpUUSl0HJaX7KRYWbja8A6MZMppnhjzM1CJckNf
         WGsbLyK8/oCXC7SjJty8LmOCydf0Oox6wCLaWK5rq8AoDhVj6P7wJSmxlXvdgooYofoY
         nHCyHPmVcrJFU8LBAPqx+MNXcxk2kwaU91/HZyJ1DQMAVOWF9Ci+eOFeO42srlhvDVtN
         CuEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rFvOuxIAowVtfFKhJ9Ng3/jmx4G/9Ewq61Fd/+Xi1tk=;
        b=YVGTUKLdRtJ4dvZFbjAvvT2Gn4SnvrJLzPxL4sV9H1d7EaTIAH3CWhQws83dUUZHKV
         7NJM4mRJfmsFtqfQ5UIcyPAdeahvu5EL+ICWIhclHS+E9oCrftlfdeJqjfOZHo6JZDqI
         deyepI0nAxCw2JPr5qUC8bKtqKgKJNyat0bbQ96C+IUsBoOehdMZgg9bPnKj9kO9KghV
         tXQVxmtR3M1NcXlty3aMyMj6HUFjCdvlrFRNiOOpomgUH6IjyKqSmPUbL6xMi8PR8U/r
         r/Et8l7rsrd4J6BjldMft+Ti3c9Y9H3Z6mM7npAdnLYAgk8u4+bCWCSPILRz3/adA7Ca
         gm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFvOuxIAowVtfFKhJ9Ng3/jmx4G/9Ewq61Fd/+Xi1tk=;
        b=DbDpe5lv+goV8mSfXJ32PTT2rrjjquOPQk4BcHY/qWYflRiGJ2Wplb3UPJ/KmMU3Gx
         vcgPE4FZPHw9Uko4RT8Dobm/3ZvuB3pb5PA0x8ZkfgmcNCHcrF+X7JPHQ00rR0fBDhGV
         2EvxZLUVRYzqcOJ8jx/W+csX8AkEyKTz4FaOSUXFcYtgkjQEZusq+8Q556dFAm/Hzr/a
         FMGvNKYvwLAjwrNxTe2iZDdWE3N4FPHDU2CLqVQ78dk4vpAsbttLlEh4nR2fjl/FetAt
         cypnOLt+c1qIKtH+02HdrovSB1n7+rdQuBapIpOmC9PKMvDIL03Mp8+tEWsRn5LyDFq7
         glig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2mFFgETIgA3uDXcmtN03q53MspkFUQGdAmDOICF0PD3neQKR0j
	shSaZMsBvbL5GF3KVfzKyuc=
X-Google-Smtp-Source: ADFU+vusnlJW1+GuC3HlBE7DEYckfD/IppKDWu8TbER6Xnw0r/9HOaTFPHTuKqlNZH6/MrqmiQQR8g==
X-Received: by 2002:a62:1b12:: with SMTP id b18mr4323788pfb.258.1585402992085;
        Sat, 28 Mar 2020 06:43:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls9454315pjo.0.gmail; Sat, 28
 Mar 2020 06:43:11 -0700 (PDT)
X-Received: by 2002:a17:902:d70d:: with SMTP id w13mr4138241ply.322.1585402991548;
        Sat, 28 Mar 2020 06:43:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585402991; cv=none;
        d=google.com; s=arc-20160816;
        b=gu+dq1HPlU7wJ4jRsmA1iH0lYtjKHbJ/RjeXlymOqI5coYVMpd95HNsZuIvCu4iIZ8
         vL4mpjZnOVd7fStEPJVxTfGX/R0o2V8goCbfma+QFvxcw8GiCfUt061r/13anDI4G0ql
         ySMCMCEiF+Y9GcDXlgOHXP3QezCcOQ4XtgFv7HxvMoMUoeEk3yHPFCvj6Y1ZcTnwAZj0
         5qaUQ+/phTY3E7u9r5xEMDAWldKRO0qQOCKjNp0PBUyZaUNrYvCKrufI75vrKN7xZw6v
         ECgcsSCBCAKvIVGfFntZ/YKtAyWYOxtj/afTb7wGtpVEPkE5Qr5QvY3sFUhQ5y2f7PC8
         wJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=jHoIvSR9IKJPBsDK+XY1+4RjhCeDsi1+BkHhotH03dI=;
        b=kivnrz9YIrG5+0jz1MkROkxDK1pz7lcddkM5ImLdVxlWf7MK3ykRFa++CTY3ArOKOp
         PqLUcS9BkLJXP0rTPWjDCoOhXRNMWG75fIhuv7B2geH4J6PTeHWPdb8F/YtTexfyHHMr
         vKkV7Nw3VEqxUXGiHNRxXZFH1MRA6gD2GWKcrvBNgIBk3QdVqlrgyBMLtdZChELn93vi
         G0IhtScrqvqdRU6Q/Z6alWWaABJSjPtzbXgL50g4JayTtUCjaAM8+f2mxNm7Zn9vm+6o
         eqRUXI3KxWNcOjQBrNb2vmVM4WfJK9JYsahYepk5hv+lT1Uy3q/bDH3QCy7Km8Ng/i66
         Q94Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u14si418432pjn.2.2020.03.28.06.43.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2020 06:43:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: IMVdxtm87XURCjuxs4bOF2KT/FmEGFEA61cbJAPHODMMB0gQl1YMSkhTf2yDg3w311IdFwG50p
 jynYBzIe3xqg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2020 06:43:11 -0700
IronPort-SDR: 0xbkVDMyGdla1iQAEW8pv5X7XbXSndUYv1640I5z7s9BJjbtvhEd7G4dZStDH2L5MnOWbRkQij
 BOsrZdvNCvOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,316,1580803200"; 
   d="scan'208";a="447738128"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.30.239]) ([10.255.30.239])
  by fmsmga005.fm.intel.com with ESMTP; 28 Mar 2020 06:43:08 -0700
Subject: Re: [linux-next:master 11818/12026] drivers/phy/tegra/xusb.c:941:
 undefined reference to `usb_get_maximum_speed'
To: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Thierry Reding <treding@nvidia.com>, Philip Li <philip.li@intel.com>,
 kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <202003280210.EVgWpDIL%lkp@intel.com>
 <CAKwvOdk=kejW1DC2677EHjrRg8CXiy8EEU317gUtvG4HzdnMhw@mail.gmail.com>
 <20200327203436.GA54333@ubuntu-m2-xlarge-x86>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <a591c2d9-2540-4089-cc20-f00926d2a68b@intel.com>
Date: Sat, 28 Mar 2020 21:43:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327203436.GA54333@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
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



On 3/28/2020 4:34 AM, Nathan Chancellor wrote:
> On Fri, Mar 27, 2020 at 12:22:04PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> This is a known bug in bfd; it doesn't seem to emit "range extending
>> thunks" for 32b ARM; it's very easy to trigger this for large kernel
>> images.  When using LD=ld.lld, lld emits the range extending thunks,
>> so this issue doesn't occur.
> This does not apply this situation as this is not an arm32 build, it's
> an arm64 randconfig build. This is not a ClangBuiltLinux issue, it
> happens with GCC and binutils.
>
> The issue is that usb_get_maximum_speed is in the USB common folder but
> CONFIG_USB_COMMON is not selected by PHY_TEGRA_XUSB. This should fix it
> but I don't know if it is proper or not:
>
> diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
> index a208aca4ba7b..4b0df6e90d25 100644
> --- a/drivers/phy/tegra/Kconfig
> +++ b/drivers/phy/tegra/Kconfig
> @@ -2,6 +2,7 @@
>   config PHY_TEGRA_XUSB
>   	tristate "NVIDIA Tegra XUSB pad controller driver"
>   	depends on ARCH_TEGRA
> +	select USB_COMMON
>   	select USB_CONN_GPIO
>   	select USB_PHY
>   	help
>
>> Philip, I'm trying to simplify the llvm builds a bit, but if your
>> build with `make CC=clang LD=ld.lld` then we don't observe these.  We
>> should circle back on that once I've simplified the build.
> This does not take away from the fact that ld.lld should be used
> wherever possible.

Hi,

Thanks you all, we'll add LD=ld.lld.

Best Regards,
Rong Chen

>
> Cheers,
> Nathan
>
>> On Fri, Mar 27, 2020 at 11:50 AM kbuild test robot <lkp@intel.com> wrote:
>>> Hi Stephen,
>>>
>>> It's probably a bug fix that unveils the link errors.
>>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   89295c59c1f063b533d071ca49d0fa0c0783ca6f
>>> commit: bf5dea0572a06529edc5429263b23d05d30c78a5 [11818/12026] Merge remote-tracking branch 'tegra/for-next'
>>> config: arm64-randconfig-a001-20200327 (attached as .config)
>>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2a43a1610db335afcccd1a179a33a0886a5a2c4d)
>>> reproduce:
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          git checkout bf5dea0572a06529edc5429263b23d05d30c78a5
>>>          # save the attached .config to linux build tree
>>>          COMPILER=clang make.cross ARCH=arm64
>>>
>>> If you fix the issue, kindly add following tag
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>     aarch64-linux-gnu-ld: drivers/phy/tegra/xusb.o: in function `tegra_xusb_usb3_port_parse_dt':
>>>>> drivers/phy/tegra/xusb.c:941: undefined reference to `usb_get_maximum_speed'
>>>     drivers/phy/tegra/xusb.c:941:(.text+0x166c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `usb_get_maximum_speed'
>>>
>>> vim +941 drivers/phy/tegra/xusb.c
>>>
>>> e78fdbad1e902f Thierry Reding 2020-03-19  921
>>> 53d2a715c24034 Thierry Reding 2015-11-11  922  static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
>>> 53d2a715c24034 Thierry Reding 2015-11-11  923  {
>>> 53d2a715c24034 Thierry Reding 2015-11-11  924   struct tegra_xusb_port *port = &usb3->base;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  925   struct device_node *np = port->dev.of_node;
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  926   enum usb_device_speed maximum_speed;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  927   u32 value;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  928   int err;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  929
>>> 53d2a715c24034 Thierry Reding 2015-11-11  930   err = of_property_read_u32(np, "nvidia,usb2-companion", &value);
>>> 53d2a715c24034 Thierry Reding 2015-11-11  931   if (err < 0) {
>>> 53d2a715c24034 Thierry Reding 2015-11-11  932           dev_err(&port->dev, "failed to read port: %d\n", err);
>>> 53d2a715c24034 Thierry Reding 2015-11-11  933           return err;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  934   }
>>> 53d2a715c24034 Thierry Reding 2015-11-11  935
>>> 53d2a715c24034 Thierry Reding 2015-11-11  936   usb3->port = value;
>>> 53d2a715c24034 Thierry Reding 2015-11-11  937
>>> 53d2a715c24034 Thierry Reding 2015-11-11  938   usb3->internal = of_property_read_bool(np, "nvidia,internal");
>>> 53d2a715c24034 Thierry Reding 2015-11-11  939
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  940   if (device_property_present(&port->dev, "maximum-speed")) {
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12 @941           maximum_speed =  usb_get_maximum_speed(&port->dev);
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  942           if (maximum_speed == USB_SPEED_SUPER)
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  943                   usb3->disable_gen2 = true;
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  944           else if (maximum_speed == USB_SPEED_SUPER_PLUS)
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  945                   usb3->disable_gen2 = false;
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  946           else
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  947                   return -EINVAL;
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  948   }
>>> 1ef535c6ba8ebc JC Kuo         2020-02-12  949
>>> 2f8da84def73e1 Thierry Reding 2020-03-18  950   usb3->supply = regulator_get(&port->dev, "vbus");
>>> 045ef3115382fa Vivek Gautam   2016-10-20  951   return PTR_ERR_OR_ZERO(usb3->supply);
>>> 53d2a715c24034 Thierry Reding 2015-11-11  952  }
>>> 53d2a715c24034 Thierry Reding 2015-11-11  953
>>>
>>> :::::: The code at line 941 was first introduced by commit
>>> :::::: 1ef535c6ba8ebcad1ced47a9d382b162c34fba3a phy: tegra: xusb: Add Tegra194 support
>>>
>>> :::::: TO: JC Kuo <jckuo@nvidia.com>
>>> :::::: CC: Thierry Reding <treding@nvidia.com>
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003280210.EVgWpDIL%25lkp%40intel.com.
>>
>>
>> -- 
>> Thanks,
>> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a591c2d9-2540-4089-cc20-f00926d2a68b%40intel.com.

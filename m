Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBVPX7GDQMGQEFKPZ3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455C3D562D
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 11:09:42 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id e5-20020a05651c0385b029019a306f998bsf963296ljp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 02:09:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627290582; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKCdCXtb9B1U1PdF1Mr2HyJ83S2TrBg1i63s6BIDnK8R9lj8Y4tbGLfZeSi6FhTn1m
         rVeX2/h2hb8FUYjlRib5z15N76q0feFsmfw7EMpSLR2L4CnnNh9dJGPJsvtgB2yyzCss
         azHVcy3GmmX/kmFqKuhsKyoEh3GjrXfuSxuBMRi7ok2aZB2p75dO1s80e5iWOXDqGs7g
         O5Tf7qSABbyHARyMRkizTA9wv1Ndo0UEdEOwbC3VkukhaF4FfNBzRW8XY+nD44PXwJT8
         6fDgVmHMnkAO8CpVOpJNCet9CYebw32iQEEPGC/FnGSIC8J1XiTI4a5wvaSrQOJpW62n
         2BGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ZeKQvlyCTPaspcbWsMHfLRADw99yBjfcG8FJT8yXDlY=;
        b=EyXa7js3uO1AOaXh/6bj/qWpmYDcVCaIkPmPPVOUHUYHZ/+iRnk/JaknVWqm93L3Co
         EMGkxDFUel4bLtLDkgn1NgS5Yn6tZrvZ1qEJwOGSsuUzf2sU7SJ1e/EkyWr8glNR6oiO
         7rtJUVq1+gvfGuMZQ5zDab2i3L2qqYZWUzJU9uXH8C45Rl083zCNv20iqhalhHAAAmJM
         ZAlsIHMaDooPZeA/+OPJCwp6pEBJyq16w6A8A4O6lLLGn4xnQ1FSnwBjngTfUH6vkw9Y
         oVZ5Y4USha9dj8FiFzWdkfJKKiXm4OjoRj+iGWY1WBOzaGTfBMHVHFJdGcbfDYSyS4Hf
         b7Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gIijk6aM;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZeKQvlyCTPaspcbWsMHfLRADw99yBjfcG8FJT8yXDlY=;
        b=nQQ+8kTI+/j3slEDJ0Je7Mo3sGaISBGLMzuW+oltakb+KGpdCI/JfEcRphNh/25NW7
         Twx9bpLAvyTMuBAxRS5WDd+J5maaZMpJbNPzEXSUGjw6amfh/jmExns82vTCwJ0KDQZo
         5aeojzCrs4wMev0mINNhnEeb7uwqqldTs0ZV5NBTx9B0EhYeswNrJD4nyw2QOxWDY7Ht
         ZL489mW0dGmIT24UnxklnxHMKrKvyPncoBU43KKrtZwqbwVoJj+D9UtvXis90anFgogD
         9ahUKsc0200IkohoZ782aeHF/IhmJsMFJhKYhOBvQQeYixQtngjexoD7eHE5MDbvTm9u
         DD/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZeKQvlyCTPaspcbWsMHfLRADw99yBjfcG8FJT8yXDlY=;
        b=g1kszFxvYWY7iDYsHB81HyyRTb3/MHqJeZV1fUH0xr7As/5UZgopJkKr7hu+4e31M+
         mijeojBr6RwND4Nyq7KmSMAUdDuRjESylQrPocZgqxXUo+5vQ5LTBIw1kn45nZ3hsLwM
         +DO1eb8x+SFI9Erx+xArWDNmPvn1fC7Ozzewp9l4KcxFUME179xWMmDtO2oOb4C8k2W0
         bGVHiGwNSl+Pj0dK4g+Z3mZmwso0+F/V+gj8qDUisxnPVUYCGyPh82Xz+erxXsypSGws
         7NtooES86WYypwyMW2MWGPZ0dfmxIizmW515qcPQnDS2fhYcNtSKyVHfZ2hAtKYUTiB3
         4jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZeKQvlyCTPaspcbWsMHfLRADw99yBjfcG8FJT8yXDlY=;
        b=Zch1AtY4bcfFgTm4/2cFi3dgjhaAoBT2BA2lDuBvnkvs4SEao9LkrQQnqZlrOsxrjB
         mituIoXErgbSiCbN7+vf4ME2CpSCB+JZ/++mh6enQbWmZ6PLFcT1fE0h9nRZFC2VagkX
         gmQ/oJC+e2yMKxPViyZ6yh+ekVYKJoZz7fL4w6v0QnTvDqG73zjIZU0l7mOr2a2R9F+b
         ecbEl08frg8eztzvTeXAuW15aVSqingmxJtUiy9z3r+9xWBZHfdo/K3tTgzy0sCejqb+
         OzUh3wVwNSZye+uM2/VIN5QjL5PVGCC5NsM0hSw1cR/OLGUEn5hbWkp56zPKoGXLiFqu
         DqRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530imYuDacjDwAP46cMgqw1ZQyWEwT0rKpGLPQlfm7UnHIc4mGAh
	oLE6xQ/JRMDacdkdmkJqZno=
X-Google-Smtp-Source: ABdhPJwQA9SMaCtvTGnYjcNCj9fetf1KrVShO3o2VN6SEeEqejCRP7mU7shkH4KgetbNI+rSdijeFg==
X-Received: by 2002:ac2:41d0:: with SMTP id d16mr11993062lfi.361.1627290581991;
        Mon, 26 Jul 2021 02:09:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls795766lfi.2.gmail; Mon, 26 Jul
 2021 02:09:40 -0700 (PDT)
X-Received: by 2002:a19:6d06:: with SMTP id i6mr13075164lfc.295.1627290580858;
        Mon, 26 Jul 2021 02:09:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627290580; cv=none;
        d=google.com; s=arc-20160816;
        b=gHlbh+jDt53eTAO+EqPohtHvHONB9dYzjz5WwJr3UW5xK8FTr0L+vwBkjOZ5Mk/bGF
         PyxCzuZFyF/i0KKDIGs+i21aPI9lnBTiSdaCANkP+BbVX6iPp4TsQf+X0XFzcr3T1pKC
         DsDSa66LvZDyzfK1OtMUYPEuCdpMysEjb2RhbFf9esLXHfjc/uhwZG0u9id49QViXawi
         jt6X1X7mJcpjRkI0lZlFMg8+2LIOqVdL2vgfDBlmf4BgZBlpS8DKIGChz9l+CCGZtE7x
         +Xw3vDnkXM3Gvao3Ntk0spYUl+K69OfuPmFX6IqZ11o/4vMUzJiJ+QYswZTh8+u0Xw3V
         Nk+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+AcqB0958jGsOXDZx27sAA/ukJDZf/SFq9TF4TS8BCY=;
        b=adx9mJQ5ppB03JKyX1mdbjfAqNDzsb8rEuAuAq9lr+T2GGC8Isozwq6av394CnITCW
         4saqRdc9zOM6nkmYMPG2Bjp9VGi3ZmeQS0lbya5BHkltGc+woFYiKWqDA+uJLcrZm0b5
         I9lFUj8HCjB+iKU3U+l0oNeJ37C7QtH9ZSFv3jJgP8Dj8C/cITC6gTg9yE+xc09eWOO+
         zrvjFpL/4/d0x2G7UZdnEEFuH1Rzif7jpKgu4Ijwt4E0HwsF5g4F4I6OWsWVdkoxtAm5
         KvVTRtEuARISmaw5dxsI2FBZ50ci4NsDH1lx3OrmEoIz1US5aKWuoDkv6oLp5a6rghu5
         0Rnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gIijk6aM;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id v1si1542586lfg.13.2021.07.26.02.09.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 02:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id p5so5058262wro.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 02:09:40 -0700 (PDT)
X-Received: by 2002:a5d:640f:: with SMTP id z15mr10144708wru.325.1627290580388;
        Mon, 26 Jul 2021 02:09:40 -0700 (PDT)
Received: from michael-VirtualBox ([31.168.255.170])
        by smtp.gmail.com with ESMTPSA id s13sm6446487wmc.47.2021.07.26.02.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 02:09:39 -0700 (PDT)
Date: Mon, 26 Jul 2021 12:09:37 +0300
From: Michael Zaidman <michael.zaidman@gmail.com>
To: kernel test robot <lkp@intel.com>, Jiri Kosina <jkosina@suse.cz>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/hid/hid-ft260.c:794:44: warning: format specifies type
 'short' but the argument has type 'int'
Message-ID: <20210726090937.GA46429@michael-VirtualBox>
References: <202107261104.ChOSQbNQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107261104.ChOSQbNQ-lkp@intel.com>
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gIijk6aM;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
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

On Mon, Jul 26, 2021 at 11:07:07AM +0800, kernel test robot wrote:
> Hi Michael,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   ff1176468d368232b684f75e82563369208bc371
> commit: 6a82582d9fa438045191074856f47165334f2777 HID: ft260: add usb hid to i2c host bridge driver
> date:   4 months ago
> config: arm64-randconfig-r022-20210726 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c63dbd850182797bc4b76124d08e1c320ab2365d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6a82582d9fa438045191074856f47165334f2777
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 6a82582d9fa438045191074856f47165334f2777
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/hid/hid-ft260.c:515:59: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
>                    hid_err(hdev, "%s: unsupported wr len: %d\n", __func__, len);
>                                                                            ^~~
>    include/linux/hid.h:1190:30: note: expanded from macro 'hid_err'
>            dev_err(&(hid)->dev, fmt, ##__VA_ARGS__)
>                                        ^~~~~~~~~~~
>    include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
>            _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                          ^~~~~~~~~~~
>    drivers/hid/hid-ft260.c:507:9: note: initialize the variable 'len' to silence this warning
>            int len, ret;
>                   ^
>                    = 0
> >> drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short' but the argument has type 'int' [-Wformat]
>            return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
>                                              ~~~     ^~~~~~~~~~~~~~~~~~~
>                                              %i
>    include/linux/byteorder/generic.h:91:21: note: expanded from macro 'le16_to_cpu'
>    #define le16_to_cpu __le16_to_cpu
>                        ^
>    include/uapi/linux/byteorder/big_endian.h:36:26: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
>                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/uapi/linux/swab.h:105:2: note: expanded from macro '__swab16'
>            (__builtin_constant_p((__u16)(x)) ?     \
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    2 warnings generated.
> 
> 
> vim +794 drivers/hid/hid-ft260.c
> 
>    784	
>    785	static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int len,
>    786				   u16 *field, u8 *buf)
>    787	{
>    788		int ret;
>    789	
>    790		ret = ft260_hid_feature_report_get(hdev, id, cfg, len);
>    791		if (ret != len && ret >= 0)
>    792			return -EIO;
>    793	
>  > 794		return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
>    795	}
>    796	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

The fix was discussed and submitted on May 10 in this commit
https://patchwork.kernel.org/project/linux-input/patch/20210510163428.2415-1-michael.zaidman@gmail.com/
But I see that it was not taken into v5.13.
Jiri, could you please comment?

Thanks,
Michael

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726090937.GA46429%40michael-VirtualBox.

Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU4V33VAKGQEZOLPK6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A948590D07
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 07:04:19 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id v13sf942560lfa.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 22:04:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566018259; cv=pass;
        d=google.com; s=arc-20160816;
        b=llV9GFT5WjFdQjEdubHp+WkkYCfU1AUQLynJrtW07tehGgYgzTjcbcAygccz3G8h1E
         4dEVYaZjCWFuL63MOAXssSc9tGM2/cHrxUuDZN36iyJpFD6FYy3TUAGkUMFsJiWnNydm
         UJpktT49iThPOWYDklyEAZSob1xgS4gmRebrWzXQ1eSwaxdQ93MRCwwHMnbeE5HbW2sK
         RXU54dapGAlSQh7wqWCCrdZwLtR+08oF+5zye/zxP0gZqK6zouYyFMq8ur9FVL9jL/A5
         tHxCJQ53zBn6Ynl/c2VOG3konxL3aTTVECJ1LRBbB7ytadTXsj7VgXAt2rqyjZTeBbgl
         R/0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=bRsSnU0ZPIrHU10TfQxlLdIiINVHla3ecztcJXy8AE8=;
        b=MVNQw1HnQkNVaAo4gmwO9FU4E2TD5gIhYVqwxlWlfmpr+3R5Jb296zXrkSeuujA4Rt
         pIVCIMBlnwl9oc7W7gASeX8Df+hqH9STp9sXTHlqNHCFmqnvkVCTn/j10DizdWWRonEa
         vl96mfs5Ofp8gG3S2yjGdb3UI4MLhdcWrrs+8MHGajQ5v52n96rIG2umvBzBKy9gJhz1
         sUKU1Qj3SlriflRnd2XuCE2OkGZL1y43N3g2iqfuka4HNNvQcPhYEX2odQd7tWtS/4xi
         vTx8gF13OTsy31WIeksHqo8DV3+Hi8fpUJnsOqswPUcLHWXNwCtjHIqcKTv1HQEhCW4F
         xABA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FntbtlSA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bRsSnU0ZPIrHU10TfQxlLdIiINVHla3ecztcJXy8AE8=;
        b=C2RTYNYvNEAL+0t2woIPZyNIyamxzDGJTM5QBkLC2rDgcuxY7MgOpEF6NRsD6JQH/p
         hKjWUcQ0erFi4Zro8p/lZ7FTMZ8cLGme+34Y7IaMXJCZ8B7YsmVlRO7dDHhf+E1EmT2i
         3N4RVbsSqBIyHCQ/Bm8oGZMCiREoQ1L8WgHqoW+IfDHQXpCYV3tbliPuR1cqztHFYWhT
         iZy/ZYiMvZmwhKVkdkYsg5B8vdfk6j4GUUbjX5t9OwfhkuPGNfrl9YcufbvGNMco8AnR
         QENEFieF8unva43Io7XOd1kOlwXi1K/U7ohJA5naPH4ELqavSr6asp74InCiHUkRmcu5
         kkMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bRsSnU0ZPIrHU10TfQxlLdIiINVHla3ecztcJXy8AE8=;
        b=EdXHEhJYin1bQWNBxCXsfJEe6abmfaH9VbDUqr4y2bQAkCIgOBHphbHWAOHmnkZuL2
         jLSVdVGeB5XcVy9i0vmSvQ6TapkFkyq1MT3sW0+210M7fBllh8qKmeJYzWwz+43kaElK
         dUBEatXfALsOhWmsChb3bYKHOwln5GuQ7sXqoXL4qPI2xhqJGp80g3ZuOKsV/7TVR4zy
         p7WGdPYdud91QOzA+p0s+nbnRxK1LRgHMrERCjkQC8opakTqGue7laR41wfH7GYxiSmb
         YSEh6RzISFVFDmbVw8SBDPbP+AbrBw3n0tjlhYPaFtFVPlinb5EuflC0owad0beDu4gO
         cOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bRsSnU0ZPIrHU10TfQxlLdIiINVHla3ecztcJXy8AE8=;
        b=sMzGbD72UD6uJ/lZG8PiGcNzSW0M6r8AMrrXI/CRZWCfSTPTxIqocCZjYJkANNGyxD
         fY0vq63UI1oIYuC7pB7OLFGTshuNIUi3xqkVPSn+Wz5q5IA459c2dCoiuscDM4dcwMPE
         chWc/APu8zRvuMS7CUjXLkJLQuMx4vl90pyWtH3nm2/jzC+B1HX79wP48M6QHS6K1Kd4
         1LZS0QJ9jD4ypCQZabqo5G4UZdLy9vQgYqDFHCmqiKDLMtxzNJzq0k3IiSVDWd07F851
         vfTNzhCkT3XmNPTYh6DYR9oseMB8n1kNysD1ueVM953dqpc1FOXfFI7Df7WkFit9J7tr
         0npQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVs16LJ9U1Or+QMcBAFGh0sWORxAgHh9G6t+Rt6AXcJXpNN+Oiu
	CVzRBDCAJQiC3/UMvjQkBYI=
X-Google-Smtp-Source: APXvYqwxonW5cQHp5Z2lM4b3DdRBEj3XI1yUfKpmPRXSuusrisKi1sUMAIJu56oa5pRulODUwVKxXQ==
X-Received: by 2002:a2e:934b:: with SMTP id m11mr7363587ljh.114.1566018259189;
        Fri, 16 Aug 2019 22:04:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:50c2:: with SMTP id h2ls942585lfm.0.gmail; Fri, 16 Aug
 2019 22:04:18 -0700 (PDT)
X-Received: by 2002:a19:914c:: with SMTP id y12mr6910821lfj.108.1566018258736;
        Fri, 16 Aug 2019 22:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566018258; cv=none;
        d=google.com; s=arc-20160816;
        b=jw37TUXPYsszOgUK382w0mhO13c1498A4BbVb2HIWjd5WqoslN4ZG9YLfsYTAabSGb
         cLS+ffDzSCQ/6mvHLpOdvYujtqfTG9Y2nNtpj6Dc2/2R9WTg2UsaSqyjth7ad0Y6rQE8
         d6AbgVwPixot/4yw8ylbfBK0SNB9fSwpX0Rs6jueI91xCA58yAnOUwIoRgVxosCKiyJR
         SwNAlQrlpQWwEeo5uEnf/a+U25JQdbsDPo2kSiz2qjwsJ9NiNaiDsKMghZYtoNCogL09
         1BKWi09sOVWu88C28Z34g4Prr3Q6r8HBh8+YIRIleebkPNE7dD2nkfyLYrSxlIuVsieA
         CcNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L6DABqyaUyZOMqXr6lkvYDDOwIwRLrHPYmA2NsFqvKk=;
        b=LrHCBg8CJcPGuSdVBtAhP52mbfL3vtShoeguCLyvAPJfQC7iIcfIFpMolqqv6Jume0
         1zacQVVN+7gkNrN6KdaHO+4YGy/KKjVAcJPxCgki1DxuVJZqddDCpa7cejaR1+BmIlRf
         OeWkZYxYGtATOkttUort3MwwuF2L7Onn6Kjuf1xy5koZb6anLqQUIpwMXZ6gmwlMLFth
         knfP2A/P43Paz7r4rjl/mSle6yfYBfhbqfYCkfJ1r8d6mpww8iDUAcGdCHFnU+ZD6xe4
         PNyhhle29PLoKc7Yf+VcR0Dw3Fd6hx2oJilLZDpLILTKT9etSi+q6yl4pDyHA+Pnnfsc
         ZjXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FntbtlSA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u10si421144lfk.0.2019.08.16.22.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2019 22:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id c3so3396555wrd.7
        for <clang-built-linux@googlegroups.com>; Fri, 16 Aug 2019 22:04:18 -0700 (PDT)
X-Received: by 2002:adf:9b9d:: with SMTP id d29mr14175758wrc.132.1566018257885;
        Fri, 16 Aug 2019 22:04:17 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c65sm10871080wma.44.2019.08.16.22.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 22:04:17 -0700 (PDT)
Date: Fri, 16 Aug 2019 22:04:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] gspca: zero usb_buf on error
Message-ID: <20190817050415.GB69583@archlinux-threadripper>
References: <201908161623.H6gwebfH%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908161623.H6gwebfH%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FntbtlSA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 16, 2019 at 04:41:58PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <d6898729-7c52-5948-5499-8dd03608c361@xs4all.nl>
> References: <d6898729-7c52-5948-5499-8dd03608c361@xs4all.nl>
> TO: Hans Verkuil <hverkuil@xs4all.nl>
> CC: Linux Media Mailing List <linux-media@vger.kernel.org>
> CC: 
> 
> Hi Hans,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linuxtv-media/master]
> [cannot apply to v5.3-rc4 next-20190814]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Hans-Verkuil/gspca-zero-usb_buf-on-error/20190816-123155
> base:   git://linuxtv.org/media_tree.git master
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/media/usb/gspca/nw80x.c:1579:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/nw80x.c:1579:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/sn9c20x.c:916:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/sn9c20x.c:916:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/sonixj.c:1169:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/sonixj.c:1169:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/spca1528.c:78:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/spca1528.c:78:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/sq930x.c:432:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/sq930x.c:432:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/sunplus.c:262:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/sunplus.c:262:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> --
> >> drivers/media/usb/gspca/vc032x.c:2913:51: warning: 'memset' call operates on objects of type '__u8' (aka 'unsigned char') while the size is based on a different type '__u8 *' (aka 'unsigned char *') [-Wsizeof-pointer-memaccess]
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                           ~~~~~~~~~~~~~~~~~~            ~~~~~~~~~~~^~~~~~~
>    drivers/media/usb/gspca/vc032x.c:2913:51: note: did you mean to provide an explicit length?
>                    memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>                                                         ~~~~~~~~~~~^~~~~~~
>    1 warning generated.
> 
> vim +1579 drivers/media/usb/gspca/nw80x.c
> 
>   1556	
>   1557	/* -- read registers in usb_buf -- */
>   1558	static void reg_r(struct gspca_dev *gspca_dev,
>   1559				u16 index,
>   1560				int len)
>   1561	{
>   1562		struct usb_device *dev = gspca_dev->dev;
>   1563		int ret;
>   1564	
>   1565		if (gspca_dev->usb_err < 0)
>   1566			return;
>   1567		ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
>   1568				0x00,
>   1569				USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
>   1570				0x00, index,
>   1571				gspca_dev->usb_buf, len, 500);
>   1572		if (ret < 0) {
>   1573			pr_err("reg_r err %d\n", ret);
>   1574			gspca_dev->usb_err = ret;
>   1575			/*
>   1576			 * Make sure the buffer is zeroed to avoid uninitialized
>   1577			 * values.
>   1578			 */
> > 1579			memset(gspca_dev->usb_buf, 0, sizeof(gspca_dev->usb_buf));
>   1580			return;
>   1581		}
>   1582		if (len == 1)
>   1583			gspca_dbg(gspca_dev, D_USBI, "GET 00 0000 %04x %02x\n",
>   1584				  index, gspca_dev->usb_buf[0]);
>   1585		else
>   1586			gspca_dbg(gspca_dev, D_USBI, "GET 00 0000 %04x %02x %02x ..\n",
>   1587				  index, gspca_dev->usb_buf[0],
>   1588				  gspca_dev->usb_buf[1]);
>   1589	}
>   1590	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

GCC generates a similar warning:

https://lists.01.org/pipermail/kbuild-all/2019-August/063293.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817050415.GB69583%40archlinux-threadripper.

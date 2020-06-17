Return-Path: <clang-built-linux+bncBCR5PSMFZYORB6G2U73QKGQEQF5MG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 792BA1FCA95
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 12:16:26 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id z28sf761277ooj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 03:16:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592388985; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+SgnU11vxYtcFMcfXi1UBTDEyTTd5ewd3s1qGqap9SgRo/1ClMQLJuAOd08dUvd0y
         yC3W/oLv6bIsGk21QLVSNHBJqHrNQD267eN20SReWCA+hPkgtqZE8mdtdOeRwsOSpXza
         95z8Mq46I2i0TpdYTURqE27UIXdcl9a0D0y/Ph36h7bD+t7UBzrXwru8uB7+jh9hpGj9
         TWaYWzqC0ZmTbfz6lDoyQtH8t/sNQjJ4Po+nibN8l/wrU6TmKv8SFuOeyvVOx3hqKFAx
         V3WYfYxUbj0xFQtl+6Ud8EQ2pZ07TgTa9rsGh6p6m33QRy1tKXqfmBKyEqihcp6MSNrz
         OKoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=eCwCVCsvkv+v1VjQW2Atu84d1VoQutL72/qqxaDNzQE=;
        b=v/4MQ+1Binm9VaDVbOowYAgYjWe5WejNDkmN6E8HvGzlVtLtUUEgIpTHjPtBt1mJWP
         5gsvD9ICpG5xrWLA4fvMSzGuZzeqO9RI9RQgAvsf27DFwma3q5ntqLFHyoDD6Djcx0vg
         MBzm8MWl61tCay7lDGWE8ghH0AsLg2bGDIWQNuIMClhJZ/RDzWWNBMPj1jAvbBDRDhCp
         d3DezUsknctCsk3yygX7B2AtgREknv6XrSbOFWN8hr+WEGMrMNaKSwtJBCUGPok25mLt
         M1Lxvk+3X1CeYFOthninnoGh2wNqi3SHOlBRvAOMkWufXPjrOIKjlhRHic1aGmU7szUu
         Ce0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="rVePF/SN";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eCwCVCsvkv+v1VjQW2Atu84d1VoQutL72/qqxaDNzQE=;
        b=bN+ZCi+BqBz06tbvr61UHUWhC2UNwWI2gfR6l+VcjvYGt9vfeg6TpGlQdLtUuu0HGc
         00E8N9TlzyfMDcMQu4n6/8sQrjOGZGEp8pDASmM6tAW5EoBtOh2LHjAh2kDWsVEkQCPr
         O3Ivu+kzwxiWHVIUZXn1IRqlQOltRSuUvCTkATXVg3vBFKshW/MdiLN9A6DwOxHAImn3
         pdqKriy2+ggqsFZFSv7+QyyekD0m7E2sCx0IEPVQcJLV8OyBe8sqDuDa1pWz85hc/AbW
         Xs7DekLoUughFN8uSmvIutsFjKDiGqF8KIBbP2o5e1rzW2d0TEi+76VvB8Q+HhA+33b7
         hLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eCwCVCsvkv+v1VjQW2Atu84d1VoQutL72/qqxaDNzQE=;
        b=Ng49tjaaDyaWn0kN0wc+gRcgUMW5Co8Tfe1LKO3nWsA5Ppk0wj9DX4rtWST6NDXK+Z
         C0F859bM+LtW7QAPaYHdkfTjmW72U8xTYbjgsZ/1QD3XW0E7RwGQHoYlavVb+DemY9YB
         wKxsr6Z3xG6v6BvUXDfiF3qGNQghM6AFTXdOfJzTv//aA8wBMwZEvceUt57TgiuatWT6
         h6/U1WIpwilltnza981a3XW1R+PJZhIwYTXNsJxqIhHmsfBJxxA/Mq5Li7KEgHlUPC0r
         A49LBbwaJ//Ay8/kSibWZm8xjH6UoEHcqm8Nqh5kD2Xc7JL4ylxeVlY9l/tyS92ETLqX
         Qjlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JhL4E2rFa7dCoH9U/MSwI/3hcWX5Rsn71lQ1ee+7skJiGLUYO
	MIpMSw+mBynvXR0gJtZURcI=
X-Google-Smtp-Source: ABdhPJxeQIQDgjSQpT9dDlzqHO/mXUfme/pRGjoQ+VTf9jLITmW4azigKSdgCrjqwSo476mWnHSZfw==
X-Received: by 2002:a4a:b791:: with SMTP id a17mr6118105oop.48.1592388985043;
        Wed, 17 Jun 2020 03:16:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9d0c:: with SMTP id w12ls106079ooj.2.gmail; Wed, 17 Jun
 2020 03:16:24 -0700 (PDT)
X-Received: by 2002:a4a:d292:: with SMTP id h18mr6151152oos.80.1592388984765;
        Wed, 17 Jun 2020 03:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592388984; cv=none;
        d=google.com; s=arc-20160816;
        b=h2zFjNZkkUZcMYz0sOeV+m2zrPYBpRAV09UFRhyNk8r8kC6vzatTAZAr7k//IAaG7P
         oAC2VKsQQRiQo5Ox6vjU0vzcxV0hbIZvLNRjGuPDlCUVedygr+WcmPykiR5ZhlATHHWn
         7zxP3b3zNNunC799XukgSEODVr1E8ML+4vjF91GWlXiTBiB+Lqmy/BJrafP5Xh7TpALK
         D6uu+A0Oz5mXg/NcAW2gRDm8djVUHtq+QC9pPQFJEfyxUbNbNh6h2Oo0EUZsjdtjEpMC
         hRsvQrBAi8m0aWEXuw/+oCfAmvR+ED9q+hKRn9t1wTqDuboA/ZI0w5Cy+P+wutXXZKDf
         YkyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=FUeFPqCFFNzhXoX2N5Ab6RMUrdBlgmpXjv4Bg0ZBXH0=;
        b=i+omJZCkWOTV4504ToZPrim7ZPKU7/RNzmdsGJeLeeolgeck0KXqO8X19Pr1+erDUH
         20ux9QogQ8ud8mYT5b95/cOJb1H+XZVEd+ivfO+gTv+ECnc0hR9XXP14JWMoEkwgSV24
         OvP+BIY//T7D9cAF5Zycv9lZH81MHImzjyOw0yQRR2jo08/RzVg14bIbp1U8TiFvt/H3
         droOTkfEBRtJ0CpCtbWFLcN72wO9Pq4+UW/w+1BOg9+QqyLbHqyILy9UIqatuG4GjrWD
         qkLqGuGUkUBC14jUVef9PB630+q1HS70pO9tym9/pG7uQo6SSFP5HTVcdSGM2JusTWth
         P7DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="rVePF/SN";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id k69si1209587oih.3.2020.06.17.03.16.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 03:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49n1Dw45gvz9sSg;
	Wed, 17 Jun 2020 20:16:16 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Michal Simek <michal.simek@xilinx.com>, Nathan Chancellor <natechancellor@gmail.com>, Michal Simek <michal.simek@xilinx.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, arnd@arndb.de, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
In-Reply-To: <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu> <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu> <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com> <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
Date: Wed, 17 Jun 2020 20:16:43 +1000
Message-ID: <87bllidmk4.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b="rVePF/SN";       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Michal Simek <michal.simek@xilinx.com> writes:
> On 16. 06. 20 20:16, Nathan Chancellor wrote:
>> On Tue, Jun 16, 2020 at 04:45:20PM +0200, Michal Simek wrote:
>>> On 16. 06. 20 2:27, Nathan Chancellor wrote:
>>>> On Thu, May 21, 2020 at 04:55:52PM +0000, Christophe Leroy wrote:
>>>>> From: Michal Simek <michal.simek@xilinx.com>
>>>>>
>>>>> The latest Xilinx design tools called ISE and EDK has been released in
>>>>> October 2013. New tool doesn't support any PPC405/PPC440 new designs.
>>>>> These platforms are no longer supported and tested.
>>>>>
>>>>> PowerPC 405/440 port is orphan from 2013 by
>>>>> commit cdeb89943bfc ("MAINTAINERS: Fix incorrect status tag") and
>>>>> commit 19624236cce1 ("MAINTAINERS: Update Grant's email address and maintainership")
>>>>> that's why it is time to remove the support fot these platforms.
>>>>>
>>>>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>>>>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>>>>> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>>>>
>>>> This patch causes qemu-system-ppc to fail to load ppc44x_defconfig:
<snip>

> I have took a look at it and was able to run qemu and also saw your
> issue. What happened is that when xilinx platforms were removed zImage
> is generated but it is not u-boot legacy image.
> Don't know details about zImage/uImage in ppc world but if you dump
> zImage you should see this.

<snip>

> It means only Xilinx platforms have been asking for uImage format and
> bamboo doesn't require it. It also looks like that qemu expect uImage
> format.

Yeah, prior to the patch the result of make ppc44x_defconfig contains
CONFIG_DEFAULT_UIMAGE, afterward it doesn't.

That means previously arch/powerpc/boot/zImage was just a hardlink to
the uImage:

  $ ls -li build~/arch/powerpc/boot/{z,u}Image
  7472 -rw-rw-r-- 2 michael michael 3073824 Jun 17 20:02 build~/arch/powerpc/boot/uImage
  7472 -rw-rw-r-- 2 michael michael 3073824 Jun 17 20:02 build~/arch/powerpc/boot/zImage

  $ file build~/arch/powerpc/boot/zImage
  build~/arch/powerpc/boot/zImage: u-boot legacy uImage,
  Linux-5.7.0-rc2-00247-g0bdad33d6\037\213\010, Linux/PowerPC, OS Kernel
  Image (gzip), 3073760 bytes, Wed Jun 17 10:14:32 2020, Load Address:
  0x00000000, Entry Point: 0x00000000, Header CRC: 0xF0283815, Data CRC:
  0x5E5A4D98

> You should know what format qemu expects.
> Anyway if you build it by make uImage and then pass it to qemu you
> should boot just fine.

Yep so you can explicitly build the uImage with:

$ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc distclean ppc44x_defconfig uImage

> Or if bamboo requires uImage to be built by default you can do it via
> Kconfig.
>
> diff --git a/arch/powerpc/platforms/44x/Kconfig
> b/arch/powerpc/platforms/44x/Kconfig
> index 39e93d23fb38..300864d7b8c9 100644
> --- a/arch/powerpc/platforms/44x/Kconfig
> +++ b/arch/powerpc/platforms/44x/Kconfig
> @@ -13,6 +13,7 @@ config BAMBOO
>         select PPC44x_SIMPLE
>         select 440EP
>         select FORCE_PCI
> +       select DEFAULT_UIMAGE
>         help
>           This option enables support for the IBM PPC440EP evaluation board.

Who knows what the actual bamboo board used. But I'd be happy to take a
SOB'ed patch to do the above, because these days the qemu emulation is
much more likely to be used than the actual board.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87bllidmk4.fsf%40mpe.ellerman.id.au.

Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBB7PVD6AKGQEQH3QJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 632D0290E54
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 02:15:05 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id h6sf4207559ybk.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 17:15:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602893704; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfYoUyjF2JT2l/0JZy83UhRIu0l2WHDIhUCgQjKuxW1SlkHhJ+DTJJf04YXMrgTXYT
         Hk2GnB/UWLX+BP/nG00GAoyEHmy16W6hg1X6uaKBnUWpGtQYzK958TvW/ca233VEF22K
         CUTkQQDSScv5AiBoU2Hk8G/Zk3g79EoF6VYOh0od9iGgOrxKYR8WZrSZovEUagaDzX3p
         sb2kOdMFcOMewICygX4roiKo3sqREMnXzTlbCDfn4Q8Kn3etLi8X6bY0oDBRqQAwQg1c
         FFK98fPnCwhqIXl4Sp8P52/p4VwxpQIfc5qAn+l1RasFlLW6U97o8uAedJ3vF7NDn6AI
         /ZsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=YbYQh1IlXaT+ksT1CqrbHEER4htK8TTGbvkG9T9VhoI=;
        b=OGTmri9uOJrx5CR1Wm5xRipJ4+x/e0ifrtsw3O4cSwCNfJN6IptkL6lkqjvy097EBX
         OSANPF+o9LJ+PIEG4pBiLgJRORPBTER33KK723FkSNNOe03UqZB9N3V4VFDj7z2J8iwu
         16Mae0nLgJAXXCTxH7T+ACbxDUbmuGeNnRuY/YCtJd4Bf+ndrZBpS3zqMW+JMwUdi790
         WVbBOfrHaATCX1tl3OROiaj/93v+zqe07d7unn5Brpm/G6XwbvG1SEN0QQ7za9R3/WqP
         bW1/ZTNAU8CCgmVviBWosN0Mp2X3Ur1tj/7+WHXXcr66JfQ+X3CGVNtsUfIHHVDZlcL/
         hGhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A32JPmxY;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbYQh1IlXaT+ksT1CqrbHEER4htK8TTGbvkG9T9VhoI=;
        b=e2QH3k5AAIrBw1QgclbbTZRUoffFhFz8t5GQavc5bb9qZkWdvs6rfhVRjMtetacjSm
         /Mg8h1NM+dCh5z5W/pUZurynsgR7QyD9Pm67CODDuJwPGzwF4zyb/eTUCVW553CHxKbE
         AsG9p/X5s9iejcb9hAMj6ageCJ6Qj80a8xgkOmLEQOH6Vz8Mt2USplkS4mR7oFc7I7Vf
         ZuaEBzpHAz8IwAijottLHcsEAVrbciFimhJ4uThQNeqFsYhQHzgBZpS3oto3Pwz/ytus
         eelNJnkFShCyD0P/gL80Q99PW5rf5Xtk+NxO2Wk7CghLrpJZkjfMuuk9tEsbq+bkBf3f
         Pe/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbYQh1IlXaT+ksT1CqrbHEER4htK8TTGbvkG9T9VhoI=;
        b=mdq7NaQ63QhI95pQeqaMJyMYae86BDvYaOwlR8/V2tUrJL4ZUcx9ANp45D/ZBZPvzg
         gF83fZvPVqCfukN3+IJeY/1dNnccyIy8GFiHntzb6uPODplZr1ynCZ69/LkJyekOxUeE
         gPbRTYQd7FGFcPY8QnKc+OYTC0vp1Vi9HOanc7DeSeSu2FelUeWAQfiAlkt04LFkWCYg
         EhhwjnKR67kKUgV5X0UKcnycKcuRGsjarw3pcVXYMKNYbgMkOMjKVqiiHQLgXTDJ4dW4
         DidRthA2KwIqR5neSnmfGQDL8zMoPhbZmBk4R/+qtaq+QyYa+HDOaSZzDk+SNAZiraCC
         fS6Q==
X-Gm-Message-State: AOAM532HMSNvrvvPzmvc6rqMcwII8huDRzfLJVgZz+J0uxZkLiNHeJUJ
	8xDi6xrCQlVSt9vi7Ih31Rs=
X-Google-Smtp-Source: ABdhPJyRGpYtkYapew/jdtBoI/a3uaDS7jX2FsKhCziybRGjjz04Guk1d6ISPLi8UaOkKRJQXqJ57A==
X-Received: by 2002:a25:1f57:: with SMTP id f84mr8173645ybf.75.1602893704171;
        Fri, 16 Oct 2020 17:15:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df0d:: with SMTP id w13ls247252ybg.11.gmail; Fri, 16 Oct
 2020 17:15:03 -0700 (PDT)
X-Received: by 2002:a25:f206:: with SMTP id i6mr8767405ybe.68.1602893703625;
        Fri, 16 Oct 2020 17:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602893703; cv=none;
        d=google.com; s=arc-20160816;
        b=dRRQMjZDvcARip95N9NSXR0OpJaa1A5Ioi90TwSBxE7RfYlJRlXknehTi9ElDFa+Cs
         PyGuAFhDDegjrQiWNH/bzU7/QSRIq+bxrvwe1tzTf/JsYFNCQt2KDMOK0v1YcMKZpnME
         TLuOhyXcAtmcMICg1rY6EcyxfFEEvoprjK4ZQpPJOOUwbwRRvkztXO1JvM9kC9vHTTrq
         VgBHEN8SR+Q9vabldhUuSmhYwxDRbD5PXh5U2l+LjpnP8OittRhjlYpNN3x2LDYUpsWL
         QGzF833VW8396jtwD9Lp6Rwv9ZLqFoF0xIik96L1cr97/0isCWcfAOOK55tz4X2Mgxwd
         rBWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=9HVA/kHTRrZhh86c4arn8D36RGtXtr/RQmB9xUt/oL0=;
        b=orGWi+exa0qrGMHcLDOq4uPBAYWDsDVNNKrBs+WdSA8aJdoyPfvMsNzfjp60iIEnF4
         9N60ZleR79P7Mo9Wr5RkqsYxpgfXDZUFXaGqjBErNgwInMDuBIQL3FAs3UyFW+lIxiEs
         Gt8gKWJ8lnrRlRwGFO5ActMNmlph9quMC5qhRo7TYRIuieRbNhN87roK8x4z2YJUF6dP
         X76KA07WM7Z3rsw5SicFdNldkCrleON0dvtKkVVHoZRIgPcDJe0PslP0yEjVcoroUMH/
         CIfVwhv5gvpk+dcZut9S6Yhmwg4GfYbaG8Ka3gBJxeGfUlfCaNh4lt4enuStNAVCY8oG
         MTxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A32JPmxY;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id i4si314785ybp.4.2020.10.16.17.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 17:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id s21so4475797oij.0
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 17:15:03 -0700 (PDT)
X-Received: by 2002:aca:1115:: with SMTP id 21mr4339969oir.158.1602893703172;
        Fri, 16 Oct 2020 17:15:03 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id t22sm1415452otk.24.2020.10.16.17.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 17:15:02 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: s390 - buildroot + qemu
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: egorenar@linux.ibm.com, Vasily Gorbik <gor@linux.ibm.com>,
 Joel Stanley <joel@jms.id.au>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-s390 <linux-s390@vger.kernel.org>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
 <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <f0164e2d-bb8c-0805-23bb-88443af11ea2@roeck-us.net>
Date: Fri, 16 Oct 2020 17:15:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A32JPmxY;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 10/16/20 4:40 PM, Nick Desaulniers wrote:
> On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
>>> Hello all,
>>> I'm working on integrating the latest release of buildroot (2020.08.1)
>>> into our CI for ClangBuiltLinux.
>>>
>>> https://github.com/ClangBuiltLinux/boot-utils/pull/25
>>> https://github.com/ClangBuiltLinux/boot-utils/pull/26
>>> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
>>>
>>> I'm seeing the following error from QEMU:
>>> KASLR disabled: CPU has no PRNG
>>> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
>>> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
>>> ilc:2
>>> PSW : 0000200180000000 000000000001779e
>>>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>>>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>>>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
>>>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
>>>
>>> This is via a kernel built by:
>>> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
>>> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71
>>>
>>> The booting qemu:
>>> $ qemu-system-s390x -M s390-ccw-virtio -append 'rdinit=/bin/sh '
>>> -display none -initrd /android1/boot-utils/images/s390/rootfs.cpio
>>> -kernel /android0/kernel-all/arch/s390/boot/bzImage -m 512m
>>> -nodefaults -serial mon:stdio
>>>
>>> Is there a preferred kernel config or additional flags to QEMU I
>>> should be using to avoid this error?  It's also possible that there's
>>> a bug in the kernel image, but given that it fails very early with no
>>> other output, I am slightly suspicious of that.
>>>
>>
>> Maybe that helps ? From my builders:
>>
>>     # qemu only supports MARCH_Z900. Older kernels select it as default,
>>     # but newer kernels may select MARCH_Z196.
>>     sed -i -e '/CONFIG_MARCH_Z/d' ${defconfig}
>>     sed -i -e '/HAVE_MARCH_Z/d' ${defconfig}
>>     echo "CONFIG_MARCH_Z900=y" >> ${defconfig}
>>     echo "CONFIG_PCI=y" >> ${defconfig}
> 
> $ clang -march=z900 --target=s390x-linux-gnu -c -x c /dev/null -o -
> error: unknown target CPU 'z900'
> note: valid target CPU values are: arch8, z10, arch9, z196, arch10,
> zEC12, arch11, z13, arch12, z14, arch13, z15
> 
> Hopefully qemu supports something newer than Z900?  Or can we change

I don't think it does. I tried several others, and it always says "Some
features requested in the CPU model are not available in the configuration"
If I recall correctly, the s390 qemu is primarily supposed to be used on
real s390 systems, and  the simulator port is not officially supported
by IBM. My memory may defeat me, though.

> arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:

You could give it a try ...

Guenter

> > 252 config MARCH_Z900
> 253   bool "IBM zSeries model z800 and z900"
> 254   select HAVE_MARCH_Z900_FEATURES
> 255   depends on $(cc-option,-march=z900)
> 256   help
> 257     Select this to enable optimizations for model z800/z900 (2064
> and
> 258     2066 series). This will enable some optimizations that are not
> 259     available on older ESA/390 (31 Bit) only CPUs.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f0164e2d-bb8c-0805-23bb-88443af11ea2%40roeck-us.net.

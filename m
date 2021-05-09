Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBOWS4CCAMGQE3M5KQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 693D33777ED
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 May 2021 20:26:03 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id a9-20020a19fc090000b02901c2e1fd355esf2909198lfi.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 11:26:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620584763; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXvhwSBsNwpV0furCQp8WoHWTrWka2NrilSJhhdhrnmUKBEZM6uG0AHNAsDWH+GWdG
         GpPbcP+jCSFN8a+TAVRI787EAWbhNipXCQDwlSheXvc+3uQZPOqjQw+UaCqeNHzwyHgL
         SbiYqcNYNXMcc4cpjq2kWfa2FU5NCdZJGtSeSOEh+H8pSzethaoD2vPz20QryEaLIgMu
         j8hZHuvczwRxvqr93eZ1wvop38vHj+21tl7k2mPQwNRpQS2uKU/a1BkyfK9Wnf0RgIea
         hZ4uWM3/ZHJ6kFPqAj4X0OS0rKaKhzvlZG0lE07tLFsk3E4QHWO/7MCcLcgesl1qlY/P
         mRmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=/OQuN8dtxTeIr7au5Z+FDPx0AFlnxm+hoCADShTzg10=;
        b=zfrODh/UWoLho0XT7L5PjABiWx0p821DcMWGE0/n7+dOLC0PcHSVWBtTYShlkGOUvs
         GkohSVIiqCNoLOPUMQovtOAHtkDmvN1Msd3+JFav+7uln9SgNtOfxrVAW5/jBwwdlCSR
         2qMztWF72g85TehqoARrE12GdsyewXjOn3o2cMpgWklkaDrTLlUI14fBovTKpHE78aQm
         Llq99zvdmHr/c0vSQlsUgTHIaFVc8oIyrp/03ANyfoGNuVTwl8yPiDF5SU5x9v04ZIRR
         4ART6Pg5dtp36L59WAyBimQLvrLngMGW3tvf94OVbKuKBPlGO9HeDcLzSUNc3posDC2t
         Ie0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAVGukZZ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/OQuN8dtxTeIr7au5Z+FDPx0AFlnxm+hoCADShTzg10=;
        b=Sl9QrW8C3K/bYK7vs71W8deFmv0Ir920zn1i1xW/AZjT4mslqBIDRamFrvnc/pewh0
         XwwGxbeCTSGsBLEeOUq2xid+vj4h25O3IpekdcWNOBGAP387iMevqS/aD3rURcBqoNxd
         RpupjjUdNTYPLTcD5WH7Xh1hoHX4UcDRbAaL52Y57Qqy2DXq7dbqmfqWsP+zFynXgWJx
         SiG2wdx9qSzpVbwxYgcmioF/VEl4CyyrEWRYfilGdj0K6lU0nWaFCwwFk70IyNaENfTU
         cFJsL8t4Lo6XKSy7tzGwvMluLT8/CMHjGe0outI1fbhI/cuJHCZz3d6Bi7BacuAIvhHo
         t8BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/OQuN8dtxTeIr7au5Z+FDPx0AFlnxm+hoCADShTzg10=;
        b=adZRxxG/AO8xD3kHCBjiaRn5XMilPZCj6OCeZPho7Mj65B6APhf1BXxjpJ4ywQJ4BV
         9FKlOZD22v56ZWSG6X+cqqs/kmtTkoxDOaF7GtM+zXqB+7E0lf1XI343KMPMbQn6zcDN
         qcyGV9Rg52JXTk0OQA8NYCwsxP0ehAhIeUWnZafxVJBwnDgFMxTaZLcmEdKE746VeeE+
         pZqj0mHP1uJcIRXhkMb2eo5s6/v5S6puF79jK4fuCJ7O8jHwfM2nv4GX9GPfP3NJFgJF
         gYbnKToJqXH79T9tbT7W3jbtGp76IE4Q5xmzrOZLjzmkUyjmhmHx0QMMflEgecL7dYXc
         m4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/OQuN8dtxTeIr7au5Z+FDPx0AFlnxm+hoCADShTzg10=;
        b=L1WzebRU4qaoKLvwLUzrwU87a6EP/eI1R4UaJDzGzQ/7RkFsskHu8wO/jd/55Vg3mG
         MreglaHfv3RqsBQam3Y4t5yTDhew3KeVHQdHyU0QpzBcpz+VJv7TUb/RhWN90xolUIQ0
         NU6rPHw/su96VfIYQ6bUt7NXL0WbB778zKz+KzTD5Wymphtd/p/VWACuZMxoJXVfI20O
         biSnJVialV3xx9qwIipGBCK7zVHNwXs/x8Fwd3gILWoDrs2jC+b6CamGR6pzHIu00UBo
         BoMkuHCYFo4qJRRxzklaqqEgrw688h5z/Py7dsJHEU/B3f6Xq93XfP4AqCGTdtHh0L7d
         4PlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Q8O8+ep9TYnJGP7y3HF7HcqJSJymxDWXu62B4VBluS//CWRn7
	G98X1EJQd57BiygHaLjZnHs=
X-Google-Smtp-Source: ABdhPJwd4Q76v0sWvs/62SvHqqURbCiql6BoCaI23cY/6BM0ZDhATonr2vZlQWQllI/5dO+OmqYWhg==
X-Received: by 2002:a2e:9251:: with SMTP id v17mr17351194ljg.507.1620584762916;
        Sun, 09 May 2021 11:26:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls8250814lfu.1.gmail; Sun,
 09 May 2021 11:26:01 -0700 (PDT)
X-Received: by 2002:a05:6512:2036:: with SMTP id s22mr15122551lfs.540.1620584761704;
        Sun, 09 May 2021 11:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620584761; cv=none;
        d=google.com; s=arc-20160816;
        b=GtRNRTFqTi1gvx3l1Xr2gYbQJJTkk+vVMpZWCYFgIBnGu3359AWtSsgtVaBcazDEMR
         4MVZCPSQAzHVTfAjqy+AiDT4oszjYSD38xFQDCZvhebWcQHm4bMttu2y1dE34OTuByXl
         8jHsgGcxkIeti/nsdcaDvW+wkM7MxQ+R7LIXBKIPmwKCym0EZZRpMXrlWhX4pfY+juY4
         wed+X9RQKDHEQglvt0RRH4M/AKeY0m9yv+qnqX9VQYruCtNd2+n/s4k8BQB4i9OB/Bzo
         7SBhqGahLNygaRShPy+uU0rGmIoWnOvTZCiGwA7FCdshc8xve9EdQd2tGLpQ+7YDT+qc
         ugAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rOrxa6aSiXbwul0GfHks5tuaylucNUuVWRXguFZdR+A=;
        b=R/9ebzbsKGEC+SuhOlKE8CMCkxO7j7jxG1nrkZEPqKyhbiAWUgm4tipERrS5TE4FNb
         LJciPyw6WgdflfxDWqATtdATnZJOyR1/PKfv/nyq/wT/WQNbc3wWxCYDqGlMtVfBp4DG
         G0/D31ParnVhVDZoaxn3sZMNNfkOzIFRXllR2W9ERr09sV3/wg5cdYBk5Ji0mfLRM9jm
         E6Mc9PhmbmtT+yjSj/abgMmU1umVbXCaSKBl4Orxl6hUJTF2GxaWivlh0dUWWh94j4cP
         YXll7/ZP+vuwGG82o0/mPJga6jFIMqr3KZeBgPsPoq6KhJCDIVteWeIQsr8wOl1sMC3U
         rDcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAVGukZZ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id e9si578560lfs.4.2021.05.09.11.26.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 11:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id n84so7946410wma.0
        for <clang-built-linux@googlegroups.com>; Sun, 09 May 2021 11:26:01 -0700 (PDT)
X-Received: by 2002:a05:600c:220e:: with SMTP id z14mr22464068wml.0.1620584761398;
        Sun, 09 May 2021 11:26:01 -0700 (PDT)
Received: from michael-VirtualBox (cbl217-132-244-50.bb.netvision.net.il. [217.132.244.50])
        by smtp.gmail.com with ESMTPSA id j10sm19120864wrt.32.2021.05.09.11.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 11:26:00 -0700 (PDT)
Date: Sun, 9 May 2021 21:25:58 +0300
From: Michael Zaidman <michael.zaidman@gmail.com>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Jiri Kosina <jkosina@suse.cz>, Jiri Kosina <jikos@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>, michael.zaidman@gmail.com
Subject: Re: [kbuild-all] Re: drivers/hid/hid-ft260.c:794:44: warning: format
 specifies type 'short' but the argument has type 'int'
Message-ID: <20210509182558.GA4940@michael-VirtualBox>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210506115546.GA1745@michael-VirtualBox>
 <0102b8fe-3edf-3d4f-2622-d1fefb36274f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0102b8fe-3edf-3d4f-2622-d1fefb36274f@intel.com>
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VAVGukZZ;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
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

On Fri, May 07, 2021 at 06:00:31PM +0800, Chen, Rong A wrote:
> 
> 
> On 5/6/2021 7:55 PM, Michael Zaidman wrote:
> > On Thu, May 06, 2021 at 06:47:46AM +0800, kernel test robot wrote:
> > > 
> > >     drivers/hid/hid-ft260.c:515:59: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
> > >                     hid_err(hdev, "%s: unsupported wr len: %d\n", __func__, len);
> > >                                                                             ^~~
> > >     include/linux/hid.h:1190:30: note: expanded from macro 'hid_err'
> > >             dev_err(&(hid)->dev, fmt, ##__VA_ARGS__)
> > >                                         ^~~~~~~~~~~
> > >     include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
> > >             _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
> > >                                           ^~~~~~~~~~~
> > >     drivers/hid/hid-ft260.c:507:9: note: initialize the variable 'len' to silence this warning
> > >             int len, ret;
> > >                    ^
> > >                     = 0
> > 
> > This warning has already been found and fixed by Dan Carpenter in
> > the "HID: ft260: fix an error message in ft260_i2c_write_read()" commit
> > on March 18, 2021.
> 
> Hi Michael,
> 
> This report is about the below warning prefixed by '>>', it's still in
> mainline:
> 
> >> drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short'
> but the argument has type 'int' [-Wformat]
>            return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
>                                              ~~~     ^~~~~~~~~~~~~~~~~~~
>                                              %i
> 
> Best Regards,
> Rong Chen

Hi Rong,

Sure, but since the report states - "2 warnings generated", I addressed
the first one for which we already have a commit with the fix.

I tried to reproduce the second warning you referred to in this e-mail,
but make.cross script failed since the "clang-latest" directory does not
exist under the "0day". As a workaround, I modified the make command
generated by the script replacing all "clang-latest" occurrences with
"clang" and run it manually.

Another workaround could be to use the symbolic link as reported in the
https://groups.google.com/g/clang-built-linux/c/qCjZblHi8lY/m/eBEEl2JxBgAJ
on March 27, 2021.

Anyway, I reproduced this warning and am going to submit a fix shortly.

Thanks,
Michael

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210509182558.GA4940%40michael-VirtualBox.

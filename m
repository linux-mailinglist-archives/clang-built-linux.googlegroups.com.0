Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPEUT4AKGQEBCWZQOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC9B21C1E5
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 05:30:42 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id i3sf5897242qkf.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 20:30:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594438241; cv=pass;
        d=google.com; s=arc-20160816;
        b=SM0dyQ+pUJFA92le4ILaepNMSMsEHS9gFMRlx/KONZV0hfuC4l5/r8xQmUu5gMnXG3
         s/mh89kCsQa8qMBhG+I4NY8lrK1wieYw28A12L6BsD15ybE42c6Xmpx+dIWMUnrAS0E3
         Ohk/OK6svYPMmK2YPbw4IR1AiORt1/EP8BEKQfNswhXMy5sQ5ebizDZyuSVxPhlIf3gh
         fuS6VP7S9PEvnCCfZ8lMxrbS9wMq20ObFBQ8KeMU3AErgNz4vUl57T4PafYpSQ8lJFwK
         40bR6QS7Pqi09B0Fw8eSHgqgo/F28m88pKW3fgvtdY0T8Tjv1CxKVSSkJHYa5GEeEnTV
         +CAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aKpcNy7xd7SdfEOe3wHOcYVCfAPzZ/WpX1zNMKxO+os=;
        b=lbh57Ti8P7Vp8dHXBn7T7Q5o9LHOQ2qUvG79LYFW2d3JVvjnegw/I5rYsAeNJNDdyn
         mZAmmWybdv9dX1TbVb3VNYRa50VeZbUfQLsO9zNbgPjPKhwiU9j71Qind5RB6hezX+hy
         XcK6uB+syNnR6w+inRzvngehGUB6dmeYlPphjnyiWFq2Fuw1O335QkeLXjg0RMlmic/k
         R4XFCxZC7KdhyiuuHxBZY8kigaqmdwZjVYvmRy7k9gxD1R3h8Ikx31+XpDDS1dS9GQKF
         kcRjqinXH2OGDdqy2f+6TxeI8asB/uAuELUVojGVnBXLns9Ov784Cxlc1JvOjPf8+6x9
         I6+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mrGcGC/l";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aKpcNy7xd7SdfEOe3wHOcYVCfAPzZ/WpX1zNMKxO+os=;
        b=EptqYZLvgalxH7WHwcDUZiMI2MFP/C3UDDrWx2RFqnMiF2VqB2TIXxS84W4ayesRAI
         aXs/eAACtIpiJUVnLFfVcwMfmrfcZLT+46e8WGlqZVm3IMM0CRl9Xr9SGU/A0b5TwQdQ
         Z/LoE7eHYCTAXhlXH8hjLc42JcLKzIrqLHW5OnOxyRWx4gK57W1oRlBEgm69esZEeaLy
         dXi/sILrVKuGkPwva6s+tx58FDFGVLcf2Xd7qyGZGh7AEiJU9Y8R6KEwM+evyv7S+E9Q
         Sd+uwa2/HlDgB3YK4juLziIPPSLB0nluYBU9Ua9uzIdia7JD2fcKfi78W1eG+8Vx/o2E
         2S4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aKpcNy7xd7SdfEOe3wHOcYVCfAPzZ/WpX1zNMKxO+os=;
        b=CuOuVHyWptAgvaojnz3d6t2G4u0KIXcQnhw4czFmpdMW6+/kFuiz4evEaNUolvOBEc
         n6x08TzaAIN4vGXixNRUwOiOdFh6BiU/+rolu4GF3D1kgUMWZXKE86V/XescjPHUPrOE
         7m3zI7/7K408f3h4f5X9raa+F+AT4LKkmI4BQPGyCkNGsLWKCmCq4zZKoHZbfs9i9PkU
         gczSayDTHu9/BT5LQPtn9XKxBZyrKD772PSkP4qYy2AhLllisL6Vd0QI2GtQ7GXHSzZd
         kZqi8jfX8BhQJMZiJwqGhNGMP0QSKiPxqfwyaq+pPK2SBrDQ/qQMAXuJe/z26hgE3vpE
         aaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aKpcNy7xd7SdfEOe3wHOcYVCfAPzZ/WpX1zNMKxO+os=;
        b=rtzt+Ju7/XGSUJ5u2yS7tHdeLCgGnEtdRd5sCxP+GRu/lWkTXuSgzhxIvLi6E3XyNK
         IvK6hoab3sSRFzR0TMl+4LOSLnNotGYzsI+K4jdgC2lMtfQVMNpf9tQ3/hpuATAQ6CmL
         R5VADK90E5phLgPUmuxpZLBfq3mN+kh81s0lYtw2E3fdipQVcdZdmL7MVNJE/S3lU90B
         f0vWgq8DheHWUgNRROnPG/k0GW3TP2WFTGoua7kFpW1dXI/eNkdrdIsS0gm9ODinpUwz
         0ff2ZpvnuqJPYp86+qhWan/X70AYQCHPUbSpucywOVmQX2flKbDiZEY791etXLSjggKi
         M9AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t//Oxg7WwJ8sdaU5Vyr6DHiiCZkyHNLEgrIgZ/Niw4qOGkRW7
	WFJNreoMTZT65tO6FOVaBsw=
X-Google-Smtp-Source: ABdhPJykZr4MyXrrM/aV44A6I6wVpXpSDz/nVjTkuhHFtuOoJbWv8yG9AUIEsnJFLhLOzxCN3qNsLw==
X-Received: by 2002:ac8:2a3d:: with SMTP id k58mr58760080qtk.265.1594438241065;
        Fri, 10 Jul 2020 20:30:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ac4:: with SMTP id t62ls4393066qtd.7.gmail; Fri, 10 Jul
 2020 20:30:40 -0700 (PDT)
X-Received: by 2002:ac8:728b:: with SMTP id v11mr78327567qto.297.1594438240778;
        Fri, 10 Jul 2020 20:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594438240; cv=none;
        d=google.com; s=arc-20160816;
        b=UM3W5gVk27EeWXzYhchEvd/iOGEuaLbrZIxB0ny4o9SRbMpYSVnnCITvwDXErbxVIO
         Z3l6AXsqays2UWmeSkMJ0DZTOx4FkkUhPQhmKVsaBHMXryVUneq/l2ByOthyZZPdwy0r
         0zASadduH17NF/raIL+MkdZBK6zELCvTeojh9pdNLTxlGZ/ONKUvXE+0z4QAQAKHSsAG
         lVrp+xQR25BJcLbXRp4T2apelPSZpXljv691g8Mbm11BZpZUFLqCjAIUVOpeLHA9xicb
         H49G/tXGxoYqu9N/niaj3qh+Piy0XtsDjUa8elU+Ff/76RW1Ehj3e61iOuFkO9mtQjDl
         VYTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1xGtSn3GzgnnxnxHEMkxu4A5bFvBvCATbzs0GEZtET8=;
        b=bSXZwll5gdYHW/ObHgLxStoDlKAQIQomkgqlIJl3WbDrxr15cVNPD8SnhYxtsFLOdD
         wWGtX07r1cguKDbh/NreUXMU97MPVI030HYAQVLNrBHbPoZj12tc7iKHKdhu7+BXpExq
         bHC3cIQyH7mD1WKAerDhi5h+qIWF1r5LLm+sEuBKK8VGL2Bk0pigSoNNXcW/kFyAq5u8
         /I12nE4NJZ3FrvzuuEH82M8EYtlPr0PspHkqhCd6+wvr2doHbQkVGeRTOw7whQXJumnD
         AwMvHZRJEJFCQ1AgUEbUAJinpJ9QP5Uo4qUH7lVH3mRJHfbVP48j3lHSmTn2WWOOdoOl
         7A1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mrGcGC/l";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id j9si467054qkg.6.2020.07.10.20.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 20:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id t4so6822554iln.1
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 20:30:40 -0700 (PDT)
X-Received: by 2002:a92:cf42:: with SMTP id c2mr9952649ilr.13.1594438240262;
        Fri, 10 Jul 2020 20:30:40 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id v62sm4506808ila.37.2020.07.10.20.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 20:30:39 -0700 (PDT)
Date: Fri, 10 Jul 2020 20:30:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
	Sven Van Asbroeck <thesven73@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: sound/soc/codecs/zl38060.c:614:34: warning: unused variable
 'zl38_dt_ids'
Message-ID: <20200711033036.GA4486@Ryzen-9-3900X.localdomain>
References: <20200710024100.GA2055744@ubuntu-n2-xlarge-x86>
 <20200710122459.GE5653@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200710122459.GE5653@sirena.org.uk>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mrGcGC/l";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 10, 2020 at 01:24:59PM +0100, Mark Brown wrote:
> On Thu, Jul 09, 2020 at 07:41:00PM -0700, Nathan Chancellor wrote:
> 
> > When CONFIG_SND_SOC_ZL38060 is y, MODULE_DEVICE_TABLE expands to nothing
> > so zl38_dt_ids will be unused. This is a pretty common construct in the
> > kernel and the only way I can think of to resolve this through the code
> > is by adding __used annotations to all of these variables, which I think
> > is overkill for this.
> 
> > Personally, I think this warning should be downgraded to W=2, thoughts?
> 
> We've had that warning available for ever, we shouldn't need to disable
> it now.  I had thought there was supposed to be magic which caused
> of_match_ptr() to make things look referenced when !OF but don't seem to
> actually see any sign of it.  The other thing is to just have ifdefs
> around the table.

While it has been available, it's been hidden behind W=1, which is now
default on for 0day.

Sure, you could hide it behind an ifdef for either CONFIG_OF or MODULE
(since you could build this as a module with CONFIG_OF disabled).

I just figured this would be something frowned upon but if that is how
you would prefer it to be fixed, then I have no objections to it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200711033036.GA4486%40Ryzen-9-3900X.localdomain.

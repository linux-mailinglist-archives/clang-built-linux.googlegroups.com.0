Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6E2T7AKGQEBB7SZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 082392D89DF
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 21:03:17 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id s6sf5375034vkg.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 12:03:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607803396; cv=pass;
        d=google.com; s=arc-20160816;
        b=rc+r4d6cFxuXsRMqyUl0RpqNVSWEcdeT5p/+Ebq2LMQtfjQGfUzt7j0TYvN0x8TIg0
         zm6Daa1Yp8s+4COi+1mr5UC0HciN0G0Inh6qUoRgklrn3KDD+rZk+ZBK1N7fGkafixnB
         TriuWYvzM8JjCboO4G/i7og4wJ1Y15jlvxZvnwT5tnke074oa985w24Ss/OJy3kJ+iYc
         jxG6dSltI2XCLdIXM9IBkiay5PnDeHpUpCLhM0bBlzM4w7FOTL1TcikRIssQmHl0/s7k
         JaVL1Wr3n7I6KDF2RrqodLVX/2r+kB+MDOrvslSCUCWyIhJp0YX4Ag7LGtkSWScjbH7E
         BvMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=yl4V7gFRHTxdU9cDPyUsHTYw9EXaFosAZvM4mvzL1Go=;
        b=YtxellfyZ6GHLj04O7Pxk/j/6aAi8Xf4tzMOYOi4bxZLbxCbSF9SL1gwbnXwcUtNPA
         NMHf+QxKGDPheb1xQnEjLNJC5VYwSbWo23OZQP7ev6ugqgQvmvOoYxmDOEADRrStKLXK
         R9NThyFqj6yeER1++K5nRsTMK9EL4srs57nNa/oqwQMczuVCPYA1CzCmlwwlpwf/WJyo
         QvDaBAv3IVYwR3BvJj9nLVj6QyeWe6syYfLqfkrjDZWIOtMXuFmjKi3T1rxwnUz5Lk0k
         dUnapZ9MrEcqxfK5rYNXcg/vDj7iZSYsExNx0Hl8iG9b6UH0mDsT4DXih8EgufADLaOU
         PSfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dKa2crAA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yl4V7gFRHTxdU9cDPyUsHTYw9EXaFosAZvM4mvzL1Go=;
        b=Pk8o0fETisujGJYfvhwO+PNnPyBAmns0ma+jpD9z37hneBojK8Ph0qTudgDpqKDAAf
         D00VUhXIN2rTJ+Vau07htOcdxnuU61g5M1rl5mg1TN3/ADapCzspE+Em80kQrd1W6ed7
         tIt4YQs6se2vhQUcqi5rJ40GTFiB9c+iLD6kb1gWZ3yK7f/e3xfSa7mmQLeq/neafTHs
         kPZhDl8xDB8PLjMyBh2a5+WDxtsZrVrI5Ol3cd2dbx1UYhHMYWSozKoHurnKYBbdRViK
         oKeAX1kUad44b7idcTqsRzFLx8cnM+JTUYyJvOJ8U72D/sUudkuc5biTUfWs9F2pQJqK
         0IfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yl4V7gFRHTxdU9cDPyUsHTYw9EXaFosAZvM4mvzL1Go=;
        b=Uil++wIzE7kmRzG0rnwboTOEi0OjZWqqznkqKHyL4IX25PzR5pvb14iaSv1M/AAwe0
         yglMIEFd71yM3OfrEha+nhS4ovt7+xz4PduRsyZv4UuTwilwz/MnMTL54Vivpwanhpru
         Nw//vOEB9OvcrMrNLpMTlepQ5iZL67TiOnzRmIAkAZVGr2BbBePULNswnKl4Q5l4Houe
         inAhej2wdAbRlj65h16qpa6WqbUfZn3dQ9egeEX+1HYm3UbNhD8z+5ahoncyXhWXod6D
         Ma/EO3uBVWV4OGDvjG4bb8m8XcEV2/e4Ahrqgu90AvpajQOsftFYXGadIJs5xouXBwyv
         I2Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yl4V7gFRHTxdU9cDPyUsHTYw9EXaFosAZvM4mvzL1Go=;
        b=MdEOB8Ff5yt33UXvXYHPjntBPQfyux2zZkwaoFhWe0wRycdXJJm2zeW6nIXjjNsgKv
         jspFY8Bw/VYAei3FEKyFsJPHA+IgUkX7lY251C484xOK8s1iI0REEEJTk9EXW7p5bHe8
         IssD6tSE2sJ2x9TdmlyCVisGKOIApaZgmvq7Rr+YxT7nk3FcDEuMsjCC7grRM+E57Uxi
         +LOwv1x9+O326AM4fEMkbi+JOBWG+LWEQxNijDTdHnuZ5YGlf7RmwXWnDY70Zw0inCJ5
         kNMcSxnZoio0lx45BJtYSZ/FgEtORxvntupDmeHe6TeusWZwvLj+P9iIEJbfTdUx2xMB
         GLqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532McYH1vzBu00gnie8qyBuyTKalUnSUaTTO2y+ms+AhTifRcAIo
	UEUQbQjWO7SuetL0fW4W1gE=
X-Google-Smtp-Source: ABdhPJyCOQ5RC/HByKEmiO7LdcsGu9gNoPgwySO18eLF1HRIl0CL7DefL1ALOu16qXmarDnKgjbvjA==
X-Received: by 2002:a67:68c7:: with SMTP id d190mr17218580vsc.51.1607803395978;
        Sat, 12 Dec 2020 12:03:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls1550199vsd.11.gmail; Sat, 12
 Dec 2020 12:03:15 -0800 (PST)
X-Received: by 2002:a67:c58d:: with SMTP id h13mr17231644vsk.34.1607803395573;
        Sat, 12 Dec 2020 12:03:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607803395; cv=none;
        d=google.com; s=arc-20160816;
        b=X6SwZ0BT76u6R2KSjNZhdpzyxyO6VquUteq/fSb8em04rmf0X//DRgRwe0yNh/4dYh
         Y6YtYlIz5LKIokDa3hJgiaXdVxlgRbKmOOvpYDYAeKqVE6oiOvmRc8hAmKC5JmlGtyNu
         DHfKkSuV02i+mHqBmhPrxp2TSRrAbVw0aS/eKGivUyFEXl3B+EQ2PQrbAWd/ypOaauIG
         X0JpCgKelFPfmJ9CFD/4urjol8EyX4FrZFhkNqTvhnJbJH6LQfro3kToCRtmopZ4QbPs
         HGkAsSTHqfTVFgpeRW7DUtBqb28hUFeuQCxIRlJGtdJUwzUWB5HsPTMnzyh92MirWlik
         bO8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2GFQLGUTCQvCE6e8Ung8Jj3pxPp+dowFgia6XDiErlM=;
        b=ZzUHCWshDd3QltCxa3fj4uvboWnMmO+/Q+ktnxhdEfmllLaDKTHWYp9LvgNhAzp2T5
         APBB+jmBZzvdlstKL0tVDOILiw0CTlOREYGoEhG+oqTx8AYKbQx6iY09JC3GBWkOzVkj
         hBjWW35KwRJoWM8nv7ZoK2fcZ/dlgHrk/s9csHM4TQMhXIi0q0eGd7QZjO90xwzAL+Pd
         RPVm08Zm5U56D5Fy9DLczJzaPiiGNLR3WRydaFJnQ5aGD0QB2mm2LSTkWXjQ4wW8+QpR
         r7JqcyJbottwaJCDGKPvphze5KLXY6MuruJA3gJGuVTjCPVlO7U2b9pW4SEpr2Cz/4w/
         r0Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dKa2crAA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id q22si863785vsn.2.2020.12.12.12.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 12:03:15 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id h4so7109050qkk.4
        for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 12:03:15 -0800 (PST)
X-Received: by 2002:ae9:f507:: with SMTP id o7mr22737418qkg.420.1607803395128;
        Sat, 12 Dec 2020 12:03:15 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id d66sm11867814qke.132.2020.12.12.12.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Dec 2020 12:03:14 -0800 (PST)
Date: Sat, 12 Dec 2020 13:03:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [linux-next:master 6953/13205] drivers/dma/imx-dma.c:1048:20:
 warning: cast to smaller integer type 'enum imx_dma_type' from 'const void
Message-ID: <20201212200312.GA1773888@ubuntu-m3-large-x86>
References: <202012112150.CCpStiwY-lkp@intel.com>
 <CAFqt6zb8O+yvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg@mail.gmail.com>
 <CAOMZO5AE6sxRrZiLws5LJ3-iVpGFx+eK=8N38863g2hG-Jmn=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAOMZO5AE6sxRrZiLws5LJ3-iVpGFx+eK=8N38863g2hG-Jmn=w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dKa2crAA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Dec 12, 2020 at 12:40:22PM -0300, Fabio Estevam wrote:
> On Fri, Dec 11, 2020 at 11:54 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> 
> > of_device_get_match_data() returns void * which is assigned to enum
> > imx_dma_type type without extracting
> > the value. Anything wrong with the previous assignment ?
> 
> The driver data is now passed via:
> imxdma->devtype = (enum imx_dma_type)of_device_get_match_data(&pdev->dev);
> 
> There was nothing wrong with the previous assignment.
> 
> The original driver used to run on non-DT platforms. Now it only runs
> on DT-platforms, which means we no longer need the platform data
> structure.
> 
> Please note that this a W=1 clang warning. gcc does not complain about it.

Correct. The clang developers explicitly wanted this behavior so I moved
it under a new warning that could be disabled on regular builds but show
up on W=1 in case people wanted to fix these occurrences.

https://reviews.llvm.org/D72231
https://github.com/ClangBuiltLinux/linux/issues/887
82f2bc2fcc01 ("kbuild: Disable -Wpointer-to-enum-cast")

> Not sure how to make clang happy in this case.

Added a cast to unsigned long or uintptr_t before the cast to the enum
should fix it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212200312.GA1773888%40ubuntu-m3-large-x86.

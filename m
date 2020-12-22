Return-Path: <clang-built-linux+bncBCILLLGERUHBBOPORD7QKGQED7KIJUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BC52E0E1F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 19:13:15 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id w26sf7755809iox.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 10:13:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608660794; cv=pass;
        d=google.com; s=arc-20160816;
        b=ch5vQatAhEj5ne1fmxWCKFthXR+mOO9BzSUKLE2W6Ru3u9NpdTJM3CkQHYIoRtZ6Fx
         VQzDIxjZLHGB5z8M0OC3Ey9RHIRW74Cipf0GU+nkjmenZuRLCx90BvJ8GQzKj+SnciYS
         OzG/hQ+uOj1/LpfZ9QHnTFaV0XPhPUOhZgTHAXFAaLGIRwV5HV5nKL4W5HGnvOr7zhks
         M89q4T/pYhC2gMjkFWgR2PjVU1z8+xRn6jN08Xi8QLwkED+L7DgbbrG08QmABw3eEXxo
         mMHRhDT8XVIyfqZEVlLCtYkTXyYtj1jw4nAOrPD0DGi+STh1mwnzh5E06wgjH96WNub1
         dOyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nX+bgVLJf6UIqhj4MxlyztOpTNAPdOU4RecZ2OO+kfg=;
        b=burOdENzu+8LwqY95zd48RM3VpiVyqjbmIk70NNcF2AVpZz9xIABlTAvKKdngPh/35
         OscEpNUrENchtm19CLZfKyTMKNwtj4rkmDYGGH4EgWQjHUUxg+TN6a4YT6Mb92PM300E
         iNodHklrzuIdrNvAOopYKERjOPKNxlek/FZ5eqBEKTdfy8gVrOdkFC1gBxWfhzphhKZg
         Xgskw2guTB3L29SZ657yW4BS32wg07tdXXipmkhgUNdUGSpIDqinng7tj36B8f3o7jTl
         f5pD27xOOu0ztYmUS9rAZ/1IyGrtSlg76hs/nE706fkR8TcbuGn+i3k+cigiv76kQJIA
         7yzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.176 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nX+bgVLJf6UIqhj4MxlyztOpTNAPdOU4RecZ2OO+kfg=;
        b=qKAw+b1lRqdKEJvaqLp2kwFTSgfpDDBqgK3MUfJXRZka0ArrIu6JMnS+oGhnAQqSOb
         9FjzJtElIEgkAHanTuWrKX/3AKhlrPEvvOpbbC7sylcJEPwgq9560tI1TA43JmiSSgvl
         2DTyuFc36xv+qXmhupxg2PeTnzbQW9/8Td+sEAjAxChT1prkGdUZcK8S7wkgdrfFW47C
         79lheKjbZPJ0ivTSXhV/Aq+wXPKeUtJyawEUc7NBh+PdIYzYgg+3ickW1aHvOYryLqOu
         o804SsG+utrk8ZYUS9C6h+qjexW5hO7x82avPG+UTKUGAQq0qKRCPJ0rtQFS3yScwBBE
         lQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nX+bgVLJf6UIqhj4MxlyztOpTNAPdOU4RecZ2OO+kfg=;
        b=W+RkbE6bczxuGaPWfQV6Bi6/LC4QFL4ROBxlGeKIIf4M7SB5yEqO6Yo7gvKYEW+ENs
         C2iXVJfEE4ShalbbSzFISJF+OnkdOGxKxBomNPIHtEfLgGNgngB6IFOkVgkXEWXi2GJd
         eUsC+QaXxyyOBnkIIpyyDKj5frhkmTWZA9X4vPS+LTM4iRDT2h8G8F/N+UR/U0eC+ICS
         2ddkT8OySlloKjw13KTDCKR09UsiqwYuL2E1xxvQq/S7WXOd1O6ZQu7SOqpuInXS46PS
         TK/cFcPcK26YcZYQj5bslEnNtZmnmfV/NqvN1w6YwNm1hbkuQB/pzPwPKd3YdM/Qfkcb
         axAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SIhg8yCIgiUFkMBN0n0eZHUSLkX7cHSNP0NKykBKU0Pwi0pe7
	6AyCQ/fMKM5lTp2j5XIqC04=
X-Google-Smtp-Source: ABdhPJwwwx+jt+a0iTrgH5SxAi14UKjqNrCSg4accFmyEG58lUkxFdFSmzTo8HwXpAONcG7fz4dh8Q==
X-Received: by 2002:a92:ce47:: with SMTP id a7mr22524620ilr.261.1608660794029;
        Tue, 22 Dec 2020 10:13:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d83:: with SMTP id i3ls11172707ilj.1.gmail; Tue, 22
 Dec 2020 10:13:13 -0800 (PST)
X-Received: by 2002:a05:6e02:1a6b:: with SMTP id w11mr22625529ilv.112.1608660793581;
        Tue, 22 Dec 2020 10:13:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608660793; cv=none;
        d=google.com; s=arc-20160816;
        b=dZE8ypdxXQu8bOFG585Q5v2WplEEi0X77+cMH6VzvRH9jwjNFEBlT5pikzJIU2OeJi
         EIoEBuLLBz3Wh0q5YEupRRhVwyDSq8xgEMK9UhAbDsoERjgr/Cj3nzaIcKNF4LWeBHl7
         Tckw+1qaG8Z6xJ0hTYdWAIaBBKafNTEi0/L8YfeLvOWV8S9ENu+JC8A4KbxmpAvMci2B
         N6J9zo9tAwRVMUrBrgkMyPqxNZnFDxfqAdwf10A8ZWumnjaEprakOTXeT96N66UnKR8f
         azKJO/mjf5pFNQiLvpvpXdAxocJdP43adMQbT5jPAZDpxxP+HG/4jmBDcJGPhOb4yBb1
         aLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=WUU6BQd9q6kn2A5WELfD/J1sK1vcnhrde0ijHHBkbXU=;
        b=vM+yQ4xISkkPRFiaq+NjaSN0HxtKiq+0PgBPhp1BOIt1VjBlXnNrGoIU5cam1K72b8
         DvlrChhI4yNrtj97MsUS7sf3/fi+y0J/uwSf50OeEwGRl7OQl8UWRVo5F0fxLAJpvm9+
         FpDWKCWX0IulgFOLKBnFpI/ftX5XdIO1Iykgdi9rFzSUqbyuLwx5XHOsgwc42Zc2R3+q
         oBPrUayR1n+oZXHP/LhcqKOoV1fqvzebmpa3DJ+1BcGJoCdFnfQrvTCcBZWxk7izfsYA
         cuefuV7Ot36NHITJiExwCBFK+p0+HZEW4ZheFMhjZqEadz000EEKiB5+F1BDMj/TSYBl
         0Biw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.176 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by gmr-mx.google.com with ESMTPS id r17si2046835ilg.4.2020.12.22.10.13.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 10:13:13 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.176 as permitted sender) client-ip=209.85.166.176;
Received: by mail-il1-f176.google.com with SMTP id x15so12815395ilq.1
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 10:13:13 -0800 (PST)
X-Received: by 2002:a92:cec3:: with SMTP id z3mr21438359ilq.256.1608660793277;
        Tue, 22 Dec 2020 10:13:13 -0800 (PST)
Received: from google.com (110.41.72.34.bc.googleusercontent.com. [34.72.41.110])
        by smtp.gmail.com with ESMTPSA id x5sm14830112ilp.55.2020.12.22.10.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 10:13:12 -0800 (PST)
Date: Tue, 22 Dec 2020 18:13:11 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Wonhyuk Yang <vvghjk1234@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 1888/14054] WARNING: modpost:
 vmlinux.o(.text+0x50f236): Section mismatch in reference from the function
 cpumask_clear_cpu() to the variable .init.data:pcpu_build_alloc_info.mask
Message-ID: <X+I3N/fSXzwTuyp3@google.com>
References: <202012220454.9F6Bkz9q-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012220454.9F6Bkz9q-lkp@intel.com>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.166.176 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Wonhyuk,

On Tue, Dec 22, 2020 at 04:07:59AM +0800, kernel test robot wrote:
> Hi Wonhyuk,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   4c6ed015c2a57c3b385265895a69a87f87da8e28
> commit: 6c207504ae7937ac70a1d753c250eb6ab125d70e [1888/14054] percpu: reduce the number of cpu distance comparisons
> config: x86_64-randconfig-a013-20201221 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=6c207504ae7937ac70a1d753c250eb6ab125d70e
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 6c207504ae7937ac70a1d753c250eb6ab125d70e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> WARNING: modpost: vmlinux.o(.text+0x50f236): Section mismatch in reference from the function cpumask_clear_cpu() to the variable .init.data:pcpu_build_alloc_info.mask
> The function cpumask_clear_cpu() references
> the variable __initdata pcpu_build_alloc_info.mask.
> This is often because cpumask_clear_cpu lacks a __initdata
> annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

This is my fault, I didn't have time to look into this until recently.
The issue is that the second call to cpumask_clear_cpu() is not being
inlined resulting in the warning above. Because this is purely a qol
fix, I'm going to move this from for-5.11 to for-5.12 and figure out the
best way to fix this warning.

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2BI3N/fSXzwTuyp3%40google.com.

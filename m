Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFOPY3VAKGQECTELT4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C37D8A4F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:53:27 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id e18sf4153313pfj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:53:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565632405; cv=pass;
        d=google.com; s=arc-20160816;
        b=fL06NJzdsWT8BStIHFuZpxsMoynCqDhSH+Qm5oDngKivUOpVhNi1y+fL5Tvjs4RW6k
         Q9i9gD/nvgQYwv8JQC7k4oBoxJ/6rEsz3MK4TtHAtL8ZvyclQjaHSgSiot6++6rjMTbP
         wayuRP8+3YRc35WK7Qq4IGF1gb2HUvAOCOGk6T2pqvybJ2gjLKL1mIhlFK94JqsIpllk
         aMhK20xbWQPOzZBioAMfPEF4vf8cSos9ZSpiU0hNL6/N6h7RIyJL/BCVkH9U8B0yyS+e
         BdcIv6jXfEVPArCY9/1RIeNVCvnkoZEU5ZplfbzYdcnCcG9PU89/AK8Mk0t1/1NmKRlT
         zHAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tBQQo9yGo40f8XEtV1c/p2KcKJCg+44PHEF9xbxfYHI=;
        b=RapQ4D3MoelLheks3JKqIlghBd6KCQAToHReADnQq5+WCKYIhunflwORSw1N81J10+
         ATeclmgAqmi1IKxJbgJPrZC23r52Jn0po3+cyIZUOPSIbEpw7Bn9k32nQ0J14rW0TAlf
         Nv86lmihomV073vfWPwb3zPCYtrm5Set3taWpGCyToODPzqo79rZlBQwdS9GS0GGBHWq
         S2kph6ZGr2IJU1V7gw/Xzn4rQONAa6P2F206Lysfx0oIyid3DUS+CYAI5naMzKRIgHvt
         wRoy0bJTBu1GKeId2RehPhPKCV2v1Nj64SnEOqkBE1oIOG8j5tlqYWfgNIeQes+R9ueh
         hKvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3Zex4kJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tBQQo9yGo40f8XEtV1c/p2KcKJCg+44PHEF9xbxfYHI=;
        b=Xp2JdjaR05f47zp9P1uyB7gvXDjxq+oNMx0461RSvC/afU9Byyvt/WpW0pl0C6s4Ul
         FHOH51LBTRQf7ffkcDacAXKmjvV1nomVxJk//9mkF5VtpUyW8DYLoWzgmCXab/gR1HHX
         HKQeczKiTLN06JxvBvfDJnho8GWMXeC3GZ0rw1Kq4y2m+RyOFlN1PIu1vg7xgCAuu8sj
         E6fnxtQIWhor53FNxH3IwqjQhQQOmrAhqN03HoCxPPZSwWZpUMVZBjRJRSOpRJfum0Nr
         ez5q2+2aMXQXXa/TkFCUAWvWCQ+dkbAgqXDqNFQWPfSelJmV4kIm6knn8kKi8bpILmuC
         +Aiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tBQQo9yGo40f8XEtV1c/p2KcKJCg+44PHEF9xbxfYHI=;
        b=BfT8J/95RguRR8/HJgFK8QmCaMJeoB7KqBsrl+mLTN0Ns4Dof31hTbE4l+PnaK9k+L
         7WqS0allAKfuaaE4+iaO2Wrnjc+Sm2sJg6cAWbx8qTIkyKXPjA088EvdnRe603bcTAGB
         5GWc1Qx97HWOJ89pqahA6/ZG3CoHnR4GLWzvN625leiCTXbXPIxdNt9t2FqNBbbtiaSs
         mYvFsmPxta0HgClJHkZcwftkgqGjozeFWBToW/YNYVETwy1C+zzZ9pmyDfMAxjsq0W5j
         z9P+KNGNnBxwSRYWuMCt+W90BbvL06/v+1e8CRiNIIqEafyYkUWcDCXjq5H73tmm9ebo
         jcsg==
X-Gm-Message-State: APjAAAUbxyosxlG72iwEtUOmZlhqCZ2HlKiww/b9QwDIOGwTKaUXA/qn
	Y305rdTSSOqOStnIcxMZSCY=
X-Google-Smtp-Source: APXvYqxtkbgGeVPPLtHP7WuSHV119zigv1gm/E9RkKXFRiUapQnY34a7J+22WENifiL/wRCQnMiBAw==
X-Received: by 2002:a65:62d7:: with SMTP id m23mr31228838pgv.358.1565632405702;
        Mon, 12 Aug 2019 10:53:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls22742265pgs.4.gmail; Mon, 12
 Aug 2019 10:53:25 -0700 (PDT)
X-Received: by 2002:a63:7a06:: with SMTP id v6mr31660159pgc.115.1565632405312;
        Mon, 12 Aug 2019 10:53:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565632405; cv=none;
        d=google.com; s=arc-20160816;
        b=IsAMmo8+at7sb55o3qW3zxPGAnDMm7KhskGCSuIYWobXv8QQgvdPuwYcU6+ootpfOL
         63Ea1jtSxjbn1ZudJRvaHX26EZiFea5QcoR2konh3+luqtFBEtKJLbHSGkaaqgwQujSr
         0icUsYhE0qqFAblYB/QzNeakYgnblFgF/WGVVFYWhIMBKNg4C/NhCxD6CuZSMGt1vB/i
         H25P4guwy25wxRTfkQH8CVslxfdiYRGSEa3YGqBH0PSAXUyAxNER6+s3HzFYWpZtEljS
         sM+4uRYqeUdsMQOutcDHSXfxWltahyj/BFIrYhkMVVEGIjM5Lo6rT3eDYdJbEwJFpSHp
         Ysxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1JGp3X05Q3gXPZTbnBTTudC8MDp3XThnqK4u5ntprqM=;
        b=yTMCMgYe2PC0/5DQJdVFyxLHOqY3xw784adDJ4shGXlHIEOtY9pz8iH72/hDe+FpSz
         VxtQAXV30F1rhZe31i/uwSuTuzatERLRxYV2U87D5E0BfA4ZbkHGAar5zOK/ETNwzcsp
         fZuolcYT1cdYATanKAoNh0aY7D+0s0GfUmDZOI7Hix/J4TTB9oeOMMgHibRwvc54Pbvn
         gthCuZAKwYAC2Mu9jL19TCH8C4R7p/mUzLAMxtyn97G8QaAqNOiVDAlDEhn+0Tp7t5wX
         zaIMcDp6XscdJZM01AEasJZSlMupWnFFZqiW/m0jEWWv3ePaFVJaPPbrJmX6kaWG4u9P
         yS9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O3Zex4kJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id ck6si3632241plb.4.2019.08.12.10.53.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u17so49860683pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:53:25 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr30786902pgk.10.1565632404616;
 Mon, 12 Aug 2019 10:53:24 -0700 (PDT)
MIME-Version: 1.0
References: <201908102036.x9O3ho1y%lkp@intel.com>
In-Reply-To: <201908102036.x9O3ho1y%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:53:13 -0700
Message-ID: <CAKwvOd=r0sQMoW1BOq0CvrcnijEdcR3Gbs+9z95zk1mmaEyXrg@mail.gmail.com>
Subject: Re: [luto:x86/idtentry 11/16] arch/x86/kernel/traps.c:323:28: error:
 conflicting types for 'do_double_fault'
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O3Zex4kJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Luto

On Sat, Aug 10, 2019 at 5:22 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Andy Lutomirski <luto@kernel.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/luto/linux.git x86/idtentry
> head:   deb8daefb7aead546145e57584758a8df2170646
> commit: 47a729450b5037a1675d464df6c563afe8374d77 [11/16] x86/entry/64: Move do_double_fault()'s CR2 read into C
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 47a729450b5037a1675d464df6c563afe8374d77
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> arch/x86/kernel/traps.c:323:28: error: conflicting types for 'do_double_fault'
>    dotraplinkage void notrace do_double_fault(struct pt_regs *regs, long error_code)
>                               ^
>    arch/x86/include/asm/traps.h:77:20: note: previous declaration is here
>    dotraplinkage void do_double_fault(struct pt_regs *regs, long error_code, unsigned long address);
>                       ^
>    1 error generated.
>
> vim +/do_double_fault +323 arch/x86/kernel/traps.c
>
>    317
>    318  #ifdef CONFIG_X86_64
>    319  /*
>    320   * Runs on IST stack.  Tracing and kprobes are disabled because tracing
>    321   * before CR2 is read can corrupt CR2.
>    322   */
>  > 323  dotraplinkage void notrace do_double_fault(struct pt_regs *regs, long error_code)
>    324  {
>    325          static const char str[] = "double fault";
>    326          struct task_struct *tsk = current;
>    327          unsigned long cr2;
>    328
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dr0sQMoW1BOq0CvrcnijEdcR3Gbs%2B9z95zk1mmaEyXrg%40mail.gmail.com.

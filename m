Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVOFQ3YAKGQEJLRTXLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BD5129DD1
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 06:32:06 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id a2sf2094184ill.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 21:32:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577165525; cv=pass;
        d=google.com; s=arc-20160816;
        b=C7cEFcUEW+zVd5NSICih+mu2F9btxnjyhf86ugvLM1O3gUG7zD4N73d5UCxiQ5DUY1
         v+V8adFQR+NpZP93ahcs8plGuQsgyy/QS4NpQNIiddwwX8P+OCSq++rMQW3L6zKzgh1F
         CJaSCmUhk40ljJFN7oJl6/BVvQ5qrl8EsMHfCyRtJ998qm5b4uGaW/YMo3Ju3TJ1JcwP
         3StiRSmplr5EXrKkLio/1n/keomsCNi3i1EioPCvL8d1ApMwfbXI1YhEL/J0v5WFhi+m
         kDpAQW+fEgRIw+CNVGlEBszavslh6GKRtLO81UgbgmhWXqQ70RWUJE7zeUKhNQ/cyfeO
         ALSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=4rLjWK6MyBKJfcHDmuIAIu5kgETCzCTDBjq1tVWsvq4=;
        b=VFnKUE3Wpjm/u1kd78tykxE2IBNt2YsP9Os4MljscjE/1CjRrhQzbMm2KcuP5aB7BZ
         xqe0wJXP5u1zZ34BbwzytUPkS6kBPNI7RSO0L9Qq99aY3VRPiudcti/0oipZrOUTsMGv
         32Kj9/iGWNQZTrPXnRXblJkB2JwBAyDVMfiz0CCKbOJ/FH8wNLbEaFmZAV5GLf6/zuIu
         OT6RXq2A5cAfaE1tLJGH1r6mPHw6vIAw8lK9JUFb5XOAxiG6VgAH4uweRjPs27mgwdpL
         Su1bmG/UsMqdSZP4mIHwcO80lUziAp4xQAh2cqSoj1A4yIBHN94afWABo1ZUx/cZCLTm
         cq4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lPr3D0eJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4rLjWK6MyBKJfcHDmuIAIu5kgETCzCTDBjq1tVWsvq4=;
        b=qOu3Cm4mgzfEq7SpW6LnMVa2ITTC5JYbBrsXp5rctarkR2lhtAZrwCK350H2N8TF3y
         nz8l8lWNRbp2NnzwEVAr8KLxp+wrXwo3pkmUip1aSgZmVtGuFrYx48+j3gR6Lc59tZyK
         XagPnrsMfkNW9KhYWpqdGzVmfma2zS3uJDVw06jSlT5V3NA7QgUnpzP7WgYQ7uheB71S
         fF2sXW2bOpMIQ4vEf8BrAFsftesfhFScBCf1FmAU0rY+Byi17Wu0frXjdA76TC4Nbftz
         RckB6d4O535be+/L5yuD0Won3rTu1FG/xIV0lBCAdbNvrYqlWVu/XorGc7DwP9P5nezC
         i4iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4rLjWK6MyBKJfcHDmuIAIu5kgETCzCTDBjq1tVWsvq4=;
        b=ireT0tFzwOIU97+D+iRYxlnRGzneuhwPyb25V9Ume+VWYIlJxsOCt619XdNRqJKD6C
         QJJ1x9CTQxe1nlwKrRTGcnpdSZjAfLIInLROy+aeLBOFkXoEBgLT8EyCwiSxVqSxEYRw
         Q7045glm/KXjdHEOIO1j6WFIEhuJrRIfV48LX9Xdl7YMMp64fThx5GT7YGct3e9qtX46
         H9QOZ1SPea0A6NNp3kzztkYOyCHw0zgr2tHvuiHiHtR3gkQ/PDyxiOSh/tgq9QPbeq2o
         bLPMBFgNWdRbSV5wCRz0CAAVBEqEtzBa3FTQrLjCByaw6Df92IlF3rcQ4W0ZaRgJ/HB1
         9ieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4rLjWK6MyBKJfcHDmuIAIu5kgETCzCTDBjq1tVWsvq4=;
        b=H/zpAugym9i3rRRL/DEImUH+R9+Si39YKOgwHsTFEozhVvLuQShjqUV5bO/XX23lsj
         4PpdSrQcSXTIcxFcpmduR0uv6CIY4CA9ZASMaHIjzl7C10qVaLbe0E/dPbsPC0X+x7R6
         UEn8FN25EIBTE1mguCH0BCncEhHaeYcwpAJzS/uSVF1AQNWYbOyYMjgoFFJeqXBgdNGJ
         03VMlnsUQrcl+vIqJTRy5XSXjGzaE2L0qTMPF9duE7QEUt7c/RA2tna7sKJuuGgVcIOW
         jBtfuqLSgo2Jq4ftdUwUQg5Ff4WZYcsxLTXMeRHlGtaqUJwLBm5OLKYlG9SZ/LLai2H2
         BPUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGr0XY4etQhV2tmSMLDobqkeO5MRcvBa6MPfnT+COvV/ril6dT
	E8zWD21FALqsRvf1IOhJr50=
X-Google-Smtp-Source: APXvYqyMG0/XtN6q7Y0zPwQakkQ2nSgtc9Ztr5872MnP++iMNwQSCks4vKRKXPtl58rypsAZjnn2dQ==
X-Received: by 2002:a5d:8846:: with SMTP id t6mr20698304ios.63.1577165525489;
        Mon, 23 Dec 2019 21:32:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a1d:: with SMTP id h29ls3113479ila.9.gmail; Mon, 23 Dec
 2019 21:32:05 -0800 (PST)
X-Received: by 2002:a92:9184:: with SMTP id e4mr29721389ill.70.1577165525196;
        Mon, 23 Dec 2019 21:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577165525; cv=none;
        d=google.com; s=arc-20160816;
        b=a6NUKun7DLa+pI7b1tNW5PZDo7dPc26jrboqYXQHWdw9buT87VMk/rAlKyr7qaXUey
         NSQFuL8e8GtouRwId2D9w0MfQ77RrjDINxcg8TJQWLf6f9QGReo9kcfChLpKxzRrFmT2
         o2T5+NjnZe78deB9e9tBGnYgDxasl3I3Vc8Jibw8TyWEN9Gr1ePj9kULWZmH5N3J0h0c
         C6arvtSGhWZUqgyS4P0tA9rJzpZUx5FffATl6Qf7R3Wty/7hW42PXOmk0jE6PDNW8RdY
         MqRJySwVD0WCD9N80PntudglZZuLfqHMOeSsFRD6RoH6GDzf2InoGAUatxkBBWnTFVvg
         TpPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q08hSwPIwC8RpRP2trCd/l5XYk/gTV9q63XnyEFESHY=;
        b=Ylf7hvZrsUjIEwlWIifKbioM5dHWBtcD3OkjlpN+be7hjoOevonr9Fr74V/+Li8vdp
         fhs3k6RRK1u7b7llOoduFk6xaohr2rUUnDG95RB6Jz7AucFHajyY4nBnBoItFK7mEtUH
         WSAmb4dpkIIKYph040tLyRn0pNTZu4u0omERXmoWQ08Qx9plSeRobXNO6Qdm0E8Z9IrF
         kBRUgVAZZcj4ZJgoGei36M9QZP0cG2B4X0Vfrwm6lO9zZUrl7QwdCeyy50p40zw2a9Jz
         e3kdzSFX6vjAQDZInzyxwvDguYPArjfUJv7hlidOEzFhkjEDP0EN9fUXai/WKMI5Wret
         BNoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lPr3D0eJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id h4si1254518ilf.3.2019.12.23.21.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 21:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Received: by mail-ot1-x32b.google.com with SMTP id r27so24960900otc.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 21:32:05 -0800 (PST)
X-Received: by 2002:a05:6830:1e2d:: with SMTP id t13mr37636405otr.128.1577165524899;
        Mon, 23 Dec 2019 21:32:04 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w12sm8025185otk.75.2019.12.23.21.32.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Dec 2019 21:32:04 -0800 (PST)
Date: Mon, 23 Dec 2019 22:32:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [sound:for-next 161/170] usr/include/sound/emu10k1.h:322: found
 __[us]{8,16,32,64} type without #include <linux/types.h>
Message-ID: <20191224053203.GA54618@ubuntu-m2-xlarge-x86>
References: <201912240624.itDhaOf8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912240624.itDhaOf8%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lPr3D0eJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Dec 24, 2019 at 06:03:27AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: alsa-devel@alsa-project.org
> TO: Takashi Iwai <tiwai@suse.de>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for-next
> head:   bd3eb4e87eb399a9fe15ef1b59db78faf9c20359
> commit: 2e4688676392767e16c1adeca4cc2c083e2db13f [161/170] ALSA: emu10k1: Make uapi/emu10k1.h compilable again
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> reproduce:
>         git checkout 2e4688676392767e16c1adeca4cc2c083e2db13f
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> usr/include/sound/emu10k1.h:322: found __[us]{8,16,32,64} type without #include <linux/types.h>
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

Also reported with GCC:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/Y7HNZFUUMRBCC3JQLXUC5QT37XYJQOID/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191224053203.GA54618%40ubuntu-m2-xlarge-x86.

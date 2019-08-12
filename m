Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB66UY3VAKGQEFKY3AHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAE98A546
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:05:47 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id c31sf65035292ede.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:05:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633147; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYtFRdje1kvtMI0zl/+3JK7YC+7XSynRh5C6tWAZBzfvf2lQf1mQrDLHDfhj9mao4E
         1ZH9E72ac3+/iAaM6N6eoMP2vSoP0zohQnSwFbgE2dU3/xL/Q0SmEGAWcargcaRWTwUK
         TIQFyZLwRbvrZpYXi3LIwOdYlNxNufXKg8L/jFs8Gvj2+EcpuJlJl2fIY4kac//RM6CB
         mX7hrhjYu6IPAVq+7zhA73Pniu7nTPgzeveqhin9Tv9JUeYRAa/UxNpkF8i55QD/giMS
         NL1tVrC+FoqhavrgFwuL+PIWBly7YxzGHdb9o1hpvnNBYKXDjKurw/HuIWn0qdKVsNzu
         DwBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=c2oFsGDrwAUcik/cDiTpLLSUIS+9KtfjEky6ch3nd80=;
        b=ww6qBQT+cx69zYgZN+1BhIoBG3ci8Wj+EZdB87r1TkX8m/4BSL3AqPbTMWIXfMqUd9
         GHYUqP35w7DRQ7YChp+Ojk4UB96LToRMFbsWTPE4wCt6yAD9gyTM8Bd60gnWT1V24+Yy
         OdRe3dh1isR/4i9dhZb7Ldo2lUPPotw2tk3ALtVJriUPyo5VG9zT5Fy1Ulabm8uLyRFV
         zHHhF13jxzBUrBbGa4U8IaoTKvJ6TcvUviQwFG4V8mfm4zngF+q9QWrZ+1MeLmSkqpLn
         R6KCrMrGLOLPRuzx7Gr++lxtMyq5eAUUhTp+G/YnrxHH0wkPoThyKnKgi6E1vaLHKY/i
         LKpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDC2VLAh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c2oFsGDrwAUcik/cDiTpLLSUIS+9KtfjEky6ch3nd80=;
        b=AojMM9PA9QY0s3IL45KqUpxH0OsnW2q5nxyO5vP8BGrny19QtwMfqXAyGX6CcQS+3V
         gD9MZvR7ye/vE/5RsdAeWhxiXTa5MbqTNT6sTGnGBiGIeccIEDKJ00C9FnH9rIK+/DY0
         CyKJ6DqQfK581dxrxAxmfDGQFYvKfyBOJWq29vOwIriEc+eVLUYpoBcKDpFZ5ZfA9r1Q
         YivLfJrpe/NM9c9NmUsgcdhFzuhngRv9dfbBWrIm9JLV4eFvv4Qa2V6KPBwr3MYolxAF
         V8sVhfQKv9OLeSvcsrGC8dPN0JCFCpQYsG0Ddc4ZeJ+0967qzIGHK23nZl4jeY1BXo9/
         gXQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c2oFsGDrwAUcik/cDiTpLLSUIS+9KtfjEky6ch3nd80=;
        b=DREl+0uPpeS+nyg94vM1k3JYru00ifS4XOlyUwmqD+YzsI1D5s+RZ9gj912ClwldjY
         g+xDsHLymLzoIVs89I5sgo9p/hiDUpeI+5UVf4iSIRyXQRxQk8t7RSCddQUi21NUJ858
         shZBsxXywXAZqaRwWBw6jaGheGKfhk48OWjJ54Ue2dwI4kfMXHYEtHDKz2lfwZ4+ekCF
         AsdcwLiIxms9Andzni9nGpyRKl9ghoXbhYerTIwZSiATbCcXv6LIM3OLW7swG3o/WO4I
         JEeOFciQTaPvaWuXuFgRnWPZWb24LJ2JAn8K/Fuc9jKaPl0XW6bH8NIPNC883bIt4ZVz
         iYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c2oFsGDrwAUcik/cDiTpLLSUIS+9KtfjEky6ch3nd80=;
        b=PO61bwcfsXKAFS83CmJrb714M6lN49XGHVOzGK9PkAFAq09H7iytZ8bPrki9Lwv64a
         lI4NqdQI86t/5OuHH0MB4y2yrOpcSfmTMFkQ1CSbOooOjCaTrBDUTAMmdEjKmYHH5wRN
         ENNZefpCac/G/zZ9tLDZ9mntt6rXzMKgY4I30rP5Y19mOjGpU1yJN55YFsWm/h2qbmse
         8IKimLVqRvhP/vYVTn5Eu4UBGix6uahZDYaP3Jm5HW7ewZVK+nyX8L4eWXSnEjDIHYoF
         ecB7I9bmo/Zl/LjgG58otNLEMXZiUqq7V8+pCw6g9O6pe/RwqqS3ZAYFUiAIhZeHjqew
         PDOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmhAH4TGim4UHghpjnZsNa0EoRnXiFkjWA50nY2EqAm8Y781sS
	IG4MiXOyiij19vMx3a5ZaIA=
X-Google-Smtp-Source: APXvYqyKz/YpkWYWa5y5K4WqhVI/w5lKDH1fPFHm4Oi9qJjKXdaugru9aFjDzr2pTOX7DcZYY0obbA==
X-Received: by 2002:a50:b8e4:: with SMTP id l91mr18338221ede.17.1565633147336;
        Mon, 12 Aug 2019 11:05:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e406:: with SMTP id d6ls2880298edm.9.gmail; Mon, 12 Aug
 2019 11:05:46 -0700 (PDT)
X-Received: by 2002:a50:a6c8:: with SMTP id f8mr7782799edc.60.1565633146825;
        Mon, 12 Aug 2019 11:05:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565633146; cv=none;
        d=google.com; s=arc-20160816;
        b=YAJK1tG9Dqu2wocRr+Az5V+yz06bVImFlk5INrTeyOWSahzmKKuyd/urEjREQXY+M1
         7DUdrVuh5LJCGT9Af6HjgO48v9vl/g6oOyV6MVvAYQTyqxoB9mZ0Fx6r7M+PYPjP8VL4
         MwDqDaz3j3NweSviFDeWNTBn6LseaHxfjJX7c16bMKo35xIjIpCd4gZfhPBAStwMvOC+
         tZFQgGkKcLYyHDkUmscHmvEyDd9DVKr08zmPT33cFGP27mF3SLid7T8V6z1ck0Kt8C5B
         mi6oTLP87h0ucgU3QK/egd0xc8pTqbRXZ2lfFTCKJM+E5OT1T4K8UWcM04ZoG6uVPTIL
         Mw8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tsFNXnO3Purhu72ESy/cDJi5GUruEg0u9WGSCTy0q7A=;
        b=cwBMSTv0D6DOtBmmFRxKsrXrfA7PlwF0LPgY9u47wnHa+h0jqVMqKRgoUtnjjEnpRB
         IMEh50RLsMi5jRgx33GkkzjyF5GVlAW1jqqMaaT3pGD2gRAMWByuCDKhupl8v0xRUZt9
         xEmDFbh8vAFu/nduYWQz1lYmwqgKUGtIhRQD9kOgTxT54sHK9UMF44C+mYcZdG4KPr/J
         Y0/fcIuequd+4E5dviTJ15DGCAcFRkT0FkCIT0Xsack5T3Pesfl+ugC3rqvnMwyMtYvZ
         eg0DDdHnZQffy+khGHIVJTRHpEEDO0CVvxpKEYKRucs8a/am15TlRPfllmxw3qh6jzRz
         NE0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDC2VLAh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m16si260942edv.2.2019.08.12.11.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 11:05:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id 10so393029wmp.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 11:05:46 -0700 (PDT)
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr575160wmm.70.1565633146326;
        Mon, 12 Aug 2019 11:05:46 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o16sm22387923wrp.23.2019.08.12.11.05.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 11:05:45 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:05:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/4] PM/Domains: Add support for retrieving genpd
 performance states information
Message-ID: <20190812180544.GA116715@archlinux-threadripper>
References: <201908130116.DLYXRj7k%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908130116.DLYXRj7k%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jDC2VLAh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 13, 2019 at 01:41:41AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <1565398727-23090-2-git-send-email-thara.gopinath@linaro.org>
> References: <1565398727-23090-2-git-send-email-thara.gopinath@linaro.org>
> TO: Thara Gopinath <thara.gopinath@linaro.org>
> CC: qualcomm-lt@lists.linaro.org, linux-pm@vger.kernel.org
> CC: bjorn.andersson@linaro.org, ulf.hansson@linaro.org, rnayak@codeaurora.org
> 
> Hi Thara,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc4]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Thara-Gopinath/qcom-Model-RPMH-power-domains-as-thermal-cooling-devices/20190811-103009
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from drivers//acpi/device_pm.c:17:
> >> include/linux/pm_domain.h:262:1: error: expected identifier or '('
>    {
>    ^
>    include/linux/pm_domain.h:268:1: error: expected identifier or '('
>    {
>    ^
>    2 errors generated.
> --
>    In file included from drivers//i2c/i2c-core-base.c:35:
> >> include/linux/pm_domain.h:262:1: error: expected identifier or '('
>    {
>    ^
>    include/linux/pm_domain.h:268:1: error: expected identifier or '('
>    {
>    ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                            ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                                          ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                            set->sig[1] | set->sig[0]) == 0;
>                            ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[1] | set->sig[0]) == 0;
>                            ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return  (set1->sig[3] == set2->sig[3]) &&
>                             ^         ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers//i2c/i2c-core-base.c:45:
>    In file included from include/trace/events/i2c.h:146:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:20:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:18:
>    In file included from include/uapi/linux/bpf_perf_event.h:11:
>    In file included from ./arch/x86/include/generated/uapi/asm/bpf_perf_event.h:1:
>    In file included from include/uapi/asm-generic/bpf_perf_event.h:4:
>    In file included from include/linux/ptrace.h:7:
> --
>    In file included from drivers//misc/mei/pci-me.c:25:
> >> include/linux/pm_domain.h:262:1: error: expected identifier or '('
>    {
>    ^
>    include/linux/pm_domain.h:268:1: error: expected identifier or '('
>    {
>    ^
> >> drivers//misc/mei/pci-me.c:175:31: warning: shift count >= width of type [-Wshift-count-overflow]
>            if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) ||
>                                         ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
>    #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    drivers//misc/mei/pci-me.c:176:40: warning: shift count >= width of type [-Wshift-count-overflow]
>                dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
>                                                  ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
>    #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    2 warnings and 2 errors generated.
> --
>    In file included from drivers/misc/mei/pci-me.c:25:
> >> include/linux/pm_domain.h:262:1: error: expected identifier or '('
>    {
>    ^
>    include/linux/pm_domain.h:268:1: error: expected identifier or '('
>    {
>    ^
>    drivers/misc/mei/pci-me.c:175:31: warning: shift count >= width of type [-Wshift-count-overflow]
>            if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) ||
>                                         ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
>    #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    drivers/misc/mei/pci-me.c:176:40: warning: shift count >= width of type [-Wshift-count-overflow]
>                dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
>                                                  ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
>    #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    2 warnings and 2 errors generated.
> 
> vim +262 include/linux/pm_domain.h
> 
>    259	
>    260	static inline int dev_pm_genpd_get_performance_state(struct device *dev,
>    261							     unsigned int *state);
>  > 262	{
>    263		return -ENOTSUPP;
>    264	}
>    265	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063123.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812180544.GA116715%40archlinux-threadripper.

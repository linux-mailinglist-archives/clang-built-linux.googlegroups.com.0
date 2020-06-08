Return-Path: <clang-built-linux+bncBDEMNV62UALRBQGU7D3AKGQEVX4S4ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B551F187C
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 14:08:33 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id p136sf5659645lfa.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 05:08:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591618113; cv=pass;
        d=google.com; s=arc-20160816;
        b=udtiwf6ABzn+/X4v/5m6MA5xq5VFhqVKboGBMxKBtIG4oj5T54Ihnxk/q8hWg22gWe
         BhcxlLyae8XrwPA+SUr9xYVruZmVwfN5kOmD8CagO4p7f+j6UJgWtO4pEqale1dmzD1T
         JZUJuGc+Cq6VRvx1P8NuxgNHFH3ZkNhJPG73b5Hoo50XE01DI//dP4/iRZ0o7oeezYPK
         XDoa5HkAfTG1C6eJoUvlJYFvvB4BbbEj8RPHzeWrYASYA4I6QBKIm0abLkLNpY91HnoY
         FIUhqY8f7PaENPDbCRBQBPe2mNIqMAdBWFf6Shqs1hWsdNYzLbWrhbsZihK5u9cOPqIN
         iigw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yisyYfnnHrJsxdckDsDhKbyav8cHbJpjxsFSK/W/V1k=;
        b=xC+xhhNXVsF9lL1WnrneQ7CDstZ1U9TcgKd/zTzLDuPx4wO2TPDOwqB+udBjk/egm6
         0mKlbqOVYS7FxKjhTTce1YV551+gGqfbnwTD4l+ROY/s8Mee/rhQ9OTjLQUK38dYLXai
         7w6LBEU6SbNX3EgXIn8aKuEVBryvEjOIv1Bwm4wko6iFtDUw+JJDya1w1dlroYKzZcAn
         2OgUOIj/1shU67UZDYh0Bcpt+Gs3WL1Gfo89HdpWPfZYIcn3E7cfH/JMLhmQIX+Dv5ly
         KXmJCQGF26cCaraN9Z7OFvPwwVLzHn3QbS66JRdA0WQ8pKEcCPqvTgEgltON0QX3XbmE
         nFXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUFbq78O;
       spf=pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yisyYfnnHrJsxdckDsDhKbyav8cHbJpjxsFSK/W/V1k=;
        b=lETdj4/gjZrBKBu1BziXvi3XS/3qEW7/SPm6/5jG52mEWWyIQqIrgW+YWExAJ1Y3u9
         46vVtDfP8sXzw3N/RHF686xbF6G8x50hTX1OKYR5k8hxYDqqM07BlyWW9EfihwoJe7zd
         ncn3qkeAtsIiJ3UJlgUQ+7IMkbgKP+1jKszRZiPZYqJyMZLTgWukYKI2nsILXQfdPBQA
         aG8PzIyR0gX7QnXauOJHlxYDDmVEbyuZKk9rHOD0hUnzHEPIKaCh9fnt1qvoYLWAfoE5
         CkrDw053gW3Q+ET0NqqP8WnZKGbR4uh1AyZSeCBI6cjdn45efj0X1gioZ6B5LDrB3nKb
         eBlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yisyYfnnHrJsxdckDsDhKbyav8cHbJpjxsFSK/W/V1k=;
        b=mmED5eBzfoMtJTsGh3blZWesMyrC9rKEjaFq0TJqaonRUZW63L4FYMmAvMSQZ+HKaI
         4JxVwVgPxCk9SDv0S1W+8qxbCDtUQKJDXd/YmnqylEQrS6TlhzY5eMteYxxgZo+6GoZ7
         WwAljTgQYv8fBVqrqYzkq/yBCuQnGhNeBHXrKxQVoJcuMTJ90TZfbK54uTAKWPQn8aX+
         360n/RSUeNXMS7cvu62l5VNwvOnZ/WjLXA3hI+a3NAuxO830jJ8uhkoAmmeu/mxmRHKF
         OXZ0wgRg9kKu+SYpTDkNrXogmBLKsmfrY+lQ0SzXMm5tDlW1YqYXAbkRuk9YSgZj3DU3
         OvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yisyYfnnHrJsxdckDsDhKbyav8cHbJpjxsFSK/W/V1k=;
        b=SgL4wOqHhg9OkTRMfHWbcktjCU2K62KrEfnLwRXDdWUmlG8yhtDNONKXA0AYngXJTf
         opD8GyM3QSv4d/cWv7d2PeEtiRRvVT5PZEaGgOpYrgx/c7Mw1EfYGkZurEUC2g4PE6cH
         BVN3EWhIoXprOofeqXz3uxaz9D+syAyqRJ2NfRncYgeR45YvEPFtQkF0FYwsv9GqVYto
         q+EWEB92QHhrYJyjJWG2wQ9IMT6KYlyA8mYUhgYbYHTMLt9id0sFjQzi3ee3D9lyCIyS
         7fjDgQNjr7h7lmDuXXY2PDstHgpU8Qho+afsiKK7MZ4miRZC1sldw3G5/qIxincBkLKM
         LTjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sEHCb/939ag+NVbs2U1fs1Ptu2HA3NJ65BwcZS3q1wCdwE5VL
	pW/9D4cSYwXrEQBRl3U8C4Y=
X-Google-Smtp-Source: ABdhPJzMl/060gB93iUq56AbJt+KIkAae4YR//Dgg4DdQcbW9c+8r8hjAP/0JMiLvDpzUfPdxSX4RQ==
X-Received: by 2002:a2e:7016:: with SMTP id l22mr8727580ljc.284.1591618112960;
        Mon, 08 Jun 2020 05:08:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3a02:: with SMTP id h2ls1491140lja.6.gmail; Mon, 08 Jun
 2020 05:08:32 -0700 (PDT)
X-Received: by 2002:a2e:8754:: with SMTP id q20mr11257316ljj.270.1591618112198;
        Mon, 08 Jun 2020 05:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591618112; cv=none;
        d=google.com; s=arc-20160816;
        b=pa/nmwTZSPzhxFd4Ia3t/AIapu/KGvKRsISiko9uDf9xjcugS8aMpYhN7d6kMB0hGI
         intLVa8wZfgg7X0h9ddeQ6usCh4iTNfJnnN6C8rcovGXTo/WLGhtx4ZNdr18MxnlYFHG
         GO2nxth3gKKBbeGFkQnCIoY2accbVvC41eFWczHDT3PJozzj7ADi4p+acJRcOHmHArWk
         MJco91uhFKDdPCiRIOO/PiFJzJkxcGkv6QKhhfB4Fah85/ZI4DYP7/2MnE/g1RzD4MQ2
         3kRghu60bT7jedZoqq95/j3rSRA8SsV8NJiQi5sprO39pfU+dNC+VY7eHVMeGd6qf/Ib
         FAjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jVAlJ3ENw6iA1llBw77h70B7LKCg5s0+Fsgmgt32t0A=;
        b=kv16ANX6zJrQRZIuzpYk3q+SNZ/oQU7zX9moYHjV198moFDPQogvo2XuTlWLcUHVK3
         DirVF8YIv8DlfoSxumMJn2ax/HCqnfsqQ0BevbIUU2YAqK0jMpUEgNdPZguQ0SpTVg40
         VGCx28EHDTr9Iz6lPKugL2DAxY+uV3PFKdDZySnvlt+woz9CQ5QGiEI+6mSc3Z8JusFU
         7SPrQv/qhf4L2IyNLS1Jf5XftJIqJEuGxSKVb4xsUrbWLGtprjBWMRTFLhgTUG4vFjVa
         BIqrBdNTdKgeRE1GeLQYNFiPZhMdz7ANGL06Dl1c5caQ8M13fQ5K9FIDmKIU1m9JQ0PO
         C/zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUFbq78O;
       spf=pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id r21si585494ljp.0.2020.06.08.05.08.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 05:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id s1so20161417ljo.0
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 05:08:32 -0700 (PDT)
X-Received: by 2002:a2e:1453:: with SMTP id 19mr11718756lju.155.1591618111949;
 Mon, 08 Jun 2020 05:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <202006080221.W31nOYBR%lkp@intel.com>
In-Reply-To: <202006080221.W31nOYBR%lkp@intel.com>
From: Baolin Wang <baolin.wang7@gmail.com>
Date: Mon, 8 Jun 2020 20:07:29 +0800
Message-ID: <CADBw62qBkjftmi-4pR+NVs3P=os+nzjF9wK06=oU89w9kdxQAg@mail.gmail.com>
Subject: Re: drivers/hwspinlock/sirf_hwspinlock.c:87:34: warning: unused
 variable 'sirf_hwpinlock_ids'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: baolin.wang7@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NUFbq78O;       spf=pass
 (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::243
 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 8, 2020 at 2:38 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Baolin,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3b69e8b4571125bec1f77f886174fe6cab6b9d75
> commit: ffd0bbfb378ecd56eac22bf932ccdbf89ac7f725 hwspinlock: Allow drivers to be built with COMPILE_TEST
> date:   2 months ago
> config: arm-randconfig-r001-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout ffd0bbfb378ecd56eac22bf932ccdbf89ac7f725
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/hwspinlock/sirf_hwspinlock.c:87:34: warning: unused variable 'sirf_hwpinlock_ids' [-Wunused-const-variable]
> static const struct of_device_id sirf_hwpinlock_ids[] = {

In your testing configuration, the CONFIG_OF is not select, so the
macro 'of_match_ptr' becomes NULL, which triggers this waring. I think
we can remove the redundant "of_match_ptr" to fix this warning. Thanks
for your report.

> ^
> 1 warning generated.
>
> vim +/sirf_hwpinlock_ids +87 drivers/hwspinlock/sirf_hwspinlock.c
>
> cc16d664e21ef6 Wei Chen 2015-05-26  86
> cc16d664e21ef6 Wei Chen 2015-05-26 @87  static const struct of_device_id sirf_hwpinlock_ids[] = {
> cc16d664e21ef6 Wei Chen 2015-05-26  88          { .compatible = "sirf,hwspinlock", },
> cc16d664e21ef6 Wei Chen 2015-05-26  89          {},
> cc16d664e21ef6 Wei Chen 2015-05-26  90  };
> cc16d664e21ef6 Wei Chen 2015-05-26  91  MODULE_DEVICE_TABLE(of, sirf_hwpinlock_ids);
> cc16d664e21ef6 Wei Chen 2015-05-26  92
>
> :::::: The code at line 87 was first introduced by commit
> :::::: cc16d664e21ef640faaf51e9952384cf90b92d9f hwspinlock: add a CSR atlas7 driver
>
> :::::: TO: Wei Chen <wei.chen@csr.com>
> :::::: CC: Ohad Ben-Cohen <ohad@wizery.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Baolin Wang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADBw62qBkjftmi-4pR%2BNVs3P%3Dos%2BnzjF9wK06%3DoU89w9kdxQAg%40mail.gmail.com.

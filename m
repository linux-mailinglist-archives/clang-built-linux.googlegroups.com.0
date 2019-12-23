Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAN6QHYAKGQE7UCH37Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 223941291EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 07:30:27 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id x186sf12239479yba.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 22:30:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577082626; cv=pass;
        d=google.com; s=arc-20160816;
        b=pqRXrxGMAZYWsiWFop0LOkctmha4cATbEIphxRScaZmFp4vUohfDcGe8wInOes9X1M
         R1yHzTqpU3ww92FVIOdLuQ1ZVkMpSahwKP2ULJCNae6v2KpIGArzgSCTY3u/5s7S807X
         ikzoJWMC0bi4plYGRzp+z15UCgRnTwLyMpuP1ifJOuIri6pl688faHCOdfMGu1dR+6FV
         j+iAF7r3fnfendkKjmJdDOaz2G8IXsZmeBeK6IGHcnuvrXVclqKVUxrKqIdlaDWRnZjh
         0Co0Pix2QYdJYd12+HL3rv1g9WMcG08XeYrEmpXM8ysSP612sIDSUu6BQR7xT6aQyckb
         7hKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=cLX65x+snA2jUS3hsP00PlV7q9reoDEjvUl7h3bMf68=;
        b=FCy+PudkSYOcVHpcHlK+v2Z9nJIq10pnZtcWF1cmZLus2ohciym2x/f18D310C0/Hn
         KBlYxvQuk8doMOfvOBYeXULTQDCx7kpuE4kDU5tufEG3A5wwFC18VT1FRc3oVLaV6+Bm
         KKWy+DP1F+GW9WDqhTLRp2j8rq+G7iwXqSurZ1cY/vGBIQ26BeYnAvT0UnGTzx2wBiXZ
         2yBRFUMRfB4zJbkYOU8FJfhjlCvX0YayvFnbaGT4bcWacRKfDdWyegv1pe4tolwGz4V9
         K5LMKRgBXZeEGNBkJkp0V9c/ENOnZlSv7VH2Kb4o7yZv5zL5QzzcdHSfI2dD3FJ4zHpP
         /NTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bd6cBNav;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cLX65x+snA2jUS3hsP00PlV7q9reoDEjvUl7h3bMf68=;
        b=fzwMYtIzPg8VrmgHaMItMPmK3BLXniOx3soBWcRwhUshqX2AFf1YgXBC3zfEiYaZlp
         1NHw73/b9hY0zXIcV2V1wMyoI8mN21JEG4066rElCsRWz0I42MxKfydOHdRiRvYHmBJS
         53LawCu6h9VLgutfyoNgiJQOXkc/a0jvNfurmSu4tO8KVS67kJrdQYsL3/YSt113OKtO
         CWMhblt2UQlDsBq/ErK0mz3firQuUwb2812Le/HpsHH9mqwSXfB+rOaKpqPXYhdTbbk/
         PQpeoP1q5PoBiUiuKCOntN5cIrXcifzlmcteyRNZSef5qbCFGpVDnNIUCcISQilK20g/
         q/qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cLX65x+snA2jUS3hsP00PlV7q9reoDEjvUl7h3bMf68=;
        b=RUtGPHEqKWVkhBQj4c7ijpc+dh8mlMjvK4Gu9rXf2w0FZdxKUDxSz+0OXGwjO8Ivgo
         cbhWxbMEPv+/3Yf+uw1PGM3794TgBUy/nQ3A2CqGN/N06REsTFKhQfd22134XYpCKQcR
         Q8kufKJ4YV6Gjvj4dcOeVRoBetZKnMcemUfPxw1ULlR7pGcAlK1kDD1/cJ5KriDbFAfL
         QqqW5c34OCsuiEkhdcc0qjfvJ7lBfDiD5inCchb+plKkAlB0/Sx6mR9+kYKEZh7VcMWc
         A2JpYzqDtFzQjXwZA29vZmwerMHCAxZjnG6ndRSNF331awdq2Q5Y3/+AntiahilVePZ7
         bYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cLX65x+snA2jUS3hsP00PlV7q9reoDEjvUl7h3bMf68=;
        b=PAkvrFnbof1LMm8jEApJ4ux4J2/rZGy+8Et4VGPMQKWExxOFW1jt8bB6cz2Nu5K9ei
         m+AYDYqb4H5ZZgrjONqs32Sy6CKPQScSiLU0zx5FWy8v2+ajG5KCHCpj1mYqNss7GnDy
         PNh2TwShvkVOlzLO0ocr4dhjehHEyugzV2pQKonNWBmIT2CQ++JuXvUmRgNfbrQu6Q5r
         CNNhbviJ1syAVM6WvuCwttSWmB+Xu85zIuBEj6eGQxe/Pvrz0VFc/3dws4MxSb/J7ujV
         n/zgpXKtH2qwT08OVWi5B7z4drLFqLtsoWe2osFnZ/qkxotI9lGdRtJq+7J7v3FAAc+8
         y/iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9+cEMudbm7UydHqBmIWH1pKQGLopvZZXTplNzJayYj/XAw9Fb
	Xg6RzaanIwnl3G7lsAVxOq4=
X-Google-Smtp-Source: APXvYqz0c/ZWzdeTzslRapE5hvteejaXARcvNA4WoQ/aoy3gnWPTZ/Kc+mBIqUR7T+DdtRx600KzOQ==
X-Received: by 2002:a25:9382:: with SMTP id a2mr3101426ybm.167.1577082625945;
        Sun, 22 Dec 2019 22:30:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:66c6:: with SMTP id a189ls2288297ywc.8.gmail; Sun, 22
 Dec 2019 22:30:25 -0800 (PST)
X-Received: by 2002:a81:3785:: with SMTP id e127mr20549846ywa.188.1577082625558;
        Sun, 22 Dec 2019 22:30:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577082625; cv=none;
        d=google.com; s=arc-20160816;
        b=BgcvyM3g+lfiJW5jUM13gsQ5z7letjv4jVa08BzzN+ujE6RUXp2Wh4u3MT0SEsMZSv
         lWSWOZI2gndCa50QtcKZGeBWseSRsXeuCeOasR9AjgAQQLMl2p9G0jmQ+yISMebS7xFR
         KefPdCYARMfbG4P2H2qVzyDg70qFiqaT3HioHRj4XXZL0MWAKZf2Z6OK0xUnG+qKmEsR
         4o0Ar2fkrmwlHpjIhwtmKxFmbyDjS4i3cQhmzffhgGIkDvqv0XOPNZFaANoRlygDtXUK
         Gf3oLjDHqXyLxhGAZBklJ7quJwn3cS0l/+MeGgECy4Vpr8pp9PkdcPKHBiQXZAgWpaXc
         4eAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UBNHAI39vM6TlMnZDT/qof2Z2zxN/cBeHvsX8YhQxMA=;
        b=Hg5xESDPcDBixmRY6Wwl/Sco5CVcAQl7nB6xJ9vL9sQxmeMK9ogjtPN706EuT8Lne1
         ncL2JtlN2efYXEr+JSpXl1J1//TUDtQDYL+MQvShq61ks/qHi7jcq0UNp5E+bUXCxRHd
         qWp47hZCPxd6dRcE7IX52TfWUopa2sLB/HmZYxyMxpv0QyqK9uU2J9xJmURSy9OapOsr
         v4LMm606uBqSltQEmRfWLqp5rtm1Gys18FIIn2gL9LytBeRg8VTSgQrYChoMEqINRWcn
         fUK58YBDCsi+pCDEcuOQFj8UnOwxryNCa0l3equCM+UvZPn0vWXitM6HLEbWYKHp4Plb
         mh+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bd6cBNav;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v64si830620ywa.4.2019.12.22.22.30.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2019 22:30:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id q127so8309736pga.4
        for <clang-built-linux@googlegroups.com>; Sun, 22 Dec 2019 22:30:25 -0800 (PST)
X-Received: by 2002:a63:f901:: with SMTP id h1mr29661729pgi.445.1577082624623;
        Sun, 22 Dec 2019 22:30:24 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id j5sm5702593pfn.180.2019.12.22.22.30.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Dec 2019 22:30:24 -0800 (PST)
Date: Sun, 22 Dec 2019 23:30:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [brauner:clone_into_cgroup 2/3] kernel/cgroup/cgroup.c:5930:3:
 warning: ignoring return value of function declared with
 'warn_unused_result' attribute
Message-ID: <20191223063021.GA4152@Ryzen-7-3700X.localdomain>
References: <201912231341.YuuKDfbD%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912231341.YuuKDfbD%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bd6cBNav;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Dec 23, 2019 at 01:20:44PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: Christian Brauner <christian.brauner@ubuntu.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git clone_into_cgroup
> head:   fc5f569c2dad303ee4cc0d0625ce234e73bcda44
> commit: 51e007bbe308fa2c70119c65d6845a2af72e533b [2/3] clone3: allow spawning processes into cgroups
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 51e007bbe308fa2c70119c65d6845a2af72e533b
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/cgroup/cgroup.c:5930:3: warning: ignoring return value of function declared with 'warn_unused_result' attribute [-Wunused-result]
>                    mutex_lock_killable(&cgroup_mutex);
>                    ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~
>    1 warning generated.

Also reported with GCC:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/MT3XXHURHMA7MP63GKPG4RXJ2TLTTE7L/

Good to know -Wunused-result works now :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191223063021.GA4152%40Ryzen-7-3700X.localdomain.

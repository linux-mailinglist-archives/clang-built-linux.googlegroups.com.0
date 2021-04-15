Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB57I4CBQMGQEGHKCZOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B96F36099E
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:41:28 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id q2-20020a6552420000b02901f9b22f2a79sf1310734pgp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:41:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490487; cv=pass;
        d=google.com; s=arc-20160816;
        b=l20r/nyuv1kq5f6beyPSikuZtH6Z95ix4AynWAgS7fcVOlTZmNWX9kLIWW1kNIQTSM
         RQWu2KKnSlHfBGYcIyToPOLoWp3bFYNNxH+DxRAScACnZDNcag8qUcplbX96zhwl31e5
         Z+2+Rol5KtFbmq7bvp9gmmVVR3NZHIPp70HxQbA5EMX8wD4MRBynJ9XTa5Z4vLcf45IR
         jujn66jn1HxJPUUAQv7QfKxuuGIZmztxJRnpf+l7kUlWrr6RES99v6oYzCzTIoBcQsOS
         9Rl8pl6fTYGyb6X19CYkCGGvoo/wcNqu26Hw6o5yTn03xUQ2/vibpDVXixWdtu3Em9mf
         rQ8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=e9WJavIEsfI81yYgaqtqhCSkWjaJ3LE2TynXnN/Q8uY=;
        b=gpajFZwl9pFU9RCwTNHGDZw1XUmabUTY73GITsu9UEDTeLgWzzMMdGSfcXryVuLmGx
         7j89ngsfy6mGn42LRbUlLc4mSVt6nqQWdrSB1rbreE0FsP0PocVhAZOntLMwpCcoeMxM
         zkQdqq+kR99DCZFD2dtNroSl1fE9PGUT0P6yet7U+PFTq/L5cfDqYPUh15vPDUD0wQOm
         xj2ebQjhH1w52azW4kOkBW7YrM8vmN759rnja8gSIOUE4o94hIu7JSiBbvz3ZpO7+7/9
         bSo5CEnCbWKLiNu+W3erWQtxxkOwxDBiuR8Ozu7VgaBy9PssukCaRVoz4SdxLHNkdUVJ
         Z+NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e9WJavIEsfI81yYgaqtqhCSkWjaJ3LE2TynXnN/Q8uY=;
        b=gqk4dGKjrvMtbRB9qvoZcxdHpJF5yQ+x9hJXVUYRS7oaC2sSE/wxWdnqEySg/ScmTq
         IlEMEwBSxTKtJfhZTH3IYwH6qlwD+rSMYH3uTWGM9ssT9yvMV82TMAyu3e2hf7QYyL88
         x2KM9Nnh5OcU4NrPYN2CPdOoH7d5XhOCbFD3dvhTzbwm4EjD8MN1RsILsNxhl/RagNmm
         oQUHnbloupvfmevzZ6rtGtvTZ8kUV1n5959dDVq++3ZhXPIPGhAjaawjzVhRSIdadfa2
         9unZi/5+jwZMumCOhIUuZnHP72T3nFHSJgLadxm3qNLHEy0NfObL5Qwim9cJR8lftY0d
         u6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e9WJavIEsfI81yYgaqtqhCSkWjaJ3LE2TynXnN/Q8uY=;
        b=igkRBpggw87NwJ2I4RTJyVu51mVGxAhtI0a+0XHy9GHDIsbFmC+6Qdhaww5VDlqKM1
         EHg7YU4coyT93bUfovPeEx1IIsHqkeNk7s5zyG6DOofQ/RrBom2gRowFEJd/DG6id5eS
         ktEmmUcx6Sq7hmgZzUxc9G4qKRrk58L+WX0g2BCstZ9xRsqHg7X1CEgvRNtBLDo+cPuB
         PcfzI4pv65q5MHsatASjrapmm+0FshyzY0V96Wiq2ru5Oi53C4D2uY/zWX0nfmvuwoHS
         RYtfttVrdNdBKNfixvEwNhwhsIYRK+8Xg3Y6cmTzn1ZKgup2Zm/x23MWeAMf+jlSPagz
         LEHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mCP8/pjR7o6mwClFf/xogf9/gCgYilPIiXa4+RkCiX2B9Vgtz
	uVm8RfapSS8XFc4yS0UpeI0=
X-Google-Smtp-Source: ABdhPJzkG53NO6KzahtcnjGe5RR+kza7sLqGaNWBzskwmwJrMYZ5KB6FPszDYmp21i+tst4e7z7RxA==
X-Received: by 2002:a63:1425:: with SMTP id u37mr3186231pgl.227.1618490487198;
        Thu, 15 Apr 2021 05:41:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4ec2:: with SMTP id v2ls3143893pjl.2.gmail; Thu, 15
 Apr 2021 05:41:26 -0700 (PDT)
X-Received: by 2002:a17:902:a587:b029:e7:347d:4872 with SMTP id az7-20020a170902a587b02900e7347d4872mr3648127plb.2.1618490486648;
        Thu, 15 Apr 2021 05:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490486; cv=none;
        d=google.com; s=arc-20160816;
        b=HoY05RotAcj2ubjzbIIFRx0uNKhbwHekbjW+E/7+iYFII1Q4oEWdeYJyCTcDvTVYmX
         /I016wzv6xbtKYUDvnxUihHF3wdCkDTUZysKAbZ7wnWj77Fd2WCcH5Rw/i2nmwVaRr1g
         Wm690pJXOvHa9oVRHDz8YtaSkLmcx9Exa+eR7mJ0OHSeLjytUKP9GNtOxyb4emH6M6D1
         kzijB0v36glR+TZWiV6d9xdWgb9StEx4VwQZOMnZogrwDcu3v4xUrd2+Vh4BykbvDYhJ
         h4l5Zz5vkesv/AFb4ESwXidiqVaoDFDVe39py/cucrkKl9Cq+CQT4hMVO0zmx8l2938H
         k45Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zwuMhoF4bMjCYWWyrxgFCU5JbsgJLyGf9YjNjhccfh0=;
        b=h0HbvG7LR5ns9DmD9TeLK6FmM7TI7lmPzyNBSN1EDL+vKcLatWZXAjFEWC5xLl99lj
         XTZFtmrUhz63i0Lz5XW0rsSwnucGwZUUGpRz8rLLvP9TYtPtrvLQLjyokYe60idjaPSe
         hPF8uKfWRrnSiDSRztA89SZl5SrWGbg/MFQLU/rQeI14OgL3EZgLdHqpVn7Q4+pII+uN
         WK5Te/a4iXsEC1ntH4TcfqYvjwfKyhuxsxteXkcewz74JsERcfYWLiz/xY+NBpkK5aWJ
         WA8+bf0MgxWeQNf46YJR7AIEciMRLsVXYFoDHwCFYjQYEPwoSEvWU5idY52sSLpFjHgj
         3VYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p2si252899pli.3.2021.04.15.05.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55BDB61166;
	Thu, 15 Apr 2021 12:41:25 +0000 (UTC)
Date: Thu, 15 Apr 2021 13:41:22 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: Mark Brown <broonie@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [arm64:for-next/misc 13/14] ld.lld: error: undefined symbol:
 sve_get_vl
Message-ID: <20210415124121.GC1015@arm.com>
References: <202104150734.PulXU4BV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104150734.PulXU4BV-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 15, 2021 at 07:13:41AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/misc
> head:   839157876f97fcc7ead0b62c9377bb50f75a3df9
> commit: ef9c5d09797db874a29a97407c3ea3990210432b [13/14] arm64/sve: Remove redundant system_supports_sve() tests
> config: arm64-randconfig-r036-20210414 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?id=ef9c5d09797db874a29a97407c3ea3990210432b
>         git remote add arm64 https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
>         git fetch --no-tags arm64 for-next/misc
>         git checkout ef9c5d09797db874a29a97407c3ea3990210432b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Thanks for the report. That indeed triggers if CONFIG_ARM64_SVE is
disabled. Proposed fix:

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index f6cd89131dc3..9d433854a662 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -285,7 +285,7 @@ static void task_fpsimd_load(void)
 	WARN_ON(!system_supports_fpsimd());
 	WARN_ON(!have_cpu_fpsimd_context());
 
-	if (test_thread_flag(TIF_SVE))
+	if (IS_ENABLED(CONFIG_ARM64_SVE) && test_thread_flag(TIF_SVE))
 		sve_load_state(sve_pffr(&current->thread),
 			       &current->thread.uw.fpsimd_state.fpsr,
 			       sve_vq_from_vl(current->thread.sve_vl) - 1);
@@ -307,7 +307,7 @@ static void fpsimd_save(void)
 	WARN_ON(!have_cpu_fpsimd_context());
 
 	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
-		if (test_thread_flag(TIF_SVE)) {
+		if (IS_ENABLED(CONFIG_ARM64_SVE) && test_thread_flag(TIF_SVE)) {
 			if (WARN_ON(sve_get_vl() != last->sve_vl)) {
 				/*
 				 * Can't save the user regs, so current would

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415124121.GC1015%40arm.com.

Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBHOUWAAMGQEV5BM6JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4312FEA6A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:43:50 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 18sf1157253pgf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 04:43:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611233029; cv=pass;
        d=google.com; s=arc-20160816;
        b=tDzcrWKGyXLXODig6RDbkMOGUfHchqoouq65oEopk84c+ls3mN1fNeDowod8736RVK
         tDoy0eDu1dTDLHsXFIuB8xTn/PeubemBDDgI4VXrG5GPLPCnMTo6ZML+EuWRuhD7rKQW
         WhPUOExYz1MntkPVHu9dvjeMu2/3w+Yiv88z9kDlOMlR2uie1573hldcwKAHbGxX+EPN
         s/X1/Ao+OVNnyfioNYijZzB1knXpCVrzzzZDxuUS4p6VdCFmaIduH96wOCKTqtyk6Tbr
         Ps9Ddna+pbke9QsHsSr4mIFPerQJx/osAWdFlwpI2LqBQ+1IQKTqvQm5TPtA2Xad8Elf
         1GEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dqybLwnQ1Ezjkj2NhI0QTNTwkQc4dvfuZVn8NT0VZ5k=;
        b=CSuOfqLS86LKnQ8u/7akdVfkH1P0P6uCEPtGi8gqGp7l2qH/Hw1sWiL6kQNLcgzXxd
         y8Mr/1tcLn24cV2lfRTM1hPccuHmUEODLXZS22RcTCaZ+3ER6uRoI+bzVdSKPH6i71oo
         gn09YF3SEKn2dBMU8F1qLF6qsJsNICs9A75xP8/sdejpsn+wW0pUck+gPdUonaUO50FK
         bW5eZcgNWhSyDN1vy8ypWcj3OEcQixlTAsplYsZ0+fCLmXFjEDuZEdBRBvsy6YY4RhUa
         RwcSS1P/sqcYe98V994bKzhCQlBpd6FUxzta5+l7o7ZrHYtuNSBBNeu1Tws6LE8b/qoz
         5Jew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="L/ivS0Eu";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dqybLwnQ1Ezjkj2NhI0QTNTwkQc4dvfuZVn8NT0VZ5k=;
        b=GPvmb5NWVdPdCJd4ScmJEeSLeyoG+t9PGDn8jXuC1rKvx0G38C0qPwO7gTMp65+E2x
         OHz4t3H3pZl788O8YS1fBn7jkjLW+iwrT0vK0RW3aUEmcTjX9IllS3nQLeG+zvq1vg9U
         hTkEBAyI6uuK1BGxIGulbAw/MnlugJEE06kcGPWXOxNi7oXwGUjKSL2DVkIEw6M9Kmi4
         G4V7IAUbcdckZ3OniwZaQTqPuJbUmk7PQFt8Si2AxQBBYmxLSmeqIIbY05eVMZ1jNqKw
         KZzA5W9yZmJkXkw7RD8OXBB5cCBWAWgjHZXqzEMeKtsIG3NrptWVfqysMSxbSkOxnh5r
         grBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dqybLwnQ1Ezjkj2NhI0QTNTwkQc4dvfuZVn8NT0VZ5k=;
        b=jqepYLH0ALYJLBw8LCfP52rzSOy8+uK+Iym9x+8MX/xHuXZo9i79mrmuaH9rYPNKDR
         5cGWe3MNBDqHu8dRCvXTTuuHlrVSyWl6rrx55d8jVLihQxbk8inTqioGbQgo8AmPFEdn
         gtXNWuHE5NKVwE3XGxC2qPyACDqBvdABhQ41Wnd8YbQaCcqS8NWPYQ9ewlnXw+l9FKbv
         FF0awk1wu7wSn/xrA1yrALxHP8usMRGJt1SBesgOd+APlpi7AjTo3R3ng+seXGXAahDO
         QMHigeu1gzdzgOeecACd+SGdKPrWs7Qm+65k+LAKN4XiWhQ58H4d8DcZS/V5NJvSFJdK
         5uuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310qMLMG+zS2H/o2yNIKHij68hA/gEM9abreVJV8KqWVFbm2wSQ
	zUiAAEM4GJWAPGga7gj0muQ=
X-Google-Smtp-Source: ABdhPJxhHg7+e9R3SOD9vifE56MtjTcykOkVw6BEzzoPYuUhobBrblmm4CCYiB0hz9fTHNDNhytsZQ==
X-Received: by 2002:a17:90a:2ec7:: with SMTP id h7mr11802127pjs.200.1611233028869;
        Thu, 21 Jan 2021 04:43:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls1146438pll.0.gmail; Thu, 21
 Jan 2021 04:43:48 -0800 (PST)
X-Received: by 2002:a17:90a:2ec7:: with SMTP id h7mr11802083pjs.200.1611233028265;
        Thu, 21 Jan 2021 04:43:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611233028; cv=none;
        d=google.com; s=arc-20160816;
        b=rlZp1n5oJiiRB0blEtgFBR4pK+GYC0AoPoWQbUZkYCIsWb/o/8/7qTAHbCr4eLWH4C
         TIxB38E9DY7fNyZWgFhsQjDnOUo5G6O4S4TMCCQGR/s7Wuhi2lcccp/tTN6Nn1wyoevY
         BiK0bgHBdoBcQpBUW4vrjcLZX8qA12CZz+cIUhLVZXjkyi7HaTQNSMj5vSoGT9Ys01Pc
         bmpy+s5ZJ1IHluD8druouBnL0kH1VQ/3qmZrdu4u8TuNJqR99qEdjrF0+fHd8hgQTZqF
         R7pjE6i0Vo0SdWCFv7ckqS3IHkjwADpfDTpnoHvTEqmCC2AYgoci0Tgxj7XwTd6QTwpw
         VVdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=geUurMNlAxFzEAPuFORyL4AQmvWkR1hD5Vl9s0Fxpfg=;
        b=XFJwUFjLuElwFGc51xrJ+mcV2kME/3/Ho4Ev3uqSnkj94P3VfH9IHSwc1+pK6fhnNr
         FUW5uMJH1g2XK70O3rXvzUcqy97vxznPQPwE4L2ljvAe9ZdNN0SmfYZvmkF8t1OFlh85
         l1M43j81stoYUOq6PE4BIDm0UuopAHQWZHKBIzKSNNrmntzqFVr4i2AARFybtbIkPNzS
         MfSdzMBdtxm+L3pJnIWUkjqVA6KXFyfSwLUjGkRXYtHuMiJ9T5ScXO7MIaWtd6FRWMqb
         FKJ1pr0H8+Eh3uPMpk6KK3gBoMPXveoQmLzsapmLGNmXTIniAbjHUYKYoslafsX/0vNZ
         LFUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="L/ivS0Eu";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mm22si51283pjb.3.2021.01.21.04.43.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 04:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D49223A04;
	Thu, 21 Jan 2021 12:43:47 +0000 (UTC)
Date: Thu, 21 Jan 2021 13:43:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Cai <jiancai@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@suse.de>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Alistair Delva <adelva@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>
Subject: Re: 78762b0e79bc1dd01347be061abdf505202152c9 for linux-5.4y
Message-ID: <YAl3Afu4hXlhJQIv@kroah.com>
References: <CA+SOCLLdvphxVeH+SvaibixLxdwHd+sC-qc=JdLKQoTN-H0waQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLLdvphxVeH+SvaibixLxdwHd+sC-qc=JdLKQoTN-H0waQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="L/ivS0Eu";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jan 20, 2021 at 03:28:10PM -0800, Jian Cai wrote:
> Dear stable kernel maintainers,
> 
> Please consider applying the following patch for LLVM_IAS=1 support on
> Chrome OS:
> commit 6e7b64b9dd6d "elfcore: fix building with clang"
> 
> Please find in the attached a slightly changed patch due to missing
> upstream commit 7a896028adcf. This patch would fix an issue similar to the
> one fixed by another upstream patch (
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.4.y&id=070bd3a8ac55)
> that has been included in 5.4.

But 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and relabel
with SYM_CODE_*") is in the 5.4.90 kernel release, so are you sure this
is still correct and will work properly?

And your subject is odd, as again, that commit is already in 5.4.90 :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAl3Afu4hXlhJQIv%40kroah.com.

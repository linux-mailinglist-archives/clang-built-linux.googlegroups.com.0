Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHU43D5QKGQEE4TGZLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C502804D5
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 19:13:04 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e28sf3800038pgm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 10:13:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601572383; cv=pass;
        d=google.com; s=arc-20160816;
        b=HbzQ7xvjDpT/ned7dqKfdPElmNmf9nnwwgN0fpHpWdna12IMdlh7ZaHwlCmAiqh64d
         UeVPtRtmsPrd7M9TAYXDExxwRZ1U/cKvlsd83y0QTclA91sMoagqhv/pceF/g5QhZS5r
         2ZRQLfn1tPCQkeJF9Cfzw36M617fwzTCGXV6oKkCm/fiJqlZ9hwkvx6wNxJfqEUPNQVb
         +DEW+a+puQ1z1bC6jHsuRZC+Pzloh/o11ZpCUk9RC0O1nMKgMKVb7SifqwdAwBIcWkC9
         8xp86a0uYRIuQ2Oj8xmpw7J2cUu7wV2hwbrOrit2splx20N9fjLtHj9WcNGc39VBK3Wu
         8S8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=jTC/Cof+CcoXFe8ORbLhW3hGQeWT8nuyRWfBjyRawHs=;
        b=lgp0r9gjlSfSDlziEZibn1K2mMj8bnpicH2y/RkBeg/fzqnnYNyApemsoZWYvodSex
         b71v1SE8ff2w68JrKvbFunXmhTUaWklq1ctMFfSeGV7lwOgRI6NAKHWXldje129Up2Qj
         CVmYD9GD8T2DJjp46maGPcwlcB5L9VvRUrwihUeV4S2mJgK/pPcEnF0r4+73t8mNV8NL
         BUfIRLs8MH7zHXsPiVaTSASxiMtME3YAVbCN88FAhUlfCuI+yGaelH03DbxwGrWUtEr4
         gk3wfwDyYBzcUotIVcJ9W1gOTEAyPV7cadV6EjwSwrTawJ3M7fL9PQT+KKecLXt1NMyC
         p1tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqhEKiLp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jTC/Cof+CcoXFe8ORbLhW3hGQeWT8nuyRWfBjyRawHs=;
        b=IGNATt0DPe+pTF+aZwf8v2PSGf8TvgDJjdVTF4QuBE+thJaGx62X2Pvw7JWXcAa+9w
         8uuPn80l/AAhuASyTFr7sH/txirGoosyX/ChVMbQ6VAsEB8oheuegxHkXbxlzSMRvPMq
         JWw3uKhRwgXPhF57350FLU5XyjaRGMROr2Hnp8gJuX1X7LD8Bt7TRCV1wCyJOcaNJC2o
         RUgbPtgiSlgdE3O57u/nqcAUIomRwyHW62NKvzlPwUXTpyEKbb6U2kf99Espr1YKmZJT
         VIBSrpvwD6nqPSC/w4ujXyRe2rTj8d4wVVbMwA26vCc1fvfJ75dAvaa+tlB7+yYDeb9t
         Pl6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jTC/Cof+CcoXFe8ORbLhW3hGQeWT8nuyRWfBjyRawHs=;
        b=aquYPkIDYIyGLJ/YemCunAwyW0UMyXRbmlmfGpQ9HMG6qKWWCGpokDjx2+B1jDeoQA
         4BedW4iQmScMc1wmWLIzSEhFIqispOqhNZC+9wO/kqX4852SvQTW3L3a1zzy+bc/ayQp
         K3upqxtu0oaCrEu1QCd32HT1EFm2Ex0ZK2wod6As+DdB5k98iC9v0y2Bw18XTgyEm3i8
         4zwN+lSDGi33vU+PczIIusWKC5GXpOuhqi3yk0xNZGf9vQZKaT5oqfkuDXl95fghRB4p
         cec0VzNMLtAq6SphbLI5PI6SChjYcOZSiccRKn3KcNGPdU87qs018pJ8lRwTE7PI0aOg
         gyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jTC/Cof+CcoXFe8ORbLhW3hGQeWT8nuyRWfBjyRawHs=;
        b=IsFSnYzQr/KNVln4w6nms6IvZhUHOfOOf1Y7gYf10y6/WpFaCKhonIpsJkTylFsZqA
         8L+t0T0aNuvP4Zfw0YLGyD7p6nKLCbBTBNGLv9P4GPlsWETxPdmko6NRuqzWwKofxr5Y
         LJMXnbcZEPnhMHlkICcychrtxz6xA6NeGKhEfRElKlOhrxlYnpsjQL5TWi2mbnbY8rvp
         mAGgSom9oOUOlvT+DjED3VVZUR1RzWf5/x4jXP51a+fclM18onlt+MhRkGErSIv+9Ik5
         Ob2CxF5jNm0FsKIlFYy3WjftDviRzCp0scq4BeMvqISBEfjgLjwDpO0BQMhAuQKWKbKf
         InbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ib+SMS1SbTZoFoTW1mXuPsNF8p5yRT4qM+O8UKmhYUQmF91TY
	/gG4tWzNmdS1yI2OgMR7+Lw=
X-Google-Smtp-Source: ABdhPJz388WbO2lexVV1fY9qm814VTtrsOPdUVMsZf5Jzp3mFmdCUrRomFpmj6xjJqEuVp2ia1npIQ==
X-Received: by 2002:a17:90b:34e:: with SMTP id fh14mr937883pjb.186.1601572382716;
        Thu, 01 Oct 2020 10:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls2655703pjr.1.canary-gmail;
 Thu, 01 Oct 2020 10:13:02 -0700 (PDT)
X-Received: by 2002:a17:90b:1283:: with SMTP id fw3mr910130pjb.60.1601572382039;
        Thu, 01 Oct 2020 10:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601572382; cv=none;
        d=google.com; s=arc-20160816;
        b=AY2+yI0O5MxMp3+VwmYOPFQKr3v8vunpZqyzKkq6EtJF5JRC0euSrKLt7OLjRSuxQ6
         O2TGHV+bnTd9ji//3ElA0xwRpFNRaPSLao3q1Kl4Q9hTvr+T55vteuGi/7DhiYHFg+oW
         W87gl+QfUdm+uttRxg/z5bgppjpWQNtLfBEcKBdA3tHmb8kxyGYNVvUN5jorYSA8GJDW
         l4/4OoLTUYVNc2WjMjzEUtXgVC6cmZl2X18RSJyB/hufbmOcm7pbqqRBzJ/X6AKM4cYz
         pD5lfONQLJ2dBNAacUEwY9r0Am2VfWlPq6STDXYpT2TOGTRdawUoEGot0ECEp9AL8hZj
         Pgjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dLikGkOqryKP179fByv5urQ+O+g7h2nLwd4WFvcY0JY=;
        b=F3Jhe0DgA+L/36M9kRWP2VIHzm3FDs0m1rEjrZsnM+Kxak24vwN/CQZUT7OMqgUVtX
         /ftQmRMqwK0f9rZ5dXrakKp2CVml3FcR5UCUGzIv7vQmCEdAk4efCXfvWlao+7Jzifm/
         sy59VO+hy3/s2mjTH7pxiryqLc+ioYj2jXc+ipBcPYymWBAYfhdR0UAkbSfpQZlQWhrB
         NNaAAVfrtH68QSBnDa+HrB5HYYWLwPNsesMFEAapFGtZE/sm00Rpjui1Vv7nX9DsznhD
         r0cXMpCYcLJ+2WI0kY6MBYn26nuFSKlYxwj7QtT77uWT5/5R+zfEVV5khQs0pGr2Qidh
         OYjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SqhEKiLp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 18si417382plg.4.2020.10.01.10.13.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 10:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id o20so5133903pfp.11
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 10:13:02 -0700 (PDT)
X-Received: by 2002:a63:1c4e:: with SMTP id c14mr6750552pgm.98.1601572381663;
        Thu, 01 Oct 2020 10:13:01 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id c20sm7123897pfc.209.2020.10.01.10.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 10:13:01 -0700 (PDT)
Date: Thu, 1 Oct 2020 10:12:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 12268/12330] ld.lld: warning:
 drivers/built-in.a(hwtracing/coresight/coresight-core.o):(.ARM.extab) is
 being placed in '.ARM.extab'
Message-ID: <20201001171259.GA2468854@ubuntu-m3-large-x86>
References: <202010011618.NJOZzKqU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010011618.NJOZzKqU-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SqhEKiLp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Oct 01, 2020 at 04:00:25PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
> commit: ad32dae3950bd32340f4b7c9ee05f0633d9e8e32 [12268/12330] Merge remote-tracking branch 'char-misc/char-misc-next' into master
> config: arm-randconfig-r011-20200930 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ad32dae3950bd32340f4b7c9ee05f0633d9e8e32
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout ad32dae3950bd32340f4b7c9ee05f0633d9e8e32
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_hash.o):(.ARM.extab) is being placed in '.ARM.extab'
>    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_aead.o):(.ARM.extab) is being placed in '.ARM.extab'
>    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_sram_mgr.o):(.ARM.extab) is being placed in '.ARM.extab'

Should be fixed with
https://lore.kernel.org/r/20200928224854.3224862-1-natechancellor@gmail.com/,
obviously not caused by anything in that merge. Still waiting for review
and acceptance.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001171259.GA2468854%40ubuntu-m3-large-x86.

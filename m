Return-Path: <clang-built-linux+bncBDXO746SYYBRBPVB7H5AKGQE6WRO5CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F30DA268069
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 19:02:55 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id j12sf3792073otn.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 10:02:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600016574; cv=pass;
        d=google.com; s=arc-20160816;
        b=pD7MS9IaqcJgZ9O3yqtW/vlOzLdsTDKMn5UXeGZv8sczU3VA9b7Fe7pBJElOT/TAmT
         SPKH5LGycTCvATW15mH+qtGzfjLVDfHEFRaBk6/qvtAlEYwgjmIctX7UtCuOGDbobcTU
         zz2jziXfRO6JR53mt8DhDxys8/JVVsPBjIrS4fOuK77E4PZTli5U0GwLbGt6bsv3eNBz
         i3zUMHfKMQsC081KZW+CFxKJkES/6Xnb2Mu7HJqwPAyrf7jGz0ntnM/eaQSw5rOUuETr
         CGkeD9gAZ0QrfYq+YjBmTdSnlS+myoXf0vI2gRZZm2ChHF/tHNhHnWhEOjAcWh1XC5si
         PmBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=B9Y9VDF+l1jAL1X86vHt4ynwYcaIA7wQ8TSjCDHRKcU=;
        b=ZfrIyPgZYShhmEEPnfYeyviFOFK7qpFG/h1+Bxwbs4xBDCnbxGSOu92aaQodyMy2ws
         XuST7oKzzgYxFIQEILFfAwXYwPgpVf8igomBwTD95Phuk6Z4hBTFgnjIVOW2lY1eU8ur
         uKuPQXn9capVmZPt7SYLgPzPVxWO7khTJV3SDr7yNZ1luvCzzglZlPOnYEzuAS9L4Q9N
         igmFs1RuzPhl3bApfauYdyN/jBgn3OQ9w2cAlpETyFgEnbZv521PWg9CB3rW5JpZAkuW
         lOWAkJMaB7MZ39cuw62gskPZRjKAAWo6xBlDUqRny2yXL0zyK9Hm7h87dKgU9jxFK1eM
         k8oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="dO2tH/ay";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cwnhhDvy;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B9Y9VDF+l1jAL1X86vHt4ynwYcaIA7wQ8TSjCDHRKcU=;
        b=maUPq8iykEcOR/g97qkqxK74ZAwqA9Ikw8H5ArRwUBYOVJXz9ZMsqQYQdSJIOrZPs3
         mIwhLYNk/6yfxoytBxr1uFpD8j0TzBLzzh108E2p+ZFlcVHLq380nV06mGtWbNgu+HE6
         Nvymt2zoWtLFBgQjiGR8eJwruk7v7bSKPG6uOhtzjFrFxjXWrLtMo4sw+XKE+sxpDZa2
         tX7wbaP3qX8WRa7bJlkzRK5yDGiY48IfZX0EELXdcaLCGxrb8UTsNWAUHJHcT1M8i1si
         4uwK9Jqf1L/TmHTGzZk7/Y9G4/Hu6t7ZTu9K9zicE2tRJu8oBLjHjQLuxrSQhEMduPeh
         t64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B9Y9VDF+l1jAL1X86vHt4ynwYcaIA7wQ8TSjCDHRKcU=;
        b=uVZeRja3RRWjWFJBuDGwzzSziyrUBcXrzkwHDJusBl3JQ7K7AY509Zv218htk+Yn2G
         63bwqQdJ9zAs4E2DkXvP5zJt/Z2pMXaObv7/mU8kQW8ERmN/sbndFz5L3dRwr5sr66py
         UQKUiaB1OTG08ViE05CbRS4BXFpWQAVr+Br7TIJfv+KJbWQdWxjiamNRvjJQSl1DlCgp
         KqWFn69ipMagb4baRiaZOaPpS5iPqNDaaemZ6NlcHDH7ZDgPRwqGRVXb+gfY+FFR09ip
         dzMfxLpjMW90IqkwzHE3eS6Epn0dnerQuqENJzcuC3EAPSMABZn4MztglTrxilQBeuM3
         Jmaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SIMmSf3dkKbaFiJTejAvGiNyWw6ufChdmqtg7koLd3G29QXef
	MDm27FpuOHZ254aEP+J+4E8=
X-Google-Smtp-Source: ABdhPJzbubOb91GmZa8QQQuDEA+FfCNwg2Z1DgsocmmmsxBNcmE4xehA0WqHRJJ+Hb5ckPXYY7FoiQ==
X-Received: by 2002:aca:843:: with SMTP id 64mr6546115oii.135.1600016574803;
        Sun, 13 Sep 2020 10:02:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:210a:: with SMTP id i10ls1517351otc.4.gmail; Sun,
 13 Sep 2020 10:02:54 -0700 (PDT)
X-Received: by 2002:a9d:7084:: with SMTP id l4mr7207616otj.161.1600016574444;
        Sun, 13 Sep 2020 10:02:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600016574; cv=none;
        d=google.com; s=arc-20160816;
        b=aUMFzuncf7vQxeI4OK/Wu61V6pjoC1nRB0KIdguPrtcid3txxcjaXSUfAOG8rgRYO5
         9qCGM8iRzL1k1bjpK5jz8SDHp8m7wPLsZtDlMgU3RzDNdNGIcKEDUFtMjgZNVRO/hMDr
         Sytav3cbKvBbcTiMS+W/hAGoIQifQ+h+oKsjOTlMJLec88OLYaNylAc4lfQY5eqnOfs1
         EXzoo+ZmsBPemGxXOemLMRQa1oXYcMR8WeyfQEmagLHy9cWL3P+0gZE7XDnHU0qjfcj/
         6xar7hl6RTzoU3nOrWqMb22qg4WH2ZwETAjkU17hkQOkmJRvVzFiCK5/pRMjWTARhadn
         34LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature:dkim-signature;
        bh=I68WOSIiQRQaK8wsvWmyLtteLUz5lwvMFgZBpWAd3Ls=;
        b=NT2eXtP8To3vjICNq0Z2NZ0rtjJHH21Cho4vKM6HFdimBHb/p75EhnTiloRwOwLecD
         O0wd5gddh09BguSvAZ1z5JbETZwZbxDN0TXBQ12xO+h+IHiCuH/8B8Skx997LwOF/08O
         TESXnX1cJcmtUsxjmnv1c2wm2ZiwO3/OhsiafkE6lSh8b9AmEWPh7q3uSbI3QWOqh4Ly
         IZxQGi7Rr0owVESncUZJUAao4OWuhe76AUfkMa0ucXtTd26Pzsi+4juCafY5XjZaLalV
         JKDdb/mK90gei7FmtnxQyHW9bD0Fi4txG1KMOIN5BN2mKNCmHl0QqPLjGIC0SiNqIist
         YXFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="dO2tH/ay";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cwnhhDvy;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id k7si557482oif.3.2020.09.13.10.02.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 13 Sep 2020 10:02:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id EC7478EE1A9;
	Sun, 13 Sep 2020 10:02:52 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRQm0a_uTo_g; Sun, 13 Sep 2020 10:02:52 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 2C15E8EE0F5;
	Sun, 13 Sep 2020 10:02:52 -0700 (PDT)
Message-ID: <1600016571.7833.9.camel@HansenPartnership.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Mimi Zohar
 <zohar@linux.ibm.com>, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, 
 David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org, David
 Howells <dhowells@redhat.com>
Date: Sun, 13 Sep 2020 10:02:51 -0700
In-Reply-To: <202009131413.8dt8QEc8%lkp@intel.com>
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
	 <202009131413.8dt8QEc8%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b="dO2tH/ay";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=cwnhhDvy;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-09-13 at 14:26 +0800, kernel test robot wrote:
> Hi James,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on integrity/next-integrity]
> [also build test ERROR on linus/master v5.9-rc4 next-20200911]
> [cannot apply to security/next-testing dhowells-fs/fscache-next]
> [If your patch is applied to the wrong git tree, kindly drop us a
> note.
> And when submitting patch, we suggest to use '--base' as documented
> in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-
> 2-0-trusted-key-rework/20200913-013201
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-i
> ntegrity.git next-integrity
> config: arm-randconfig-r013-20200913 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 3170d54842655d6d936aae32b7d0bc92fce7f22e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master
> /sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> > > security/keys/trusted-keys/trusted_tpm2.c:19:10: fatal error:
> > > 'tpm2key.asn1.h' file not found
> 
>    #include "tpm2key.asn1.h"
>             ^~~~~~~~~~~~~~~~
>    1 error generated.

Do you have the actual build log for this?  On x86 the build process
builds any precursors first, which is the tpm2key.asn1.o, which
generates that header file, so we see:

  ASN.1   security/keys/trusted-keys/tpm2key.asn1.[ch]
  CC [M]  security/keys/trusted-keys/trusted_tpm2.o
  CC [M]  security/keys/trusted-keys/tpm2-policy.o
  CC [M]  security/keys/trusted-keys/tpm2key.asn1.o
  LD [M]  security/keys/trusted-keys/trusted.o

Is ARM doing a lazier version of that?  In which case the fix might be
to move trusted_tpm2.o to after tpm2key.asn1.o in the Makefile, this
line:

trusted-y += trusted_tpm2.o tpm2key.asn1.o

James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1600016571.7833.9.camel%40HansenPartnership.com.

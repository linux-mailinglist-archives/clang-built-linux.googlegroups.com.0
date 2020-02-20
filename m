Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3M6XDZAKGQEMQNFTRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 57201165661
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 05:47:43 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id m13sf1527362otl.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:47:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582174062; cv=pass;
        d=google.com; s=arc-20160816;
        b=klFmbCJ9NLXU72fcKu7D3kdPAbWJiZ4cHrCNhomCileqIhf4EQdw17H+r8JI0Oj0/4
         AzdxiT+NOgbKlUAfD78wwHCbsma2a2SCYit/kITSnBFXLWkJJBGTII/meV7HjJWTo6vg
         TJJqBiSFUKu0FahjpcSX83PTK3EjhvKTJ2tbOsqNOTFJbqfCD4T24gE0bsLd6f4nPV6w
         u5NmEEnuHhnTgr1cb0M9H4jmwNZ4u9xiGXKV5pTYh9ZlJG/0mTBWjSxkAeKTY4w0xRI/
         Yo66za8JQ1xX60iAoHr3lWPYJZ0kvuEmaUa1xzU8Ahk+nql2Ja2Zf+y9h3r946R3tZG6
         hzBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Y7HrmnAcziYOk50o7Tt0aU+msBti6SNNt4lFAA2TvdA=;
        b=VBJY6UQzhPR7ZUNFhAYPU0aZFOR1AdBthkDPrJDa83jrWR4lewMY1YuJV1zHdnwWE4
         8Tkn+nF/d2bcfqtUjJ7AenLhKVIhIO1mxCC59N78Y9zXYVVyWnSq3p82x0LfWr5wEqLX
         Lmu6X0FT6EwXrOQYNJtLe/bnR67A0DgCdo1oAiiPImiugmGyt4bThE1hCFbIOclHmnis
         ivvk8NnlsumtMQUOjTeDkdbFw93Nr0gE8rkaJNd1svRzFEJscm1Xl9tigOcx9jeXJKRm
         dTL6BcTJ2i93FPRbzESnpEjBYb0AgKfjBEDP1kIVMs2XKh5+nH55PyTpy273yJqoJV4q
         M+jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nS9Rs4OM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y7HrmnAcziYOk50o7Tt0aU+msBti6SNNt4lFAA2TvdA=;
        b=VUn/GGDnMPqtTyni2IERST4QASDfJSqUd3W8yjV70w8Pvvjtz+w8GB+beXxcbG3dkr
         cPr89tr+qia42gGTtAN3I0PgQkDXZDQhJLMZvCVvi7DC0rzMDGPYXBbinSWYv5CjF3k+
         tAqcrsGygfe5hym+pCCAa+WIjhKLLUy0ilvthX22qFh7UhGxXPn9Dj30nMiusnOMXM+w
         OTXWV6Prlkz06Dchc/EVmjNSpVmcunOX/AulgEIM3vb7tqVSW1fgrWGsZLkYbHjRfd7u
         6lQDnvrevH8kT0g3d9kjJlAF/tgYy6V6lZF0paXdOvbvLLQgPmGI6V1XqnItR0Wx0MeG
         ABgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y7HrmnAcziYOk50o7Tt0aU+msBti6SNNt4lFAA2TvdA=;
        b=retIaOwVA+cE4j6kx2A6fCmkCXpdDR9Z/P2GF1uL5JDvhUOZPCJYGUUCk8gnQUp+/R
         0rJmiJQj8ljWySAqRsQ1hoD1GYJGtnZgNDMHgaRYCj/whTvGWX54iSflGjLYsP7Wnhdu
         eboowQt3412/smt4uc5z6+5IG0hFGjDdDnuTGxu/KC4MqmelNI8k52Kp8s3hpeNllsQn
         JedglNRJ/I8ylbMrI3ub6WPdDb4FE/4u95OVPXJlfPXHP3qAk2Iu5j1MOMJPcL1vKipU
         aHCo8wYnQs1jvWH5V3CKnHLJ/HA0TiUzXDWqEhNgn/PFs8xOHCsaL75Xz/nFqFFaWEWH
         8DyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y7HrmnAcziYOk50o7Tt0aU+msBti6SNNt4lFAA2TvdA=;
        b=XZrwL3F4Rmm7wuM9lWfZ+7TJOWQSL7nDWk9cYnwnSbD2NO3xa9DyknO1B+m3+LNoqQ
         iLTADCb76aKxu4Zv9tkBXhCWPa3LYKs64lj49d8qD2Dw+vVtSWtzXb51iXD59IIwyGoR
         BYNah0YLafv8CSTrNo2elOJLkKfJf8tspoTDj0BzpObHYP591UeksOIq2/dKBITnJQs9
         MsjoBEZTWieEVhCRekucM2CqKdWcWc9iKi+42QXID+ETIPE5EpMnN6HV4j/f04WzJngc
         5ZI2ZdReGbC3SNPvjEWK3w+6j1JbptScgp3JG5DEBVz3bpT2i5xDCJrwgY5pBEjuuYZb
         ltRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfCKyoEWWMph5ygI4usqnVrHzjjNsTfMKsyHzK91wajJgITXc5
	wtruesfoefIEnqEigb5mH5o=
X-Google-Smtp-Source: APXvYqyVGSxbAWTVDeap6nOA2WUIL3fAIhGDnm5jY3CGbSq2dduIT6B/YQSx+eOIIzTlQ6Rhk7/38w==
X-Received: by 2002:a54:4117:: with SMTP id l23mr768914oic.140.1582174061815;
        Wed, 19 Feb 2020 20:47:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls814501oig.7.gmail; Wed, 19 Feb
 2020 20:47:41 -0800 (PST)
X-Received: by 2002:aca:4309:: with SMTP id q9mr811474oia.158.1582174061467;
        Wed, 19 Feb 2020 20:47:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582174061; cv=none;
        d=google.com; s=arc-20160816;
        b=06I5zgmf0I6L5e7G7HkhqN/u5Np+2oEIatA5I9mc8iRgKHC51s5OaYZKjOdY/8bAlx
         qMAEnVPMZZacEgH0BOv4Hbo+MKyJ/byV/hn1XmBfw/qXQ51KxKkvNXIBV07taX0Xz2fE
         +ZYVd+CS7MfAexCCzqFqxwjpeyJT5fMjJ8I7d8HVtpd3pJP0mVGc4ezlzOd5TBea5R/o
         snOFGKgGrCNY9dlFaLsYVa/ltFMyEYv/2e90uNUHo3XzKcRuCRcja3JizXqjiocH6uoV
         HdxnAlSqIRUSnQLsBYmcU6kqoRX0mBPP0XMa2AXy0dRGX3tFM3d6PWW4Tw0LdsAX3o/K
         dtGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KZNpfd3uW/dHGrJ1OqbrGBtEIxU3y7NPnG5sbTn/bbU=;
        b=wLUIThHcLwO/D/FxfLzmbJo5dG3AYY2WUgAuoB+ETLRcIvC+jukwkLkBoHTHA669Ng
         +lSZwsbBiqq/04mA/uBblqG//VtiI+XWYjPY+cpH2t+oUkUAiJpvCUzUyAR2Dt7XOM9A
         0EScCFjzDMP6qm7be0FH0w7AQLuO93BsLc4G20J22JupXezE0dimwcgFjfeU7HJBf1Gb
         AqbRtWPvhvzLVmjXanU8Q4RY7zKtAvtC1tIj7FteltM6alRy8MdWyt+l+xmAAlmA0q2R
         Z2Pg940WPQRV0JbHbHkpEujWkZ91nquw4kUtdtVup+YQ9mcsjj5B+miyePyE9n3oleQf
         2CVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nS9Rs4OM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o11si191822otk.0.2020.02.19.20.47.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 20:47:41 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id w6so2508857otk.0
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 20:47:41 -0800 (PST)
X-Received: by 2002:a9d:6b95:: with SMTP id b21mr21081136otq.96.1582174061065;
        Wed, 19 Feb 2020 20:47:41 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r2sm724585otk.22.2020.02.19.20.47.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 20:47:40 -0800 (PST)
Date: Wed, 19 Feb 2020 21:47:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [efi:next 40/64]
 drivers/firmware/efi/libstub/efi-stub-helper.c:318:3: warning: suggest
 braces around initialization of subobject
Message-ID: <20200220044738.GA24047@ubuntu-m2-xlarge-x86>
References: <202002192125.QSSsNaaF%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002192125.QSSsNaaF%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nS9Rs4OM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

+ Ard.

On Wed, Feb 19, 2020 at 09:53:35PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: linux-efi@vger.kernel.org
> TO: Ard Biesheuvel <ardb@kernel.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> head:   99cf8bd2dfc23547cf823e19dfbe229ed26d6f9f
> commit: bb3cad853b4c79f782d5e015bca7da621950c820 [40/64] efi/libstub: Add support for loading the initrd from a device path
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout bb3cad853b4c79f782d5e015bca7da621950c820
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/firmware/efi/libstub/efi-stub-helper.c:318:3: warning: suggest braces around initialization of subobject [-Wmissing-braces]
>                    EFI_DEV_MEDIA,
>                    ^~~~~~~~~~~~~~
>                    {
>    include/linux/efi.h:846:25: note: expanded from macro 'EFI_DEV_MEDIA'
>    #define EFI_DEV_MEDIA                   0x04
>                                            ^
>    1 warning generated.
> 
> vim +318 drivers/firmware/efi/libstub/efi-stub-helper.c
> 
>    302	
>    303	/*
>    304	 * The LINUX_EFI_INITRD_MEDIA_GUID vendor media device path below provides a way
>    305	 * for the firmware or bootloader to expose the initrd data directly to the stub
>    306	 * via the trivial LoadFile2 protocol, which is defined in the UEFI spec, and is
>    307	 * very easy to implement. It is a simple Linux initrd specific conduit between
>    308	 * kernel and firmware, allowing us to put the EFI stub (being part of the
>    309	 * kernel) in charge of where and when to load the initrd, while leaving it up
>    310	 * to the firmware to decide whether it needs to expose its filesystem hierarchy
>    311	 * via EFI protocols.
>    312	 */
>    313	static const struct {
>    314		struct efi_vendor_dev_path	vendor;
>    315		struct efi_generic_dev_path	end;
>    316	} __packed initrd_dev_path = {
>    317		{
>  > 318			EFI_DEV_MEDIA,
>    319			EFI_DEV_MEDIA_VENDOR,
>    320			sizeof(struct efi_vendor_dev_path),
>    321			LINUX_EFI_INITRD_MEDIA_GUID
>    322		}, {
>    323			EFI_DEV_END_PATH,
>    324			EFI_DEV_END_ENTIRE,
>    325			sizeof(struct efi_generic_dev_path)
>    326		}
>    327	};
>    328	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Should it be this?

diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
index 618c189dd..df189bad2 100644
--- a/drivers/firmware/efi/libstub/efi-stub-helper.c
+++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
@@ -322,9 +322,11 @@ static const struct {
 	struct efi_generic_dev_path	end;
 } __packed initrd_dev_path = {
 	{
-		EFI_DEV_MEDIA,
-		EFI_DEV_MEDIA_VENDOR,
-		sizeof(struct efi_vendor_dev_path),
+		{
+			EFI_DEV_MEDIA,
+			EFI_DEV_MEDIA_VENDOR,
+			sizeof(struct efi_vendor_dev_path)
+		},
 		LINUX_EFI_INITRD_MEDIA_GUID
 	}, {
 		EFI_DEV_END_PATH,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220044738.GA24047%40ubuntu-m2-xlarge-x86.

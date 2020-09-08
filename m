Return-Path: <clang-built-linux+bncBD26TVH6RINBBUW53T5AKGQEFU45O5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id AF986260B98
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 09:12:19 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id fy7sf8172000pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 00:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599549138; cv=pass;
        d=google.com; s=arc-20160816;
        b=hN5B2kYoiETvNYTxJmYYoucz9ovMyjPFSaSzwhkE4CC6qjzDt1+dhc3+Rb/WNj7Xl1
         93iwpevLMsRkZVySw2xpDAZ7P2LjL7YZwyHpkFu63a4qkwhjW63rQ9bEyWHc+p+N93XI
         HAyM7uVoc4lURxEDa3vNM1r0vzDbTcrHDEvuJKNEWWakznDAFqbWWMp6cMsPcmWs8a/Y
         kfp++yLBcT5HgmTmStZvqgfkySNjNOkuXN0hhS7Zw11MMIdyHf0H5YJZVmlhAJF4Jjjd
         OV7r1AVVrWJafuRJGT5f0VqCJR8o48ViO4MFGUaSfpYRfLl3X8UQV2HT6WkkzEgijBn6
         nV+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=3/b0wWQsamEurOiN0UW2W88zZbBJYcekkAEiNxKyzOI=;
        b=IXs7QykWl5f/wKcuE3fIaZzXXG/QsRZNKpYdrH66pM8+dgdFDWsHEWqmVgmSUitnC1
         o/Qlrz9d0LMrhz7BD6DIRnt9d/fKpUcHAhYPri15SRBlJEt2vYy+D9ZpI12Yjv0KZDBJ
         h5xT3brinrY152p13Mx5OmcASCv3CkVgbQV2FetBjVBDE3TBssmVUUkgsQTSBSGrbE2e
         wUkwahj7gFxT04u9Aj0pyD21HpIM5LR1PltqV2vntqUAxdBoGSJLoctn3TULhMnSMbfM
         VBy44YX65S2ak6pwj/UJFMK6dJAgyQ/4zNlEoW9339Sr30GFO16LbZsntf5QwGJOuM9B
         k+kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3/b0wWQsamEurOiN0UW2W88zZbBJYcekkAEiNxKyzOI=;
        b=jUZB+DVtFGIwkrK63ohY25cRntpIizhrZVOT6LBkNDToqok1aat/zjkq7cpwnvEOez
         WTCekc6f16BQ2iVf9A9FObVMTkQ+EM0KKqQmNBapHGIPj4XVTRzITbD2FQig+2sOtNx6
         fJCdUxazp6SHnz82r2hWmkFziQlwkSiBcb5GPYUvCJ7SNC/88kAPs8OdiOLWtxPNbLyW
         Pn0jXawE4j+x9ciGP5cROMyRDth9S8BDNoI5OJUMqEsD63u68WwJC+zlHzyxklyESjCX
         i+Gcinq5o78en36TdK9Y6QbPfFievo5Y3W4wHh4w8LO8Y+cDUXSXNUussb2I4rCEILip
         jK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/b0wWQsamEurOiN0UW2W88zZbBJYcekkAEiNxKyzOI=;
        b=GIoIPA8jxcrZ4QNC8Gx4x4FZZKVHaBtvrWkxHhdvzlU9wCNNt0oTbCdp7/YVZv/82Q
         vIL1tLLK4Ykhymfk67FQvo3Pgu22tflfBdLiydIKrbI/3eRAY9hD6OO2NS3dtvqkXSjf
         +XoyY/OWFmqS5cyT+7JStBnGAdbGM2IzqB92W3B4QSLHswAMnJgoVnku8mdlAH3r2/qS
         1m9Ei1GUiKbF33UMoWKLj6cGKDC21nNyLgFd02Hcdq0mGnY0Ey2YVvw9Swf4r9tsbAo4
         ovu9gCJwE9WUFpMdF6o/wa37QVIkWhX2+IAEJAmCnT13QykbO5ml1XZP7ZWYv1jTz+if
         x2EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JwpXJyDK0wPwdoyOTPPJuHhQtUwuyWcgk5yj5OWgFsgb4QBo3
	N02VIaduBIZb4QOKfwaRvNU=
X-Google-Smtp-Source: ABdhPJxdEqg9FaiIGB/wShboCWdclQTRVSkXQIHU0a4Sx49ipkhmoE9CXReSO1Cse6NOVNH/1I+Rkw==
X-Received: by 2002:a17:902:221:: with SMTP id 30mr22663938plc.222.1599549138328;
        Tue, 08 Sep 2020 00:12:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9706:: with SMTP id a6ls4814969pfg.9.gmail; Tue, 08 Sep
 2020 00:12:17 -0700 (PDT)
X-Received: by 2002:a62:ab06:: with SMTP id p6mr6486334pff.131.1599549137853;
        Tue, 08 Sep 2020 00:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599549137; cv=none;
        d=google.com; s=arc-20160816;
        b=cNH5rQkGIGmb4+dmKEi9e40x+DQpE8tP72Ssi9gLlSImGuPQmN68wtPIZmo7RxasN/
         rB7eMQpwkbBYAtlie9c7B2G1jF0gn76tS0fBxA15ZfGpbJLPCk/7DXVl/4/enE+iKcX6
         1NXzqJ7uhTFPDhoFMAKYfv7R3ym39XesMqkb46dOaXfk/70k8DCoTv87QtVbI9QcUkBk
         /Z7tjROfmS6JushIhDGnGBzfIYsRpvQ2ICTW9/HIH0VMIQWKmvjKk38N4o+sctVo9DVX
         9jCMcnLq02cF8TH0W7t/YkdU4E9dtN6ap47WSWbFl3dpY5NXqmB3Inr6L2K1nmRkHDu+
         KZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=LLzWH8NoKFVl1QjnEfnm15lIKdkotl3JdG7Qynp3xOo=;
        b=qXDdIJuTf9Datu8MU11YJEEvjV/8LHmhXhmlyJ7ttV54r83fsSrazNV4WB59OVUGPc
         6X+W7wxomVSdw2fAo+4YomdZysNwPpykx8vIV6DYCcO/DViQdzbD5hLQSnkp0BlQ3DGs
         iRz7uUdXkwoFTNbasCbHE8y3ivXdeqY9HRhxWDx9fELj20ZVUQuD4hJBfiPm52lErm0b
         72ee1XubH/ZRiytZFvDFxjR0l9higUy3cn/Wtfs6967iwJfoIg3IYFSoNyeL6YB5ntra
         mxrAOfZ0BqIW8nm00hQZmAcYXncSgE//XYXdPgE+W+Y5T24l6DAgNuZdKfeX9HvxyQ7r
         hXGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d60si1313893pjk.0.2020.09.08.00.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 00:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: HG4iuVZdQe4q/7klM4BAsn3JV+7mIant6iKWZDmk+k38J0syMAMqGWtSiasjMnQKnC1gSPMcGL
 WTA7JLzF5Uow==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="219644516"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="scan'208";a="219644516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 00:12:17 -0700
IronPort-SDR: C6ocrrPGUZYkHtdifGEQiGc6+rmQ5RD6n/AEcHZlJCj+l9w3XFfZeVyhMneb8eir+SuOHGu3+j
 xiGLh6us0N9A==
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="scan'208";a="479903406"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 00:12:13 -0700
Subject: Re: [kbuild-all] Re: [jpoimboe:objtool/core.WIP.julien 5/14]
 ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection unexpected
To: Julien Thierry <jthierry@redhat.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Miroslav Benes <mbenes@suse.cz>
References: <202009050512.VSnsZ4vs%lkp@intel.com>
 <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <cf66ced6-c102-6591-9edf-9bc56cd05393@intel.com>
Date: Tue, 8 Sep 2020 15:11:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 9/7/20 4:42 PM, Julien Thierry wrote:
>
>
> On 9/4/20 10:58 PM, kernel test robot wrote:
>> tree:=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git=20
>> objtool/core.WIP.julien
>> head:=C2=A0=C2=A0 bc5b275638c5e74126aeb8ae394f2b784a8346bf
>> commit: bbfd86269d713a8f26fd4c90b6b7b90a5967e1fb [5/14] objtool:=20
>> Group headers to check in a single list
>> config: x86_64-randconfig-a006-20200904 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=20
>> 1284dc34abd11ce4275ad21c0470ad8c679b59b7)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install x86_64 cross =
compiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-x86-64-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout bbfd86269d=
713a8f26fd4c90b6b7b90a5967e1fb
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dx86_64
>>
>
> I've tried reproducing this localy on fedora 30. I don't observe the=20
> error, on the same branch.
>
> Any suggestions on what the issue might be?

Hi Julien,

The issue can be reproduced if /bin/sh isn't linked to bash,

$ ls -l /bin/sh
lrwxrwxrwx 1 root root 4 Jan 18=C2=A0 2019 /bin/sh -> dash

diff --git a/tools/objtool/sync-check.sh b/tools/objtool/sync-check.sh
index aa099b21dffa6..d802da73b322d 100755
--- a/tools/objtool/sync-check.sh
+++ b/tools/objtool/sync-check.sh
@@ -1,14 +1,18 @@
 =C2=A0#!/bin/sh
...
+done <<< "$FILES

Best Regards,
Rong Chen

>
> Thanks,
>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection=20
>>>> unexpected
>> =C2=A0=C2=A0=C2=A0 make[3]: *** [Makefile:67: tools/objtool/objtool-in.o=
] Error 2
>> =C2=A0=C2=A0=C2=A0 make[3]: *** Waiting for unfinished jobs....
>> =C2=A0=C2=A0=C2=A0 make[2]: *** [Makefile:68: objtool] Error 2
>> =C2=A0=C2=A0=C2=A0 make[1]: *** [Makefile:1890: tools/objtool] Error 2
>> =C2=A0=C2=A0=C2=A0 make[1]: Target 'prepare' not remade because of error=
s.
>> =C2=A0=C2=A0=C2=A0 make: *** [Makefile:185: __sub-make] Error 2
>> =C2=A0=C2=A0=C2=A0 make: Target 'prepare' not remade because of errors.
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cf66ced6-c102-6591-9edf-9bc56cd05393%40intel.com.

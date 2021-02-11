Return-Path: <clang-built-linux+bncBD53FBNV6ACRBWNCS2AQMGQETPGS43Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE47319430
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 21:19:38 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id s4sf7053393ilv.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 12:19:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613074777; cv=pass;
        d=google.com; s=arc-20160816;
        b=mUyA7wHZAGxH1CO0hKYotMo194X29i6D3kDQ19VNnvXWwK3PXVdoWNnSY6Pxgds6JC
         k7q9RjswuywtIj5RZ7PPq5DELCHoWXf3zundjn/wr7n1b3jlGoVByGghAxUwlu8YdeT4
         TCBA7IqerLOkc/R+8eJtT6NDtUdu5c628F5VycwVuG2V6oKRdKSr/GgVJ2ClKF/K0zUd
         NEEIOxGp/KYhNmfYjUJfqwo7rniUQw4nAMr0OdvrXferyy8oBxeZwqvvkBT3wJXGEnPl
         GeK0ps4ON6quu0W1OyV1iBI8RIqL8oYkzcBEKRxKX087zhjcdbptBe116+tzR/E1FyGU
         odbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=o1qe9T6meG6J4CIAtKIbh1x8inrDKsGNzurqjaOiDPQ=;
        b=dfX/UOBnv8XXVxnmsoXOUQA+7w/luNBMKKSdJI6/GWFAh9fj110JraCI9Y2Y6FwRkV
         VrdtJvofLplfc7J5xn+Wu7/lHFpNGg9zs+MWtymaAH8i7dxZdB4WcnU3Hm9wpnMG+lWn
         fkdVr3ZVVAi0yy1FcrldViq8YHTuSe1CMTPvEvqTOKn0Sn0YPiLLlQR/QraequvuWkcx
         85x3VrF/uMyXPaAI/h5zY7XFVg+Qr4/JKhHD5ylOWdlyt+uSrSCAEcT2jCKjE+exkFIJ
         TpzXW/PTIsDfExsIU9biirT36vyLTKUpbFtdpiWHUkfPZfr7ue0GtHfzlOaVpalZUJvK
         FrYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Zpo1d+Fy;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1qe9T6meG6J4CIAtKIbh1x8inrDKsGNzurqjaOiDPQ=;
        b=mCTfC02VzKYBkwykV/7EM8+d1xfA90+/jxahWxwroDpgydE0F9Lh/0J8UU+nUpY3Vx
         UMSXnSTJMno4EiVdDYFAWKeUz3CpquF+QGzOGHCTQ6UXG0jkk2/7DS3ONA8jQ58CTuo8
         xXvT6W89WqfGZkonz1YmCxtHAzxc8nsS6cgzwD/zHJjKUkjN3MEFXh52YVKim+18+K7E
         DzbaNe5aF9GfMrHgnxI41fV3PtlX4oEwaKinhvm7jpdye3w7QEoc2AUHTCH4kb5A4lU2
         w+mVmz7cVKn8wcXAqm02lYZlrIsAI5hGAPPcagoVOjAp9+4duxKu+Bp6MTkZfhKI88UD
         gIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1qe9T6meG6J4CIAtKIbh1x8inrDKsGNzurqjaOiDPQ=;
        b=QA7ula045QWbcIgN96ThSBp8RH5YQWOoW5T4fP9zeKV3CY2AeSTZJwbrQZ+BqWAmeI
         Vjuzrr50PJya2WhvfRmDyLH0GayrR8VSQsJAM9uUsdIb/gA6qUqdBe5LNripNcbEwLks
         1Ahbv/v9MKRp/IrTfStqVGGthIombrxfAFMyz1vV+rXbHyFtK0wAeAE5Q9JwZMurlV/j
         noB42wXPPYhjMMuMO9T3Nq1H4iduHz6JxJCo9XmgN6MaQUPfONOYydgXistKHNBVkrTB
         ynu4Pb/vt3Ym+eMgcHC0SywlqCT2LQqX84krxiMXAS/iqjFgrGX6GP+hRdyy7diQuBHZ
         i06Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WfSLTXhFvoa8eahGbEdGgc1v11K1XNGC//4ZW2Rv00wvqZaYc
	pFk+yHHxlrEVIv5EHEN+j1s=
X-Google-Smtp-Source: ABdhPJyAJtBNbrOtuR4zat2uMd+jut6L6aw7/W4ikWCNuo8jKqhakL3gM/k8vRFXDJ1t8JDpMr6SyQ==
X-Received: by 2002:a05:6e02:1404:: with SMTP id n4mr6940934ilo.133.1613074777780;
        Thu, 11 Feb 2021 12:19:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c0c7:: with SMTP id t7ls955508ilf.2.gmail; Thu, 11 Feb
 2021 12:19:37 -0800 (PST)
X-Received: by 2002:a92:c84e:: with SMTP id b14mr6974609ilq.255.1613074777388;
        Thu, 11 Feb 2021 12:19:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613074777; cv=none;
        d=google.com; s=arc-20160816;
        b=OcTZnbrESSudWfRYoWtMt/gQRgDdnJAkkZ3DaYMpQRsMUR3dqi4/tDAdj/itTvAoV7
         5LYWlvS6CZIG1m6/MY0yCTX9QodE/sPJZ5ya5/+a19dT+71ThHy5p8EZ97+IO44x11BR
         IIisYiueiTHnWnVDdizAgAHuCN0f7rrA2XafRz4k/qwxQko0Ivj71mI5GjcztAjB3Lzp
         cpbq+9U4r/yz3IsaF4IB2Mz6yb2L6XgoIsN/SGNgqGiMeFodwKawi+pDDVrcq2tlXwHf
         3/2tWedsMMT/Nf8uUoicMu39AtsLDAXPNaXHKx0/wsdjZ+njyXCZdZ1N+HpT8Bh+AKvs
         Wb4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=0XBTigk28D5UGH5PGrx/40KiB5WwMrauDa1HZ37FBVA=;
        b=Ka7mIvtlQoSMCkyU+udIe3nMztcLZQrEKOF0dwv+c14zNsXp/MQsLWe4H6B/fscX2Q
         XMCIDtIXL9jK2UUEip4jC/LR6uGnnU83Xz92zqzqxc8YF8leew7/XUJCBj6PQt1LSor8
         VKCfHa00cn+xcxI/g0Z5qG5s+aM/PoYuhy8K2Gk+RZFNkw1jI7sIsyIIyh4O5h3c4Ykn
         2QxvA5XgZQQpFdeKYqCSj3Ec+nx5MdnFVXKNdDCA38hHREvLh8B96xzgOciM9frFlT6H
         A55pJfjn4HaRanhpni6vkd0UKJ5mj9YupU1mcuwhPw5JKIpMdK1lzNJCoIOa1khJE8ro
         QpHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Zpo1d+Fy;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d13si273005iow.0.2021.02.11.12.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 12:19:37 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-F41cjXKsPryHp3VVwvJopw-1; Thu, 11 Feb 2021 15:19:33 -0500
X-MC-Unique: F41cjXKsPryHp3VVwvJopw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A906A1005501;
	Thu, 11 Feb 2021 20:19:32 +0000 (UTC)
Received: from localhost.localdomain (ovpn-113-64.rdu2.redhat.com [10.10.113.64])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4292219C48;
	Thu, 11 Feb 2021 20:19:22 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e11=2e0?=
 =?UTF-8?Q?-rc7_=28mainline=2ekernel=2eorg-clang=29?=
To: Nathan Chancellor <nathan@kernel.org>, Jan Stancek <jstancek@redhat.com>
Cc: Milos Malik <mmalik@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Arcari <darcari@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com,
 clang-built-linux@googlegroups.com, Yi Zhang <yizhan@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, CKI Project <cki-project@redhat.com>
References: <cki.F92FFE8E6D.9IW1XQCYQ7@redhat.com>
 <20210211183744.GA4084774@ubuntu-m3-large-x86>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <bc4c35cf-bd79-e4c0-2fed-41f7c0b1ae3b@redhat.com>
Date: Thu, 11 Feb 2021 15:19:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210211183744.GA4084774@ubuntu-m3-large-x86>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Zpo1d+Fy;
       spf=pass (google.com: domain of rasibley@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



On 2/11/21 1:37 PM, Nathan Chancellor wrote:
> On Thu, Feb 11, 2021 at 05:11:07PM -0000, CKI Project wrote:
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/tor=
valds/linux.git
>>              Commit: 291009f656e8 - Merge tag 'pm-5.11-rc8' of git://git=
.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
>>
>> The results of these automated tests are provided below.
>>
>>      Overall result: FAILED (see details below)
>>               Merge: OK
>>             Compile: OK
>>   Selftests compile: FAILED
>>               Tests: FAILED
>>
>> All kernel binaries, config files, and logs are available for download h=
ere:
>>
>>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/02/10/623699
>>
>> One or more kernel tests failed:
>>
>>      aarch64:
>>       =E2=9D=8C LTP
>>
>>      x86_64:
>>       =E2=9D=8C LTP
>>
>=20
> It seems like we are very close to getting a passing result... From what
> I can tell, the failing tests are logged in these two files:
>=20
> 9548629_aarch64_1_commands.fail.log
> 9548632_x86_64_1_commands.fail.log
>=20
> which shows only one test failing: ld01.sh
>=20
> which appears to be this one:
>=20
> https://github.com/linux-test-project/ltp/blob/c5004bf071bf8ca96a01f03bde=
873e9292f7f83b/testcases/commands/ld/ld01.sh
>=20
> I do not understand how cc.out could have ld in it, when CC is clearly
> gcc from the log... it passes in my testing. Has the test been modified
> on your end?

We haven't updated recently, we just wrap around the upstream test suite an=
d I don't see any recent change to the ld01 test ?
I also see it fail the same way on the gcc mainline kernels:

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/02/10/623698/build_x86_64_redhat%3A1101938/tests/LTP/9548639_x86_=
64_1_commands.fail.log
https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/02/10/623698/build_aarch64_redhat%3A1101939/tests/LTP/9548637_aar=
ch64_1_commands.fail.log

Jan do you know anything about this failure ?

 >>> 2:ld01_sh FAIL <<<
###########################################################################=
####
# Test Num    : 2                                                          =
   #
# Test Case   : ld01_sh                                                    =
   #
# Test Result : FAIL                                                       =
   #
###########################################################################=
####

      1	<<<test_start>>>
      2	tag=3Dld01_sh stime=3D1613000729
      3	cmdline=3D"ld01.sh"
      4	contacts=3D""
      5	analysis=3Dexit
      6	<<<test_output>>>
      7	ld01 1 TINFO: timeout per run is 0h 5m 0s
      8	ld01 1 TPASS: ld x.o y.o 2> ld.out failed as expected
      9	ld01 1 TPASS: Missing files were reported
     10	ld01 2 TPASS: gcc x.o y.o 2> cc.out failed as expected
     11	ld01 2 TFAIL: Missing files were not reported
     12	/usr/bin/ld: cannot find x.o: No such file or directory
     13	/usr/bin/ld: cannot find y.o: No such file or directory
     14	collect2: error: ld returned 1 exit status
     15	ld01 3 TPASS: ld -shared f1.o d1.o -o test.so passed as expected
     16	ld01 3 TPASS: Shared library could be build
     17	ld01 4 TPASS: ld -Bdynamic -shared f1.o d1.o -o test.so passed as e=
xpected
     18	ld01 4 TPASS: ld -Bstatic -L. main.o rd1.o test.so -o a.out failed =
as expected
     19	ld01 5 TPASS: ld -Bdynamic -shared main.o f1.o rf1.o -o test.so -L/=
usr/lib/ passed as expected
     20	ld01 5 TPASS: ld -Bstatic -r main.o f1.o rf1.o test.so -L/usr/lib/ =
2> ld.out failed as expected
     21	ld: attempted static link of dynamic object `test.so'
     22	ld01 5 TPASS: Got expected error message

Nathan, btw we just started cc'ing you on regular mainline reports built wi=
th gcc, but please let us know if it's too much
spam and we can turn it off.

>=20
> Cheers,
> Nathan
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/bc4c35cf-bd79-e4c0-2fed-41f7c0b1ae3b%40redhat.com.
